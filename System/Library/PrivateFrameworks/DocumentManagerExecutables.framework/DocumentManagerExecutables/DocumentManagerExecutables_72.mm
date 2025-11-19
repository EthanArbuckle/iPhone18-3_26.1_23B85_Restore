unint64_t appContainersNeedingAuthentication #1 () in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(unint64_t a1, unsigned __int8 a2)
{
  v23 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = objc_opt_self();
    v5 = 0;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_20;
      }

LABEL_10:
      v9 = [v4 sharedManager];
      v10 = [v9 nodeRequiresAuthentication:v7 Sync:?];

      if (v10)
      {
        v11 = swift_unknownObjectRetain();
        MEMORY[0x24C1FB090](v11);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v23;
      }

      if (v6 >> 62)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_unknownObjectRelease();
      if (((v12 == 1) & a2) == 0)
      {
        ++v5;
        if (v8 != i)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    if (v5 >= *(v20 + 16))
    {
      goto LABEL_21;
    }

    v7 = *(a1 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_10;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.UI);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000249BFFC20, &v22);
    *(v16 + 12) = 2048;
    if (v6 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 14) = v18;
    _os_log_impl(&dword_2493AC000, v14, v15, "%s found: %ld requiring authentication", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x24C1FE850](v17, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  return v6;
}

uint64_t closure #2 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(unint64_t a1, unsigned __int8 a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = appContainersNeedingAuthentication #1 () in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(a1, a2);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v16;
  aBlock[4] = partial apply for closure #1 in closure #2 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:);
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_313;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v15, v11, v19);
  _Block_release(v19);

  (*(v22 + 8))(v11, v8);
  return (*(v12 + 8))(v15, v21);
}

uint64_t specialized items.getter in LazyItems #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)()
{
  v1 = *(v0 + 32);
  v2 = v1;
  if (v1 == 1)
  {
    v3 = *(v0 + 16);

    v5 = v0;
    v3(&v8, v4);

    v2 = v8;
    v6 = *(v0 + 32);
    *(v5 + 32) = v8;

    outlined consume of [FPItem]??(v6);
  }

  outlined copy of [FPItem]??(v1);
  return v2;
}

uint64_t deinit in LazyItems #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)()
{

  v1 = *(*v0 + 96);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t __deallocating_deinit in LazyItems #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)()
{
  deinit in LazyItems #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)();

  return swift_deallocClassInstance();
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed [URL]) -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);
  type metadata accessor for URL();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v1(v2);
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables10ColumnTypeOGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = v16[1];
    v29 = *v16;
    Hasher.init(_seed:)();
    if (v17 <= 3)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = 3;
        }

        else
        {
          v18 = 4;
        }

        goto LABEL_36;
      }

      if (!v17)
      {
        v18 = 0;
        goto LABEL_36;
      }

      if (v17 == 1)
      {
        v18 = 2;
        goto LABEL_36;
      }
    }

    else
    {
      if (v17 <= 5)
      {
        if (v17 == 4)
        {
          v18 = 5;
        }

        else
        {
          v18 = 6;
        }

        goto LABEL_36;
      }

      switch(v17)
      {
        case 6:
          v18 = 7;
          goto LABEL_36;
        case 7:
          v18 = 8;
          goto LABEL_36;
        case 8:
          v18 = 9;
LABEL_36:
          MEMORY[0x24C1FCBD0](v18);
          goto LABEL_37;
      }
    }

    MEMORY[0x24C1FCBD0](1);

    String.hash(into:)();
LABEL_37:
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_47;
        }
      }

      goto LABEL_52;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_47:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v29;
    v27[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_53;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo8FPActionaGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v28 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v29 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    v17 = v16;
    String.hash(into:)();
    v18 = Hasher._finalize()();

    v19 = -1 << *(v9 + 32);
    v20 = v18 & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v28;
    v10 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v29 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6DOCTagCGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(v9 + 40);
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables18DOCPersonSuggesterC0F033_4B0919F08E5F790AA08A839C1D7CB05FLLVGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 24 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    Hasher.init(_seed:)();

    v20 = MEMORY[0x24C1FAF70](v17, v18);
    MEMORY[0x24C1FCBD0](v20);
    result = Hasher._finalize()();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 24 * v24);
    *v29 = v17;
    v29[1] = v18;
    v29[2] = v19;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v18[6] = *MEMORY[0x277D85DE8];
  v17 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v18[3] = &v17;
  v18[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v13 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v13, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v8);
    v10 = &v16 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v11 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v10, v7, v3, a2);
  }

  else
  {
    v14 = v13;
    v15 = swift_slowAlloc();
    bzero(v15, v14);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v15, v7, v18);
    v11 = v18[0];

    MEMORY[0x24C1FE850](v15, -1, -1);
  }

  return v11;
}

{
  v3 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  v8 = 8 * (v6 >> 6);
  if (v5 <= 0xD || (v14 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), v8 = v14, (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v8);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v10, v7, v3, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v16, v7, v19);
    v12 = v19[0];

    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  return v12;
}

uint64_t specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = a3;
    v30 = __CocoaSet.count.getter();
    v4 = v22;
  }

  else
  {
    v28 = a3 & 0xFFFFFFFFFFFFFF8;
    v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v29 = v4 & 0xC000000000000001;
  v23 = v4;
  v27 = v4 + 32;
  v31 = a4 + 56;
LABEL_4:
  v25 = v5;
  while (v6 != v30)
  {
    if (v29)
    {
      v7 = MEMORY[0x24C1FC540](v6, v23);
    }

    else
    {
      if (v6 >= *(v28 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v27 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v11 = -1 << *(a4 + 32);
    v12 = v10 & ~v11;
    v13 = v12 >> 6;
    v14 = 1 << v12;
    if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) != 0)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag);
      v15 = *(*(a4 + 48) + 8 * v12);
      v16 = static NSObject.== infix(_:_:)();

      if ((v16 & 1) == 0)
      {
        v17 = ~v11;
        do
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = 1 << v12;
          if (((1 << v12) & *(v31 + 8 * (v12 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v18 = *(*(a4 + 48) + 8 * v12);
          v19 = static NSObject.== infix(_:_:)();
        }

        while ((v19 & 1) == 0);
      }

      v20 = a1[v13];
      a1[v13] = v20 | v14;
      if ((v20 & v14) == 0)
      {
        v5 = v25 + 1;
        if (!__OFADD__(v25, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, v25, a4);
}

void specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v25 = a3 + 32;
  v30 = a4 + 56;
  v26 = v7;
  while (2)
  {
    v23 = v5;
    if (v6 == v7)
    {
      goto LABEL_23;
    }

    while (1)
    {
      if (v6 >= v7)
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      v8 = *(v25 + 8 * v6);
      v27 = v6 + 1;
      v28 = v6 + 1;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v8;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = -1 << *(a4 + 32);
      v11 = v9 & ~v10;
      v12 = v11 >> 6;
      v13 = 1 << v11;
      if (((1 << v11) & *(v30 + 8 * (v11 >> 6))) != 0)
      {
        break;
      }

LABEL_4:

      v7 = v26;
      v6 = v28;
LABEL_5:
      if (v27 == v7)
      {
        goto LABEL_23;
      }
    }

    v14 = ~v10;
    while (1)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {

        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        break;
      }

      v11 = (v11 + 1) & v14;
      v12 = v11 >> 6;
      v13 = 1 << v11;
      if (((1 << v11) & *(v30 + 8 * (v11 >> 6))) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_19:
    v21 = a1[v12];
    a1[v12] = v21 | v13;
    v7 = v26;
    v6 = v28;
    if ((v21 & v13) != 0)
    {
      goto LABEL_5;
    }

    v5 = v23 + 1;
    if (!__OFADD__(v23, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_23:

  specialized _NativeSet.extractSubset(using:count:)(a1, a2, v23, a4);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

uint64_t specialized static DOCActionManager.canImport(in:)(uint64_t a1)
{
  v2 = *MEMORY[0x277CC6028];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA0290;
  *(inited + 32) = a1;
  swift_unknownObjectRetain();
  LOBYTE(a1) = specialized static DOCActionManager.canPerform(_:on:)(v2, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return a1 & 1;
}

uint64_t specialized static DOCActionManager.canCreateNewFolder(in:)(void *a1)
{
  DOCNode.nodeType.getter(&v10);
  if (!v10)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClassUnconditional();
    v7 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v6;
    swift_unknownObjectRetain();
    v5 = specialized static DOCActionManager.canPerform(_:on:)(v7, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    return v5 & 1;
  }

  if ([a1 isRootItem])
  {
    v2 = [a1 cachedDomain];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 needsAuthentication];

      if (v4)
      {
        v5 = 0;
        return v5 & 1;
      }
    }
  }

  return specialized static DOCActionManager.canImport(in:)(a1);
}

void specialized Set.formUnion<A>(_:)(unint64_t a1)
{
  specialized Set.formUnion<A>(_:)(a1, specialized Set._Variant.insert(_:));
}

{
  specialized Set.formUnion<A>(_:)(a1, specialized Set._Variant.insert(_:));
}

uint64_t specialized static DOCActionManager.canPerform(_:on:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_56:
    v5 = __CocoaSet.count.getter();
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return 0;
    }
  }

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
LABEL_23:

LABEL_24:
    if (v4)
    {
      if (__CocoaSet.count.getter() <= 1000)
      {
        goto LABEL_30;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1000)
    {
LABEL_30:
      for (i = 0; ; ++i)
      {
        v20 = v5 == i;
        if (v5 == i)
        {
          break;
        }

        if ((a2 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x24C1FC540](i, a2);
          if (__OFADD__(i, 1))
          {
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }
        }

        else
        {
          if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }

          v23 = *(a2 + 8 * i + 32);
          swift_unknownObjectRetain();
          if (__OFADD__(i, 1))
          {
            goto LABEL_39;
          }
        }

        v4 = [v23 canPerform_];
        swift_unknownObjectRelease();
        if ((v4 & 1) == 0)
        {
          return v20;
        }
      }

      return v20;
    }

    return 0;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
    goto LABEL_24;
  }

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
LABEL_40:

LABEL_41:
    v24 = [objc_opt_self() defaultPermission];
    v25 = 0;
    do
    {
      v20 = v5 == v25;
      if (v5 == v25)
      {
        break;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](v25, a2);
        if (__OFADD__(v25, 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (v25 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }

        v4 = *(a2 + 8 * v25 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v25, 1))
        {
LABEL_51:
          __break(1u);
LABEL_52:
          swift_unknownObjectRelease();
          break;
        }
      }

      if (![v4 canPerform_])
      {
        goto LABEL_52;
      }

      v26 = [v24 canHostAppPerformAction:1 targetNode:v4];
      swift_unknownObjectRelease();
      ++v25;
    }

    while ((v26 & 1) != 0);

    return v20;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    goto LABEL_41;
  }

  v19 = 0;
  do
  {
    v20 = v5 == v19;
    if (v5 == v19)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x24C1FC540](v19, a2);
      if (__OFADD__(v19, 1))
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {
      if (v19 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v21 = *(a2 + 8 * v19 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v19, 1))
      {
        goto LABEL_22;
      }
    }

    v4 = [v21 canPerform_];
    result = swift_unknownObjectRelease();
    ++v19;
  }

  while ((v4 & 1) != 0);
  return v20;
}

BOOL specialized static DOCActionManager.nodesHaveAllSameSharedByState(nodes:)(unint64_t a1)
{
  v16 = MEMORY[0x277D84F90];
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
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x24C1FC540](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
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
LABEL_13:
            __break(1u);
LABEL_14:
            v6 = v16;
            if ((v16 & 0x8000000000000000) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_37;
          }
        }

        if ([v4 isShared])
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v3;
        if (v5 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v6 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

LABEL_19:
  if ((v6 & 0x4000000000000000) != 0)
  {
LABEL_37:
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(v6 + 16);
  }

  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  do
  {
    v12 = v8;
    if (v7 == v8)
    {
      break;
    }

    if (v9)
    {
      v13 = MEMORY[0x24C1FC540](v8, v6);
      if (__OFADD__(v12, 1))
      {
LABEL_33:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v13 = *(v6 + 8 * v8 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v12, 1))
      {
        goto LABEL_33;
      }
    }

    v14 = [v13 isSharedByCurrentUser];
    if (v9)
    {
      v10 = MEMORY[0x24C1FC540](0, v6);
    }

    else
    {
      if (!*(v6 + 16))
      {
        goto LABEL_36;
      }

      v10 = *(v6 + 32);
      swift_unknownObjectRetain();
    }

    v11 = [v10 isSharedByCurrentUser];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v8 = v12 + 1;
  }

  while (v14 == v11);

  return v7 == v12;
}

uint64_t specialized DOCActionManager.canMixDelete(_:)(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_69:
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:

  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (v2 || (v4 = v1, (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0))
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
  }

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v7 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v34 = v1;
  v8 = 0;
  if (v6)
  {
    while (2)
    {
      v9 = (v7 + 8 * v8);
      while (1)
      {
        v10 = *v9;
        swift_getObjectType();
        if (DOCNode.isFINode.getter())
        {
          break;
        }

        ++v8;
        ++v9;
        if (v8 >= v6)
        {
          goto LABEL_17;
        }
      }

      v11 = (v7 + 8 * v6);
      do
      {
        if (v8 >= --v6)
        {
          v5 = v4 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_17;
        }

        --v11;
        swift_getObjectType();
      }

      while (DOCNode.isFINode.getter());
      *v9 = *v11;
      *v11 = v10;
      ++v8;
      v5 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v8 < v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:
  v12 = v4 >> 62;
  if (!(v4 >> 62))
  {
    result = *(v5 + 16);
    v1 = result;
    if (result >= v8)
    {
      goto LABEL_19;
    }

LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  result = __CocoaSet.count.getter();
  if (result < v8)
  {
LABEL_81:
    __break(1u);
    return result;
  }

  v1 = result;
  result = __CocoaSet.count.getter();
  if (result < v8)
  {
    __break(1u);
    goto LABEL_74;
  }

LABEL_19:
  if (v8 < 0)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v12)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *(v5 + 16);
  }

  if (result < v1)
  {
    goto LABEL_76;
  }

  if (v1 < 0)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if ((v4 & 0xC000000000000001) != 0 && v8 != v1)
  {
    if (v8 >= v1)
    {
      goto LABEL_79;
    }

    v14 = v8;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      _ArrayBuffer._typeCheckSlowPath(_:)(v14++);
    }

    while (v1 != v14);
    v35 = v4 >> 62;
    if (!v12)
    {
      goto LABEL_31;
    }

LABEL_33:

    _CocoaArrayWrapper.subscript.getter();
    v15 = v17;
    v16 = v18;
    v1 = v19 >> 1;
    goto LABEL_34;
  }

  v35 = v4 >> 62;
  if (v12)
  {
    goto LABEL_33;
  }

LABEL_31:
  v15 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
  v16 = v8;
LABEL_34:
  if (v16 <= v1)
  {
    v20 = v1;
  }

  else
  {
    v20 = v16;
  }

  swift_unknownObjectRetain();
  v21 = v20 - v16;
  v22 = v1 - v16;
  v23 = (v15 + 8 * v16);
  do
  {
    v2 = v22;
    if (!v22)
    {
      break;
    }

    if (!v21)
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v24 = *v23++;
    v1 = v24;
    objc_opt_self();
    v25 = [swift_dynamicCastObjCClassUnconditional() nodePermissions_];
    --v21;
    v22 = v2 - 1;
  }

  while (v25);
  swift_unknownObjectRelease_n();
  if (v35)
  {
    result = __CocoaSet.count.getter();
    if (result < 0)
    {
      goto LABEL_80;
    }

    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v8)
  {
    goto LABEL_78;
  }

  if ((v4 & 0xC000000000000001) != 0)
  {

    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        _ArrayBuffer._typeCheckSlowPath(_:)(i);
      }
    }

    if (!v35)
    {
      goto LABEL_51;
    }

LABEL_53:

    _CocoaArrayWrapper.subscript.getter();
    v7 = v27;
    v1 = v28;
    v8 = v29 >> 1;
    goto LABEL_54;
  }

  if (v35)
  {
    goto LABEL_53;
  }

LABEL_51:
  v1 = 0;
LABEL_54:
  swift_unknownObjectRetain();
  if (v1 != v8)
  {
    v30 = *MEMORY[0x277CC5FE0];
    v31 = *MEMORY[0x277CC6058];
    while (v1 < v8)
    {
      v32 = *(v7 + 8 * v1);
      if ([swift_unknownObjectRetain() canPerform_])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = [v32 canPerform_];
        swift_unknownObjectRelease();
        if ((v33 & 1) == 0)
        {

          swift_unknownObjectRelease_n();
          return 0;
        }
      }

      if (v8 == ++v1)
      {
        goto LABEL_55;
      }
    }

    goto LABEL_68;
  }

LABEL_55:

  swift_unknownObjectRelease_n();
  if (v2)
  {
    return 0;
  }

  return specialized static DOCActionManager.nodesHaveAllSameSharedByState(nodes:)(v34);
}

unint64_t specialized DOCActionManager.canDuplicate(nodes:in:)(unint64_t a1, uint64_t a2)
{
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_35:
    LOBYTE(v4) = 0;
    return v4 & 1;
  }

LABEL_39:
  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_35;
  }

LABEL_3:
  if (a2)
  {
    if (v4)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    swift_unknownObjectRetain();
    v5 = 0;
    while (v4 != v5)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v6 = *(a1 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v5, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      v7 = [v6 isAppContainer];
      swift_unknownObjectRelease();
      ++v5;
      if (v7)
      {
        goto LABEL_34;
      }
    }

    if ((specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC5FD8], a1) & 1) == 0)
    {
      goto LABEL_34;
    }

    v8 = *MEMORY[0x277CC6028];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = a2;
    swift_unknownObjectRetain();
    LOBYTE(v4) = specialized static DOCActionManager.canPerform(_:on:)(v8, inited);
    swift_unknownObjectRelease();
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    if (v4)
    {
      a2 = __CocoaSet.count.getter();
    }

    else
    {
      a2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = 0;
    do
    {
      v4 = a2 == v10;
      if (a2 == v10)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x24C1FC540](v10, a1);
        if (__OFADD__(v10, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          swift_unknownObjectRelease();
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v11 = *(a1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v10, 1))
        {
          goto LABEL_33;
        }
      }

      if (![v11 isWritable])
      {
        goto LABEL_34;
      }

      v12 = [v11 isAppContainer];
      swift_unknownObjectRelease();
      ++v10;
    }

    while ((v12 & 1) == 0);
  }

  return v4 & 1;
}

