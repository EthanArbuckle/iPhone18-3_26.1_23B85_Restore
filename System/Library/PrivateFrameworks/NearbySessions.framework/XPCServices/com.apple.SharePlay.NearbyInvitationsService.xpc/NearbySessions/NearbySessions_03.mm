uint64_t closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(char a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v5 = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);
  }

  else
  {
    v5 = closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t PseudonymProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 32));
  v1 = *(v0 + 72);

  return v0;
}

uint64_t PseudonymProvider.__deallocating_deinit()
{
  PseudonymProvider.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = type metadata accessor for ContinuousClock();
  v7 = lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, 255, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, 255, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = specialized Clock.sleep(for:tolerance:);
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t specialized static Pseudonym.markUsed(handle:for:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *(a7 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(a1);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v18, v19);
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  v20 = static Pseudonym.provider;
  result = (*(a8 + 8))(a7, a8);
  if (v22)
  {
    (*(*v20 + 176))(a1, a2, result, v22, a4, a5);

    return (*(v14 + 8))(v17, a7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized Pseudonym.__allocating_init(service:pseudonym:configuration:)(uint64_t *a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v8 = objc_allocWithZone(IDSURI);
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 initWithPrefixedURI:v9];

  if (v10)
  {
    v11 = a1[3];
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v11);
    v13 = (*(v12 + 24))(v10, v11, v12);
    if (v13)
    {
      v14 = v13;

      outlined init with copy of PseudonymProtocol(a1, v23);
      type metadata accessor for Pseudonym();
      a3 = swift_allocObject();
      Pseudonym.init(service:pseudonym:configuration:)(v23, v14, a4);

      goto LABEL_12;
    }

    v25 = *a4;
    outlined destroy of String(&v25);
    v24 = a4[2];
    outlined destroy of Any?(&v24, &_sSSSgMd, &_sSSSgMR);
  }

  else
  {
    v27 = *a4;
    outlined destroy of String(&v27);
    v26 = a4[2];
    outlined destroy of Any?(&v26, &_sSSSgMd, &_sSSSgMR);
  }

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.group);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v23[0] = v19;
    *v18 = 136315138;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v23);

    *(v18 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v16, v17, "Couldn't find IDSPseudonym for %s on account", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
  }

  lazy protocol witness table accessor for type Pseudonym.Errors and conformance Pseudonym.Errors();
  swift_allocError();
  *v21 = 0;
  swift_willThrow();
LABEL_12:
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return a3;
}

uint64_t specialized Pseudonym.__allocating_init(service:configuration:)(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v3 = type metadata accessor for Date();
  v2[32] = v3;
  v4 = *(v3 - 8);
  v2[33] = v4;
  v5 = *(v4 + 64) + 15;
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return _swift_task_switch(specialized Pseudonym.__allocating_init(service:configuration:), 0, 0);
}

uint64_t specialized Pseudonym.__allocating_init(service:configuration:)()
{
  v104 = v0;
  countAndFlagsBits = v0[15]._countAndFlagsBits;
  v2 = countAndFlagsBits[3];
  v3 = countAndFlagsBits[4];
  __swift_project_boxed_opaque_existential_1(countAndFlagsBits, v2);
  result = (*(v3 + 16))(v2, v3);
  if (!result)
  {
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v5 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
    lazy protocol witness table accessor for type IDSAccount and conformance NSObject();
    Set.Iterator.init(_cocoa:)();
    v5 = v0[1]._countAndFlagsBits;
    object = v0[1]._object;
    v7 = v0[2]._countAndFlagsBits;
    v8 = v0[2]._object;
    v9 = v0[3]._countAndFlagsBits;
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(result + 32);
    object = result + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = (v12 & *(result + 56));
  }

  v99 = 0;
  v13 = 0;
  v14 = (v7 + 64) >> 6;
LABEL_9:
  v0[18]._countAndFlagsBits = v13;
  while ((v5 & 0x8000000000000000) == 0)
  {
    v15 = v8;
    v16 = v9;
    if (!v9)
    {
      while (1)
      {
        v8 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v8 >= v14)
        {
          goto LABEL_41;
        }

        v16 = *(object + 8 * v8);
        ++v15;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_65;
    }

LABEL_15:
    v9 = ((v16 - 1) & v16);
    v17 = *(*(v5 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_41;
    }

LABEL_19:
    if (!v13)
    {
      v19 = v17;
      v20 = [v17 aliasStrings];
      if (!v20)
      {

        v99 = 0;
        v13 = 0;
        goto LABEL_9;
      }

      v100 = v9;
      v101 = v0;
      v94 = countAndFlagsBits;
      v9 = v20;
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v21;
      v23 = *(v21 + 16);
      if (v23)
      {
        v0 = 0;
        v95 = -v23;
        v24 = v22 + 40;
        v25 = &_swiftEmptyArrayStorage;
        v97 = v14;
        v98 = v5;
        v96 = v22;
        v92 = v22 + 40;
LABEL_24:
        v93 = v25;
        v26 = (v24 + 16 * v0);
        v0 = (v0 + 1);
        while (&v0[-1]._object + 7 < *(v22 + 16))
        {
          v27 = *(v26 - 1);
          v28 = *v26;
          v101[11]._countAndFlagsBits = v27;
          v101[11]._object = v28;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = String.lowercased()();

          v101[12] = v29;
          lazy protocol witness table accessor for type String and conformance String();
          v30 = StringProtocol.contains<A>(_:)();

          if ((v30 & 1) == 0)
          {
            v31 = v93;
            v103[0] = v93;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v93 + 16) + 1, 1);
              v31 = v103[0];
            }

            v22 = v96;
            v14 = v97;
            v32 = v31;
            v34 = *(v31 + 16);
            v33 = *(v31 + 24);
            v9 = v100;
            if (v34 >= v33 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
              v22 = v96;
              v9 = v100;
              v32 = v103[0];
            }

            *(v32 + 16) = v34 + 1;
            v35 = v32 + 16 * v34;
            *(v35 + 32) = v27;
            *(v35 + 40) = v28;
            v5 = v98;
            v25 = v32;
            v24 = v92;
            if ((v0 + v95))
            {
              goto LABEL_24;
            }

            goto LABEL_37;
          }

          v0 = (v0 + 1);
          v22 = v96;
          v26 += 2;
          v14 = v97;
          v5 = v98;
          v9 = v100;
          if ((v0 + v95) == 1)
          {
            v25 = v93;
            goto LABEL_37;
          }
        }

LABEL_65:
        __break(1u);
LABEL_66:
        swift_once();
LABEL_45:
        v59 = type metadata accessor for Logger();
        v0[20]._countAndFlagsBits = __swift_project_value_buffer(v59, static Log.group);
        v60 = v5;
        v61 = v9;
        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v103[0] = v66;
          *v64 = 138412546;
          *(v64 + 4) = v60;
          *v65 = v5;
          *(v64 + 12) = 2080;
          v0[13]._object = v61;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPseudonymProperties, IDSPseudonymProperties_ptr);
          v67 = v60;
          v68 = v61;
          v69 = String.init<A>(reflecting:)();
          v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v70, v103);

          *(v64 + 14) = v71;
          _os_log_impl(&_mh_execute_header, v62, v63, "Attempting to provision pseudonym with URI: %@ and properties: %s", v64, 0x16u);
          outlined destroy of Any?(v65, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

          __swift_destroy_boxed_opaque_existential_0Tm(v66);
        }

        v72 = v94[3];
        v73 = v94[4];
        __swift_project_boxed_opaque_existential_1(v0[15]._countAndFlagsBits, v72);
        v74 = *(v73 + 48);
        v102 = (v74 + *v74);
        v75 = v74[1];
        v76 = swift_task_alloc();
        v0[20]._object = v76;
        *v76 = v0;
        v76[1] = specialized Pseudonym.__allocating_init(service:configuration:);

        return (v102)(v60, v61, v72, v73);
      }

      v25 = &_swiftEmptyArrayStorage;
      v9 = v100;
LABEL_37:

      if (v25[2])
      {
        v13 = v25[5];
        v99 = v25[4];
      }

      else
      {

        v99 = 0;
        v13 = 0;
      }

      v0 = v101;
      countAndFlagsBits = v94;
      goto LABEL_9;
    }
  }

  v18 = __CocoaSet.Iterator.next()();
  if (v18)
  {
    v0[14]._object = v18;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSAccount, IDSAccount_ptr);
    swift_dynamicCast();
    v17 = v0[14]._countAndFlagsBits;
    if (v17)
    {
      goto LABEL_19;
    }
  }

LABEL_41:
  outlined consume of Set<IDSAccount>.Iterator._Variant();
  if (v13)
  {
    v36 = objc_allocWithZone(IDSURI);
    v37 = String._bridgeToObjectiveC()();
    v5 = [v36 initWithUnprefixedURI:v37];
    v0[18]._object = v5;

    if (v5)
    {
      v39 = v0[17]._countAndFlagsBits;
      v38 = v0[17]._object;
      v40 = v0;
      v41 = v0[16]._object;
      v42 = countAndFlagsBits;
      v44 = v40[15]._object;
      v43 = v40[16]._countAndFlagsBits;
      v45 = v40[15]._countAndFlagsBits;
      Date.init()();
      v46 = v44[2];
      Date.addingTimeInterval(_:)();
      v47 = v41[1];
      v47(v39, v43);
      Date.timeIntervalSince1970.getter();
      v49 = v48;
      v47(v38, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_1000C8E90;
      v51 = v42[3];
      v52 = v42[4];
      v94 = v42;
      __swift_project_boxed_opaque_existential_1(v45, v51);
      result = (*(v52 + 8))(v51, v52);
      if (!v53)
      {
        goto LABEL_68;
      }

      v54 = v40[15]._object;
      v55 = *v54;
      v40[19]._countAndFlagsBits = v54[1];
      *(v50 + 32) = result;
      *(v50 + 40) = v53;
      *(v50 + 48) = 0xD000000000000032;
      *(v50 + 56) = 0x80000001000CDF50;
      *(v50 + 64) = 0xD000000000000034;
      *(v50 + 72) = 0x80000001000CE980;
      *(v50 + 80) = 0xD000000000000029;
      *(v50 + 88) = 0x80000001000CE9C0;
      v56 = objc_allocWithZone(IDSPseudonymProperties);
      v57 = String._bridgeToObjectiveC()();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v9 = [v56 initWithFeatureID:v57 scopeID:0 expiryEpoch:isa allowedServices:v49];
      v40[19]._object = v9;

      v0 = v40;
      if (one-time initialization token for group == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_66;
    }

    v82 = v0[15]._object;
    v0[8] = *v82;
    outlined destroy of String(&v0[8]);
    v0[9] = v82[2];
    outlined destroy of Any?(&v0[9], &_sSSSgMd, &_sSSSgMR);
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v83 = type metadata accessor for Logger();
    __swift_project_value_buffer(v83, static Log.group);

    v79 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v79, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v103[0] = v86;
      *v85 = 136315138;
      v87 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v13, v103);

      *(v85 + 4) = v87;
      _os_log_impl(&_mh_execute_header, v79, v84, "Failed to create an IDSURI from localMember: %s", v85, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v86);

LABEL_58:

      goto LABEL_59;
    }
  }

  else
  {
    v77 = v0[15]._object;
    v0[6] = *v77;
    outlined destroy of String(&v0[6]);
    v0[7] = v77[2];
    outlined destroy of Any?(&v0[7], &_sSSSgMd, &_sSSSgMR);
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v78 = type metadata accessor for Logger();
    __swift_project_value_buffer(v78, static Log.group);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Failed to find a localMember", v81, 2u);
      goto LABEL_58;
    }

LABEL_59:
  }

  lazy protocol witness table accessor for type Pseudonym.Errors and conformance Pseudonym.Errors();
  swift_allocError();
  *v88 = 0;
  swift_willThrow();
  v90 = v0[17]._countAndFlagsBits;
  v89 = v0[17]._object;
  __swift_destroy_boxed_opaque_existential_0Tm(v0[15]._countAndFlagsBits);

  v91 = v0->_object;

  return v91();
}

{
  v46 = v0;
  v1 = *(v0 + 248);
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = one-time initialization token for provider;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 240);
    v6 = static Pseudonym.provider;
    v7 = [*(v0 + 336) URI];
    v8 = [v7 prefixedURI];

    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    v12 = v5[3];
    v13 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v12);
    result = (*(v13 + 8))(v12, v13);
    if (!v15)
    {
      __break(1u);
      return result;
    }

    v16 = result;
    v17 = v15;
    v18 = *(v0 + 288);

    (*(*v6 + 168))(v9, v11, v16, v17, v3, v2);
  }

  else
  {
    v19 = *(v0 + 288);
  }

  v20 = *(v0 + 336);
  v21 = *(v0 + 320);

  v22 = v20;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = *(v0 + 336);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v45 = v27;
    *v26 = 136315138;
    *(v0 + 208) = v25;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for IDSPseudonym, IDSPseudonym_ptr);
    v28 = v25;
    v29 = String.init<A>(reflecting:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, &v45);

    *(v26 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "Provisioned pseudonym: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  v33 = *(v0 + 336);
  v32 = *(v0 + 344);
  v34 = *(v0 + 248);
  outlined init with copy of PseudonymProtocol(*(v0 + 240), v0 + 56);
  type metadata accessor for Pseudonym();
  v35 = swift_allocObject();
  Pseudonym.init(service:pseudonym:configuration:)((v0 + 56), v33, v34);
  v36 = *(v0 + 312);
  v37 = *(v0 + 296);
  if (v32)
  {

    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 240));

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);
    v43 = *(v0 + 240);

    __swift_destroy_boxed_opaque_existential_0Tm(v43);

    v44 = *(v0 + 8);

    return v44(v35);
  }
}

{
  v1 = *(v0 + 296);

  v2 = *(v0 + 344);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  __swift_destroy_boxed_opaque_existential_0Tm(*(v0 + 240));

  v5 = *(v0 + 8);

  return v5();
}

uint64_t specialized Pseudonym.__allocating_init(service:configuration:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 328);
  v5 = *(*v2 + 248);
  v10 = *v2;
  *(v3 + 336) = a1;
  *(v3 + 344) = v1;

  if (v1)
  {
    v6 = *(v3 + 304);
    v7 = *(v3 + 288);

    *(v3 + 160) = *(v5 + 32);
    outlined destroy of Any?(v3 + 160, &_sSSSgMd, &_sSSSgMR);
    v8 = specialized Pseudonym.__allocating_init(service:configuration:);
  }

  else
  {
    v8 = specialized Pseudonym.__allocating_init(service:configuration:);
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t specialized static Pseudonym.reusable(for:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return _swift_task_switch(specialized static Pseudonym.reusable(for:configuration:), 0, 0);
}

uint64_t specialized static Pseudonym.reusable(for:configuration:)()
{
  v30 = v0;
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  (*(*static Pseudonym.provider + 160))(*(v0 + 224), *(v0 + 232));
  v1 = *(v0 + 216);
  if (v1)
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 232);
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.group);
    *(v0 + 88) = *v2;
    *(v0 + 104) = v2[2];

    outlined init with copy of String(v0 + 88, v0 + 184);
    outlined init with copy of (String, Any)(v0 + 104, v0 + 200, &_sSSSgMd, &_sSSSgMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();

    outlined destroy of String(v0 + 88);
    outlined destroy of Any?(v0 + 104, &_sSSSgMd, &_sSSSgMR);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 232);
      v7 = swift_slowAlloc();
      v29[0] = swift_slowAlloc();
      *v7 = 136315394;

      v8 = Pseudonym.description.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v29);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2080;
      v12 = Pseudonym.Configuration.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v29);

      *(v7 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v4, v5, "Found reusable pseudonym: %s for configuration: %s", v7, 0x16u);
      swift_arrayDestroy();
    }

    v15 = *(v0 + 8);

    return v15(v1);
  }

  else
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 232);
    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.group);
    *(v0 + 56) = *v17;
    *(v0 + 72) = v17[2];
    outlined init with copy of String(v0 + 56, v0 + 120);
    outlined init with copy of (String, Any)(v0 + 72, v0 + 136, &_sSSSgMd, &_sSSSgMR);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    outlined destroy of String(v0 + 56);
    outlined destroy of Any?(v0 + 72, &_sSSSgMd, &_sSSSgMR);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = *(v0 + 232);
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29[0] = v23;
      *v22 = 136315138;
      v24 = Pseudonym.Configuration.description.getter();
      v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, v29);

      *(v22 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "No pseudonym available for reuse for configuration: %s - Creating new one", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
    }

    outlined init with copy of PseudonymProtocol(*(v0 + 224), v0 + 16);
    outlined init with copy of String(v0 + 56, v0 + 152);
    outlined init with copy of (String, Any)(v0 + 72, v0 + 168, &_sSSSgMd, &_sSSSgMR);
    v27 = swift_task_alloc();
    *(v0 + 240) = v27;
    *v27 = v0;
    v27[1] = specialized static Pseudonym.reusable(for:configuration:);
    v28 = *(v0 + 232);

    return specialized Pseudonym.__allocating_init(service:configuration:)(v0 + 16, v28);
  }
}

{
  v1 = *(v0 + 248);
  return (*(v0 + 8))();
}

