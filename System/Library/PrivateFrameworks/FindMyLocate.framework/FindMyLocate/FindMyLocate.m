unint64_t sub_1B7FB6CB8()
{
  result = qword_1ED8DD580;
  if (!qword_1ED8DD580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD580);
  }

  return result;
}

uint64_t Session.init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29[-v6];
  LOBYTE(v6) = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(v2 + 16) = 0;
  v10 = *(a1 + 24);
  *(v2 + 24) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 80) = v6;
  *(v2 + 88) = v8;
  *(v2 + 96) = v9;
  *(v2 + 104) = v10;
  v29[0] = v6;
  v30 = v8;
  v31 = v9;
  v32 = v10;
  v11 = _s18LocationConnectionCMa();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();

  *(v2 + 56) = sub_1B7FB7494(v29);
  v14 = _s20FriendshipConnectionCMa();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v2 + 40) = sub_1B7FB8A84();
  v17 = _s18SettingsConnectionCMa();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v2 + 48) = sub_1B7FB9160();
  v20 = _s15FenceConnectionCMa(0);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v2 + 32) = sub_1B7FBAE38();
  v23 = sub_1B80C92CC();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v24;
  v26 = sub_1B80A1D3C(0, 0, v7, &unk_1B80DC730, v25);
  os_unfair_lock_lock((v2 + 16));
  v27 = *(v2 + 24);

  *(v2 + 24) = v26;
  os_unfair_lock_unlock((v2 + 16));
  return v2;
}

{
  *(v2 + 16) = v1;
  *(v2 + 120) = *a1;
  *(v2 + 24) = *(a1 + 8);
  *(v2 + 40) = *(a1 + 24);
  return MEMORY[0x1EEE6DFA0](sub_1B7FCA7A4, 0, 0);
}

uint64_t sub_1B7FB6F4C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t _s18LocationConnectionCMa()
{
  result = qword_1ED8DD828;
  if (!qword_1ED8DD828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FB6FD8()
{
  sub_1B7FB7164();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B7FB71BC(319, &qword_1ED8DD610, &qword_1EBA66078, &qword_1B80D2C10);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B7FB71BC(319, &qword_1ED8DD608, &qword_1EBA66080, &unk_1B80D2C48);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B7FB7164()
{
  if (!qword_1ED8DDA98)
  {
    sub_1B80C8AAC();
    v0 = sub_1B80C946C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DDA98);
    }
  }
}

void sub_1B7FB71BC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1B80C946C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata accessor for LocationStreamChange()
{
  result = qword_1ED8DD9A0;
  if (!qword_1ED8DD9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FB725C()
{
  sub_1B7FB7F28();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1B7FB72C4()
{
  sub_1B7FB73DC();
  if (v0 <= 0x3F)
  {
    sub_1B7FB7434(319, qword_1ED8DD638, &type metadata for PlaceMark, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B7FB7434(319, &qword_1ED8DD630, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7FB73DC()
{
  if (!qword_1ED8DD568)
  {
    type metadata accessor for Location();
    v0 = sub_1B80C898C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DD568);
    }
  }
}

void sub_1B7FB7434(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B7FB7494(char *a1)
{
  v2 = v1;
  v4 = sub_1B80C8E9C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *a1;
  v7 = *(a1 + 1);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  swift_defaultActor_initialize();
  v10 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_serviceDescription;
  v11 = sub_1B80C8AAC();
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session) = 0;
  v12 = (v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationContinuation;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66078, &qword_1B80D2C10);
  (*(*(v14 - 8) + 56))(v2 + v13, 1, 1, v14);
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesNeedingReverseGeocoding) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection____lazy_storage___locationShifter) = 0;
  v15 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_reverseGeocoder;
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v2 + v15) = qword_1ED8DDA80;
  v16 = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_handlesForLocationRefreshing) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationForHandles) = v16;
  v17 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_locationRefreshWorkQueue;
  sub_1B80C8A4C();

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  *(v2 + v17) = sub_1B80C8A1C();
  v18 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_internalLocationSerializationQueue;
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  *(v2 + v18) = sub_1B80C8A1C();
  swift_weakInit();
  v19 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66080, &unk_1B80D2C48);
  (*(*(v20 - 8) + 56))(v2 + v19, 1, 1, v20);
  v21 = v2 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_origin;
  *v21 = v6;
  *(v21 + 8) = v7;
  *(v21 + 16) = v8;
  *(v21 + 24) = v9;
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v22 = sub_1B80C900C();
  __swift_project_value_buffer(v22, qword_1ED8DDF28);
  v23 = sub_1B80C8FEC();
  v24 = sub_1B80C941C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1B7FB5000, v23, v24, "Session LocationConnection init", v25, 2u);
    MEMORY[0x1B8CB8970](v25, -1, -1);
  }

  return v2;
}

uint64_t *sub_1B7FB7810()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  sub_1B80C8EBC();
  v4 = sub_1B80C8EDC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = type metadata accessor for ReverseGeocoder(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = ReverseGeocoder.init(preferredLocale:)(v3);
  qword_1ED8DDA80 = v8;
  return result;
}

uint64_t sub_1B7FB790C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FB7944()
{
  v0 = sub_1B80C8E2C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B7FB7A44();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7FB7A44()
{
  if (!qword_1ED8DDA88)
  {
    sub_1B80C8EDC();
    v0 = sub_1B80C946C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DDA88);
    }
  }
}

uint64_t *ReverseGeocoder.init(preferredLocale:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160) - 8) + 64);
  v5 = (MEMORY[0x1EEE9AC00])();
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = sub_1B80C8E9C();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  swift_defaultActor_initialize();
  sub_1B80C8DFC();
  v12 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_workItemQueue;
  sub_1B80C8A4C();
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  *(v1 + v12) = sub_1B80C8A1C();
  v13 = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerGeoHash) = MEMORY[0x1E69E7CC8];
  *(v1 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerIdentifier) = v13;
  *(v1 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_processedOperationsCount) = 0;
  *(v1 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_nonCoarseHorizontalAccuracyRequirement) = 0x4069000000000000;
  if (qword_1ED8DD980 != -1)
  {
    swift_once();
  }

  v14 = sub_1B80C900C();
  __swift_project_value_buffer(v14, qword_1ED8DE010);
  sub_1B7FB8448(a1, v9, &qword_1EBA65E00, &qword_1B80D2160);

  v15 = sub_1B80C8FEC();
  v16 = sub_1B80C941C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = a1;
    v31 = v18;
    v19 = v18;
    *v17 = 136315394;
    v20 = *v2;
    v21 = sub_1B80C9A3C();
    v23 = sub_1B7FB84FC(v21, v22, &v31);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2080;
    sub_1B7FB8448(v9, v7, &qword_1EBA65E00, &qword_1B80D2160);
    v24 = sub_1B80C90EC();
    v26 = v25;
    sub_1B7FB86D4(v9, &qword_1EBA65E00, &qword_1B80D2160);
    v27 = sub_1B7FB84FC(v24, v26, &v31);

    *(v17 + 14) = v27;
    _os_log_impl(&dword_1B7FB5000, v15, v16, "%s: initialized with preferred locale: %s", v17, 0x16u);
    swift_arrayDestroy();
    v28 = v19;
    a1 = v30;
    MEMORY[0x1B8CB8970](v28, -1, -1);
    MEMORY[0x1B8CB8970](v17, -1, -1);
  }

  else
  {

    sub_1B7FB86D4(v9, &qword_1EBA65E00, &qword_1B80D2160);
  }

  sub_1B7FB81AC(a1, v2 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale);
  return v2;
}

uint64_t sub_1B7FB7E40()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DE010);
  __swift_project_value_buffer(v0, qword_1ED8DE010);
  return sub_1B80C8FFC();
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

void sub_1B7FB7F28()
{
  if (!qword_1ED8DD588[0])
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED8DD588);
    }
  }
}

uint64_t type metadata accessor for Location()
{
  result = qword_1ED8DDAA0;
  if (!qword_1ED8DDAA0)
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

uint64_t sub_1B7FB8018(uint64_t result)
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

  result = sub_1B8086EC8(result, v12, 1, v3);
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1B7FB8150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B7FB81AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E00, &qword_1B80D2160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FB821C()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDF28);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDF28);
  if (qword_1ED8DD968 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DDFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B7FB82E4()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDFE0);
  __swift_project_value_buffer(v0, qword_1ED8DDFE0);
  return sub_1B80C8FFC();
}

uint64_t _s20FriendshipConnectionCMa()
{
  result = qword_1ED8DD6B8;
  if (!qword_1ED8DD6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FriendStreamChange()
{
  result = qword_1ED8DD9B0;
  if (!qword_1ED8DD9B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for Friend()
{
  result = qword_1ED8DDAB0;
  if (!qword_1ED8DDAB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7FB8448(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7FB84B0(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B7FB8FAC(a1, a2);
  sub_1B7FB8018(&unk_1F2FF9378);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1B7FB84FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B7FB85C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1B7FB8150(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1B7FB85C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1B7FB84B0(a5, a6);
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
    result = sub_1B80C956C();
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

uint64_t sub_1B7FB86D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1B7FB8734()
{
  sub_1B7FB7164();
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    sub_1B7FB71BC(319, &qword_1ED8DD620, &qword_1EBA65F08, &qword_1B80D2550);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_1B7FB71BC(319, &qword_1ED8DD618, &qword_1EBA65F10, &qword_1B80D2558);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B7FB88C0()
{
  result = type metadata accessor for Friend();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B7FB8924()
{
  sub_1B7FB8A1C();
  if (v0 <= 0x3F)
  {
    sub_1B808A31C(319, &qword_1ED8DD998);
    if (v1 <= 0x3F)
    {
      sub_1B808A31C(319, &qword_1ED8DD570);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7FB8A1C()
{
  if (!qword_1ED8DDAC0)
  {
    sub_1B80C8E2C();
    v0 = sub_1B80C946C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DDAC0);
    }
  }
}

uint64_t sub_1B7FB8A84()
{
  swift_defaultActor_initialize();
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_serviceDescription;
  v2 = sub_1B80C8AAC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_session) = 0;
  v3 = (v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_friendshipContinuation;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F08, &qword_1B80D2550);
  v6 = *(*(v5 - 8) + 56);
  v6(v0 + v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_rangingContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F10, &qword_1B80D2558);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_isSyncingContact) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_syncContinuations) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection____lazy_storage___sharedContactStore) = 0;
  swift_weakInit();
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection__friendsWithPrettyName) = 0;
  v6(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_internalFollowingContinuation, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers) = v9;
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings) = v9;
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowers) = v9;
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowings) = v9;
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_pendingOffers) = v9;
  return v0;
}

uint64_t _s18SettingsConnectionCMa()
{
  result = qword_1ED8DD780;
  if (!qword_1ED8DD780)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FB8CC4()
{
  sub_1B7FB7164();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1B7FB71BC(319, &qword_1ED8DD628, &qword_1EBA66170, &qword_1B80D3508);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1B7FB71BC(319, &qword_1ED8DD600, &qword_1EBA66178, &qword_1B80D3510);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1B7FB8E60()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673D8, &qword_1B80DC8D0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B7FB8E90()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673E0, &qword_1B80DC8D8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

void sub_1B7FB8EC0()
{
  sub_1B7FB7164();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B7FB8FAC(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B7FB90DC(v5, 0);
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

  result = sub_1B80C956C();
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
        v10 = sub_1B80C915C();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B7FB90DC(v10, 0);
        result = sub_1B80C951C();
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

void *sub_1B7FB90DC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66FB8, &qword_1B80D99F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1B7FB9160()
{
  swift_defaultActor_initialize();
  *(v0 + 120) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_serviceDescription;
  v2 = sub_1B80C8AAC();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_session) = 0;
  v3 = (v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDeviceContinuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66170, &qword_1B80D3508);
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_preferenceContinuation;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66178, &qword_1B80D3510);
  (*(*(v8 - 8) + 56))(v0 + v7, 1, 1, v8);
  swift_weakInit();
  return v0;
}

void sub_1B7FB92E8(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1B7FB9334(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B80C900C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B80C8FFC();
}

uint64_t sub_1B7FB942C()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDE78);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDE78);
  if (qword_1ED8DD948 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DDFB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B7FB94F4()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FB9604, v2, 0);
}

uint64_t sub_1B7FB9604()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B7FB96B0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(sub_1B80C8A5C() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBB594, v2, 0);
}

uint64_t sub_1B7FB9788(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B80C981C() & 1;
  }
}

uint64_t sub_1B7FB97E0()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FC2BE0;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B7FB987C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FB9D28, 0, 0);
}

void _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (MEMORY[0x1B8CB72B0]())
  {
    if (qword_1ED8DD6B0 != -1)
    {
      swift_once();
    }

    v2 = sub_1B80C900C();
    __swift_project_value_buffer(v2, qword_1ED8DDE50);
    oslog = sub_1B80C8FEC();
    v3 = sub_1B80C93DC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1B7FB5000, oslog, v3, "The system is under test, skipping entitlement check.", v4, 2u);
      MEMORY[0x1B8CB8970](v4, -1, -1);
    }
  }

  else
  {
    sub_1B80C8B3C();

    if (v24)
    {
      if (swift_dynamicCast() && (v21 & 1) != 0)
      {
        return;
      }
    }

    else
    {
      sub_1B8012D6C(&v22);
    }

    v19 = v1;
    if (qword_1ED8DD6B0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B80C900C();
    __swift_project_value_buffer(v5, qword_1ED8DDE50);
    v6 = sub_1B80C8FEC();
    v7 = sub_1B80C940C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315138;
      if (v19 == 1)
      {
        v10 = 0xD00000000000002FLL;
      }

      else
      {
        v10 = 0xD000000000000026;
      }

      v11 = ".findmylocate.friendshipservice";
      if (v19 == 1)
      {
        v11 = ".findmylocate.locationservice";
      }

      if (v19)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xD00000000000002DLL;
      }

      if (v19)
      {
        v13 = v11;
      }

      else
      {
        v13 = "kFMFGroupIdGroup";
      }

      v14 = sub_1B7FB84FC(v12, v13 | 0x8000000000000000, &v22);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_1B7FB5000, v6, v7, "Missing entitlement: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1B8CB8970](v9, -1, -1);
      MEMORY[0x1B8CB8970](v8, -1, -1);
    }

    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1B80C952C();

    v22 = 0xD000000000000015;
    v23 = 0x80000001B80CD6D0;
    if (v19 == 1)
    {
      v15 = 0xD00000000000002FLL;
    }

    else
    {
      v15 = 0xD000000000000026;
    }

    v16 = ".findmylocate.friendshipservice";
    if (v19 == 1)
    {
      v16 = ".findmylocate.locationservice";
    }

    if (v19)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0xD00000000000002DLL;
    }

    if (v19)
    {
      v18 = v16;
    }

    else
    {
      v18 = "kFMFGroupIdGroup";
    }

    MEMORY[0x1B8CB7A40](v17, v18 | 0x8000000000000000);

    sub_1B80C962C();
    __break(1u);
  }
}

uint64_t sub_1B7FB9D28()
{
  v1 = *(*(v0 + 48) + 48);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1B7FBA074;

  return sub_1B7FB9DC4(0, 0);
}

uint64_t sub_1B7FB9DC4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(sub_1B80C8E9C() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(sub_1B80C8A5C() - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBBE8C, v2, 0);
}

uint64_t sub_1B7FB9EC8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FB9FD8, v2, 0);
}