char *specialized DOCActionManager.navbarActions(for:allNodes:currentNode:in:isCollectionEmpty:isCompactMode:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v106 = MEMORY[0x277D84F90];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA08C0;
      *(inited + 32) = *MEMORY[0x277D060F8];
      v19 = *MEMORY[0x277D05DC8];
      v105 = a4;
      v20 = *MEMORY[0x277D05DB8];
      *(inited + 40) = v19;
      *(inited + 48) = v20;
      MEMORY[0x28223BE20](inited, v21);
      v104[2] = &v105;
      v23 = v22;
      v24 = v19;
      v25 = v20;
      v26 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v104, inited);
      swift_setDeallocating();
      type metadata accessor for DOCDocumentSourceIdentifier(0);
      swift_arrayDestroy();
      if (v26)
      {
        v27 = [v6 shareAction];
        v28 = DOCActionManager.canShare(_:)(a1);
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        if (v31 >= v30 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        v32 = &v29[16 * v31];
        *(v32 + 4) = v27;
        *(v32 + 20) = v28 | 0x100;
        v106 = v29;
        if ((a5 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v34 = *(v29 + 2);
          v33 = *(v29 + 3);
          if (v34 >= v33 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v29);
          }

          *(v29 + 2) = v34 + 1;
          v35 = &v29[16 * v34];
          *(v35 + 4) = 0;
          *(v35 + 20) = 0;
          v106 = v29;
          swift_endAccess();
        }

        v36 = specialized static UIDocumentBrowserAction.moveAction(numberOfItems:)(1);
        v37 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC6048], a1);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v39 = *(v29 + 2);
        v38 = *(v29 + 3);
        if (v39 >= v38 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v29);
        }

        *(v29 + 2) = v39 + 1;
        v40 = &v29[16 * v39];
        *(v40 + 4) = v36;
        *(v40 + 20) = v37 & 1 | 0x100;
        v106 = v29;
        swift_endAccess();
        if ((a5 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v42 = *(v29 + 2);
          v41 = *(v29 + 3);
          if (v42 >= v41 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v29);
          }

          *(v29 + 2) = v42 + 1;
          v43 = &v29[16 * v42];
          *(v43 + 4) = 0;
          *(v43 + 20) = 0;
        }

        specialized static UIDocumentBrowserAction.mixedDeleteAction()();
        v45 = v44;
        v46 = specialized DOCActionManager.canMixDelete(_:)(a1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v48 = *(v29 + 2);
        v47 = *(v29 + 3);
        if (v48 >= v47 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v29);
        }

        *(v29 + 2) = v48 + 1;
        v49 = &v29[16 * v48];
        *(v49 + 4) = v45;
        *(v49 + 20) = v46 & 1 | 0x100;
      }

      else
      {
        v71 = a3;
        if (!a3)
        {
          v71 = specialized static UIDocumentBrowserAction.fetchParent(nodes:)(a1);
        }

        swift_unknownObjectRetain();
        v72 = [v6 shareAction];
        v73 = DOCActionManager.canShare(_:)(a1);
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v75 = *(v29 + 2);
        v74 = *(v29 + 3);
        if (v75 >= v74 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v29);
        }

        *(v29 + 2) = v75 + 1;
        v76 = &v29[16 * v75];
        *(v76 + 4) = v72;
        *(v76 + 20) = v73 | 0x100;
        v106 = v29;
        if ((a5 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v78 = *(v29 + 2);
          v77 = *(v29 + 3);
          if (v78 >= v77 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1, v29);
          }

          *(v29 + 2) = v78 + 1;
          v79 = &v29[16 * v78];
          *(v79 + 4) = 0;
          *(v79 + 20) = 0;
          v106 = v29;
          swift_endAccess();
        }

        specialized static UIDocumentBrowserAction.duplicateAction(targetNode:)(v71);
        v81 = v80;
        v82 = specialized DOCActionManager.canDuplicate(nodes:in:)(a1, v71);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v84 = *(v29 + 2);
        v83 = *(v29 + 3);
        if (v84 >= v83 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v29);
        }

        *(v29 + 2) = v84 + 1;
        v85 = &v29[16 * v84];
        *(v85 + 4) = v81;
        *(v85 + 20) = v82 & 1 | 0x100;
        v106 = v29;
        swift_endAccess();
        if ((a5 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
        {
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v87 = *(v29 + 2);
          v86 = *(v29 + 3);
          if (v87 >= v86 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v29);
          }

          *(v29 + 2) = v87 + 1;
          v88 = &v29[16 * v87];
          *(v88 + 4) = 0;
          *(v88 + 20) = 0;
          v106 = v29;
          swift_endAccess();
        }

        v89 = specialized static UIDocumentBrowserAction.moveAction(numberOfItems:)(1);
        v90 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC6048], a1);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v92 = *(v29 + 2);
        v91 = *(v29 + 3);
        if (v92 >= v91 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v29);
        }

        *(v29 + 2) = v92 + 1;
        v93 = &v29[16 * v92];
        *(v93 + 4) = v89;
        *(v93 + 20) = v90 & 1 | 0x100;
        v106 = v29;
        swift_endAccess();
        if ((a5 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
          }

          v95 = *(v29 + 2);
          v94 = *(v29 + 3);
          if (v95 >= v94 >> 1)
          {
            v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1, v29);
          }

          *(v29 + 2) = v95 + 1;
          v96 = &v29[16 * v95];
          *(v96 + 4) = 0;
          *(v96 + 20) = 0;
        }

        specialized static UIDocumentBrowserAction.mixedDeleteAction()();
        v98 = v97;
        v99 = specialized DOCActionManager.canMixDelete(_:)(a1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v101 = *(v29 + 2);
        v100 = *(v29 + 3);
        if (v101 >= v100 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v100 > 1), v101 + 1, 1, v29);
        }

        *(v29 + 2) = v101 + 1;
        v102 = &v29[16 * v101];
        *(v102 + 4) = v98;
        *(v102 + 20) = v99 & 1 | 0x100;
        swift_unknownObjectRelease();
      }

      return v29;
    }
  }

  if (a1 >> 62)
  {
    v50 = __CocoaSet.count.getter();
  }

  else
  {
    v50 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50)
  {
    v51 = a1;
  }

  else
  {
    v51 = a2;
  }

  if ((a5 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
  {
    swift_beginAccess();
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v53 = *(v29 + 2);
    v52 = *(v29 + 3);
    if (v53 >= v52 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v52 > 1), v53 + 1, 1, v29);
    }

    *(v29 + 2) = v53 + 1;
    v54 = &v29[16 * v53];
    *(v54 + 4) = 0;
    *(v54 + 20) = 0;
    v106 = v29;
    swift_endAccess();
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v55 = [v6 createToolbarRecover_];
  v56 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC6078], v51);
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  }

  v58 = *(v29 + 2);
  v57 = *(v29 + 3);
  if (v58 >= v57 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1, v29);
  }

  *(v29 + 2) = v58 + 1;
  v59 = &v29[16 * v58];
  *(v59 + 4) = v55;
  *(v59 + 20) = v56 & 1 | ((v50 != 0) << 8);
  v106 = v29;
  swift_endAccess();
  if ((a5 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v61 = *(v29 + 2);
    v60 = *(v29 + 3);
    if (v61 >= v60 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v29);
    }

    *(v29 + 2) = v61 + 1;
    v62 = &v29[16 * v61];
    *(v62 + 4) = 0;
    *(v62 + 20) = 0;
    v106 = v29;
    swift_endAccess();
  }

  v63 = [v6 createToolbarDelete_];
  v64 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC5FE0], v51);
  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
  }

  v66 = *(v29 + 2);
  v65 = *(v29 + 3);
  if (v66 >= v65 >> 1)
  {
    v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v29);
  }

  *(v29 + 2) = v66 + 1;
  v67 = &v29[16 * v66];
  *(v67 + 4) = v63;
  *(v67 + 20) = ((v50 != 0) << 8) | v64 & 1;
  v106 = v29;
  swift_endAccess();
  if ((a5 & 1) != 0 && (_UISolariumEnabled() & 1) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    }

    v69 = *(v29 + 2);
    v68 = *(v29 + 3);
    if (v69 >= v68 >> 1)
    {
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1, v29);
    }

    *(v29 + 2) = v69 + 1;
    v70 = &v29[16 * v69];
    *(v70 + 4) = 0;
    *(v70 + 20) = 0;
  }

  return v29;
}

char *specialized DOCActionManager.toolbarActions(for:allNodes:currentNode:in:isCollectionEmpty:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo27DOCDocumentSourceIdentifieraGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249BA08C0;
      *(inited + 32) = *MEMORY[0x277D060F8];
      v16 = *MEMORY[0x277D05DC8];
      v107 = a4;
      v17 = *MEMORY[0x277D05DB8];
      *(inited + 40) = v16;
      *(inited + 48) = v17;
      MEMORY[0x28223BE20](inited, v18);
      v106[2] = &v107;
      v20 = v19;
      v21 = v16;
      v22 = v17;
      v23 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v106, inited);
      swift_setDeallocating();
      type metadata accessor for DOCDocumentSourceIdentifier(0);
      swift_arrayDestroy();
      if (v23)
      {
        v24 = [v4 shareAction];
        v25 = DOCActionManager.canShare(_:)(a1);
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v28 = *(v26 + 2);
        v27 = *(v26 + 3);
        v29 = v27 >> 1;
        v30 = v28 + 1;
        if (v27 >> 1 <= v28)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
          v27 = *(v26 + 3);
          v29 = v27 >> 1;
        }

        *(v26 + 2) = v30;
        v31 = &v26[16 * v28];
        *(v31 + 4) = v24;
        *(v31 + 20) = v25 | 0x100;
        if (v29 < (v28 + 2))
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 2, 1, v26);
        }

        *(v26 + 2) = v28 + 2;
        v32 = &v26[16 * v30];
        *(v32 + 4) = 0;
        *(v32 + 20) = 0;
        v33 = specialized static UIDocumentBrowserAction.moveAction(numberOfItems:)(1);
        v34 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC6048], a1);
        v36 = *(v26 + 2);
        v35 = *(v26 + 3);
        v37 = v35 >> 1;
        v38 = v36 + 1;
        if (v35 >> 1 <= v36)
        {
          v102 = v34;
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v26);
          v34 = v102;
          v35 = *(v26 + 3);
          v37 = v35 >> 1;
        }

        *(v26 + 2) = v38;
        v39 = &v26[16 * v36];
        *(v39 + 4) = v33;
        *(v39 + 20) = v34 & 1 | 0x100;
        if (v37 < (v36 + 2))
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 2, 1, v26);
        }

        *(v26 + 2) = v36 + 2;
        v40 = &v26[16 * v38];
        *(v40 + 4) = 0;
        *(v40 + 20) = 0;
        specialized static UIDocumentBrowserAction.mixedDeleteAction()();
        v42 = v41;
        v43 = specialized DOCActionManager.canMixDelete(_:)(a1);
        v45 = *(v26 + 2);
        v44 = *(v26 + 3);
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v103 = v43;
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v26);
          v43 = v103;
        }

        v47 = v43 & 1 | 0x100;
      }

      else
      {
        v71 = a3;
        if (!a3)
        {
          v71 = specialized static UIDocumentBrowserAction.fetchParent(nodes:)(a1);
        }

        swift_unknownObjectRetain();
        v72 = [v4 shareAction];
        v73 = DOCActionManager.canShare(_:)(a1);
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
        v75 = *(v26 + 2);
        v74 = *(v26 + 3);
        v76 = v74 >> 1;
        v77 = v75 + 1;
        if (v74 >> 1 <= v75)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1, v26);
          v74 = *(v26 + 3);
          v76 = v74 >> 1;
        }

        *(v26 + 2) = v77;
        v78 = &v26[16 * v75];
        *(v78 + 4) = v72;
        *(v78 + 20) = v73 | 0x100;
        if (v76 < (v75 + 2))
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 2, 1, v26);
        }

        *(v26 + 2) = v75 + 2;
        v79 = &v26[16 * v77];
        *(v79 + 4) = 0;
        *(v79 + 20) = 0;
        specialized static UIDocumentBrowserAction.duplicateAction(targetNode:)(v71);
        v81 = v80;
        v82 = specialized DOCActionManager.canDuplicate(nodes:in:)(a1, v71);
        v84 = *(v26 + 2);
        v83 = *(v26 + 3);
        v85 = v83 >> 1;
        v86 = v84 + 1;
        if (v83 >> 1 <= v84)
        {
          v104 = v82;
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v26);
          v82 = v104;
          v83 = *(v26 + 3);
          v85 = v83 >> 1;
        }

        *(v26 + 2) = v86;
        v87 = &v26[16 * v84];
        *(v87 + 4) = v81;
        *(v87 + 20) = v82 & 1 | 0x100;
        if (v85 < (v84 + 2))
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 2, 1, v26);
        }

        *(v26 + 2) = v84 + 2;
        v88 = &v26[16 * v86];
        *(v88 + 4) = 0;
        *(v88 + 20) = 0;
        v89 = specialized static UIDocumentBrowserAction.moveAction(numberOfItems:)(1);
        v90 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC6048], a1);
        v92 = *(v26 + 2);
        v91 = *(v26 + 3);
        v93 = v91 >> 1;
        v94 = v92 + 1;
        if (v91 >> 1 <= v92)
        {
          v105 = v90;
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 1, 1, v26);
          v90 = v105;
          v91 = *(v26 + 3);
          v93 = v91 >> 1;
        }

        *(v26 + 2) = v94;
        v95 = &v26[16 * v92];
        *(v95 + 4) = v89;
        *(v95 + 20) = v90 & 1 | 0x100;
        if (v93 < (v92 + 2))
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v91 > 1), v92 + 2, 1, v26);
        }

        *(v26 + 2) = v92 + 2;
        v96 = &v26[16 * v94];
        *(v96 + 4) = 0;
        *(v96 + 20) = 0;
        specialized static UIDocumentBrowserAction.mixedDeleteAction()();
        v42 = v97;
        v98 = specialized DOCActionManager.canMixDelete(_:)(a1);
        v45 = *(v26 + 2);
        v99 = *(v26 + 3);
        v46 = v45 + 1;
        if (v45 >= v99 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v99 > 1), v45 + 1, 1, v26);
        }

        swift_unknownObjectRelease();
        v47 = v98 & 1 | 0x100;
      }

      goto LABEL_35;
    }
  }

  if (a1 >> 62)
  {
    v48 = __CocoaSet.count.getter();
  }

  else
  {
    v48 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v48)
  {
    v49 = a1;
  }

  else
  {
    v49 = a2;
  }

  v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
  v51 = *(v26 + 2);
  v50 = *(v26 + 3);
  if (v51 >= v50 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v26);
  }

  *(v26 + 2) = v51 + 1;
  v52 = &v26[16 * v51];
  *(v52 + 4) = 0;
  *(v52 + 20) = 0;
  v53 = [v4 createToolbarRecover_];
  v54 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC6078], v49);
  v56 = *(v26 + 2);
  v55 = *(v26 + 3);
  v57 = v55 >> 1;
  v58 = v56 + 1;
  if (v55 >> 1 <= v56)
  {
    v100 = v54;
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v26);
    v54 = v100;
    v55 = *(v26 + 3);
    v57 = v55 >> 1;
  }

  *(v26 + 2) = v58;
  v59 = &v26[16 * v56];
  *(v59 + 4) = v53;
  *(v59 + 20) = v54 & 1 | ((v48 != 0) << 8);
  v60 = v56 + 2;
  if (v57 < (v56 + 2))
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 2, 1, v26);
  }

  v61 = (v48 != 0) << 8;
  *(v26 + 2) = v60;
  v62 = &v26[16 * v58];
  *(v62 + 4) = 0;
  *(v62 + 20) = 0;
  v63 = [v4 createToolbarDelete_];
  v64 = specialized static DOCActionManager.canPerform(_:on:)(*MEMORY[0x277CC5FE0], v49);
  v66 = *(v26 + 2);
  v65 = *(v26 + 3);
  v67 = v65 >> 1;
  v45 = v66 + 1;
  if (v65 >> 1 <= v66)
  {
    v101 = v64;
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 1, 1, v26);
    v64 = v101;
    v65 = *(v26 + 3);
    v67 = v65 >> 1;
  }

  *(v26 + 2) = v45;
  v68 = &v26[16 * v66];
  *(v68 + 4) = v63;
  *(v68 + 20) = v61 | v64 & 1;
  v46 = v66 + 2;
  if (v67 < (v66 + 2))
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v66 + 2, 1, v26);
  }

  v42 = 0;
  v47 = 0;
LABEL_35:
  *(v26 + 2) = v46;
  v69 = &v26[16 * v45];
  *(v69 + 4) = v42;
  *(v69 + 20) = v47;
  return v26;
}

uint64_t specialized static DOCActionManager.resolve(_:completionBlock:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v29 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DispatchQoS();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v7);
  v27 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = dispatch_group_create();
  result = swift_allocObject();
  v11 = result;
  *(result + 16) = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
    v17 = static OS_dispatch_queue.main.getter();
    v18 = swift_allocObject();
    v19 = v26;
    v18[2] = v25;
    v18[3] = v19;
    v18[4] = v11;
    v38 = partial apply for closure #2 in Array<A>.fetchURLPairs(_:);
    v39 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v37 = &block_descriptor_284_0;
    v20 = _Block_copy(&aBlock);

    v21 = v27;
    static DispatchQoS.unspecified.getter();
    v33 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v22 = v29;
    v23 = v32;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_group.notify(qos:flags:queue:execute:)();
    _Block_release(v20);

    (*(v31 + 8))(v22, v23);
    (*(v28 + 8))(v21, v30);
  }

  result = __CocoaSet.count.getter();
  v12 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x24C1FC540](v13, a1);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v13;
      dispatch_group_enter(v9);
      ObjectType = swift_getObjectType();
      aBlock = 0;
      v35 = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = v9;
      *(v15 + 24) = v11;
      v16 = v9;

      DOCNode.createDOCItemBookmark(bookmark:completion:)(&aBlock, partial apply for closure #1 in static DOCActionManager.resolve(_:completionBlock:), v15, ObjectType);

      swift_unknownObjectRelease();
    }

    while (v12 != v13);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(unint64_t a1, int a2, int a3, void *a4, int a5)
{
  LODWORD(v5) = a5;
  v55 = a2;
  v56 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v49 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = partial apply for closure #1 in DOCItemCollectionViewController.setProtectedStateToLockedForDidEnterBackground();
  v19[4] = v18;
  v20 = objc_opt_self();
  v21 = a4;

  v22 = [v20 sharedManager];
  LODWORD(v20) = [v22 hasAnyProtectedApps];

  if (v20)
  {
    v45 = v5;
    v46 = v21;
    v42 = v11;
    aBlock[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_31;
    }

    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v47 = v18;
    v43 = v12;
    v48 = v19;
    v44 = v8;
    v18 = MEMORY[0x277D84F90];
    if (v23)
    {
      v5 = 0;
      v8 = a1 & 0xC000000000000001;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v8)
        {
          v24 = MEMORY[0x24C1FC540](v5, a1);
          v19 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_31:
            v23 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          v24 = *(a1 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v19 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_16;
          }
        }

        v59 = v24;
        closure #1 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(&v59, &v58);
        v25 = swift_unknownObjectRelease();
        v21 = v58;
        if (v58)
        {
          MEMORY[0x24C1FB090](v25);
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v18 = aBlock[0];
        }

        ++v5;
      }

      while (v19 != v23);
    }

    if (v18 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v46;
    v28 = v45;
    if (v26)
    {
      if (v56)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v30 = v49;
        v29 = v50;
        v31 = v51;
        (*(v50 + 104))(v49, *MEMORY[0x277D851B8], v51);
        v32 = v27;
        v33 = static OS_dispatch_queue.global(qos:)();
        (*(v29 + 8))(v30, v31);
        v34 = swift_allocObject();
        *(v34 + 16) = v18;
        *(v34 + 24) = v55 & 1;
        v35 = v48;
        *(v34 + 32) = closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)partial apply;
        *(v34 + 40) = v35;
        aBlock[4] = closure #2 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)partial apply;
        aBlock[5] = v34;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_413;
        v36 = _Block_copy(aBlock);

        v37 = v52;
        static DispatchQoS.unspecified.getter();
        v59 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v38 = v42;
        v39 = v44;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v37, v38, v36);
        _Block_release(v36);

        (*(v54 + 8))(v38, v39);
        (*(v53 + 8))(v37, v43);
      }

      else
      {
        v41 = appContainersNeedingAuthentication #1 () in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v18, v55 & 1);

        specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(v41, v27, v28 & 1);
      }
    }

    specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(MEMORY[0x277D84F90], v27, v28 & 1);
  }

  else
  {
LABEL_17:
    specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(MEMORY[0x277D84F90], v21, v5 & 1);
  }
}