uint64_t specialized static Pseudonym.reusable(for:configuration:)(uint64_t a1)
{
  v4 = *(*v2 + 240);
  v5 = *v2;
  *(v5 + 248) = v1;

  if (v1)
  {

    return _swift_task_switch(specialized static Pseudonym.reusable(for:configuration:), 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t specialized static Pseudonym.existing(for:configuration:)(uint64_t a1, __int128 *a2)
{
  if (one-time initialization token for provider != -1)
  {
    swift_once();
  }

  (*(*static Pseudonym.provider + 160))(v34, a1, a2);
  if (v2)
  {
    return v3;
  }

  v3 = v34[0];
  if (v34[0])
  {
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.group);
    v7 = *a2;
    v37 = a2[2];
    v38 = v7;

    outlined init with copy of String(&v38, v34);
    outlined init with copy of (String, Any)(&v37, v34, &_sSSSgMd, &_sSSSgMR);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    outlined destroy of String(&v38);
    outlined destroy of Any?(&v37, &_sSSSgMd, &_sSSSgMR);
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v10 = 136315394;

      v11 = Pseudonym.description.getter();
      v13 = v12;

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v34);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2080;
      v15 = Pseudonym.Configuration.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v34);

      *(v10 + 14) = v17;
      _os_log_impl(&_mh_execute_header, v8, v9, "Found reusable pseudonym: %s for configuration: %s", v10, 0x16u);
      swift_arrayDestroy();
    }

    return v3;
  }

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.group);
  outlined init with copy of PseudonymProtocol(a1, v34);
  v40 = *a2;
  v39 = a2[2];
  outlined init with copy of String(&v40, v33);
  outlined init with copy of (String, Any)(&v39, v33, &_sSSSgMd, &_sSSSgMR);
  v3 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v3, v20))
  {
    outlined destroy of String(&v40);
    outlined destroy of Any?(&v39, &_sSSSgMd, &_sSSSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    goto LABEL_17;
  }

  v21 = swift_slowAlloc();
  v33[0] = swift_slowAlloc();
  *v21 = 136315394;
  v22 = v35;
  v23 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v24 = (*(v23 + 8))(v22, v23);
  if (v25)
  {
    v26 = v24;
    v27 = v25;
    outlined destroy of String(&v40);
    outlined destroy of Any?(&v39, &_sSSSgMd, &_sSSSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v27, v33);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2080;
    v29 = Pseudonym.Configuration.description.getter();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v33);

    *(v21 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v3, v20, "No existing pseudonym for service %s configuration: %s", v21, 0x16u);
    swift_arrayDestroy();

LABEL_17:
    lazy protocol witness table accessor for type Pseudonym.Errors and conformance Pseudonym.Errors();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
    return v3;
  }

  outlined destroy of String(&v40);
  result = outlined destroy of Any?(&v39, &_sSSSgMd, &_sSSSgMR);
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in Pseudonym.init(service:pseudonym:configuration:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Pseudonym.init(service:pseudonym:configuration:)(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t partial apply for closure #1 in Pseudonym.refreshPseudonym()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[12];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in Pseudonym.refreshPseudonym()(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t partial apply for closure #1 in Pseudonym.deinit(uint64_t a1)
{
  v14 = *(v1 + 24);
  v15 = *(v1 + 16);
  v4 = *(v1 + 40);
  v13 = *(v1 + 32);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v8 = *(v1 + 64);
  v7 = *(v1 + 72);
  v9 = *(v1 + 80);
  v10 = *(v1 + 128);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Pseudonym.deinit(a1, v15, v14, v13, v4, v5, v6, v8);
}

void partial apply for closure #1 in UserDefaultsPseudonymStorage.withStorage(key:serviceIdentifier:reuseIdentifier:block:)()
{
  partial apply for closure #1 in UserDefaultsPseudonymStorage.withStorage(key:serviceIdentifier:reuseIdentifier:block:)();
}

{
  v1 = *(v0 + 80);
  closure #1 in UserDefaultsPseudonymStorage.withStorage(key:serviceIdentifier:reuseIdentifier:block:)(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
}

unint64_t lazy protocol witness table accessor for type Pseudonym.Errors and conformance Pseudonym.Errors()
{
  result = lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors;
  if (!lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors;
  if (!lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Pseudonym.Errors and conformance Pseudonym.Errors);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for Pseudonym(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type Pseudonym and conformance Pseudonym, a2, type metadata accessor for Pseudonym);
  *(a1 + 8) = result;
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

uint64_t getEnumTagSinglePayload for Pseudonym.Configuration(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Pseudonym.Configuration(uint64_t result, int a2, int a3)
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

uint64_t partial apply for closure #1 in UserDefaultsPseudonymStorage.getPendingRevoke(serviceIdentifier:reuseIdentifier:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *v2;
  *v2 = *a1;
}

uint64_t partial apply for closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(uint64_t a1)
{
  v15 = v1[2];
  v13 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v9 = v1[8];
  v8 = v1[9];
  v10 = v1[15];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #1 in PseudonymProvider.cleanupIfNeeded(for:reuseIdentifier:)(a1, v15, v13, v4, v5, v6, v7, v9);
}

uint64_t specialized $defer #1 () in closure #1 in Pseudonym.deinit(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  if (a2)
  {
    v9 = result;
    if (one-time initialization token for group != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.group);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v18);
      *(v13 + 12) = 2080;
      *(v13 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, a2, &v18);
      _os_log_impl(&_mh_execute_header, v11, v12, "Marking reusable pseudonym %s as revoked with reuse identifier %s", v13, 0x16u);
      swift_arrayDestroy();
    }

    if (one-time initialization token for provider != -1)
    {
      swift_once();
    }

    v14 = static Pseudonym.provider;
    v15 = a5[3];
    v16 = a5[4];
    __swift_project_boxed_opaque_existential_1(a5, v15);
    result = (*(v16 + 8))(v15, v16);
    if (v17)
    {
      (*(*v14 + 184))(a3, a4, result, v17, v9, a2);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = *(i - 1) == a2 && *i == a3;
    if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    if (v3 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  result = specialized Collection.firstIndex(where:)(*a1, a2, a3);
  v9 = result;
  if (v3)
  {
    return v9;
  }

  if (v8)
  {
    return *(v6 + 16);
  }

  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v11 = *(v6 + 16);
    if (v10 == v11)
    {
      return v9;
    }

    v12 = 16 * result;
    while (v10 < v11)
    {
      v15 = *(v6 + v12 + 48);
      v16 = *(v6 + v12 + 56);
      if (v15 != a2 || v16 != a3)
      {
        v18 = *(v6 + v12 + 48);
        v19 = *(v6 + v12 + 56);
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          if (v10 != v9)
          {
            if (v9 >= v11)
            {
              goto LABEL_24;
            }

            v20 = (v6 + 32 + 16 * v9);
            v21 = v20[1];
            v24 = *v20;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
            }

            v22 = v6 + 16 * v9;
            v23 = *(v22 + 40);
            *(v22 + 32) = v15;
            *(v22 + 40) = v16;

            if (v10 >= *(v6 + 16))
            {
              goto LABEL_25;
            }

            v13 = v6 + v12;
            v14 = *(v6 + v12 + 56);
            *(v13 + 48) = v24;
            *(v13 + 56) = v21;

            *a1 = v6;
          }

          ++v9;
        }
      }

      ++v10;
      v11 = *(v6 + 16);
      v12 += 16;
      if (v10 == v11)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
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

uint64_t NearbyInvitationScanner.delegate.getter()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 40);
  return result;
}

uint64_t NearbyInvitationScanner.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NearbyInvitationScanner.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return NearbyInvitationScanner.delegate.modify;
}

void NearbyInvitationScanner.delegate.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t NearbyInvitationScanner.browser.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
}

uint64_t NearbyInvitationScanner.browser.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

uint64_t NearbyInvitationScanner.scannerID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NearbyInvitationScanner.connections.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyInvitationScanner.connections.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyInvitationScanner.connections.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t NearbyInvitationScanner.$connections.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyInvitationScanner.$connections.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NearbyInvitationScanner.$connections.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMd, &_s7Combine9PublishedV9PublisherVySay7Network12NWConnectionCG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

char *NearbyInvitationScanner.__allocating_init(scannerID:configuration:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v13 = specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(a1, a2, a3, v11, ObjectType, a4);
  swift_unknownObjectRelease();
  return v13;
}

char *NearbyInvitationScanner.init(scannerID:configuration:delegate:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(a1, a2, a3, v4, ObjectType, a4);
  swift_unknownObjectRelease();
  return v10;
}

Swift::Void __swiftcall NearbyInvitationScanner.scan()()
{
  v1 = type metadata accessor for NWBrowser.Descriptor();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = (&v44 - v6);
  v8 = type metadata accessor for NWBrowser.Invitation.Scope();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  type metadata accessor for NWParameters();
  specialized static NearbyInvitationAdvertiser.createParameters(isBrowsing:)(1);
  v16 = NWParameters.__allocating_init(_:)();
  v45 = v0;
  v17 = *(v0 + 24);
  v18 = NearbyInvitationParameters.browserType.getter();
  if (v18 >= 3)
  {
    LODWORD(v53) = v18;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    (*(v9 + 104))(v13, **(&off_1000EB320 + v18), v8);
    v46 = v9;
    v19 = *(v9 + 32);
    v50 = v8;
    v19(v15, v13, v8);
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS4name_7Network9NWBrowserC10InvitationV10invitationtMd, &_sSS4name_7Network9NWBrowserC10InvitationV10invitationtMR) + 48);
    *v7 = NearbyInvitationParameters.serviceName.getter();
    v7[1] = v21;
    v49 = v15;
    static NWBrowser.Invitation.wrangler(scope:)();
    (*(v2 + 104))(v7, enum case for NWBrowser.Descriptor.applicationServiceWithInvitation(_:), v1);
    v47 = v2;
    v22 = *(v2 + 16);
    v51 = v1;
    v22(v48, v7, v1);
    v23 = type metadata accessor for NWBrowser();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();

    v48 = v16;
    v26 = NWBrowser.init(for:using:)();
    v27 = v45;
    v28 = *(*v45 + 160);

    v28(v29);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    *(v31 + 16) = v30;
    *(v31 + 24) = v26;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(partial apply for closure #1 in NearbyInvitationScanner.scan());
    NWBrowser.stateUpdateHandler.setter();

    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    *(v33 + 24) = v26;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(partial apply for closure #2 in NearbyInvitationScanner.scan());
    NWBrowser.browseResultsChangedHandler.setter();

    v34 = *(v27 + 16);
    NWBrowser.start(queue:)();
    v35 = v7;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Log.client);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v52 = v26;
      v53 = v40;
      *v39 = 136315138;

      v41 = String.init<A>(reflecting:)();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v53);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "*** NearbyInvitationScanner new browser, %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
    }

    (*(v47 + 8))(v35, v51);
    (*(v46 + 8))(v49, v50);
  }
}

uint64_t closure #1 in NearbyInvitationScanner.scan()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v76 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC5StateOSgMd, &_s7Network9NWBrowserC5StateOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v73 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v72 = &v68 - v8;
  v9 = type metadata accessor for NWError();
  v77 = *(v9 - 8);
  isa = v77[8].isa;
  v11 = __chkstk_darwin(v9);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v68 - v14;
  v16 = type metadata accessor for NWBrowser.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v68 - v23;
  v25 = __chkstk_darwin(v22);
  v74 = &v68 - v26;
  __chkstk_darwin(v25);
  v28 = &v68 - v27;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v71 = v21;
    v75 = result;
    v30 = a1;
    v31 = a1;
    v32 = *(v17 + 16);
    v32(v28, v31, v16);
    v33 = (*(v17 + 88))(v28, v16);
    if (v33 == enum case for NWBrowser.State.failed(_:))
    {
      (*(v17 + 96))(v28, v16);
      v34 = v77;
      (v77[4].isa)(v15, v28, v9);
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Log.client);
      v36 = v34[2].isa;
      v36(v13, v15, v9);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NWError and conformance NWError, &type metadata accessor for NWError);
        swift_allocError();
        v36(v41, v13, v9);
        v42 = _swift_stdlib_bridgeErrorToNSError();
        v43 = v77[1].isa;
        (v43)(v13, v9);
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&_mh_execute_header, v37, v38, "*** NearbyInvitationScanner failed with error = %@", v39, 0xCu);
        outlined destroy of Any?(v40, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      }

      else
      {

        v43 = v34[1].isa;
        (v43)(v13, v9);
      }

      NWBrowser.cancel()();
      if ((*(*v75 + 128))())
      {
        v49 = v48;
        ObjectType = swift_getObjectType();
        (*(v49 + 24))(v15, ObjectType, v49);
        swift_unknownObjectRelease();
      }

      return (v43)(v15, v9);
    }

    else if (v33 == enum case for NWBrowser.State.ready(_:))
    {
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Log.client);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "*** NearbyInvitationScanner ready and posting results", v47, 2u);
      }
    }

    else
    {
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      __swift_project_value_buffer(v51, static Log.client);
      v52 = v74;
      v53 = v32;
      v32(v74, v30, v16);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.default.getter();
      v56 = os_log_type_enabled(v54, v55);
      v57 = v73;
      if (v56)
      {
        LODWORD(v76) = v55;
        v77 = v54;
        v58 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v78 = v69;
        v70 = v58;
        *v58 = 136315138;
        v59 = v72;
        v53(v72, v52, v16);
        (*(v17 + 56))(v59, 0, 1, v16);
        outlined init with copy of (String, Any)(v59, v57, &_s7Network9NWBrowserC5StateOSgMd, &_s7Network9NWBrowserC5StateOSgMR);
        if ((*(v17 + 48))(v57, 1, v16) == 1)
        {
          v60 = 0xE300000000000000;
          v61 = 7104878;
        }

        else
        {
          (*(v17 + 32))(v24, v57, v16);
          v53(v71, v24, v16);
          v61 = String.init<A>(reflecting:)();
          v60 = v63;
          (*(v17 + 8))(v24, v16);
        }

        outlined destroy of Any?(v59, &_s7Network9NWBrowserC5StateOSgMd, &_s7Network9NWBrowserC5StateOSgMR);
        v64 = *(v17 + 8);
        v64(v74, v16);
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v60, &v78);

        v66 = v70;
        *(v70 + 1) = v65;
        v67 = v77;
        _os_log_impl(&_mh_execute_header, v77, v76, "*** NearbyInvitationScanner state update: %s", v66, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v69);

        return (v64)(v28, v16);
      }

      else
      {

        v62 = *(v17 + 8);
        v62(v52, v16);
        return (v62)(v28, v16);
      }
    }
  }

  return result;
}