uint64_t sub_1B7FB9FD8()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1B7FBA074()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FC3428, 0, 0);
}

uint64_t sub_1B7FBA170(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v5 = *(*(sub_1B80C8A5C() - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v6 = sub_1B80C8AAC();
  v3[18] = v6;
  v7 = *(v6 - 8);
  v3[19] = v7;
  v8 = *(v7 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBC30C, v2, 0);
}

uint64_t sub_1B7FBA2C8()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBC6A4, 0, 0);
}

uint64_t sub_1B7FBA38C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B7FBA3EC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B7FBA4E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B7FBA5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B7FBA3EC;

  return sub_1B7FBC7E4(a1, v4, v5, v7);
}

uint64_t sub_1B7FBA698()
{
  v33 = sub_1B80C8E9C();
  v31 = *(v33 - 8);
  v1 = v31;
  v2 = *(v31 + 64);
  v3 = MEMORY[0x1EEE9AC00](v33);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v34 = *(v8 - 8);
  v35 = v8;
  v9 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v32 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB0, &qword_1B80D23C0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  sub_1B80C92DC();
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v20 = *(v0 + 16);
  v36 = v7;
  v37 = v11;
  os_unfair_lock_lock(v20 + 8);
  sub_1B7FC2CDC(&v20[4]);
  os_unfair_lock_unlock(v20 + 8);
  v21 = *(v1 + 16);
  v22 = v33;
  v21(v5, v7, v33);
  (*(v13 + 16))(v17, v19, v12);
  updated = type metadata accessor for Fence.UpdateStream(0);
  v24 = *(updated + 48);
  v25 = *(updated + 52);
  v26 = swift_allocObject();
  swift_weakInit();
  v21((v26 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id), v5, v22);
  swift_weakAssign();
  sub_1B80C930C();
  v27 = *(v13 + 8);
  v27(v17, v12);
  v28 = *(v31 + 8);
  v28(v5, v22);
  v27(v19, v12);
  v28(v7, v22);
  (*(v34 + 8))(v32, v35);
  return v26;
}

uint64_t sub_1B7FBAA18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E90, &unk_1B80D23A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA8, &qword_1B80D23B8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v23 - v13;
  v15 = sub_1B80C8E9C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, a2);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v21 = *(v20 - 8);
  (*(v21 + 16))(v14, a3, v20);
  (*(v21 + 56))(v14, 0, 1, v20);
  sub_1B7FBE720(v14, v18);
  v23[3] = *(a1 + 8);

  sub_1B80C92EC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B7FBAC90()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FBA3EC;

  return sub_1B7FC2CF8();
}

uint64_t sub_1B7FBAD64(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B80C8E2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7FBADA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7FBADF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7FBAE38()
{
  v1 = v0;
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_serviceDescription;
  v3 = sub_1B80C8AAC();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler);
  *v4 = 0;
  v4[1] = 0;
  swift_weakInit();
  *(v1 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_session) = 0;
  v5 = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager;
  type metadata accessor for FenceStreamManager();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v8 = sub_1B7FBD954(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EF0, &qword_1B80D2480);
  v9 = swift_allocObject();
  *(v9 + 32) = 0;
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v6 + 16) = v9;
  *(v1 + v5) = v6;
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v10 = sub_1B80C900C();
  __swift_project_value_buffer(v10, qword_1ED8DDF88);
  v11 = sub_1B80C8FEC();
  v12 = sub_1B80C941C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1B7FB5000, v11, v12, "Session FenceConnection init", v13, 2u);
    MEMORY[0x1B8CB8970](v13, -1, -1);
  }

  return v1;
}

uint64_t sub_1B7FBB000()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDF88);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDF88);
  if (qword_1ED8DD990 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DE028);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B7FBB0F4(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(sub_1B80C8A5C() - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBB1CC, v2, 0);
}

uint64_t sub_1B7FBB1CC()
{
  if (qword_1ED8DD848 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF28);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Starting LocationConnection", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);

  v11 = (v7 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler);
  v12 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler);
  v13 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_disconnectionHandler + 8);
  *v11 = v10;
  v11[1] = v9;
  sub_1B7FBE254(v10);
  sub_1B7FBE244(v12);
  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  *(v0 + 104) = v15;
  sub_1B80C8A6C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66098, &qword_1B80D2D08);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 40) = v17;
  *(v0 + 48) = v16;
  objc_msgSendSuper2((v0 + 40), sel_init);
  v18 = v15;
  v19 = [v14 interfaceWithProtocol_];
  sub_1B80C8A9C();
  v20 = sub_1B80C8AAC();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v6, 0, 1, v20);
  v22 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_serviceDescription;
  swift_beginAccess();
  sub_1B7FBDC54(v6, v7 + v22);
  swift_endAccess();
  sub_1B7FBE264(v7 + v22, v5);
  result = (*(v21 + 48))(v5, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v0 + 88);
    v25 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A0, &qword_1B80D2D10);
    v26 = sub_1B80C8B1C();
    *(v0 + 112) = v26;
    v27 = *(v25 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session);
    *(v25 + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session) = v26;

    v28 = *(MEMORY[0x1E699C828] + 4);
    v30 = (*MEMORY[0x1E699C828] + MEMORY[0x1E699C828]);
    v29 = swift_task_alloc();
    *(v0 + 120) = v29;
    *v29 = v0;
    v29[1] = sub_1B7FB94F4;

    return v30();
  }

  return result;
}

uint64_t sub_1B7FBB594()
{
  if (qword_1ED8DD6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE78);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Starting FriendshipConnection", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 88);
  v6 = *(v0 + 96);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);

  v11 = (v7 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler);
  v12 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler);
  v13 = *(v7 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_disconnectionHandler + 8);
  *v11 = v10;
  v11[1] = v9;
  sub_1B7FBE254(v10);
  sub_1B7FBE244(v12);
  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  *(v0 + 104) = v15;
  sub_1B80C8A6C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F38, &qword_1B80D2668);
  v17 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 40) = v17;
  *(v0 + 48) = v16;
  objc_msgSendSuper2((v0 + 40), sel_init);
  v18 = v15;
  v19 = [v14 interfaceWithProtocol_];
  sub_1B80C8A9C();
  v20 = sub_1B80C8AAC();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v6, 0, 1, v20);
  v22 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_serviceDescription;
  swift_beginAccess();
  sub_1B7FBDC54(v6, v7 + v22);
  swift_endAccess();
  sub_1B7FB8448(v7 + v22, v5, &qword_1EBA65EA0, &qword_1B80D23B0);
  result = (*(v21 + 48))(v5, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v0 + 88);
    v25 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65F40, &qword_1B80D2670);
    v26 = sub_1B80C8B1C();
    *(v0 + 112) = v26;
    v27 = *(v25 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_session);
    *(v25 + OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_session) = v26;

    sub_1B7FC1F6C();
    v28 = *(MEMORY[0x1E699C828] + 4);
    v30 = (*MEMORY[0x1E699C828] + MEMORY[0x1E699C828]);
    v29 = swift_task_alloc();
    *(v0 + 120) = v29;
    *v29 = v0;
    v29[1] = sub_1B7FB94F4;

    return v30();
  }

  return result;
}

uint64_t sub_1B7FBB9C4()
{
  if ([objc_opt_self() authorizationStatusForEntityType_] == 3)
  {
    sub_1B80C8B3C();
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
      v0 = swift_dynamicCast();
      if (v0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_1B8012D6C(v9);
    }

    sub_1B80C8B3C();
    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
      v0 = swift_dynamicCast();
      if (v0)
      {
LABEL_13:
        v6 = v8[4];
LABEL_16:
        v9[0] = 0xD000000000000016;
        v9[1] = 0x80000001B80CC7E0;
        MEMORY[0x1EEE9AC00](v0);
        v8[2] = v9;
        v5 = sub_1B7FBBC20(sub_1B7FBBD24, v8, v6);

        return v5 & 1;
      }
    }

    else
    {
      v0 = sub_1B8012D6C(v9);
    }

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C93EC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Client's Contact status is not authorized", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = 0;
  return v5 & 1;
}

uint64_t sub_1B7FBBC20(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B7FBBCCC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B80C981C() & 1;
  }
}

uint64_t sub_1B7FBBD44()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDEE8);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDEE8);
  if (qword_1ED8DD958 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DDFC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1B7FBBE0C()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDFC8);
  __swift_project_value_buffer(v0, qword_1ED8DDFC8);
  return sub_1B80C8FFC();
}

uint64_t sub_1B7FBBE8C()
{
  if (qword_1ED8DD790 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDEE8);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Starting SettingsConnection", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 104);
  v30 = *(v0 + 96);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v9 = *(v0 + 64);
  v8 = *(v0 + 72);
  v10 = *(v0 + 56);

  v11 = (v8 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler);
  v12 = *(v8 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler);
  v13 = *(v8 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_disconnectionHandler + 8);
  *v11 = v10;
  v11[1] = v9;
  sub_1B7FBE254(v10);
  sub_1B7FBE244(v12);
  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  *(v0 + 112) = v15;
  sub_1B80C8A6C();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66190, &qword_1B80D35C0);
  v17 = swift_allocObject();

  swift_defaultActor_initialize();
  swift_weakInit();
  sub_1B80C8A4C();
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  *(v17 + 120) = sub_1B80C8A1C();
  swift_weakAssign();
  *(v0 + 40) = v17;
  *(v0 + 48) = v16;
  objc_msgSendSuper2((v0 + 40), sel_init);

  v18 = v15;
  v19 = [v14 interfaceWithProtocol_];
  sub_1B80C8A9C();
  v20 = sub_1B80C8AAC();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v5, 0, 1, v20);
  v22 = OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_serviceDescription;
  swift_beginAccess();
  sub_1B7FBDC54(v5, v8 + v22);
  swift_endAccess();
  sub_1B7FBE264(v8 + v22, v30);
  result = (*(v21 + 48))(v30, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v0 + 96);
    v25 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66198, qword_1B80D35C8);
    v26 = sub_1B80C8B1C();
    *(v0 + 120) = v26;
    v27 = *(v25 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_session);
    *(v25 + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_session) = v26;

    v28 = *(MEMORY[0x1E699C828] + 4);
    v31 = (*MEMORY[0x1E699C828] + MEMORY[0x1E699C828]);
    v29 = swift_task_alloc();
    *(v0 + 128) = v29;
    *v29 = v0;
    v29[1] = sub_1B7FB9EC8;

    return v31();
  }

  return result;
}

uint64_t sub_1B7FBC30C()
{
  if (qword_1ED8DD928 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDF88);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Starting FenceConnection", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 168);
  v6 = *(v0 + 152);
  v27 = *(v0 + 144);
  v28 = *(v0 + 160);
  v7 = *(v0 + 136);
  v29 = *(v0 + 128);
  v9 = *(v0 + 112);
  v8 = *(v0 + 120);
  v10 = *(v0 + 104);

  v11 = (v8 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler);
  v13 = *(v8 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler);
  v12 = *(v8 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_disconnectionHandler + 8);
  *v11 = v10;
  v11[1] = v9;
  sub_1B7FBE254(v10);
  sub_1B7FBE244(v13);
  v14 = objc_opt_self();
  v15 = [v14 interfaceWithProtocol_];
  *(v0 + 176) = v15;
  sub_1B80C8A6C();
  v16 = _s15FenceConnectionC10TrampolineCMa();
  v17 = objc_allocWithZone(v16);
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 88) = v17;
  *(v0 + 96) = v16;
  objc_msgSendSuper2((v0 + 88), sel_init);
  v18 = v15;
  v19 = [v14 interfaceWithProtocol_];
  sub_1B80C8A9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65ED8, &qword_1B80D2450);
  v20 = *(v6 + 16);
  v20(v28, v5, v27);
  v21 = sub_1B80C8B1C();
  *(v0 + 184) = v21;
  v20(v29, v5, v27);
  (*(v6 + 56))(v29, 0, 1, v27);
  v22 = OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_serviceDescription;
  swift_beginAccess();
  sub_1B7FBDC54(v29, v8 + v22);
  swift_endAccess();
  v23 = *(v8 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_session);
  *(v8 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_session) = v21;

  v24 = *(MEMORY[0x1E699C828] + 4);
  v30 = (*MEMORY[0x1E699C828] + MEMORY[0x1E699C828]);
  v25 = swift_task_alloc();
  *(v0 + 192) = v25;
  *v25 = v0;
  v25[1] = sub_1B7FBE390;

  return v30();
}

uint64_t sub_1B7FBC6A4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_1B80C92CC();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  v6[5] = v2;
  v7 = sub_1B80A4870(0, 0, v1, &unk_1B80DC950, v6);
  os_unfair_lock_lock((v3 + 64));
  v8 = *(v3 + 72);

  *(v3 + 72) = v7;
  os_unfair_lock_unlock((v3 + 64));

  v9 = v0[1];

  return v9();
}

uint64_t sub_1B7FBC7E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_1B80C8A8C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673E8, &qword_1B80DC958) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673F0, &qword_1B80DC960);
  v4[11] = v9;
  v10 = *(v9 - 8);
  v4[12] = v10;
  v11 = *(v10 + 64) + 15;
  v4[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA673F8, &qword_1B80DC968);
  v4[14] = v12;
  v13 = *(v12 - 8);
  v4[15] = v13;
  v14 = *(v13 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FC2598, 0, 0);
}

uint64_t sub_1B7FBC9B8()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDE50);
  v1 = __swift_project_value_buffer(v0, qword_1ED8DDE50);
  if (qword_1ED8DD978 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED8DDFF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static Session.sharedSession(origin:)(_BYTE *a1)
{
  LOBYTE(v6) = *a1;
  RequestOrigin.init(_:)(&v6);
  v1 = v7;
  v2 = v8;
  v3 = v9;
  v4 = v10;
  if (qword_1ED8DD428 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED8DD430);
  sub_1B7FBCB98(&qword_1ED8DD438, v1, v2, v3, v4, &v6);
  os_unfair_lock_unlock(&dword_1ED8DD430);

  return v6;
}

unint64_t sub_1B7FBCB68()
{
  result = sub_1B7FBCCC8(MEMORY[0x1E69E7CC0]);
  dword_1ED8DD430 = 0;
  qword_1ED8DD438 = result;
  return result;
}

uint64_t sub_1B7FBCB98@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  if (*(*a1 + 16) && (v12 = sub_1B7FBD0C0(a2, a3, a4, a5), (v13 & 1) != 0) && (sub_1B7FC391C(*(v11 + 56) + 8 * v12, v21), sub_1B7FBCEF4(v21, v17), Strong = swift_weakLoadStrong(), result = sub_1B7FC3A34(v17), Strong))
  {
    *a6 = Strong;
  }

  else
  {
    v17[0] = a2;
    v18 = a3;
    v19 = a4;
    v20 = a5;
    type metadata accessor for Session();
    v16 = swift_allocObject();

    Session.init(_:)(v17);
    swift_weakInit();
    LOBYTE(v18) = 0;

    result = sub_1B7FBCE04(v17, a2, a3, a4, a5);
    *a6 = v16;
  }

  return result;
}