{
  LODWORD(v5) = a5;
  v55 = a2;
  v56 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v52 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v49 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = v5;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = partial apply for closure #1 in DOCItemCollectionViewController.setProtectedStateToLockedForDidEnterBackground();
  v19[4] = v18;
  v20 = objc_opt_self();
  v21 = a4;

  v22 = [v20 sharedManager];
  LODWORD(v20) = [v22 hasAnyProtectedApps];

  if (v20)
  {
    v45 = v5;
    v46 = v21;
    v42 = v11;
    aBlock[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_31;
    }

    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v47 = v18;
    v43 = v12;
    v48 = v19;
    v44 = v8;
    v18 = MEMORY[0x277D84F90];
    if (v23)
    {
      v5 = 0;
      v8 = a1 & 0xC000000000000001;
      v12 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v8)
        {
          v24 = MEMORY[0x24C1FC540](v5, a1);
          v19 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_31:
            v23 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          v24 = *(a1 + 8 * v5 + 32);
          swift_unknownObjectRetain();
          v19 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_16;
          }
        }

        v59 = v24;
        closure #1 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(&v59, &v58);
        v25 = swift_unknownObjectRelease();
        v21 = v58;
        if (v58)
        {
          MEMORY[0x24C1FB090](v25);
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v18 = aBlock[0];
        }

        ++v5;
      }

      while (v19 != v23);
    }

    if (v18 >> 62)
    {
      v26 = __CocoaSet.count.getter();
    }

    else
    {
      v26 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = v46;
    v28 = v45;
    if (v26)
    {
      if (v56)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v30 = v49;
        v29 = v50;
        v31 = v51;
        (*(v50 + 104))(v49, *MEMORY[0x277D851B8], v51);
        v32 = v27;
        v33 = static OS_dispatch_queue.global(qos:)();
        (*(v29 + 8))(v30, v31);
        v34 = swift_allocObject();
        *(v34 + 16) = v18;
        *(v34 + 24) = v55 & 1;
        v35 = v48;
        *(v34 + 32) = partial apply for closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:);
        *(v34 + 40) = v35;
        aBlock[4] = closure #2 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)partial apply;
        aBlock[5] = v34;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_210_1;
        v36 = _Block_copy(aBlock);

        v37 = v52;
        static DispatchQoS.unspecified.getter();
        v59 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v38 = v42;
        v39 = v44;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v37, v38, v36);
        _Block_release(v36);

        (*(v54 + 8))(v38, v39);
        (*(v53 + 8))(v37, v43);
      }

      else
      {
        v41 = appContainersNeedingAuthentication #1 () in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v18, v55 & 1);

        specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(v41, v27, v28 & 1);
      }
    }

    specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(MEMORY[0x277D84F90], v27, v28 & 1);
  }

  else
  {
LABEL_17:
    specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(MEMORY[0x277D84F90], v21, v5 & 1);
  }
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, void **a2, void **a3, void **a4, uint64_t (*a5)(void))
{
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    v16 = a4;
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v31 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v31;
    }

    v30 = a2;
    v15 = &v16[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v49 = v16;
LABEL_28:
      __dsta = v30;
      v32 = v30 - 1;
      --v5;
      v33 = v15;
      v48 = v30 - 1;
      do
      {
        v34 = *--v33;
        v35 = *v32;
        v36 = swift_allocObject();
        *(v36 + 16) = v34;
        *(v36 + 24) = v35;
        v37 = v34;
        v38 = v35;
        v39 = v38;
        if (a5)
        {
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
          v40 = v39;
          v41 = v37;
          v42 = a5();
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);

          if (v42)
          {
            goto LABEL_36;
          }
        }

        else
        {
          v43 = v38;
          v44 = v37;
          v45 = [v44 menuSortOrder];
          v46 = [v43 menuSortOrder];

          if (v45 < v46)
          {
LABEL_36:
            if (v5 + 1 != __dsta)
            {
              *v5 = *v48;
            }

            v16 = v49;
            if (v15 <= v49 || (v30 = v48, v48 <= v6))
            {
              v30 = v48;
              goto LABEL_42;
            }

            goto LABEL_28;
          }
        }

        if (v5 + 1 != v15)
        {
          *v5 = *v33;
        }

        --v5;
        v15 = v33;
        v32 = v48;
      }

      while (v33 > v49);
      v15 = v33;
      v16 = v49;
      v30 = __dsta;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      v14 = a4;
      memmove(a4, __src, 8 * v9);
      a4 = v14;
    }

    v15 = &a4[v9];
    v16 = a4;
    if (v7 >= 8 && v13 < v5)
    {
      v17 = v13;
      v50 = v15;
      do
      {
        __dst = v17;
        v18 = *v17;
        v19 = *v16;
        v20 = swift_allocObject();
        *(v20 + 16) = v18;
        *(v20 + 24) = v19;
        v21 = v18;
        v22 = v19;
        v23 = v21;
        v24 = v23;
        if (a5)
        {
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
          v25 = (a5)(v24, v22, closure #1 in closure #2 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)partial apply, v20);
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);

          v15 = v50;
          if ((v25 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v27 = [v23 menuSortOrder];
          v28 = [v22 menuSortOrder];

          v15 = v50;
          if (v27 >= v28)
          {
LABEL_17:
            v26 = v16;
            v29 = v6 == v16++;
            v17 = __dst;
            if (v29)
            {
              goto LABEL_19;
            }

LABEL_18:
            *v6 = *v26;
            goto LABEL_19;
          }
        }

        v26 = __dst;
        v17 = __dst + 1;
        if (v6 != __dst)
        {
          goto LABEL_18;
        }

LABEL_19:
        ++v6;
      }

      while (v16 < v15 && v17 < v5);
    }

    v30 = v6;
  }

LABEL_42:
  if (v30 != v16 || v30 >= (v16 + ((v15 - v16 + (v15 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v30, v16, 8 * ((v15 - v16) / 8));
  }

  return 1;
}

uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(char **a1, void **a2, uint64_t *a3, uint64_t (*a4)(void), char **a5)
{
  v6 = a1;
  v7 = *a1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
  }

  v19 = v6;
  *v6 = v24;
  v8 = v24 + 16;
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
    *v19 = v24;
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v24[16 * v9];
      v12 = *v11;
      v13 = v8;
      v14 = &v8[16 * v9];
      v15 = *(v14 + 1);
      __src = (v10 + 8 * *v11);
      v25 = (v10 + 8 * v15);
      v26 = (v10 + 8 * *v14);
      v6 = a5;
      outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
      specialized _merge<A>(low:mid:high:buffer:by:)(__src, v26, v25, a2, a4);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
      if (v5)
      {
        *v19 = v24;
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
        return 1;
      }

      if (v15 < v12)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v16 = *v13;
      if (v9 - 2 >= *v13)
      {
        goto LABEL_13;
      }

      *v11 = v12;
      *(v11 + 1) = v15;
      v17 = v16 - v9;
      if (v16 < v9)
      {
        goto LABEL_14;
      }

      v8 = v13;
      v9 = v16 - 1;
      memmove(v14, v14 + 16, 16 * v17);
      *v13 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a4);
    *v19 = v24;
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, char **a6)
{
  v180 = MEMORY[0x277D84F90];
  v8 = a3[1];
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
  v176 = a5;
  v172 = a6;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a5);
  if (v8 >= 1)
  {
    v166 = MEMORY[0x277D84F90];
    v9 = 0;
    while (1)
    {
      v10 = v9;
      v11 = v9 + 1;
      if (v9 + 1 >= v8)
      {
        v21 = a4;
      }

      else
      {
        v12 = *a3;
        v13 = *(*a3 + 8 * v11);
        v14 = *(*a3 + 8 * v9);
        v15 = swift_allocObject();
        *(v15 + 16) = v13;
        *(v15 + 24) = v14;
        v16 = v13;
        v17 = v14;
        v18 = v17;
        if (v176)
        {
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
          v19 = v18;
          v20 = v16;
          v177 = v176();
          outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        }

        else
        {
          v22 = v17;
          v23 = v16;
          v24 = [v23 menuSortOrder];
          v25 = [v22 menuSortOrder];

          v177 = v24 < v25;
        }

        v26 = v10 + 2;
        if (v10 + 2 < v8)
        {
          v167 = v10;
          v27 = (v12 + 8 * v10 + 16);
          do
          {
            v33 = *(v27 - 1);
            v32 = *v27;
            v34 = swift_allocObject();
            *(v34 + 16) = v32;
            *(v34 + 24) = v33;
            v35 = v32;
            v36 = v33;
            v37 = v36;
            if (v176)
            {
              outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
              v38 = v37;
              v39 = v35;
              v40 = v176();
              outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);

              if ((v177 ^ v40))
              {
                goto LABEL_17;
              }
            }

            else
            {
              v28 = v36;
              v29 = v35;
              v30 = [v29 menuSortOrder];
              v31 = [v28 menuSortOrder];

              if ((v177 & 1) == v30 >= v31)
              {
                goto LABEL_17;
              }
            }

            ++v27;
            ++v26;
          }

          while (v8 != v26);
          v26 = v8;
LABEL_17:
          v10 = v167;
        }

        v21 = a4;
        if (v177)
        {
          if (v26 < v10)
          {
            goto LABEL_169;
          }

          if (v10 < v26)
          {
            v41 = 8 * v26 - 8;
            v42 = 8 * v10;
            v11 = v26;
            v43 = v10;
            while (1)
            {
              if (v43 != --v26)
              {
                v44 = *a3;
                if (!*a3)
                {
                  goto LABEL_174;
                }

                v45 = *(v44 + v42);
                *(v44 + v42) = *(v44 + v41);
                *(v44 + v41) = v45;
              }

              ++v43;
              v41 -= 8;
              v42 += 8;
              if (v43 >= v26)
              {
                goto LABEL_27;
              }
            }
          }
        }

        v11 = v26;
      }

LABEL_27:
      v46 = a3[1];
      if (v11 >= v46)
      {
        v48 = v11;
        if (v11 < v10)
        {
          goto LABEL_167;
        }
      }

      else
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_168;
        }

        if (v11 - v10 >= v21)
        {
          goto LABEL_35;
        }

        v47 = v10 + v21;
        if (__OFADD__(v10, v21))
        {
          goto LABEL_170;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v10)
        {
          goto LABEL_171;
        }

        if (v11 == v47)
        {
LABEL_35:
          v48 = v11;
          if (v11 < v10)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v136 = *a3;
          v137 = *a3 + 8 * v11 - 8;
          v169 = v10;
          v171 = v47;
          v138 = v10 - v11;
          do
          {
            v159 = v11;
            v139 = *(v136 + 8 * v11);
            v175 = v138;
            v179 = v137;
            do
            {
              v140 = *v137;
              v141 = swift_allocObject();
              *(v141 + 16) = v139;
              *(v141 + 24) = v140;
              v142 = v139;
              v143 = v140;
              v144 = v143;
              if (v176)
              {
                outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
                v145 = v144;
                v146 = v142;
                v147 = v176();
                outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);

                if ((v147 & 1) == 0)
                {
                  break;
                }
              }

              else
              {
                v148 = v143;
                v149 = v142;
                v150 = [v149 menuSortOrder];
                v151 = [v148 menuSortOrder];

                if (v150 >= v151)
                {
                  break;
                }
              }

              if (!v136)
              {
                goto LABEL_172;
              }

              v152 = *v137;
              v139 = *(v137 + 8);
              *v137 = v139;
              *(v137 + 8) = v152;
              v137 -= 8;
            }

            while (!__CFADD__(v138++, 1));
            v11 = v159 + 1;
            v137 = v179 + 8;
            v138 = v175 - 1;
          }

          while (v159 + 1 != v171);
          v48 = v171;
          v10 = v169;
          if (v171 < v169)
          {
            goto LABEL_167;
          }
        }
      }

      v158 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v166 + 2) + 1, 1, v166);
      }

      v50 = *(v166 + 2);
      v49 = *(v166 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        v166 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v50 + 1, 1, v166);
      }

      *(v166 + 2) = v51;
      v52 = v166 + 32;
      v53 = &v166[16 * v50 + 32];
      *v53 = v10;
      *(v53 + 1) = v158;
      if (!*a1)
      {
        goto LABEL_175;
      }

      if (v50)
      {
        break;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v158;
      if (v158 >= v8)
      {
        v180 = v166;
        goto LABEL_149;
      }
    }

    v170 = *a1;
    while (1)
    {
      v54 = v51 - 1;
      if (v51 >= 4)
      {
        break;
      }

      if (v51 == 3)
      {
        v55 = *(v166 + 4);
        v56 = *(v166 + 5);
        v65 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        v58 = v65;
LABEL_58:
        if (v58)
        {
          goto LABEL_157;
        }

        v71 = &v166[16 * v51];
        v73 = *v71;
        v72 = *(v71 + 1);
        v74 = __OFSUB__(v72, v73);
        v75 = v72 - v73;
        v76 = v74;
        if (v74)
        {
          goto LABEL_159;
        }

        v77 = &v52[16 * v54];
        v79 = *v77;
        v78 = *(v77 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_162;
        }

        if (__OFADD__(v75, v80))
        {
          goto LABEL_164;
        }

        if (v75 + v80 >= v57)
        {
          if (v57 < v80)
          {
            v54 = v51 - 2;
          }

          goto LABEL_80;
        }

        goto LABEL_73;
      }

      if (v51 < 2)
      {
        goto LABEL_165;
      }

      v81 = &v166[16 * v51];
      v83 = *v81;
      v82 = *(v81 + 1);
      v65 = __OFSUB__(v82, v83);
      v75 = v82 - v83;
      v76 = v65;
LABEL_73:
      if (v76)
      {
        goto LABEL_161;
      }

      v84 = &v52[16 * v54];
      v86 = *v84;
      v85 = *(v84 + 1);
      v65 = __OFSUB__(v85, v86);
      v87 = v85 - v86;
      if (v65)
      {
        goto LABEL_163;
      }

      if (v87 < v75)
      {
        goto LABEL_3;
      }

LABEL_80:
      if (v54 - 1 >= v51)
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        __break(1u);
LABEL_173:
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        __break(1u);
LABEL_174:
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        __break(1u);
LABEL_175:
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        __break(1u);
LABEL_176:
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        result = outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        __break(1u);
        return result;
      }

      v92 = *a3;
      if (!*a3)
      {
        goto LABEL_173;
      }

      v93 = &v52[16 * v54 - 16];
      v94 = &v52[16 * v54];
      v95 = 8 * *v93;
      v96 = (v92 + v95);
      v97 = 8 * *v94;
      v98 = (v92 + v97);
      v99 = 8 * *(v94 + 1);
      v100 = (v92 + v99);
      v101 = v97 - v95;
      v102 = v99 - v97;
      v162 = v93;
      v163 = v54;
      __dst = v94;
      v164 = *(v94 + 1);
      v165 = *v93;
      if (v97 - v95 >= v99 - v97)
      {
        v103 = v170;
        if (v98 > v170 || v100 <= v170)
        {
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        }

        else
        {
          outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
          if (v98 == v170)
          {
LABEL_108:
            v178 = (v170 + v102);
            if (v102 < 1 || v97 <= v95)
            {
              v134 = v98;
              goto LABEL_127;
            }

            while (1)
            {
              v174 = v98;
              v119 = v98 - 1;
              --v100;
              v120 = v178;
              v168 = v98 - 1;
              while (1)
              {
                v121 = *--v120;
                v122 = *v119;
                v123 = swift_allocObject();
                *(v123 + 16) = v121;
                *(v123 + 24) = v122;
                v124 = v121;
                v125 = v122;
                v126 = v125;
                if (!v176)
                {
                  break;
                }

                outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
                v127 = v126;
                v128 = v124;
                v129 = v176();
                outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);

                if (v129)
                {
                  goto LABEL_118;
                }

LABEL_116:
                v119 = v168;
                if (v100 + 1 != v178)
                {
                  *v100 = *v120;
                }

                --v100;
                v178 = v120;
                if (v120 <= v170)
                {
                  v178 = v120;
                  v103 = v170;
                  v134 = v174;
                  goto LABEL_127;
                }
              }

              v130 = v125;
              v131 = v124;
              v132 = [v131 menuSortOrder];
              v133 = [v130 menuSortOrder];

              if (v132 >= v133)
              {
                goto LABEL_116;
              }

LABEL_118:
              v134 = v168;
              v103 = v170;
              if (v100 + 1 != v174)
              {
                *v100 = *v168;
              }

              if (v178 > v170)
              {
                v98 = v168;
                if (v96 < v168)
                {
                  continue;
                }
              }

              goto LABEL_127;
            }
          }
        }

        memmove(v170, v98, v102);
        goto LABEL_108;
      }

      if (v96 > v170 || v98 <= v170)
      {
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
      }

      else
      {
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
        if (v96 == v170)
        {
          goto LABEL_93;
        }
      }

      memmove(v170, v96, v101);