uint64_t closure #2 in NearbyInvitationScanner.scan()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a4;
  v27 = a2;
  v4 = type metadata accessor for NWBrowser.Result.Change();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v26 = result;
  if (result)
  {
    if (one-time initialization token for client != -1)
    {
LABEL_17:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Log.client);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      type metadata accessor for NWBrowser.Result();
      _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NWBrowser.Result and conformance NWBrowser.Result, &type metadata accessor for NWBrowser.Result);
      v15 = Set.description.getter();
      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "*** NearbyInvitationScanner results: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
    }

    v18 = v27 + 56;
    v19 = 1 << *(v27 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v27 + 56);
    v22 = (v19 + 63) >> 6;

    v23 = 0;
    if (v21)
    {
      while (1)
      {
        v24 = v23;
LABEL_12:
        (*(v5 + 16))(v8, *(v27 + 48) + *(v5 + 72) * (__clz(__rbit64(v21)) | (v24 << 6)), v4);
        closure #1 in closure #2 in NearbyInvitationScanner.scan()(v8, v26, v25);
        v21 &= v21 - 1;
        (*(v5 + 8))(v8, v4);
        v23 = v24;
        if (!v21)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v24 >= v22)
      {
        break;
      }

      v21 = *(v18 + 8 * v24);
      ++v23;
      if (v21)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t closure #1 in closure #2 in NearbyInvitationScanner.scan()(uint64_t a1, uint64_t a2, void *a3)
{
  v140 = a1;
  v142 = a2;
  v124 = *a3;
  v4 = type metadata accessor for NWEndpoint();
  v136 = *(v4 - 8);
  v137 = v4;
  v5 = *(v136 + 64);
  v6 = __chkstk_darwin(v4);
  v135 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v134 = &v122 - v9;
  __chkstk_darwin(v8);
  v133 = &v122 - v10;
  v11 = type metadata accessor for UUID();
  v131 = *(v11 - 8);
  v132 = v11;
  v12 = *(v131 + 64);
  v13 = __chkstk_darwin(v11);
  v130 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v141 = &v122 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v123 = (&v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __chkstk_darwin(v18);
  v128 = &v122 - v21;
  v22 = __chkstk_darwin(v20);
  v127 = (&v122 - v23);
  __chkstk_darwin(v22);
  v25 = &v122 - v24;
  v26 = type metadata accessor for NWBrowser.Result();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v129 = (&v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = __chkstk_darwin(v29);
  v138 = &v122 - v32;
  v33 = __chkstk_darwin(v31);
  v125 = &v122 - v34;
  v35 = __chkstk_darwin(v33);
  v126 = &v122 - v36;
  v37 = __chkstk_darwin(v35);
  v39 = &v122 - v38;
  __chkstk_darwin(v37);
  v41 = &v122 - v40;
  v42 = type metadata accessor for NWBrowser.Result.Change();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = &v122 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v43 + 16))(v46, v140, v42);
  v47 = (*(v43 + 88))(v46, v42);
  v139 = v27;
  v140 = v26;
  if (v47 == enum case for NWBrowser.Result.Change.added(_:))
  {
    (*(v43 + 96))(v46, v42);
    v129 = *(v27 + 32);
    v129(v41, v46, v26);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    __swift_project_value_buffer(v48, static Log.client);
    v49 = *(v27 + 16);
    v138 = v41;
    v49(v39, v41, v26);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v50, v51))
    {
      LODWORD(v128) = v51;
      v52 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v144 = v123;
      v124 = v52;
      *v52 = 136315138;
      v49(v25, v39, v26);
      (*(v27 + 56))(v25, 0, 1, v26);
      v53 = v127;
      outlined init with copy of (String, Any)(v25, v127, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
      if ((*(v27 + 48))(v53, 1, v26) == 1)
      {
        v54 = 7104878;
        v55 = 0xE300000000000000;
      }

      else
      {
        v78 = v53;
        v79 = v126;
        v129(v126, v78, v26);
        v49(v125, v79, v26);
        v54 = String.init<A>(reflecting:)();
        v55 = v80;
        (*(v27 + 8))(v79, v26);
      }

      outlined destroy of Any?(v25, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
      v129 = *(v27 + 8);
      (v129)(v39, v26);
      v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, &v144);

      v82 = v124;
      *(v124 + 1) = v81;
      _os_log_impl(&_mh_execute_header, v50, v128, "*** NearbyInvitationScanner added result, %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v123);
    }

    else
    {

      v129 = *(v27 + 8);
      (v129)(v39, v26);
    }

    v84 = v131;
    v83 = v132;
    (*(v131 + 16))(v141, v142 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID, v132);
    v85 = v133;
    v86 = v138;
    NWBrowser.Result.endpoint.getter();
    v87 = v130;
    NWEndpoint.endpointUUID()();
    v88 = v137;
    v89 = *(v136 + 8);
    v89(v85, v137);
    v136 = UUID.uuidString.getter();
    v128 = v90;
    (*(v84 + 8))(v87, v83);
    NWBrowser.Result.endpoint.getter();
    v91 = NWEndpoint.contactID.getter();
    v131 = v92;
    v132 = v91;
    v89(v85, v88);
    v93 = v134;
    NWBrowser.Result.endpoint.getter();
    v94 = NWEndpoint.deviceColor.getter();
    v89(v93, v88);
    v133 = v94;
    NWBrowser.Result.endpoint.getter();
    NWEndpoint.deviceModel.getter();
    v89(v93, v88);
    v95 = v135;
    NWBrowser.Result.endpoint.getter();
    NWEndpoint.deviceID.getter();
    v89(v95, v88);
    v96 = objc_allocWithZone(type metadata accessor for NearbyAdvertisement());
    v97 = NearbyAdvertisement.init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();
    if ((*(*v142 + 128))())
    {
      v99 = v98;
      ObjectType = swift_getObjectType();
      (*(v99 + 8))(v97, v86, ObjectType, v99);
      swift_unknownObjectRelease();
    }

    v101 = v86;
    return (v129)(v101, v140);
  }

  if (v47 == enum case for NWBrowser.Result.Change.removed(_:))
  {
    (*(v43 + 96))(v46, v42);
    v56 = v138;
    v57 = v139;
    v58 = v140;
    v127 = *(v139 + 32);
    (v127)(v138, v46, v140);
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    __swift_project_value_buffer(v59, static Log.client);
    v60 = *(v57 + 16);
    v61 = v129;
    v60(v129, v56, v58);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      LODWORD(v124) = v63;
      v64 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v144 = v122;
      *v64 = 136315138;
      v65 = v128;
      v60(v128, v61, v58);
      (*(v57 + 56))(v65, 0, 1, v58);
      v66 = v123;
      outlined init with copy of (String, Any)(v65, v123, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
      if ((*(v57 + 48))(v66, 1, v58) == 1)
      {
        v67 = 7104878;
        v68 = 0xE300000000000000;
      }

      else
      {
        v103 = v126;
        (v127)(v126, v66, v58);
        v60(v125, v103, v58);
        v67 = String.init<A>(reflecting:)();
        v68 = v104;
        (*(v57 + 8))(v103, v58);
      }

      v102 = v134;
      outlined destroy of Any?(v128, &_s7Network9NWBrowserC6ResultVSgMd, &_s7Network9NWBrowserC6ResultVSgMR);
      v105 = v129;
      v129 = *(v57 + 8);
      (v129)(v105, v58);
      v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, &v144);

      *(v64 + 4) = v106;
      _os_log_impl(&_mh_execute_header, v62, v124, "*** NearbyInvitationScanner removed result, %s", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v122);
    }

    else
    {

      v129 = *(v57 + 8);
      (v129)(v61, v58);
      v102 = v134;
    }

    v108 = v131;
    v107 = v132;
    (*(v131 + 16))(v141, v142 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID, v132);
    v109 = v133;
    NWBrowser.Result.endpoint.getter();
    v110 = v130;
    NWEndpoint.endpointUUID()();
    v111 = v137;
    v112 = *(v136 + 8);
    v112(v109, v137);
    v136 = UUID.uuidString.getter();
    v134 = v113;
    (*(v108 + 8))(v110, v107);
    NWBrowser.Result.endpoint.getter();
    v131 = NWEndpoint.contactID.getter();
    v132 = v114;
    v112(v109, v111);
    NWBrowser.Result.endpoint.getter();
    v115 = NWEndpoint.deviceColor.getter();
    v112(v102, v111);
    v133 = v115;
    NWBrowser.Result.endpoint.getter();
    NWEndpoint.deviceModel.getter();
    v112(v102, v111);
    v116 = v135;
    NWBrowser.Result.endpoint.getter();
    NWEndpoint.deviceID.getter();
    v112(v116, v111);
    v117 = objc_allocWithZone(type metadata accessor for NearbyAdvertisement());
    v118 = NearbyAdvertisement.init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();
    if ((*(*v142 + 128))())
    {
      v120 = v119;
      v121 = swift_getObjectType();
      (*(v120 + 16))(v118, v121, v120);
      swift_unknownObjectRelease();
    }

    v101 = v138;
    return (v129)(v101, v140);
  }

  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v69 = type metadata accessor for Logger();
  __swift_project_value_buffer(v69, static Log.client);

  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v144 = v73;
    *v72 = 136315138;
    v143 = a3;

    v74 = String.init<A>(reflecting:)();
    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v74, v75, &v144);

    *(v72 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v70, v71, "*** NearbyInvitationScanner new browser, %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
  }

  return (*(v43 + 8))(v46, v42);
}

uint64_t NearbyInvitationScanner.connect(to:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v57 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v62 = &v55 - v6;
  v7 = type metadata accessor for NWEndpoint();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v64 = v14;
  v65 = &v55 - v13;
  __chkstk_darwin(v12);
  v63 = &v55 - v15;
  type metadata accessor for NWParameters();
  specialized static NearbyInvitationAdvertiser.createParameters(isBrowsing:)(0);
  v16 = NWParameters.__allocating_init(_:)();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v66 = a1;
  v17 = type metadata accessor for NWProtocolFramer.Options();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  v20 = NWProtocolFramer.Options.init(definition:)();
  NWParameters.defaultProtocolStack.getter();

  v22 = dispatch thunk of NWParameters.ProtocolStack.applicationProtocols.modify();
  if (!(*v21 >> 62))
  {
    goto LABEL_4;
  }

  if (*v21 < 0)
  {
    v54 = *v21;
  }

  if (_CocoaArrayWrapper.endIndex.getter() < 0)
  {
    __break(1u);
  }

  else
  {
LABEL_4:
    specialized Array.replaceSubrange<A>(_:with:)(0, 0, v20);
    v59 = v20;

    v22(v67, 0);

    v23 = *(v8 + 16);
    v24 = v63;
    v25 = v66;
    v23(v63, v66, v7);
    v26 = type metadata accessor for NWConnection();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();

    v60 = v16;
    v29 = NWConnection.init(to:using:)();
    v30 = swift_allocObject();
    v31 = v61;
    swift_weakInit();
    v58 = v23;
    v23(v24, v25, v7);
    v32 = (*(v8 + 80) + 24) & ~*(v8 + 80);
    v33 = (v64 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 16) = v30;
    v64 = v8;
    v55 = *(v8 + 32);
    v55(v34 + v32, v24, v7);
    *(v34 + v33) = v29;

    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(partial apply for closure #1 in NearbyInvitationScanner.connect(to:));
    NWConnection.stateUpdateHandler.setter();

    v35 = *(v31 + 16);
    NWConnection.start(queue:)();
    if (one-time initialization token for client == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v36 = type metadata accessor for Logger();
  __swift_project_value_buffer(v36, static Log.client);
  v37 = v65;
  v38 = v58;
  v58(v65, v66, v7);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v67[0] = v66;
    *v41 = 136315138;
    v42 = v37;
    v43 = v62;
    v38(v62, v42, v7);
    v44 = v64;
    (*(v64 + 56))(v43, 0, 1, v7);
    v45 = v43;
    v46 = v57;
    outlined init with copy of (String, Any)(v45, v57, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
    if ((*(v44 + 48))(v46, 1, v7) == 1)
    {
      v47 = 0xE300000000000000;
      v48 = 7104878;
    }

    else
    {
      v50 = v63;
      v55(v63, v46, v7);
      v38(v56, v50, v7);
      v48 = String.init<A>(reflecting:)();
      v47 = v51;
      v52 = v50;
      v44 = v64;
      (*(v64 + 8))(v52, v7);
    }

    outlined destroy of Any?(v62, &_s7Network10NWEndpointOSgMd, &_s7Network10NWEndpointOSgMR);
    (*(v44 + 8))(v65, v7);
    v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v47, v67);

    *(v41 + 4) = v53;
    _os_log_impl(&_mh_execute_header, v39, v40, "NearbyInvitationScanner Starting connection request to endpoint %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v66);
  }

  else
  {

    return (*(v64 + 8))(v37, v7);
  }
}

uint64_t closure #1 in NearbyInvitationScanner.connect(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a1;
  v94 = type metadata accessor for NWError();
  v98 = *(v94 - 8);
  v6 = *(v98 + 64);
  v7 = __chkstk_darwin(v94);
  v97 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v95 = &v89 - v9;
  v10 = type metadata accessor for NWConnection.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NWEndpoint();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v93 = v14;
    if (one-time initialization token for client != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    v23 = __swift_project_value_buffer(v22, static Log.client);
    (*(v16 + 16))(v19, a3, v15);
    v92 = v23;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v90 = a4;
      v27 = v26;
      v28 = swift_slowAlloc();
      v91 = v21;
      v29 = v28;
      v99[0] = v28;
      *v27 = 136315138;
      v30 = NWEndpoint.debugDescription.getter();
      v89 = v11;
      v31 = v10;
      v33 = v32;
      (*(v16 + 8))(v19, v15);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v33, v99);
      v10 = v31;
      v11 = v89;

      *(v27 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v24, v25, "*** NearbyInvitationScanner making a connection update handler for device %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v29);
      v21 = v91;

      a4 = v90;
    }

    else
    {

      (*(v16 + 8))(v19, v15);
    }

    v35 = v93;
    (*(v11 + 16))(v93, v96, v10);
    v36 = (*(v11 + 88))(v35, v10);
    v37 = v97;
    v38 = v98;
    if (v36 == enum case for NWConnection.State.waiting(_:))
    {
      (*(v11 + 96))(v35, v10);
      v39 = v94;
      v40 = v95;
      (*(v38 + 32))();
      v41 = *(v38 + 16);
      v41(v37, v40, v39);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v91 = v21;
        v46 = v45;
        *v44 = 138412290;
        _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type NWError and conformance NWError, &type metadata accessor for NWError);
        swift_allocError();
        v47 = v39;
        v41(v48, v37, v39);
        v49 = _swift_stdlib_bridgeErrorToNSError();
        v50 = *(v38 + 8);
        v50(v37, v47);
        *(v44 + 4) = v49;
        *v46 = v49;
        _os_log_impl(&_mh_execute_header, v42, v43, "NearbyInvitationScanner state - Waiting: %@", v44, 0xCu);
        outlined destroy of Any?(v46, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

        return (v50)(v95, v47);
      }

      else
      {

        v62 = *(v38 + 8);
        v62(v37, v39);
        return (v62)(v40, v39);
      }
    }

    if (v36 == enum case for NWConnection.State.failed(_:))
    {
      v51 = v10;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "*** NearbyInvitationScanner state - failed: Removing connection", v54, 2u);
      }

      v55 = *(*v21 + 192);

      v56 = v55(v99);
      v58 = v57;
      v59 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v57, a4);

      v60 = *v58;
      if (*v58 >> 62)
      {
        if (v60 < 0)
        {
          v87 = *v58;
        }

        v61 = _CocoaArrayWrapper.endIndex.getter();
        if (v61 >= v59)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61 >= v59)
        {
LABEL_15:
          specialized Array.replaceSubrange<A>(_:with:)(v59, v61);
          v56(v99, 0);
          NWConnection.cancel()();

          return (*(v11 + 8))(v35, v51);
        }
      }

      __break(1u);
LABEL_45:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_31:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v56(v99, 0);
      (*(*v21 + 264))(a4);
    }

    if (v36 == enum case for NWConnection.State.setup(_:))
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = "NearbyInvitationScanner state - Setup";
LABEL_23:
        _os_log_impl(&_mh_execute_header, v63, v64, v66, v65, 2u);

        goto LABEL_24;
      }

      goto LABEL_24;
    }

    if (v36 == enum case for NWConnection.State.preparing(_:))
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        v66 = "NearbyInvitationScanner state - Preparing";
        goto LABEL_23;
      }

LABEL_24:
    }

    if (v36 == enum case for NWConnection.State.ready(_:))
    {
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&_mh_execute_header, v67, v68, "*** NearbyInvitationScanner connected and going to append connections", v69, 2u);
      }

      v56 = (*(*v21 + 192))(v99);
      v71 = v70;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*v71 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_31;
      }

      goto LABEL_45;
    }

    v72 = v10;
    v73 = enum case for NWConnection.State.cancelled(_:);
    v74 = v36;
    v75 = Logger.logObject.getter();
    if (v74 == v73)
    {
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "*** NearbyInvitationScanner state - Cancelled", v77, 2u);
      }

      v78 = *(*v21 + 192);

      v79 = v78(v99);
      v81 = v80;
      v82 = specialized MutableCollection._halfStablePartition(isSuffixElement:)(v80, a4);

      v83 = *v81;
      if (*v81 >> 62)
      {
        if (v83 < 0)
        {
          v88 = *v81;
        }

        result = _CocoaArrayWrapper.endIndex.getter();
        v84 = result;
        if (result >= v82)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v84 >= v82)
        {
LABEL_37:
          specialized Array.replaceSubrange<A>(_:with:)(v82, v84);
          v79(v99, 0);
          NWConnection.cancel()();
        }
      }

      __break(1u);
      return result;
    }

    v85 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v75, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v75, v85, "NearbyInvitationScanner - case not handled", v86, 2u);
    }

    return (*(v11 + 8))(v93, v72);
  }

  return result;
}

uint64_t NearbyInvitationScanner.sendRequestConnection(fromHandle:nearbyAdvertisement:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[1] = a4;
  v30 = type metadata accessor for NWConnection.SendCompletion();
  v29[0] = *(v30 - 8);
  v4 = *(v29[0] + 64);
  __chkstk_darwin(v30);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InvitationRequestData();
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWProtocolFramer.Message();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v11 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
  v34 = &type metadata for ConnectionMessageType;
  v33 = 1;
  dispatch thunk of NWProtocolFramer.Message.subscript.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000C8980;
  *(v12 + 32) = v11;
  v13 = type metadata accessor for NWConnection.ContentContext();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();

  NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
  NearbyAdvertisement.identifier.getter();

  InvitationRequestData.init(invitationData:id:pseudo:)();
  v16 = type metadata accessor for JSONEncoder();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type InvitationRequestData and conformance InvitationRequestData, &type metadata accessor for InvitationRequestData);
  v32 = v7;
  v19 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v21 = v20;
  v22 = v29[0];
  v23 = v30;
  (*(v29[0] + 104))(v6, enum case for NWConnection.SendCompletion.idempotent(_:), v30);
  outlined copy of Data._Representation(v19, v21);
  NWConnection.send(content:contentContext:isComplete:completion:)();
  outlined consume of Data._Representation(v19, v21);
  (*(v22 + 8))(v6, v23);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Log.client);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "NearbyInvitationScanner sending data over for preLMI", v27, 2u);

    outlined consume of Data._Representation(v19, v21);
  }

  else
  {

    outlined consume of Data._Representation(v19, v21);
  }

  return (*(v31 + 8))(v10, v32);
}

uint64_t NearbyInvitationScanner.sendApprovalReceivedResponse(to:)(uint64_t a1)
{
  v2 = type metadata accessor for NWConnection.SendCompletion();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NWProtocolFramer.Message();
  if (one-time initialization token for definition != -1)
  {
    swift_once();
  }

  v7 = dispatch thunk of NWProtocolFramer.Message.__allocating_init(definition:)();
  v27[3] = &type metadata for ConnectionMessageType;
  LOBYTE(v27[0]) = 4;
  dispatch thunk of NWProtocolFramer.Message.subscript.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000C8980;
  *(v8 + 32) = v7;
  v9 = type metadata accessor for NWConnection.ContentContext();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  NWConnection.ContentContext.init(identifier:expiration:priority:isFinal:antecedent:metadata:)();
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.client);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25 = v2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v24 = v3;
    v18 = v17;
    v26 = a1;
    v27[0] = v17;
    *v16 = 136315138;
    type metadata accessor for NWConnection();

    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v27);

    *(v16 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "*** NearbyInvitationScanner send approval to connection %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v18);
    v3 = v24;

    v2 = v25;
  }

  (*(v3 + 104))(v6, enum case for NWConnection.SendCompletion.idempotent(_:), v2);
  NWConnection.send(content:contentContext:isComplete:completion:)();

  return (*(v3 + 8))(v6, v2);
}