unint64_t sub_1B7FBCCC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F88, &qword_1B80D99B0);
    v3 = sub_1B80C966C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B7FB8448(v4, v13, &qword_1EBA66F90, &qword_1B80D99B8);
      result = sub_1B7FBD0C0(v13[0], v14, *(&v14 + 1), v15);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 32 * result;
      v8 = v15;
      v9 = v14;
      *v7 = v13[0];
      *(v7 + 8) = v9;
      *(v7 + 24) = v8;
      result = sub_1B7FBCEF4(&v16, v3[7] + 8 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7FBCE04(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 8))
  {
    sub_1B7FB86D4(a1, &qword_1EBA66108, &qword_1B80D2FC0);
    sub_1B8013B38(a2, a3, a4, a5, v14);

    return sub_1B7FB86D4(v14, &qword_1EBA66108, &qword_1B80D2FC0);
  }

  else
  {
    sub_1B7FBCEF4(a1, v14);
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v5;
    sub_1B7FBCF50(v14, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v13;
  }

  return result;
}

uint64_t sub_1B7FBCF50(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_1B7FBD0C0(a2, a3, a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      v23 = v15;
      sub_1B80929C0();
      v15 = v23;
      goto LABEL_8;
    }

    sub_1B7FBD184(v20, a6 & 1);
    v24 = *v7;
    v15 = sub_1B7FBD0C0(a2, a3, a4, a5);
    if ((v21 & 1) != (v25 & 1))
    {
LABEL_16:
      result = sub_1B80C986C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v7;
  if (v21)
  {
    v27 = v26[7] + 8 * v15;

    return sub_1B8034478(a1, v27);
  }

  else
  {
    sub_1B7FBE018(v15, a2, a3, a4, a5, a1, v26);
  }
}

unint64_t sub_1B7FBD0C0(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](a1);
  MEMORY[0x1B8CB8250](a2);
  sub_1B80C995C();
  if (a4)
  {
    sub_1B80C911C();
  }

  v10 = sub_1B80C997C();

  return sub_1B7FBD48C(a1, a2, a3, a4, v10);
}

uint64_t sub_1B7FBD184(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F88, &qword_1B80D99B0);
  v39 = a2;
  result = sub_1B80C965C();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 56);
      v23 = (*(v5 + 48) + 32 * v21);
      v24 = *v23;
      v25 = v23[1];
      v40 = v23[2];
      v26 = v23[3];
      v27 = v22 + 8 * v21;
      if (v39)
      {
        sub_1B7FBCEF4(v27, v41);
      }

      else
      {
        sub_1B7FC391C(v27, v41);
      }

      v28 = *(v8 + 40);
      sub_1B80C993C();
      MEMORY[0x1B8CB8250](v24);
      MEMORY[0x1B8CB8250](v25);
      sub_1B80C995C();
      if (v26)
      {
        sub_1B80C911C();
      }

      result = sub_1B80C997C();
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

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 32 * v16;
      *v17 = v24;
      *(v17 + 8) = v25;
      *(v17 + 16) = v40;
      *(v17 + 24) = v26;
      result = sub_1B7FBCEF4(v41, *(v8 + 56) + 8 * v16);
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_40;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_38;
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

LABEL_38:
  *v3 = v8;
  return result;
}

unint64_t sub_1B7FBD48C(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = a1;
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      if (*v15 == v12 && v15[1] == a2)
      {
        v17 = v15[3];
        if (v17)
        {
          if (a4)
          {
            v18 = v15[2] == a3 && v17 == a4;
            if (v18 || (sub_1B80C981C() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_1B7FBD58C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7FC253C;

  return sub_1B7FBDCC4(a1, v5);
}

uint64_t sub_1B7FBD644(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FBA3EC;

  return sub_1B7FBD6F8(a1, v4, v5, v6);
}

uint64_t sub_1B7FBD718()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v3 = *(Strong + 56);
    v0[7] = v3;

    return MEMORY[0x1EEE6DFA0](sub_1B7FBD7E4, v3, 0);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B7FBD7E4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBD864, 0, 0);
}

uint64_t sub_1B7FBD864()
{
  v1 = *(*(v0 + 48) + 40);
  *(v0 + 64) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FBDDBC, v1, 0);
}

uint64_t sub_1B7FBD8DC()
{
  v1 = *(*(v0 + 48) + 48);
  *(v0 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FBDE40, v1, 0);
}

unint64_t sub_1B7FBD954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F78, &qword_1B80D99A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F80, &qword_1B80DAC80);
    v8 = sub_1B80C966C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B7FB8448(v10, v6, &qword_1EBA66F78, &qword_1B80D99A8);
      result = sub_1B7FBEB64(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1B80C8E9C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B7FBDBB8()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDFB0);
  __swift_project_value_buffer(v0, qword_1ED8DDFB0);
  return sub_1B80C8FFC();
}

uint64_t sub_1B7FBDC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FBDCC4(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FBA4E0;

  return v7(a1);
}

uint64_t sub_1B7FBDDBC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBD8DC, 0, 0);
}

uint64_t sub_1B7FBDE40()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBDEC4, 0, 0);
}

uint64_t sub_1B7FBDEC4()
{
  v1 = *(*(v0 + 48) + 32);
  *(v0 + 80) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FBDF3C, v1, 0);
}

uint64_t sub_1B7FBDF3C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBE1A8, 0, 0);
}

unint64_t sub_1B7FBDFC4()
{
  result = qword_1ED8DD448;
  if (!qword_1ED8DD448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD448);
  }

  return result;
}

uint64_t sub_1B7FBE018(unint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a7[6] + 32 * a1;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  result = sub_1B7FBCEF4(a6, a7[7] + 8 * a1);
  v10 = a7[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v12;
  }

  return result;
}

uint64_t sub_1B7FBE090(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FC227C, v3, 0);
}

uint64_t sub_1B7FBE1A8()
{
  v1 = *(*(v0 + 48) + 56);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1B7FC1DD4;

  return sub_1B7FBB0F4(0, 0);
}

uint64_t sub_1B7FBE244(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7FBE254(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7FBE264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA0, &qword_1B80D23B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B7FBE2D4()
{
  sub_1B7FBE340();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B7FBE340()
{
  if (!qword_1EBA65930)
  {
    v0 = sub_1B80C933C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBA65930);
    }
  }
}

uint64_t sub_1B7FBE390()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *v0;

  v4 = *(MEMORY[0x1E699C818] + 4);
  v8 = (*MEMORY[0x1E699C818] + MEMORY[0x1E699C818]);
  v5 = swift_task_alloc();
  *(v1 + 200) = v5;
  *v5 = v3;
  v5[1] = sub_1B7FBE090;
  v6 = *(v1 + 184);

  return v8();
}

uint64_t sub_1B7FBE4E4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 120) = v4;
  *v4 = v3;
  v4[1] = sub_1B7FC2440;
  v5 = *(v1 + 48);

  return sub_1B7FBA2C8();
}

uint64_t sub_1B7FBE624()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FC2994, 0, 0);
}

uint64_t sub_1B7FBE720(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EA8, &qword_1B80D23B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - v12;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_1B7FB86D4(a1, &qword_1EBA65EA8, &qword_1B80D23B8);
    sub_1B7FE1BFC(a2, v8);
    v14 = sub_1B80C8E9C();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1B7FB86D4(v8, &qword_1EBA65EA8, &qword_1B80D23B8);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1B7FBE954(v13, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1B80C8E9C();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1B7FBE954(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B80C8E9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1B7FBEB64(a2);
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
      sub_1B8091CFC();
      goto LABEL_7;
    }

    sub_1B7FBEEB8(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1B7FBEB64(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1B7FBF388(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1B80C986C();
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
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

unint64_t sub_1B7FBEB64(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B80C8E9C();
  sub_1B7FDAA98(&qword_1EBA65A68, MEMORY[0x1E69695A8]);
  v5 = sub_1B80C904C();

  return sub_1B7FBECF8(a1, v5);
}

uint64_t sub_1B7FBEBFC()
{
  v1[2] = v0;
  v2 = type metadata accessor for FenceClientRequest(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for FenceResponse(0);
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FBFEA0, v0, 0);
}

unint64_t sub_1B7FBECF8(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B80C8E9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
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
      sub_1B7FDAA98(&qword_1EBA65DB0, MEMORY[0x1E69695A8]);
      v16 = sub_1B80C908C();
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

uint64_t sub_1B7FBEEB8(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v45 - v8;
  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F80, &qword_1B80DAC80);
  v52 = a2;
  result = sub_1B80C965C();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_1B7FBADF0(&qword_1EBA65A68, MEMORY[0x1E69695A8]);
      result = sub_1B80C904C();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1B7FBF388(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B80C8E9C();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void sub_1B7FBF4A8()
{
  type metadata accessor for Fence.ID(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Fence.Variant(319);
    if (v1 <= 0x3F)
    {
      sub_1B7FBF844(319, &qword_1ED8DBC10, &type metadata for PersonHandle, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B7FBF96C(319, &qword_1ED8DDAC0, MEMORY[0x1E6969530]);
        if (v3 <= 0x3F)
        {
          sub_1B80C8E2C();
          if (v4 <= 0x3F)
          {
            sub_1B7FBF96C(319, &qword_1ED8DDA90, MEMORY[0x1E69695A8]);
            if (v5 <= 0x3F)
            {
              sub_1B7FBF844(319, &qword_1ED8DD578, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
              if (v6 <= 0x3F)
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

uint64_t sub_1B7FBF664()
{
  result = sub_1B80C8E9C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7FBF730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  result = a5(319);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B7FBF798()
{
  result = sub_1B80C8FCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B7FBF844(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1B7FBF894()
{
  v0 = sub_1B80C8E9C();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B7FBE340();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B7FBF96C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B80C946C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B7FBF9C0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for Fence.UpdateStream.AsyncIterator(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

void sub_1B7FBFA24()
{
  if (!qword_1ED8DBF38)
  {
    v0 = type metadata accessor for Fence.ID(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DBF38);
    }
  }
}

void sub_1B7FBFA6C()
{
  if (!qword_1ED8DC360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBA65FD0, &unk_1B80D1920);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED8DC360);
    }
  }
}

uint64_t sub_1B7FBFAF8(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67498, qword_1B80DD250);
  *v4 = v1;
  v4[1] = sub_1B7FBA4E0;

  return MEMORY[0x1EEE6D9D0](a1, v5);
}

void sub_1B7FBFBD4()
{
  if (!qword_1ED8DBF40[0])
  {
    type metadata accessor for Fence.ID(255);
    type metadata accessor for Fence.TriggerPosition(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED8DBF40);
    }
  }
}

uint64_t sub_1B7FBFC48()
{
  result = sub_1B7FBFCCC(319, &qword_1ED8DBBE8, 0x1E6985C40);
  if (v1 <= 0x3F)
  {
    result = sub_1B80C8E2C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B7FBFCCC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_1B7FBFD34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B7FBFD98()
{
  type metadata accessor for Fence(319);
  if (v0 <= 0x3F)
  {
    sub_1B7FBFD34(319, &qword_1ED8DBC08, type metadata accessor for Fence, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B7FBFD34(319, &qword_1ED8DBD28, type metadata accessor for Fence.TriggerID, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B7FBFEA0()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_1B7FC74E8;
  v4 = v0[8];
  v5 = v0[4];
  v6 = v0[2];

  return sub_1B7FBFF48(v4, v5);
}

uint64_t sub_1B7FBFF48(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1B7FBFF94, v2, 0);
}

uint64_t sub_1B7FBFF94()
{
  v1 = v0[3].i64[0];
  v2 = swift_task_alloc();
  v0[3].i64[1] = v2;
  v2[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2[2].i64[0] = v1;
  v3 = *(MEMORY[0x1E699C830] + 4);
  v4 = swift_task_alloc();
  v0[4].i64[0] = v4;
  v5 = type metadata accessor for FenceResponse(0);
  *v4 = v0;
  v4[1] = sub_1B7FC73AC;
  v6 = v0[1].i64[1];

  return MEMORY[0x1EEE04418](v6, 0x75716552656B616DLL, 0xEF293A5F28747365, sub_1B7FC0778, v2, v5);
}

uint64_t sub_1B7FC0094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(type metadata accessor for FenceClientRequest(0) - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00]();
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v12 = &v17 - v11;
  v13 = sub_1B80C92CC();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1B7FC0784(a3, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FenceClientRequest);
  v14 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a1;
  sub_1B7FC07EC(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for FenceClientRequest);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1B80A1D3C(0, 0, v12, &unk_1B80D2448, v15);
}

uint64_t sub_1B7FC0290()
{
  v1 = *(type metadata accessor for FenceClientRequest(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = &v0[v3];
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v14 = *(v8 + 1);

        v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC8, &unk_1B80D2400) + 48);
        v16 = sub_1B80C8E2C();
        v17 = *(v16 - 8);
        if (!(*(v17 + 48))(&v8[v15], 1, v16))
        {
          (*(v17 + 8))(&v8[v15], v16);
        }
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v10 = sub_1B80C8E9C();
        (*(*(v10 - 8) + 8))(&v0[v3], v10);
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB8, &unk_1B80DEEA0) + 48);
        type metadata accessor for Fence.TriggerPosition(0);
        v12 = swift_getEnumCaseMultiPayload();
        if (v12 == 2)
        {
          v46 = sub_1B80C8E2C();
          (*(*(v46 - 8) + 8))(&v8[v11], v46);
        }

        else if (v12 <= 1)
        {
        }
      }

      goto LABEL_20;
    }

LABEL_10:
    v13 = sub_1B80C8E9C();
    (*(*(v13 - 8) + 8))(&v0[v3], v13);
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      goto LABEL_20;
    }

    goto LABEL_10;
  }

  v18 = sub_1B80C8E9C();
  v49 = *(v18 - 8);
  v50 = v18;
  v48 = *(v49 + 8);
  v48(&v0[v3]);
  v19 = type metadata accessor for Fence(0);
  v20 = *&v8[v19[5] + 8];

  v21 = &v8[v19[8]];
  type metadata accessor for Fence.Variant(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v22 = *(type metadata accessor for Fence.Schedule(0) + 28);
    v23 = sub_1B80C8FCC();
    (*(*(v23 - 8) + 8))(&v21[v22], v23);
  }

  v24 = &v8[v19[11]];
  v25 = *(v24 + 1);

  v26 = *(v24 + 3);

  v27 = *(v24 + 5);

  v28 = *(v24 + 7);

  v29 = *(v24 + 9);

  v30 = *(v24 + 11);

  v31 = *(v24 + 12);

  v32 = *(v24 + 13);

  v33 = *(v24 + 15);

  v34 = *(v24 + 17);

  v35 = *(v24 + 19);

  v36 = *(v24 + 21);

  v37 = *(v24 + 23);

  v38 = *&v8[v19[12]];

  v39 = v19[13];
  v40 = sub_1B80C8E2C();
  v41 = *(v40 - 8);
  v42 = (*(v41 + 48))(&v8[v39], 1, v40);
  v43 = *(v41 + 8);
  if (!v42)
  {
    v43(&v8[v39], v40);
  }

  v43(&v8[v19[14]], v40);
  v44 = v19[15];
  if (!(*(v49 + 48))(&v8[v44], 1, v50))
  {
    (v48)(&v8[v44], v50);
  }

  v45 = *&v8[v19[16] + 8];

LABEL_20:

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B7FC0784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7FC07EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7FC0854(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7FC08BC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_session);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1B7FC0930()
{
  v31 = v0;
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[8];
  v4 = sub_1B80C8CEC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1B80C8CDC();
  type metadata accessor for FenceClientRequest(0);
  sub_1B7FC0854(&qword_1EBA65A08, type metadata accessor for FenceClientRequest);
  v7 = sub_1B80C8CCC();
  if (v1)
  {

    swift_unknownObjectRelease();
    if (qword_1ED8DD928 != -1)
    {
      swift_once();
    }

    v9 = sub_1B80C900C();
    __swift_project_value_buffer(v9, qword_1ED8DDF88);
    v10 = v1;
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93FC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v30[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_1B7FB84FC(0x75716552656B616DLL, 0xEF293A5F28747365, v30);
      *(v13 + 12) = 2082;
      v0[10] = v1;
      v15 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
      v16 = sub_1B80C90EC();
      v18 = sub_1B7FB84FC(v16, v17, v30);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "%{public}s error %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CB8970](v14, -1, -1);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    v19 = v0[12];
    v0[9] = v1;
    sub_1B80C8ACC();
  }

  else
  {
    v20 = v0[14];
    v21 = v0[12];
    v22 = v7;
    v23 = v8;
    v24 = sub_1B80C8D1C();
    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v20;
    v0[6] = sub_1B7FC5D78;
    v0[7] = v25;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1B7FC5CCC;
    v0[5] = &block_descriptor_1;
    v26 = _Block_copy(v0 + 2);
    v27 = v0[7];

    [v3 request:v24 completion:v26];
    _Block_release(v26);

    sub_1B7FC3CCC(v22, v23);

    swift_unknownObjectRelease();
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_1B7FC0CC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t FenceClientRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67748, &qword_1B80DEE50);
  v104 = *(v2 - 8);
  v105 = v2;
  v3 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v101 = &v82 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67750, &qword_1B80DEE58);
  v99 = *(v5 - 8);
  v100 = v5;
  v6 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67758, &qword_1B80DEE60);
  v110 = *(v8 - 8);
  v111 = v8;
  v9 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v108 = &v82 - v10;
  v82 = type metadata accessor for Fence.TriggerPosition(0);
  v11 = *(*(v82 - 8) + 64);
  MEMORY[0x1EEE9AC00](v82);
  v109 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67760, &unk_1B80DEE68);
  v106 = *(v13 - 8);
  v107 = v13;
  v14 = *(v106 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v103 = &v82 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v102 = &v82 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67768, &qword_1B80DEE78);
  v95 = *(v96 - 8);
  v19 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v82 - v20;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67770, &qword_1B80DEE80);
  v90 = *(v91 - 8);
  v21 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v82 - v22;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67778, &qword_1B80DEE88);
  v92 = *(v93 - 8);
  v23 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v82 - v24;
  v112 = type metadata accessor for Fence.ID(0);
  v25 = *(*(v112 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v112);
  v97 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v87 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v86 = &v82 - v30;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67780, &qword_1B80DEE90);
  v84 = *(v85 - 8);
  v31 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v33 = &v82 - v32;
  v83 = type metadata accessor for Fence(0);
  v34 = *(*(v83 - 8) + 64);
  MEMORY[0x1EEE9AC00](v83);
  v36 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for FenceClientRequest(0);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v82 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67788, &qword_1B80DEE98);
  v115 = *(v41 - 8);
  v42 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v82 - v43;
  v45 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC38C8();
  v114 = v44;
  sub_1B80C99DC();
  sub_1B7FC3978(v113, v40, type metadata accessor for FenceClientRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      v66 = v114;
      if (EnumCaseMultiPayload == 6)
      {
        LOBYTE(v117) = 6;
        sub_1B7FC39E0();
        v67 = v98;
        sub_1B80C974C();
        v69 = v99;
        v68 = v100;
      }

      else
      {
        LOBYTE(v117) = 7;
        sub_1B80C35A8();
        v67 = v101;
        sub_1B80C974C();
        v69 = v104;
        v68 = v105;
      }

      (*(v69 + 8))(v67, v68);
      return (*(v115 + 8))(v66, v41);
    }

    else
    {
      v51 = v41;
      v52 = v114;
      if (EnumCaseMultiPayload == 4)
      {
        v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB8, &unk_1B80DEEA0) + 48);
        v54 = v97;
        sub_1B7FC5290(v40, v97, type metadata accessor for Fence.ID);
        v55 = v109;
        sub_1B7FC5290(v40 + v53, v109, type metadata accessor for Fence.TriggerPosition);
        LOBYTE(v117) = 5;
        sub_1B80C35FC();
        v56 = v108;
        sub_1B80C974C();
        LOBYTE(v117) = 0;
        sub_1B7FCA6E0(&qword_1EBA66AD0, type metadata accessor for Fence.ID);
        v57 = v111;
        v58 = v116;
        sub_1B80C97DC();
        if (!v58)
        {
          LOBYTE(v117) = 1;
          sub_1B7FCA6E0(&qword_1EBA677A0, type metadata accessor for Fence.TriggerPosition);
          sub_1B80C97DC();
        }

        (*(v110 + 8))(v56, v57);
        sub_1B80C37F4(v55, type metadata accessor for Fence.TriggerPosition);
        sub_1B80C37F4(v54, type metadata accessor for Fence.ID);
        return (*(v115 + 8))(v52, v51);
      }

      else
      {
        LOBYTE(v117) = 2;
        sub_1B80C36F8();
        v73 = v88;
        sub_1B80C974C();
        (*(v90 + 8))(v73, v91);
        return (*(v115 + 8))(v52, v41);
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v60 = v87;
        sub_1B7FC5290(v40, v87, type metadata accessor for Fence.ID);
        LOBYTE(v117) = 3;
        sub_1B80C36A4();
        v61 = v94;
        v62 = v114;
        sub_1B80C974C();
        sub_1B7FCA6E0(&qword_1EBA66AD0, type metadata accessor for Fence.ID);
        v63 = v96;
        sub_1B80C97DC();
        (*(v95 + 8))(v61, v63);
        sub_1B80C37F4(v60, type metadata accessor for Fence.ID);
        v64 = *(v115 + 8);
        v65 = v62;
      }

      else
      {
        v75 = *v40;
        v74 = v40[1];
        v76 = v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC8, &unk_1B80D2400) + 48);
        v77 = v102;
        sub_1B7FC8F2C(v76, v102, &unk_1EBA65FD0, &unk_1B80D1920);
        LOBYTE(v117) = 4;
        sub_1B80C3650();
        v78 = v103;
        v79 = v114;
        sub_1B80C974C();
        v117 = v75;
        v118 = v74;
        v119 = 0;
        sub_1B807F090();
        v80 = v107;
        v81 = v116;
        sub_1B80C97DC();
        if (v81)
        {
          (*(v106 + 8))(v78, v80);
          sub_1B7FB86D4(v77, &unk_1EBA65FD0, &unk_1B80D1920);
          (*(v115 + 8))(v79, v41);
        }

        LOBYTE(v117) = 1;
        sub_1B80C8E2C();
        sub_1B7FCA6E0(&qword_1ED8DC390, MEMORY[0x1E6969530]);
        sub_1B80C977C();
        (*(v106 + 8))(v78, v80);
        sub_1B7FB86D4(v77, &unk_1EBA65FD0, &unk_1B80D1920);
        v64 = *(v115 + 8);
        v65 = v79;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v70 = v86;
        sub_1B7FC5290(v40, v86, type metadata accessor for Fence.ID);
        LOBYTE(v117) = 1;
        sub_1B80C374C();
        v71 = v89;
        v47 = v114;
        sub_1B80C974C();
        sub_1B7FCA6E0(&qword_1EBA66AD0, type metadata accessor for Fence.ID);
        v72 = v93;
        sub_1B80C97DC();
        (*(v92 + 8))(v71, v72);
        v49 = type metadata accessor for Fence.ID;
        v50 = v70;
      }

      else
      {
        sub_1B7FC5290(v40, v36, type metadata accessor for Fence);
        LOBYTE(v117) = 0;
        sub_1B80C37A0();
        v47 = v114;
        sub_1B80C974C();
        sub_1B7FCA6E0(&qword_1EBA65998, type metadata accessor for Fence);
        v48 = v85;
        sub_1B80C97DC();
        (*(v84 + 8))(v33, v48);
        v49 = type metadata accessor for Fence;
        v50 = v36;
      }

      sub_1B80C37F4(v50, v49);
      v64 = *(v115 + 8);
      v65 = v47;
    }

    return v64(v65, v41);
  }
}

unint64_t sub_1B7FC1C70()
{
  result = qword_1ED8DC188;
  if (!qword_1ED8DC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC188);
  }

  return result;
}

unint64_t sub_1B7FC1CD0()
{
  result = qword_1ED8DC0F8;
  if (!qword_1ED8DC0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC0F8);
  }

  return result;
}

unint64_t sub_1B7FC1D2C()
{
  result = qword_1ED8DC108;
  if (!qword_1ED8DC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC108);
  }

  return result;
}