LABEL_93:
      v178 = (v170 + v101);
      if (v101 >= 1 && v99 > v97)
      {
        v103 = v170;
        while (1)
        {
          v173 = v98;
          v104 = *v98;
          v105 = *v103;
          v106 = swift_allocObject();
          *(v106 + 16) = v104;
          *(v106 + 24) = v105;
          v107 = v104;
          v108 = v105;
          v109 = v108;
          if (v176)
          {
            outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
            v110 = v109;
            v111 = v107;
            v112 = v176();
            outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);

            if ((v112 & 1) == 0)
            {
              goto LABEL_101;
            }
          }

          else
          {
            v114 = v108;
            v115 = v107;
            v116 = [v115 menuSortOrder];
            v117 = [v114 menuSortOrder];

            if (v116 >= v117)
            {
LABEL_101:
              v113 = v103;
              v118 = v96 == v103++;
              v98 = v173;
              if (v118)
              {
                goto LABEL_103;
              }

LABEL_102:
              *v96 = *v113;
              goto LABEL_103;
            }
          }

          v113 = v173;
          v98 = v173 + 1;
          if (v96 != v173)
          {
            goto LABEL_102;
          }

LABEL_103:
          ++v96;
          if (v103 >= v178 || v98 >= v100)
          {
            goto LABEL_124;
          }
        }
      }

      v103 = v170;
LABEL_124:
      v134 = v96;
LABEL_127:
      if (v134 != v103 || v134 >= (v103 + ((v178 - v103 + (v178 - v103 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
      {
        memmove(v134, v103, 8 * (v178 - v103));
      }

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
      if (v164 < v165)
      {
        goto LABEL_152;
      }

      v135 = *(v166 + 2);
      if (v163 > v135)
      {
        goto LABEL_153;
      }

      *v162 = v165;
      *(v162 + 1) = v164;
      if (v163 >= v135)
      {
        goto LABEL_154;
      }

      v51 = v135 - 1;
      memmove(__dst, __dst + 16, 16 * (v135 - 1 - v163));
      *(v166 + 2) = v135 - 1;
      v52 = v166 + 32;
      if (v135 <= 2)
      {
        goto LABEL_3;
      }
    }

    v59 = &v52[16 * v51];
    v60 = *(v59 - 8);
    v61 = *(v59 - 7);
    v65 = __OFSUB__(v61, v60);
    v62 = v61 - v60;
    if (v65)
    {
      goto LABEL_155;
    }

    v64 = *(v59 - 6);
    v63 = *(v59 - 5);
    v65 = __OFSUB__(v63, v64);
    v57 = v63 - v64;
    v58 = v65;
    if (v65)
    {
      goto LABEL_156;
    }

    v66 = &v166[16 * v51];
    v68 = *v66;
    v67 = *(v66 + 1);
    v65 = __OFSUB__(v67, v68);
    v69 = v67 - v68;
    if (v65)
    {
      goto LABEL_158;
    }

    v65 = __OFADD__(v57, v69);
    v70 = v57 + v69;
    if (v65)
    {
      goto LABEL_160;
    }

    if (v70 >= v62)
    {
      v88 = &v52[16 * v54];
      v90 = *v88;
      v89 = *(v88 + 1);
      v65 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v65)
      {
        goto LABEL_166;
      }

      if (v57 < v91)
      {
        v54 = v51 - 2;
      }

      goto LABEL_80;
    }

    goto LABEL_58;
  }

LABEL_149:
  v154 = *a1;
  if (!*a1)
  {
    goto LABEL_176;
  }

  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&v180, v154, a3, v176, v172);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);

  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v176);
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1, uint64_t (*a2)(void), char **a3)
{
  NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0 = *a1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0(NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0);
    *a1 = NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0;
  }

  v8 = *(NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0 + 16);
  v32 = NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0 + 32;
  v37[0] = NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0 + 32;
  v37[1] = v8;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  v9 = _minimumMergeRunLength(_:)(v8);
  if (v9 >= v8)
  {
    if (v8 < 2)
    {
      goto LABEL_18;
    }

    outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
    v12 = -1;
    v13 = 1;
    v14 = NewAByxGyFSo23UIDocumentBrowserActionC_Tg5_0 + 32;
    v31 = v8;
LABEL_9:
    v34 = v13;
    v35 = v12;
    v15 = *(v32 + 8 * v13);
    v33 = v14;
    while (1)
    {
      v22 = *v14;
      v23 = swift_allocObject();
      *(v23 + 16) = v15;
      *(v23 + 24) = v22;
      v24 = v15;
      v25 = v22;
      v26 = v25;
      if (a2)
      {
        outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
        v27 = v26;
        v28 = v24;
        v29 = a2();
        outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);

        if ((v29 & 1) == 0)
        {
LABEL_8:
          v13 = v34 + 1;
          v14 = v33 + 8;
          v12 = v35 - 1;
          if (v34 + 1 == v31)
          {
            outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
            goto LABEL_18;
          }

          goto LABEL_9;
        }
      }

      else
      {
        v16 = v25;
        v17 = v24;
        v18 = [v17 menuSortOrder];
        v19 = [v16 menuSortOrder];

        if (v18 >= v19)
        {
          goto LABEL_8;
        }
      }

      v20 = *v14;
      v15 = *(v14 + 8);
      *v14 = v15;
      *(v14 + 8) = v20;
      v14 -= 8;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_8;
      }
    }
  }

  v10 = v9;
  if (v8 >= 2)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction);
    v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8 >> 1;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v36[0] = ((v11 & 0xFFFFFFFFFFFFFF8) + 32);
  v36[1] = (v8 >> 1);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v36, v38, v37, v10, a2, a3);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

LABEL_18:
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  specialized ContiguousArray._endMutation()();
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(a2);
}

uint64_t specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(unint64_t a1, int a2, int a3, unint64_t a4, uint64_t a5)
{
  v59 = a2;
  v60 = a3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v58 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v57 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v54 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v20 = objc_opt_self();

  v21 = [v20 sharedManager];
  v22 = [v21 hasAnyProtectedApps];

  if (v22)
  {
    v50 = a4;
    v51 = a5;
    v52 = v19;
    v47 = v11;
    v48 = v12;
    aBlock[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_31;
    }

    v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v53 = v13;
    v49 = v8;
    a4 = MEMORY[0x277D84F90];
    if (v23)
    {
      v13 = 0;
      v8 = a1 & 0xC000000000000001;
      do
      {
        if (v8)
        {
          v24 = MEMORY[0x24C1FC540](v13, a1);
          v25 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_31:
            v23 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          v24 = *(a1 + 8 * v13 + 32);
          swift_unknownObjectRetain();
          v25 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            goto LABEL_16;
          }
        }

        v63 = v24;
        closure #1 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(&v63, &v62);
        v26 = swift_unknownObjectRelease();
        a5 = v62;
        if (v62)
        {
          MEMORY[0x24C1FB090](v26);
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          a4 = aBlock[0];
        }

        ++v13;
      }

      while (v25 != v23);
    }

    v30 = v53;
    if (a4 >> 62)
    {
      v31 = __CocoaSet.count.getter();
    }

    else
    {
      v31 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v51;
    v33 = v52;
    v34 = v50;
    if (v31)
    {
      if (v60)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v36 = v54;
        v35 = v55;
        v37 = v56;
        (*(v55 + 104))(v54, *MEMORY[0x277D851B8], v56);
        v38 = static OS_dispatch_queue.global(qos:)();
        (*(v35 + 8))(v36, v37);
        v39 = swift_allocObject();
        *(v39 + 16) = a4;
        *(v39 + 24) = v59 & 1;
        *(v39 + 32) = partial apply for closure #1 in DOCAppProtectionManager.firstNodeRequiringAuthenticationToRunActions(in:completion:);
        *(v39 + 40) = v33;
        aBlock[4] = closure #2 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)partial apply;
        aBlock[5] = v39;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_379;
        v40 = _Block_copy(aBlock);

        v41 = v57;
        static DispatchQoS.unspecified.getter();
        v63 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v42 = v47;
        v43 = v49;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v41, v42, v40);
        _Block_release(v40);

        (*(v58 + 8))(v42, v43);
        (*(v30 + 8))(v41, v48);
      }

      else
      {
        v45 = appContainersNeedingAuthentication #1 () in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(a4, v59 & 1);

        closure #1 in DOCAppProtectionManager.firstNodeRequiringAuthenticationToRunActions(in:completion:)(v45, v34, v32);
      }
    }

    v27 = MEMORY[0x277D84F90];
    v28 = v34;
    v29 = v32;
  }

  else
  {
LABEL_17:
    v27 = MEMORY[0x277D84F90];
    v28 = a4;
    v29 = a5;
  }

  closure #1 in DOCAppProtectionManager.firstNodeRequiringAuthenticationToRunActions(in:completion:)(v27, v28, v29);
}

void specialized DOCActionManager.perform(_:on:actionContext:)(void *a1, unint64_t a2, void *a3)
{
  if ([a1 requiresAuthentication] && (v6 = objc_opt_self(), v7 = objc_msgSend(v6, sel_sharedManager), v8 = objc_msgSend(v7, sel_hasAnyProtectedApps), v7, v8))
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.UI);

    v11 = a1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v52 = a3;
      v14 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v55 = v51;
      *v14 = 136315650;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFFCD0, &v55);
      v15 = v13;
      *(v14 + 12) = 2080;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v17 = MEMORY[0x24C1FB0D0](a2, v16);
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v55);

      *(v14 + 14) = v19;
      *(v14 + 22) = 2080;
      v20 = v11;
      v21 = [v20 description];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v55);

      *(v14 + 24) = v25;
      _os_log_impl(&dword_2493AC000, v12, v15, "%s action requires auth. Checking for any nodes in protected locations: %s action: %s", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v51, -1, -1);
      v26 = v14;
      a3 = v52;
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    v27 = [v6 sharedManager];
    v28 = swift_allocObject();
    v28[2] = Current;
    *(v28 + 3) = v11;
    *(v28 + 4) = a2;
    *(v28 + 5) = a3;

    v29 = v11;

    v30 = a3;
    specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(a2, 1, 1, partial apply for closure #1 in DOCActionManager.perform(_:on:actionContext:), v28);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.UI);
    v32 = a1;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v53 = a2;
      v55 = swift_slowAlloc();
      v36 = a3;
      v37 = v55;
      *v35 = 136315394;
      *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001CLL, 0x8000000249BFFCD0, &v55);
      *(v35 + 12) = 2080;
      v38 = v32;
      v39 = [v38 description];
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, &v55);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_2493AC000, v33, v34, "%s no auth needed before running action: %s", v35, 0x16u);
      swift_arrayDestroy();
      v44 = v37;
      a3 = v36;
      a2 = v53;
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v35, -1, -1);
    }

    if ([v32 requiresResolvedItems])
    {
      v45 = swift_allocObject();
      *(v45 + 16) = v32;
      *(v45 + 24) = a3;
      v46 = v32;
      v47 = a3;
      specialized static DOCActionManager.resolve(_:completionBlock:)(a2, partial apply for closure #1 in continueRunningAction #1 () in DOCActionManager.perform(_:on:actionContext:), v45);
    }

    else
    {
      v48 = [v32 unresolvedHandler];
      if (v48)
      {
        v49 = v48;
        v54 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
        isa = Array._bridgeToObjectiveC()().super.isa;
        (v49)[2](v49, isa, v54);

        _Block_release(v49);
      }
    }
  }
}

uint64_t specialized DOCActionManager.shouldShowAddToSubmenu(for:)(uint64_t a1)
{
  specialized static UIDocumentBrowserAction.favoriteAction(useAlternateTitle:)(0);
  v3 = v2;
  v4 = [v2 filteringPredicate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SaySo7DOCNode_pGtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0x7365646F4E636F64;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo7DOCNode_pGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(inited + 32, &_sSS_SaySo7DOCNode_pGtMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v4 evaluateWithObject_];

  v8 = specialized static UIDocumentBrowserAction.addToDockAction(useAlternateTitle:)(0);
  v9 = [v8 filteringPredicate];

  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_249B9A480;
  *(v10 + 32) = 0x7365646F4E636F64;
  *(v10 + 40) = 0xE800000000000000;
  *(v10 + 48) = a1;

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySo7DOCNode_pGTt0g5Tf4g_n(v10);
  swift_setDeallocating();
  outlined destroy of CharacterSet?(v10 + 32, &_sSS_SaySo7DOCNode_pGtMd);
  v11 = Dictionary._bridgeToObjectiveC()().super.isa;

  LODWORD(a1) = [v9 evaluateWithObject_];

  return v7 & a1;
}

uint64_t specialized DOCActionManager.smartMoveActions(forMovingNodes:in:to:currentConfiguration:)(unint64_t a1, unint64_t a2)
{
  result = MEMORY[0x277D84F90];
  if (!a2)
  {
    return result;
  }

  v4 = a2;
  v27 = MEMORY[0x277D84F90];
  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_27:
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

    return MEMORY[0x277D84F90];
  }

  v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_4:
  v7 = 0;
  v8 = v4 & 0xC000000000000001;
  result = MEMORY[0x277D84F90];
  v9 = *MEMORY[0x277CC6048];
  v24 = *MEMORY[0x277CC6028];
  v22 = a1;
  v23 = v4;
  v25 = *MEMORY[0x277CC6048];
  v26 = v4 & 0xC000000000000001;
  do
  {
    v21 = result;
    for (i = v7; ; ++i)
    {
      if (v8)
      {
        v11 = MEMORY[0x24C1FC540](i, v4);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (i >= *(v5 + 16))
        {
          goto LABEL_26;
        }

        v11 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }
      }

      if (specialized static DOCActionManager.canPerform(_:on:)(v9, a1))
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_7:
      if (v7 == v6)
      {
        return v21;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249BA0290;
    *(inited + 32) = v11;
    swift_unknownObjectRetain();
    v13 = specialized static DOCActionManager.canPerform(_:on:)(v24, inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    if ((v13 & 1) == 0)
    {
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v14 = v5;
    v15 = specialized static UIDocumentBrowserAction.moveActionTo(parent:)(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v16 = swift_initStackObject();
    *(v16 + 16) = xmmword_249B9A480;
    *(v16 + 32) = 0x7365646F4E636F64;
    *(v16 + 40) = 0xE800000000000000;
    *(v16 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
    *(v16 + 48) = a1;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v16);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v16 + 32, &_sSS_yptMd);
    v17 = [v15 filteringPredicate];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v19 = [v17 evaluateWithObject_];

    v20 = swift_unknownObjectRelease();
    if ((v19 & 1) == 0)
    {

      v5 = v14;
      a1 = v22;
      v4 = v23;
LABEL_16:
      v9 = v25;
      v8 = v26;
      goto LABEL_7;
    }

    MEMORY[0x24C1FB090](v20);
    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v27;
    v5 = v14;
    a1 = v22;
    v4 = v23;
    v9 = v25;
    v8 = v26;
  }

  while (v7 != v6);
  return result;
}

uint64_t specialized DOCActionManager.openWithAppActions(for:currentConfiguration:)(unint64_t a1, id a2)
{
  if (![a2 isFilesApp])
  {
    return MEMORY[0x277D84F90];
  }

  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_17:
    MEMORY[0x24C1FC540](0, a1);
    goto LABEL_7;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
LABEL_7:
    if (one-time initialization token for openWithMenuTitle != -1)
    {
      swift_once();
    }

    v4 = static DOCOpenWithMenuController.openWithMenuTitle;
    v5 = *MEMORY[0x277D06008];
    v6 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v7 = v5;
    v8 = MEMORY[0x24C1FAD20](v4, *(&v4 + 1));
    v21 = DOCGridLayout.specIconWidth.modify;
    v22 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    v20 = &block_descriptor_293_1;
    v9 = _Block_copy(&aBlock);
    v10 = [v6 initWithIdentifier:v7 localizedTitle:v8 unresolvedHandler:v9];

    _Block_release(v9);

    [v10 setMenuSortOrder_];
    if (one-time initialization token for openWithMenuImage != -1)
    {
      swift_once();
    }

    [v10 setImage_];
    [v10 setSupportsMultipleItems_];
    [v10 setAvailability_];
    v21 = specialized closure #1 in static NSPredicate.validateAction(_:);
    v22 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v18 = 1107296256;
    v19 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v20 = &block_descriptor_296;
    v11 = _Block_copy(&aBlock);
    v12 = [objc_opt_self() predicateWithBlock_];
    _Block_release(v11);

    [v10 setFilteringPredicate_];
    swift_unknownObjectRelease();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = 0x7365646F4E636F64;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
    *(inited + 48) = a1;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
    v14 = [v10 filteringPredicate];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v16 = [v14 evaluateWithObject_];

    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      result = swift_allocObject();
      *(result + 16) = xmmword_249BA0290;
      *(result + 32) = v10;
      return result;
    }

    return MEMORY[0x277D84F90];
  }

  __break(1u);
  return result;
}

uint64_t specialized DOCActionManager.externalItemUTIs(in:with:)(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = a1;
  v2 = type metadata accessor for DOCDragPasteboardType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v28 - v9;
  v34 = MEMORY[0x277D84F90];
  if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    rawValue = DOCAcceptableDragPasteboardTypes._rawValue;
    v12 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
    if (!v12)
    {
      break;
    }

    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v31 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
    v32 = v6;
    while (v13 < rawValue[2])
    {
      v15 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      v16 = *(v3 + 72);
      outlined init with copy of DOCDragPasteboardType(rawValue + v15 + v16 * v13, v10);
      if (DOCDragPasteboardType.isFPItemFileOrLocation.getter() & 1) != 0 || (DOCDragPasteboardType.isFINodeFileOrLocation.getter())
      {
        outlined destroy of DOCDragPasteboardType(v10);
      }

      else
      {
        outlined init with take of DOCDragPasteboardType(v10, v6);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1);
          v14 = aBlock[0];
        }

        v19 = *(v14 + 16);
        v18 = *(v14 + 24);
        if (v19 >= v18 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
          v14 = aBlock[0];
        }

        *(v14 + 16) = v19 + 1;
        v6 = v32;
        outlined init with take of DOCDragPasteboardType(v32, v14 + v15 + v19 * v16);
        v12 = v31;
      }

      if (v12 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  v14 = MEMORY[0x277D84F90];
LABEL_15:
  if (v29 == 1)
  {
    v20 = 2;
  }

  else
  {
    v20 = v29 == 2;
  }

  v21 = objc_opt_self();
  v22 = swift_allocObject();
  v22[2] = v30;
  v22[3] = v14;
  v22[4] = &v34;
  v23 = swift_allocObject();
  *(v23 + 16) = partial apply for closure #2 in DOCActionManager.externalItemUTIs(in:with:);
  *(v23 + 24) = v22;
  aBlock[4] = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_267_1;
  v24 = _Block_copy(aBlock);

  [v21 _performAsDataOwner_block_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v27 = v34;

    return v27;
  }

  return result;
}

uint64_t specialized DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:)(dispatch_semaphore_t a1, void *a2, int a3)
{
  LODWORD(v77) = a3;
  v78 = a2;
  v4 = type metadata accessor for DispatchTimeInterval();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DispatchTime();
  v73 = *(v8 - 8);
  v74 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v72 = &v66 - v14;
  v15 = [objc_opt_self() defaultPermission];
  v16 = [v15 dataOwnerStateForNode_];

  v85 = MEMORY[0x277D84F90];
  if (v16 == 1)
  {
    v17 = 2;
  }

  else
  {
    v17 = v16 == 2;
  }

  v18 = objc_opt_self();
  v19 = swift_allocObject();
  *(v19 + 16) = &v85;
  v20 = swift_allocObject();
  *(v20 + 16) = partial apply for closure #1 in DOCActionManager.numberOfItemsMovable(to:alertPresenting:allowPartialCheck:);
  *(v20 + 24) = v19;
  v83 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v84 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v80 = 1107296256;
  v81 = thunk for @escaping @callee_guaranteed () -> ();
  v82 = &block_descriptor_334_2;
  v21 = _Block_copy(&aBlock);

  [v18 _performAsDataOwner_block_];
  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
  }

  else if (!(v85 >> 62))
  {
    if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_10:
    v30 = 0;
    goto LABEL_11;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_10;
  }