uint64_t NearbyInvitationScanner.receiveNextMessage(from:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Log.client);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "*** NearbyInvitationScanner received data", v7, 2u);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;

  NWConnection.receiveMessage(completion:)();
}

uint64_t closure #1 in NearbyInvitationScanner.receiveNextMessage(from:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 >> 60 != 15 && a3 != 0)
  {
    outlined copy of Data._Representation(a1, a2);
    if (one-time initialization token for definition != -1)
    {
      swift_once();
    }

    if (dispatch thunk of NWConnection.ContentContext.protocolMetadata(definition:)())
    {
      v32 = a5;
      if (one-time initialization token for client != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      __swift_project_value_buffer(v13, static Log.client);
      outlined copy of Data._Representation(a1, a2);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      outlined consume of Data?(a1, a2);
      v33 = a7;
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v34 = v17;
        *v16 = 136315138;
        outlined copy of Data._Representation(a1, a2);
        v18 = String.init<A>(reflecting:)();
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v34);

        *(v16 + 4) = v20;
        _os_log_impl(&_mh_execute_header, v14, v15, "*** NearbyInvitationScanner received data in bytes: %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
      }

      if ((*(*a6 + 128))())
      {
        v22 = v21;
        ObjectType = swift_getObjectType();
        type metadata accessor for NWProtocolFramer.Message();
        v24 = swift_dynamicCastClassUnconditional();
        v25 = *(v22 + 32);
        outlined copy of Data?(a1, a2);

        v25(a1, a2, v24, ObjectType, v22);
        outlined consume of Data?(a1, a2);
        swift_unknownObjectRelease();

        outlined consume of Data?(a1, a2);
      }

      else
      {
        outlined consume of Data?(a1, a2);
      }

      a5 = v32;
      a7 = v33;
    }

    else
    {
      outlined consume of Data?(a1, a2);
    }
  }

  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.client);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "*** NearbyInvitationScanner going to send received message to HP", v29, 2u);
  }

  (*(*a6 + 256))(a7);
  v30 = type metadata accessor for NWError();
  result = (*(*(v30 - 8) + 48))(a5, 1, v30);
  if (result == 1)
  {
    return (*(*a6 + 264))(a7);
  }

  return result;
}

uint64_t NearbyInvitationScanner.deinit()
{
  outlined destroy of weak PeerConnectionDelegate?(v0 + 32);
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t NearbyInvitationScanner.__deallocating_deinit()
{
  outlined destroy of weak PeerConnectionDelegate?(v0 + 32);
  v1 = *(v0 + 48);

  v2 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

char *specialized NearbyInvitationScanner.init(scannerID:configuration:delegate:)(uint64_t a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v41 = a3;
  v39 = a2;
  v42 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay7Network12NWConnectionCGGMd, &_s7Combine9PublishedVySay7Network12NWConnectionCGGMR);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  __chkstk_darwin(v7);
  v36 = &v34 - v9;
  v35 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v10 = *(v35 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v35);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OS_dispatch_queue.Attributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v16 = type metadata accessor for DispatchQoS();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v43 = _swiftEmptyArrayStorage;
  _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v10 + 104))(v13, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v35);
  *(a4 + 2) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(a4 + 5) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 6) = 0;
  v18 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner__connections;
  v43 = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
  v19 = v36;
  Published.init(initialValue:)();
  (*(v37 + 32))(&a4[v18], v19, v38);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.client);
  v21 = v39;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v43 = v25;
    *v24 = 136315138;
    v26 = [v21 debugDescription];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v43);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "NearbyInvitationScanner init with parameters %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
  }

  *(a4 + 3) = v21;
  swift_beginAccess();
  *(a4 + 5) = v40;
  swift_unknownObjectWeakAssign();
  v31 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService23NearbyInvitationScanner_scannerID;
  v32 = type metadata accessor for UUID();
  (*(*(v32 - 8) + 32))(&a4[v31], v42, v32);
  return a4;
}

uint64_t partial apply for closure #1 in NearbyInvitationScanner.connect(to:)(uint64_t a1)
{
  v3 = *(type metadata accessor for NWEndpoint() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in NearbyInvitationScanner.connect(to:)(a1, v5, v1 + v4, v6);
}

uint64_t type metadata accessor for NearbyInvitationScanner()
{
  result = type metadata singleton initialization cache for NearbyInvitationScanner;
  if (!type metadata singleton initialization cache for NearbyInvitationScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NearbyInvitationScanner()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Published<[NWConnection]>();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[NWConnection]>()
{
  if (!lazy cache variable for type metadata for Published<[NWConnection]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay7Network12NWConnectionCGMd, &_sSay7Network12NWConnectionCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[NWConnection]>);
    }
  }
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t specialized MutableCollection._halfStablePartition(isSuffixElement:)(unint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = specialized Collection.firstIndex(where:)(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    swift_unknownObjectRelease();
    if (v19 != a2)
    {
      if (v10 != v11)
      {
        v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);

LABEL_21:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v17 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v17) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v16;

        if ((v7 & 0x8000000000000000) != 0 || v17)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t _s14NearbySessions21InvitationRequestDataVACSEAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NearbyRangingFilter.rangingConfig.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t NearbyRangingFilter.stableIdentifier.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t NearbyRangingFilter.rangingAssertion.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
}

uint64_t NearbyRangingFilter.rangingAssertion.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

__n128 NearbyRangingFilter.device.getter@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v14 = *(v1 + 128);
  v15 = v3;
  v16 = *(v1 + 160);
  v4 = *(v1 + 80);
  v10 = *(v1 + 64);
  v11 = v4;
  v5 = *(v1 + 112);
  v12 = *(v1 + 96);
  v13 = v5;
  outlined init with copy of BluetoothScanner.Device(&v10, &v9);
  v6 = v15;
  *(a1 + 64) = v14;
  *(a1 + 80) = v6;
  *(a1 + 96) = v16;
  v7 = v11;
  *a1 = v10;
  *(a1 + 16) = v7;
  result = v13;
  *(a1 + 32) = v12;
  *(a1 + 48) = result;
  return result;
}

uint64_t NearbyRangingFilter.device.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 144);
  v18[4] = *(v1 + 128);
  v18[5] = v3;
  v19 = *(v1 + 160);
  v4 = *(v1 + 80);
  v18[0] = *(v1 + 64);
  v18[1] = v4;
  v5 = *(v1 + 112);
  v18[2] = *(v1 + 96);
  v18[3] = v5;
  v6 = *(a1 + 16);
  *(v1 + 64) = *a1;
  *(v1 + 80) = v6;
  v7 = *(a1 + 80);
  *(v1 + 128) = *(a1 + 64);
  *(v1 + 144) = v7;
  v8 = *(a1 + 48);
  *(v1 + 96) = *(a1 + 32);
  *(v1 + 112) = v8;
  *(v1 + 160) = *(a1 + 96);
  outlined init with copy of BluetoothScanner.Device(a1, v16);
  outlined destroy of BluetoothScanner.Device(v18);
  v9 = *(v1 + 32);
  v10 = *(v1 + 144);
  v16[4] = *(v1 + 128);
  v16[5] = v10;
  v17 = *(v1 + 160);
  v11 = *(v1 + 80);
  v16[0] = *(v1 + 64);
  v16[1] = v11;
  v12 = *(v1 + 112);
  v16[2] = *(v1 + 96);
  v16[3] = v12;
  v13 = *((swift_isaMask & *v9) + 0xD8);
  outlined init with copy of BluetoothScanner.Device(v16, &v15);
  v13(v16);
  outlined destroy of BluetoothScanner.Device(v16);
  return outlined destroy of BluetoothScanner.Device(a1);
}

void (*NearbyRangingFilter.device.modify(uint64_t *a1))(void **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD8uLL);
  }

  *a1 = v3;
  *(v3 + 208) = v1;
  swift_beginAccess();
  return NearbyRangingFilter.device.modify;
}

void NearbyRangingFilter.device.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[26];
    v5 = *(v4 + 32);
    v7 = *(v4 + 80);
    v6 = *(v4 + 96);
    *v3 = *(v4 + 64);
    *(v3 + 1) = v7;
    *(v3 + 2) = v6;
    v9 = *(v4 + 128);
    v8 = *(v4 + 144);
    v10 = *(v4 + 112);
    v3[12] = *(v4 + 160);
    *(v3 + 4) = v9;
    *(v3 + 5) = v8;
    *(v3 + 3) = v10;
    v11 = *((swift_isaMask & *v5) + 0xD8);
    outlined init with copy of BluetoothScanner.Device(v3, (v3 + 13));
    v11(v3);
    outlined destroy of BluetoothScanner.Device(v3);
  }

  free(v3);
}

uint64_t NearbyRangingFilter.cancellables.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 168);
}

uint64_t NearbyRangingFilter.cancellables.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 168);
  *(v1 + 168) = a1;
}

uint64_t NearbyRangingFilter.handle(updatedScannerDevice:)(uint64_t a1)
{
  v3 = *(*v1 + 160);
  outlined init with copy of BluetoothScanner.Device(a1, v5);
  return v3(a1);
}

uint64_t NearbyRangingFilter.__allocating_init(scannerDevice:config:)(uint64_t a1, char a2, uint64_t a3)
{
  swift_allocObject();
  v6 = specialized NearbyRangingFilter.init(scannerDevice:config:)(a1, a2 & 1, a3);
  outlined destroy of BluetoothScanner.Device(a1);
  return v6;
}

uint64_t NearbyRangingFilter.init(scannerDevice:config:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = specialized NearbyRangingFilter.init(scannerDevice:config:)(a1, a2 & 1, a3);
  outlined destroy of BluetoothScanner.Device(a1);
  return v4;
}

uint64_t closure #1 in NearbyRangingFilter.init(scannerDevice:config:)(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.host);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v1;
      _os_log_impl(&_mh_execute_header, v5, v6, "RangingSession isRunning: %{BOOL}d", v7, 8u);
    }

    v8 = *v3;
    if (v1)
    {
      if ((*(v8 + 128))())
      {
      }

      else
      {
        v9 = (*(*v3 + 152))(v11);
        (v11[11])(&v10, v9);
        outlined destroy of BluetoothScanner.Device(v11);
        (*(*v3 + 136))(v10);
      }
    }

    else
    {
      (*(v8 + 136))(0);
    }
  }

  return result;
}

uint64_t closure #2 in NearbyRangingFilter.init(scannerDevice:config:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    type metadata accessor for NearbyRangingFilter();
    lazy protocol witness table accessor for type NearbyRangingFilter and conformance NearbyRangingFilter();
    ObservableObject<>.objectWillChange.getter();
    ObservableObjectPublisher.send()();
  }

  return result;
}

uint64_t NearbyRangingFilter.deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *((swift_isaMask & *v2) + 0xE0);
  v4 = v2;
  v3();

  v5 = *(v1 + 48);

  v6 = *(v1 + 56);

  v7 = *(v1 + 72);
  v9 = *(v1 + 88);
  v8 = *(v1 + 96);
  v10 = *(v1 + 104);
  v11 = *(v1 + 136);
  v12 = *(v1 + 160);

  outlined consume of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(v8, v10);

  v13 = *(v1 + 168);

  return v1;
}

uint64_t NearbyRangingFilter.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *((swift_isaMask & *v2) + 0xE0);
  v4 = v2;
  v3();

  v5 = *(v1 + 48);

  v6 = *(v1 + 56);

  v7 = *(v1 + 72);
  v9 = *(v1 + 88);
  v8 = *(v1 + 96);
  v10 = *(v1 + 104);
  v11 = *(v1 + 136);
  v12 = *(v1 + 160);

  outlined consume of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(v8, v10);

  v13 = *(v1 + 168);

  return swift_deallocClassInstance();
}

__n128 protocol witness for DeviceFilter.device.getter in conformance NearbyRangingFilter@<Q0>(uint64_t a1@<X8>)
{
  (*(*v1 + 152))(v6);
  v3 = v6[5];
  *(a1 + 64) = v6[4];
  *(a1 + 80) = v3;
  *(a1 + 96) = v7;
  v4 = v6[1];
  *a1 = v6[0];
  *(a1 + 16) = v4;
  result = v6[3];
  *(a1 + 32) = v6[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance NearbyRangingFilter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NearbyRangingFilter();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t specialized NearbyRangingFilter.init(scannerDevice:config:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 56) = 0;
  *(v4 + 168) = &_swiftEmptySetSingleton;
  v7 = *a1;
  v8 = *(a1 + 8);
  *(v4 + 40) = *a1;
  *(v4 + 48) = v8;
  v9 = a2 & 1;
  *(v4 + 16) = a2 & 1;
  *(v4 + 24) = a3;
  objc_allocWithZone(type metadata accessor for NearbySession());
  swift_bridgeObjectRetain_n();
  v10 = NearbySession.init(stableIdentifier:rangingConfig:)(v7, v8, v9, a3);
  *(v4 + 32) = v10;
  v11 = *(a1 + 80);
  *(v4 + 128) = *(a1 + 64);
  *(v4 + 144) = v11;
  *(v4 + 160) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v4 + 64) = *a1;
  *(v4 + 80) = v12;
  v13 = *(a1 + 48);
  *(v4 + 96) = *(a1 + 32);
  *(v4 + 112) = v13;
  v14 = *((swift_isaMask & *v10) + 0x90);
  v15 = outlined init with copy of BluetoothScanner.Device(a1, v21);
  v21[0] = v14(v15);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySbs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v21[0] = (*((swift_isaMask & **(v4 + 32)) + 0xB0))(v16);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCy44com_apple_SharePlay_NearbyInvitationsService0I7SessionC12RangedDeviceVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy44com_apple_SharePlay_NearbyInvitationsService0I7SessionC12RangedDeviceVSgs5NeverOGMR);
  lazy protocol witness table accessor for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>(&lazy protocol witness table cache variable for type CurrentValueSubject<NearbySession.RangedDevice?, Never> and conformance CurrentValueSubject<A, B>, &_s7Combine19CurrentValueSubjectCy44com_apple_SharePlay_NearbyInvitationsService0I7SessionC12RangedDeviceVSgs5NeverOGMd, &_s7Combine19CurrentValueSubjectCy44com_apple_SharePlay_NearbyInvitationsService0I7SessionC12RangedDeviceVSgs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v17 = *(v4 + 32);
  v18 = *((swift_isaMask & *v17) + 0xD8);
  v19 = v17;
  v18(a1);

  return v4;
}

uint64_t outlined consume of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyRangingFilter.Config.Mode and conformance NearbyRangingFilter.Config.Mode()
{
  result = lazy protocol witness table cache variable for type NearbyRangingFilter.Config.Mode and conformance NearbyRangingFilter.Config.Mode;
  if (!lazy protocol witness table cache variable for type NearbyRangingFilter.Config.Mode and conformance NearbyRangingFilter.Config.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyRangingFilter.Config.Mode and conformance NearbyRangingFilter.Config.Mode);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for NearbyRangingFilter(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NearbyRangingFilter and conformance NearbyRangingFilter();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyRangingFilter and conformance NearbyRangingFilter()
{
  result = lazy protocol witness table cache variable for type NearbyRangingFilter and conformance NearbyRangingFilter;
  if (!lazy protocol witness table cache variable for type NearbyRangingFilter and conformance NearbyRangingFilter)
  {
    type metadata accessor for NearbyRangingFilter();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyRangingFilter and conformance NearbyRangingFilter);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NearbyRangingFilter.Config(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NearbyRangingFilter.Config(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CurrentValueSubject<Bool, Never> and conformance CurrentValueSubject<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t protocol witness for FirewallProvider.donateEntries(_:) in conformance IDSFirewall(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 144) = a1;
  *(v2 + 152) = v3;
  return _swift_task_switch(protocol witness for FirewallProvider.donateEntries(_:) in conformance IDSFirewall, 0, 0);
}

uint64_t protocol witness for FirewallProvider.donateEntries(_:) in conformance IDSFirewall()
{
  v2 = v0[18];
  v1 = v0[19];
  type metadata accessor for IDSFirewallEntry();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[20] = isa;
  v0[2] = v0;
  v0[3] = protocol witness for FirewallProvider.donateEntries(_:) in conformance IDSFirewall;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_1;
  v0[14] = v4;
  [v1 donateEntries:isa withCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 160);
  if (*(v1 + 48))
  {
    v4 = *(v1 + 48);
    swift_willThrow();
  }

  v5 = *(v2 + 8);

  return v5();
}

unint64_t type metadata accessor for IDSFirewallEntry()
{
  result = lazy cache variable for type metadata for IDSFirewallEntry;
  if (!lazy cache variable for type metadata for IDSFirewallEntry)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for IDSFirewallEntry);
  }

  return result;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, &type metadata for Never, &type metadata for String, v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t Log.client.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Log.default.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  __chkstk_darwin(a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t specialized Set.contains(_:)(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (type metadata accessor for NearbyGroupMember(), v5 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = static NSObject.== infix(_:_:)();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t NearbyGroupHost.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t key path getter for NearbyGroupHost.members : NearbyGroupHost@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0xC0))();
  *a2 = result;
  return result;
}

uint64_t key path setter for NearbyGroupHost.members : NearbyGroupHost(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *((swift_isaMask & **a2) + 0xC8);

  return v3(v4);
}

uint64_t NearbyGroupHost.members.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*NearbyGroupHost.members.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return NearbyInvitationAdvertiser.dataReceived.modify;
}

uint64_t key path setter for NearbyGroupHost.$members : NearbyGroupHost(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((swift_isaMask & **a2) + 0xE0))(v7);
}

uint64_t NearbyGroupHost.$members.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C11GroupMemberCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C11GroupMemberCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NearbyGroupHost.$members.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMd, &_s7Combine9PublishedV9PublisherVyShy14NearbySessions0D11GroupMemberCG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost__members;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy14NearbySessions0C11GroupMemberCGGMd, &_s7Combine9PublishedVyShy14NearbySessions0C11GroupMemberCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$dataReceived.modify;
}