unint64_t sub_1B7FC1D80()
{
  result = qword_1ED8DC110;
  if (!qword_1ED8DC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC110);
  }

  return result;
}

uint64_t sub_1B7FC1DD4()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FC1ED0, 0, 0);
}

uint64_t sub_1B7FC1ED0()
{
  v1 = *(*(v0 + 48) + 40);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1B7FB987C;

  return sub_1B7FB96B0(0, 0);
}

void sub_1B7FC1F6C()
{
  if (sub_1B7FBB9C4())
  {
    v0 = [objc_opt_self() defaultCenter];
    v1 = *MEMORY[0x1E695C3D8];
    v2 = swift_allocObject();
    swift_weakInit();
    v5[4] = sub_1B7FF8AF4;
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1B7FF777C;
    v5[3] = &block_descriptor_2;
    v3 = _Block_copy(v5);

    v4 = [v0 addObserverForName:v1 object:0 queue:0 usingBlock:v3];
    _Block_release(v3);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1B7FC20A0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t Session.fenceUpdateStream()()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67410, &qword_1B80DCA48);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FB97E0, 0, 0);
}

uint64_t sub_1B7FC227C()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v13 = v0[20];
  v14 = v0[17];
  v15 = v0[16];
  v7 = v0[15];
  v8 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_1B7FE596C;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FE1340;
  v0[5] = &block_descriptor_58;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v1 setInterruptionHandler_];
  _Block_release(v9);

  (*(v5 + 8))(v4, v6);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1B7FC2408()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B7FC2440()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FBA38C, 0, 0);
}

uint64_t objectdestroy_61Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1B7FC2598()
{
  sub_1B80C937C();
  v0[17] = 0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  v0[18] = __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Registering listener for daemon ready Darwin notification", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  sub_1B80C8B0C();
  v5 = *(MEMORY[0x1E699C810] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1B7FC279C;
  v7 = v0[13];

  return MEMORY[0x1EEE04400](v7, 0xD000000000000023, 0x80000001B80CB300);
}

uint64_t sub_1B7FC279C()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FC2898, 0, 0);
}

uint64_t sub_1B7FC2898()
{
  v1 = v0[16];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[5];
  sub_1B80C930C();
  (*(v3 + 8))(v2, v4);
  swift_beginAccess();
  v0[20] = v0[17];
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1B80A2D58;
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[10];

  return MEMORY[0x1EEE6D9C8](v10, 0, 0, v9);
}

uint64_t sub_1B7FC2994()
{
  v1 = v0[2];
  v2 = v0[3];
  os_unfair_lock_lock((v1 + 16));
  v3 = *(v1 + 24);

  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 16));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B7FC2A14()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0[2] + 32);
  v6 = sub_1B80C92CC();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v5;

  sub_1B80A4870(0, 0, v2, &unk_1B80DCA50, v7);

  v8 = *(v5 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager);
  *v1 = 1;
  (*(v4 + 104))(v1, *MEMORY[0x1E69E8640], v3);
  v9 = sub_1B7FBA698();
  (*(v4 + 8))(v1, v3);

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_1B7FC2BA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B7FC2BE0()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FC2A14, 0, 0);
}

uint64_t sub_1B7FC2CF8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B7FBEBFC();
}

void sub_1B7FC2D88()
{
  type metadata accessor for Fence(319);
  if (v0 <= 0x3F)
  {
    sub_1B7FBFA24();
    if (v1 <= 0x3F)
    {
      sub_1B7FBFA6C();
      if (v2 <= 0x3F)
      {
        sub_1B7FBFBD4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1B7FC2E24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FenceClientRequest(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1B7FC253C;

  return sub_1B7FC2F5C(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1B7FC2F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1B7FC2F80, 0, 0);
}

uint64_t sub_1B7FC2F80()
{
  v1 = v0[12];
  v2 = *(MEMORY[0x1E699C838] + 4);

  v3 = swift_task_alloc();
  v0[15] = v3;
  v4 = _s15FenceConnectionCMa(0);
  v5 = sub_1B7FC0854(&qword_1EBA65970, _s15FenceConnectionCMa);
  *v3 = v0;
  v3[1] = sub_1B7FC308C;
  v7 = v0[11];
  v6 = v0[12];

  return MEMORY[0x1EEE04428](v0 + 8, sub_1B7FE58F0, v6, v4, v5);
}

uint64_t sub_1B7FC308C()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_1B7FE554C;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1B7FC0930;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

unint64_t sub_1B7FC31A8()
{
  result = qword_1ED8DC190;
  if (!qword_1ED8DC190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC190);
  }

  return result;
}

unint64_t sub_1B7FC320C()
{
  result = qword_1ED8DC0F0;
  if (!qword_1ED8DC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC0F0);
  }

  return result;
}

unint64_t sub_1B7FC3270()
{
  result = qword_1ED8DC148;
  if (!qword_1ED8DC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC148);
  }

  return result;
}

unint64_t sub_1B7FC32C8()
{
  result = qword_1ED8DC150;
  if (!qword_1ED8DC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC150);
  }

  return result;
}

uint64_t sub_1B7FC3330()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v0[3] = v2;

  os_unfair_lock_unlock((v1 + 16));
  if (v2)
  {
    v3 = *(MEMORY[0x1E69E86C0] + 4);
    v4 = swift_task_alloc();
    v0[4] = v4;
    *v4 = v0;
    v4[1] = sub_1B7FBE624;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1B7FC3428()
{
  v1 = *(*(v0 + 48) + 32);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1B7FBE4E4;

  return sub_1B7FBA170(0, 0);
}

unint64_t sub_1B7FC34D8()
{
  result = qword_1ED8DC168;
  if (!qword_1ED8DC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC168);
  }

  return result;
}

unint64_t sub_1B7FC3530()
{
  result = qword_1ED8DC170;
  if (!qword_1ED8DC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC170);
  }

  return result;
}

unint64_t sub_1B7FC3598()
{
  result = qword_1ED8DC118;
  if (!qword_1ED8DC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC118);
  }

  return result;
}

unint64_t sub_1B7FC35F0()
{
  result = qword_1ED8DC120;
  if (!qword_1ED8DC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC120);
  }

  return result;
}

unint64_t sub_1B7FC3658()
{
  result = qword_1ED8DC158;
  if (!qword_1ED8DC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC158);
  }

  return result;
}

unint64_t sub_1B7FC36B0()
{
  result = qword_1ED8DC160;
  if (!qword_1ED8DC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC160);
  }

  return result;
}

unint64_t sub_1B7FC3718()
{
  result = qword_1ED8DC178;
  if (!qword_1ED8DC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC178);
  }

  return result;
}

unint64_t sub_1B7FC3770()
{
  result = qword_1ED8DC180;
  if (!qword_1ED8DC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC180);
  }

  return result;
}

unint64_t sub_1B7FC37D8()
{
  result = qword_1ED8DC130;
  if (!qword_1ED8DC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC130);
  }

  return result;
}