LABEL_7:
  if (([a1 isTrashed]& 1) != 0)
  {
    goto LABEL_10;
  }

  v22 = [v18 generalPasteboard];
  v23 = [v22 pasteboardTypes];

  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  aBlock = 0xD00000000000001DLL;
  v80 = 0x8000000249BFFAE0;
  MEMORY[0x28223BE20](v25, v26);
  *(&v66 - 2) = &aBlock;
  LOBYTE(v22) = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v66 - 4), v24);

  if (v22)
  {
    goto LABEL_10;
  }

  v28 = specialized DOCActionManager.externalItemUTIs(in:with:)(v27, v16);

  v29 = *(v28 + 16);

  if (v29)
  {
    goto LABEL_10;
  }

  v32 = v85;
  v33 = swift_allocObject();
  v70 = v32;
  v71 = v33;
  *(v33 + 16) = 0;
  v34 = v77;
  v67 = (v33 + 16);
  v69 = v11;
  if ((v77 & 1) == 0)
  {
    swift_bridgeObjectRetain_n();
    v38 = v32;
    goto LABEL_39;
  }

  v35 = v32 & 0xFFFFFFFFFFFFFF8;
  isEscapingClosureAtFileLocation = v32 >> 62;
  if (!(v32 >> 62))
  {
    result = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 5)
    {
      v37 = 5;
    }

    else
    {
      v37 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v37)
    {
      goto LABEL_18;
    }

LABEL_61:
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v32 < 0)
    {
      v40 = v32;
    }

    else
    {
      v40 = v35;
    }

    v42 = __CocoaSet.count.getter();
    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      swift_unknownObjectRelease();
      v39 = v68;
      v41 = v66;
LABEL_32:
      specialized _copyCollectionToContiguousArray<A>(_:)(v40, v41, v39, v42);
      v38 = v44;
      swift_unknownObjectRelease();
      v34 = v77;
      goto LABEL_39;
    }

    v64 = 5;
    if (v42 >= 5)
    {
      v65 = 5;
    }

    else
    {
      v65 = v42;
    }

    if ((v42 & 0x8000000000000000) == 0)
    {
      v64 = v65;
    }

    v68 = v64;
    result = __CocoaSet.count.getter();
    v32 = v70;
    v37 = v68;
    if (result < v68)
    {
      goto LABEL_61;
    }

LABEL_18:
    if ((v32 & 0xC000000000000001) != 0 && v37)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider);
      swift_bridgeObjectRetain_n();
      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      if (v37 != 1)
      {
        _ArrayBuffer._typeCheckSlowPath(_:)(1);
        if (v37 != 2)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(2);
          if (v37 != 3)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(3);
            if (v37 != 4)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(4);
              if (v37 != 5)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(5);
                _ArrayBuffer._typeCheckSlowPath(_:)(6);
              }
            }
          }
        }
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (isEscapingClosureAtFileLocation)
    {

      v40 = _CocoaArrayWrapper.subscript.getter();
      v42 = v43;
    }

    else
    {
      v39 = 0;
      v40 = v32 & 0xFFFFFFFFFFFFFF8;
      v41 = (v32 & 0xFFFFFFFFFFFFFF8) + 32;
      v42 = (2 * v37) | 1;
    }

    if ((v42 & 1) == 0)
    {
      goto LABEL_32;
    }

    v68 = v39;
    v66 = v41;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v45 = swift_dynamicCastClass();
    if (!v45)
    {
      swift_unknownObjectRelease();
      v45 = MEMORY[0x277D84F90];
    }

    v46 = *(v45 + 16);

    if (__OFSUB__(v42 >> 1, v68))
    {
      goto LABEL_53;
    }

    if (v46 != (v42 >> 1) - v68)
    {
      goto LABEL_54;
    }

    v38 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v34 = v77;
    if (!v38)
    {
      swift_unknownObjectRelease();
      v38 = MEMORY[0x277D84F90];
    }

LABEL_39:
    v68 = *MEMORY[0x277CC6048];
    v47 = v68;
    v48 = dispatch_semaphore_create(0);
    v77 = v48;
    v49 = swift_allocObject();
    v50 = v78;
    *(v49 + 16) = v38;
    *(v49 + 24) = v50;
    *(v49 + 32) = a1;
    *(v49 + 40) = v47;
    *(v49 + 48) = v34 & 1;
    *(v49 + 56) = 5;
    v51 = v70;
    *(v49 + 64) = v71;
    *(v49 + 72) = v51;
    *(v49 + 80) = v48;
    v32 = swift_allocObject();
    *(v32 + 16) = closure #1 in DOCActionManager.validItems(for:in:itemProviders:dataOwnerState:alertPresenting:allowPartialCheck:)partial apply;
    *(v32 + 24) = v49;
    v83 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v84 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v80 = 1107296256;
    v81 = thunk for @escaping @callee_guaranteed () -> ();
    v82 = &block_descriptor_347;
    v52 = _Block_copy(&aBlock);

    v53 = v78;
    v54 = a1;
    v55 = v68;

    a1 = v77;

    [v18 _performAsDataOwner_block_];
    _Block_release(v52);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
  }

  v56 = v69;
  static DispatchTime.now()();
  *v7 = 5;
  v58 = v75;
  v57 = v76;
  (*(v75 + 104))(v7, *MEMORY[0x277D85188], v76);
  v59 = v72;
  MEMORY[0x24C1FAA90](v56, v7);
  (*(v58 + 8))(v7, v57);
  v60 = v74;
  v61 = *(v73 + 8);
  v61(v56, v74);
  MEMORY[0x24C1FBB60](v59);
  v61(v59, v60);
  v62 = static DispatchTimeoutResult.== infix(_:_:)();

  if (v62)
  {
    v30 = 0;
  }

  else
  {
    v63 = v67;
    swift_beginAccess();
    v30 = *v63;
  }

LABEL_11:

  return v30;
}

uint64_t specialized DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:)(dispatch_semaphore_t a1, int a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v67 - v17;
  v19 = [a1 isTrashed];
  result = 0;
  if (v19)
  {
    return result;
  }

  v73 = v13;
  v74 = v18;
  LODWORD(v80) = a2;
  v75 = v10;
  v76 = v9;
  v77 = v5;
  v21 = [objc_opt_self() defaultPermission];
  v22 = [v21 dataOwnerStateForNode_];

  v87 = MEMORY[0x277D84F90];
  if (v22 == 1)
  {
    v23 = 2;
  }

  else
  {
    v23 = v22 == 2;
  }

  v24 = objc_opt_self();
  v25 = swift_allocObject();
  *(v25 + 16) = &v87;
  v26 = swift_allocObject();
  *(v26 + 16) = partial apply for closure #1 in DOCActionManager.numberOfItemsPasteable(in:allowPartialCheck:);
  *(v26 + 24) = v25;
  v85 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
  v86 = v26;
  aBlock = MEMORY[0x277D85DD0];
  v82 = 1107296256;
  v83 = thunk for @escaping @callee_guaranteed () -> ();
  v84 = &block_descriptor_357;
  v27 = _Block_copy(&aBlock);

  v78 = v24;
  v79 = v23;
  [v24 _performAsDataOwner_block_];
  _Block_release(v27);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if (!(v87 >> 62))
  {
    if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_46:

    return 0;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_46;
  }

LABEL_8:

  v30 = specialized DOCActionManager.externalItemUTIs(in:with:)(v29, v22);

  v31 = MEMORY[0x277CC5FD8];
  if (*(v30 + 16))
  {
    v32 = [objc_opt_self() defaultManager];
    isa = Array._bridgeToObjectiveC()().super.isa;
    v34 = [v32 eligibleActionsForDroppingUTIs:isa underItem:a1];

    type metadata accessor for FPAction(0);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
    v35 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(isa) = specialized Set.contains(_:)(*v31, v35);

    v36 = 0;
    if (isa)
    {
      v36 = *(v30 + 16);
    }

    v37 = v36;

    goto LABEL_43;
  }

  v38 = v87;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v71 = v4;
  v72 = v25;
  v69 = (v39 + 16);
  if ((v80 & 1) == 0)
  {
    swift_bridgeObjectRetain_n();
    v42 = v38;
    goto LABEL_38;
  }

  v40 = v38 >> 62;
  if (!(v38 >> 62))
  {
    result = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= 5)
    {
      v41 = 5;
    }

    else
    {
      v41 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (result >= v41)
    {
      goto LABEL_18;
    }

LABEL_59:
    __break(1u);
    return result;
  }

  while (1)
  {
    v46 = v39;
    v39 = v38;
    v44 = __CocoaSet.count.getter();
    if (__CocoaSet.count.getter() < 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_unknownObjectRelease();
      v43 = v70;
      v45 = v68;
LABEL_31:
      specialized _copyCollectionToContiguousArray<A>(_:)(v44, v45, v43, v46);
      v42 = v48;
      swift_unknownObjectRelease();
      v31 = MEMORY[0x277CC5FD8];
      goto LABEL_38;
    }

    v65 = 5;
    if (v44 >= 5)
    {
      v66 = 5;
    }

    else
    {
      v66 = v44;
    }

    if (v44 >= 0)
    {
      v65 = v66;
    }

    v41 = v65;
    result = __CocoaSet.count.getter();
    v39 = v46;
    if (result < v41)
    {
      goto LABEL_59;
    }

LABEL_18:
    if ((v38 & 0xC000000000000001) != 0 && v41)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSItemProvider);
      swift_bridgeObjectRetain_n();
      _ArrayBuffer._typeCheckSlowPath(_:)(0);
      if (v41 != 1)
      {
        _ArrayBuffer._typeCheckSlowPath(_:)(1);
        if (v41 != 2)
        {
          _ArrayBuffer._typeCheckSlowPath(_:)(2);
          if (v41 != 3)
          {
            _ArrayBuffer._typeCheckSlowPath(_:)(3);
            if (v41 != 4)
            {
              _ArrayBuffer._typeCheckSlowPath(_:)(4);
              if (v41 != 5)
              {
                _ArrayBuffer._typeCheckSlowPath(_:)(5);
                _ArrayBuffer._typeCheckSlowPath(_:)(6);
              }
            }
          }
        }
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v40)
    {

      v44 = _CocoaArrayWrapper.subscript.getter();
      v46 = v47;
      if ((v47 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v43 = 0;
      v44 = v38 & 0xFFFFFFFFFFFFFF8;
      v45 = (v38 & 0xFFFFFFFFFFFFFF8) + 32;
      v46 = (2 * v41) | 1;
    }

    v68 = v45;
    v70 = v43;
    type metadata accessor for __ContiguousArrayStorageBase();
    swift_unknownObjectRetain_n();
    v49 = swift_dynamicCastClass();
    if (!v49)
    {
      swift_unknownObjectRelease();
      v49 = MEMORY[0x277D84F90];
    }

    v50 = *(v49 + 16);

    if (__OFSUB__(v46 >> 1, v70))
    {
      goto LABEL_51;
    }

    if (v50 != (v46 >> 1) - v70)
    {
      goto LABEL_52;
    }

    v42 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    v31 = MEMORY[0x277CC5FD8];
    if (!v42)
    {
      swift_unknownObjectRelease();
      v42 = MEMORY[0x277D84F90];
    }

LABEL_38:
    v51 = *v31;
    v52 = dispatch_semaphore_create(0);
    v53 = swift_allocObject();
    *(v53 + 16) = v42;
    *(v53 + 24) = 0;
    *(v53 + 32) = a1;
    *(v53 + 40) = v51;
    *(v53 + 48) = v80 & 1;
    *(v53 + 56) = 5;
    *(v53 + 64) = v39;
    *(v53 + 72) = v38;
    *(v53 + 80) = v52;
    v54 = swift_allocObject();
    *(v54 + 16) = closure #1 in DOCActionManager.validItems(for:in:itemProviders:dataOwnerState:alertPresenting:allowPartialCheck:)partial apply;
    *(v54 + 24) = v53;
    v85 = closure #1 in static UIView.doc_performBlock(allowingAnimations:block:)partial apply;
    v86 = v54;
    aBlock = MEMORY[0x277D85DD0];
    v82 = 1107296256;
    v83 = thunk for @escaping @callee_guaranteed () -> ();
    v84 = &block_descriptor_369;
    v55 = _Block_copy(&aBlock);
    v80 = v38;

    v56 = a1;
    v57 = v51;
    v70 = v39;

    a1 = v52;

    [v78 _performAsDataOwner_block_];
    _Block_release(v55);
    v40 = swift_isEscapingClosureAtFileLocation();

    if ((v40 & 1) == 0)
    {
      break;
    }

    __break(1u);
  }

  v58 = v73;
  static DispatchTime.now()();
  *v8 = 5;
  v59 = v77;
  v60 = v71;
  (*(v77 + 104))(v8, *MEMORY[0x277D85188], v71);
  v61 = v74;
  MEMORY[0x24C1FAA90](v58, v8);
  (*(v59 + 8))(v8, v60);
  v62 = v76;
  v63 = *(v75 + 8);
  v63(v58, v76);
  MEMORY[0x24C1FBB60](v61);
  v63(v61, v62);
  LOBYTE(v60) = static DispatchTimeoutResult.== infix(_:_:)();

  if (v60)
  {
    v37 = 0;
  }

  else
  {
    v64 = v69;
    swift_beginAccess();
    v37 = *v64;
  }

LABEL_43:

  return v37;
}

uint64_t specialized Set.formUnion<A>(_:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      specialized Set._Variant.insert(_:)(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void specialized Set.formUnion<A>(_:)(unint64_t a1, void (*a2)(id *, id))
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v6 = *(a1 + 8 * j + 32);
      }

      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      a2(&v8, v6);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t specialized DOCActionManager.addToDockActions(for:currentConfiguration:)(uint64_t a1, id a2)
{
  if ([a2 isFilesApp])
  {
    v3 = specialized DOCActionManager.shouldShowAddToSubmenu(for:)(a1);
    v4 = specialized static UIDocumentBrowserAction.addToDockAction(useAlternateTitle:)(v3 & 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    *(inited + 32) = 0x7365646F4E636F64;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd);
    *(inited + 48) = a1;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(inited + 32, &_sSS_yptMd);
    v6 = [v4 filteringPredicate];
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v8 = [v6 evaluateWithObject_];

    if (v8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      result = swift_allocObject();
      *(result + 16) = xmmword_249BA0290;
      *(result + 32) = v4;
      return result;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(unint64_t a1, int a2, int a3, void *a4)
{
  v53 = a2;
  v54 = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS.QoSClass();
  v50 = *(v15 - 8);
  v51 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v49 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v18[2] = a4;
  v18[3] = DOCGridLayout.specIconWidth.modify;
  v18[4] = 0;
  v19 = objc_opt_self();
  v20 = a4;
  v21 = [v19 sharedManager];
  LODWORD(v19) = [v21 hasAnyProtectedApps];

  if (v19)
  {
    v46 = v20;
    v44 = v10;
    aBlock[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_31;
    }

    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v47 = v14;
    v48 = v18;
    v42 = v11;
    v43 = v9;
    v45 = v6;
    v23 = MEMORY[0x277D84F90];
    if (v22)
    {
      v11 = 0;
      v6 = 0;
      v14 = (a1 & 0xC000000000000001);
      v18 = (a1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v14)
        {
          v24 = MEMORY[0x24C1FC540](v11, a1);
          v9 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          if (v11 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_31:
            v22 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          v24 = *(a1 + 8 * v11 + 32);
          swift_unknownObjectRetain();
          v9 = (v11 + 1);
          if (__OFADD__(v11, 1))
          {
            goto LABEL_16;
          }
        }

        v57 = v24;
        closure #1 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(&v57, &v56);
        v25 = swift_unknownObjectRelease();
        v20 = v56;
        if (v56)
        {
          MEMORY[0x24C1FB090](v25);
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v23 = aBlock[0];
        }

        ++v11;
      }

      while (v9 != v22);
    }

    v28 = v47;
    if (v23 >> 62)
    {
      v29 = __CocoaSet.count.getter();
    }

    else
    {
      v29 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v48;
    v31 = v46;
    if (v29)
    {
      if (v54)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v33 = v49;
        v32 = v50;
        v34 = v51;
        (*(v50 + 104))(v49, *MEMORY[0x277D851B8], v51);
        v35 = static OS_dispatch_queue.global(qos:)();
        (*(v32 + 8))(v33, v34);
        v36 = swift_allocObject();
        *(v36 + 16) = v23;
        *(v36 + 24) = v53 & 1;
        *(v36 + 32) = closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)partial apply;
        *(v36 + 40) = v30;
        aBlock[4] = closure #2 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)partial apply;
        aBlock[5] = v36;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_307;
        v37 = _Block_copy(aBlock);

        static DispatchQoS.unspecified.getter();
        v57 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v38 = v43;
        v39 = v45;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v28, v38, v37);
        _Block_release(v37);

        (*(v52 + 8))(v38, v39);
        (*(v42 + 8))(v28, v44);
      }

      else
      {
        v41 = appContainersNeedingAuthentication #1 () in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v23, v53 & 1);

        specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(v41, v31);
      }
    }

    v26 = MEMORY[0x277D84F90];
    v27 = v31;
  }

  else
  {
LABEL_17:
    v26 = MEMORY[0x277D84F90];
    v27 = v20;
  }

  specialized closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(v26, v27);
}

uint64_t specialized DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(unint64_t a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6)
{
  v57 = a2;
  v58 = a3;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v56 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v59 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v55 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v52 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v21 = objc_opt_self();
  v22 = a4;

  v23 = [v21 sharedManager];
  LODWORD(v21) = [v23 hasAnyProtectedApps];

  if (v21)
  {
    v48 = v22;
    v49 = a5;
    v50 = a6;
    aBlock[0] = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_31;
    }

    a5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v51 = v20;
    v45 = v13;
    v46 = v14;
    v47 = v10;
    v13 = MEMORY[0x277D84F90];
    if (a5)
    {
      v22 = 0;
      v10 = a1 & 0xC000000000000001;
      v20 = (a1 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if (v10)
        {
          v24 = MEMORY[0x24C1FC540](v22, a1);
          v14 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        else
        {
          if (v22 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_31:
            a5 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          v24 = *(a1 + 8 * v22 + 32);
          swift_unknownObjectRetain();
          v14 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_16;
          }
        }

        v62 = v24;
        closure #1 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(&v62, &v61);
        v25 = swift_unknownObjectRelease();
        if (v61)
        {
          MEMORY[0x24C1FB090](v25);
          if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v13 = aBlock[0];
        }

        ++v22;
      }

      while (v14 != a5);
    }

    v29 = v59;
    if (v13 >> 62)
    {
      v30 = __CocoaSet.count.getter();
    }

    else
    {
      v30 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v31 = v51;
    v33 = v48;
    v32 = v49;
    if (v30)
    {
      if (v58)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue);
        v35 = v52;
        v34 = v53;
        v36 = v54;
        (*(v53 + 104))(v52, *MEMORY[0x277D851B8], v54);
        v37 = static OS_dispatch_queue.global(qos:)();
        (*(v34 + 8))(v35, v36);
        v38 = swift_allocObject();
        *(v38 + 16) = v13;
        *(v38 + 24) = v57 & 1;
        *(v38 + 32) = closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)partial apply;
        *(v38 + 40) = v31;
        aBlock[4] = closure #2 in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)partial apply;
        aBlock[5] = v38;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_324_0;
        v39 = _Block_copy(aBlock);

        v40 = v55;
        static DispatchQoS.unspecified.getter();
        v62 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
        lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
        v41 = v45;
        v42 = v47;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v40, v41, v39);
        _Block_release(v39);

        (*(v56 + 8))(v41, v42);
        (*(v29 + 8))(v40, v46);
      }

      else
      {
        v44 = appContainersNeedingAuthentication #1 () in DOCAppProtectionManager.nodesRequiringAuthentication(in:stopOnFirst:async:completion:)(v13, v57 & 1);

        closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(v44, v33, v32);
      }
    }

    v26 = MEMORY[0x277D84F90];
    v27 = v33;
    v28 = v32;
  }

  else
  {
LABEL_17:
    v26 = MEMORY[0x277D84F90];
    v27 = v22;
    v28 = a5;
  }

  closure #1 in DOCItemCollectionViewController.updateOutlineViewExpandedStateForCurrentProtectedState(async:completion:)(v26, v27, v28);
}