uint64_t NearbyGroupHost.localMember.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMember;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of PseudonymProtocol(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t NearbyGroupHost.localMemberToken.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMemberToken);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t NearbyGroupHost.localMemberToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_localMemberToken);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t NearbyGroupHost.transaction.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_transaction;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t key path getter for NearbyGroupHost.state : NearbyGroupHost@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x140))();
  *a2 = result;
  return result;
}

uint64_t NearbyGroupHost.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyGroupHost.state.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return static Published.subscript.setter();
}

uint64_t (*NearbyGroupHost.state.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t key path setter for NearbyGroupHost.$state : NearbyGroupHost(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return (*((swift_isaMask & **a2) + 0x160))(v7);
}

uint64_t NearbyGroupHost.$state.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMd, &_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*NearbyGroupHost.$state.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost__state;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMd, &_s7Combine9PublishedVy44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostC5StateOGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

uint64_t NearbyGroupHost.connection.didset(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v32 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
    swift_beginAccess();
    v18 = *&v11[v17];
    if (v18)
    {
      v31[1] = *&v11[v17];
      type metadata accessor for NearbyGroupHostConnection();
      v19 = v11;
      v20 = v18;
      v21 = String.init<A>(reflecting:)();
      v23 = v22;
    }

    else
    {
      v24 = v11;
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v32);

    *(v14 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ changed XPC connection to %s", v14, 0x16u);
    outlined destroy of Any?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v16);
  }

  if (a1)
  {
    dispatch thunk of XPCHostConnection.destroyConnection()();
  }

  v26 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
  v27 = swift_beginAccess();
  v28 = *&v11[v26];
  v29 = (*((swift_isaMask & *v11) + 0x128))(v27);
  os_unfair_lock_lock((v29 + 24));
  if (v28)
  {
    if (!*(v29 + 16))
    {
      *(v29 + 16) = os_transaction_create();
    }
  }

  else
  {
    swift_unknownObjectRelease();
    *(v29 + 16) = 0;
  }

  os_unfair_lock_unlock((v29 + 24));
}

void NearbyGroupHost.connection.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  NearbyGroupHost.connection.didset(v4);
}

void (*NearbyGroupHost.connection.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_connection;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return NearbyGroupHost.connection.modify;
}

void NearbyGroupHost.connection.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  v11 = v3[4];
  if (a2)
  {
    v12 = v9;
    NearbyGroupHost.connection.didset(v8);

    v8 = *v5;
  }

  else
  {
    NearbyGroupHost.connection.didset(v8);
  }

  free(v3);
}

uint64_t NearbyGroupHost.cancellables.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_cancellables;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NearbyGroupHost.transaction.setter(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

uint64_t NearbyGroupHost.incomingMessageListenerTask.getter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

uint64_t NearbyGroupHost.incomingMessageListenerTask.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t NearbyGroupHost.__allocating_init(remoteInitialization:idsService:localMemberToken:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v81 = a4;
  v80 = a3;
  v79 = type metadata accessor for UUID();
  v78 = *(v79 - 8);
  v7 = *(v78 + 64);
  __chkstk_darwin(v79);
  v83 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = _swiftEmptyArrayStorage;
  v9 = *(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) + 20);
  v84 = a1;
  v86 = *(a1 + v9);
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO6MemberVG_SSs5NeverOTg508_s44com_e1_fg1_hi10Service0E9kl37C20remoteInitialization03idsG016localp14TokenAcA0ehI10m3C12nO87O06RemotehK0V_AHS2ScSgtKcfcSSAJ0N0Vcfu_32fa9956de96d0eac289a8d33e15b59ca7AOSSTf3nnnpk_nTf1cn_n(v86);
  v11 = v4;
  v12 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v10);

  v82 = a2;
  v13 = &a2[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_service];
  v14 = v12 + 56;
  while (1)
  {
    v15 = *(v13 + 3);
    v16 = *(v13 + 4);
    v17 = __swift_project_boxed_opaque_existential_1(v13, v15);
    v88 = v15;
    v89 = *(v16 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
    specialized NearbyGroupServerBag.pseudonymConfig(service:reusable:)(v87, 1, v92);
    if (v11)
    {
      break;
    }

    v20 = v92[2];
    v19 = v92[3];
    v22 = v92[0];
    v21 = v92[1];
    v94 = v93;
    outlined destroy of Any?(&v94, &_sSSSgMd, &_sSSSgMR);
    *&v95 = v22;
    *(&v95 + 1) = v21;
    v96 = v20;
    v97 = v19;
    v98 = 0xD000000000000016;
    v99 = 0x80000001000CEB90;
    v11 = 0;
    v23 = specialized static Pseudonym.existing(for:configuration:)(v87, &v95);

    __swift_destroy_boxed_opaque_existential_0Tm(v87);
    if (v100)
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v36 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    swift_beginAccess();
    v24 = [*(v23 + 16) URI];
    v25 = [v24 prefixedURI];

    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (*(v12 + 16))
    {
      v85 = 0;
      v29 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = -1 << *(v12 + 32);
      v32 = v30 & ~v31;
      if ((*(v14 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
      {
        v33 = ~v31;
        while (1)
        {
          v34 = (*(v12 + 48) + 16 * v32);
          v35 = *v34 == v26 && v34[1] == v28;
          if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v14 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        v37 = one-time initialization token for host;

        if (v37 == -1)
        {
          goto LABEL_19;
        }

LABEL_45:
        swift_once();
LABEL_19:
        v38 = type metadata accessor for Logger();
        __swift_project_value_buffer(v38, static Log.host);

        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v87[0] = v42;
          *v41 = 136446210;
          v43 = Pseudonym.description.getter();
          v45 = v44;

          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v87);

          *(v41 + 4) = v46;
          _os_log_impl(&_mh_execute_header, v39, v40, "Found existing pseudonym matching members: %{public}s", v41, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v42);
        }

        else
        {
        }

        Pseudonym.markUsed()();
        (*(v78 + 16))(v83, v84, v79);
        v47 = _swiftEmptyArrayStorage;
        v87[0] = _swiftEmptyArrayStorage;
        v48 = v86 + 56;
        v49 = 1 << *(v86 + 32);
        v50 = -1;
        if (v49 < 64)
        {
          v50 = ~(-1 << v49);
        }

        v51 = v50 & *(v86 + 56);
        v52 = (v49 + 63) >> 6;

        v53 = 0;
        if (v51)
        {
          goto LABEL_29;
        }

        while (1)
        {
          do
          {
            v54 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              __break(1u);
              goto LABEL_45;
            }

            if (v54 >= v52)
            {

              v61 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(v47);

              v88 = type metadata accessor for Pseudonym();
              v89 = lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type Pseudonym and conformance Pseudonym, type metadata accessor for Pseudonym);
              v87[0] = v23;
              v62 = (*(v77 + 464))(v83, v61, v87, v82, v80, v81);

              outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v84, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
              return v62;
            }

            v51 = *(v48 + 8 * v54);
            ++v53;
          }

          while (!v51);
          v53 = v54;
          do
          {
LABEL_29:
            v55 = (*(v86 + 48) + ((v53 << 11) | (32 * __clz(__rbit64(v51)))));
            v56 = *v55;
            v57 = v55[1];
            v58 = v55[2];
            v59 = v55[3];
            objc_allocWithZone(type metadata accessor for NearbyGroupMember());

            NearbyGroupMember.init(handle:tokenID:)();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v60 = *((v87[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v51 &= v51 - 1;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v47 = v87[0];
          }

          while (v51);
        }
      }

LABEL_17:

      v11 = v85;
    }

    else
    {
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v87);
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static Log.host);

  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *v66 = 136446466;
    swift_beginAccess();
    if (v100)
    {
      v90 = v100;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService9PseudonymCGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService9PseudonymCGMR);
      v67 = String.init<A>(reflecting:)();
      v69 = v68;
    }

    else
    {
      v69 = 0xE300000000000000;
      v67 = 7104878;
    }

    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v69, &v91);

    *(v66 + 4) = v70;
    *(v66 + 12) = 2082;
    v71 = Set.description.getter();
    v73 = v72;

    v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v71, v73, &v91);

    *(v66 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v64, v65, "Exhausted existing pseudonyms: %{public}s and couldn't find one matching members: %{public}s", v66, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors();
  v62 = swift_allocError();
  *v75 = 1;
  swift_willThrow();
  _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v80);

  outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(v84, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);

  return v62;
}

void *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO6MemberVG_SSs5NeverOTg508_s44com_e1_fg1_hi10Service0E9kl37C20remoteInitialization03idsG016localp14TokenAcA0ehI10m3C12nO87O06RemotehK0V_AHS2ScSgtKcfcSSAJ0N0Vcfu_32fa9956de96d0eac289a8d33e15b59ca7AOSSTf3nnnpk_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v3 = a1 + 56;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v3 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v10 = (*(a1 + 48) + 32 * v6);
    v11 = v10[1];
    v24 = *v10;
    v12 = _swiftEmptyArrayStorage[2];
    v13 = _swiftEmptyArrayStorage[3];

    if (v12 >= v13 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v12];
    v14[4] = v24;
    v14[5] = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v3 = a1 + 56;
    v15 = *(a1 + 56 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v23 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v6, v23, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(v6, v23, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[29] = a4;
  v5[30] = v4;
  v5[27] = a2;
  v5[28] = a3;
  v5[26] = a1;
  v6 = type metadata accessor for UUID();
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v8 = *(v7 + 64) + 15;
  v5[33] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:), 0, 0);
}

uint64_t NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 288);
  v6 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v7 = NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:);
  }

  else
  {
    v8 = *(v4 + 280);

    *(v4 + 304) = a1;
    v7 = NearbyGroupHost.__allocating_init(request:idsService:localMemberToken:);
  }

  return _swift_task_switch(v7, 0, 0);
}

char *NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v8 = specialized NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(a1, a2, a3, a4, a5, a6);
  _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(a5);

  return v8;
}

uint64_t closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:);
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = closure #4 in NearbyGroupHost.init(id:members:localMember:idsService:localMemberToken:);
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t NearbyGroupHost.join(withNearbyGroupMembers:)(void (*a1)(uint64_t, uint64_t, uint64_t, void))
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.group);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Received join message from client. We're now synced", v14, 2u);
  }

  v15 = (*((swift_isaMask & *v2) + 0x148))(1);
  v16 = (*((swift_isaMask & *v2) + 0x108))(v15);
  v18 = v17;
  v19 = (*((swift_isaMask & *v2) + 0xC0))();
  a1(v16, v18, v19, 0);
}

uint64_t NearbyGroupHost.addMember(nearbyGroupMember:completion:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *&v4[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue];
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  v15 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v46 = a3;
  v47 = a2;
  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Log.group);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v49[0] = v21;
    *v20 = 136315138;
    v22 = [v17 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, v49);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "Received request to add member: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v21);
  }

  (*((swift_isaMask & *v4) + 0xF0))(v49);
  v27 = v50;
  v28 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v28 + 56))(v27, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v49);
  v29 = (*((swift_isaMask & *v4) + 0xD0))(v49);
  v30 = v17;
  v31 = specialized Set._Variant.insert(_:)(&v48, v30);

  v29(v49, 0);
  if (v31)
  {
    v32 = *&v4[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_idsService];
    NearbyGroupHostIDSService.distributeAdd(for:addingMember:)(v4, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000C8980;
    *(inited + 32) = v30;
    v42 = v30;
    v43 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    v44 = *(inited + 16);
    swift_arrayDestroy();
    NearbyGroupHostIDSService.distributeGroupInitialization(for:to:)(v4, v43);
  }

  else
  {
    v33 = v4;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v49[0] = v37;
      *v36 = 136315138;
      v48 = (*((swift_isaMask & *v33) + 0xC0))();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
      v38 = String.init<A>(reflecting:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v49);

      *(v36 + 4) = v40;
      _os_log_impl(&_mh_execute_header, v34, v35, "Ignoring addMember since member is already part of NearbyGroup: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v37);
    }
  }

  return v47(0);
}

void NearbyGroupHost.kickMember(nearbyGroupMember:completion:)(void *a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static Log.group);
  v16 = a1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v16;
    *v20 = v16;
    v21 = v16;
    _os_log_impl(&_mh_execute_header, v17, v18, "Received request to kick member: %@", v19, 0xCu);
    outlined destroy of Any?(v20, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v22 = (*((swift_isaMask & *v4) + 0xD0))(v43);
  v23 = specialized Set._Variant.remove(_:)(v16);
  v22(v43, 0);
  if (v23)
  {
    v24 = *(v4 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_idsService);
    NearbyGroupHostIDSService.distributeRemove(for:removingMember:)(v4, v16);
    (a2)(0);
  }

  else
  {
    v41 = a3;
    v25 = v16;
    v26 = v4;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v42 = a2;
      v31 = v30;
      v32 = swift_slowAlloc();
      v43[0] = v32;
      *v29 = 138412802;
      *(v29 + 4) = v26;
      *(v29 + 12) = 2112;
      *(v29 + 14) = v25;
      *v31 = v4;
      v31[1] = v25;
      *(v29 + 22) = 2080;
      v33 = *((swift_isaMask & *v26) + 0xC0);
      v34 = v25;
      v35 = v26;
      v33();
      type metadata accessor for NearbyGroupMember();
      lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember);
      v36 = Set.description.getter();
      v38 = v37;

      v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, v43);

      *(v29 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v27, v28, "%@ Not able to kick member since member isn't found in membership list, member: %@, list: %s", v29, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      swift_arrayDestroy();
      a2 = v42;

      __swift_destroy_boxed_opaque_existential_0Tm(v32);
    }

    lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors();
    swift_allocError();
    *v40 = 2;
    a2();
  }
}

uint64_t NearbyGroupHost.leave(completion:)(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.group);
  v11 = v1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&_mh_execute_header, v12, v13, "%@ Received request to leave", v14, 0xCu);
    outlined destroy of Any?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  v17 = *&v11[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_idsService];
  NearbyGroupHostIDSService.distributeLeave(for:)(v11);
  (*((swift_isaMask & *v11) + 0x1F8))();
  return a1(0);
}

Swift::Void __swiftcall NearbyGroupHost.invalidate()()
{
  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Log.group);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@ invalidating", v5, 0xCu);
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  (*((swift_isaMask & *v2) + 0x148))(2);
  (*((swift_isaMask & *v2) + 0x178))(0);
}

id NearbyGroupHost.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NearbyGroupHost();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyGroupHost.handle(addedMember:)(com_apple_SharePlay_NearbyInvitationsService::NearbyGroupHostIDSService::MessageEvent::Member addedMember)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    objc_allocWithZone(type metadata accessor for NearbyGroupMember());

    v9 = NearbyGroupMember.init(handle:tokenID:)();
    v10 = *((swift_isaMask & *v1) + 0xD0);
    v11 = v9;
    v12 = v10(v14);
    specialized Set._Variant.insert(_:)(&v15, v11);

    v12(v14, 0);
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NearbyGroupHost.handle(removedMember:)(com_apple_SharePlay_NearbyInvitationsService::NearbyGroupHostIDSService::MessageEvent::Member removedMember)
{
  v2 = v1;
  object = removedMember.token.value._object;
  v4 = removedMember.handle._object;
  countAndFlagsBits = removedMember.handle._countAndFlagsBits;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v14 = *(v7 + 8);
  v13 = (v7 + 8);
  v14(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = type metadata accessor for NearbyGroupMember();
  objc_allocWithZone(v15);

  countAndFlagsBits = NearbyGroupMember.init(handle:tokenID:)();
  v13 = &swift_isaMask;
  v16 = *((swift_isaMask & *v1) + 0x108);
  v16();
  v17 = objc_allocWithZone(v15);
  object = NearbyGroupMember.init(handle:tokenID:)();
  v18 = (v16)();
  (*((swift_isaMask & *v1) + 0x110))(v18);
  v19 = objc_allocWithZone(v15);
  v4 = NearbyGroupMember.init(handle:tokenID:)();
  if (static NSObject.== infix(_:_:)() & 1) != 0 || (static NSObject.== infix(_:_:)())
  {
    if (one-time initialization token for group == -1)
    {
LABEL_5:
      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, static Log.group);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Removed member is localMember, invalidating session.", v23, 2u);
      }

      (*((*v13 & *v2) + 0x1F8))();
      goto LABEL_8;
    }

LABEL_17:
    swift_once();
    goto LABEL_5;
  }

  v24 = (*((swift_isaMask & *v1) + 0xD0))(v42);
  v25 = specialized Set._Variant.remove(_:)(countAndFlagsBits);
  v24(v42, 0);
  if (v25)
  {

    v4 = v25;
LABEL_8:

    return;
  }

  if (one-time initialization token for group != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Log.group);
  v27 = v2;
  v28 = countAndFlagsBits;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v41 = v28;
    v32 = v31;
    v33 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42[0] = v40;
    *v32 = 138412546;
    *(v32 + 4) = v27;
    *v33 = v2;
    *(v32 + 12) = 2080;
    v42[5] = v41;
    v34 = v27;
    v35 = v41;
    v36 = String.init<A>(reflecting:)();
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v37, v42);

    *(v32 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v29, v30, "%@ Couldn't find member %s to remove", v32, 0x16u);
    outlined destroy of Any?(v33, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0Tm(v40);

    v28 = v41;
  }

  lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors();
  swift_allocError();
  *v39 = 2;
  swift_willThrow();
}