unint64_t sub_1B7FC3830()
{
  result = qword_1ED8DC138;
  if (!qword_1ED8DC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC138);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B7FC38C8()
{
  result = qword_1ED8DC140;
  if (!qword_1ED8DC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC140);
  }

  return result;
}

uint64_t sub_1B7FC3978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B7FC39E0()
{
  result = qword_1ED8DC100;
  if (!qword_1ED8DC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC100);
  }

  return result;
}

unint64_t sub_1B7FC3A70()
{
  v1 = *v0;
  v2 = 0x636E654665766173;
  v3 = 0x7274537472617473;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x636E65466574756DLL;
  if (v1 != 4)
  {
    v4 = 0x4672656767697274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7365636E6566;
  if (v1 != 2)
  {
    v5 = 0x6546747065636361;
  }

  if (*v0)
  {
    v2 = 0x65466574656C6564;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t storeEnumTagSinglePayload for LocationRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B7FC3CCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_1B7FC3D20(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000026;
  v3 = ".findmylocate.locationservice";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002FLL;
  }

  else
  {
    v3 = ".findmylocate.friendshipservice";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000002DLL;
    v4 = "kFMFGroupIdGroup";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t FenceClientRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677C8, &qword_1B80DEEB0);
  v99 = *(v115 - 8);
  v3 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v109 = &v83 - v4;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677D0, &qword_1B80DEEB8);
  v97 = *(v98 - 8);
  v5 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v98);
  v108 = &v83 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677D8, &qword_1B80DEEC0);
  v103 = *(v102 - 8);
  v7 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v114 = &v83 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677E0, &qword_1B80DEEC8);
  v100 = *(v101 - 8);
  v9 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v113 = &v83 - v10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677E8, &qword_1B80DEED0);
  v95 = *(v96 - 8);
  v11 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v107 = &v83 - v12;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677F0, &qword_1B80DEED8);
  v91 = *(v92 - 8);
  v13 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v105 = &v83 - v14;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA677F8, &qword_1B80DEEE0);
  v93 = *(v112 - 8);
  v15 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v106 = &v83 - v16;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67800, &qword_1B80DEEE8);
  v89 = *(v90 - 8);
  v17 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v104 = &v83 - v18;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67808, &unk_1B80DEEF0);
  v117 = *(v111 - 8);
  v19 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v21 = &v83 - v20;
  v110 = type metadata accessor for FenceClientRequest(0);
  v22 = *(*(v110 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v110);
  v94 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v83 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v83 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v83 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v83 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v83 - v37;
  v39 = a1[3];
  v40 = a1[4];
  v119 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v39);
  sub_1B7FC38C8();
  v41 = v118;
  sub_1B80C99BC();
  if (!v41)
  {
    v84 = v36;
    v87 = v33;
    v85 = v30;
    v86 = v27;
    v43 = v112;
    v42 = v113;
    v118 = 0;
    v44 = v114;
    v45 = v115;
    v88 = v38;
    v46 = v116;
    v47 = v111;
    v48 = sub_1B80C973C();
    v49 = (2 * *(v48 + 16)) | 1;
    v120 = v48;
    v121 = v48 + 32;
    v122 = 0;
    v123 = v49;
    v50 = sub_1B7FC5288();
    if (v50 == 8 || v122 != v123 >> 1)
    {
      v55 = sub_1B80C955C();
      swift_allocError();
      v57 = v56;
      v58 = v21;
      v59 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v57 = v110;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
      swift_willThrow();
      (*(v117 + 8))(v58, v47);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v119);
    }

    if (v50 > 3u)
    {
      if (v50 > 5u)
      {
        v66 = v46;
        if (v50 == 6)
        {
          v124 = 6;
          sub_1B7FC39E0();
          v67 = v108;
          v68 = v118;
          sub_1B80C968C();
          v69 = v117;
          if (v68)
          {
            goto LABEL_21;
          }

          (*(v97 + 8))(v67, v98);
          (*(v69 + 8))(v21, v47);
          swift_unknownObjectRelease();
          v65 = v88;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v124 = 7;
          sub_1B80C35A8();
          v76 = v109;
          v77 = v118;
          sub_1B80C968C();
          v78 = v117;
          if (v77)
          {
            (*(v117 + 8))(v21, v47);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_0(v119);
          }

          (*(v99 + 8))(v76, v45);
          (*(v78 + 8))(v21, v47);
          swift_unknownObjectRelease();
          v65 = v88;
          swift_storeEnumTagMultiPayload();
        }

LABEL_37:
        sub_1B7FC5290(v65, v66, type metadata accessor for FenceClientRequest);
        return __swift_destroy_boxed_opaque_existential_0(v119);
      }

      if (v50 != 4)
      {
        v124 = 5;
        sub_1B80C35FC();
        v71 = v44;
        v72 = v118;
        sub_1B80C968C();
        if (!v72)
        {
          type metadata accessor for Fence.ID(0);
          v124 = 0;
          sub_1B7FCA6E0(&qword_1EBA66B20, type metadata accessor for Fence.ID);
          v53 = v94;
          v73 = v102;
          sub_1B80C972C();
          v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EB8, &unk_1B80DEEA0) + 48);
          type metadata accessor for Fence.TriggerPosition(0);
          v124 = 1;
          sub_1B7FCA6E0(&qword_1EBA67810, type metadata accessor for Fence.TriggerPosition);
          sub_1B80C972C();
          (*(v103 + 8))(v71, v73);
          (*(v117 + 8))(v21, v47);
          swift_unknownObjectRelease();
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      v124 = 4;
      sub_1B80C3650();
      v61 = v118;
      sub_1B80C968C();
      if (!v61)
      {
        v124 = 0;
        sub_1B807F2AC();
        v62 = v86;
        v63 = v101;
        sub_1B80C972C();
        v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC8, &unk_1B80D2400) + 48);
        sub_1B80C8E2C();
        v124 = 1;
        sub_1B7FCA6E0(&qword_1ED8DBBD8, MEMORY[0x1E6969530]);
        sub_1B80C96CC();
        (*(v100 + 8))(v42, v63);
        (*(v117 + 8))(v21, v47);
        swift_unknownObjectRelease();
LABEL_33:
        swift_storeEnumTagMultiPayload();
        v81 = v62;
        goto LABEL_35;
      }
    }

    else
    {
      v51 = v118;
      if (v50 <= 1u)
      {
        if (!v50)
        {
          v124 = 0;
          sub_1B80C37A0();
          v52 = v104;
          sub_1B80C968C();
          if (!v51)
          {
            type metadata accessor for Fence(0);
            sub_1B7FCA6E0(&qword_1EBA65990, type metadata accessor for Fence);
            v53 = v84;
            v54 = v90;
            sub_1B80C972C();
            (*(v89 + 8))(v52, v54);
            (*(v117 + 8))(v21, v47);
            swift_unknownObjectRelease();
LABEL_34:
            swift_storeEnumTagMultiPayload();
            v81 = v53;
            goto LABEL_35;
          }

          goto LABEL_21;
        }

        v124 = 1;
        sub_1B80C374C();
        v70 = v106;
        sub_1B80C968C();
        if (!v51)
        {
          type metadata accessor for Fence.ID(0);
          sub_1B7FCA6E0(&qword_1EBA66B20, type metadata accessor for Fence.ID);
          sub_1B80C972C();
          (*(v93 + 8))(v70, v43);
          (*(v117 + 8))(v21, v47);
          swift_unknownObjectRelease();
          v80 = v87;
          swift_storeEnumTagMultiPayload();
          v81 = v80;
LABEL_35:
          v65 = v88;
          sub_1B7FC5290(v81, v88, type metadata accessor for FenceClientRequest);
          goto LABEL_36;
        }

        goto LABEL_21;
      }

      if (v50 == 2)
      {
        v124 = 2;
        sub_1B80C36F8();
        v64 = v105;
        sub_1B80C968C();
        if (!v51)
        {
          (*(v91 + 8))(v64, v92);
          (*(v117 + 8))(v21, v47);
          swift_unknownObjectRelease();
          v65 = v88;
          swift_storeEnumTagMultiPayload();
LABEL_36:
          v66 = v46;
          goto LABEL_37;
        }

        goto LABEL_21;
      }

      v124 = 3;
      sub_1B80C36A4();
      v74 = v107;
      sub_1B80C968C();
      if (!v51)
      {
        type metadata accessor for Fence.ID(0);
        sub_1B7FCA6E0(&qword_1EBA66B20, type metadata accessor for Fence.ID);
        v62 = v85;
        v75 = v96;
        sub_1B80C972C();
        (*(v95 + 8))(v74, v75);
        (*(v117 + 8))(v21, v47);
        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

LABEL_21:
    (*(v117 + 8))(v21, v47);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v119);
}

uint64_t sub_1B7FC4F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7FC4F98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7FC4F98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E654665766173 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65466574656C6564 && a2 == 0xEB0000000065636ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365636E6566 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6546747065636361 && a2 == 0xEB0000000065636ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636E65466574756DLL && a2 == 0xEA00000000007365 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4672656767697274 && a2 == 0xEC00000065636E65 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7274537472617473 && a2 == 0xEE00676E696D6165 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CE970 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1B7FC5258@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1B7FC5290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FenceResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67840, &unk_1B80DEF28);
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EC0, &qword_1B80D23F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67848, &qword_1B80DEF38);
  v51 = *(v8 - 8);
  v52 = v8;
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67850, &qword_1B80DEF40);
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v44 - v13;
  v46 = type metadata accessor for Fence(0);
  v14 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67858, &qword_1B80DEF48);
  v45 = *(v17 - 8);
  v18 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  v21 = type metadata accessor for FenceResponse(0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67860, &qword_1B80DEF50);
  v58 = *(v25 - 8);
  v59 = v25;
  v26 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v44 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC5AD4();
  sub_1B80C99DC();
  sub_1B7FC3978(v57, v24, type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v35 = v24;
      v36 = v53;
      sub_1B7FC8F2C(v35, v53, &qword_1EBA65EC0, &qword_1B80D23F0);
      v64 = 3;
      sub_1B80C3B9C();
      v37 = v54;
      v38 = v59;
      sub_1B80C974C();
      type metadata accessor for Fence.TriggerID(0);
      sub_1B7FCA6E0(&qword_1EBA67870, type metadata accessor for Fence.TriggerID);
      v39 = v56;
      sub_1B80C977C();
      (*(v55 + 8))(v37, v39);
      sub_1B7FB86D4(v36, &qword_1EBA65EC0, &qword_1B80D23F0);
    }

    else
    {
      v61 = 0;
      sub_1B7FC5B28();
      v38 = v59;
      sub_1B80C974C();
      (*(v45 + 8))(v20, v17);
    }

    return (*(v58 + 8))(v28, v38);
  }

  else if (EnumCaseMultiPayload)
  {
    v40 = *v24;
    v63 = 2;
    sub_1B80C3BF0();
    v41 = v50;
    v42 = v59;
    sub_1B80C974C();
    v60 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67828, &qword_1B80DEF10);
    sub_1B7FC9854(&qword_1EBA65948, &qword_1EBA65998);
    v43 = v52;
    sub_1B80C97DC();
    (*(v51 + 8))(v41, v43);
    (*(v58 + 8))(v28, v42);
  }

  else
  {
    sub_1B7FC5290(v24, v16, type metadata accessor for Fence);
    v62 = 1;
    sub_1B80C3C44();
    v31 = v47;
    v32 = v59;
    sub_1B80C974C();
    sub_1B7FCA6E0(&qword_1EBA65998, type metadata accessor for Fence);
    v33 = v49;
    sub_1B80C97DC();
    (*(v48 + 8))(v31, v33);
    sub_1B80C37F4(v16, type metadata accessor for Fence);
    return (*(v58 + 8))(v28, v32);
  }
}

unint64_t sub_1B7FC5AD4()
{
  result = qword_1ED8DC348;
  if (!qword_1ED8DC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC348);
  }

  return result;
}

unint64_t sub_1B7FC5B28()
{
  result = qword_1ED8DC330;
  if (!qword_1ED8DC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC330);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for IDSStatus(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for IDSStatus(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B7FC5CCC(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_1B80C8D3C();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_1B7FC72F8(v4, v9);
}

void sub_1B7FC5D78(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  sub_1B7FC5D80(a1, a2, a3);
}

void sub_1B7FC5D80(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for FenceResponse(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v10 = a3;
      if (qword_1ED8DD928 != -1)
      {
        swift_once();
      }

      v11 = sub_1B80C900C();
      __swift_project_value_buffer(v11, qword_1ED8DDF88);
      v12 = a3;
      v13 = sub_1B80C8FEC();
      v14 = sub_1B80C93FC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v33 = v16;
        *v15 = 136446466;
        *(v15 + 4) = sub_1B7FB84FC(0x75716552656B616DLL, 0xEF293A5F28747365, &v33);
        *(v15 + 12) = 2082;
        v32[2] = a3;
        v17 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
        v18 = sub_1B80C90EC();
        v20 = sub_1B7FB84FC(v18, v19, &v33);

        *(v15 + 14) = v20;
        _os_log_impl(&dword_1B7FB5000, v13, v14, "%{public}s error %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B8CB8970](v16, -1, -1);
        MEMORY[0x1B8CB8970](v15, -1, -1);
      }

      v21 = a3;
      sub_1B8082B94(a3, &v33);
      v22 = v33;
      if (v33 == 12)
      {
        v23 = a3;
        v24 = a3;
      }

      else
      {
        sub_1B7FE5918();
        v24 = swift_allocError();
        *v31 = v22;
      }

      v33 = v24;
      sub_1B80C8ACC();

      v30 = v24;
    }

    else
    {
      sub_1B7FE5918();
      v28 = swift_allocError();
      *v29 = 0;
      v33 = v28;
      sub_1B80C8ACC();
      v30 = v28;
    }
  }

  else
  {
    v25 = sub_1B80C8CBC();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    sub_1B7FC62D8(a1, a2);
    sub_1B80C8CAC();
    sub_1B7FC0854(&qword_1EBA65A50, type metadata accessor for FenceResponse);
    sub_1B80C8C9C();

    sub_1B80C8ADC();
    sub_1B7FC72F8(a1, a2);
    sub_1B7FC730C(v9, type metadata accessor for FenceResponse);
  }
}

uint64_t sub_1B7FC62D8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t FenceResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67880, &qword_1B80DEF58);
  v73 = *(v70 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v78 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67888, &qword_1B80DEF60);
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v62 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67890, &qword_1B80DEF68);
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67898, &qword_1B80DEF70);
  v66 = *(v12 - 8);
  v67 = v12;
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v62 - v14;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA678A0, &qword_1B80DEF78);
  v80 = *(v75 - 8);
  v15 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v17 = &v62 - v16;
  v18 = type metadata accessor for FenceResponse(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v62 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v62 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1B7FC5AD4();
  v33 = v81;
  sub_1B80C99BC();
  if (!v33)
  {
    v63 = v28;
    v62 = v25;
    v64 = v22;
    v34 = v76;
    v35 = v77;
    v36 = v78;
    v65 = v30;
    v81 = v18;
    v37 = v79;
    v38 = v75;
    v39 = sub_1B80C973C();
    v40 = (2 * *(v39 + 16)) | 1;
    v83 = v39;
    v84 = v39 + 32;
    v85 = 0;
    v86 = v40;
    v41 = sub_1B7FC72BC();
    if (v41 != 4 && v85 == v86 >> 1)
    {
      if (v41 > 1u)
      {
        if (v41 == 2)
        {
          LOBYTE(v87) = 2;
          sub_1B80C3BF0();
          sub_1B80C968C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67828, &qword_1B80DEF10);
          sub_1B7FC9854(&qword_1EBA65940, &qword_1EBA65990);
          v50 = v72;
          sub_1B80C972C();
          (*(v71 + 8))(v35, v50);
          (*(v80 + 8))(v17, v38);
          swift_unknownObjectRelease();
          v60 = v62;
          *v62 = v87;
          swift_storeEnumTagMultiPayload();
          v61 = v60;
        }

        else
        {
          LOBYTE(v87) = 3;
          sub_1B80C3B9C();
          v53 = v36;
          sub_1B80C968C();
          type metadata accessor for Fence.TriggerID(0);
          sub_1B7FCA6E0(&qword_1EBA678A8, type metadata accessor for Fence.TriggerID);
          v57 = v64;
          v58 = v70;
          sub_1B80C96CC();
          v59 = v80;
          (*(v73 + 8))(v53, v58);
          (*(v59 + 8))(v17, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v61 = v57;
        }
      }

      else
      {
        if (!v41)
        {
          LOBYTE(v87) = 0;
          sub_1B7FC5B28();
          v42 = v74;
          sub_1B80C968C();
          v43 = v80;
          (*(v66 + 8))(v42, v67);
          (*(v43 + 8))(v17, v38);
          swift_unknownObjectRelease();
          v54 = v65;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          sub_1B7FC5290(v54, v37, type metadata accessor for FenceResponse);
          return __swift_destroy_boxed_opaque_existential_0(v82);
        }

        LOBYTE(v87) = 1;
        sub_1B80C3C44();
        sub_1B80C968C();
        v51 = v38;
        v52 = v80;
        type metadata accessor for Fence(0);
        sub_1B7FCA6E0(&qword_1EBA65990, type metadata accessor for Fence);
        v55 = v63;
        v56 = v68;
        sub_1B80C972C();
        (*(v69 + 8))(v34, v56);
        (*(v52 + 8))(v17, v51);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v61 = v55;
      }

      v54 = v65;
      sub_1B7FC5290(v61, v65, type metadata accessor for FenceResponse);
      goto LABEL_14;
    }

    v44 = sub_1B80C955C();
    swift_allocError();
    v46 = v45;
    v47 = v38;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
    *v46 = v81;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v44 - 8) + 104))(v46, *MEMORY[0x1E69E6AF8], v44);
    swift_willThrow();
    (*(v80 + 8))(v17, v47);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v82);
}