id specialized DOCActionManager.additionalBuiltInActions(for:)(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo8FPActiona_So23UIDocumentBrowserActionCtGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249BA54A0;
  v3 = *MEMORY[0x277CC6058];
  *(inited + 32) = *MEMORY[0x277CC6058];
  v4 = v3;
  specialized static UIDocumentBrowserAction.trashAction()();
  v5 = *MEMORY[0x277CC6078];
  *(inited + 40) = v6;
  *(inited + 48) = v5;
  v7 = v5;
  specialized static UIDocumentBrowserAction.untrashAction()();
  v8 = *MEMORY[0x277CC6040];
  *(inited + 56) = v9;
  *(inited + 64) = v8;
  v10 = v8;
  specialized static UIDocumentBrowserAction.renameAction()();
  v11 = *MEMORY[0x277CC6048];
  *(inited + 72) = v12;
  *(inited + 80) = v11;
  if (a1 >> 62)
  {
    v13 = __CocoaSet.count.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = v11;
  v15 = specialized static UIDocumentBrowserAction.moveAction(numberOfItems:)(v13);
  v16 = *MEMORY[0x277CC5FE0];
  *(inited + 88) = v15;
  *(inited + 96) = v16;
  v17 = v16;
  result = _DocumentManagerBundle();
  if (result)
  {
    v19 = result;
    v49._object = 0x8000000249BC6550;
    v20._countAndFlagsBits = 0x4E206574656C6544;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v20._object = 0xEA0000000000776FLL;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    v49._countAndFlagsBits = 0xD000000000000044;
    v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v49);

    v24 = *MEMORY[0x277D05F90];
    v25 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v26 = v24;
    v27 = MEMORY[0x24C1FAD20](v23._countAndFlagsBits, v23._object);
    v47 = closure #1 in static UIDocumentBrowserAction.deleteAction(title:);
    v48 = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v46 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    *(&v46 + 1) = &block_descriptor_161_0;
    v28 = _Block_copy(&aBlock);
    v29 = [v25 initWithIdentifier:v26 localizedTitle:v27 unresolvedHandler:v28];

    _Block_release(v28);

    v30 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v31 = [objc_opt_self() systemImageNamed_];

    [v29 setImage_];
    [v29 setAvailability_];
    [v29 setNavigationSide_];
    [v29 setMenuSortOrder_];
    [v29 setActionStyle_];
    [v29 setRequiresFullyFormedItems_];

    *(inited + 104) = v29;
    v32 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8FPActiona_So23UIDocumentBrowserActionCTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8FPActiona_So23UIDocumentBrowserActionCtMd);
    swift_arrayDestroy();
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
    v36 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v37 = MEMORY[0x24C1FAD20](v33, v35);

    v38 = [v36 initWithSuiteName_];

    if (v38)
    {
      if ([v38 valueForKey_])
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v43 = 0u;
        v44 = 0u;
      }

      aBlock = v43;
      v46 = v44;
      if (*(&v44 + 1))
      {
        if ((swift_dynamicCast() & 1) != 0 && v42 == 1)
        {
          v39 = *MEMORY[0x277CC6018];
          v40 = specialized static UIDocumentBrowserAction.fetchPublishingURLAction()();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v32;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v40, v39, isUniquelyReferenced_nonNull_native);

          return aBlock;
        }

        else
        {
        }
      }

      else
      {

        outlined destroy of CharacterSet?(&aBlock, &_sypSgMd);
      }
    }

    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static DOCActionManager.eligibleActions(for:)(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    result = __CocoaSet.count.getter();
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84FA0];
  if (!result)
  {
    return v4;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x24C1FC540](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  DOCNode.nodeType.getter(&v15);
  if (v15)
  {
    if (v2)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);

      v11 = _bridgeCocoaArray<A>(_:)();

      v1 = v11;
    }

    else
    {
      v5 = v1 & 0xFFFFFFFFFFFFFF8;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode);
      if (!swift_dynamicCastMetatype())
      {
        v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          v7 = v5 + 32;
          while (1)
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              break;
            }

            v7 += 8;
            if (!--v6)
            {
              goto LABEL_23;
            }
          }

          v1 = v5 | 1;
        }
      }
    }

LABEL_23:
    specialized Sequence.forEach(_:)(v1);

    swift_unknownObjectRelease();
    return v4;
  }

  v8 = [objc_opt_self() defaultManager];
  if (v2)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    if (!swift_dynamicCastMetatype())
    {
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
        v10 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
        do
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          v10 += 8;
          --v9;
        }

        while (v9);
      }
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v8 eligibleActionsForItems_];

  type metadata accessor for FPAction(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_16(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction);
  v14 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  swift_unknownObjectRelease();
  return v14;
}

void partial apply for closure #2 in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(unint64_t a1)
{
  v2 = v1[3];
  if (a1)
  {
    v4 = v1[5];
    v5 = v1[6];
    v6 = v1[2];

    runAction #1 (_:on:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(v4, v5, a1, v6, v2);
  }

  else
  {
    v2();
  }
}

uint64_t specialized DOCActionManager.sharedWithYouActions(for:presentingViewController:)(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = DOCNode.fpfs_syncFetchFPItem()();
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v5 = v3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *((*MEMORY[0x277D85000] & *static DOCCollaborationHighlightManager.shared) + 0xA8);
  v7 = static DOCCollaborationHighlightManager.shared;
  v8 = v6(v5);

  if (!v8)
  {
LABEL_23:

    return v4;
  }

  v44 = v4;
  if ([v5 doc_isCollaborationInvitation])
  {
    v9 = [v8 hideContextMenu];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 identifier];
      if (!v11)
      {
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = MEMORY[0x24C1FAD20](v12);
      }

      v13 = [v10 title];
      if (!v13)
      {
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = MEMORY[0x24C1FAD20](v14);
      }

      v15 = swift_allocObject();
      *(v15 + 16) = v10;
      v16 = objc_allocWithZone(MEMORY[0x277D05F28]);
      v42 = partial apply for closure #1 in DOCActionManager.sharedWithYouActions(for:presentingViewController:);
      v43 = v15;
      v38 = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
      v41 = &block_descriptor_149_1;
      v17 = _Block_copy(&v38);
      v18 = v10;
      v19 = [v16 initWithIdentifier:v11 localizedTitle:v13 unresolvedHandler:v17];

      _Block_release(v17);

      v20 = MEMORY[0x24C1FAD20](0x69632E73756E696DLL, 0xEC000000656C6372);
      v21 = [objc_opt_self() systemImageNamed_];

      [v19 setImage_];
      [v19 setAvailability_];
      [v19 setMenuSortOrder_];
      [v19 setActionStyle_];
      v22 = v19;
      MEMORY[0x24C1FB090]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v4 = v44;
    }
  }

  v23 = [v8 replyContextMenuWithPresentingViewController_];
  if (!v23)
  {

    goto LABEL_23;
  }

  v24 = v23;
  v25 = [v23 identifier];
  if (!v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = MEMORY[0x24C1FAD20](v26);
  }

  v27 = [v24 title];
  if (!v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = MEMORY[0x24C1FAD20](v28);
  }

  v29 = swift_allocObject();
  *(v29 + 16) = v24;
  v30 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v42 = partial apply for closure #2 in DOCActionManager.sharedWithYouActions(for:presentingViewController:);
  v43 = v29;
  v38 = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v41 = &block_descriptor_143_1;
  v31 = _Block_copy(&v38);
  v32 = v24;
  v33 = [v30 initWithIdentifier:v25 localizedTitle:v27 unresolvedHandler:v31];

  _Block_release(v31);

  v34 = MEMORY[0x24C1FAD20](0xD00000000000001BLL, 0x8000000249BFF890);
  v35 = [objc_opt_self() systemImageNamed_];

  [v33 setImage_];
  [v33 setAvailability_];
  [v33 setMenuSortOrder_];
  v36 = v33;
  MEMORY[0x24C1FB090]();
  if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v44;
}

uint64_t specialized DOCActionManager.returnToSenderActions(for:presentingViewController:)()
{
  swift_getObjectType();
  v0 = DOCNode.documentAttributes.getter();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_249BA37E0;
  v3 = objc_opt_self();
  v4 = [v3 localizedStringShowInMail];
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x24C1FAD20](v5);
  }

  v6 = *MEMORY[0x277D06038];
  v7 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v39 = closure #1 in static UIDocumentBrowserAction.returnToDocumentAction();
  v40 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v38 = &block_descriptor_131;
  v8 = _Block_copy(&aBlock);
  v9 = v6;
  v10 = [v7 initWithIdentifier:v9 localizedTitle:v4 unresolvedHandler:v8];

  _Block_release(v8);

  [v10 setAvailability_];
  v11 = MEMORY[0x24C1FAD20](0x65706F6C65766E65, 0xE800000000000000);
  v12 = objc_opt_self();
  v13 = [v12 systemImageNamed_];

  [v10 setImage_];
  [v10 setSupportsMultipleItems_];
  *(v2 + 32) = v10;
  v14 = [v1 sender];
  v15 = [v3 localizedStringReply_];
  if (!v15)
  {
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = MEMORY[0x24C1FAD20](v16);
  }

  v17 = *MEMORY[0x277D06030];
  v18 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v39 = closure #1 in static UIDocumentBrowserAction.replyToSenderAction(with:);
  v40 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v38 = &block_descriptor_134_1;
  v19 = _Block_copy(&aBlock);
  v20 = v17;
  v21 = [v18 initWithIdentifier:v20 localizedTitle:v15 unresolvedHandler:v19];

  _Block_release(v19);

  v22 = MEMORY[0x277D05F38];
  [v21 setAvailability_];
  [v21 setMenuSortOrder_];
  v23 = MEMORY[0x24C1FAD20](0xD00000000000001BLL, 0x8000000249BFF890);
  v24 = [v12 systemImageNamed_];

  [v21 setImage_];
  [v21 setSupportsMultipleItems_];

  *(v2 + 40) = v21;
  v25 = [v3 localizedStringRemove];
  if (!v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = MEMORY[0x24C1FAD20](v26);
  }

  v27 = *MEMORY[0x277D06020];
  v28 = objc_allocWithZone(MEMORY[0x277D05F28]);
  v39 = closure #1 in static UIDocumentBrowserAction.removeCollaborationAttributes();
  v40 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
  v38 = &block_descriptor_137_2;
  v29 = _Block_copy(&aBlock);
  v30 = v27;
  v31 = [v28 initWithIdentifier:v30 localizedTitle:v25 unresolvedHandler:v29];

  _Block_release(v29);

  [v31 setAvailability_];
  v32 = MEMORY[0x24C1FAD20](0x69632E73756E696DLL, 0xEC000000656C6372);
  v33 = [v12 systemImageNamed_];

  [v31 setImage_];
  [v31 setSupportsMultipleItems_];
  [v31 setActionStyle_];
  *(v2 + 48) = v31;

  return v2;
}

void specialized DOCActionManager.createToolbarDelete(_:)(char a1)
{
  if (a1)
  {
    v2 = _DocumentManagerBundle();
    if (v2)
    {
      v3 = v2;
      v34._object = 0x8000000249BC9970;
      v4._countAndFlagsBits = 0x6574656C6544;
      v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v5.value._object = 0xEB00000000656C62;
      v4._object = 0xE600000000000000;
      v6._countAndFlagsBits = 0;
      v6._object = 0xE000000000000000;
      v34._countAndFlagsBits = 0xD00000000000001BLL;
      v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v34);

      v8 = *MEMORY[0x277D05F90];
      v9 = objc_allocWithZone(MEMORY[0x277D05F28]);
      v10 = v8;
      v11 = MEMORY[0x24C1FAD20](v7._countAndFlagsBits, v7._object);
      v32 = closure #1 in static UIDocumentBrowserAction.deleteAction(title:);
      v33 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
      v31 = &block_descriptor_128_1;
      v12 = _Block_copy(&aBlock);
      v13 = [v9 initWithIdentifier:v10 localizedTitle:v11 unresolvedHandler:v12];

      _Block_release(v12);

      v14 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
      v15 = [objc_opt_self() systemImageNamed_];

      [v13 setImage_];
      [v13 setAvailability_];
      [v13 setNavigationSide_];
      [v13 setMenuSortOrder_];
      [v13 setActionStyle_];
      [v13 setRequiresFullyFormedItems_];

      return;
    }

    __break(1u);
  }

  else
  {
    v1 = *MEMORY[0x277D05F90];
    v16 = _DocumentManagerBundle();
    if (v16)
    {
      v17 = v16;
      v35._object = 0x8000000249BD4280;
      v18._countAndFlagsBits = 0x41206574656C6544;
      v19.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v19.value._object = 0xEB00000000656C62;
      v35._countAndFlagsBits = 0xD00000000000002FLL;
      v18._object = 0xEA00000000006C6CLL;
      v20._countAndFlagsBits = 0;
      v20._object = 0xE000000000000000;
      v21 = NSLocalizedString(_:tableName:bundle:value:comment:)(v18, v19, v17, v20, v35);

      v22 = objc_allocWithZone(MEMORY[0x277D05F28]);
      v23 = MEMORY[0x24C1FAD20](v21._countAndFlagsBits, v21._object);

      v32 = closure #1 in static UIDocumentBrowserAction.deleteAllAction();
      v33 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v29 = 1107296256;
      v30 = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
      v31 = &block_descriptor_125_1;
      v24 = _Block_copy(&aBlock);
      v25 = [v22 initWithIdentifier:v1 localizedTitle:v23 unresolvedHandler:v24];

      _Block_release(v24);

      v26 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
      v27 = [objc_opt_self() systemImageNamed_];

      [v25 setImage_];
      [v25 setAvailability_];
      [v25 setNavigationSide_];
      [v25 setMenuSortOrder_];
      [v25 setActionStyle_];
      [v25 setRequiresFullyFormedItems_];
      return;
    }
  }

  __break(1u);
}

void specialized DOCLazyActionManager.actions.setter()
{
  _StringGuts.grow(_:)(24);

  v1 = [v0 description];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x24C1FAEA0](v2, v4);

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCActionToolbarItemDescriptor(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 10))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCActionToolbarItemDescriptor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for DOCActionToolbarItemDescriptor(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t type metadata completion function for LazyItems #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)()
{
  result = type metadata accessor for Optional();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t partial apply for implicit closure #1 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)@<X0>(unint64_t *a1@<X8>)
{
  result = specialized Array<A>.fpfs_syncFetchAllFPItems()(*(v1 + 16));
  *a1 = result;
  return result;
}

BOOL partial apply for closure #1 in closure #2 in DOCActionManager._filteredMenuActions(for:availabilityIdentifier:in:currentConfiguration:sortOverrideHandler:)()
{
  v1 = *(v0 + 24);
  v2 = [*(v0 + 16) menuSortOrder];
  return v2 < [v1 menuSortOrder];
}

uint64_t outlined consume of [FPItem]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t outlined copy of [FPItem]??(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

void partial apply for closure #2 in DOCActionManager.sharedWithYouActions(for:presentingViewController:)()
{
  v1 = [*(v0 + 16) actionBlock];
  v1[2]();

  _Block_release(v1);
}

uint64_t objectdestroy_14Tm_0()
{
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void partial apply for closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(void *a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  closure #1 in fetchItems #1 (from:completionHandler:) in DOCActionManager.perform(actionWithIdentifier:with:completionHandler:)(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + v8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void partial apply for closure #1 in FPItemManager.doc_fetchItem(for:completionHandler:)(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 17) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  closure #1 in FPItemManager.doc_fetchItem(for:completionHandler:)(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t objectdestroy_11Tm_0(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 24));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  return partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, specialized closure #1 in _NativeSet.genericIntersection<A>(_:), a3);
}

{
  return partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, specialized closure #1 in _NativeSet.genericIntersection<A>(_:), a3);
}

uint64_t partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, void, void)@<X2>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2, **(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    *a4 = result;
  }

  return result;
}

uint64_t objectdestroy_280Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t objectdestroy_2Tm_5()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t DOCHashableNode.__allocating_init(for:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized DOCHashableNode.__allocating_init(for:)(a1);
}

void makeDOCCopyOperation(urls:destinationFolder:undoManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  specialized makeDOCCopyOperation(urls:destinationFolder:undoManager:)(a1, a2, a3, ObjectType);
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @unowned OperationConflict, @guaranteed FIOperationRecord) -> (@unowned OperationResolution)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a2;
  v9 = a4;
  v10 = v7(v8, a3, v9);

  return v10;
}

unint64_t makeDOCCopyOperation(nodes:destinationFolder:isDuplication:undoManager:)(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  swift_getObjectType();

  return specialized makeDOCCopyOperation(nodes:destinationFolder:isDuplication:undoManager:)(a1, a2, a3, a4);
}

uint64_t (*protocol witness for SomeCopyOperation.doc_targetFilenamesByNode.modify in conformance DOCCopyOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x138))();
  return protocol witness for DOCFileOperationsProviding.didUpdateInProgressFileOperationsHandler.modify in conformance DOCFileProviderSyncStateProvider;
}