void NearbyGroupHost.handleHostConnectionInvalidated(_:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService15NearbyGroupHost_queue);
  *v8 = v9;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (one-time initialization token for group == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.group);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "handleHostConnectionInvalidated, checking if connection is current", v14, 2u);
  }

  v15 = (*((swift_isaMask & *v2) + 0x170))();
  if (v15)
  {
    v16 = v15;

    if (v16 == a1)
    {
      (*((swift_isaMask & *v2) + 0x178))(0);
    }
  }
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  specialized _NativeSet._delete(at:)(v9);
  *v2 = v20;
  return v13;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = __CocoaSet.contains(_:)();

    if (v7)
    {
      v8 = specialized Set._Variant._migrateToNative(_:removing:)();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  type metadata accessor for NearbyGroupMember();
  v11 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v17 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v10;
  v21 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v19 = v21;
  }

  v20 = *(*(v19 + 48) + 8 * v13);
  specialized _NativeSet._delete(at:)(v13);
  result = v20;
  *v10 = v21;
  return result;
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)()
{
  v1 = v0;
  v2 = *v0;

  v3 = __CocoaSet.count.getter();
  v4 = swift_unknownObjectRetain();
  v5 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC14NearbySessions0E11GroupMemberC_Tt1g5(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = NSObject._rawHashValue(seed:)(v6);
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for NearbyGroupMember();
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = static NSObject.== infix(_:_:)();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  specialized _NativeSet._delete(at:)(v9);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
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

unint64_t lazy protocol witness table accessor for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors;
  if (!lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHost.Errors and conformance NearbyGroupHost.Errors);
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC14NearbySessions0B11GroupMemberC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    type metadata accessor for NearbyGroupMember();
    lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type NearbyGroupMember and conformance NSObject, &type metadata accessor for NearbyGroupMember);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      specialized Set._Variant.insert(_:)(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7Combine14AnyCancellableC_SayAFGTt0g5Tf4g_n(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for AnyCancellable();
  lazy protocol witness table accessor for type Pseudonym and conformance Pseudonym(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (!i)
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      specialized Set._Variant.insert(_:)(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC44com_apple_SharePlay_NearbyInvitationsService0F19GroupHostIDSServiceC12MessageEventO6MemberV_SayAJGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  lazy protocol witness table accessor for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);

      specialized Set._Variant.insert(_:)(&v9, v8, v7, v6, v5);

      v4 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHost.State and conformance NearbyGroupHost.State()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHost.State and conformance NearbyGroupHost.State;
  if (!lazy protocol witness table cache variable for type NearbyGroupHost.State and conformance NearbyGroupHost.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHost.State and conformance NearbyGroupHost.State);
  }

  return result;
}

void type metadata completion function for NearbyGroupHost()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    type metadata accessor for Published<Set<NearbyGroupMember>>();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      type metadata accessor for Published<NearbyGroupHost.State>();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for Published<Set<NearbyGroupMember>>()
{
  if (!lazy cache variable for type metadata for Published<Set<NearbyGroupMember>>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy14NearbySessions0A11GroupMemberCGMd, &_sShy14NearbySessions0A11GroupMemberCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Set<NearbyGroupMember>>);
    }
  }
}

void type metadata accessor for Published<NearbyGroupHost.State>()
{
  if (!lazy cache variable for type metadata for Published<NearbyGroupHost.State>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<NearbyGroupHost.State>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member()
{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member;
  if (!lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NearbyGroupHostIDSService.MessageEvent.Member and conformance NearbyGroupHostIDSService.MessageEvent.Member);
  }

  return result;
}

uint64_t partial apply for closure #2 in NearbyGroupHost.listener(_:shouldAcceptNewConnection:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *((swift_isaMask & *v1) + 0x178);
  v4 = v2;
  return v3(v2);
}

uint64_t outlined init with take of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of NearbyGroupHostIDSService.MessageEvent.MembershipMutation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined consume of Set<NearbyGroupHostIDSService.MessageEvent.Member>.Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

id NIBluetoothSample.init(with:)(void *a1)
{
  v2 = [a1 stableIdentifier];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 model];
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v7 = [v6 initWithRSSI:v3 identifier:v5 model:objc_msgSend(a1 channel:"bleChannel") machContinuousTimeSeconds:{objc_msgSend(a1, "bleRSSI"), mach_continuous_time()}];

      return v7;
    }

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.host);
    v10 = a1;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      *v13 = 136315138;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
      v15 = v10;
      v21 = String.init<A>(reflecting:)();
      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v24);

      *(v13 + 4) = v23;
      v19 = "Can't create NIBTSample for device: %s. No model.";
      goto LABEL_12;
    }

LABEL_13:

    return 0;
  }

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Log.host);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v11, v12))
  {
    goto LABEL_13;
  }

  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  v24 = v14;
  *v13 = 136315138;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v15 = v10;
  v16 = String.init<A>(reflecting:)();
  v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v24);

  *(v13 + 4) = v18;
  v19 = "Can't create NIBTSample for device: %s. No stableIdentifier.";
LABEL_12:
  _os_log_impl(&_mh_execute_header, v11, v12, v19, v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v14);

  return 0;
}

uint64_t BluetoothScanner.Device.acquireScanRateAssertion()()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v1(&v4);
  return v4;
}

void *BluetoothScannerDiscoveryEngineDevice.sample.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t BluetoothScannerDiscoveryEngineDevice.contact.getter()
{
  v1 = *(v0 + 32);
  outlined copy of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(v1, *(v0 + 40));
  return v1;
}

uint64_t BluetoothScannerDiscoveryEngineDevice.accountID.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t BluetoothScannerDiscoveryEngineDevice.init(stableIdentifier:hasInvitation:sample:contact:activityType:invitationCounter:accountID:routeType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12)
{
  *a9 = result;
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
  return result;
}

uint64_t NearbyAdvertisement.init(scannerID:device:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a2 + 32);
  if (!*(&v25 + 1))
  {
    v22 = v2;
    type metadata accessor for NearbyAdvertisement();
    v21 = static NearbyAdvertisement.meContactID.getter();
LABEL_6:
    (*(v6 + 16))(v9, a1, v5);
    v11 = *(a2 + 8);
    v19 = *a2;
    v23[0] = v19;
    v23[1] = v11;
    outlined init with copy of (String, Any)(&v25, &v24, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceV11ContactInfoOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceV11ContactInfoOSgMR);

    v20 = v5;
    v12._countAndFlagsBits = 45;
    v12._object = 0xE100000000000000;
    String.append(_:)(v12);
    v24 = *(a2 + 56);
    v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v13);

    v16[3] = *(a2 + 48);
    v17 = *(a2 + 64);
    v18 = a1;
    v14 = *(a2 + 72);
    LOBYTE(v23[0]) = *(a2 + 80);

    _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(v23, v23 + 1);

    v10 = dispatch thunk of NearbyAdvertisement.__allocating_init(scannerID:identifier:activityType:contactID:handle:displayName:userInfo:deviceColor:deviceModel:deviceID:)();
    outlined destroy of BluetoothScannerDiscoveryEngineDevice(a2);
    (*(v6 + 8))(v18, v20);
    return v10;
  }

  if (*(&v25 + 1) != 1)
  {
    v21 = v25;
    v22 = v2;
    goto LABEL_6;
  }

  outlined destroy of BluetoothScannerDiscoveryEngineDevice(a2);
  (*(v6 + 8))(a1, v5);
  return 0;
}

double BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)(a1, v6);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

__n128 BluetoothScanner.Device.cbDevice.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 64);
  v10[3] = *(v1 + 48);
  v10[4] = v4;
  v11 = *(v1 + 80);
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v10[2] = v3;
  outlined init with copy of (String, Any)(v10, v9, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  v6 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = *(v1 + 80);
  result = *v1;
  v8 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v8;
  return result;
}

__n128 property wrapper backing initializer of BluetoothScanner.Device.cbDevice@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

__n128 BluetoothScanner.Device.cbDevice.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v3;
  v8[4] = *(v1 + 64);
  v9 = *(v1 + 80);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  outlined destroy of Any?(v8, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMd, &_s44com_apple_SharePlay_NearbyInvitationsService14IgnoreHashableVyAA0H9EquatableVyAA37BluetoothScannerDiscoveryEngineDeviceVGGMR);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = *(a1 + 80);
  result = *a1;
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  return result;
}

uint64_t IgnoreHashable.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for IgnoreEquatable();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v2);
  return (*(*(v4 - 8) + 32))(a2, v8, v4);
}

void (*BluetoothScanner.Device.cbDevice.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Pseudonym.Configuration.featureID.modify();
  return BluetoothScanner.Device.cbDevice.modify;
}

void BluetoothScanner.Device.cbDevice.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t (*property wrapper backing initializer of BluetoothScanner.Device.acquireScanRateAssertionClosure(uint64_t a1, uint64_t a2))@<X0>(uint64_t *a1@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AssertionManager.Assertion?);
}

uint64_t (*BluetoothScanner.Device.acquireScanRateAssertionClosure.getter())()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  return partial apply for thunk for @escaping @callee_guaranteed () -> (@out AssertionManager.Assertion?);
}

__n128 BluetoothScanner.Device.init(device:acquireScanRateAssertionClosure:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  v13 = *(a1 + 64);
  LOBYTE(v14) = *(a1 + 80);
  v9 = *a1;
  v10 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(a4 + 32) = v11;
  *(a4 + 48) = v12;
  *(a4 + 64) = v13;
  result = v9;
  *a4 = v9;
  *(a4 + 16) = v10;
  *(a4 + 80) = v14;
  *(a4 + 88) = thunk for @escaping @callee_guaranteed () -> (@owned AssertionManager.Assertion?)partial apply;
  *(a4 + 96) = v7;
  return result;
}

uint64_t BluetoothScanner.scanner.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t BluetoothScanner.devices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v7 - v4;
  (*(v2 + 16))(v7 - v4, v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices, v1);
  CurrentSubject.wrappedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v7[1];
}

uint64_t BluetoothScanner.devices.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v9 - v6;
  (*(v4 + 16))(v9 - v6, v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices, v3);
  v9[1] = a1;
  CurrentSubject.wrappedValue.setter();
  return (*(v4 + 8))(v7, v3);
}

void (*BluetoothScanner.devices.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x40uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v6 = v5;
  v3[5] = v5;
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v5 + 64));
  }

  v3[6] = v7;
  (*(v6 + 16))();
  v3[7] = CurrentSubject.wrappedValue.modify();
  return BluetoothScanner.devices.modify;
}

void BluetoothScanner.devices.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t BluetoothScanner.$devices.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  (*(v2 + 16))(&v8 - v4, v0 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices, v1);
  v6 = CurrentSubject.projectedValue.getter();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t BluetoothScanner.maxScanAssertion.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t BluetoothScanner.maxScanAssertion.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t BluetoothScanner.__allocating_init(discoveryEngine:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ObjectType = swift_getObjectType();
  v9 = specialized BluetoothScanner.init(discoveryEngine:)(a1, v7, ObjectType, a2);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t BluetoothScanner.init(discoveryEngine:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = specialized BluetoothScanner.init(discoveryEngine:)(a1, v2, ObjectType, a2);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t closure #1 in BluetoothScanner.init(discoveryEngine:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(a2 + 24);
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.host);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v7, v8, "ScanRate assertions changed: %ld", v9, 0xCu);
    }

    ObjectType = swift_getObjectType();
    v11 = *(v5 + 32);
    v12 = v11(ObjectType, v5);
    v13 = *(v5 + 40);
    if (a1)
    {
      v13(v12 | 0x8000000000000000, ObjectType, v5);
      v14 = v11(ObjectType, v5) | 0x10000000000;
      v15 = 60;
    }

    else
    {
      v13(v12 & 0x7FFFFFFFFFFFFFFFLL, ObjectType, v5);
      v14 = v11(ObjectType, v5) & 0xFFFFFEFFFFFFFFFFLL;
      v15 = 20;
    }

    v13(v14, ObjectType, v5);
    (*(v5 + 16))(v15, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #2 in BluetoothScanner.init(discoveryEngine:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Log.host);
    outlined init with copy of BluetoothScannerDiscoveryEngineDevice(a1, v16);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    outlined destroy of BluetoothScannerDiscoveryEngineDevice(a1);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = *(a1 + 48);
      v16[2] = *(a1 + 32);
      v16[3] = v9;
      v16[4] = *(a1 + 64);
      v17 = *(a1 + 80);
      v10 = *(a1 + 16);
      v16[0] = *a1;
      v16[1] = v10;
      outlined init with copy of BluetoothScannerDiscoveryEngineDevice(a1, &v14);
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v15);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v5, v6, "Learned about updated BT device: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
    }

    (*(*v3 + 168))();
  }

  return result;
}

uint64_t closure #3 in BluetoothScanner.init(discoveryEngine:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v2;
  v29 = *(a1 + 64);
  v30 = *(a1 + 80);
  v3 = *(a1 + 16);
  v25 = *a1;
  v26 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Log.host);
    outlined init with copy of (String, Any)(a1, v23, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMR);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    outlined destroy of Any?(a1, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMR);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22 = v10;
      *v9 = 136315138;
      if (*(a1 + 8))
      {
        v19 = v28;
        v20 = v29;
        v21 = v30;
        v16 = v25;
        v17 = v26;
        v18 = v27;
        v23[2] = v27;
        v23[3] = v28;
        v23[4] = v29;
        v24 = v30;
        v23[0] = v25;
        v23[1] = v26;
        outlined init with copy of BluetoothScannerDiscoveryEngineDevice(v23, v15);
        v11 = String.init<A>(reflecting:)();
        v13 = v12;
      }

      else
      {
        v13 = 0xE300000000000000;
        v11 = 7104878;
      }

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, &v22);

      *(v9 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v7, v8, "Learned about BT device lost: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    (*(*v5 + 168))();
  }

  return result;
}

uint64_t closure #4 in BluetoothScanner.init(discoveryEngine:)()
{
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[4] = __swift_project_value_buffer(v1, static Log.host);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activating scanner.", v4, 2u);
  }

  v5 = v0[3];

  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v9 = *(v6 + 112);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v0[5] = v11;
  *v11 = v0;
  v11[1] = closure #4 in BluetoothScanner.init(discoveryEngine:);

  return v13(ObjectType, v6);
}

{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = closure #4 in BluetoothScanner.init(discoveryEngine:);
  }

  else
  {
    v3 = closure #4 in BluetoothScanner.init(discoveryEngine:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 32);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Activated scanner.", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

{
  v16 = v0;
  v1 = v0[6];
  v2 = v0[4];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v8 = String.init<A>(reflecting:)();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to activate the scanner. Reason: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
  }

  v11 = v0[6];
  swift_willThrow();
  v12 = v0[1];
  v13 = v0[6];

  return v12();
}

Swift::Void __swiftcall BluetoothScanner.handleDiscoveryEngineDevicesChanged()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  ObjectType = swift_getObjectType();
  v5 = (*(v2 + 56))(ObjectType, v2);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = _swiftEmptyArrayStorage;
    v10 = v5 + 32;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v10 + 16);
      v25 = *v10;
      v26 = v11;
      v12 = *(v10 + 32);
      v13 = *(v10 + 48);
      v14 = *(v10 + 64);
      v30 = *(v10 + 80);
      v28 = v13;
      v29 = v14;
      v27 = v12;
      v15 = swift_allocObject();
      swift_weakInit();
      v33 = v27;
      v34 = v28;
      v35 = v29;
      LOBYTE(v36) = v30;
      v31 = v25;
      v32 = v26;
      v16 = swift_allocObject();
      *(v16 + 16) = partial apply for closure #1 in closure #1 in BluetoothScanner.handleDiscoveryEngineDevicesChanged();
      *(v16 + 24) = v15;
      outlined init with copy of BluetoothScannerDiscoveryEngineDevice(&v25, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v18 = *(v9 + 2);
      v17 = *(v9 + 3);
      if (v18 >= v17 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v9);
      }

      ++v8;
      *(v9 + 2) = v18 + 1;
      v19 = &v9[104 * v18];
      v20 = v32;
      *(v19 + 2) = v31;
      *(v19 + 3) = v20;
      v21 = v33;
      v22 = v35;
      v23 = v36;
      *(v19 + 5) = v34;
      *(v19 + 6) = v22;
      *(v19 + 4) = v21;
      *(v19 + 14) = v23;
      *(v19 + 15) = thunk for @escaping @callee_guaranteed () -> (@owned AssertionManager.Assertion?)partial apply;
      *(v19 + 16) = v16;
      v10 += 88;
      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_11:

    (*(*v1 + 112))(v9);
  }
}