unint64_t sub_1B7FC6D84()
{
  result = qword_1ED8DC2F8;
  if (!qword_1ED8DC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC2F8);
  }

  return result;
}

unint64_t sub_1B7FC6DDC()
{
  result = qword_1ED8DC300;
  if (!qword_1ED8DC300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC300);
  }

  return result;
}

unint64_t sub_1B7FC6E34()
{
  result = qword_1ED8DC308;
  if (!qword_1ED8DC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC308);
  }

  return result;
}

unint64_t sub_1B7FC6E9C()
{
  result = qword_1ED8DC310;
  if (!qword_1ED8DC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC310);
  }

  return result;
}

unint64_t sub_1B7FC6EF4()
{
  result = qword_1ED8DC350;
  if (!qword_1ED8DC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC350);
  }

  return result;
}

unint64_t sub_1B7FC6F5C()
{
  result = qword_1ED8DC358;
  if (!qword_1ED8DC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC358);
  }

  return result;
}

unint64_t sub_1B7FC6FB4()
{
  result = qword_1ED8DC320;
  if (!qword_1ED8DC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC320);
  }

  return result;
}

unint64_t sub_1B7FC701C()
{
  result = qword_1ED8DC328;
  if (!qword_1ED8DC328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC328);
  }

  return result;
}

unint64_t sub_1B7FC7074()
{
  result = qword_1ED8DC338;
  if (!qword_1ED8DC338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC338);
  }

  return result;
}

unint64_t sub_1B7FC70CC()
{
  result = qword_1ED8DC340;
  if (!qword_1ED8DC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC340);
  }

  return result;
}

uint64_t sub_1B7FC7120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7FC7158(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7FC7158(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684631414 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6566 && a2 == 0xE500000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365636E6566 && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4972656767697274 && a2 == 0xE900000000000044)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B80C981C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B7FC72C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B7FC72F8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B7FC3CCC(a1, a2);
  }

  return a1;
}

uint64_t sub_1B7FC730C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B7FC73AC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B7FE1DC4, v4, 0);
  }

  else
  {
    v5 = v3[7];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B7FC74E8()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 80) = v0;

  sub_1B7FC730C(v4, type metadata accessor for FenceClientRequest);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_1B7FE2DB8;
  }

  else
  {
    v7 = sub_1B7FC76B4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B7FC7644()
{
  v1 = 1684631414;
  v2 = 0x7365636E6566;
  if (*v0 != 2)
  {
    v2 = 0x4972656767697274;
  }

  if (*v0)
  {
    v1 = 0x65636E6566;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7FC76B4()
{
  v1 = v0[5];
  sub_1B7FC0784(v0[8], v0[7], type metadata accessor for FenceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[7];
  v3 = v0[8];
  if (EnumCaseMultiPayload == 3)
  {
    v5 = v0[4];
    sub_1B7FC730C(v0[8], type metadata accessor for FenceResponse);
    sub_1B7FC730C(v4, type metadata accessor for FenceResponse);
  }

  else
  {
    v7 = v0[5];
    v8 = v0[6];
    sub_1B7FC730C(v0[7], type metadata accessor for FenceResponse);
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa);
    swift_allocError();
    v10 = v9;
    sub_1B7FC0784(v3, v9, type metadata accessor for FenceResponse);
    (*(v8 + 56))(v10, 0, 1, v7);
    swift_willThrow();
    sub_1B7FC730C(v3, type metadata accessor for FenceResponse);
    v12 = v0[7];
    v11 = v0[8];
    v13 = v0[4];
  }

  v6 = v0[1];

  return v6();
}

uint64_t Handle.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67108, &qword_1B80DA068);
  v5 = *(v63 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v43 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCAE90();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v75[0]) = 0;
  v11 = v63;
  v13 = sub_1B80C96DC();
  v61 = v14;
  LOBYTE(v75[0]) = 1;
  v15 = sub_1B80C96AC();
  v60 = v16;
  v56 = v15;
  LOBYTE(v64) = 2;
  sub_1B7FD0358();
  sub_1B80C96CC();
  v55 = LOBYTE(v75[0]);
  LOBYTE(v75[0]) = 3;
  v17 = sub_1B80C96AC();
  v62 = 0;
  v54 = v17;
  v59 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67100, &unk_1B80DA058);
  LOBYTE(v64) = 4;
  sub_1B7FCFDE8();
  v19 = v62;
  sub_1B80C972C();
  if (v19)
  {
    v62 = v19;
    (*(v10 + 8))(v8, v11);
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v53 = v75[0];
    LOBYTE(v75[0]) = 5;
    sub_1B80C96FC();
    v24 = v23;
    LOBYTE(v75[0]) = 6;
    v52 = sub_1B80C96AC();
    v58 = v25;
    LOBYTE(v75[0]) = 7;
    v51 = sub_1B80C96AC();
    v57 = v26;
    LOBYTE(v75[0]) = 8;
    v50 = sub_1B80C96BC();
    v62 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    LOBYTE(v64) = 9;
    v49 = sub_1B7FCA738(&qword_1ED8DBB80);
    v27 = v62;
    sub_1B80C96CC();
    v62 = v27;
    if (!v27)
    {
      v48 = v75[0];
      LOBYTE(v75[0]) = 10;
      v46 = sub_1B80C96AC();
      v47 = v28;
      LOBYTE(v75[0]) = 11;
      v44 = sub_1B80C96AC();
      v45 = v29;
      v62 = 0;
      LOBYTE(v64) = 12;
      sub_1B80C972C();
      v62 = 0;
      v49 = v75[0];
      v96 = 13;
      v30 = sub_1B80C96AC();
      v43 = v31;
      v62 = 0;
      v32 = v30;
      (*(v10 + 8))(v8, v63);
      v33 = v60;
      *&v64 = v13;
      *(&v64 + 1) = v61;
      v34 = v56;
      *&v65 = v56;
      *(&v65 + 1) = v60;
      v35 = v55;
      LOBYTE(v66) = v55;
      *(&v66 + 1) = v54;
      *&v67 = v59;
      *(&v67 + 1) = v53;
      *&v68 = v24;
      *(&v68 + 1) = v52;
      *&v69 = v58;
      *(&v69 + 1) = v51;
      *&v70 = v57;
      BYTE8(v70) = v50;
      v36 = v47;
      *&v71 = v48;
      *(&v71 + 1) = v46;
      *&v72 = v47;
      *(&v72 + 1) = v44;
      *&v73 = v45;
      *(&v73 + 1) = v49;
      *&v74 = v32;
      *(&v74 + 1) = v43;
      v37 = v73;
      a2[8] = v72;
      a2[9] = v37;
      v38 = v65;
      *a2 = v64;
      a2[1] = v38;
      v39 = v66;
      v40 = v67;
      v41 = v71;
      a2[6] = v70;
      a2[7] = v41;
      v42 = v69;
      a2[4] = v68;
      a2[5] = v42;
      a2[2] = v39;
      a2[3] = v40;
      a2[10] = v74;
      sub_1B7FC8DA4(&v64, v75);
      __swift_destroy_boxed_opaque_existential_0(a1);
      v75[0] = v13;
      v75[1] = v61;
      v75[2] = v34;
      v75[3] = v33;
      v76 = v35;
      *v77 = v98[0];
      *&v77[3] = *(v98 + 3);
      v78 = v54;
      v79 = v59;
      v80 = v53;
      v81 = v24;
      v82 = v52;
      v83 = v58;
      v84 = v51;
      v85 = v57;
      v86 = v50;
      *&v87[3] = *&v97[3];
      *v87 = *v97;
      v88 = v48;
      v89 = v46;
      v90 = v36;
      v91 = v44;
      v92 = v45;
      v93 = v49;
      v94 = v32;
      v95 = v43;
      return sub_1B7FCAD28(v75);
    }

    (*(v10 + 8))(v8, v63);
    v20 = 1;
    v21 = 1;
    v22 = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);

  if ((v20 & 1) == 0)
  {
    if (v21)
    {
      goto LABEL_6;
    }

LABEL_9:
    if (!v22)
    {
      return result;
    }
  }

  if ((v21 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:

  if ((v22 & 1) == 0)
  {
    return result;
  }
}

uint64_t sub_1B7FC8100()
{
  v1 = *v0;
  v2 = 0x65776F6C6C6F662ELL;
  v3 = 0x466572757475662ELL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x676E69646E65702ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x69776F6C6C6F662ELL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7FC81C0()
{
  v1 = 0x6567617373656D2ELL;
  if (*v0 != 1)
  {
    v1 = 0x726568746F2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41794D646E69662ELL;
  }
}

uint64_t ClientOrigin.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672D0, &qword_1B80DB820);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672D8, &qword_1B80DB828);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672E0, &qword_1B80DB830);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672E8, &unk_1B80DB838);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B7FC87B0();
  v20 = v43;
  sub_1B80C99BC();
  if (!v20)
  {
    v35 = v9;
    v43 = v14;
    v22 = v41;
    v21 = v42;
    v23 = v17;
    v24 = sub_1B80C973C();
    v25 = (2 * *(v24 + 16)) | 1;
    v45 = v24;
    v46 = v24 + 32;
    v47 = 0;
    v48 = v25;
    v26 = sub_1B7FCD6E4();
    if (v26 == 3 || v47 != v48 >> 1)
    {
      v28 = sub_1B80C955C();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v30 = &type metadata for ClientOrigin;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
      (*(v43 + 8))(v23, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v49 = v26;
      if (v26)
      {
        if (v26 == 1)
        {
          v50 = 1;
          sub_1B809BF84();
          sub_1B80C968C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1B809BF30();
          v33 = v22;
          sub_1B80C968C();
          v34 = v43;
          (*(v38 + 8))(v33, v39);
          (*(v34 + 8))(v17, v13);
        }
      }

      else
      {
        v50 = 0;
        sub_1B7FCF568();
        sub_1B80C968C();
        (*(v36 + 8))(v12, v35);
        (*(v43 + 8))(v17, v13);
      }

      swift_unknownObjectRelease();
      *v21 = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v44);
}

unint64_t sub_1B7FC87B0()
{
  result = qword_1ED8DCA68;
  if (!qword_1ED8DCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA68);
  }

  return result;
}

uint64_t sub_1B7FC881C()
{
  v1 = *v0;
  v2 = 0x7265776F6C6C6F66;
  v3 = 0x6F46657275747566;
  v4 = 0x6F46657275747566;
  if (v1 != 3)
  {
    v4 = 0x4F676E69646E6570;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E69776F6C6C6F66;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7FC88DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t Handle.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[12];
  v7 = v0[14];
  v8 = v0[20];
  v18 = v0[19];
  v19 = v0[11];
  v9 = v0[21];

  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x656C646E6148, 0xE600000000000000);
  MEMORY[0x1B8CB7A40](0x6469202020200A3ALL, 0xEA0000000000203ALL);
  MEMORY[0x1B8CB7A40](v1, v2);
  MEMORY[0x1B8CB7A40](0xD00000000000001ALL, 0x80000001B80CBD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v10 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CBD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA0, &unk_1B80DA040);
  v11 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v11);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CBD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA8, &qword_1B80D1BC0);
  v12 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v12);

  MEMORY[0x1B8CB7A40](0x726573202020200ALL, 0xEF203A4449726576);
  if (v9)
  {
    v13 = v8;
  }

  else
  {
    v13 = 0;
  }

  if (!v9)
  {
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1B8CB7A40](v13, v9);

  MEMORY[0x1B8CB7A40](0xD000000000000019, 0x80000001B80CBDB0);
  v14 = MEMORY[0x1B8CB7B30](v18, MEMORY[0x1E69E6158]);
  MEMORY[0x1B8CB7A40](v14);

  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CBDD0);
  if (v6)
  {
    v15 = v19;
  }

  else
  {
    v15 = 0;
  }

  if (v6)
  {
    v16 = v6;
  }

  else
  {
    v16 = 0xE000000000000000;
  }

  MEMORY[0x1B8CB7A40](v15, v16);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B7FC8C58(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t Friend.handle.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[9];
  v25 = v1[8];
  v26 = v3;
  v4 = v1[9];
  v27 = v1[10];
  v5 = v1[3];
  v6 = v1[5];
  v21 = v1[4];
  v7 = v21;
  v22 = v6;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v2;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v5;
  return sub_1B7FC8DA4(v18, &v17);
}