uint64_t (*protocol witness for SomeCopyOperation.shouldBounceOnCollision.modify in conformance DOC_FICopyOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x188))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeCopyOperation.lastUsageUpdatePolicy.modify in conformance DOC_FICopyOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x170))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeCopyOperation.targetFilenamesByURL.modify in conformance DOC_FICopyOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x140))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeCopyOperation.doc_targetFilenamesByNode.modify in conformance DOC_FICopyOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x158))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeOperation.actionCompletionBlock.modify in conformance DOC_FICopyOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x110))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

uint64_t (*protocol witness for SomeOperation.qualityOfService.modify in conformance DOC_FICopyOperation(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x1A0))();
  return protocol witness for SomeOperation.actionCompletionBlock.modify in conformance FPActionOperation;
}

void *DOCCopyOperation.__allocating_init(items:destinationFolder:isDuplication:undoManager:)(uint64_t a1, void *a2, char a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_allowDSCopyEngine] = 1;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsTransferResults] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceNodeToURL] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceURLToNode] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsItemIDToPlaceholderID] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = 0;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_engineTypeUsed] = 0;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication;
  v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication] = 0;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems] = a1;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem] = a2;
  swift_beginAccess();
  v9[v10] = a3;
  *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager] = a4;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

  v11 = a2;
  v12 = a4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18.receiver = v9;
  v18.super_class = v4;
  v14 = objc_msgSendSuper2(&v18, sel_initWithItems_destinationFolder_, isa, v11);

  v15 = *((*MEMORY[0x277D85000] & *v14) + 0x1A0);
  v16 = v14;
  v15();

  return v16;
}

uint64_t DOCHashableNode.init(for:)(uint64_t a1)
{
  swift_getObjectType();

  return specialized DOCHashableNode.init(for:)(a1, v1);
}

uint64_t DOCHashableNode.hash(into:)()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
  {
    swift_unknownObjectRetain();
    NSObject.hash(into:)();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DOCHashableNode.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

Swift::Int DOCHashableNode.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 96))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCHashableNode()
{
  Hasher.init(_seed:)();
  (*(**v0 + 96))(v2);
  return Hasher._finalize()();
}

void DOC_FICopyOperation.__allocating_init(urls:destinationFolder:undoManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  ObjectType = swift_getObjectType();

  specialized DOC_FICopyOperation.init(urls:destinationFolder:undoManager:)(a1, a2, a3, v7, ObjectType);
}

uint64_t DOC_FICopyOperation.__allocating_init(nodes:destinationFolder:isDuplication:undoManager:)(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  swift_getObjectType();

  return specialized DOC_FICopyOperation.init(nodes:destinationFolder:isDuplication:undoManager:)(a1, a2, a3, a4, v9);
}

void *DOC_FICopyOperation.fiOperation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_fiOperation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOC_FICopyOperation.fiOperation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_fiOperation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall DOC_FICopyOperation.schedule()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
  if (v1)
  {
    v2 = v1;
    [v1 schedule];
  }
}

uint64_t DOC_FICopyOperation.resultNodes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resultNodes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for DOC_FICopyOperation.actionCompletionBlock : DOC_FICopyOperation@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0x100))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOC_FICopyOperation.actionCompletionBlock : DOC_FICopyOperation(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Error?) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *((*MEMORY[0x277D85000] & **a2) + 0x108);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3);
  return v7(v6, v5);
}

uint64_t DOC_FICopyOperation.actionCompletionBlock.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_actionCompletionBlock);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1);
  return v2;
}

uint64_t DOC_FICopyOperation.actionCompletionBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_actionCompletionBlock);
  swift_beginAccess();
  v6 = *v5;
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
}

uint64_t DOC_FICopyOperation.lastUsageUpdatePolicy.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_lastUsageUpdatePolicy;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOC_FICopyOperation.lastUsageUpdatePolicy.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_lastUsageUpdatePolicy;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DOC_FICopyOperation.shouldBounceOnCollision.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_shouldBounceOnCollision;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOC_FICopyOperation.shouldBounceOnCollision.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_shouldBounceOnCollision;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id DOC_FICopyOperation.qualityOfService.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
  if (result)
  {
    v2 = result;
    v3 = [result qualityOfService];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOC_FICopyOperation.qualityOfService.setter(uint64_t a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xC8))();
  if (v3)
  {
    v4 = v3;
    [v3 setQualityOfService_];
  }

  else
  {
    __break(1u);
  }
}

void (*DOC_FICopyOperation.qualityOfService.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xC8);
  v4 = ((*MEMORY[0x277D85000] & *v1) + 200) & 0xFFFFFFFFFFFFLL | 0x3EF8000000000000;
  a1[2] = v3;
  a1[3] = v4;
  result = v3();
  if (result)
  {
    v6 = result;
    v7 = [result qualityOfService];

    *a1 = v7;
    return DOC_FICopyOperation.qualityOfService.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOC_FICopyOperation.qualityOfService.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = (a1[2])();
  if (a2)
  {
    if (v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!v4)
  {
    __break(1u);
    return;
  }

LABEL_5:
  v5 = v4;
  [v4 setQualityOfService_];
}

id DOC_FICopyOperation.executedAsFPAction.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
  if (result)
  {
    v2 = result;
    v3 = [result executedAsFPAction];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOC_FICopyOperation.engineTypeUsed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_engineTypeUsed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOC_FICopyOperation.isDuplication.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_isDuplication;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOC_FICopyOperation.isDuplication.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_isDuplication;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void DOC_FICopyOperation.init(urls:destinationFolder:undoManager:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();

  specialized DOC_FICopyOperation.init(urls:destinationFolder:undoManager:)(a1, a2, a3, v3, ObjectType);
}

uint64_t DOC_FICopyOperation.init(nodes:destinationFolder:isDuplication:undoManager:)(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  swift_getObjectType();

  return specialized DOC_FICopyOperation.init(nodes:destinationFolder:isDuplication:undoManager:)(a1, a2, a3, a4, v4);
}

void DOC_FICopyOperation.setUpCallbacks()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xC8))();
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = partial apply for closure #1 in DOC_FICopyOperation.setUpCallbacks();
    v15 = v3;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed [FINode]) -> ();
    v13 = &block_descriptor_171;
    v4 = _Block_copy(&v10);
    v5 = v2;

    [v5 setCompletionHandler_];
    _Block_release(v4);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = partial apply for closure #2 in DOC_FICopyOperation.setUpCallbacks();
    v15 = v6;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @guaranteed FIOperationError) -> (@owned FIOperationReply?);
    v13 = &block_descriptor_83;
    v7 = _Block_copy(&v10);

    [v5 setErrorHandler_];
    _Block_release(v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = partial apply for closure #3 in DOC_FICopyOperation.setUpCallbacks();
    v15 = v8;
    v10 = MEMORY[0x277D85DD0];
    v11 = 1107296256;
    v12 = thunk for @escaping @callee_guaranteed (@guaranteed FIOperation, @unowned OperationConflict, @guaranteed FIOperationRecord) -> (@unowned OperationResolution);
    v13 = &block_descriptor_87_5;
    v9 = _Block_copy(&v10);

    [v5 setConflictHandler_];
    _Block_release(v9);
  }
}

void closure #1 in DOC_FICopyOperation.setUpCallbacks()(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    if (a2 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd);
      v9 = _bridgeCocoaArray<A>(_:)();

      a2 = v9;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v4) + 0xF0))(a2);
    v7 = (*((*v5 & *v4) + 0x100))(v6);
    if (v7)
    {
      v8 = v7;
      v7(0);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8);
    }
  }
}

id closure #2 in DOC_FICopyOperation.setUpCallbacks()(int a1, id a2)
{
  v2 = [a2 error];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0x100))();
    if (v5)
    {
      v6 = v5;
      v7 = v2;
      v6(v2);
      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v6);
    }

    v8 = objc_allocWithZone(MEMORY[0x277D04718]);
    v9 = v2;
    v10 = _convertErrorToNSError(_:)();

    v11 = [v8 initWithResolution:5 error:v10];
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D04718]);
    v13 = v2;
    v10 = _convertErrorToNSError(_:)();

    v11 = [v12 initWithResolution:5 error:v10];
  }

  return v11;
}

uint64_t closure #3 in DOC_FICopyOperation.setUpCallbacks()(uint64_t a1, char a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = 5;
  if (Strong)
  {
    v7 = Strong;
    if ((a2 & 5) != 0)
    {
      if ((*((*MEMORY[0x277D85000] & *Strong) + 0x178))())
      {
        v6 = 3;
      }

      else
      {
        v8 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resolutionForRemainingConflicts];
        if (v7[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resolutionForRemainingConflicts + 4] == 1)
        {
          v6 = specialized DOC_FICopyOperation.askUserToReplaceKeepBothOrStop(_:)(a3);
          *v8 = v6;
          *(v8 + 4) = 0;
        }

        else
        {
          v6 = *v8;
        }
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

uint64_t DOC_FICopyOperation.actionNameForUndoing.getter()
{
  if (*(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceURLs) + 16))
  {
    return (*((*MEMORY[0x277D85000] & *v0) + 0x248))();
  }

  else
  {
    return (*((*MEMORY[0x277D85000] & *v0) + 0x240))();
  }
}

uint64_t DOC_FICopyOperation.operationForRedoing()()
{
  if (*(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceURLs) + 16))
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceItems);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_destinationFolder);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x1D0);

  v5 = swift_unknownObjectRetain();
  LOBYTE(v4) = v4(v5);
  v6 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_undoManager);
  v7 = objc_allocWithZone(type metadata accessor for DOC_FICopyOperation());
  swift_getObjectType();
  return specialized DOC_FICopyOperation.init(nodes:destinationFolder:isDuplication:undoManager:)(v2, v3, v4 & 1, v6, v7);
}

uint64_t DOC_FICopyOperation.operationForUndoing()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceURLs) + 16);
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xE8))();
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_undoManager);
  if (v1)
  {
    v0 = makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(v2, 0, v3);

    if (v0)
    {
      return v0;
    }

    __break(1u);
  }

  v0 = makeDOCDeleteOperation(nodes:originalOperation:undoManager:)(v2, v0, v3);

  if (v0)
  {
    return v0;
  }

  __break(1u);
  return result;
}

Swift::String_optional __swiftcall DOC_FICopyOperation.actionNameForUndoableDeleteUndoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceItems);
  if (v1 >> 62)
  {
    if (__CocoaSet.count.getter() < 1)
    {
      goto LABEL_29;
    }

    v2 = __CocoaSet.count.getter();
    if (!__CocoaSet.count.getter())
    {
      __break(1u);
      goto LABEL_27;
    }

LABEL_3:
    if ((v1 & 0xC000000000000001) == 0)
    {
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v1 + 32);
        swift_unknownObjectRetain();
        goto LABEL_6;
      }

      __break(1u);
LABEL_29:
      v2 = 0;
      v17 = 0;
      goto LABEL_23;
    }

LABEL_27:
    v3 = MEMORY[0x24C1FC540](0, v1);
LABEL_6:
    v4 = [v3 displayName];
    swift_unknownObjectRelease();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    if ((*((*MEMORY[0x277D85000] & *v0) + 0x1D0))())
    {
      if (v2 != 1)
      {

        v19 = _DocumentManagerBundle();
        if (v19)
        {
          v21 = v19;
          v34 = 0x8000000249BFFEE0;
          v22 = 0x617A696C61636F4CLL;
          v23 = 0xEB00000000656C62;
          v24 = 0xD00000000000002CLL;
          v25 = 0x8000000249BFFEB0;
          v26 = 0xD000000000000044;
LABEL_21:
          v27._countAndFlagsBits = 0;
          v27._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(*&v24, *&v22, v21, v27, *&v26);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
          v28 = swift_allocObject();
          v29 = MEMORY[0x277D83B88];
          *(v28 + 16) = xmmword_249B9A480;
          v30 = MEMORY[0x277D83C10];
          *(v28 + 56) = v29;
          *(v28 + 64) = v30;
          *(v28 + 32) = v2;
          goto LABEL_22;
        }

        goto LABEL_32;
      }

      v19 = _DocumentManagerBundle();
      if (v19)
      {
        v8 = v19;
        v33 = 0x8000000249BFFF80;
        v9 = 0x617A696C61636F4CLL;
        v10 = 0xEB00000000656C62;
        v11 = 0x100000000000002BLL;
        v12 = 0x8000000249BFFF30;
        v13 = 0x1000000000000015;
        v14 = 0x8000000249BFFF60;
        v15 = 0xD00000000000003ELL;
        v16.super.isa = v8;
LABEL_16:
        NSLocalizedString(_:tableName:bundle:value:comment:)(*&v11, *&v9, v16, *&v13, *&v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_249B9A480;
        *(v18 + 56) = MEMORY[0x277D837D0];
        *(v18 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v18 + 32) = v5;
        *(v18 + 40) = v7;
LABEL_22:
        v2 = static String.localizedStringWithFormat(_:_:)();
        v17 = v31;

        goto LABEL_23;
      }

      __break(1u);
    }

    else
    {
      if (v2 != 1)
      {

        v19 = _DocumentManagerBundle();
        if (v19)
        {
          v21 = v19;
          v34 = 0x8000000249BFFDD0;
          v22 = 0x617A696C61636F4CLL;
          v23 = 0xEB00000000656C62;
          v25 = 0x8000000249BFFDA0;
          v26 = 0xD000000000000040;
          v24 = 0xD000000000000027;
          goto LABEL_21;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v19 = _DocumentManagerBundle();
      if (v19)
      {
        v8 = v19;
        v33 = 0x8000000249BFFE70;
        v9 = 0x617A696C61636F4CLL;
        v10 = 0xEB00000000656C62;
        v11 = 0x1000000000000026;
        v12 = 0x8000000249BFFE20;
        v14 = 0x8000000249BFFE50;
        v15 = 0xD00000000000003ALL;
        v16.super.isa = v8;
        v13 = 0x1000000000000010;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    goto LABEL_3;
  }

  v17 = 0;
LABEL_23:
  v19 = v2;
  v20 = v17;
LABEL_34:
  result.value._object = v20;
  result.value._countAndFlagsBits = v19;
  return result;
}

Swift::String_optional __swiftcall DOC_FICopyOperation.actionNameForPermanentDeleteUndoing()()
{
  countAndFlagsBits = *(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceURLs) + 16);
  if (countAndFlagsBits)
  {
    if (countAndFlagsBits == 1)
    {
      v2 = _DocumentManagerBundle();
      if (v2)
      {
        v4 = v2;
        v16 = 0x8000000249C00050;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v7 = 0x656C69462077654ELL;
        v8 = 0x8000000249C00030;
        v9 = 0xD00000000000003DLL;
        v10 = 0xD00000000000001ELL;
        v11.super.isa = v4;
        v12 = 0xE800000000000000;
LABEL_8:
        v14 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v10, *&v5, v11, *&v7, *&v9);
        countAndFlagsBits = v14._countAndFlagsBits;
        object = v14._object;

        goto LABEL_9;
      }

      __break(1u);
    }

    else
    {
      v2 = _DocumentManagerBundle();
      if (v2)
      {
        v4 = v2;
        v16 = 0x8000000249BFFFE0;
        v5 = 0x617A696C61636F4CLL;
        v6 = 0xEB00000000656C62;
        v7 = 0x656C69462077654ELL;
        v10 = 0xD00000000000001FLL;
        v8 = 0x8000000249BFFFC0;
        v9 = 0xD000000000000045;
        v11.super.isa = v4;
        v12 = 0xE900000000000073;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  object = 0;
LABEL_9:
  v2 = countAndFlagsBits;
  v3 = object;
LABEL_12:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

id DOC_FICopyOperation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t DOCCopyOperation.targetFilenamesByItem.didset()
{
  v1 = v0;
  v2 = [v0 targetFilenamesByItem];
  if (!v2)
  {
LABEL_29:
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = v2;
  }

  v40 = v1;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v2 = MEMORY[0x277D84F98];
LABEL_5:
  v9 = v8;
  v41 = v2;
  if (!v6)
  {
    goto LABEL_7;
  }

  do
  {
    v8 = v9;
LABEL_10:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v11 = *(*(v3 + 48) + ((v8 << 9) | (8 * v10)));
    type metadata accessor for DOCHashableNode();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v13 = *(v3 + 16);
    v14 = v11;
    v15 = v14;
    if (v13)
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v14);
      if (v17)
      {
        v21 = (*(v3 + 56) + 16 * v16);
        v22 = v21[1];
        v39 = *v21;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v41;
        v23 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
        v25 = *(v41 + 16);
        v26 = (v24 & 1) == 0;
        v27 = __OFADD__(v25, v26);
        v28 = v25 + v26;
        if (v27)
        {
          goto LABEL_33;
        }

        if (*(v41 + 24) >= v28)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = v22;
            v32 = v23;
            v33 = v24;
            specialized _NativeDictionary.copy()();
            v23 = v32;
            v22 = v43;
            v2 = v44;
            if (v33)
            {
LABEL_24:
              v31 = (v2[7] + 16 * v23);
              *v31 = v39;
              v31[1] = v22;

              goto LABEL_5;
            }

            goto LABEL_26;
          }
        }

        else
        {
          v42 = v24;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
          v23 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
          v30 = v29 & 1;
          v24 = v42;
          if ((v42 & 1) != v30)
          {
            goto LABEL_35;
          }
        }

        v2 = v44;
        if (v24)
        {
          goto LABEL_24;
        }

LABEL_26:
        v2[(v23 >> 6) + 8] |= 1 << v23;
        *(v2[6] + 8 * v23) = v12;
        v34 = (v2[7] + 16 * v23);
        *v34 = v39;
        v34[1] = v22;

        v35 = v2[2];
        v27 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v27)
        {
          goto LABEL_34;
        }

        v2[2] = v36;
        goto LABEL_5;
      }
    }

    v2 = v41;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v12);
    if (v19)
    {
      v20 = v18;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        specialized _NativeDictionary.copy()();
      }

      specialized _NativeDictionary._delete(at:)(v20, v41);

      goto LABEL_5;
    }

    v9 = v8;
  }

  while (v6);