uint64_t closure #1 in closure #1 in BluetoothScanner.handleDiscoveryEngineDevicesChanged()()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = (*(*Strong + 136))();
  v2 = (*(*v1 + 160))(v1);

  return v2;
}

uint64_t BluetoothScanner.__allocating_init()()
{
  v1 = [objc_allocWithZone(CBDiscovery) init];
  [v1 setUseCase:131092];
  [v1 addDiscoveryType:21];
  v2 = *(v0 + 160);

  return v2(v1, &protocol witness table for CBDiscovery);
}

uint64_t BluetoothScanner.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 120);
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = *(v1 + 16);
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion);

  return v1;
}

uint64_t BluetoothScanner.__deallocating_deinit()
{
  v1 = v0;
  v2 = *(v0 + 2);
  v3 = *(v1 + 3);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 120);
  swift_unknownObjectRetain();
  v5(ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = *(v1 + 2);
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  (*(*(v8 - 8) + 8))(&v1[v7], v8);
  v9 = *&v1[OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion];

  v10 = *(*v1 + 48);
  v11 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t key path setter for IgnoreHashable.wrappedValue : <A>IgnoreHashable<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*(*(a3 + a4 - 8) - 8) + 64);
  __chkstk_darwin(a1);
  v6 = &v10 - v5;
  (*(v7 + 16))(&v10 - v5);
  v8 = type metadata accessor for IgnoreHashable();
  return IgnoreHashable.wrappedValue.setter(v6, v8);
}

char *CBDiscovery.devices.getter()
{
  v1 = [v0 discoveredDevices];
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
LABEL_31:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_32:
    v36 = _swiftEmptyArrayStorage;
    goto LABEL_33;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_32;
  }

LABEL_3:
  v4 = 0;
  v36 = _swiftEmptyArrayStorage;
  do
  {
    v5 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v4 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v8 = [v6 stableIdentifier];
      if (v8)
      {
        break;
      }

LABEL_6:

      ++v5;
      if (v4 == v3)
      {
        goto LABEL_33;
      }
    }

    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = [v7 accountID];
    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v16;

    v33 = ([v7 nearbyInfoV2Flags] & 4) != 0 || objc_msgSend(v7, "nearbyInfoV2InvitationCounter") != 0;
    v17 = [v7 nearbyInfoV2InvitationCounter];
    v31 = [v7 nearbyInfoV2DecryptedFlags];
    v35 = v15;
    v32 = v17;
    if (([v7 deviceFlags] & 0x80) != 0)
    {
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v18 = [v7 contactID];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v21;
        v30 = v20;
      }

      else
      {
        v29 = 1;
        v30 = 0;
      }
    }

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NIBluetoothSample, NIBluetoothSample_ptr);
    v22 = v7;
    v23 = NIBluetoothSample.init(with:)(v22);
    v28 = [v22 nearbyInfoV2InvitationRouteType];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
    }

    v25 = *(v36 + 2);
    v24 = *(v36 + 3);
    if (v25 >= v24 >> 1)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v36);
    }

    *(v36 + 2) = v25 + 1;
    v26 = &v36[88 * v25];
    *(v26 + 4) = v10;
    *(v26 + 5) = v12;
    v26[48] = v33;
    *(v26 + 49) = *v37;
    *(v26 + 13) = *&v37[3];
    *(v26 + 7) = v23;
    *(v26 + 8) = v30;
    *(v26 + 9) = v29;
    *(v26 + 20) = v31 & 1;
    *(v26 + 11) = v32;
    *(v26 + 12) = v35;
    *(v26 + 13) = v34;
    v26[112] = v28;
  }

  while (v4 != v3);
LABEL_33:

  return v36;
}

id key path setter for CBDiscovery.deviceLost : CBDiscovery(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BluetoothScannerDiscoveryEngineDevice) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(v3);
  return CBDiscovery.deviceLost.setter(v6, v5);
}

id CBDiscovery.deviceLost.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v9[4] = partial apply for closure #1 in CBDiscovery.deviceLost.setter;
    v9[5] = v6;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
    v9[3] = &block_descriptor_3;
    v7 = _Block_copy(v9);

    [v3 setDeviceLostHandler:v7];
    _Block_release(v7);
    return _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(a1);
  }

  else
  {

    return [v2 setDeviceFoundHandler:0];
  }
}

uint64_t closure #1 in CBDiscovery.deviceLost.setter(void *a1, void (*a2)(_BYTE *))
{
  specialized BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)(a1, v4);
  a2(v4);
  return outlined destroy of Any?(v4, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMR);
}

void (*CBDiscovery.deviceLost.modify(void *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v1;
  return CBDiscovery.deviceLost.modify;
}

void CBDiscovery.deviceLost.modify(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[8];
  if (a2)
  {
    if (v3)
    {
      v5 = v2[7];
      v6 = swift_allocObject();
      *(v6 + 16) = v3;
      *(v6 + 24) = v5;
      v2[4] = closure #1 in CBDiscovery.deviceLost.setterpartial apply;
      v2[5] = v6;
      *v2 = _NSConcreteStackBlock;
      v2[1] = 1107296256;
      v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
      v2[3] = &block_descriptor_24;
      v7 = _Block_copy(v2);
      v8 = v2[5];
      swift_retain_n();

      [v4 setDeviceLostHandler:v7];
      _Block_release(v7);
      _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v3);
    }

    else
    {
      [(*a1)[8] setDeviceFoundHandler:0];
    }

    v13 = v2[6];
    v14 = v2[7];
    goto LABEL_8;
  }

  if (v3)
  {
    v9 = v2[7];
    v10 = swift_allocObject();
    *(v10 + 16) = v3;
    *(v10 + 24) = v9;
    v2[4] = closure #1 in CBDiscovery.deviceLost.setterpartial apply;
    v2[5] = v10;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
    v2[3] = &block_descriptor_31;
    v11 = _Block_copy(v2);
    v12 = v2[5];

    [v4 setDeviceLostHandler:v11];
    _Block_release(v11);
    v13 = v3;
LABEL_8:
    _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v13);
    goto LABEL_9;
  }

  [(*a1)[8] setDeviceFoundHandler:0];
LABEL_9:

  free(v2);
}

id key path setter for CBDiscovery.deviceFound : CBDiscovery(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BluetoothScannerDiscoveryEngineDevice) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?(v3);
  return CBDiscovery.deviceFound.setter(v6, v5);
}

id CBDiscovery.deviceFound.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = a1;
    v7[4] = a2;
    v10[4] = partial apply for closure #1 in CBDiscovery.deviceFound.setter;
    v10[5] = v7;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
    v10[3] = &block_descriptor_40;
    v8 = _Block_copy(v10);

    [v3 setDeviceFoundHandler:v8];
    _Block_release(v8);
    return _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(a1);
  }

  else
  {

    return [v2 setDeviceFoundHandler:0];
  }
}

void closure #1 in CBDiscovery.deviceFound.setter(void *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v4 = a1;
  specialized BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)(v4, &v15);
  if (v16)
  {
    v22[0] = v15;
    v22[1] = v16;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v24 = v18;
    v23 = v17;
    a3(v22);
    outlined destroy of Any?(&v15, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceVSgMR);
  }

  else
  {
    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.host);
    v6 = v4;
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22[0] = v9;
      *v8 = 136315138;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CBDevice, CBDevice_ptr);
      v10 = v6;
      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v22);

      *(v8 + 4) = v13;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Couldn't generate device for CBDevice: %s, notifying as lost.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
    }

    else
    {
    }
  }
}

void (*CBDiscovery.deviceFound.modify(void *a1))(void ****a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = v1;
  return CBDiscovery.deviceFound.modify;
}

void CBDiscovery.deviceFound.modify(void ****a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  if (a2)
  {
    v5 = v2[7];
    v4 = v2[8];
    outlined copy of (@escaping @callee_guaranteed (@guaranteed String) -> (@owned String))?((*a1)[6]);
    CBDiscovery.deviceFound.setter(v3, v5);
    v6 = v2[6];
    v7 = v2[7];
LABEL_5:
    _sxq_q0_Ri_zRi0_zRi__Ri0__Ri_0_Ri0_0_r1_ly14NearbySessions22InvitationJoinResponseCSgs5Error_pSgytIsegnnr_SgWOe(v6);
    goto LABEL_6;
  }

  v8 = v2[8];
  if (v3)
  {
    v9 = v2[7];
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = v3;
    v11[4] = v9;
    v2[4] = closure #1 in CBDiscovery.deviceFound.setterpartial apply;
    v2[5] = v11;
    *v2 = _NSConcreteStackBlock;
    v2[1] = 1107296256;
    v2[2] = thunk for @escaping @callee_guaranteed (@guaranteed CBDevice) -> ();
    v2[3] = &block_descriptor_48;
    v12 = _Block_copy(v2);
    v13 = v2[5];

    [v8 setDeviceFoundHandler:v12];
    _Block_release(v12);
    v6 = v3;
    goto LABEL_5;
  }

  [v2[8] setDeviceFoundHandler:0];
LABEL_6:

  free(v2);
}

id (*CBDiscovery.scanRate.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = [v1 bleScanRate];
  return CBDiscovery.scanRate.modify;
}

id (*protocol witness for BluetoothScannerDiscoveryEngine.discoveryFlags.modify in conformance CBDiscovery(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 discoveryFlags];
  return protocol witness for BluetoothScannerDiscoveryEngine.discoveryFlags.modify in conformance CBDiscovery;
}

uint64_t (*protocol witness for BluetoothScannerDiscoveryEngine.deviceLost.modify in conformance CBDiscovery(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CBDiscovery.deviceLost.modify(v2);
  return protocol witness for BluetoothScannerDiscoveryEngine.deviceLost.modify in conformance CBDiscovery;
}

uint64_t (*protocol witness for BluetoothScannerDiscoveryEngine.deviceFound.modify in conformance CBDiscovery(void *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = CBDiscovery.deviceFound.modify(v2);
  return protocol witness for BluetoothScannerDiscoveryEngine.deviceFound.modify in conformance CBDiscovery;
}

void protocol witness for BluetoothScannerDiscoveryEngine.deviceLost.modify in conformance CBDiscovery(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for BluetoothScannerDiscoveryEngine.activate() in conformance CBDiscovery()
{
  *(v1 + 144) = v0;
  return _swift_task_switch(protocol witness for BluetoothScannerDiscoveryEngine.activate() in conformance CBDiscovery, 0, 0);
}

{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = protocol witness for BluetoothScannerDiscoveryEngine.activate() in conformance CBDiscovery;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccyyts5Error_pGMd, &_sSccyyts5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSError?) -> () with result type ();
  v0[13] = &block_descriptor_94;
  v0[14] = v2;
  [v1 activateWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
  }

  v3 = *(v1 + 8);

  return v3();
}

uint64_t outlined copy of BluetoothScannerDiscoveryEngineDevice.ContactInfo?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void specialized BluetoothScannerDiscoveryEngineDevice.init(cbDevice:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 stableIdentifier];
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 accountID];
  if (!v9)
  {

LABEL_6:

    v14 = 0;
    v8 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v13 = 0;
    goto LABEL_14;
  }

  v30 = v6;
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v12;
  v29 = v11;

  v13 = ([a1 nearbyInfoV2Flags] & 4) != 0 || objc_msgSend(a1, "nearbyInfoV2InvitationCounter") != 0;
  v23 = [a1 nearbyInfoV2InvitationCounter];
  v22 = [a1 nearbyInfoV2DecryptedFlags] & 1;
  if (([a1 deviceFlags] & 0x80) != 0)
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    v24 = [a1 contactID];
    if (v24)
    {
      v25 = v24;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v26;
    }

    else
    {
      v16 = 0;
      v17 = 1;
    }
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NIBluetoothSample, NIBluetoothSample_ptr);
  v27 = a1;
  v15 = NIBluetoothSample.init(with:)(v27);
  v18 = v23;
  v21 = [v27 nearbyInfoV2InvitationRouteType];

  v19 = v29;
  v14 = v30;
  v20 = v28;
LABEL_14:
  *a2 = v14;
  *(a2 + 8) = v8;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v22;
  *(a2 + 56) = v18;
  *(a2 + 64) = v19;
  *(a2 + 72) = v20;
  *(a2 + 80) = v21;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@owned AssertionManager.Assertion?)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@out AssertionManager.Assertion?)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1(&v4);
  return v4;
}

uint64_t specialized BluetoothScanner.init(discoveryEngine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMd, &_s14CopresenceCore14CurrentSubjectVySay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = v37 - v15;
  v17 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner__devices;
  v37[1] = _swiftEmptyArrayStorage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMR);
  CurrentSubject.init(wrappedValue:)();
  (*(v13 + 32))(a2 + v17, v16, v12);
  *(a2 + 16) = a1;
  *(a2 + 24) = a4;
  v18 = *(a4 + 16);
  swift_unknownObjectRetain();
  v18(20, a3, a4);
  v19 = swift_allocObject();
  *(v19 + 24) = a4;
  swift_unknownObjectWeakInit();
  type metadata accessor for AssertionManager();
  v20 = swift_allocObject();
  v21 = type metadata accessor for Lock();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();

  v20[4] = Lock.init()();
  v20[5] = 0;
  v20[2] = partial apply for closure #1 in BluetoothScanner.init(discoveryEngine:);
  v20[3] = v19;

  *(a2 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService16BluetoothScanner_maxScanAssertion) = v20;
  v24 = *(a2 + 16);
  v25 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = *(v25 + 96);
  swift_unknownObjectRetain();

  v28(partial apply for closure #2 in BluetoothScanner.init(discoveryEngine:), v27, ObjectType, v25);
  swift_unknownObjectRelease();

  v29 = *(a2 + 16);
  v30 = *(a2 + 24);
  v31 = swift_getObjectType();
  v32 = swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  v33 = *(v30 + 72);

  v33(partial apply for closure #3 in BluetoothScanner.init(discoveryEngine:), v32, v31, v30);
  swift_unknownObjectRelease();

  v34 = type metadata accessor for TaskPriority();
  (*(*(v34 - 8) + 56))(v11, 1, 1, v34);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v35[4] = a2;

  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v11, &async function pointer to partial apply for closure #4 in BluetoothScanner.init(discoveryEngine:), v35);

  return a2;
}

uint64_t get_enum_tag_for_layout_string_44com_apple_SharePlay_NearbyInvitationsService37BluetoothScannerDiscoveryEngineDeviceV11ContactInfoOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothScannerDiscoveryEngineDevice(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t storeEnumTagSinglePayload for BluetoothScannerDiscoveryEngineDevice(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothScannerDiscoveryEngineDevice.ContactInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for BluetoothScannerDiscoveryEngineDevice.ContactInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for BluetoothScannerDiscoveryEngineDevice.ContactInfo(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *destructiveInjectEnumTag for BluetoothScannerDiscoveryEngineDevice.ContactInfo(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for BluetoothScanner()
{
  result = type metadata singleton initialization cache for BluetoothScanner;
  if (!type metadata singleton initialization cache for BluetoothScanner)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for BluetoothScanner()
{
  type metadata accessor for CurrentSubject<[BluetoothScanner.Device]>();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CurrentSubject<[BluetoothScanner.Device]>()
{
  if (!lazy cache variable for type metadata for CurrentSubject<[BluetoothScanner.Device]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMd, &_sSay44com_apple_SharePlay_NearbyInvitationsService16BluetoothScannerC6DeviceVGMR);
    v0 = type metadata accessor for CurrentSubject();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CurrentSubject<[BluetoothScanner.Device]>);
    }
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BluetoothScanner.Device(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for BluetoothScanner.Device(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for IgnoreEquatable(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for IgnoreHashable(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for IgnoreEquatable();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IgnoreEquatable(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for IgnoreEquatable(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed BluetoothScannerDiscoveryEngineDevice) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v4;
  v7[4] = *(a1 + 64);
  v8 = *(a1 + 80);
  v5 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v5;
  return v2(v7);
}

uint64_t objectdestroy_36Tm(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t partial apply for closure #4 in BluetoothScanner.init(discoveryEngine:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return closure #4 in BluetoothScanner.init(discoveryEngine:)(a1, v4, v5, v6);
}

void key path setter for NearbyGroupHostManager.idsService : NearbyGroupHostManager(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 112);
  *(v3 + 112) = v2;
  v5 = v2;
}

id NearbyGroupHostManager.idsService.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);

  return v1;
}

void NearbyGroupHostManager.idsService.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t key path getter for NearbyGroupHostManager.groups : NearbyGroupHostManager@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for NearbyGroupHostManager.groups : NearbyGroupHostManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NearbyGroupHostManager.groups.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t NearbyGroupHostManager.groups.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*NearbyGroupHostManager.groups.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return NearbyInvitationAdvertiser.connections.modify;
}

uint64_t key path getter for NearbyGroupHostManager.$groups : NearbyGroupHostManager(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for NearbyGroupHostManager.$groups : NearbyGroupHostManager(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t NearbyGroupHostManager.$groups.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t NearbyGroupHostManager.$groups.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*NearbyGroupHostManager.$groups.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMd, &_s7Combine9PublishedV9PublisherVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0J9GroupHostCG_GMR);
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[12] = swift_coroFrameAlloc();
    v4[13] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[12] = malloc(*(v6 + 64));
    v4[13] = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager__groups;
  v4[14] = v8;
  v4[15] = v9;
  swift_beginAccess();
  v4[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return NearbyInvitationAdvertiser.$connections.modify;
}

uint64_t key path setter for NearbyGroupHostManager.groupStateListeners : NearbyGroupHostManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t NearbyGroupHostManager.groupStateListeners.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NearbyGroupHostManager.groupStateListeners.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t key path setter for NearbyGroupHostManager.idsMessageListenerTask : NearbyGroupHostManager(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

uint64_t NearbyGroupHostManager.idsMessageListenerTask.getter()
{
  v1 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t NearbyGroupHostManager.idsMessageListenerTask.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t NearbyGroupHostManager.__allocating_init(serviceName:)()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  NearbyGroupHostManager.init(serviceName:)();
  return v3;
}

void NearbyGroupHostManager.init(serviceName:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMd, &_s7Combine9PublishedVySDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0I9GroupHostCGGMR);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v25 - v9;
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager__groups;
  v25[1] = &_swiftEmptyDictionarySingleton;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostCGMd, &_sSDy10Foundation4UUIDV44com_apple_SharePlay_NearbyInvitationsService0G9GroupHostCGMR);
  Published.init(initialValue:)();
  (*(v7 + 32))(v1 + v11, v10, v6);
  *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners) = &_swiftEmptyDictionarySingleton;
  *(v1 + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask) = 0;
  v12 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_abcReporter;
  v13 = type metadata accessor for ABCReporter();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *(v1 + v12) = ABCReporter.init(domain:type:)();
  v16 = objc_allocWithZone(IDSService);
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 initWithService:v17];

  if (v18)
  {

    v19 = objc_allocWithZone(type metadata accessor for NearbyGroupHostIDSService());
    *(v1 + 112) = specialized NearbyGroupHostIDSService.init(idsService:)(v18, v19);
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v1;

    v22 = _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in NearbyGroupHostManager.init(serviceName:), v21);
    v23 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_idsMessageListenerTask;
    swift_beginAccess();
    v24 = *(v1 + v23);
    *(v1 + v23) = v22;
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in NearbyGroupHostManager.init(serviceName:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #1 in NearbyInvitationAdvertiser.stopAdvertising();

  return NearbyGroupHostManager.listenForEvents()();
}

uint64_t NearbyGroupHostManager.listenForEvents()()
{
  v1[15] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR) - 8) + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v4 = *(*(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v5 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent(0);
  v1[21] = v5;
  v6 = *(v5 - 8);
  v1[22] = v6;
  v7 = *(v6 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtSgMR);
  v1[28] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v1[29] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), v0, 0);
}

{
  v1 = v0[15];
  swift_beginAccess();
  v0[10] = *(*(v1 + 112) + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService25NearbyGroupHostIDSService_incomingMessages);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR);
  v2 = swift_allocObject();

  v3 = swift_slowAlloc();
  *(v2 + 16) = v3;
  *(v2 + 24) = _swiftEmptyArrayStorage;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  *(v2 + 72) = static Subscribers.Demand.none.getter();
  *v3 = 0;
  v0[11] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMd, &_s7Combine12AnyPublisherVy44com_apple_SharePlay_NearbyInvitationsService0H19GroupHostIDSServiceC12MessageEventO_AF0N7ContextVts5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<(NearbyGroupHostIDSService.MessageEvent, NearbyGroupHostIDSService.MessageContext), Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMd, &_s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AL0Q7ContextVts5NeverOG__GMR);
  Publisher.subscribe<A>(_:)();

  v0[9] = v2;
  lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type NearbyGroupHostManager and conformance NearbyGroupHostManager, type metadata accessor for NearbyGroupHostManager);

  return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), 0, 0);
}