uint64_t sub_1B7FC8E10(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_1B7FC8E58(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t type metadata accessor for Fence.Schedule.Matcher()
{
  result = qword_1EBA659A0;
  if (!qword_1EBA659A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B7FC8F2C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7FC8FC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Fence.ID(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Fence.Variant(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[8];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_11;
  }

  v17 = sub_1B80C8E2C();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[14];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[15];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1B7FC91FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Fence.ID(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for Fence.Variant(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[8];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_13;
  }

  v17 = sub_1B80C8E2C();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[14];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[15];

  return v19(v20, a2, v18);
}

uint64_t FenceDaemonRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67818, &qword_1B80DEF00);
  v4 = *(v3 - 8);
  v18 = v3;
  v19 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67820, &qword_1B80DEF08);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - v11;
  v13 = *v1;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC96B0();
  sub_1B80C99DC();
  sub_1B7FC9704();
  sub_1B80C974C();
  v20 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67828, &qword_1B80DEF10);
  sub_1B7FC9854(&qword_1EBA65948, &qword_1EBA65998);
  v15 = v18;
  sub_1B80C97DC();
  (*(v19 + 8))(v7, v15);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1B7FC96B0()
{
  result = qword_1ED8DC040[0];
  if (!qword_1ED8DC040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8DC040);
  }

  return result;
}

unint64_t sub_1B7FC9704()
{
  result = qword_1ED8DC028;
  if (!qword_1ED8DC028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC028);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for KoreaFeatureFlag(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for KoreaFeatureFlag(unsigned int *a1, int a2)
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

uint64_t sub_1B7FC9854(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67828, &qword_1B80DEF10);
    sub_1B7FCA6E0(a2, type metadata accessor for Fence);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B7FC99AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FenceResponse(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = sub_1B80C8CBC();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_1B80C8CAC();
    sub_1B7FC9DD4();
    v15 = sub_1B80C8C9C();
    v19 = v28[1];
    v20 = *(*(v11 + OBJC_IVAR____TtCC12FindMyLocate7Session15FenceConnection_fenceStreamManager) + 16);
    MEMORY[0x1EEE9AC00](v15);
    v28[-2] = v19;
    os_unfair_lock_lock((v20 + 32));
    sub_1B7FCA6C4((v20 + 16));
    os_unfair_lock_unlock((v20 + 32));
    swift_storeEnumTagMultiPayload();

    v21 = sub_1B80C8CEC();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    sub_1B80C8CDC();
    sub_1B7FC0854(&qword_1EBA65A58, type metadata accessor for FenceResponse);
    v24 = sub_1B80C8CCC();
    v26 = v25;
    sub_1B7FC62D8(v24, v25);
    v27 = sub_1B80C8D1C();
    (*(a4 + 16))(a4, v27, 0);

    sub_1B7FC3CCC(v24, v26);

    sub_1B7FC3CCC(v24, v26);
    sub_1B7FC730C(v9, type metadata accessor for FenceResponse);
  }

  else
  {
    _s15FenceConnectionC7FailureOMa(0);
    sub_1B7FC0854(&qword_1EBA65E88, _s15FenceConnectionC7FailureOMa);
    v16 = swift_allocError();
    (*(v6 + 56))(v17, 1, 1, v5);
    v18 = sub_1B80C8CFC();
    (*(a4 + 16))(a4, 0, v18);
  }
}

unint64_t sub_1B7FC9DD4()
{
  result = qword_1EBA65A00;
  if (!qword_1EBA65A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A00);
  }

  return result;
}

uint64_t FenceDaemonRequest.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67830, &qword_1B80DEF18);
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67838, &qword_1B80DEF20);
  v26 = *(v8 - 8);
  v9 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC96B0();
  sub_1B80C99BC();
  if (v2)
  {
    goto LABEL_6;
  }

  v24 = a1;
  v14 = v26;
  v13 = v27;
  v15 = sub_1B80C973C();
  v16 = (2 * *(v15 + 16)) | 1;
  v28 = v15;
  v29 = v15 + 32;
  v30 = 0;
  v31 = v16;
  if ((sub_1B7FCA428() & 1) != 0 || v30 != v31 >> 1)
  {
    v17 = sub_1B80C955C();
    swift_allocError();
    v18 = v11;
    v20 = v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
    *v20 = &type metadata for FenceDaemonRequest;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v17 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v14 + 8))(v18, v8);
    swift_unknownObjectRelease();
    a1 = v24;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  sub_1B7FC9704();
  sub_1B80C968C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67828, &qword_1B80DEF10);
  sub_1B7FC9854(&qword_1EBA65940, &qword_1EBA65990);
  sub_1B80C972C();
  (*(v25 + 8))(v7, v4);
  (*(v14 + 8))(v11, v8);
  swift_unknownObjectRelease();
  *v13 = v32;
  v23 = v24;
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

unint64_t sub_1B7FCA22C()
{
  result = qword_1ED8DC018;
  if (!qword_1ED8DC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC018);
  }

  return result;
}

unint64_t sub_1B7FCA284()
{
  result = qword_1ED8DC020;
  if (!qword_1ED8DC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC020);
  }

  return result;
}

uint64_t sub_1B7FCA2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70557365636E6566 && a2 == 0xED00006465746164)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

unint64_t sub_1B7FCA37C()
{
  result = qword_1ED8DC030;
  if (!qword_1ED8DC030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC030);
  }

  return result;
}

unint64_t sub_1B7FCA3D4()
{
  result = qword_1ED8DC038;
  if (!qword_1ED8DC038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC038);
  }

  return result;
}

uint64_t sub_1B7FCA430(void *a1, uint64_t a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E90, &unk_1B80D23A0);
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E98, &qword_1B80D2D00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v27 - v10;
  v12 = a1[1];

  a1[1] = a2;
  v13 = *a1;
  v16 = *(*a1 + 64);
  v15 = *a1 + 64;
  v14 = v16;
  v17 = 1 << *(v13 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v27[2] = v8 + 8;
  v27[3] = v8 + 16;
  v21 = (v4 + 8);
  v30 = a2;
  v31 = v13;

  for (i = 0; v19; result = (*v21)(v26, v29))
  {
    v24 = i;
LABEL_9:
    v25 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    (*(v8 + 16))(v11, *(v31 + 56) + *(v8 + 72) * (v25 | (v24 << 6)), v7);
    v32 = v30;

    v26 = v28;
    sub_1B80C92EC();
    (*(v8 + 8))(v11, v7);
  }

  while (1)
  {
    v24 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
    }

    v19 = *(v15 + 8 * v24);
    ++i;
    if (v19)
    {
      i = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7FCA6E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7FCA738(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA66070, &qword_1B80D6930);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B7FCA7A4()
{
  v24 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 120);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = v3;
  *(v5 + 88) = v4;
  *(v5 + 96) = v1;
  *(v5 + 104) = v2;
  v20[0] = v3;
  v21 = v4;
  v22 = v1;
  v23 = v2;
  v6 = _s18LocationConnectionCMa();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  *(v5 + 56) = sub_1B7FB7494(v20);
  v9 = _s20FriendshipConnectionCMa();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v5 + 40) = sub_1B7FB8A84();
  v12 = _s18SettingsConnectionCMa();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v5 + 48) = sub_1B7FB9160();
  v15 = _s15FenceConnectionCMa(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  *(v5 + 32) = sub_1B7FBAE38();
  v18 = *(v5 + 56);
  *(v0 + 48) = v18;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCACA4, v18, 0);
}

unint64_t sub_1B7FCA8E4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x7574617453736469;
      break;
    case 3:
      result = 1684632420;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 11:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x5344646568736168;
      break;
    case 7:
      result = 0x657469726F766166;
      break;
    case 8:
      result = 0x6C62616863616572;
      break;
    case 9:
      result = 0x6E65644968737570;
      break;
    case 10:
      result = 0x614E797474657270;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7FCAAC8()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCDE68;

  return sub_1B7FBB0F4(0, 0);
}

uint64_t storeEnumTagSinglePayload for Fence.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for Fence.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B7FCACA4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCAD7C, 0, 0);
}

uint64_t sub_1B7FCAD7C()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 56) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCADF4, v1, 0);
}

uint64_t sub_1B7FCADF4()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCAEE4, 0, 0);
}

unint64_t sub_1B7FCAE90()
{
  result = qword_1ED8DC438;
  if (!qword_1ED8DC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC438);
  }

  return result;
}

uint64_t sub_1B7FCAEE4()
{
  v1 = *(*(v0 + 16) + 48);
  *(v0 + 64) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCAF5C, v1, 0);
}

uint64_t sub_1B7FCAF5C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCB04C, 0, 0);
}

uint64_t sub_1B7FCAFE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B7FCB04C()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 72) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCB30C, v1, 0);
}

uint64_t Handle.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 32);
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[14];

  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](60, 0xE100000000000000);
  MEMORY[0x1B8CB7A40](0x656C646E6148, 0xE600000000000000);
  MEMORY[0x1B8CB7A40](0x6469202020200A3ALL, 0xEA0000000000203ALL);
  MEMORY[0x1B8CB7A40](v1, v2);
  MEMORY[0x1B8CB7A40](0xD00000000000001ALL, 0x80000001B80CBD50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v9 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CBD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA0, &unk_1B80DA040);
  v10 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CBD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA8, &qword_1B80D1BC0);
  v11 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v11);

  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CBDD0);
  v12 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v12);

  MEMORY[0x1B8CB7A40](15882, 0xE200000000000000);
  return 0;
}

uint64_t sub_1B7FCB30C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  swift_weakAssign();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCAAC8, 0, 0);
}

uint64_t sub_1B7FCB390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FCB400()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCC45C;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t ClientID.ConnectionType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676B8, &qword_1B80DE6B8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676C0, &qword_1B80DE6C0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676C8, &qword_1B80DE6C8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCE400();
  v16 = v36;
  sub_1B80C99BC();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_1B80C973C();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_1B7FCC41C();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_1B80C955C();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v26 = &type metadata for ClientID.ConnectionType;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_1B80C0BE0();
        sub_1B80C968C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1B7FCE2A0();
        sub_1B80C968C();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_0(v17);
}

uint64_t sub_1B7FCB958()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  (*(v0[6] + 104))(v0[7], *MEMORY[0x1E69E8650], v0[5]);
  sub_1B80C934C();
  v4 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = *(MEMORY[0x1E69E8920] + 4);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_1B7FCE52C;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v7, v2, v4, 0xD00000000000001DLL, 0x80000001B80CD2E0, sub_1B7FCD6E8, v5, v8);
}

uint64_t sub_1B7FCBAE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66090, &qword_1B80D2CF8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66080, &unk_1B80D2C48);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_stewieStateUpdateContinuation;
  swift_beginAccess();
  sub_1B7FCD754(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t ClientID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v51 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v57 = &v51 - v9;
  v60 = sub_1B80C8E9C();
  v58 = *(v60 - 8);
  v10 = *(v58 + 64);
  v11 = MEMORY[0x1EEE9AC00](v60);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v51 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676D0, &qword_1B80DE6D0);
  v59 = *(v15 - 8);
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = type metadata accessor for ClientID();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FD03B0();
  v24 = v62;
  sub_1B80C99BC();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v53 = v13;
  v62 = v19;
  v25 = v22;
  v26 = v58;
  v67 = 0;
  v27 = sub_1B7FCE654(&qword_1EBA65A60, MEMORY[0x1E69695A8]);
  v28 = v60;
  v29 = v18;
  sub_1B80C972C();
  v52 = v27;
  v31 = *(v26 + 32);
  v31(v25, v61, v28);
  v65 = 1;
  sub_1B7FCE4D8();
  sub_1B80C972C();
  v61 = v31;
  v32 = v62;
  *(v25 + *(v62 + 20)) = v66;
  v64 = 3;
  v33 = sub_1B80C96AC();
  v34 = (v25 + *(v32 + 24));
  *v34 = v33;
  v34[1] = v35;
  v63 = 2;
  v36 = v57;
  v37 = v60;
  sub_1B80C96CC();
  v51 = v29;
  v52 = v15;
  v38 = v55;
  sub_1B7FCB390(v36, v55);
  v39 = (*(v26 + 48))(v38, 1, v37);
  v40 = v39 == 1;
  v41 = v36;
  v42 = v59;
  if (v40)
  {
    sub_1B7FB86D4(v38, &qword_1EBA667B0, &qword_1B80D68E8);
    sub_1B80C89DC();
    v43 = sub_1B80C89BC();
    if (v43)
    {
      v44 = v43;
      v45 = v54;
      sub_1B80C942C();

      v46 = 0;
      v50 = v56;
    }

    else
    {
      v46 = 1;
      v50 = v56;
      v45 = v54;
    }

    sub_1B7FB86D4(v57, &qword_1EBA667B0, &qword_1B80D68E8);
    (*(v42 + 8))(v51, v52);
    (*(v26 + 56))(v45, v46, 1, v60);
    sub_1B7FD0774(v45, v25 + *(v62 + 28));
  }

  else
  {
    sub_1B7FB86D4(v41, &qword_1EBA667B0, &qword_1B80D68E8);
    (*(v42 + 8))(v51, v52);
    v47 = v53;
    v48 = v61;
    (v61)(v53, v38, v37);
    v49 = *(v62 + 28);
    v48(v25 + v49, v47, v37);
    (*(v26 + 56))(v25 + v49, 0, 1, v37);
    v50 = v56;
  }

  sub_1B7FD0710(v25, v50);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1B7FD06B4(v25);
}

uint64_t sub_1B7FCC28C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66158, &qword_1B80D3350);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCB958, v1, 0);
}

uint64_t sub_1B7FCC380()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B7FCC28C(v3);
}

uint64_t sub_1B7FCC45C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCC380, 0, 0);
}

uint64_t objectdestroyTm(uint64_t a1)
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  v5 = v1[5];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_1()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  sub_1B7FC3CCC(*(v0 + v5), *(v0 + v5 + 8));

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t objectdestroyTm_2(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + 8, v5 | 7);
}

uint64_t LocationRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DF0, &qword_1B80D1ED0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FDC188();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DE8, &qword_1B80D3A20);
  LOBYTE(v31) = 0;
  sub_1B7FDC3C8(&qword_1ED8DBB88, sub_1B7FDC440);
  sub_1B80C972C();
  v11 = v34;
  LOBYTE(v31) = 1;
  sub_1B7FCFC68();
  sub_1B80C972C();
  v12 = v34;
  LOBYTE(v31) = 2;
  sub_1B7FCFB00();
  sub_1B80C972C();
  v45 = v12;
  v29 = v34;
  v13 = v36;
  v28 = v35;
  v30 = v37;
  LOBYTE(v34) = 3;
  v14 = sub_1B80C96EC();
  v26 = v13;
  v27 = v14;
  LOBYTE(v31) = 4;
  sub_1B7FD0518();
  sub_1B80C972C();
  v25 = v34;
  LOBYTE(v31) = 5;
  sub_1B7FCE8E8();
  sub_1B80C972C();
  LODWORD(v13) = v34;
  LOBYTE(v34) = 6;
  HIDWORD(v23) = sub_1B80C96EC();
  v24 = v13;
  v46 = 7;
  v15 = sub_1B80C96EC();
  v27 &= 1u;
  LOBYTE(v13) = BYTE4(v23) & 1;
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  HIDWORD(v23) = v16 & 1;
  *&v31 = v11;
  v17 = v45;
  BYTE8(v31) = v45;
  v18 = v29;
  LOBYTE(v32) = v29;
  v19 = v28;
  v20 = v26;
  *(&v32 + 1) = v28;
  *v33 = v26;
  *&v33[8] = v30;
  v33[16] = v27;
  v33[17] = v25;
  v33[18] = v24;
  v33[19] = v13;
  v33[20] = BYTE4(v23);
  v21 = v32;
  *a2 = v31;
  *(a2 + 16) = v21;
  *(a2 + 32) = *v33;
  *(a2 + 45) = *&v33[13];
  sub_1B7FCE69C(&v31, &v34);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v34 = v11;
  LOBYTE(v35) = v17;
  LOBYTE(v36) = v18;
  v37 = v19;
  v38 = v20;
  v39 = v30;
  v40 = v27;
  v41 = v25;
  v42 = v24;
  v43 = v13;
  v44 = BYTE4(v23);
  return sub_1B7FD0404(&v34);
}