LABEL_7:
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      v1 = v40;
      goto LABEL_29;
    }

    v6 = *(v3 + 64 + 8 * v8);
    ++v9;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void DOCCopyOperation.doc_targetFilenamesByNode.setter(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = a1;

  if (!a1)
  {
    v43.receiver = v1;
    v43.super_class = type metadata accessor for DOCCopyOperation();
    objc_msgSendSuper2(&v43, sel_setTargetFilenamesByItem_, 0);
    return;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  while (v6)
  {
LABEL_13:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v14 = *(*(a1 + 48) + ((v8 << 9) | (8 * v13)));
    swift_getObjectType();

    v15 = DOCNode.fpfs_syncFetchFPItem()();
    if (!v15)
    {
      goto LABEL_7;
    }

    v16 = v15;
    if (*(a1 + 16) && (v17 = specialized __RawDictionaryStorage.find<A>(_:)(v14), (v18 & 1) != 0))
    {
      v19 = (*(a1 + 56) + 16 * v17);
      v38 = *v19;
      v39 = v19[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v9;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v22 = v9[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_33;
      }

      if (v9[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v9 = v42;
          if ((v21 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v37 = v20;
          v30 = v21;
          specialized _NativeDictionary.copy()();
          v31 = v30;
          v20 = v37;
          v9 = v42;
          if ((v31 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

LABEL_26:
        v29 = (v9[7] + 16 * v20);
        *v29 = v38;
        v29[1] = v39;
      }

      else
      {
        v26 = v21;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_35;
        }

        v28 = v26;
        v9 = v42;
        if (v28)
        {
          goto LABEL_26;
        }

LABEL_28:
        v9[(v20 >> 6) + 8] |= 1 << v20;
        *(v9[6] + 8 * v20) = v16;
        v32 = (v9[7] + 16 * v20);
        *v32 = v38;
        v32[1] = v39;

        v33 = v9[2];
        v24 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v24)
        {
          goto LABEL_34;
        }

        v9[2] = v34;
      }
    }

    else
    {
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if (v11)
      {
        v40 = v10;
        v42 = v9;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          specialized _NativeDictionary.copy()();
          v9 = v42;
        }

        specialized _NativeDictionary._delete(at:)(v40, v9);
      }

LABEL_7:
    }
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
      lazy protocol witness table accessor for type UICollectionViewCell and conformance NSObject(&lazy protocol witness table cache variable for type FPItem and conformance NSObject, &lazy cache variable for type metadata for FPItem);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v41.receiver = v2;
      v41.super_class = type metadata accessor for DOCCopyOperation();
      objc_msgSendSuper2(&v41, sel_setTargetFilenamesByItem_, isa);

      return;
    }

    v6 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v6)
    {
      v8 = v12;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void (*DOCCopyOperation.doc_targetFilenamesByNode.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode);
  a1[1] = v1;

  return DOCCopyOperation.doc_targetFilenamesByNode.modify;
}

void DOCCopyOperation.doc_targetFilenamesByNode.modify(uint64_t *a1, char a2)
{
  if (a2)
  {

    DOCCopyOperation.doc_targetFilenamesByNode.setter(v2);
  }

  else
  {
    DOCCopyOperation.doc_targetFilenamesByNode.setter(*a1);
  }
}

uint64_t DOCCopyOperation.engineTypeUsed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_engineTypeUsed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCCopyOperation.isDuplication.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCCopyOperation.isDuplication.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *DOCCopyOperation.init(urls:destinationFolder:undoManager:)(uint64_t a1, void *a2, void *a3)
{
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_allowDSCopyEngine] = 1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsTransferResults] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceNodeToURL] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceURLToNode] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsItemIDToPlaceholderID] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_engineTypeUsed] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem] = a2;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager] = a3;
  type metadata accessor for URL();
  v6 = a2;
  v7 = a3;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v13.receiver = v3;
  v13.super_class = type metadata accessor for DOCCopyOperation();
  v9 = objc_msgSendSuper2(&v13, sel_initWithURLs_destinationFolder_, isa, v6);

  v10 = *((*MEMORY[0x277D85000] & *v9) + 0x1A0);
  v11 = v9;
  v10();

  return v11;
}

void *DOCCopyOperation.init(items:destinationFolder:isDuplication:undoManager:)(uint64_t a1, void *a2, char a3, void *a4)
{
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_allowDSCopyEngine] = 1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsTransferResults] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceNodeToURL] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceURLToNode] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsItemIDToPlaceholderID] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = 0;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_engineTypeUsed] = 0;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems] = a1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem] = a2;
  swift_beginAccess();
  v4[v8] = a3;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager] = a4;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

  v9 = a2;
  v10 = a4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16.receiver = v4;
  v16.super_class = type metadata accessor for DOCCopyOperation();
  v12 = objc_msgSendSuper2(&v16, sel_initWithItems_destinationFolder_, isa, v9);

  v13 = *((*MEMORY[0x277D85000] & *v12) + 0x1A0);
  v14 = v12;
  v13();

  return v14;
}

Swift::Void __swiftcall DOCCopyOperation.actionMain()()
{
  if (DOCCopyOperation.shouldUseDSCopyEngine()())
  {
    v1 = DOCCreateDSNSHelperContext();
    if (v1)
    {
      v2 = v1;
      v3 = type metadata accessor for DOCDSCopyEngineXPCConnection();
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      v7[3] = v3;
      v7[4] = &protocol witness table for DOCDSCopyEngineXPCConnection;
      v7[0] = v4;
      outlined init with take of DOCDSCopyEngineConnection(v7, v8);
      v5 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      specialized DOCCopyOperation.copyWithDSCopyEngine(_:)(*v5, v0);
      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  else
  {
    v6.receiver = v0;
    v6.super_class = type metadata accessor for DOCCopyOperation();
    objc_msgSendSuper2(&v6, sel_actionMain);
  }
}

uint64_t DOCCopyOperation.actionNameForUndoing.getter()
{
  if (*(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs) + 16))
  {
    return (*((*MEMORY[0x277D85000] & *v0) + 0x1B0))();
  }

  else
  {
    return (*((*MEMORY[0x277D85000] & *v0) + 0x1A8))();
  }
}

void *DOCCopyOperation.operationForRedoing()()
{
  if (*(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs) + 16))
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem);
  v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x160))();
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager);
  v6 = type metadata accessor for DOCCopyOperation();
  v7 = objc_allocWithZone(v6);
  v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_allowDSCopyEngine] = 1;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsTransferResults] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceNodeToURL] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceURLToNode] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsItemIDToPlaceholderID] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = 0;
  v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_engineTypeUsed] = 0;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication;
  v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication] = 0;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems] = v2;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem] = v3;
  swift_beginAccess();
  v7[v8] = v4 & 1;
  *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager] = v5;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);

  v9 = v3;
  v10 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v15.receiver = v7;
  v15.super_class = v6;
  v12 = objc_msgSendSuper2(&v15, sel_initWithItems_destinationFolder_, isa, v9);

  v13 = *((*MEMORY[0x277D85000] & *v12) + 0x1A0);
  v14 = v12;
  v13();

  return v12;
}

uint64_t DOCCopyOperation.operationForUndoing()()
{
  result = DOCCopyOperation.doc_transferResults.getter();
  if (!result)
  {
    return result;
  }

  v2 = *(result + 16);
  if (!v2)
  {

    return 0;
  }

  v3 = result;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5(*(result + 16), 0);
  v5 = specialized Sequence._copySequenceContents(initializing:)(&v26, (v4 + 32), v2, v3);
  result = outlined consume of Set<UITouch>.Iterator._Variant();
  if (v5 != v2)
  {
    __break(1u);
    return result;
  }

  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v4);

  if (!All)
  {
    return 0;
  }

  if (*(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs] + 16))
  {
    v7 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager];
    v8 = type metadata accessor for DOCDeleteOperation();
    v9 = objc_allocWithZone(v8);
    *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = All;
    *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = 0;
    *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = v7;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v10 = v7;

    isa = Array._bridgeToObjectiveC()().super.isa;

    v24.receiver = v9;
    v24.super_class = v8;
    v12 = objc_msgSendSuper2(&v24, sel_initWithItems_, isa);

    v13 = *((*MEMORY[0x277D85000] & *v12) + 0x90);
    v14 = v12;
    v13();
  }

  else
  {
    v15 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager];
    v16 = type metadata accessor for DOCDeleteOperation();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_items] = All;
    *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_originalOperation] = v0;
    *&v17[OBJC_IVAR____TtC26DocumentManagerExecutables18DOCDeleteOperation_undoManager] = v15;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
    v18 = v15;
    v19 = v0;

    v20 = v18;
    v21 = v19;
    v22 = Array._bridgeToObjectiveC()().super.isa;

    v25.receiver = v17;
    v25.super_class = v16;
    v12 = objc_msgSendSuper2(&v25, sel_initWithItems_, v22);

    v23 = *((*MEMORY[0x277D85000] & *v12) + 0x88);
    v14 = v12;
    v23();
  }

  return v12;
}

Swift::String_optional __swiftcall DOCCopyOperation.actionNameForUndoableDeleteUndoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems);
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_30:
    v33 = 0;
    v35 = 0;
    goto LABEL_31;
  }

  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_30;
  }

LABEL_3:
  v2 = _DocumentManagerBundle();
  if (!v2)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v4 = v2;
  v46._object = 0x8000000249BFFE70;
  v5._countAndFlagsBits = 0x1000000000000026;
  v5._object = 0x8000000249BFFE20;
  v6._object = 0x8000000249BFFE50;
  v46._countAndFlagsBits = 0xD00000000000003ALL;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0x1000000000000010;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v7, v4, v6, v46);

  v2 = _DocumentManagerBundle();
  if (!v2)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = v2;
  v47._object = 0x8000000249BFFDD0;
  v9._object = 0x8000000249BFFDA0;
  v47._countAndFlagsBits = 0xD000000000000040;
  v9._countAndFlagsBits = 0xD000000000000027;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v47);

  v2 = _DocumentManagerBundle();
  if (!v2)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v12 = v2;
  v48._object = 0x8000000249BFFF80;
  v13._countAndFlagsBits = 0x100000000000002BLL;
  v13._object = 0x8000000249BFFF30;
  v14._countAndFlagsBits = 0x1000000000000015;
  v14._object = 0x8000000249BFFF60;
  v48._countAndFlagsBits = 0xD00000000000003ELL;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v15, v12, v14, v48);

  v2 = _DocumentManagerBundle();
  if (!v2)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v16 = v2;
  v49._object = 0x8000000249BFFEE0;
  v17._countAndFlagsBits = 0xD00000000000002CLL;
  v17._object = 0x8000000249BFFEB0;
  v49._countAndFlagsBits = 0xD000000000000044;
  v18.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v18.value._object = 0xEB00000000656C62;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v18, v16, v19, v49);

  if (v1 >> 62)
  {
    v20 = __CocoaSet.count.getter();
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v20 = v2;
  }

  if (v2)
  {
    if ((v1 & 0xC000000000000001) == 0)
    {
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v21 = *(v1 + 32);
        goto LABEL_14;
      }

      __break(1u);
      goto LABEL_35;
    }
  }

  else
  {
    __break(1u);
  }

  v21 = MEMORY[0x24C1FC540](0, v1);
LABEL_14:
  v22 = v21;
  v23 = [v21 displayName];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v27 = *((*MEMORY[0x277D85000] & *v0) + 0x160);
  if (v27())
  {
    if (v20 == 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_249B9A480;
      *(v38 + 56) = MEMORY[0x277D837D0];
      *(v38 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v38 + 32) = v24;
      *(v38 + 40) = v26;
      v33 = static String.localizedStringWithFormat(_:_:)();
      v35 = v39;
      goto LABEL_28;
    }

    if (((v27)(v28) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    if (((v27)(v29) & 1) == 0)
    {
LABEL_21:

      if (((v27)(v36) & 1) == 0 && v20 == 1)
      {
        goto LABEL_23;
      }

      goto LABEL_26;
    }

    if (v20 == 1)
    {

      if (((v27)(v40) & 1) == 0)
      {
LABEL_23:

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_249B9A480;
        *(v37 + 56) = MEMORY[0x277D837D0];
        *(v37 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v37 + 32) = v24;
        *(v37 + 40) = v26;
LABEL_27:
        v33 = static String.localizedStringWithFormat(_:_:)();
        v35 = v44;
        goto LABEL_28;
      }

LABEL_26:

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
      v41 = swift_allocObject();
      v42 = MEMORY[0x277D83B88];
      *(v41 + 16) = xmmword_249B9A480;
      v43 = MEMORY[0x277D83C10];
      *(v41 + 56) = v42;
      *(v41 + 64) = v43;
      *(v41 + 32) = v20;
      goto LABEL_27;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D83B88];
  *(v30 + 16) = xmmword_249B9A480;
  v32 = MEMORY[0x277D83C10];
  *(v30 + 56) = v31;
  *(v30 + 64) = v32;
  *(v30 + 32) = v20;
  v33 = static String.localizedStringWithFormat(_:_:)();
  v35 = v34;
LABEL_28:

LABEL_31:
  v2 = v33;
  v3 = v35;
LABEL_39:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

Swift::String_optional __swiftcall DOCCopyOperation.actionNameForPermanentDeleteUndoing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs);
  if (*(v1 + 16))
  {
    v2 = _DocumentManagerBundle();
    if (v2)
    {
      v4 = v2;
      v17._object = 0x8000000249C00050;
      v5._object = 0x8000000249C00030;
      v17._countAndFlagsBits = 0xD00000000000003DLL;
      v5._countAndFlagsBits = 0xD00000000000001ELL;
      v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v6.value._object = 0xEB00000000656C62;
      v7._countAndFlagsBits = 0x656C69462077654ELL;
      v7._object = 0xE800000000000000;
      v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v17);

      v2 = _DocumentManagerBundle();
      if (v2)
      {
        v9 = v2;
        v18._object = 0x8000000249BFFFE0;
        v10._countAndFlagsBits = 0xD00000000000001FLL;
        v10._object = 0x8000000249BFFFC0;
        v18._countAndFlagsBits = 0xD000000000000045;
        v11.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v11.value._object = 0xEB00000000656C62;
        v12._countAndFlagsBits = 0x656C69462077654ELL;
        v12._object = 0xE900000000000073;
        v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v18);
        countAndFlagsBits = v13._countAndFlagsBits;
        object = v13._object;

        if (*(v1 + 16) == 1)
        {
          countAndFlagsBits = v8._countAndFlagsBits;
          object = v8._object;
        }

        goto LABEL_8;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

  countAndFlagsBits = 0;
  object = 0;
LABEL_8:
  v2 = countAndFlagsBits;
  v3 = object;
LABEL_11:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

id DOCCopyOperation.__allocating_init(items:destinationFolder:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithItems:isa destinationFolder:a2];

  return v6;
}

id DOCCopyOperation.__allocating_init(sourceURLs:destinationFolder:)(uint64_t a1, void *a2, SEL *a3)
{
  v6 = objc_allocWithZone(v3);
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v6 *a3];

  return v8;
}

id DOCCopyOperation.__allocating_init(items:destinationURL:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(v3);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem);
  isa = Array._bridgeToObjectiveC()().super.isa;

  URL._bridgeToObjectiveC()(v7);
  v9 = v8;
  v10 = [v5 initWithItems:isa destinationURL:v8];

  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 8))(a2, v11);
  return v10;
}

id DOCCopyOperation.__allocating_init(sourceURLsAndNames:destinationFolder:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  type metadata accessor for URL();
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type URL and conformance URL, 255, MEMORY[0x277CC9260]);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithSourceURLsAndNames:isa destinationFolder:a2];

  return v6;
}

id DOC_FICopyOperation.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables24DOCItemDateGroupCategoryO3key_10Foundation0E0V5valuetMd);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v8);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v44 = &v39 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v37 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v37;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v37 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v40 = -1 << *(a4 + 32);
    v41 = a1;
    v17 = 0;
    a1 = ((63 - v14) >> 6);
    v18 = 1;
    v42 = a3;
    while (v16)
    {
      v48 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v47 = v17;
      v22 = v21 | (v17 << 6);
      v23 = *(a4 + 56);
      v24 = a4;
      v25 = *(a4 + 48) + 24 * v22;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 16);
      v29 = type metadata accessor for Date();
      v30 = *(v29 - 8);
      v31 = v23 + *(v30 + 72) * v22;
      v32 = v45;
      (*(v30 + 16))(&v45[*(v46 + 48)], v31, v29);
      *v32 = v26;
      *(v32 + 1) = v27;
      v32[16] = v28;
      v33 = v32;
      v34 = v44;
      outlined init with take of (key: DOCItemDateGroupCategory, value: Date)(v33, v44);
      v35 = v48;
      outlined init with take of (key: DOCItemDateGroupCategory, value: Date)(v34, v48);
      if (v18 == v42)
      {
        outlined copy of DOCItemDateGroupCategory(v26, v27, v28);
        v14 = v40;
        a1 = v41;
        a4 = v24;
        v37 = v47;
        goto LABEL_25;
      }

      a2 = v35 + *(v43 + 72);
      outlined copy of DOCItemDateGroupCategory(v26, v27, v28);
      v36 = __OFADD__(v18++, 1);
      a4 = v24;
      v17 = v47;
      if (v36)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v17;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= a1)
      {
        break;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        v48 = a2;
        v17 = v20;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (a1 <= v17 + 1)
    {
      v38 = (v17 + 1);
    }

    else
    {
      v38 = a1;
    }

    v37 = v38 - 1;
    v14 = v40;
    a1 = v41;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = *(a4 + 48) + 24 * v15;
      v17 = *(*(a4 + 56) + 8 * v15);
      v18 = *(v16 + 16);
      *a2 = *v16;
      *(a2 + 16) = v18;
      *(a2 + 24) = v17;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 32;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
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
LABEL_25:
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
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v22 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v19 = *(*(a4 + 48) + 16 * v17);
      v9 &= v9 - 1;
      *v11 = v19;
      *(v11 + 16) = v18;
      if (v14 == v10)
      {
        outlined copy of DOCItemSharedByGroupCategory(v19, *(&v19 + 1));
        swift_unknownObjectRetain();
        goto LABEL_23;
      }

      v11 += 24;
      outlined copy of DOCItemSharedByGroupCategory(v19, *(&v19 + 1));
      swift_unknownObjectRetain();
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
        goto LABEL_28;
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
    if (v13 <= v12 + 1)
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = v13;
    }

    v12 = v21 - 1;
    v10 = result;
LABEL_23:
    v7 = v22;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

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
      v17 = *(a4 + 48) + 48 * (__clz(__rbit64(v9)) | (v12 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      v9 &= v9 - 1;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      *v11 = *v17;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      *(v11 + 24) = v21;
      *(v11 + 32) = v22;
      *(v11 + 40) = v23;
      if (v14 == v10)
      {
        outlined copy of DOCSidebarItem(v18, v19, v20, v21, v22, v23);
        goto LABEL_24;
      }

      v11 += 48;
      outlined copy of DOCSidebarItem(v18, v19, v20, v21, v22, v23);
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
      v25 = v12 + 1;
    }

    else
    {
      v25 = (63 - v7) >> 6;
    }

    v12 = v25 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}