{
  v1 = v0[9];
  v0[30] = v1;
  v2 = swift_task_alloc();
  v0[31] = v2;
  *(v2 + 16) = v0 + 9;
  v3 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];

  v4 = swift_task_alloc();
  v0[32] = v4;
  *v4 = v0;
  v4[1] = NearbyGroupHostManager.listenForEvents();
  v6 = v0[28];
  v5 = v0[29];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v5, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v2, _s44com_apple_SharePlay_NearbyInvitationsService18_PublisherElementsV8IteratorV4next6OutputQzSgyYaFyyYbXEfU_7Combine03AnyH0VyAA0E19GroupHostIDSServiceC12MessageEventO_AN0R7ContextVts5NeverOG_Tg5TA_0, v1, 0, 0, v6);
}

{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[30];
    v7 = v2[31];
    v8 = v2[15];

    return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), v8, 0);
  }
}

{
  v40 = v0;
  v1 = v0[29];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO_AC0K7ContextVtMR);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[9];

    if (one-time initialization token for host != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Log.host);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[15];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v39 = v10;
      *v9 = 136315138;
      v0[12] = v8;
      type metadata accessor for NearbyGroupHostManager();

      v11 = String.init<A>(reflecting:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v39);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v6, v7, "%s stopped listening for incoming messages. This shouldn't ever happen until dealloc.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
    }

    v14 = v0[29];
    v15 = v0[26];
    v16 = v0[27];
    v18 = v0[24];
    v17 = v0[25];
    v19 = v0[23];
    v21 = v0[19];
    v20 = v0[20];
    v23 = v0[17];
    v22 = v0[18];
    v38 = v0[16];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v26 = v0[27];
    v27 = *(v1 + *(v2 + 48));
    v0[33] = v27;
    outlined init with take of NearbyGroupHostIDSService.MessageEvent(v1, v26, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    v28 = voucher_copy();
    v0[34] = v28;
    if (v27)
    {
      v29 = v27;
    }

    v30 = v0[21];
    outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v0[27], v0[26], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = v0[26];
    if (EnumCaseMultiPayload == 1)
    {
      outlined destroy of NearbyGroupHostIDSService.MessageEvent(v32, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      v33 = v0[27];
      if (v28)
      {
        v34 = v28;

        outlined destroy of NearbyGroupHostIDSService.MessageEvent(v33, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      }

      else
      {
        outlined destroy of NearbyGroupHostIDSService.MessageEvent(v0[27], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      }

      return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), 0, 0);
    }

    else
    {
      outlined init with take of NearbyGroupHostIDSService.MessageEvent(v32, v0[20], type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
      v35 = swift_task_alloc();
      v0[35] = v35;
      *v35 = v0;
      v35[1] = NearbyGroupHostManager.listenForEvents();
      v36 = v0[20];
      v37 = v0[15];

      return NearbyGroupHostManager.handle(_:)(v36);
    }
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = NearbyGroupHostManager.listenForEvents();
  }

  else
  {
    v6 = NearbyGroupHostManager.listenForEvents();
  }

  return _swift_task_switch(v6, v5, 0);
}

{
  v1 = *(v0 + 272);
  outlined destroy of NearbyGroupHostIDSService.MessageEvent(*(v0 + 160), type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  if (v1)
  {
    v2 = *(v0 + 264);
    v3 = *(v0 + 216);
    v4 = *(v0 + 272);

    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v3, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  else
  {
    v5 = *(v0 + 264);
    outlined destroy of NearbyGroupHostIDSService.MessageEvent(*(v0 + 216), type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), 0, 0);
}

{
  v1 = v0[36];
  v2 = v0[19];
  v3 = v0[18];
  v4 = v0[15];
  outlined destroy of NearbyGroupHostIDSService.MessageEvent(v0[20], type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  static TaskPriority.background.getter();
  v5 = type metadata accessor for TaskPriority();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v1;
  outlined init with copy of (String, Any)(v2, v3, &_sScPSgMd, &_sScPSgMR);
  LODWORD(v3) = (*(v6 + 48))(v3, 1, v5);

  swift_errorRetain();

  v8 = v0[18];
  if (v3 == 1)
  {
    outlined destroy of Any?(v0[18], &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v6 + 8))(v8, v5);
  }

  v10 = v7[2];
  v9 = v7[3];
  swift_unknownObjectRetain();

  if (v10)
  {
    swift_getObjectType();
    v11 = dispatch thunk of Actor.unownedExecutor.getter();
    v13 = v12;
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = &async function pointer to partial apply for closure #1 in NearbyGroupHostManager.listenForEvents();
  *(v14 + 24) = v7;
  if (v13 | v11)
  {
    v0[2] = 0;
    v0[3] = 0;
    v0[4] = v11;
    v0[5] = v13;
  }

  v15 = v0[19];
  swift_task_create();
  outlined destroy of Any?(v15, &_sScPSgMd, &_sScPSgMR);

  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v16 = v0[36];
  v17 = v0[27];
  v18 = v0[25];
  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Log.host);
  outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v17, v18, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  swift_errorRetain();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = v0[25];
    v23 = v0[21];
    v24 = v0[22];
    v26 = v0[16];
    v25 = v0[17];
    v27 = swift_slowAlloc();
    v0[13] = swift_slowAlloc();
    *v27 = 136315394;
    outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v22, v25, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    (*(v24 + 56))(v25, 0, 1, v23);
    outlined init with copy of (String, Any)(v25, v26, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR);
    if ((*(v24 + 48))(v26, 1, v23) == 1)
    {
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    else
    {
      v33 = v0[23];
      v32 = v0[24];
      v34 = v0[21];
      outlined init with take of NearbyGroupHostIDSService.MessageEvent(v0[16], v32, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v32, v33, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
      v29 = String.init<A>(reflecting:)();
      v28 = v35;
      outlined destroy of NearbyGroupHostIDSService.MessageEvent(v32, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    }

    v36 = v0[36];
    v37 = v0[25];
    outlined destroy of Any?(v0[17], &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventOSgMR);
    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v37, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, v0 + 13);

    *(v27 + 4) = v38;
    *(v27 + 12) = 2080;
    v0[14] = v36;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v39 = String.init<A>(reflecting:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v0 + 13);

    *(v27 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v20, v21, "Failed to handle event %s, reason: %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v30 = v0[36];
    v31 = v0[25];

    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v31, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  v43 = v0[33];
  v42 = v0[34];
  v44 = v0[27];
  if (v42)
  {
    v45 = v42;

    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v44, type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  else
  {
    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v0[27], type metadata accessor for NearbyGroupHostIDSService.MessageEvent);
  }

  return _swift_task_switch(NearbyGroupHostManager.listenForEvents(), 0, 0);
}

uint64_t closure #1 in NearbyGroupHostManager.listenForEvents()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return _swift_task_switch(closure #1 in NearbyGroupHostManager.listenForEvents(), 0, 0);
}

uint64_t closure #1 in NearbyGroupHostManager.listenForEvents()()
{
  v1 = v0[4];
  v2 = *(v0[3] + OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_abcReporter);
  _StringGuts.grow(_:)(77);
  v3._countAndFlagsBits = 0xD00000000000004BLL;
  v3._object = 0x80000001000CEE30;
  String.append(_:)(v3);
  v0[2] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v4);

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v7 = dispatch thunk of ABCReporter.signature(subType:context:process:)();
  v0[5] = v7;

  if (v7)
  {
    v8 = *(&async function pointer to dispatch thunk of ABCReporter.report(with:duration:) + 1);
    v17 = (&async function pointer to dispatch thunk of ABCReporter.report(with:duration:) + async function pointer to dispatch thunk of ABCReporter.report(with:duration:));
    v9 = swift_task_alloc();
    v0[6] = v9;
    *v9 = v0;
    v9[1] = closure #1 in NearbyGroupHostManager.listenForEvents();
    v10.n128_u64[0] = 0;

    return v17(v7, v10);
  }

  else
  {
    if (one-time initialization token for abcReporter != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.abcReporter);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to generate signature for create new NearbyGroupHost failure", v15, 2u);
    }

    v16 = v0[1];

    return v16();
  }
}

{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  outlined init with copy of (String, Any)(a3, v27 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of Any?(v12, &_sScPSgMd, &_sScPSgMR);
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

uint64_t NearbyGroupHostManager.handle(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMR) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v4 = type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0);
  v2[6] = v4;
  v5 = *(v4 - 8);
  v2[7] = v5;
  v6 = *(v5 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHostManager.handle(_:), v1, 0);
}

uint64_t NearbyGroupHostManager.handle(_:)()
{
  v28 = v0;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[2];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.host);
  outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v2, v1, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = v0[6];
    v9 = v0[7];
    v11 = v0[4];
    v10 = v0[5];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v27 = v13;
    *v12 = 136315138;
    outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v7, v10, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
    (*(v9 + 56))(v10, 0, 1, v8);
    outlined init with copy of (String, Any)(v10, v11, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMR);
    if ((*(v9 + 48))(v11, 1, v8) == 1)
    {
      v14 = 0xE300000000000000;
      v15 = 7104878;
    }

    else
    {
      v16 = v0[8];
      v17 = v0[9];
      v18 = v0[6];
      outlined init with take of NearbyGroupHostIDSService.MessageEvent(v0[4], v17, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
      outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v17, v16, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
      v15 = String.init<A>(reflecting:)();
      v14 = v19;
      outlined destroy of NearbyGroupHostIDSService.MessageEvent(v17, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
    }

    v20 = v0[10];
    outlined destroy of Any?(v0[5], &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMd, &_s44com_apple_SharePlay_NearbyInvitationsService0E19GroupHostIDSServiceC12MessageEventO06RemoteH14InitializationVSgMR);
    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v20, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v27);

    *(v12 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received request to create group for initialization: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
  }

  else
  {

    outlined destroy of NearbyGroupHostIDSService.MessageEvent(v7, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  }

  v22 = swift_task_alloc();
  v0[11] = v22;
  *(v22 + 16) = *(v0 + 1);
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = NearbyGroupHostManager.handle(_:);
  v24 = v0[2];
  v25 = v0[3];

  return NearbyGroupHostManager.createGroup(id:generator:)(v24, &async function pointer to partial apply for closure #1 in NearbyGroupHostManager.handle(_:), v22);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v6 = v0[4];
  v5 = v0[5];

  v7 = v0[1];
  v8 = v0[13];

  return v7();
}

uint64_t NearbyGroupHostManager.handle(_:)(void *a1)
{
  v4 = *(*v2 + 96);
  v5 = *v2;
  v5[13] = v1;

  if (v1)
  {
    v6 = v5[3];

    return _swift_task_switch(NearbyGroupHostManager.handle(_:), v6, 0);
  }

  else
  {
    v8 = v5[10];
    v7 = v5[11];
    v10 = v5[8];
    v9 = v5[9];
    v11 = v5[4];
    v12 = v5[5];

    v13 = v5[1];

    return v13();
  }
}

uint64_t closure #1 in NearbyGroupHostManager.handle(_:)(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v4 = *(*(type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization(0) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(closure #1 in NearbyGroupHostManager.handle(_:), a2, 0);
}

uint64_t closure #1 in NearbyGroupHostManager.handle(_:)()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  type metadata accessor for NearbyGroupHost();
  outlined init with copy of NearbyGroupHostIDSService.MessageEvent(v3, v1, type metadata accessor for NearbyGroupHostIDSService.MessageEvent.RemoteGroupInitialization);
  swift_beginAccess();
  v4 = NearbyGroupHost.__allocating_init(remoteInitialization:idsService:localMemberToken:)(v1, *(v2 + 112), 0, 0);
  v5 = v0[7];

  v6 = v0[1];

  return v6(v4);
}

uint64_t NearbyGroupHostManager.removeGroup(groupID:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v35 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v33 - v9;
  if (one-time initialization token for host != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.host);
  v12 = *(v5 + 16);
  v36 = a1;
  v37 = v12;
  v12(v10, a1, v4);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39[0] = v34;
    *v15 = 136315394;
    v38 = v1;
    type metadata accessor for NearbyGroupHostManager();

    v16 = String.init<A>(reflecting:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v39);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    lazy protocol witness table accessor for type NearbyGroupHostManager and conformance NearbyGroupHostManager(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    (*(v5 + 8))(v10, v4);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, v39);

    *(v15 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s removing NearbyGroup id: %s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v5 + 8))(v10, v4);
  }

  v24 = v35;
  v23 = v36;
  v37(v35, v36, v4);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = static Published.subscript.modify();
  specialized Dictionary.subscript.setter(0, v24);
  v25(v39, 0);

  v26 = OBJC_IVAR____TtC44com_apple_SharePlay_NearbyInvitationsService22NearbyGroupHostManager_groupStateListeners;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (*(v27 + 16))
  {
    v28 = *(v2 + v26);

    v29 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
    if (v30)
    {
      v31 = *(*(v27 + 56) + 8 * v29);

      Task.cancel()();
    }

    else
    {
    }
  }

  v37(v24, v23, v4);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(0, v24);
  return swift_endAccess();
}

uint64_t NearbyGroupHostManager.createGroup(id:generator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = type metadata accessor for UUID();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v4[17] = *(v6 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy44com_apple_SharePlay_NearbyInvitationsService0H9GroupHostC5StateO_GMR);
  v4[21] = v7;
  v8 = *(v7 - 8);
  v4[22] = v8;
  v4[23] = *(v8 + 64);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[26] = swift_task_alloc();

  return _swift_task_switch(NearbyGroupHostManager.createGroup(id:generator:), v3, 0);
}