uint64_t sub_1B7FCCC84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v25 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v24 - v17;
  v19 = sub_1B80C92CC();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v11 + 16))(v14, a1, v10);
  v20 = sub_1B7FCD1B8(&unk_1ED8DD838, _s18LocationConnectionCMa);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = v20;
  *(v22 + 4) = a2;
  (*(v11 + 32))(&v22[v21], v14, v10);
  *&v22[(v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = a3;
  swift_retain_n();
  sub_1B80A1D3C(0, 0, v18, v25, v22);
}

uint64_t sub_1B7FCCEC0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[12];
  v6 = (*(v0 + 192) + 16) & ~*(v0 + 192);
  v7 = v0[8];
  (v0[17])(v4, v0[11], v5);
  v8 = swift_allocObject();
  v2(v8 + v6, v4, v5);
  v0[6] = sub_1B7FCE2F8;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1B7FCE114;
  v0[5] = &block_descriptor_358;
  v9 = _Block_copy(v0 + 2);
  v10 = v0[7];

  [v7 startMonitoringStewieStateWithCompletion_];
  _Block_release(v9);
  swift_unknownObjectRelease();
  v12 = v0[15];
  v11 = v0[16];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1B7FCD090()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtCC12FindMyLocate7Session18LocationConnection_session);
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_1B7FCD170(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7FCD1B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RequestOrigin.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672F8, &qword_1B80DB850);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCFAAC();
  sub_1B80C99BC();
  if (!v2)
  {
    v20 = 0;
    sub_1B7FCFA58();
    sub_1B80C972C();
    v11 = v21;
    v19 = 1;
    v17 = sub_1B80C970C();
    v18 = 2;
    v13 = sub_1B80C96AC();
    v15 = v14;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    *(a2 + 8) = v17;
    *(a2 + 16) = v13;
    *(a2 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B7FCD3F4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v2 + 16);
  *(v0 + 136) = v5;
  *(v0 + 144) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v3, v4);
  v6 = *(v2 + 80);
  *(v0 + 192) = v6;
  v7 = (v6 + 16) & ~v6;
  v8 = swift_allocObject();
  *(v0 + 152) = v8;
  v9 = *(v2 + 32);
  *(v0 + 160) = v9;
  *(v0 + 168) = (v2 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v9(v8 + v7, v1, v4);
  v10 = *(MEMORY[0x1E699C838] + 4);
  v11 = swift_task_alloc();
  *(v0 + 176) = v11;
  v12 = _s18LocationConnectionCMa();
  v13 = sub_1B7FCD1B8(qword_1ED8DC6E8, _s18LocationConnectionCMa);
  *v11 = v0;
  v11[1] = sub_1B7FCD8D0;
  v14 = *(v0 + 80);

  return MEMORY[0x1EEE04428](v0 + 64, sub_1B804E098, v8, v12, v13);
}

uint64_t sub_1B7FCD5A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B7FC253C;

  return sub_1B7FCD7C4(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1B7FCD754(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66090, &qword_1B80D2CF8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7FCD7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
  v5[12] = v7;
  v8 = *(v7 - 8);
  v5[13] = v8;
  v5[14] = *(v8 + 64);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7FCD3F4, a4, 0);
}

uint64_t sub_1B7FCD8D0()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v9 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1B8047B18;
  }

  else
  {
    v6 = *(v2 + 152);
    v7 = *(v2 + 80);

    v5 = sub_1B7FCCEC0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t storeEnumTagSinglePayload for SecureLocationsStewie.ServiceState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B7FCDB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7FD0238(a1, a2);
  *a3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SecureLocationsStewie.ServiceState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1B7FCDC7C()
{
  v1 = *v0;
  v2 = 0x656C646E61486F74;
  v3 = 0xD000000000000017;
  if (v1 != 6)
  {
    v3 = 0x6465686361437369;
  }

  v4 = 1701869940;
  if (v1 != 4)
  {
    v4 = 0x5268736572666572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6E696769726FLL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v2 = 0x797469726F697270;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7FCDD9C()
{
  v1 = 0x6950746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E696769726FLL;
  }
}

uint64_t sub_1B7FCDE04()
{
  v1 = 0x736567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7041794D646E6966;
  }
}

uint64_t sub_1B7FCDE68()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B7FCE02C, 0, 0);
}

uint64_t sub_1B7FCDF64()
{
  v1 = 1684632949;
  v2 = 0x656E6E6F43637078;
  if (*v0 != 2)
  {
    v2 = 0x696669746E656469;
  }

  if (*v0)
  {
    v1 = 0x697463656E6E6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B7FCDFF4()
{
  if (*v0)
  {
    result = 0x756F72676B636162;
  }

  else
  {
    result = 6516856;
  }

  *v0;
  return result;
}

uint64_t sub_1B7FCE02C()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  v2[1] = sub_1B80A2604;

  return sub_1B7FB96B0(0, 0);
}

uint64_t type metadata accessor for ClientID()
{
  result = qword_1ED8DD698;
  if (!qword_1ED8DD698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7FCE114(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t storeEnumTagSinglePayload for DeviceWithCompanion.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B7FCE2A0()
{
  result = qword_1ED8DC3C8;
  if (!qword_1ED8DC3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceWithCompanion.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B7FCE38C(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    return sub_1B80C927C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660A8, &qword_1B80D2DB8);
    return sub_1B80C928C();
  }
}

unint64_t sub_1B7FCE400()
{
  result = qword_1ED8DC3E0;
  if (!qword_1ED8DC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3E0);
  }

  return result;
}

uint64_t objectdestroy_16Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, v6 + v7, v5 | 7);
}

unint64_t sub_1B7FCE4D8()
{
  result = qword_1EBA65968;
  if (!qword_1EBA65968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65968);
  }

  return result;
}

uint64_t sub_1B7FCE52C()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_1B7FCE6D4;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_1B7FEA684;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B7FCE654(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7FCE6D4()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[2];

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66160, &qword_1B80D3358);
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = v0[1];
  v6 = v0[10];

  return v5();
}

FindMyLocate::LegacyRefreshCommandReason_optional __swiftcall LegacyRefreshCommandReason.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 15;
  if (rawValue < 0xF)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B7FCE7A0()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_1B7FCE894()
{
  result = qword_1ED8DC440;
  if (!qword_1ED8DC440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC440);
  }

  return result;
}

unint64_t sub_1B7FCE8E8()
{
  result = qword_1ED8DBBA8;
  if (!qword_1ED8DBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBBA8);
  }

  return result;
}

uint64_t _s12FindMyLocate6HandleV13isPhoneNumberySbSSFZ_0()
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB60]) initWithTypes:2048 error:v15];
  if (!v0)
  {
    v8 = v15[0];
    v9 = sub_1B80C8D0C();

    swift_willThrow();
    if (qword_1EBA65AA8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B80C900C();
    __swift_project_value_buffer(v10, qword_1EBA7ACB0);
    v11 = sub_1B80C8FEC();
    v12 = sub_1B80C93FC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B7FB5000, v11, v12, "Failed to create PhoneNumbersDetector", v13, 2u);
      MEMORY[0x1B8CB8970](v13, -1, -1);
    }

    goto LABEL_11;
  }

  v1 = v0;
  v2 = v15[0];
  v3 = sub_1B80C90AC();
  v4 = [v1 matchesInString:v3 options:0 range:{0, sub_1B80C912C()}];

  sub_1B7FCEB58();
  v5 = sub_1B80C921C();

  if (v5 >> 62)
  {
    v6 = sub_1B80C963C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v6)
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  result = 1;
LABEL_12:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B7FCEB58()
{
  result = qword_1ED8DBBE0;
  if (!qword_1ED8DBBE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8DBBE0);
  }

  return result;
}

FindMyLocate::LegacyRefreshSchedule_optional __swiftcall LegacyRefreshSchedule.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B7FCEC00(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B80C8BAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v23 = a1;
  v24 = a2;

  if (_s12FindMyLocate6HandleV13isPhoneNumberySbSSFZ_0())
  {
    v22[0] = a1;
    v22[1] = a2;
    sub_1B80C8B8C();
    sub_1B80C8B9C();
    v12 = *(v5 + 8);
    v12(v11, v4);
    sub_1B7FB6CB8();
    v13 = sub_1B80C947C();
    v12(v9, v4);

    v22[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    sub_1B807E2E0();
    v14 = sub_1B80C906C();
    v16 = v15;

    v23 = v14;
    v24 = v16;

    v17 = sub_1B808E5E4(v14, v16);
    v19 = v18;

    if (v19)
    {
      if (v17 == 43 && v19 == 0xE100000000000000)
      {
      }

      else
      {
        v20 = sub_1B80C981C();

        if ((v20 & 1) == 0)
        {
          sub_1B80C914C();
        }
      }
    }
  }

  return v23;
}

unint64_t sub_1B7FCEE34()
{
  result = qword_1ED8DC448;
  if (!qword_1ED8DC448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC448);
  }

  return result;
}

uint64_t Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v102 = a8;
  v103 = a5;
  v104 = a3;
  v105 = a4;
  v100 = a7;
  v101 = a10;
  v106 = sub_1B80C8E2C();
  v14 = *(v106 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v106);
  v94 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v91 = &v88 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v95 = &v88 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v93 = &v88 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v97 = &v88 - v24;
  sub_1B7FCEC00(a1, a2);

  v99 = sub_1B80C90FC();
  v26 = v25;

  v27 = 1 << *(a6 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a6 + 64);
  v30 = (v27 + 63) >> 6;
  v96 = (v14 + 32);
  v92 = v14 + 40;
  v98 = v26;

  v31 = 0;
  v107 = MEMORY[0x1E69E7CC8];
  while (v29)
  {
LABEL_4:
    v32 = __clz(__rbit64(v29));
    v29 &= v29 - 1;
    v33 = v32 | (v31 << 6);
    v34 = (*(a6 + 48) + 16 * v33);
    v35 = *v34;
    v36 = v34[1];
    v37 = *(*(a6 + 56) + 8 * v33);

    v38 = sub_1B80C967C();

    if (v38 <= 2)
    {
      if (v37 == 0.0)
      {
        v40 = v93;
        sub_1B80C8D6C();
        v89 = *v96;
        v89(v95, v40, v106);
        v41 = v107;
        LODWORD(v90) = swift_isUniquelyReferenced_nonNull_native();
        v108 = v41;
        v43 = sub_1B7FDA32C(v38);
        v44 = v41[2];
        v45 = (v42 & 1) == 0;
        v46 = v44 + v45;
        if (__OFADD__(v44, v45))
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          result = sub_1B80C986C();
          __break(1u);
          return result;
        }

        if (v41[3] >= v46)
        {
          if ((v90 & 1) == 0)
          {
            LODWORD(v107) = v42;
            sub_1B8092758();
            LOBYTE(v42) = v107;
          }
        }

        else
        {
          LODWORD(v107) = v42;
          sub_1B80916B8(v46, v90);
          v47 = sub_1B7FDA32C(v38);
          v48 = v42 & 1;
          LOBYTE(v42) = v107;
          if ((v107 & 1) != v48)
          {
            goto LABEL_44;
          }

          v43 = v47;
        }

        v59 = v108;
        v107 = v108;
        if (v42)
        {
          (*(v14 + 40))(v108[7] + *(v14 + 72) * v43, v95, v106);
        }

        else
        {
          v108[(v43 >> 6) + 8] |= 1 << v43;
          *(v59[6] + v43) = v38;
          v89((v59[7] + *(v14 + 72) * v43), v95, v106);
          v60 = v59[2];
          v56 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v56)
          {
            goto LABEL_42;
          }

          v59[2] = v61;
        }
      }

      else
      {
        v49 = v91;
        sub_1B80C8DCC();
        v90 = *v96;
        v90(v94, v49, v106);
        v50 = v107;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = v50;
        v52 = sub_1B7FDA32C(v38);
        v54 = v50[2];
        v55 = (v53 & 1) == 0;
        v56 = __OFADD__(v54, v55);
        v57 = v54 + v55;
        if (v56)
        {
          goto LABEL_41;
        }

        if (v50[3] >= v57)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v107 = v52;
            v65 = v53;
            sub_1B8092758();
            LOBYTE(v53) = v65;
            v52 = v107;
          }
        }

        else
        {
          LODWORD(v107) = v53;
          sub_1B80916B8(v57, isUniquelyReferenced_nonNull_native);
          v52 = sub_1B7FDA32C(v38);
          v58 = v53 & 1;
          LOBYTE(v53) = v107;
          if ((v107 & 1) != v58)
          {
            goto LABEL_44;
          }
        }

        v62 = v108;
        v107 = v108;
        if (v53)
        {
          (*(v14 + 40))(v108[7] + *(v14 + 72) * v52, v94, v106);
        }

        else
        {
          v108[(v52 >> 6) + 8] |= 1 << v52;
          *(v62[6] + v52) = v38;
          v90((v62[7] + *(v14 + 72) * v52), v94, v106);
          v63 = v62[2];
          v56 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v56)
          {
            goto LABEL_43;
          }

          v62[2] = v64;
        }
      }
    }
  }

  while (1)
  {
    v39 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v39 >= v30)
    {
      break;
    }

    v29 = *(a6 + 64 + 8 * v39);
    ++v31;
    if (v29)
    {
      v31 = v39;
      goto LABEL_4;
    }
  }

  v66 = v107;

  v67 = v97;
  sub_1B80C8E1C();
  sub_1B80C8DDC();
  v69 = v68;
  (*(v14 + 8))(v67, v106);
  v70 = v100;
  v71 = *(v100 + 16);
  if (v71)
  {
    v108 = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v71, 0);
    v72 = v108;
    v73 = (v70 + 40);
    do
    {
      v74 = *(v73 - 1);
      v75 = *v73;
      v76 = sub_1B80C90FC();
      v108 = v72;
      v79 = v72[2];
      v78 = v72[3];
      if (v79 >= v78 >> 1)
      {
        v81 = v76;
        v82 = v77;
        sub_1B7FCF988((v78 > 1), v79 + 1, 1);
        v77 = v82;
        v76 = v81;
        v72 = v108;
      }

      v72[2] = v79 + 1;
      v80 = &v72[2 * v79];
      v80[4] = v76;
      v80[5] = v77;
      v73 += 2;
      --v71;
    }

    while (v71);
    v66 = v107;
  }

  else
  {

    v72 = MEMORY[0x1E69E7CC0];
  }

  v85 = v98;
  v84 = v99;
  *a9 = v99;
  *(a9 + 8) = v85;
  *(a9 + 16) = v84;
  *(a9 + 24) = v85;
  *(a9 + 32) = 0;
  *(a9 + 40) = 0;
  *(a9 + 48) = 0;
  *(a9 + 56) = v66;
  *(a9 + 64) = floor(v69 * 1000.0);
  *(a9 + 72) = 0;
  *(a9 + 80) = 0;
  v86 = v101;
  *(a9 + 88) = v102;
  *(a9 + 96) = v86;
  *(a9 + 104) = 1;
  v87 = v104;
  *(a9 + 112) = v103;
  *(a9 + 120) = 0u;
  *(a9 + 136) = 0u;
  *(a9 + 152) = v72;
  *(a9 + 160) = v87;
  *(a9 + 168) = v105;
  return result;
}