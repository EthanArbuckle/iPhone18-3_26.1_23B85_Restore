void *sub_1A7DDF468(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCCE10(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1A7CC7FFC(&qword_1EB2B4AF8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF56C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A7CCDC84(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A7DDF690(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1A7E22DA0();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1A7E22DA0();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Void __swiftcall LinkEngineStateLog.log(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *v1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1A7CCCAA4(0, *(v4 + 2) + 1, 1, v4);
    *v1 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1A7CCCAA4((v6 > 1), v7 + 1, 1, v4);
  }

  *(v4 + 2) = v7 + 1;
  v8 = &v4[16 * v7];
  *(v8 + 4) = countAndFlagsBits;
  *(v8 + 5) = object;
  *v1 = v4;
}

uint64_t LinkEngineStateLog.log(_:engine:indentation:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1[3];
  v8 = a1[4];
  v12 = MEMORY[0x1E69E7CC0];
  sub_1A7CC9878(a1, v7);
  (*(v8 + 8))(&v12, a2, v7, v8);
  v11 = v12;
  v9._countAndFlagsBits = a3;
  v9._object = a4;
  LinkEngineStateLog.log(_:indentation:)(&v11, v9);
}

uint64_t LinkEngineStateLog.loggedState.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t LinkEngineStateLog.description.getter()
{

  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v0 = sub_1A7E221F0();

  return v0;
}

uint64_t sub_1A7DDF9E8()
{

  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v0 = sub_1A7E221F0();

  return v0;
}

uint64_t sub_1A7DDFA94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a2;
  v4 = sub_1A7CC7FFC(&unk_1EB2B7CA0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_1A7CC7FFC(&qword_1EB2B5DC8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for LEToolLinksListRequest(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for LEToolLinksRequest(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A7DE8904(a1, v20, type metadata accessor for LEToolLinksRequest);
  sub_1A7DE896C(v20, v16, type metadata accessor for LEToolLinksListRequest);
  v21 = *(v2 + 16);
  os_unfair_lock_lock((v21 + 16));
  v22 = *(v21 + 24);

  os_unfair_lock_unlock((v21 + 16));
  v23 = sub_1A7D38804(v22);

  sub_1A7CD1F00(v16, v7, &unk_1EB2B7CA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A7DE89D4(v16, type metadata accessor for LEToolLinksListRequest);
    result = sub_1A7CC9970(v7, &unk_1EB2B7CA0);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    v28 = v23;

    sub_1A7CC7FFC(&qword_1EB2B7CB0);
    sub_1A7D3B868();
    v25 = sub_1A7E22490();

    (*(v9 + 8))(v12, v8);
    sub_1A7DE89D4(v16, type metadata accessor for LEToolLinksListRequest);

    v23 = v25;
  }

  *v27 = v23;
  return result;
}

uint64_t sub_1A7DDFE28(uint64_t a1, unint64_t a2, int a3)
{
  result = LinkEngine.link(_:)(a1, a2);
  if (result)
  {
    v7 = result;
    if (qword_1EB2B2D88 != -1)
    {
      swift_once();
    }

    v8 = sub_1A7E22060();
    sub_1A7B0CB00(v8, qword_1EB2B2D90);

    v9 = sub_1A7E22040();
    v10 = sub_1A7E228F0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1A7B0CB38(a1, a2, &v22);
      *(v11 + 12) = 2080;
      v13 = IDSRadioAccessTechnology.description.getter(a3);
      v15 = sub_1A7B0CB38(v13, v14, &v22);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_1A7AD9000, v9, v10, "Setting RAT for link %s to %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v12, -1, -1);
      MEMORY[0x1AC5654B0](v11, -1, -1);
    }

    LinkEngineLink.definition.getter(&v26);
    if (v26)
    {
      v25 = &type metadata for LinkEndpointIDSRAT;
      LODWORD(v22) = a3;
      sub_1A7CC8D74(&v22, &type metadata for LinkEndpointIDSRAT);
      v16 = v26;
      v17 = v27;
      v18 = v28;
      os_unfair_lock_lock(v7 + 10);
      v22 = v16;
      v23 = v17;
      v24 = v18;
      v25 = &type metadata for LinkDefinitionComponent;
      sub_1A7CDB7B8(v16);
      sub_1A7CC8D74(&v22, &type metadata for LinkDefinitionComponent);
      os_unfair_lock_unlock(v7 + 10);
      v19 = v16;
    }

    else
    {
      v20 = v27;
      v21 = v28;
      sub_1A7CDB7B8(0);
      os_unfair_lock_lock(v7 + 10);
      v22 = 0;
      v23 = v20;
      v24 = v21;
      v25 = &type metadata for LinkDefinitionComponent;
      sub_1A7CDB7B8(0);
      sub_1A7CC8D74(&v22, &type metadata for LinkDefinitionComponent);
      os_unfair_lock_unlock(v7 + 10);
      sub_1A7CDB84C(0);
      v19 = 0;
    }

    sub_1A7CDB84C(v19);
    os_unfair_lock_lock(v7 + 10);
    v25 = &type metadata for IDSObservedRemoteRAT;
    LODWORD(v22) = a3;
    BYTE4(v22) = 0;
    sub_1A7CC8D74(&v22, &type metadata for IDSObservedRemoteRAT);
    os_unfair_lock_unlock(v7 + 10);
  }

  return result;
}

uint64_t sub_1A7DE0168()
{
  LinkEngine.scheduleUpdate()();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A7DE01E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB2B2D88 != -1)
  {
    swift_once();
  }

  v12 = sub_1A7E22060();
  sub_1A7B0CB00(v12, qword_1EB2B2D90);

  v13 = sub_1A7E22040();
  v14 = sub_1A7E228F0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1A7B0CB38(a1, a2, &v19);
    _os_log_impl(&dword_1A7AD9000, v13, v14, "linkDidConnect: %s", v15, 0xCu);
    sub_1A7B0CD6C(v16);
    MEMORY[0x1AC5654B0](v16, -1, -1);
    MEMORY[0x1AC5654B0](v15, -1, -1);
  }

  if (LinkEngine.link(_:)(a1, a2))
  {
    sub_1A7E22CC0();
    swift_storeEnumTagMultiPayload();
    LinkEngineLink.state.setter(v11);
  }

  idsGLRunInTaskWithInferredTaskPriority(_:)(a3, v5);
}

void sub_1A7DE0404(uint64_t a1, unint64_t a2, NSObject *a3)
{
  v5 = v3;
  v8 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v31 - v14;
  if (qword_1EB2B2D88 != -1)
  {
    swift_once();
  }

  v16 = sub_1A7E22060();
  sub_1A7B0CB00(v16, qword_1EB2B2D90);

  v17 = sub_1A7E22040();
  v18 = sub_1A7E228F0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v32 = v5;
    v33 = a3;
    v20 = v19;
    v21 = v11;
    v22 = swift_slowAlloc();
    v34 = v22;
    *v20 = 136315138;
    *(v20 + 4) = sub_1A7B0CB38(a1, a2, &v34);
    _os_log_impl(&dword_1A7AD9000, v17, v18, "linkDidDisconnect: %s", v20, 0xCu);
    sub_1A7B0CD6C(v22);
    v23 = v22;
    v11 = v21;
    MEMORY[0x1AC5654B0](v23, -1, -1);
    v24 = v20;
    v5 = v32;
    a3 = v33;
    MEMORY[0x1AC5654B0](v24, -1, -1);
  }

  if (LinkEngine.link(_:)(a1, a2))
  {
    LinkEngineLink.state.getter(v15);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v25 = sub_1A7E22040();
      v26 = sub_1A7E228F0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1A7AD9000, v25, v26, "link already in failed state; ignoring move to disconnected", v27, 2u);
        MEMORY[0x1AC5654B0](v27, -1, -1);
      }
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      LinkEngineLink.state.setter(v11);
      sub_1A7DE89D4(v15, type metadata accessor for LinkState);
    }

    idsGLRunInTaskWithInferredTaskPriority(_:)(a3, v5);
  }

  else
  {
    v33 = sub_1A7E22040();
    v28 = sub_1A7E228F0();
    if (os_log_type_enabled(v33, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1A7AD9000, v33, v28, "no link", v29, 2u);
      MEMORY[0x1AC5654B0](v29, -1, -1);
    }

    v30 = v33;
  }
}

void sub_1A7DE07A4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v8 = v6;
  v39 = a4;
  v40 = a3;
  v41 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v41, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v37 - v17;
  if (qword_1EB2B2D88 != -1)
  {
    swift_once();
  }

  v19 = sub_1A7E22060();
  sub_1A7B0CB00(v19, qword_1EB2B2D90);

  v20 = sub_1A7E22040();
  v21 = sub_1A7E228F0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v8;
    v38 = a6;
    v23 = v22;
    v24 = a5;
    v25 = swift_slowAlloc();
    v42 = v25;
    *v23 = 136315138;
    *(v23 + 4) = sub_1A7B0CB38(a1, a2, &v42);
    _os_log_impl(&dword_1A7AD9000, v20, v21, "linkDidFail: %s", v23, 0xCu);
    sub_1A7B0CD6C(v25);
    v26 = v25;
    a5 = v24;
    MEMORY[0x1AC5654B0](v26, -1, -1);
    v27 = v23;
    v8 = v37;
    a6 = v38;
    MEMORY[0x1AC5654B0](v27, -1, -1);
  }

  if (LinkEngine.link(_:)(a1, a2))
  {
    LinkEngineLink.state.getter(v18);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v33 = sub_1A7E22CF0();
      (*(*(v33 - 8) + 8))(v18, v33);
    }

    else if (EnumCaseMultiPayload != 5)
    {
      v29 = v39 & 1;
      *v14 = v40;
      v14[8] = v29;
      v14[9] = a5 & 1;
      swift_storeEnumTagMultiPayload();
      LinkEngineLink.state.setter(v14);
      sub_1A7DE89D4(v18, type metadata accessor for LinkState);
LABEL_18:

      idsGLRunInTaskWithInferredTaskPriority(_:)(a6, v8);

      return;
    }

    v34 = sub_1A7E22040();
    v35 = sub_1A7E228F0();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1A7AD9000, v34, v35, "link already disconnecting; ignore supposed failure", v36, 2u);
      MEMORY[0x1AC5654B0](v36, -1, -1);
    }

    goto LABEL_18;
  }

  v41 = sub_1A7E22040();
  v30 = sub_1A7E228F0();
  if (os_log_type_enabled(v41, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1A7AD9000, v41, v30, "no link", v31, 2u);
    MEMORY[0x1AC5654B0](v31, -1, -1);
  }

  v32 = v41;
}

uint64_t sub_1A7DE0B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v18 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v18 - v14;
  result = LinkEngine.link(_:)(a1, a2);
  if (result)
  {
    LinkEngineLink.state.getter(v11);

    sub_1A7DE896C(v11, v15, type metadata accessor for LinkState);
    sub_1A7DE896C(v15, v7, type metadata accessor for LinkState);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      sub_1A7DE89D4(v7, type metadata accessor for LinkState);
      return 0;
    }

    else
    {
      v17 = sub_1A7E22CF0();
      (*(*(v17 - 8) + 8))(v7, v17);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1A7DE0D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B7BF0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for IDSLinksQualityReportBuilder();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v4 + 16);
  v26[0] = a1;
  v26[1] = a2;
  os_unfair_lock_lock((v18 + 200));
  sub_1A7CC9600((v18 + 208), &v24);
  os_unfair_lock_unlock((v18 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSLinksQualityReportBuilderComponent();
  if ((swift_dynamicCast() & 1) != 0 && v25)
  {
    v19 = (v25 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder);
    os_unfair_lock_lock((v25 + OBJC_IVAR____TtC13IDSFoundation37IDSLinksQualityReportBuilderComponent__builder));
    v20 = sub_1A7CC7FFC(&qword_1EB2B53D8);
    sub_1A7DE8904(v19 + *(v20 + 28), v12, type metadata accessor for IDSLinksQualityReportBuilder);
    os_unfair_lock_unlock(v19);

    (*(v14 + 56))(v12, 0, 1, v13);
    sub_1A7DE896C(v12, v17, type metadata accessor for IDSLinksQualityReportBuilder);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    sub_1A7E22050();
    v21 = *(v13 + 20);
    *&v17[v21] = sub_1A7CE363C(MEMORY[0x1E69E7CC0]);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_1A7CC9970(v12, &unk_1EB2B7BF0);
    }
  }

  sub_1A7DBB890(v26, a3, a4);
  return sub_1A7DA1520(v17);
}

uint64_t sub_1A7DE104C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B2BF0);
  sub_1A7B0CB00(v0, qword_1EB2B2BF0);
  return sub_1A7E22050();
}

uint64_t sub_1A7DE10D4(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    v2 = &unk_1F1AABF38;
  }

  else
  {
    v2 = &unk_1F1AABF78;
  }

  if ((a1 & 1 & a2) != 0)
  {
    v3 = &unk_1F1AABFB8;
  }

  else
  {
    v3 = &unk_1F1AABFF8;
  }

  sub_1A7CC7FFC(&qword_1EB2B7C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A7E455C0;
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  *(inited + 48) = &unk_1F1AAC038;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1A7CCED90(0, 3, 0);
  for (i = 32; i != 56; i += 8)
  {
    v6 = *(inited + i);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    swift_bridgeObjectRetain_n();
    sub_1A7E22B70();

    v8 = MEMORY[0x1AC561E20](v6, &type metadata for LinkProtocolID);
    MEMORY[0x1AC561C90](v8);

    MEMORY[0x1AC561C90](41, 0xE100000000000000);

    v10 = *(v13 + 16);
    v9 = *(v13 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_1A7CCED90((v9 > 1), v10 + 1, 1);
    }

    *(v13 + 16) = v10 + 1;
    v11 = (v13 + 32 * v10);
    v11[4] = sub_1A7DE87AC;
    v11[5] = v7;
    v11[6] = 0x6F636F746F72702ELL;
    v11[7] = 0xEF286B636174536CLL;
  }

  return v13;
}

uint64_t sub_1A7DE12EC(char a1)
{
  os_unfair_lock_lock((v1 + 72));
  *(v1 + 80) = a1;
  os_unfair_lock_unlock((v1 + 72));
  v3 = *(v1 + 128);
  v4 = v3 & 0x7FFFFFFFFFFFFFFFLL;
  if (v3 < 0)
  {
    v5 = 40;
  }

  else
  {
    v5 = 80;
  }

  if (v3 < 0)
  {
    v6 = 72;
  }

  else
  {
    v6 = 88;
  }

  os_unfair_lock_lock((v1 + 72));
  v7 = *(v1 + 80);
  os_unfair_lock_unlock((v1 + 72));
  os_unfair_lock_lock((v1 + 72));
  v8 = *(v1 + 81);
  os_unfair_lock_unlock((v1 + 72));
  v9 = sub_1A7DE10D4(v7, v8);
  sub_1A7CC7FFC(&qword_1EB2B4AF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = v9;
  v11 = *(v4 + 32);
  os_unfair_lock_lock((v11 + v5));
  *(v11 + v6) = v10;

  os_unfair_lock_unlock((v11 + v5));
}

uint64_t sub_1A7DE13FC(char a1)
{
  os_unfair_lock_lock((v1 + 72));
  *(v1 + 81) = a1;
  os_unfair_lock_unlock((v1 + 72));
  v3 = *(v1 + 128);
  v4 = v3 & 0x7FFFFFFFFFFFFFFFLL;
  if (v3 < 0)
  {
    v5 = 40;
  }

  else
  {
    v5 = 80;
  }

  if (v3 < 0)
  {
    v6 = 72;
  }

  else
  {
    v6 = 88;
  }

  os_unfair_lock_lock((v1 + 72));
  v7 = *(v1 + 80);
  os_unfair_lock_unlock((v1 + 72));
  os_unfair_lock_lock((v1 + 72));
  v8 = *(v1 + 81);
  os_unfair_lock_unlock((v1 + 72));
  v9 = sub_1A7DE10D4(v7, v8);
  sub_1A7CC7FFC(&qword_1EB2B4AF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A7E418C0;
  *(v10 + 32) = v9;
  v11 = *(v4 + 32);
  os_unfair_lock_lock((v11 + v5));
  *(v11 + v6) = v10;

  os_unfair_lock_unlock((v11 + v5));
}

uint64_t sub_1A7DE150C(uint64_t a1)
{
  v2 = v1;
  if (qword_1EB2B2BE8 != -1)
  {
    swift_once();
  }

  v4 = sub_1A7E22060();
  sub_1A7B0CB00(v4, qword_1EB2B2BF0);
  v5 = sub_1A7E22040();
  v6 = sub_1A7E228F0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    type metadata accessor for IDSGLLinkConnectorRelayConnectionBehavior(0);
    v9 = sub_1A7E222F0();
    v11 = sub_1A7B0CB38(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1A7AD9000, v5, v6, "IDSGLLinkEngine: setting behavior = %s", v7, 0xCu);
    sub_1A7B0CD6C(v8);
    MEMORY[0x1AC5654B0](v8, -1, -1);
    MEMORY[0x1AC5654B0](v7, -1, -1);
  }

  if (*(v2 + 128) < 0)
  {
    v12 = &protocol witness table for IDSGLLinkEngineTwoWayConnectionStrategy;
  }

  else
  {
    v12 = &protocol witness table for IDSGLLinkEngineGFTConnectionStrategy;
  }

  ObjectType = swift_getObjectType();
  v14 = v12[2];

  v14(a1, ObjectType, v12);

  idsGLRunInTaskWithInferredTaskPriority(_:)(&unk_1A7E54050, v2);
}

uint64_t sub_1A7DE16FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___IDSRelayLinkProvider_provider);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 32);

  os_unfair_lock_unlock((v2 + 16));

  return v3;
}

uint64_t sub_1A7DE1768(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___IDSRelayLinkProvider_provider);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 24);

  os_unfair_lock_unlock((v2 + 16));

  return v3;
}

uint64_t sub_1A7DE17D4(unsigned __int8 *a1, uint64_t (*a2)(void, void))
{
  v3 = *a1;
  v4 = a1[1];
  if (qword_1EB2B2BE8 != -1)
  {
    swift_once();
  }

  v5 = sub_1A7E22060();
  sub_1A7B0CB00(v5, qword_1EB2B2BF0);
  v6 = sub_1A7E22040();
  v7 = sub_1A7E228F0();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v10 = 0xE300000000000000;
    v11 = 0x6C6C65436E6F4ELL;
    if (v3 == 1)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v11 = 7958081;
    }

    if (v3)
    {
      v12 = v11;
    }

    else
    {
      v12 = 1819043139;
    }

    if (v3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE400000000000000;
    }

    v14 = sub_1A7B0CB38(v12, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    v15 = 0xE300000000000000;
    v16 = 0x6C6C65436E6F4ELL;
    if (v4 == 1)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v16 = 7958081;
    }

    if (v4)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1819043139;
    }

    if (v4)
    {
      v18 = v15;
    }

    else
    {
      v18 = 0xE400000000000000;
    }

    v19 = sub_1A7B0CB38(v17, v18, &v21);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_1A7AD9000, v6, v7, "_IDSGLLinkEngine: calling allocate block with from: %s, to: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v9, -1, -1);
    MEMORY[0x1AC5654B0](v8, -1, -1);
  }

  return a2((v3 + 1), (v4 + 1));
}

uint64_t sub_1A7DE19FC(uint64_t result, char a2, char a3, char a4)
{
  v5 = *(v4 + 128);
  if ((v5 & 0x8000000000000000) == 0)
  {
    return result;
  }

  LOBYTE(v6) = a4;
  LOBYTE(v7) = a3;
  v9 = result;
  v50 = v5 & 0x7FFFFFFFFFFFFFFFLL;

  if ((a2 & 1) == 0)
  {
    v11 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  LOBYTE(inited) = 1;
  v11 = sub_1A7CCE55C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    *(v11 + 2) = v14;
    v11[v13 + 32] = inited;
    if (v9)
    {
LABEL_16:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1A7CCE55C(0, *(v11 + 2) + 1, 1, v11);
      }

      v23 = *(v11 + 2);
      v22 = *(v11 + 3);
      if (v23 >= v22 >> 1)
      {
        v11 = sub_1A7CCE55C((v22 > 1), v23 + 1, 1, v11);
      }

      *(v11 + 2) = v23 + 1;
      v11[v23 + 32] = 0;
      if ((v6 & 1) == 0)
      {
LABEL_21:
        v15 = MEMORY[0x1E69E7CC0];
        if (v7)
        {
          goto LABEL_22;
        }

        goto LABEL_9;
      }
    }

    else
    {
LABEL_5:
      if ((v6 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v15 = sub_1A7CCE55C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1A7CCE55C((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v15[v17 + 32] = 1;
    if (v7)
    {
LABEL_22:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1A7CCE55C(0, *(v15 + 2) + 1, 1, v15);
      }

      v20 = *(v15 + 2);
      v24 = *(v15 + 3);
      v18 = (v20 + 1);
      if (v20 >= v24 >> 1)
      {
        v15 = sub_1A7CCE55C((v24 > 1), v20 + 1, 1, v15);
      }

      v21 = 0;
      goto LABEL_27;
    }

LABEL_9:
    v18 = *(v15 + 2);
    if (v18)
    {
      goto LABEL_28;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1A7CCE55C(0, 1, 1, v15);
    }

    v20 = *(v15 + 2);
    v19 = *(v15 + 3);
    v18 = (v20 + 1);
    if (v20 >= v19 >> 1)
    {
      v15 = sub_1A7CCE55C((v19 > 1), v20 + 1, 1, v15);
    }

    v21 = 2;
LABEL_27:
    *(v15 + 2) = v18;
    v15[v20 + 32] = v21;
LABEL_28:
    v53 = *(v11 + 2);
    if (v53)
    {
      v25 = 0;
      v51 = v11 + 32;
      v26 = v15 + 32;
      v7 = MEMORY[0x1E69E7CD0];
      v52 = v11;
      while (v25 < *(v11 + 2))
      {
        v27 = 0;
        v28 = v51[v25];
        v54 = v25 + 1;
        do
        {
          v30 = v7 + 56;
          while (1)
          {
            v31 = (v27++)[v26];
            sub_1A7E23200();
            MEMORY[0x1AC562AF0](v28);
            MEMORY[0x1AC562AF0](v31);
            v32 = sub_1A7E23240();
            v33 = -1 << *(v7 + 32);
            v34 = v32 & ~v33;
            if (((*(v30 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              break;
            }

            v35 = ~v33;
            while (1)
            {
              v36 = (*(v7 + 48) + 2 * v34);
              v37 = *v36;
              v38 = v36[1];
              if (v37 == v28 && v38 == v31)
              {
                break;
              }

              v34 = (v34 + 1) & v35;
              if (((*(v30 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
              {
                goto LABEL_33;
              }
            }

            if (v27 == v18)
            {
              goto LABEL_30;
            }
          }

LABEL_33:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v7;
          sub_1A7CF1E70(v28 | (v31 << 8), v34, isUniquelyReferenced_nonNull_native);
          v7 = v56;
        }

        while (v27 != v18);
LABEL_30:
        v25 = v54;
        v11 = v52;
        if (v54 == v53)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v7 = MEMORY[0x1E69E7CD0];
LABEL_46:
    sub_1A7CC7FFC(&unk_1EB2B7C00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A7E418B0;
    *(inited + 32) = 0x100000100000101;
    v40 = *(v7 + 16);
    if (!v40)
    {
      break;
    }

    v13 = v11;
    v6 = sub_1A7CE0C04(*(v7 + 16), 0);
    v55 = sub_1A7CE1250(&v56, v6 + 16, v40, v7);
    v9 = v57;
    v14 = v58;
    v11 = v59;

    sub_1A7CC9770();
    v12 = v55;
    if (v55 == v40)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_58:
    v11 = sub_1A7CCE55C((v12 > 1), v14, 1, v11);
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v56 = v6;
  sub_1A7DE6780(&v56, inited);

  v18 = v56;
  swift_setDeallocating();

  if (qword_1EB2B2BE8 == -1)
  {
    goto LABEL_51;
  }

LABEL_56:
  swift_once();
LABEL_51:
  v41 = sub_1A7E22060();
  sub_1A7B0CB00(v41, qword_1EB2B2BF0);

  v42 = sub_1A7E22040();
  v43 = sub_1A7E228F0();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v56 = v45;
    *v44 = 136315138;
    v46 = MEMORY[0x1AC561E20](v18, &type metadata for IDSLinkCellularTuple);
    v48 = sub_1A7B0CB38(v46, v47, &v56);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_1A7AD9000, v42, v43, "TwoWay: setting desired link types to %s", v44, 0xCu);
    sub_1A7B0CD6C(v45);
    MEMORY[0x1AC5654B0](v45, -1, -1);
    MEMORY[0x1AC5654B0](v44, -1, -1);
  }

  v49 = *(v50 + 32);

  os_unfair_lock_lock((v49 + 40));
  *(v49 + 88) = v18;

  os_unfair_lock_unlock((v49 + 40));
}

unsigned __int8 *sub_1A7DE2054(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = result[1];
    v6 = *a2;
    v7 = a2[1];
    v8 = (a3 + 33);
    v9 = *result;
    while (1)
    {
      if (v9 == 2 || ((v13 = *(v8 - 1), v9 != v13) ? (v14 = v13 == 2) : (v14 = 1), v14))
      {
        v10 = *v8;
        v11 = v5 == v10 || v5 == 2;
        if (v11 || v10 == 2)
        {
          break;
        }
      }

      ++v4;
      v8 += 2;
      if (v3 == v4)
      {
        v4 = 99;
        break;
      }
    }

    v15 = 0;
    v16 = (a3 + 33);
    while (v3 != v15)
    {
      if (v6 == 2 || ((v20 = *(v16 - 1), v6 != v20) ? (v21 = v20 == 2) : (v21 = 1), v21))
      {
        v17 = *v16;
        v18 = v7 == v17 || v7 == 2;
        if (v18 || v17 == 2)
        {
          return (v4 < v15);
        }
      }

      ++v15;
      v16 += 2;
      if (v3 == v15)
      {
        v15 = 99;
        return (v4 < v15);
      }
    }

    __break(1u);
  }

  else
  {
    v15 = 99;
    v4 = 99;
    return (v4 < v15);
  }

  return result;
}

uint64_t sub_1A7DE2130(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  type metadata accessor for LEToolLinksRequest(0);
  v3[5] = swift_task_alloc();
  v3[6] = type metadata accessor for LEToolRequest(0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DE21F4, 0, 0);
}

char *sub_1A7DE21F4()
{
  v77 = v0;
  v1 = v0;
  sub_1A7DE8904(v0[3], v0[7], type metadata accessor for LEToolRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v13 = v0[4];
    v5 = v0[2];
    if (EnumCaseMultiPayload == 2)
    {
      v14 = *(v13 + 56);
      os_unfair_lock_lock((v14 + 208));
      v15 = *(v14 + 214);
      os_unfair_lock_unlock((v14 + 208));
      os_unfair_lock_lock((v14 + 208));
      *(v14 + 214) = (v15 & 1) == 0;
      os_unfair_lock_unlock((v14 + 208));

      idsGLRunInTaskWithInferredTaskPriority(_:)(&unk_1A7E54080, v13);

      os_unfair_lock_lock((v13 + 72));
      v16 = *(v13 + 96);
      v70 = *(v13 + 88);

      os_unfair_lock_unlock((v13 + 72));
      os_unfair_lock_lock((v13 + 72));
      v17 = *(v13 + 112);
      v66 = *(v13 + 104);

      os_unfair_lock_unlock((v13 + 72));
      v18 = *(v13 + 24);
      os_unfair_lock_lock((v14 + 208));
      v19 = *(v14 + 214);
      os_unfair_lock_unlock((v14 + 208));
      *&v21 = v66;
      *&v20 = v70;
      *(&v20 + 1) = v16;
      *(&v21 + 1) = v17;
      *v5 = v20;
      *(v5 + 16) = v21;
      *(v5 + 32) = MEMORY[0x1E69E7CC0];
      *(v5 + 40) = v18;
      *(v5 + 56) = 0;
      *(v5 + 64) = 0;
      *(v5 + 48) = v19;
      v12 = xmmword_1A7E53EF0;
    }

    else
    {
      v43 = *v0[7];
      os_unfair_lock_lock((v13 + 72));
      v44 = *(v13 + 96);
      v72 = *(v13 + 88);

      os_unfair_lock_unlock((v13 + 72));
      os_unfair_lock_lock((v13 + 72));
      v45 = *(v13 + 112);
      v68 = *(v13 + 104);

      os_unfair_lock_unlock((v13 + 72));
      v46 = *(v13 + 24);
      sub_1A7D37E04(v43, &v73);
      sub_1A7D3B854(v43);
      v47 = v74;
      *&v49 = v68;
      *&v48 = v72;
      *(&v48 + 1) = v44;
      *(&v49 + 1) = v45;
      v50 = v73;
      *v5 = v48;
      *(v5 + 16) = v49;
      *(v5 + 32) = MEMORY[0x1E69E7CC0];
      *(v5 + 40) = v46;
      *(v5 + 48) = v50;
      *(v5 + 64) = v47;
      v12 = xmmword_1A7E53EE0;
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload)
  {
    v22 = v0[4];
    os_unfair_lock_lock((v22 + 72));
    v67 = *(v22 + 88);
    v71 = *(v22 + 96);

    os_unfair_lock_unlock((v22 + 72));
    os_unfair_lock_lock((v22 + 72));
    v64 = *(v22 + 104);

    os_unfair_lock_unlock((v22 + 72));
    os_unfair_lock_lock((v22 + 72));
    v23 = *(v22 + 120);

    os_unfair_lock_unlock((v22 + 72));
    if (v23 >> 62)
    {
      v24 = sub_1A7E22DA0();
      if (v24)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_8:
        v62 = v1;
        *&v73 = MEMORY[0x1E69E7CC0];
        result = sub_1A7CCE918(0, v24 & ~(v24 >> 63), 0);
        if (v24 < 0)
        {
          __break(1u);
          return result;
        }

        v26 = 0;
        v27 = v73;
        v28 = v23;
        v29 = v23 & 0xC000000000000001;
        v30 = v23;
        do
        {
          if (v29)
          {
            v31 = MEMORY[0x1AC562480](v26, v28);
          }

          else
          {
            v31 = *(v28 + 8 * v26 + 32);
          }

          v32 = v31;
          v33 = [v31 rawToken];
          v34 = sub_1A7E21A10();
          v36 = v35;

          v37 = sub_1A7E21A00();
          v39 = v38;
          sub_1A7CC7E50(v34, v36);

          *&v73 = v27;
          v41 = *(v27 + 16);
          v40 = *(v27 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1A7CCE918((v40 > 1), v41 + 1, 1);
            v27 = v73;
          }

          ++v26;
          *(v27 + 16) = v41 + 1;
          v42 = v27 + 16 * v41;
          *(v42 + 32) = v37;
          *(v42 + 40) = v39;
          v28 = v30;
        }

        while (v24 != v26);

        v1 = v62;
        goto LABEL_21;
      }
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v51 = v1[4];
    v52 = v1[2];
    v63 = *(v51 + 24);
    if (*(v51 + 128) < 0)
    {
      v53 = &protocol witness table for IDSGLLinkEngineTwoWayConnectionStrategy;
    }

    else
    {
      v53 = &protocol witness table for IDSGLLinkEngineGFTConnectionStrategy;
    }

    ObjectType = swift_getObjectType();
    v55 = v53[4];

    v55(&v73, ObjectType, v53);

    v56 = v74;
    v57 = v76;
    v58 = v75 & 0xD00000000000FFFFLL | 0x2000000000000000;
    *&v59 = v67;
    *(&v59 + 1) = v71;
    v60 = v73;
    *v52 = v59;
    *(v52 + 16) = v64;
    *(v52 + 32) = v27;
    *(v52 + 40) = v63;
    *(v52 + 48) = v60;
    *(v52 + 64) = v56;
    *(v52 + 72) = v58;
    *(v52 + 80) = v57;
    goto LABEL_25;
  }

  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  sub_1A7DE896C(v0[7], v3, type metadata accessor for LEToolLinksRequest);
  os_unfair_lock_lock((v4 + 72));
  v6 = *(v4 + 96);
  v69 = *(v4 + 88);

  os_unfair_lock_unlock((v4 + 72));
  os_unfair_lock_lock((v4 + 72));
  v7 = *(v4 + 112);
  v65 = *(v4 + 104);

  os_unfair_lock_unlock((v4 + 72));
  v8 = *(v4 + 24);
  sub_1A7DDFA94(v3, &v73);
  v9 = v73;
  sub_1A7DE89D4(v3, type metadata accessor for LEToolLinksRequest);
  *&v11 = v65;
  *&v10 = v69;
  *(&v10 + 1) = v6;
  *(&v11 + 1) = v7;
  *v5 = v10;
  *(v5 + 16) = v11;
  *(v5 + 32) = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  v12 = 0uLL;
  *(v5 + 56) = 0u;
LABEL_18:
  *(v5 + 72) = v12;
LABEL_25:

  v61 = v1[1];

  return v61();
}

uint64_t sub_1A7DE27A4()
{

  swift_unknownObjectRelease();

  sub_1A7DE87B4(v0 + 80);

  return v0;
}

uint64_t sub_1A7DE2800()
{
  sub_1A7DE27A4();

  return swift_deallocClassInstance();
}

void sub_1A7DE2884()
{
  v1 = *(v0 + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v1)
  {
    if (*(v1 + 128) < 0)
    {
      v2 = &protocol witness table for IDSGLLinkEngineTwoWayConnectionStrategy;
    }

    else
    {
      v2 = &protocol witness table for IDSGLLinkEngineGFTConnectionStrategy;
    }

    ObjectType = swift_getObjectType();
    v4 = v2[1];

    v4(ObjectType, v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A7DE2BB0(char *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (*&a1[OBJC_IVAR___IDSGLLinkEngine_linkEngine])
  {
    v6 = a1;

    a4(a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A7DE346C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    v8 = sub_1A7E22290();
    if (*&a1[OBJC_IVAR___IDSGLLinkEngine_linkEngine])
    {
      v10 = v8;
      v11 = v9;
      v12 = a1;

      a5(v10, v11, a4);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1A7DE36B8(uint64_t result, void *a2, char a3, char a4, unint64_t a5)
{
  v7 = result;
  v8 = a5 & 0xFFFFFFFFFFFFFF8;
  if (!(a5 >> 62))
  {
    v9 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_22:
    v11 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  result = sub_1A7E22DA0();
  v9 = result;
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_3:
  v10 = 0;
  v11 = MEMORY[0x1E69E7CC0];
  do
  {
    v12 = v10;
    while (1)
    {
      if ((a5 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1AC562480](v12, a5);
      }

      else
      {
        if (v12 >= *(v8 + 16))
        {
          goto LABEL_20;
        }

        v13 = *(a5 + 8 * v12 + 32);
      }

      v14 = v13;
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v15.value._countAndFlagsBits = v7;
      v15.value._object = a2;
      LinkEndpoint.init(_:isRemote:relaySessionID:)(v14, 1, v15);
      v16 = v47;
      if (v47)
      {
        break;
      }

      ++v12;
      if (v10 == v9)
      {
        goto LABEL_23;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A7CCE450(0, *(v11 + 16) + 1, 1, v11);
      v11 = result;
    }

    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    v19 = v11;
    if (v18 >= v17 >> 1)
    {
      result = sub_1A7CCE450((v17 > 1), v18 + 1, 1, v11);
      v19 = result;
    }

    *(v19 + 16) = v18 + 1;
    v11 = v19;
    *(v19 + 8 * v18 + 32) = v16;
  }

  while (v10 != v9);
LABEL_23:
  v20 = *(v45 + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v20)
  {
    v21 = *(v20 + 128);
    if (v21 < 0)
    {
      v46 = v11;
      v22 = *((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
      if ((a3 & 2) != 0)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (a3)
      {
        v24 = a3 & 2;
      }

      else
      {
        v24 = v23;
      }

      if ((a4 & 2) != 0)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (a4)
      {
        v26 = a4 & 2;
      }

      else
      {
        v26 = v25;
      }

      os_unfair_lock_lock((v22 + 40));
      v27 = *(v22 + 96);
      v28 = *(v22 + 104);
      if (qword_1EB2B4788 != -1)
      {
        swift_once();
      }

      v29 = sub_1A7E22060();
      sub_1A7B0CB00(v29, qword_1EB2B5AC8);

      v30 = sub_1A7E22040();
      v31 = sub_1A7E228F0();

      if (os_log_type_enabled(v30, v31))
      {
        v44 = v26;
        v32 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v47 = v41;
        *v32 = 136316162;
        *(v32 + 4) = sub_1A7B0CB38(0xD00000000000003FLL, 0x80000001A7EB1900, &v47);
        *(v32 + 12) = 2080;
        v33 = sub_1A7B0CB38(v27, v28, &v47);

        *(v32 + 14) = v33;
        *(v32 + 22) = 2080;
        *(v32 + 24) = sub_1A7B0CB38(v7, a2, &v47);
        *(v32 + 32) = 2080;
        if (v24)
        {
          if (v24 == 1)
          {
            v34 = 0x6C6C65436E6F4ELL;
          }

          else
          {
            v34 = 7958081;
          }

          if (v24 == 1)
          {
            v35 = 0xE700000000000000;
          }

          else
          {
            v35 = 0xE300000000000000;
          }
        }

        else
        {
          v35 = 0xE400000000000000;
          v34 = 1819043139;
        }

        v36 = sub_1A7B0CB38(v34, v35, &v47);

        *(v32 + 34) = v36;
        *(v32 + 42) = 2080;
        if (v44)
        {
          if (v44 == 2)
          {
            v37 = 0xE300000000000000;
            v38 = 7958081;
          }

          else
          {
            v37 = 0xE700000000000000;
            v38 = 0x6C6C65436E6F4ELL;
          }
        }

        else
        {
          v37 = 0xE400000000000000;
          v38 = 1819043139;
        }

        v39 = sub_1A7B0CB38(v38, v37, &v47);

        *(v32 + 44) = v39;
        _os_log_impl(&dword_1A7AD9000, v30, v31, "%s[%s]: %s: %s-%s", v32, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x1AC5654B0](v41, -1, -1);
        MEMORY[0x1AC5654B0](v32, -1, -1);

        v26 = v44;
      }

      else
      {
      }

      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v22 + 56);
      sub_1A7DC5130(v7, a2, v24 | (v26 << 8), v46, v7, a2, isUniquelyReferenced_nonNull_native);

      *(v22 + 56) = v47;

      os_unfair_lock_unlock((v22 + 40));
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DE3C8C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v2)
  {
    v3 = result;

    os_unfair_lock_lock((v2 + 72));
    v4 = v3;
    MEMORY[0x1AC561DF0]();
    if (*((*(v2 + 120) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 120) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A7E22560();
    }

    sub_1A7E225A0();
    os_unfair_lock_unlock((v2 + 72));
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DE4058(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(v3 + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
  {
    v6 = *(result + OBJC_IVAR___IDSTestableLinkWithScheduler_link);
    v7 = sub_1A7D5AF44();

    v8 = LinkEngine.link(_:)(a2, a3);
    if (v8)
    {
      v9 = v8;
      swift_retain_n();
      os_unfair_lock_lock(v9 + 10);
      v10[3] = &type metadata for LinkEngineLinkIDSTestableLinkComponent;
      v10[0] = v6;
      v10[1] = v7;

      sub_1A7CC8D74(v10, &type metadata for LinkEngineLinkIDSTestableLinkComponent);
      os_unfair_lock_unlock(v9 + 10);
    }

    else
    {
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DE41E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A7DE420C, 0, 0);
}

void sub_1A7DE420C()
{
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR___IDSGLLinkEngine_linkEngine;
  if (!*(v1 + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
  {
    __break(1u);
    goto LABEL_18;
  }

  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  v5 = LinkEngine.link(_:)(v3, v4);
  *(v0 + 104) = v5;

  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = LinkEngineLink.testableLink.getter();
  *(v0 + 112) = v6;
  if (!v6)
  {

    goto LABEL_14;
  }

  v8 = *(v1 + v2);
  if (!v8)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v9 = v7;
  v10 = v6;
  v11 = *(v8 + 16);

  os_unfair_lock_lock((v11 + 200));
  sub_1A7CC9630((v11 + 208), (v0 + 16));
  os_unfair_lock_unlock((v11 + 200));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSLinksQualityBurstsOngoingTask();
  v12 = swift_dynamicCast();
  if (v12)
  {
    v13 = *(v0 + 48);
    *(v0 + 120) = v13;

    if (v13)
    {
      v14 = swift_task_alloc();
      *(v0 + 128) = v14;
      *v14 = v0;
      v14[1] = sub_1A7D59FA8;
      v16 = *(v0 + 64);
      v15 = *(v0 + 72);

      sub_1A7DFDEDC(v16, v15, v10, v9);
      return;
    }
  }

  else
  {
    *(v0 + 48) = 0;
  }

  swift_unknownObjectRelease();
LABEL_14:
  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_1A7DE45D8(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = sub_1A7E21A10();
  v12 = v11;

  v4[4] = v10;
  v4[5] = v12;
  v13 = sub_1A7E22290();
  v15 = v14;

  v4[6] = v15;
  v16 = swift_task_alloc();
  v4[7] = v16;
  *v16 = v4;
  v16[1] = sub_1A7D5A3C8;

  return sub_1A7DE41E4(v10, v12, v13, v15);
}

void sub_1A7DE46E8()
{
  v1 = *(v0 + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v1)
  {
    if (*(v1 + 64))
    {

      sub_1A7D99998(&v2);
      IDSLinksCompactQualityReport.asArray.getter();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A7DE48A4()
{
  if (*(v0 + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
  {
    v1 = qword_1EB2B2FA0;

    if (v1 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EB2DC0A0);

    MEMORY[0x1AC561DF0](v2);
    if (*((qword_1EB2DC0A8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((qword_1EB2DC0A8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A7E22560();
    }

    sub_1A7E225A0();
    os_unfair_lock_unlock(&dword_1EB2DC0A0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A7DE49E4()
{
  v1 = *(v0 + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = qword_1EB2B2FA0;

  if (v2 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB2DC0A0);

  v3 = sub_1A7D5AD1C(&qword_1EB2DC0A8, v1);

  if (qword_1EB2DC0A8 >> 62)
  {
    v5 = sub_1A7E22DA0();
    if (v5 >= v3)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v5 = *((qword_1EB2DC0A8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 < v3)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

LABEL_6:
  sub_1A7DE83B4(v3, v5, v4, type metadata accessor for _IDSGLLinkEngine);
  os_unfair_lock_unlock(&dword_1EB2DC0A0);
}

char *sub_1A7DE4B50(char *result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR___IDSGLLinkEngine_linkEngine);
  if (v3)
  {
    v4 = *(v3 + 128);
    if (v4 < 0)
    {
      v5 = result;

      v7 = LinkEngine.link(_:)(v5, a2);
      if (v7)
      {
        if (*((v4 & 0x7FFFFFFFFFFFFFFFLL) + 0x30))
        {
          v8 = IDSLinkQualityMonitorPlugin.qualityMonitor(forLink:)(v7);
          v9 = [objc_allocWithZone(IDSSemiActiveLinkQualityMonitorHandle) init];

          *&v9[OBJC_IVAR___IDSSemiActiveLinkQualityMonitorHandle_monitor] = v8;

          return v9;
        }
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1A7DE4CB8(char a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_1EB2B2BE8 != -1)
  {
    swift_once();
  }

  v8 = sub_1A7E22060();
  sub_1A7B0CB00(v8, qword_1EB2B2BF0);

  v9 = sub_1A7E22040();
  v10 = sub_1A7E228F0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14[0] = v12;
    *v11 = 16777730;
    *(v11 + 4) = a1;
    *(v11 + 5) = 2080;
    *(v11 + 7) = sub_1A7B0CB38(a2, a3, v14);
    _os_log_impl(&dword_1A7AD9000, v9, v10, "setIDSLinkID: Mapping link ID %hhd for %s", v11, 0xFu);
    sub_1A7B0CD6C(v12);
    MEMORY[0x1AC5654B0](v12, -1, -1);
    MEMORY[0x1AC5654B0](v11, -1, -1);
  }

  if (*(v4 + OBJC_IVAR___IDSGLLinkEngine_linkEngine))
  {

    v13 = LinkEngine.link(_:)(a2, a3);

    if (v13)
    {
      os_unfair_lock_lock(v13 + 10);
      v14[3] = &type metadata for IDSLinkIDComponent;
      LOBYTE(v14[0]) = a1;
      sub_1A7CC8D74(v14, &type metadata for IDSLinkIDComponent);
      os_unfair_lock_unlock(v13 + 10);
    }
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall IDSGLLinkEngine.init()(IDSGLLinkEngine *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1A7DE5000(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A7DE5048(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1A7DE50A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1A7CD2A2C;

  return v6();
}

uint64_t sub_1A7DE518C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1A7CD22FC;

  return v7();
}

uint64_t sub_1A7DE5274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v24 - v11;
  sub_1A7CD1F00(a3, v24 - v11, &unk_1EB2B61C0);
  v13 = sub_1A7E226D0();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1A7CC9970(v12, &unk_1EB2B61C0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1A7E226C0();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1A7E225F0();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1A7E22300() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1A7CC9970(a3, &unk_1EB2B61C0);

    return v22;
  }

LABEL_8:
  sub_1A7CC9970(a3, &unk_1EB2B61C0);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1A7DE5570(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1A7E22DA0();
LABEL_9:
  result = sub_1A7E22BB0();
  *v1 = result;
  return result;
}

unint64_t sub_1A7DE562C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1A7E21940();
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

unint64_t sub_1A7DE5774(unint64_t result, uint64_t a2)
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1A7CCDECC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1A7DE562C(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1A7DE5834(uint64_t __src, unsigned __int8 *__dst, unsigned __int8 *a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __dst;
  v9 = __src;
  v10 = &__dst[-__src];
  v11 = &__dst[-__src] / 2;
  v12 = a3 - __dst;
  v13 = (a3 - __dst) / 2;
  if (v11 >= v13)
  {
    if (a4 != __dst || &__dst[2 * v13] <= a4)
    {
      memmove(a4, __dst, 2 * v13);
    }

    v14 = &v6[2 * v13];
    if (v12 >= 2 && v8 > v9)
    {
LABEL_54:
      v33 = v8 - 2;
      v34 = v7;
      do
      {
        v7 = v34 - 2;
        v35 = v14 - 2;
        v36 = *(a5 + 16);
        if (v36)
        {
          v37 = 0;
          v38 = *(v14 - 1);
          v39 = *(v8 - 2);
          v40 = *(v8 - 1);
          v41 = (a5 + 33);
          __src = *v35;
          while (1)
          {
            if (__src == 2 || ((v42 = *(v41 - 1), __src != v42) ? (v43 = v42 == 2) : (v43 = 1), v43))
            {
              if (v38 == 2)
              {
                break;
              }

              v44 = *v41;
              if (v38 == v44 || v44 == 2)
              {
                break;
              }
            }

            ++v37;
            v41 += 2;
            if (v36 == v37)
            {
              v37 = 99;
              break;
            }
          }

          v46 = 0;
          v47 = (a5 + 33);
          do
          {
            if (v36 == v46)
            {
LABEL_105:
              __break(1u);
              return __src;
            }

            if (v39 == 2 || ((__src = *(v47 - 1), v39 != __src) ? (v48 = __src == 2) : (v48 = 1), v48))
            {
              if (v40 == 2 || ((__src = *v47, v40 != __src) ? (v49 = __src == 2) : (v49 = 1), v49))
              {
                if (v37 >= v46)
                {
                  goto LABEL_91;
                }

                goto LABEL_93;
              }
            }

            ++v46;
            v47 += 2;
          }

          while (v36 != v46);
          if (v37 >= 0x63)
          {
            goto LABEL_91;
          }

LABEL_93:
          if (v34 != v8)
          {
            *v7 = *v33;
          }

          if (v14 <= v6 || (v8 -= 2, v33 <= v9))
          {
            v8 = v33;
            goto LABEL_100;
          }

          goto LABEL_54;
        }

LABEL_91:
        if (v34 != v14)
        {
          *v7 = *v35;
        }

        v14 -= 2;
        v34 -= 2;
      }

      while (v35 > v6);
      v14 = v35;
    }
  }

  else
  {
    if (a4 != __src || __src + 2 * v11 <= a4)
    {
      __src = memmove(a4, __src, 2 * v11);
    }

    v14 = &v6[2 * v11];
    if (v10 >= 2 && v8 < v7)
    {
      do
      {
        v15 = *(a5 + 16);
        if (v15)
        {
          v16 = 0;
          v17 = v8[1];
          v18 = *v6;
          v19 = v6[1];
          v20 = (a5 + 33);
          v21 = *v8;
          while (1)
          {
            if (v21 == 2 || ((v22 = *(v20 - 1), v21 != v22) ? (v23 = v22 == 2) : (v23 = 1), v23))
            {
              if (v17 == 2)
              {
                break;
              }

              v24 = *v20;
              if (v17 == v24 || v24 == 2)
              {
                break;
              }
            }

            ++v16;
            v20 += 2;
            if (v15 == v16)
            {
              v16 = 99;
              break;
            }
          }

          v26 = 0;
          v27 = (a5 + 33);
          do
          {
            if (v15 == v26)
            {
              __break(1u);
              goto LABEL_105;
            }

            if (v18 == 2 || ((v28 = *(v27 - 1), v18 != v28) ? (v29 = v28 == 2) : (v29 = 1), v29))
            {
              if (v19 == 2 || ((v30 = *v27, v19 != v30) ? (v31 = v30 == 2) : (v31 = 1), v31))
              {
                if (v16 >= v26)
                {
                  goto LABEL_40;
                }

                goto LABEL_46;
              }
            }

            ++v26;
            v27 += 2;
          }

          while (v15 != v26);
          if (v16 >= 0x63)
          {
            goto LABEL_40;
          }

LABEL_46:
          v32 = v8;
          v23 = v9 == v8;
          v8 += 2;
          if (v23)
          {
            goto LABEL_42;
          }
        }

        else
        {
LABEL_40:
          v32 = v6;
          v23 = v9 == v6;
          v6 += 2;
          if (v23)
          {
            goto LABEL_42;
          }
        }

        *v9 = *v32;
LABEL_42:
        v9 += 2;
      }

      while (v6 < v14 && v8 < v7);
    }

    v8 = v9;
  }

LABEL_100:
  v50 = v14 - v6 + ((v14 - v6) >> 63);
  if (v8 != v6 || v8 >= &v6[v50 & 0xFFFFFFFFFFFFFFFELL])
  {
    memmove(v8, v6, 2 * (v50 >> 1));
  }

  return 1;
}

uint64_t sub_1A7DE5BC4(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v24 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v24 = sub_1A7CF0024(v24);
  }

  v20 = v6;
  *v6 = v24;
  v8 = (v24 + 16);
  v9 = *(v24 + 2);
  if (v9 < 2)
  {
LABEL_9:

    *v20 = v24;
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

      v11 = v5;
      v12 = &v24[16 * v9];
      v6 = *v12;
      v13 = &v8[2 * v9];
      v14 = v13[1];
      __src = (v10 + 2 * *v12);
      v15 = (v10 + 2 * *v13);
      v16 = (v10 + 2 * v14);

      sub_1A7DE5834(__src, v15, v16, a2, a4);
      v5 = v11;

      if (v11)
      {
        *v20 = v24;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v17 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_13;
      }

      *v12 = v6;
      *(v12 + 1) = v14;
      v18 = v17 - v9;
      if (v17 < v9)
      {
        goto LABEL_14;
      }

      v9 = v17 - 1;
      memmove(v13, v13 + 2, 16 * v18);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v20 = v24;
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DE5D6C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  v131 = MEMORY[0x1E69E7CC0];
  if (v8 < 1)
  {
    swift_bridgeObjectRetain_n();
LABEL_163:
    v118 = *a1;
    if (*a1)
    {

      sub_1A7DE5BC4(&v131, v118, a3, a5);
      if (v6)
      {

        goto LABEL_166;
      }

      swift_bridgeObjectRelease_n();
    }

    goto LABEL_194;
  }

  swift_bridgeObjectRetain_n();
  v9 = 0;
  v123 = (a5 + 33);
  v125 = a5;
  v126 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v9++;
    if (v9 >= v8)
    {
      v34 = a4;
      v35 = v123;
    }

    else
    {
      v11 = *a3;
      v12 = *a3 + 2 * v9;
      v130 = *v12;
      v129 = *(v11 + 2 * v10);
      v13 = sub_1A7DE2054(&v130, &v129, a5);
      if (v6)
      {
        goto LABEL_166;
      }

      v14 = v10 + 2;
      if (v10 + 2 >= v8)
      {
        v9 = v10 + 2;
        goto LABEL_50;
      }

      v15 = *(a5 + 16);
      v16 = *(v12 + 1);
LABEL_11:
      v17 = v9;
      v9 = v14;
      v18 = (v11 + 2 * v14);
      v19 = v18[1];
      if (v15)
      {
        v20 = 0;
        v21 = *(v11 + 2 * v17);
        v22 = *v18;
        v23 = v123;
        while (1)
        {
          if (v22 == 2 || ((v24 = *(v23 - 1), v22 != v24) ? (v25 = v24 == 2) : (v25 = 1), v25))
          {
            if (v19 == 2)
            {
              break;
            }

            v26 = *v23;
            if (v19 == v26 || v26 == 2)
            {
              break;
            }
          }

          ++v20;
          v23 += 2;
          if (v15 == v20)
          {
            v20 = 99;
            break;
          }
        }

        v28 = 0;
        v29 = v123;
        do
        {
          if (v15 == v28)
          {
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
            goto LABEL_190;
          }

          if (v21 == 2 || ((v30 = *(v29 - 1), v21 != v30) ? (v31 = v30 == 2) : (v31 = 1), v31))
          {
            if (v16 == 2 || ((v32 = *v29, v16 != v32) ? (v33 = v32 == 2) : (v33 = 1), v33))
            {
              if (((v13 ^ (v20 >= v28)) & 1) == 0)
              {
                goto LABEL_50;
              }

LABEL_10:
              v14 = v9 + 1;
              v16 = v19;
              if (v9 + 1 == v8)
              {
                v9 = v8;
                goto LABEL_50;
              }

              goto LABEL_11;
            }
          }

          ++v28;
          v29 += 2;
        }

        while (v15 != v28);
        if ((v13 ^ (v20 > 0x62)))
        {
          goto LABEL_10;
        }

LABEL_50:
        v34 = a4;
        v35 = v123;
        if ((v13 & 1) == 0)
        {
          goto LABEL_59;
        }

        if (v9 < v10)
        {
          goto LABEL_187;
        }
      }

      else
      {
        if ((v13 & 1) == 0)
        {
          goto LABEL_10;
        }

        v34 = a4;
        v35 = v123;
        if (v14 < v10)
        {
          goto LABEL_187;
        }
      }

      if (v10 < v9)
      {
        v36 = 0;
        v37 = 2 * v9;
        v38 = 2 * v10;
        v39 = v10;
        do
        {
          if (v39 != v9 + v36 - 1)
          {
            v41 = *a3;
            if (!*a3)
            {
              goto LABEL_192;
            }

            v40 = *(v41 + v38);
            *(v41 + v38) = *(v41 + v37 - 2);
            *(v41 + v37 - 2) = v40;
          }

          ++v39;
          --v36;
          v37 -= 2;
          v38 += 2;
        }

        while (v39 < v9 + v36);
      }
    }

LABEL_59:
    v42 = a3[1];
    if (v9 < v42)
    {
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_186;
      }

      if (v9 - v10 < v34)
      {
        if (__OFADD__(v10, v34))
        {
          goto LABEL_188;
        }

        if (v10 + v34 < v42)
        {
          v42 = v10 + v34;
        }

        if (v42 < v10)
        {
          goto LABEL_189;
        }

        if (v9 != v42)
        {
          v43 = *a3;
          v44 = *(a5 + 16);
          do
          {
            if (!v44)
            {
              goto LABEL_68;
            }

            v45 = (v43 + 2 * v9);
            v46 = v45[1];
            v47 = *v45;
            v48 = v9;
LABEL_71:
            v49 = 0;
            v50 = v48 - 1;
            v51 = (v43 + 2 * (v48 - 1));
            v52 = *v51;
            v53 = v51[1];
            v54 = v35;
            while (1)
            {
              if (v47 == 2 || ((v55 = *(v54 - 1), v47 != v55) ? (v56 = v55 == 2) : (v56 = 1), v56))
              {
                if (v46 == 2)
                {
                  break;
                }

                v57 = *v54;
                if (v46 == v57 || v57 == 2)
                {
                  break;
                }
              }

              ++v49;
              v54 += 2;
              if (v44 == v49)
              {
                v49 = 99;
                break;
              }
            }

            v59 = 0;
            v60 = v35;
            while (1)
            {
              if (v52 == 2 || ((v61 = *(v60 - 1), v52 != v61) ? (v62 = v61 == 2) : (v62 = 1), v62))
              {
                if (v53 == 2)
                {
                  break;
                }

                v63 = *v60;
                if (v53 == v63 || v63 == 2)
                {
                  break;
                }
              }

              ++v59;
              v60 += 2;
              if (v44 == v59)
              {
                if (v49 >= 0x63)
                {
                  goto LABEL_68;
                }

LABEL_104:
                if (v43)
                {
                  *(v43 + 2 * v48) = *(v43 + 2 * v50);
                  *v51 = v47;
                  v51[1] = v46;
                  --v48;
                  if (v50 == v10)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_71;
                }

LABEL_190:
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_191:
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_192:
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_193:
                swift_bridgeObjectRelease_n();
                __break(1u);
LABEL_194:
                result = swift_bridgeObjectRelease_n();
                __break(1u);
                return result;
              }
            }

            if (v49 < v59)
            {
              goto LABEL_104;
            }

LABEL_68:
            ++v9;
          }

          while (v9 != v42);
          v9 = v42;
        }
      }
    }

    if (v9 < v10)
    {
      goto LABEL_185;
    }

    v65 = v126;
    v128 = v6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1A7CCC08C(0, *(v126 + 2) + 1, 1, v126);
    }

    v67 = *(v65 + 2);
    v66 = *(v65 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      v65 = sub_1A7CCC08C((v66 > 1), v67 + 1, 1, v65);
    }

    *(v65 + 2) = v68;
    v69 = v65 + 32;
    v70 = &v65[16 * v67 + 32];
    *v70 = v10;
    *(v70 + 1) = v9;
    v131 = v65;
    v124 = *a1;
    if (!*a1)
    {
      goto LABEL_193;
    }

    v126 = v65;
    if (v67)
    {
      break;
    }

LABEL_4:
    v6 = v128;
    v8 = a3[1];
    a5 = v125;
    if (v9 >= v8)
    {
      goto LABEL_163;
    }
  }

  v120 = v9;
  while (1)
  {
    v71 = v68 - 1;
    if (v68 >= 4)
    {
      v76 = &v69[16 * v68];
      v77 = *(v76 - 8);
      v78 = *(v76 - 7);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_174;
      }

      v81 = *(v76 - 6);
      v80 = *(v76 - 5);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_175;
      }

      v83 = &v65[16 * v68];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_177;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_180;
      }

      if (v87 >= v79)
      {
        v105 = &v69[16 * v71];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_184;
        }

        if (v74 < v108)
        {
          v71 = v68 - 2;
        }

        goto LABEL_150;
      }

      goto LABEL_129;
    }

    if (v68 == 3)
    {
      v72 = *(v65 + 4);
      v73 = *(v65 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_129:
      if (v75)
      {
        goto LABEL_176;
      }

      v88 = &v65[16 * v68];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_179;
      }

      v94 = &v69[16 * v71];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_182;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_183;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          v71 = v68 - 2;
        }

        goto LABEL_150;
      }

      goto LABEL_143;
    }

    v98 = &v65[16 * v68];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_143:
    if (v93)
    {
      goto LABEL_178;
    }

    v101 = &v69[16 * v71];
    v103 = *v101;
    v102 = *(v101 + 1);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_181;
    }

    if (v104 < v92)
    {
      goto LABEL_3;
    }

LABEL_150:
    if (v71 - 1 >= v68)
    {
      goto LABEL_170;
    }

    v109 = *a3;
    if (!*a3)
    {
      goto LABEL_191;
    }

    v110 = &v69[16 * v71 - 16];
    v111 = *v110;
    v112 = &v69[16 * v71];
    v113 = *(v112 + 1);
    v114 = v109 + 2 * *v110;
    v115 = (v109 + 2 * *v112);
    v116 = (v109 + 2 * v113);

    sub_1A7DE5834(v114, v115, v116, v124, v125);
    if (v128)
    {
      break;
    }

    if (v113 < v111)
    {
      goto LABEL_171;
    }

    v65 = v126;
    v117 = *(v126 + 2);
    if (v71 > v117)
    {
      goto LABEL_172;
    }

    *v110 = v111;
    *(v110 + 1) = v113;
    if (v71 >= v117)
    {
      goto LABEL_173;
    }

    v128 = 0;
    v68 = v117 - 1;
    memmove(&v69[16 * v71], v112 + 16, 16 * (v117 - 1 - v71));
    *(v126 + 2) = v117 - 1;
    if (v117 <= 2)
    {
LABEL_3:
      v131 = v65;
      v9 = v120;
      goto LABEL_4;
    }
  }

LABEL_166:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1A7DE6510(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = *(a5 + 16);
    v7 = (a5 + 33);
    while (!v6)
    {
LABEL_4:
      if (++a3 == a2)
      {
        return result;
      }
    }

    v8 = (v5 + 2 * a3);
    v9 = v8[1];
    v10 = *v8;
    v11 = a3;
    while (1)
    {
      v12 = 0;
      v13 = v11 - 1;
      v14 = (v5 + 2 * (v11 - 1));
      v15 = *v14;
      v16 = v14[1];
      v17 = v7;
      while (1)
      {
        if (v10 == 2 || ((v18 = *(v17 - 1), v10 != v18) ? (v19 = v18 == 2) : (v19 = 1), v19))
        {
          if (v9 == 2)
          {
            break;
          }

          v20 = *v17;
          if (v9 == v20 || v20 == 2)
          {
            break;
          }
        }

        ++v12;
        v17 += 2;
        if (v6 == v12)
        {
          v12 = 99;
          break;
        }
      }

      v22 = 0;
      v23 = v7;
      do
      {
        if (v15 == 2 || ((v24 = *(v23 - 1), v15 != v24) ? (v25 = v24 == 2) : (v25 = 1), v25))
        {
          if (v16 == 2 || ((v26 = *v23, v16 != v26) ? (v27 = v26 == 2) : (v27 = 1), v27))
          {
            if (v12 >= v22)
            {
              goto LABEL_4;
            }

            goto LABEL_40;
          }
        }

        ++v22;
        v23 += 2;
      }

      while (v6 != v22);
      if (v12 >= 0x63)
      {
        goto LABEL_4;
      }

LABEL_40:
      if (!v5)
      {
        break;
      }

      *(v5 + 2 * v11) = *(v5 + 2 * v13);
      *v14 = v10;
      v14[1] = v9;
      --v11;
      if (v13 == result)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DE6638(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1A7E23080();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v8 = sub_1A7E22580();
        *(v8 + 16) = v7;
      }

      v9[0] = (v8 + 32);
      v9[1] = v7;

      sub_1A7DE5D6C(v9, v10, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1A7DE6510(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1A7DE6780(char **a1, uint64_t a2)
{
  v4 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1A7D60348(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;

  sub_1A7DE6638(v7, a2);

  *a1 = v4;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1A7DE6824(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6, os_unfair_lock_s *a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LOBYTE(v174) = a8;
  v201 = *MEMORY[0x1E69E9840];
  type metadata accessor for LinkEngine();
  swift_allocObject();
  v17 = LinkEngine.init()();
  *(a14 + 72) = 0;
  *(a14 + 80) = 257;
  *(a14 + 82) = 0u;
  v18 = MEMORY[0x1E69E7CC0];
  *(a14 + 98) = 0u;
  *(a14 + 112) = 0;
  *(a14 + 120) = v18;
  v171 = a3;
  *(a14 + 152) = a3;
  *(a14 + 16) = v17;
  *(a14 + 24) = a2;
  v188 = a2;
  *(a14 + 136) = a12;
  *(a14 + 144) = a13;
  *(a14 + 40) = a1;
  *(a14 + 48) = &protocol witness table for IDSGLDefaultLinkConnector;
  swift_retain_n();

  os_unfair_lock_lock(v17 + 50);
  *&keyExistsAndHasValidFormat[24] = &type metadata for LinkConnectorComponent;
  *keyExistsAndHasValidFormat = a1;
  *&keyExistsAndHasValidFormat[8] = &protocol witness table for IDSGLDefaultLinkConnector;

  sub_1A7CC8D74(keyExistsAndHasValidFormat, &type metadata for LinkConnectorComponent);
  os_unfair_lock_unlock(v17 + 50);

  v19 = [objc_allocWithZone(IDSRelayLinkProvider) init];
  *(a14 + 32) = v19;
  v20 = type metadata accessor for IDSDefaultRelayLinkSorter();
  swift_allocObject();
  v187 = v19;
  *(a14 + 56) = IDSDefaultRelayLinkSorter.init(shouldFallbackToTCPFirst:shouldPreferIPv6:)(1, 1);
  v21 = sub_1A7E22260();
  v22 = [a9 objectForKey_];

  if (v22)
  {
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v196 = 0u;
    v197[0] = 0u;
  }

  *keyExistsAndHasValidFormat = v196;
  *&keyExistsAndHasValidFormat[16] = v197[0];
  if (!*(&v197[0] + 1))
  {
    sub_1A7CC9970(keyExistsAndHasValidFormat, &unk_1EB2B7C70);
    goto LABEL_10;
  }

  sub_1A7CC79C8(0, &qword_1EB2B7C90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v23 = 5;
    goto LABEL_11;
  }

  *keyExistsAndHasValidFormat = 0;
  keyExistsAndHasValidFormat[8] = 1;
  sub_1A7E22820();

  v23 = *keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat[8])
  {
    v23 = 5;
  }

LABEL_11:
  v191 = v23;
  v24 = sub_1A7E22260();
  v25 = [a9 objectForKey_];

  if (v25)
  {
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v196 = 0u;
    v197[0] = 0u;
  }

  *keyExistsAndHasValidFormat = v196;
  *&keyExistsAndHasValidFormat[16] = v197[0];
  if (!*(&v197[0] + 1))
  {
    sub_1A7CC9970(keyExistsAndHasValidFormat, &unk_1EB2B7C70);
    goto LABEL_20;
  }

  sub_1A7CC79C8(0, &qword_1EB2B7C90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v26 = 5;
    goto LABEL_21;
  }

  *keyExistsAndHasValidFormat = 0;
  keyExistsAndHasValidFormat[8] = 1;
  sub_1A7E22820();

  v26 = *keyExistsAndHasValidFormat;
  if (keyExistsAndHasValidFormat[8])
  {
    v26 = 5;
  }

LABEL_21:
  v183 = v26;
  v27 = sub_1A7E22260();
  v28 = [a9 objectForKey_];

  if (v28)
  {
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {
    v196 = 0u;
    v197[0] = 0u;
  }

  *keyExistsAndHasValidFormat = v196;
  *&keyExistsAndHasValidFormat[16] = v197[0];
  v186 = v20;
  if (*(&v197[0] + 1))
  {
    sub_1A7CC79C8(0, &qword_1EB2B7C90);
    if (swift_dynamicCast())
    {
      *keyExistsAndHasValidFormat = 0;
      keyExistsAndHasValidFormat[8] = 1;
      sub_1A7E22820();

      v29 = *keyExistsAndHasValidFormat;
      v30 = keyExistsAndHasValidFormat[8];
      goto LABEL_29;
    }
  }

  else
  {
    sub_1A7CC9970(keyExistsAndHasValidFormat, &unk_1EB2B7C70);
  }

  v29 = 0;
  v30 = 1;
LABEL_29:
  LODWORD(v194) = v30;
  v31 = sub_1A7E22260();
  v32 = [a9 objectForKey_];

  if (v32)
  {
    sub_1A7E22AA0();
    swift_unknownObjectRelease();
  }

  else
  {

    v196 = 0u;
    v197[0] = 0u;
  }

  *keyExistsAndHasValidFormat = v196;
  *&keyExistsAndHasValidFormat[16] = v197[0];
  if (*(&v197[0] + 1))
  {
    sub_1A7CC79C8(0, &qword_1EB2B7C90);
    if (swift_dynamicCast())
    {
      *keyExistsAndHasValidFormat = 0;
      keyExistsAndHasValidFormat[8] = 1;
      sub_1A7E22820();

      v33 = *keyExistsAndHasValidFormat;
      v34 = keyExistsAndHasValidFormat[8];
      goto LABEL_37;
    }
  }

  else
  {
    sub_1A7CC9970(keyExistsAndHasValidFormat, &unk_1EB2B7C70);
  }

  v33 = 0;
  v34 = 1;
LABEL_37:
  keyExistsAndHasValidFormat[0] = 0;
  v35 = sub_1A7E22260();
  v36 = sub_1A7E22260();
  AppIntegerValue = CFPreferencesGetAppIntegerValue(v35, v36, keyExistsAndHasValidFormat);

  v176 = keyExistsAndHasValidFormat[0];
  keyExistsAndHasValidFormat[0] = 0;
  v37 = sub_1A7E22260();
  v38 = sub_1A7E22260();
  v39 = CFPreferencesGetAppIntegerValue(v37, v38, keyExistsAndHasValidFormat);

  v40 = keyExistsAndHasValidFormat[0];
  keyExistsAndHasValidFormat[0] = 0;
  v41 = sub_1A7E22260();
  v42 = sub_1A7E22260();
  v43 = CFPreferencesGetAppIntegerValue(v41, v42, keyExistsAndHasValidFormat);

  LODWORD(v44) = keyExistsAndHasValidFormat[0];
  keyExistsAndHasValidFormat[0] = 0;
  v45 = sub_1A7E22260();
  v46 = sub_1A7E22260();
  v47 = CFPreferencesGetAppIntegerValue(v45, v46, keyExistsAndHasValidFormat);

  if (v176)
  {
    v48 = AppIntegerValue;
  }

  else
  {
    v48 = v191;
  }

  v49 = v183;
  if (v40)
  {
    v49 = v39;
  }

  v165 = v49;
  v166 = v48;
  v50 = 5;
  if (!v194)
  {
    v50 = v29;
  }

  if (v44)
  {
    v51 = v43;
  }

  else
  {
    v51 = 0;
  }

  LODWORD(v52) = keyExistsAndHasValidFormat[0];
  if (v44)
  {
    v53 = v43;
  }

  else
  {
    v53 = v50;
  }

  v170 = v34;
  v177 = v33;
  v180 = v53;
  if (v34)
  {
    v54 = 1;
  }

  else
  {
    v54 = v33;
  }

  if (keyExistsAndHasValidFormat[0])
  {
    v55 = v47;
  }

  else
  {
    v55 = 0;
  }

  v168 = v51;
  v169 = v55;
  if (keyExistsAndHasValidFormat[0])
  {
    v54 = v47;
  }

  v192 = v54;
  if (qword_1EB2B2BE8 != -1)
  {
LABEL_98:
    swift_once();
  }

  v184 = sub_1A7E22060();
  sub_1A7B0CB00(v184, qword_1EB2B2BF0);
  v56 = sub_1A7E22040();
  v57 = sub_1A7E228F0();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = v44 == 0;
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *&v196 = v60;
    *v59 = 134219266;
    *(v59 + 4) = v53;
    *(v59 + 12) = 2080;
    *keyExistsAndHasValidFormat = v29;
    keyExistsAndHasValidFormat[8] = v194;
    sub_1A7CC7FFC(&qword_1EB2B7C88);
    v61 = sub_1A7E222F0();
    v63 = sub_1A7B0CB38(v61, v62, &v196);

    *(v59 + 14) = v63;
    *(v59 + 22) = 2080;
    *keyExistsAndHasValidFormat = v168;
    keyExistsAndHasValidFormat[8] = v58;
    v64 = sub_1A7E222F0();
    v66 = sub_1A7B0CB38(v64, v65, &v196);

    *(v59 + 24) = v66;
    *(v59 + 32) = 2048;
    *(v59 + 34) = v192;
    *(v59 + 42) = 2080;
    *keyExistsAndHasValidFormat = v177;
    keyExistsAndHasValidFormat[8] = v170 & 1;
    v67 = sub_1A7E222F0();
    v69 = sub_1A7B0CB38(v67, v68, &v196);

    *(v59 + 44) = v69;
    *(v59 + 52) = 2080;
    *keyExistsAndHasValidFormat = v169;
    keyExistsAndHasValidFormat[8] = v52 == 0;
    v70 = sub_1A7E222F0();
    v72 = sub_1A7B0CB38(v70, v71, &v196);

    *(v59 + 54) = v72;
    _os_log_impl(&dword_1A7AD9000, v56, v57, "Initializing IDSGLLinkEngine with disconnectDelay: %ld (server bag: %s, defaults: %s), fallbackDelay: %ld (server bag: %s, defaults: %s)", v59, 0x3Eu);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v60, -1, -1);
    MEMORY[0x1AC5654B0](v59, -1, -1);
  }

  if (v188 == 3)
  {
    v73 = *(a14 + 16);
    v74 = swift_allocObject();
    *(v74 + 16) = v187;
    v75 = swift_allocObject();
    *(v75 + 16) = v187;
    v76 = v187;

    v77 = sub_1A7DE10D4(1, 1u);
    sub_1A7CC7FFC(&qword_1EB2B4AF0);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1A7E418C0;
    *(v78 + 32) = v77;
    v79 = *(a14 + 56);
    v80 = 1000000000000000000 * v192;
    v192 = ((v192 >> 63) & 0xF21F494C589C0000) + ((v192 * 0xDE0B6B3A7640000uLL) >> 64);
    v194 = v80;
    v188 = ((v180 >> 63) & 0xF21F494C589C0000) + ((v180 * 0xDE0B6B3A7640000uLL) >> 64);
    a6 = 1000000000000000000 * v180;
    type metadata accessor for IDSGLLinkEngineGFTConnectionStrategy();
    v81 = swift_allocObject();
    v81[2] = v73;
    v81[3] = v79;
    v185 = v79;
    v82 = type metadata accessor for IDSEndpointLinkCreationPlugin();
    v83 = swift_allocObject();
    *(v83 + 16) = 0xD00000000000001DLL;
    *(v83 + 24) = 0x80000001A7EB1AE0;
    sub_1A7CC7FFC(&qword_1EB2B7C80);
    v84 = swift_allocObject();
    swift_retain_n();
    v181 = v73;

    v85 = MEMORY[0x1E69E7CC0];
    v86 = sub_1A7CE2A10(MEMORY[0x1E69E7CC0]);
    *(v84 + 16) = 0;
    *(v84 + 24) = v86;
    *(v84 + 32) = v85;
    *(v84 + 48) = 0;
    *(v84 + 56) = 0;
    *(v84 + 40) = 0;
    *(v83 + 56) = v75;
    *(v83 + 64) = v84;
    *(v83 + 80) = 0;
    *(v83 + 88) = v85;
    *(v83 + 96) = 0;
    *(v83 + 32) = sub_1A7DE8A3C;
    *(v83 + 40) = v74;
    v177 = v75;
    v180 = v74;
    *(v83 + 48) = sub_1A7DE87A4;
    type metadata accessor for EndpointLinkCreationController();
    v87 = swift_allocObject();
    type metadata accessor for LinkCreationController();
    v88 = swift_allocObject();
    v89 = MEMORY[0x1E69E7CD0];
    *(v88 + 16) = 0;
    *(v88 + 32) = 0;
    *(v88 + 40) = 0;
    *(v88 + 24) = v89;
    *(v87 + 16) = v88;
    *(v83 + 72) = v87;
    os_unfair_lock_lock((v83 + 80));
    *(v83 + 88) = v78;

    os_unfair_lock_unlock((v83 + 80));
    v81[4] = v83;
    *&keyExistsAndHasValidFormat[24] = v82;
    *&keyExistsAndHasValidFormat[32] = &off_1F1AAC810;
    *keyExistsAndHasValidFormat = v83;
    type metadata accessor for IDSLinkDefinitionPortOverridingPlugin();
    v90 = swift_allocObject();
    *(v90 + 16) = 0xD000000000000025;
    *(v90 + 24) = 0x80000001A7EB1A70;
    sub_1A7B14FF0(keyExistsAndHasValidFormat, v90 + 32);
    v174 = v81;
    v81[6] = v90;
    type metadata accessor for IDSConnectRelayLinksByInterfaceTypePlugin();
    v29 = swift_allocObject();
    v199[3] = v186;
    v199[4] = &protocol witness table for IDSDefaultRelayLinkSorter;
    v199[0] = v185;
    *(v29 + 16) = 0xD000000000000029;
    *(v29 + 24) = 0x80000001A7EB1340;
    *(v29 + 96) = sub_1A7DB6074;
    *(v29 + 104) = 0;
    sub_1A7CC99E0(v199, v197);
    v91 = sub_1A7CE4EEC(v85);
    LOBYTE(v196) = 0;
    *(&v196 + 1) = v91;
    *&keyExistsAndHasValidFormat[20] = v197[0];
    *&keyExistsAndHasValidFormat[36] = v197[1];
    *&keyExistsAndHasValidFormat[52] = v198;
    v52 = keyExistsAndHasValidFormat;
    *&keyExistsAndHasValidFormat[4] = v196;
    v186 = v83;
    swift_retain_n();

    *(v29 + 32) = 0;
    v92 = *&keyExistsAndHasValidFormat[16];
    *(v29 + 36) = *keyExistsAndHasValidFormat;
    *(v29 + 52) = v92;
    *(v29 + 68) = *&keyExistsAndHasValidFormat[32];
    *(v29 + 80) = *&keyExistsAndHasValidFormat[44];
    a7 = (v29 + 32);
    os_unfair_lock_lock((v29 + 32));
    v93 = 0;
    *(v29 + 40) = 0;
    v53 = byte_1F1AAC078;
    while (1)
    {
      v94 = byte_1F1AAC078[v93 + 32];
      if (v94 == 3)
      {
        goto LABEL_65;
      }

      type metadata accessor for LinkEngineConnectBestController();
      v44 = swift_allocObject();
      v44[2] = v194;
      v44[3] = v192;
      v44[4] = a6;
      v44[5] = v188;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *keyExistsAndHasValidFormat = *(v29 + 48);
      v96 = *keyExistsAndHasValidFormat;
      *(v29 + 48) = 0x8000000000000000;
      v98 = sub_1A7CD1670(v94);
      v99 = *(v96 + 16);
      v100 = (v97 & 1) == 0;
      v101 = v99 + v100;
      if (__OFADD__(v99, v100))
      {
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      LODWORD(v52) = v97;
      if (*(v96 + 24) >= v101)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v104 = *keyExistsAndHasValidFormat;
          if ((v97 & 1) == 0)
          {
            goto LABEL_74;
          }
        }

        else
        {
          sub_1A7DC8FD8();
          v104 = *keyExistsAndHasValidFormat;
          if ((v52 & 1) == 0)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        sub_1A7DC33EC(v101, isUniquelyReferenced_nonNull_native);
        v102 = sub_1A7CD1670(v94);
        if ((v52 & 1) != (v103 & 1))
        {
          result = sub_1A7E23140();
          __break(1u);
          return result;
        }

        v98 = v102;
        v104 = *keyExistsAndHasValidFormat;
        if ((v52 & 1) == 0)
        {
LABEL_74:
          v104[(v98 >> 6) + 8] |= 1 << v98;
          *(v104[6] + v98) = v94;
          *(v104[7] + 8 * v98) = v44;
          v105 = v104[2];
          v106 = __OFADD__(v105, 1);
          v107 = v105 + 1;
          if (v106)
          {
            goto LABEL_97;
          }

          v104[2] = v107;
          goto LABEL_64;
        }
      }

      *(v104[7] + 8 * v98) = v44;

LABEL_64:
      *(v29 + 48) = v104;

LABEL_65:
      if (++v93 == 4)
      {
        os_unfair_lock_unlock(a7);
        sub_1A7B0CD6C(v199);
        v134 = v174;
        *(v174 + 40) = v29;

        sub_1A7D9A6D8(v186, v181);

        sub_1A7D9A810(v135, v181);

        sub_1A7D9A948(v136, v181);

        v137 = a14;
        v138 = a4;
        goto LABEL_90;
      }
    }
  }

  v108 = sub_1A7E22040();
  v109 = sub_1A7E228F0();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    *&v196 = v111;
    *v110 = 136315138;
    *keyExistsAndHasValidFormat = a6;
    *&keyExistsAndHasValidFormat[8] = a7;
    keyExistsAndHasValidFormat[16] = v174 & 1;
    v112 = LinkSelectionStrategy.description.getter();
    v114 = sub_1A7B0CB38(v112, v113, &v196);

    *(v110 + 4) = v114;
    _os_log_impl(&dword_1A7AD9000, v108, v109, "Link Selection Strategy: %s", v110, 0xCu);
    sub_1A7B0CD6C(v111);
    MEMORY[0x1AC5654B0](v111, -1, -1);
    MEMORY[0x1AC5654B0](v110, -1, -1);
  }

  v115 = *(a14 + 16);
  v189 = swift_allocObject();
  *(v189 + 16) = v187;
  v116 = v187;

  v117 = sub_1A7DE10D4(1, 1u);
  sub_1A7CC7FFC(&qword_1EB2B4AF0);
  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_1A7E418C0;
  v178 = v118;
  *(v118 + 32) = v117;
  v119 = *(a14 + 56);
  v120 = (v192 * 0xDE0B6B3A7640000uLL) >> 64;
  v121 = (v192 >> 63) & 0xF21F494C589C0000;
  v195 = swift_allocObject();
  *(v195 + 16) = a12;
  *(v195 + 24) = a13;
  type metadata accessor for IDSGLLinkEngineTwoWayConnectionStrategy();
  v122 = swift_allocObject();
  *(v122 + 16) = v115;
  *(v122 + 24) = v119;
  v123 = qword_1EB2B48B0;
  v182 = v119;
  swift_retain_n();

  if (v123 != -1)
  {
    swift_once();
  }

  v193 = 1000000000000000000 * v192;
  v172 = v121 + v120;
  sub_1A7B0CB00(v184, qword_1EB2B7E50);
  v124 = sub_1A7E22040();
  v125 = sub_1A7E228F0();
  v126 = a6;
  if (os_log_type_enabled(v124, v125))
  {
    v127 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    *&v196 = v128;
    *v127 = 136315138;
    *keyExistsAndHasValidFormat = a6;
    *&keyExistsAndHasValidFormat[8] = a7;
    v129 = v174;
    keyExistsAndHasValidFormat[16] = v174 & 1;
    v130 = LinkSelectionStrategy.description.getter();
    v132 = sub_1A7B0CB38(v130, v131, &v196);
    v133 = a7;
    v126 = a6;

    *(v127 + 4) = v132;
    _os_log_impl(&dword_1A7AD9000, v124, v125, "Getting quality monitor plugin from link selection strategy %s", v127, 0xCu);
    sub_1A7B0CD6C(v128);
    MEMORY[0x1AC5654B0](v128, -1, -1);
    MEMORY[0x1AC5654B0](v127, -1, -1);
  }

  else
  {

    v129 = v174;
    v133 = a7;
  }

  *keyExistsAndHasValidFormat = v126;
  *&keyExistsAndHasValidFormat[8] = v133;
  keyExistsAndHasValidFormat[16] = v129 & 1;
  v139 = sub_1A7DF24B8(monotonicTimeInMicroseconds(), 0);
  *(v122 + 48) = v139;
  *&keyExistsAndHasValidFormat[24] = v186;
  *&keyExistsAndHasValidFormat[32] = &protocol witness table for IDSDefaultRelayLinkSorter;
  *keyExistsAndHasValidFormat = v182;
  v140 = type metadata accessor for IDSGLTwoWayLinkConnectorPlugin();
  v141 = swift_allocObject();
  sub_1A7CC7FFC(&qword_1EB2B7C80);
  v142 = swift_allocObject();

  swift_retain_n();

  v143 = MEMORY[0x1E69E7CC0];
  v144 = sub_1A7CE2A10(MEMORY[0x1E69E7CC0]);
  *(v142 + 16) = 0;
  *(v142 + 24) = v144;
  *(v142 + 32) = v143;
  *(v142 + 48) = 0;
  *(v142 + 56) = 0;
  *(v142 + 40) = 0;
  *(v141 + 16) = v142;
  *(v141 + 24) = 0xD00000000000001ELL;
  *(v141 + 32) = 0x80000001A7EB1A50;
  v145 = sub_1A7CE3B24(v143);
  *(v141 + 40) = 0;
  *(v141 + 48) = 0u;
  *(v141 + 64) = 0u;
  *(v141 + 56) = v145;
  *(v141 + 64) = v143;
  *(v141 + 72) = v143;
  *(v141 + 80) = 0;
  *(v141 + 80) = 3;
  *(v141 + 88) = v143;
  *(v141 + 96) = 0;
  *(v141 + 104) = 0xE000000000000000;
  sub_1A7CC99E0(keyExistsAndHasValidFormat, v141 + 144);
  *(v141 + 112) = sub_1A7DE8780;
  *(v141 + 120) = v189;
  *(v141 + 184) = sub_1A7DE879C;
  *(v141 + 192) = v195;
  *(v141 + 200) = v171 & 1;
  *(v141 + 128) = v193;
  *(v141 + 136) = v172;
  os_unfair_lock_lock((v141 + 40));
  *(v141 + 72) = v178;

  os_unfair_lock_unlock((v141 + 40));

  sub_1A7B0CD6C(keyExistsAndHasValidFormat);
  *(v122 + 32) = v141;
  *&keyExistsAndHasValidFormat[24] = v140;
  *&keyExistsAndHasValidFormat[32] = &protocol witness table for IDSGLTwoWayLinkConnectorPlugin;
  *keyExistsAndHasValidFormat = v141;
  type metadata accessor for IDSLinkDefinitionPortOverridingPlugin();
  v146 = swift_allocObject();
  *(v146 + 16) = 0xD000000000000025;
  *(v146 + 24) = 0x80000001A7EB1A70;
  sub_1A7B14FF0(keyExistsAndHasValidFormat, v146 + 32);
  *(v122 + 40) = v146;
  if (v139)
  {
    type metadata accessor for IDSLinkSelectionMetricPlugin();
    v147 = swift_allocObject();
    v147[2] = 0xD00000000000001CLL;
    v147[3] = 0x80000001A7EB1AC0;
    type metadata accessor for IDSLinkSelectionMetricTracker();
    v148 = swift_allocObject();
    *(v148 + 40) = &type metadata for IDSCoreAnalyticsReporter;
    *(v148 + 48) = &protocol witness table for IDSCoreAnalyticsReporter;
    strcpy((v148 + 16), "com.apple.IDS");
    *(v148 + 30) = -4864;
    *(v148 + 56) = 30000000;

    sub_1A7DEE7C0(keyExistsAndHasValidFormat);
    *(v148 + 64) = 0;
    memcpy((v148 + 72), keyExistsAndHasValidFormat, 0x178uLL);
    v147[4] = v148;
    *(v122 + 56) = v147;

    sub_1A7D9AB88(v139, v115);

    sub_1A7D9AC68(v149, v115);
  }

  else
  {
    *(v122 + 56) = 0;
  }

  v137 = a14;
  v138 = a4;

  sub_1A7D9ADC8(v150, v115);

  sub_1A7D9A948(v151, v115);

  v134 = v122 | 0x8000000000000000;
LABEL_90:
  v137[16] = v134;
  type metadata accessor for IDSGLLinkRemovalPlugin();
  v152 = swift_allocObject();

  v152[2] = 0xD000000000000013;
  v152[3] = 0x80000001A7EB1AA0;
  v152[5] = &protocol witness table for IDSGLDefaultLinkConnector;
  swift_unknownObjectWeakInit();

  v153 = v137[2];

  sub_1A7D9AA80(v154, v153);

  if (v138)
  {
    v155 = v137[2];
    type metadata accessor for IDSLinksQualityBasicStatsPlugin();
    v156 = swift_allocObject();
    *(v156 + 16) = 0xD00000000000001FLL;
    *(v156 + 24) = 0x80000001A7EAFA90;

    v157 = sub_1A7CE2B54(MEMORY[0x1E69E7CC0]);
    *(v156 + 64) = 0;
    *(v156 + 72) = v157;
    *(v156 + 48) = 1000000000000000000 * v166;
    *(v156 + 56) = ((v166 >> 63) & 0xF21F494C589C0000) + ((v166 * 0xDE0B6B3A7640000uLL) >> 64);
    *(v156 + 32) = a10;
    *(v156 + 40) = a11;

    sub_1A7D9A2BC(v158, v155);

    if (a5)
    {
      v159 = v137[2];
      type metadata accessor for IDSLinksQualityBurstsPlugin();
      v160 = swift_allocObject();
      v160[2] = 0xD00000000000001BLL;
      v160[3] = 0x80000001A7EAFAD0;
      v160[6] = 1000000000000000000 * v165;
      v160[7] = ((v165 >> 63) & 0xF21F494C589C0000) + ((v165 * 0xDE0B6B3A7640000uLL) >> 64);
      v160[4] = a10;
      v160[5] = a11;

      sub_1A7D9A480(v161, v159);
    }

    type metadata accessor for IDSLinksQualityReportPlugin();
    v162 = swift_allocObject();
    swift_weakInit();
    *(v162 + 16) = 0;
    *(v162 + 24) = 0;
    sub_1A7D5AF9C(keyExistsAndHasValidFormat, v162 + 24);
    *(v162 + 32) = 0xD000000000000014;
    *(v162 + 40) = 0x80000001A7EAFAB0;
    v137[8] = v162;
    v163 = v137[2];
    swift_retain_n();

    sub_1A7D9A5E4(v162, v163);
  }

  else
  {

    v137[8] = 0;
  }

  return v137;
}

id sub_1A7DE8114(uint64_t a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v13 = OBJC_IVAR___IDSGLLinkEngine_linkEngine;
  *&v9[OBJC_IVAR___IDSGLLinkEngine_linkEngine] = 0;
  type metadata accessor for IDSGLDefaultLinkConnector();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  if (a6 && (v15 = a6 + OBJC_IVAR___IDSLinkSelectionStrategy_strategy, swift_beginAccess(), (*(v15 + 17) & 1) == 0))
  {
    v16 = *v15;
    v22 = *(v15 + 8);
    v17 = *(v15 + 16);
  }

  else
  {
    v22 = 0;
    v16 = 1;
    v17 = 1;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  type metadata accessor for _IDSGLLinkEngine();
  v19 = swift_allocObject();
  swift_unknownObjectRetain_n();
  v20 = a7;

  *&v9[v13] = sub_1A7DE6824(v14, a2, a3 & 1, a4 & 1, a5 & 1, v16, v22, v17 & 1, v20, a8, a9, sub_1A7DE8768, v18, v19);

  v28.receiver = v9;
  v28.super_class = IDSGLLinkEngine;
  return objc_msgSendSuper2(&v28, sel_init);
}

uint64_t sub_1A7DE82B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(a4);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1A7E22DA0();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_1A7E22DA0();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A7DE83B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1A7E22DA0();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_1A7E22DA0();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_1A7DE5570(result);
    return sub_1A7DE82B0(v8, v7, 0, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1A7DE8498()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1A7CD2A2C;

  return sub_1A7DE45D8(v2, v3, v5, v4);
}

uint64_t sub_1A7DE8558(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD2A2C;

  return sub_1A7D95F38(a1, v4);
}

uint64_t sub_1A7DE8610(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A7CD22FC;

  return sub_1A7D95F38(a1, v4);
}

uint64_t sub_1A7DE86C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A7CD2A2C;

  return sub_1A7DE0128(v0);
}

uint64_t sub_1A7DE87E4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A7CD2A2C;

  return sub_1A7DE0148(v0);
}

uint64_t sub_1A7DE8874()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A7CD22FC;

  return sub_1A7DE0148(v0);
}

uint64_t sub_1A7DE8904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7DE896C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A7DE89D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7DE8A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for IDSToolOptions();
  v3[5] = swift_task_alloc();
  type metadata accessor for IDSToolRequest(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A7DE8B00, 0, 0);
}

uint64_t sub_1A7DE8B00()
{
  v12 = v0;
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_1A7D1872C(&v10);
  v3 = v10;
  v4 = v11;
  sub_1A7DE8DE0(v2, v1);
  type metadata accessor for IDSToolRequest.Request(0);
  swift_storeEnumTagMultiPayload();
  sub_1A7CC7FFC(&qword_1EB2B5A40);
  sub_1A7E21DC0();
  *(v0 + 72) = v3;
  *(v0 + 80) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1A7DE8C18;
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);

  return sub_1A7DDD6B0(v7, v6, (v0 + 72), v8);
}

uint64_t sub_1A7DE8C18()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 64) = v0;

  sub_1A7DE8E44(v3, type metadata accessor for IDSToolOptions);
  sub_1A7DE8E44(v2, type metadata accessor for IDSToolRequest);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A7D42E60, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1A7DE8DE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LEToolRequestMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A7DE8E44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A7DE8EA4()
{
  v1 = 0x7374726F706572;
  v2 = 0x52746361706D6F63;
  if (*v0 != 2)
  {
    v2 = 1701736302;
  }

  if (*v0)
  {
    v1 = 0x61746C6564;
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

uint64_t sub_1A7DE8F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A7DEA828(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A7DE8F48(uint64_t a1)
{
  v2 = sub_1A7DE9700();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DE8F84(uint64_t a1)
{
  v2 = sub_1A7DE9700();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DE8FC0(uint64_t a1)
{
  v2 = sub_1A7DE97A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DE8FFC(uint64_t a1)
{
  v2 = sub_1A7DE97A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DE9038(uint64_t a1)
{
  v2 = sub_1A7DE97FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DE9074(uint64_t a1)
{
  v2 = sub_1A7DE97FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DE90B0(uint64_t a1)
{
  v2 = sub_1A7DE9754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DE90EC(uint64_t a1)
{
  v2 = sub_1A7DE9754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A7DE9128(uint64_t a1)
{
  v2 = sub_1A7DE9850();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A7DE9164(uint64_t a1)
{
  v2 = sub_1A7DE9850();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LEToolQualityMeasurerResponse.encode(to:)(void *a1)
{
  v3 = sub_1A7CC7FFC(&qword_1EB2B7CB8);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v38 = &v32 - v5;
  v39 = sub_1A7CC7FFC(&qword_1EB2B7CC0);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v6);
  v8 = &v32 - v7;
  v9 = sub_1A7CC7FFC(&qword_1EB2B7CC8);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v32 - v11;
  v13 = sub_1A7CC7FFC(&qword_1EB2B7CD0);
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  v17 = sub_1A7CC7FFC(&qword_1EB2B7CD8);
  v44 = *(v17 - 8);
  v45 = v17;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v32 - v19;
  v21 = *v1;
  v42 = v1[1];
  v43 = v21;
  v22 = *(v1 + 16);
  sub_1A7CC9878(a1, a1[3]);
  sub_1A7DE9700();
  sub_1A7E23260();
  if (v22 <= 1)
  {
    if (v22)
    {
      LOBYTE(v46) = 1;
      sub_1A7DE97FC();
      v23 = v45;
      sub_1A7E22F80();
      v46 = v43;
      v47 = v42;
      sub_1A7CD437C();
      v28 = v36;
      sub_1A7E23030();
      v25 = *(v35 + 8);
      v26 = v12;
      v27 = v28;
      goto LABEL_8;
    }

    LOBYTE(v46) = 0;
    sub_1A7DE9850();
    v23 = v45;
    sub_1A7E22F80();
    v46 = v43;
    sub_1A7CC7FFC(&qword_1EB2B7D08);
    sub_1A7DEA124(&qword_1EB2B7D10, sub_1A7DC93A4, sub_1A7DE98A4);
    v24 = v34;
    sub_1A7E23030();
    v25 = *(v33 + 8);
    v26 = v16;
LABEL_6:
    v27 = v24;
LABEL_8:
    v25(v26, v27);
    return (*(v44 + 8))(v20, v23);
  }

  if (v22 == 2)
  {
    LOBYTE(v46) = 2;
    sub_1A7DE97A8();
    v23 = v45;
    sub_1A7E22F80();
    v24 = v39;
    sub_1A7E22FF0();
    v25 = *(v37 + 8);
    v26 = v8;
    goto LABEL_6;
  }

  LOBYTE(v46) = 3;
  sub_1A7DE9754();
  v30 = v38;
  v31 = v45;
  sub_1A7E22F80();
  (*(v40 + 8))(v30, v41);
  return (*(v44 + 8))(v20, v31);
}

unint64_t sub_1A7DE9700()
{
  result = qword_1EB2B7CE0;
  if (!qword_1EB2B7CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7CE0);
  }

  return result;
}

unint64_t sub_1A7DE9754()
{
  result = qword_1EB2B7CE8;
  if (!qword_1EB2B7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7CE8);
  }

  return result;
}

unint64_t sub_1A7DE97A8()
{
  result = qword_1EB2B7CF0;
  if (!qword_1EB2B7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7CF0);
  }

  return result;
}

unint64_t sub_1A7DE97FC()
{
  result = qword_1EB2B7CF8;
  if (!qword_1EB2B7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7CF8);
  }

  return result;
}

unint64_t sub_1A7DE9850()
{
  result = qword_1EB2B7D00;
  if (!qword_1EB2B7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D00);
  }

  return result;
}

unint64_t sub_1A7DE98A4()
{
  result = qword_1EB2B7D18;
  if (!qword_1EB2B7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D18);
  }

  return result;
}

uint64_t LEToolQualityMeasurerResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v54 = sub_1A7CC7FFC(&qword_1EB2B7D20);
  v60 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v3);
  v59 = &v48[-v4];
  v52 = sub_1A7CC7FFC(&qword_1EB2B7D28);
  v57 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v5);
  v58 = &v48[-v6];
  v7 = sub_1A7CC7FFC(&qword_1EB2B7D30);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v48[-v9];
  v11 = sub_1A7CC7FFC(&qword_1EB2B7D38);
  v53 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v48[-v13];
  v15 = sub_1A7CC7FFC(&qword_1EB2B7D40);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v48[-v18];
  v20 = a1[3];
  v69 = a1;
  sub_1A7CC9878(a1, v20);
  sub_1A7DE9700();
  v21 = v62;
  sub_1A7E23250();
  if (v21)
  {
    return sub_1A7B0CD6C(v69);
  }

  v22 = v14;
  v23 = v10;
  v50 = v11;
  v51 = 0;
  v24 = v58;
  v25 = v59;
  v62 = v16;
  v27 = v60;
  v26 = v61;
  v28 = sub_1A7E22F70();
  v29 = (2 * *(v28 + 16)) | 1;
  v65 = v28;
  v66 = v28 + 32;
  v67 = 0;
  v68 = v29;
  v30 = sub_1A7CDB544();
  if (v30 == 4 || v67 != v68 >> 1)
  {
    v35 = sub_1A7E22BD0();
    swift_allocError();
    v37 = v36;
    sub_1A7CC7FFC(&qword_1EB2B4EC8);
    *v37 = &type metadata for LEToolQualityMeasurerResponse;
    sub_1A7E22E90();
    sub_1A7E22BC0();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x1E69E6AF8], v35);
    swift_willThrow();
    goto LABEL_9;
  }

  v49 = v30;
  if (v30 > 1u)
  {
    if (v30 == 2)
    {
      LOBYTE(v63) = 2;
      sub_1A7DE97A8();
      v39 = v24;
      v40 = v51;
      sub_1A7E22E70();
      v41 = v62;
      if (!v40)
      {
        v46 = v52;
        v34 = sub_1A7E22EF0();
        v51 = 0;
        v33 = v47;
        (*(v57 + 8))(v39, v46);
        (*(v41 + 8))(v19, v15);
        swift_unknownObjectRelease();
        goto LABEL_20;
      }
    }

    else
    {
      LOBYTE(v63) = 3;
      sub_1A7DE9754();
      v44 = v51;
      sub_1A7E22E70();
      v33 = v44;
      v45 = v62;
      if (!v44)
      {
        v51 = 0;
        (*(v27 + 8))(v25, v54);
        (*(v45 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v34 = 0;
        goto LABEL_20;
      }
    }

    goto LABEL_9;
  }

  if (v30)
  {
    LOBYTE(v63) = 1;
    sub_1A7DE97FC();
    v42 = v51;
    sub_1A7E22E70();
    if (!v42)
    {
      sub_1A7CD441C();
      v43 = v56;
      sub_1A7E22F30();
      v51 = 0;
      (*(v55 + 8))(v23, v43);
      (*(v62 + 8))(v19, v15);
      swift_unknownObjectRelease();
      v34 = v63;
      v33 = v64;
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  LOBYTE(v63) = 0;
  sub_1A7DE9850();
  v31 = v51;
  sub_1A7E22E70();
  if (v31)
  {
LABEL_9:
    (*(v62 + 8))(v19, v15);
    swift_unknownObjectRelease();
    return sub_1A7B0CD6C(v69);
  }

  sub_1A7CC7FFC(&qword_1EB2B7D08);
  sub_1A7DEA124(&qword_1EB2B7D48, sub_1A7DC9488, sub_1A7DEA1B4);
  v32 = v50;
  sub_1A7E22F30();
  v33 = 0;
  (*(v53 + 8))(v22, v32);
  (*(v62 + 8))(v19, v15);
  swift_unknownObjectRelease();
  v51 = 0;
  v34 = v63;
LABEL_20:
  *v26 = v34;
  *(v26 + 8) = v33;
  *(v26 + 16) = v49;
  return sub_1A7B0CD6C(v69);
}

uint64_t sub_1A7DEA124(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A7CC9830(&qword_1EB2B7D08);
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A7DEA1B4()
{
  result = qword_1EB2B7D50;
  if (!qword_1EB2B7D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D50);
  }

  return result;
}

uint64_t sub_1A7DEA238(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1A7DEA254(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A7DEA29C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A7DEA2E0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1A7DEA35C()
{
  result = qword_1EB2B7D58;
  if (!qword_1EB2B7D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D58);
  }

  return result;
}

unint64_t sub_1A7DEA3B4()
{
  result = qword_1EB2B7D60;
  if (!qword_1EB2B7D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D60);
  }

  return result;
}

unint64_t sub_1A7DEA40C()
{
  result = qword_1EB2B7D68;
  if (!qword_1EB2B7D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D68);
  }

  return result;
}

unint64_t sub_1A7DEA464()
{
  result = qword_1EB2B7D70;
  if (!qword_1EB2B7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D70);
  }

  return result;
}

unint64_t sub_1A7DEA4BC()
{
  result = qword_1EB2B7D78;
  if (!qword_1EB2B7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D78);
  }

  return result;
}

unint64_t sub_1A7DEA514()
{
  result = qword_1EB2B7D80;
  if (!qword_1EB2B7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D80);
  }

  return result;
}

unint64_t sub_1A7DEA56C()
{
  result = qword_1EB2B7D88;
  if (!qword_1EB2B7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D88);
  }

  return result;
}

unint64_t sub_1A7DEA5C4()
{
  result = qword_1EB2B7D90;
  if (!qword_1EB2B7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D90);
  }

  return result;
}

unint64_t sub_1A7DEA61C()
{
  result = qword_1EB2B7D98;
  if (!qword_1EB2B7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7D98);
  }

  return result;
}

unint64_t sub_1A7DEA674()
{
  result = qword_1EB2B7DA0;
  if (!qword_1EB2B7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7DA0);
  }

  return result;
}

unint64_t sub_1A7DEA6CC()
{
  result = qword_1EB2B7DA8;
  if (!qword_1EB2B7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7DA8);
  }

  return result;
}

unint64_t sub_1A7DEA724()
{
  result = qword_1EB2B7DB0;
  if (!qword_1EB2B7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7DB0);
  }

  return result;
}

unint64_t sub_1A7DEA77C()
{
  result = qword_1EB2B7DB8;
  if (!qword_1EB2B7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7DB8);
  }

  return result;
}

unint64_t sub_1A7DEA7D4()
{
  result = qword_1EB2B7DC0;
  if (!qword_1EB2B7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2B7DC0);
  }

  return result;
}

uint64_t sub_1A7DEA828(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7374726F706572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A7E230D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746C6564 && a2 == 0xE500000000000000 || (sub_1A7E230D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52746361706D6F63 && a2 == 0xED000074726F7065 || (sub_1A7E230D0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A7E230D0();

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

uint64_t sub_1A7DEA990(uint64_t a1, uint64_t a2, char **a3)
{
  v147 = a3;
  v5 = 0;
  v6 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v139 = &v130 - v8;
  v138 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v138, v9);
  v141 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v135 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v137 = &v130 - v16;
  v140 = MEMORY[0x1E69E7CC0];
  i = sub_1A7CE2290(MEMORY[0x1E69E7CC0]);
  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = (a2 + 48);
    do
    {
      v21 = *(v19 - 1);
      v20 = *v19;
      *&v150 = *(v19 - 2);
      v22 = v150;
      *(&v150 + 1) = v21;
      *&v151 = v20;

      v23 = i;
      v24 = LinkDefinition.uniqueID.getter();
      v26 = v25;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v152 = v23;
      sub_1A7DC3CE4(v22, v21, v20, v24, v26, isUniquelyReferenced_nonNull_native);

      i = v152;
      v19 += 3;
      --v18;
    }

    while (v18);
  }

  v29 = sub_1A7D1D568(v28);
  v152 = v29;

  v30 = v144;
  os_unfair_lock_lock((v144 + 16));
  v31 = *(v30 + 24);

  os_unfair_lock_unlock((v30 + 16));
  if (*(v31 + 16) <= *(v29 + 16) >> 3)
  {
    *&v150 = v29;

    sub_1A7DEB768(v31);
    v143 = v150;
  }

  else
  {

    v143 = sub_1A7DEB894(v31, v29);
  }

  if (*(v29 + 16) <= *(v31 + 16) >> 3)
  {
    *&v150 = v31;
    sub_1A7DEB768(v29);

    v32 = v150;
  }

  else
  {
    v32 = sub_1A7DEB894(v29, v31);
  }

  v33 = v147;
  v34 = *v147;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v34;
  *v33 = v34;
  if (v35)
  {
    goto LABEL_11;
  }

LABEL_96:
  v148 = sub_1A7CCCAA4(0, *(v148 + 2) + 1, 1, v148);
  *v147 = v148;
LABEL_11:
  v37 = *(v148 + 2);
  v36 = *(v148 + 3);
  v142 = i;
  v136 = v5;
  if (v37 >= v36 >> 1)
  {
    v148 = sub_1A7CCCAA4((v36 > 1), v37 + 1, 1, v148);
  }

  LODWORD(v145) = 0;
  i = 0;
  v38 = v148;
  *(v148 + 2) = v37 + 1;
  v39 = &v38[16 * v37];
  *(v39 + 4) = 0x3A6465766F6D6552;
  *(v39 + 5) = 0xE800000000000000;
  *v147 = v38;
  v40 = v32 + 56;
  v41 = 1 << *(v32 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v5 = v42 & *(v32 + 56);
  v43 = (v41 + 63) >> 6;
LABEL_16:
  if (!v5)
  {
    goto LABEL_20;
  }

  do
  {
LABEL_24:
    while (1)
    {
      v45 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v46 = (*(v32 + 48) + ((i << 10) | (16 * v45)));
      v47 = *v46;
      v48 = v46[1];

      os_unfair_lock_lock((a1 + 16));
      v49 = *(a1 + 24);
      if (*(v49 + 16))
      {
        v50 = sub_1A7CD1248(v47, v48);
        if (v51)
        {
          break;
        }
      }

      os_unfair_lock_unlock((a1 + 16));
LABEL_19:

      if (!v5)
      {
        goto LABEL_20;
      }
    }

    v52 = *(*(v49 + 56) + 8 * v50);

    os_unfair_lock_unlock((a1 + 16));
    if (!v52)
    {
      goto LABEL_19;
    }

    v133 = v47;
    os_unfair_lock_lock((v52 + 40));
    v53 = type metadata accessor for LinkStateComponent(0);
    v54 = v53;
    v134 = v52;
    v55 = (v52 + 48);
    v56 = *(v52 + 48);
    v132 = v55;
    if (*(v56 + 16) && (v57 = sub_1A7CD0DFC(v53), (v58 & 1) != 0))
    {
      sub_1A7B0CD10(*(v56 + 56) + 32 * v57, &v150);
    }

    else
    {
      v150 = 0u;
      v151 = 0u;
    }

    os_unfair_lock_unlock(v134 + 10);
    v59 = sub_1A7CC7FFC(&qword_1EB2B66D0);
    v60 = v139;
    v130 = v59;
    v61 = swift_dynamicCast();
    v62 = *(v54 - 8);
    (*(v62 + 56))(v60, v61 ^ 1u, 1, v54);
    if ((*(v62 + 48))(v60, 1, v54))
    {
      sub_1A7CD9FEC(v60);
      v63 = v137;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v64 = v135;
      sub_1A7CD0EC4(v60, v135);
      sub_1A7CD9FEC(v60);
      v63 = v137;
      sub_1A7CD0F28(v64, v137);
    }

    sub_1A7CD0F28(v63, v141);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v131 = v32;
    if ((EnumCaseMultiPayload - 3) < 3)
    {
      goto LABEL_48;
    }

    if (!EnumCaseMultiPayload)
    {
      v75 = sub_1A7E22CF0();
      (*(*(v75 - 8) + 8))(v141, v75);
LABEL_48:
      *&v150 = 8237;
      *(&v150 + 1) = 0xE200000000000000;
      MEMORY[0x1AC561C90](v133, v48);
      v76 = v150;
      v77 = v148;
      *v147 = v148;
      v79 = *(v77 + 2);
      v78 = *(v77 + 3);
      if (v79 >= v78 >> 1)
      {
        v148 = sub_1A7CCCAA4((v78 > 1), v79 + 1, 1, v148);
      }

      v80 = v148;
      *(v148 + 2) = v79 + 1;
      *&v80[16 * v79 + 32] = v76;
      *v147 = v80;
      v81 = v134;
      os_unfair_lock_lock(v134 + 10);
      *(&v151 + 1) = &type metadata for LinkIsPendingRemoval;
      LOBYTE(v150) = 0;
      sub_1A7CC8D74(&v150, &type metadata for LinkIsPendingRemoval);
      os_unfair_lock_unlock(v81 + 10);
      v82._countAndFlagsBits = v133;
      v82._object = v48;
      LinkEngine.remove(linkWithUniqueName:)(v82);

      LODWORD(v145) = 1;
      v32 = v131;
      goto LABEL_16;
    }

    sub_1A7CD0E68(v141);
    *&v150 = 0x6E69646E6550202DLL;
    *(&v150 + 1) = 0xEB00000000203A67;
    MEMORY[0x1AC561C90](v133, v48);
    v66 = v150;
    v67 = v148;
    *v147 = v148;
    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    if (v69 >= v68 >> 1)
    {
      v148 = sub_1A7CCCAA4((v68 > 1), v69 + 1, 1, v148);
    }

    v70 = v148;
    *(v148 + 2) = v69 + 1;
    *&v70[16 * v69 + 32] = v66;
    *v147 = v70;
    v71 = v134;
    os_unfair_lock_lock(v134 + 10);
    v72 = v136;
    sub_1A7CCBDDC(v132, &v150);
    v136 = v72;
    os_unfair_lock_unlock(v71 + 10);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = v131;
LABEL_43:
      v74 = v134;
LABEL_44:
      os_unfair_lock_lock(v74 + 10);
      *(&v151 + 1) = &type metadata for LinkIsPendingRemoval;
      LODWORD(v145) = 1;
      LOBYTE(v150) = 1;
      sub_1A7CC8D74(&v150, &type metadata for LinkIsPendingRemoval);
      os_unfair_lock_unlock(v74 + 10);
      v73 = v133;
      goto LABEL_45;
    }

    v32 = v131;
    v73 = v133;
    if (v149 == 2)
    {
      goto LABEL_43;
    }

    v74 = v134;
    if ((v149 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_45:
    sub_1A7CF0154(&v150, v73, v48);
  }

  while (v5);
  while (1)
  {
LABEL_20:
    v44 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    if (v44 >= v43)
    {
      break;
    }

    v5 = *(v40 + 8 * v44);
    ++i;
    if (v5)
    {
      i = v44;
      goto LABEL_24;
    }
  }

  v83 = v148;
  *v147 = v148;
  v85 = *(v83 + 2);
  v84 = *(v83 + 3);
  v86 = v85 + 1;
  if (v85 >= v84 >> 1)
  {
    v148 = sub_1A7CCCAA4((v84 > 1), v85 + 1, 1, v148);
  }

  v87 = v142;
  v88 = v145;
  v89 = v148;
  *(v148 + 2) = v86;
  v90 = &v89[16 * v85];
  *(v90 + 4) = 0;
  *(v90 + 5) = 0xE000000000000000;
  *v147 = v89;
  v91 = *(v89 + 3);
  v92 = v85 + 2;
  v146 = a1;
  if ((v85 + 2) > (v91 >> 1))
  {
    v148 = sub_1A7CCCAA4((v91 > 1), v85 + 2, 1, v148);
  }

  v93 = 0;
  v94 = v148;
  *(v148 + 2) = v92;
  v95 = &v94[16 * v86];
  *(v95 + 4) = 0x3A6465646441;
  *(v95 + 5) = 0xE600000000000000;
  *v147 = v94;
  a1 = v143 + 56;
  v96 = 1 << *(v143 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & *(v143 + 56);
  v32 = (v96 + 63) >> 6;
  v141 = v32;
  if (v98)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v99 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_94;
    }

    if (v99 >= v32)
    {
      break;
    }

    v98 = *(a1 + 8 * v99);
    ++v93;
    if (v98)
    {
      v93 = v99;
      do
      {
LABEL_62:
        v100 = (*(v143 + 48) + ((v93 << 10) | (16 * __clz(__rbit64(v98)))));
        v101 = *v100;
        v5 = v100[1];

        v102 = LinkEngine.add(linkWithUniqueName:)(v101, v5);
        v103 = *(v87 + 16);
        v145 = v101;
        if (v103 && (v104 = sub_1A7CD1248(v101, v5), (v105 & 1) != 0))
        {
          v106 = (*(v87 + 56) + 24 * v104);
          v107 = *v106;
          v108 = v106[1];
          v109 = v106[2];
        }

        else
        {
          v107 = 0;
          v108 = 0;
          v109 = 0;
        }

        os_unfair_lock_lock(v102 + 10);
        *&v150 = v107;
        *(&v150 + 1) = v108;
        *&v151 = v109;
        *(&v151 + 1) = &type metadata for LinkDefinitionComponent;
        sub_1A7CDB7B8(v107);
        sub_1A7CC8D74(&v150, &type metadata for LinkDefinitionComponent);
        os_unfair_lock_unlock(v102 + 10);
        sub_1A7CDB84C(v107);
        v110 = *(v144 + 32);
        if (v110)
        {
          v110(v146, v102);
        }

        *&v150 = 8237;
        *(&v150 + 1) = 0xE200000000000000;
        MEMORY[0x1AC561C90](v145, v5);

        v111 = v150;
        v112 = v148;
        *v147 = v148;
        i = *(v112 + 2);
        v113 = *(v112 + 3);
        if (i >= v113 >> 1)
        {
          v148 = sub_1A7CCCAA4((v113 > 1), i + 1, 1, v148);
        }

        v32 = v141;
        v98 &= v98 - 1;

        v114 = v148;
        *(v148 + 2) = i + 1;
        *&v114[16 * i + 32] = v111;
        *v147 = v114;
        v88 = 1;
        v87 = v142;
      }

      while (v98);
    }
  }

  v115 = v144;
  os_unfair_lock_lock((v144 + 16));
  v116 = v152;
  *(v115 + 24) = v152;
  swift_bridgeObjectRetain_n();

  os_unfair_lock_unlock((v115 + 16));
  a1 = v146;
  if (v88)
  {
    LinkEngine.scheduleUpdate()();
  }

  *&v150 = MEMORY[0x1E69E7CC0];
  v117 = 1 << *(v116 + 32);
  v118 = -1;
  if (v117 < 64)
  {
    v118 = ~(-1 << v117);
  }

  v119 = v118 & *(v116 + 56);
  v32 = (v117 + 63) >> 6;

  for (i = 0; v119; v140 = v150)
  {
    while (1)
    {
LABEL_85:
      v123 = (*(v116 + 48) + ((i << 10) | (16 * __clz(__rbit64(v119)))));
      v124 = *v123;
      v125 = v123[1];

      os_unfair_lock_lock((a1 + 16));
      v126 = *(a1 + 24);
      if (*(v126 + 16) && (v127 = sub_1A7CD1248(v124, v125), (v128 & 1) != 0))
      {
        v120 = *(*(v126 + 56) + 8 * v127);
      }

      else
      {
        v120 = 0;
      }

      v119 &= v119 - 1;
      os_unfair_lock_unlock((a1 + 16));

      if (v120)
      {
        break;
      }

      if (!v119)
      {
        goto LABEL_81;
      }
    }

    MEMORY[0x1AC561DF0](v121);
    if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A7E22560();
    }

    sub_1A7E225A0();
  }

  while (1)
  {
LABEL_81:
    v122 = i + 1;
    if (__OFADD__(i, 1))
    {
      goto LABEL_95;
    }

    if (v122 >= v32)
    {
      break;
    }

    v119 = *(v116 + 56 + 8 * v122);
    ++i;
    if (v119)
    {
      i = v122;
      goto LABEL_85;
    }
  }

  swift_bridgeObjectRelease_n();
  return v140;
}

uint64_t sub_1A7DEB6B0()
{
  sub_1A7DEB724(v0 + 24);
  sub_1A7B15088(*(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DEB768(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1A7D918F4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_1A7DEB894(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_1A7E23200();

    sub_1A7E22350();
    v23 = sub_1A7E23240();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_1A7E230D0() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x1EEE9AC00](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1A7DEC03C(v59, v55, v57, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_1A7E23200();

            sub_1A7E22350();
            v42 = sub_1A7E23240();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_1A7E230D0() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_1A7DEBE04(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x1AC5654B0](v51, -1, -1);
    v58 = v64;
    v5 = v53;
LABEL_52:
    sub_1A7CC9770();
    return v5;
  }

  result = MEMORY[0x1AC5654B0](v51, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1A7DEBE04(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_1A7DEC03C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_1A7E23200();

        sub_1A7E22350();
        v19 = sub_1A7E23240();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_1A7E230D0() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1A7DEC03C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A7CC7FFC(&qword_1EB2B54B8);
  result = sub_1A7E22B20();
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
    sub_1A7E23200();

    sub_1A7E22350();
    result = sub_1A7E23240();
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

IDSFoundation::IDSDictionaryMetric __swiftcall IDSDictionaryMetric.init(name:dictionary:)(Swift::String name, Swift::OpaquePointer dictionary)
{
  *v2 = name;
  *(v2 + 16) = dictionary;
  result.name = name;
  result.dictionary = dictionary;
  return result;
}

Swift::Void __swiftcall IDSCoreAnalyticsReporter.report(metric:)(IDSFoundation::IDSDictionaryMetric metric)
{
  v3 = *metric.name._countAndFlagsBits;
  v2 = *(metric.name._countAndFlagsBits + 8);
  v4 = *v1;
  v5 = v1[1];
  sub_1A7DEC8CC(*(metric.name._countAndFlagsBits + 16));
  if (v6)
  {
    v7 = v6;
    if (qword_1EB2B4888 != -1)
    {
      swift_once();
    }

    v8 = sub_1A7E22060();
    sub_1A7B0CB00(v8, qword_1EB2B7DD0);

    v9 = sub_1A7E22040();
    v10 = sub_1A7E228F0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      aBlock = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_1A7B0CB38(v4, v5, &aBlock);
      osloga = v4;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1A7B0CB38(v3, v2, &aBlock);
      *(v11 + 22) = 2080;
      sub_1A7DECBD8();
      v13 = sub_1A7E22170();
      v15 = sub_1A7B0CB38(v13, v14, &aBlock);

      *(v11 + 24) = v15;
      v4 = osloga;
      _os_log_impl(&dword_1A7AD9000, v9, v10, "Reporting: %s.%s: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1AC5654B0](v12, -1, -1);
      MEMORY[0x1AC5654B0](v11, -1, -1);
    }

    aBlock = v4;
    v29 = v5;

    MEMORY[0x1AC561C90](46, 0xE100000000000000);
    MEMORY[0x1AC561C90](v3, v2);
    v16 = sub_1A7E22260();

    v17 = swift_allocObject();
    *(v17 + 16) = v7;
    v32 = sub_1A7D10DCC;
    v33 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v29 = 1107296256;
    v30 = sub_1A7DECB30;
    v31 = &unk_1F1AB9470;
    v18 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v18);
  }

  else
  {
    if (qword_1EB2B4888 != -1)
    {
      swift_once();
    }

    v19 = sub_1A7E22060();
    sub_1A7B0CB00(v19, qword_1EB2B7DD0);

    oslog = sub_1A7E22040();
    v20 = sub_1A7E228E0();

    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      aBlock = v22;
      *v21 = 136315138;
      v23 = sub_1A7E22170();
      v25 = sub_1A7B0CB38(v23, v24, &aBlock);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1A7AD9000, oslog, v20, "Could not report metric dictionary %s", v21, 0xCu);
      sub_1A7B0CD6C(v22);
      MEMORY[0x1AC5654B0](v22, -1, -1);
      MEMORY[0x1AC5654B0](v21, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1A7DEC6E4()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B7DD0);
  sub_1A7B0CB00(v0, qword_1EB2B7DD0);
  return sub_1A7E22050();
}

uint64_t IDSDictionaryMetric.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSDictionaryMetric.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t IDSDictionaryMetric.dictionary.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t IDSCoreAnalyticsReporter.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t IDSCoreAnalyticsReporter.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void sub_1A7DEC8CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1A7CC7FFC(&qword_1EB2B50B0);
    v2 = sub_1A7E22E20();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v12 = __clz(__rbit64(v5)) | (v11 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1A7B0CD10(*(a1 + 56) + 32 * v12, v26);
    *&v25 = v14;
    *(&v25 + 1) = v15;
    v23[2] = v25;
    v24[0] = v26[0];
    v24[1] = v26[1];
    v16 = v25;
    sub_1A7CE50FC(v24, v23);
    sub_1A7DECBD8();

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v17 = sub_1A7CD1248(v16, *(&v16 + 1));
    if (v18)
    {
      *(v2[6] + 16 * v17) = v16;
      v8 = v17;

      v9 = v2[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v22;

      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
      *(v2[6] + 16 * v17) = v16;
      *(v2[7] + 8 * v17) = v22;
      v19 = v2[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_23;
      }

      v2[2] = v21;
      v7 = v11;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v11 = v7;
  }
}

id sub_1A7DECB30(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1A7DECBD8();
    v4 = sub_1A7E22160();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A7DECBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A7DECBD8()
{
  result = qword_1EB2B6E00;
  if (!qword_1EB2B6E00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB2B6E00);
  }

  return result;
}

void __swiftcall IDSLinkSelectionMetric.LinkState.init(connected:selected:probing:uplinkPacketLoss:downlinkPacketLoss:score:confidence:)(IDSFoundation::IDSLinkSelectionMetric::LinkState *__return_ptr retstr, Swift::Bool connected, Swift::Bool selected, Swift::Bool probing, Swift::Double uplinkPacketLoss, Swift::Double downlinkPacketLoss, Swift::Double score, Swift::Double confidence)
{
  retstr->connected = connected;
  retstr->selected = selected;
  retstr->probing = probing;
  retstr->uplinkPacketLoss = uplinkPacketLoss;
  retstr->downlinkPacketLoss = downlinkPacketLoss;
  retstr->score = score;
  retstr->confidence = confidence;
}

double sub_1A7DECDC0()
{
  word_1EB2B7DE8 = 0;
  byte_1EB2B7DEA = 0;
  result = 0.0;
  *&qword_1EB2B7DF0 = 0u;
  *&qword_1EB2B7E00 = 0u;
  return result;
}

double static IDSLinkSelectionMetric.LinkState.none.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4890 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = HIBYTE(word_1EB2B7DE8);
  v2 = byte_1EB2B7DEA;
  *a1 = word_1EB2B7DE8;
  *(a1 + 1) = v1;
  *(a1 + 2) = v2;
  *(a1 + 8) = *&qword_1EB2B7DF0;
  result = *&qword_1EB2B7E00;
  *(a1 + 24) = *&qword_1EB2B7E00;
  return result;
}

uint64_t IDSLinkSelectionMetric.LinkState.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = sub_1A7CCCAA4(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v6 = *(v4 + 2);
  v5 = *(v4 + 3);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v1 == 1)
  {
    if (v7 <= v6)
    {
      v4 = sub_1A7CCCAA4((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v8;
    v9 = &v4[16 * v6];
    *(v9 + 4) = 0x657463656E6E6F43;
    *(v9 + 5) = 0xE900000000000064;
    if (v2)
    {
      v10 = *(v4 + 3);
      v11 = v6 + 2;
      if ((v6 + 2) > (v10 >> 1))
      {
        v31 = sub_1A7CCCAA4((v10 > 1), v6 + 2, 1, v4);
        v11 = v6 + 2;
        v4 = v31;
      }

      *(v4 + 2) = v11;
      v12 = &v4[16 * v8];
      *(v12 + 4) = 0x64657463656C6553;
      *(v12 + 5) = 0xE800000000000000;
    }

    if (v3)
    {
      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        v4 = sub_1A7CCCAA4((v13 > 1), v14 + 1, 1, v4);
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[16 * v14];
      *(v15 + 4) = 0x676E69626F7250;
      *(v15 + 5) = 0xE700000000000000;
    }

    MEMORY[0x1AC561C90](0x4C206B6E696C7055, 0xED0000203A73736FLL);
    sub_1A7E227A0();
    v17 = *(v4 + 2);
    v16 = *(v4 + 3);
    if (v17 >= v16 >> 1)
    {
      v4 = sub_1A7CCCAA4((v16 > 1), v17 + 1, 1, v4);
    }

    *(v4 + 2) = v17 + 1;
    v18 = &v4[16 * v17];
    *(v18 + 4) = 0;
    *(v18 + 5) = 0xE000000000000000;
    sub_1A7E22B70();
    MEMORY[0x1AC561C90](0x6B6E696C6E776F44, 0xEF203A73736F4C20);
    sub_1A7E227A0();
    v20 = *(v4 + 2);
    v19 = *(v4 + 3);
    if (v20 >= v19 >> 1)
    {
      v4 = sub_1A7CCCAA4((v19 > 1), v20 + 1, 1, v4);
    }

    *(v4 + 2) = v20 + 1;
    v21 = &v4[16 * v20];
    *(v21 + 4) = 0;
    *(v21 + 5) = 0xE000000000000000;
    MEMORY[0x1AC561C90](0x203A65726F6353, 0xE700000000000000);
    sub_1A7E227A0();
    v23 = *(v4 + 2);
    v22 = *(v4 + 3);
    if (v23 >= v22 >> 1)
    {
      v4 = sub_1A7CCCAA4((v22 > 1), v23 + 1, 1, v4);
    }

    *(v4 + 2) = v23 + 1;
    v24 = &v4[16 * v23];
    *(v24 + 4) = 0;
    *(v24 + 5) = 0xE000000000000000;
    MEMORY[0x1AC561C90](0x6E656469666E6F43, 0xEC000000203A6563);
    sub_1A7E227A0();
    v26 = 0;
    v25 = 0xE000000000000000;
    v6 = *(v4 + 2);
    v27 = *(v4 + 3);
    v8 = v6 + 1;
    if (v6 >= v27 >> 1)
    {
      v4 = sub_1A7CCCAA4((v27 > 1), v6 + 1, 1, v4);
    }
  }

  else
  {
    v25 = 0xED00006465746365;
    if (v7 <= v6)
    {
      v4 = sub_1A7CCCAA4((v5 > 1), v6 + 1, 1, v4);
    }

    v26 = 0x6E6E6F4320746F4ELL;
  }

  *(v4 + 2) = v8;
  v28 = &v4[16 * v6];
  *(v28 + 4) = v26;
  *(v28 + 5) = v25;
  sub_1A7CC7FFC(&qword_1EB2B4AA0);
  sub_1A7CD0F8C();
  v29 = sub_1A7E221F0();

  return v29;
}

__n128 IDSLinkSelectionMetric.wifiWifi.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 26);
  *a1 = *(v1 + 24);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  result = *(v1 + 32);
  v5 = *(v1 + 48);
  *(a1 + 8) = result;
  *(a1 + 24) = v5;
  return result;
}

__n128 IDSLinkSelectionMetric.wifiWifi.setter(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  *(v1 + 24) = *a1;
  *(v1 + 25) = v2;
  *(v1 + 26) = v3;
  result = *(a1 + 8);
  v5 = *(a1 + 24);
  *(v1 + 32) = result;
  *(v1 + 48) = v5;
  return result;
}

__n128 IDSLinkSelectionMetric.wifiCell.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 65);
  v3 = *(v1 + 66);
  *a1 = *(v1 + 64);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = *(v1 + 72);
  result = *(v1 + 88);
  *(a1 + 24) = result;
  return result;
}

__n128 IDSLinkSelectionMetric.wifiCell.setter(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  *(v1 + 64) = *a1;
  *(v1 + 65) = v2;
  *(v1 + 66) = v3;
  *(v1 + 72) = *(a1 + 8);
  result = *(a1 + 24);
  *(v1 + 88) = result;
  return result;
}

__n128 IDSLinkSelectionMetric.cellWifi.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 105);
  v3 = *(v1 + 106);
  *a1 = *(v1 + 104);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  result = *(v1 + 112);
  v5 = *(v1 + 128);
  *(a1 + 8) = result;
  *(a1 + 24) = v5;
  return result;
}

__n128 IDSLinkSelectionMetric.cellWifi.setter(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  *(v1 + 104) = *a1;
  *(v1 + 105) = v2;
  *(v1 + 106) = v3;
  result = *(a1 + 8);
  v5 = *(a1 + 24);
  *(v1 + 112) = result;
  *(v1 + 128) = v5;
  return result;
}

__n128 IDSLinkSelectionMetric.cellCell.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 145);
  v3 = *(v1 + 146);
  *a1 = *(v1 + 144);
  *(a1 + 1) = v2;
  *(a1 + 2) = v3;
  *(a1 + 8) = *(v1 + 152);
  result = *(v1 + 168);
  *(a1 + 24) = result;
  return result;
}

__n128 IDSLinkSelectionMetric.cellCell.setter(uint64_t a1)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  *(v1 + 144) = *a1;
  *(v1 + 145) = v2;
  *(v1 + 146) = v3;
  *(v1 + 152) = *(a1 + 8);
  result = *(a1 + 24);
  *(v1 + 168) = result;
  return result;
}

void __swiftcall IDSLinkSelectionMetric.init(wifiWifi:wifiCell:cellWifi:cellCell:)(IDSFoundation::IDSLinkSelectionMetric *__return_ptr retstr, IDSFoundation::IDSLinkSelectionMetric::LinkState *wifiWifi, IDSFoundation::IDSLinkSelectionMetric::LinkState *wifiCell, IDSFoundation::IDSLinkSelectionMetric::LinkState *cellWifi, IDSFoundation::IDSLinkSelectionMetric::LinkState *cellCell)
{
  connected = wifiWifi->connected;
  selected = wifiWifi->selected;
  probing = wifiWifi->probing;
  v8 = wifiCell->connected;
  v9 = wifiCell->selected;
  v10 = wifiCell->probing;
  v11 = cellWifi->connected;
  v12 = cellWifi->selected;
  v13 = cellWifi->probing;
  v14 = cellCell->connected;
  v15 = cellCell->selected;
  v16 = cellCell->probing;
  retstr->reportIndex = 0;
  retstr->hasChanged = 0;
  retstr->elapsed = 0.0;
  retstr->wifiWifi.connected = connected;
  retstr->wifiWifi.selected = selected;
  retstr->wifiWifi.probing = probing;
  v17 = *&wifiWifi->score;
  *&retstr->wifiWifi.uplinkPacketLoss = *&wifiWifi->uplinkPacketLoss;
  *&retstr->wifiWifi.score = v17;
  retstr->wifiCell.connected = v8;
  retstr->wifiCell.selected = v9;
  retstr->wifiCell.probing = v10;
  *&retstr->wifiCell.uplinkPacketLoss = *&wifiCell->uplinkPacketLoss;
  *&retstr->wifiCell.score = *&wifiCell->score;
  retstr->cellWifi.connected = v11;
  retstr->cellWifi.selected = v12;
  retstr->cellWifi.probing = v13;
  v18 = *&cellWifi->score;
  *&retstr->cellWifi.uplinkPacketLoss = *&cellWifi->uplinkPacketLoss;
  *&retstr->cellWifi.score = v18;
  retstr->cellCell.connected = v14;
  retstr->cellCell.selected = v15;
  retstr->cellCell.probing = v16;
  *&retstr->cellCell.uplinkPacketLoss = *&cellCell->uplinkPacketLoss;
  *&retstr->cellCell.score = *&cellCell->score;
}

uint64_t IDSLinkSelectionMetric.description.getter()
{
  v1 = *(v0 + 8);
  sub_1A7E22B70();
  MEMORY[0x1AC561C90](0xD000000000000021, 0x80000001A7EB1B70);
  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1AC561C90](v2, v3);

  MEMORY[0x1AC561C90](0x657370616C65202CLL, 0xEB00000000203A64);
  sub_1A7E227A0();
  MEMORY[0x1AC561C90](0xD000000000000011, 0x80000001A7EB1BA0);
  v4 = IDSLinkSelectionMetric.LinkState.description.getter();
  MEMORY[0x1AC561C90](v4);

  MEMORY[0x1AC561C90](0x2D69466957202D0ALL, 0xEE00203A6C6C6543);
  v5 = IDSLinkSelectionMetric.LinkState.description.getter();
  MEMORY[0x1AC561C90](v5);

  MEMORY[0x1AC561C90](0x2D6C6C6543202D0ALL, 0xEE00203A69466957);
  v6 = IDSLinkSelectionMetric.LinkState.description.getter();
  MEMORY[0x1AC561C90](v6);

  MEMORY[0x1AC561C90](0x2D6C6C6543202D0ALL, 0xEE00203A6C6C6543);
  v7 = IDSLinkSelectionMetric.LinkState.description.getter();
  MEMORY[0x1AC561C90](v7);

  MEMORY[0x1AC561C90](10, 0xE100000000000000);
  return 0;
}

uint64_t static IDSDictionaryMetric.linkSelection(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v10 = a1[4];
  v9 = a1[5];
  v12 = a1[6];
  v11 = a1[7];
  v13 = *(a1 + 64);
  v14 = *(a1 + 65);
  v24 = *(a1 + 66);
  v16 = a1[9];
  v15 = a1[10];
  v17 = a1[11];
  v25 = a1[12];
  v26 = *(a1 + 104);
  v27 = *(a1 + 105);
  v28 = *(a1 + 106);
  v29 = a1[14];
  v30 = a1[15];
  v31 = a1[16];
  v32 = a1[17];
  v33 = *(a1 + 144);
  v34 = *(a1 + 145);
  v35 = *(a1 + 146);
  v36 = a1[19];
  v37 = a1[20];
  v38 = a1[21];
  v39 = a1[22];
  sub_1A7CC7FFC(&qword_1EB2B5B90);
  v18 = swift_allocObject();
  *(v18 + 32) = 0x676E616843736168;
  *(v18 + 16) = xmmword_1A7E54860;
  *(v18 + 40) = 0xEA00000000006465;
  v19 = MEMORY[0x1E69E6370];
  *(v18 + 48) = v4;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0x6E4974726F706572;
  v20 = MEMORY[0x1E69E6530];
  *(v18 + 88) = 0xEB00000000786564;
  *(v18 + 96) = v3;
  *(v18 + 120) = v20;
  *(v18 + 128) = 0x64657370616C65;
  *(v18 + 136) = 0xE700000000000000;
  v21 = MEMORY[0x1E69E63B0];
  *(v18 + 144) = v5;
  *(v18 + 168) = v21;
  *(v18 + 176) = 0x63656E6E6F437777;
  *(v18 + 184) = 0xEB00000000646574;
  *(v18 + 192) = v6;
  *(v18 + 216) = v19;
  *(v18 + 224) = 0x7463656C65537777;
  *(v18 + 232) = 0xEA00000000006465;
  *(v18 + 240) = v7;
  *(v18 + 264) = v19;
  *(v18 + 272) = 0x6E69626F72507777;
  *(v18 + 280) = 0xE900000000000067;
  *(v18 + 288) = v8;
  *(v18 + 312) = v19;
  strcpy((v18 + 320), "wwuPacketLoss");
  *(v18 + 334) = -4864;
  *(v18 + 336) = v10;
  *(v18 + 360) = v21;
  strcpy((v18 + 368), "wwdPacketLoss");
  *(v18 + 382) = -4864;
  *(v18 + 384) = v9;
  *(v18 + 408) = v21;
  *(v18 + 416) = 0x65726F63537777;
  *(v18 + 424) = 0xE700000000000000;
  *(v18 + 432) = v12;
  *(v18 + 456) = v21;
  strcpy((v18 + 464), "wwConfidence");
  *(v18 + 477) = 0;
  *(v18 + 478) = -5120;
  *(v18 + 480) = v11;
  *(v18 + 504) = v21;
  *(v18 + 512) = 0x63656E6E6F436377;
  *(v18 + 520) = 0xEB00000000646574;
  *(v18 + 552) = v19;
  *(v18 + 528) = v13;
  *(v18 + 560) = 0x7463656C65536377;
  *(v18 + 568) = 0xEA00000000006465;
  *(v18 + 600) = v19;
  *(v18 + 576) = v14;
  *(v18 + 608) = 0x6E69626F72506377;
  *(v18 + 616) = 0xE900000000000067;
  *(v18 + 648) = v19;
  *(v18 + 624) = v24;
  strcpy((v18 + 656), "wcuPacketLoss");
  *(v18 + 670) = -4864;
  *(v18 + 696) = v21;
  *(v18 + 672) = v16;
  strcpy((v18 + 704), "wcdPacketLoss");
  *(v18 + 718) = -4864;
  *(v18 + 744) = v21;
  *(v18 + 720) = v15;
  *(v18 + 752) = 0x65726F63536377;
  *(v18 + 760) = 0xE700000000000000;
  *(v18 + 792) = v21;
  *(v18 + 768) = v17;
  strcpy((v18 + 800), "wcConfidence");
  *(v18 + 813) = 0;
  *(v18 + 814) = -5120;
  *(v18 + 840) = v21;
  *(v18 + 816) = v25;
  *(v18 + 848) = 0x63656E6E6F437763;
  *(v18 + 856) = 0xEB00000000646574;
  *(v18 + 888) = v19;
  *(v18 + 864) = v26;
  *(v18 + 896) = 0x7463656C65537763;
  *(v18 + 904) = 0xEA00000000006465;
  *(v18 + 936) = v19;
  *(v18 + 912) = v27;
  *(v18 + 944) = 0x6E69626F72507763;
  *(v18 + 952) = 0xE900000000000067;
  *(v18 + 984) = v19;
  *(v18 + 960) = v28;
  strcpy((v18 + 992), "cwuPacketLoss");
  *(v18 + 1006) = -4864;
  *(v18 + 1032) = v21;
  *(v18 + 1008) = v29;
  strcpy((v18 + 1040), "cwdPacketLoss");
  *(v18 + 1054) = -4864;
  *(v18 + 1080) = v21;
  *(v18 + 1056) = v30;
  *(v18 + 1088) = 0x65726F63537763;
  *(v18 + 1096) = 0xE700000000000000;
  *(v18 + 1128) = v21;
  *(v18 + 1104) = v31;
  strcpy((v18 + 1136), "cwConfidence");
  *(v18 + 1149) = 0;
  *(v18 + 1150) = -5120;
  *(v18 + 1176) = v21;
  *(v18 + 1152) = v32;
  *(v18 + 1184) = 0x63656E6E6F436363;
  *(v18 + 1192) = 0xEB00000000646574;
  *(v18 + 1224) = v19;
  *(v18 + 1200) = v33;
  *(v18 + 1232) = 0x7463656C65536363;
  *(v18 + 1240) = 0xEA00000000006465;
  *(v18 + 1272) = v19;
  *(v18 + 1248) = v34;
  *(v18 + 1280) = 0x6E69626F72506363;
  *(v18 + 1288) = 0xE900000000000067;
  *(v18 + 1320) = v19;
  *(v18 + 1296) = v35;
  strcpy((v18 + 1328), "ccuPacketLoss");
  *(v18 + 1342) = -4864;
  *(v18 + 1368) = v21;
  *(v18 + 1344) = v36;
  strcpy((v18 + 1376), "ccdPacketLoss");
  *(v18 + 1390) = -4864;
  *(v18 + 1416) = v21;
  *(v18 + 1392) = v37;
  *(v18 + 1424) = 0x65726F63536363;
  *(v18 + 1432) = 0xE700000000000000;
  *(v18 + 1464) = v21;
  *(v18 + 1440) = v38;
  strcpy((v18 + 1472), "ccConfidence");
  *(v18 + 1485) = 0;
  *(v18 + 1486) = -5120;
  *(v18 + 1512) = v21;
  *(v18 + 1488) = v39;
  v22 = sub_1A7CE3C64(v18);
  swift_setDeallocating();
  sub_1A7CC7FFC(&qword_1EB2B51B8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  strcpy(a2, "linkSelection");
  *(a2 + 14) = -4864;
  *(a2 + 16) = v22;
  return result;
}

__n128 sub_1A7DEDEB0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1A7DEDEEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 184))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A7DEDF40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0u;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A7DEDFC0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A7DEE014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1A7DEE070(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 32);
  v4 = mach_continuous_time();
  if (qword_1EB2B3368 != -1)
  {
    swift_once();
  }

  v5 = *&qword_1EB2B3370 * v4;
  if (COERCE__INT64(fabs(*&qword_1EB2B3370 * v4)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v5 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v5;
  IDSLinkSelectionMetricTracker.collect(from:time:)(v2, v5, v13);
  os_unfair_lock_lock((v3 + 64));
  v7 = v13[9];
  *(v3 + 392) = v13[8];
  *(v3 + 408) = v7;
  *(v3 + 424) = v13[10];
  *(v3 + 440) = v14;
  v8 = v13[5];
  *(v3 + 328) = v13[4];
  *(v3 + 344) = v8;
  v9 = v13[7];
  *(v3 + 360) = v13[6];
  *(v3 + 376) = v9;
  v10 = v13[1];
  *(v3 + 264) = v13[0];
  *(v3 + 280) = v10;
  v11 = v13[3];
  *(v3 + 296) = v13[2];
  *(v3 + 312) = v11;
  os_unfair_lock_unlock((v3 + 64));
  os_unfair_lock_lock((v3 + 64));
  sub_1A7DEF158((v3 + 72), v6, v3, v2, &v12);

  os_unfair_lock_unlock((v3 + 64));
}

uint64_t sub_1A7DEE1D8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A7DEE200, 0, 0);
}

uint64_t sub_1A7DEE200()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1A7CC7FFC(&qword_1EB2B4C00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A7E418C0;
  v5 = *(v2 + 32);
  type metadata accessor for IDSLinkSelectionMetricTrackingTask();
  swift_allocObject();

  v6 = sub_1A7DF06A0(v1, v5, monotonicTimeInMicroseconds(), 0);

  *(v4 + 32) = v6;
  *(v4 + 40) = &protocol witness table for IDSLinkSelectionMetricTrackingTask;
  *v3 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_1A7DEE314()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DEE378(uint64_t a1)
{
  v2 = v1;
  v4 = *(sub_1A7DBA3CC() + 16);

  sub_1A7DEE438(v5, sub_1A7D9B12C, v2, v4);

  v6 = *(a1 + 40);

  sub_1A7DA0B44(v7, &unk_1A7E4E9D0, v2, v6);
}

void sub_1A7DEE438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock((a4 + 16));
  swift_unknownObjectWeakInit();
  v14[0] = a1;
  v14[2] = &off_1F1AB96D8;
  swift_unknownObjectWeakAssign();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13[0] = *(a4 + 24);
  *(a4 + 24) = 0x8000000000000000;
  sub_1A7DC48B0(a2, a3, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v14, isUniquelyReferenced_nonNull_native);
  sub_1A7DEE5B4(v14);
  *(a4 + 24) = v13[0];
  *(a4 + 40) = 1;
  os_unfair_lock_unlock((a4 + 16));
  os_unfair_lock_lock((a4 + 16));
  v9 = *(a4 + 48);
  v10 = *(a4 + 56);
  if (v9)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    v12 = sub_1A7D259CC;
  }

  else
  {
    v12 = 0;
  }

  sub_1A7B151B0(v9);
  os_unfair_lock_unlock((a4 + 16));
  if (v9)
  {
    v14[0] = a2;
    v14[1] = a3;
    v13[0] = a1;
    v13[1] = &off_1F1AB96D8;
    v12(v13, v14);
    sub_1A7B15088(v12);
  }
}

uint64_t sub_1A7DEE5B4(uint64_t a1)
{
  v2 = sub_1A7CC7FFC(&qword_1EB2B4B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IDSLinkSelectionMetricTracker.__allocating_init(reporter:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = sub_1A7CC9920(a1, v3);
  v6 = sub_1A7DEF768(v5, v1, v3, v4);
  sub_1A7B0CD6C(a1);
  return v6;
}

uint64_t IDSLinkSelectionMetricTracker.update(with:time:)(uint64_t a1, unint64_t a2)
{
  IDSLinkSelectionMetricTracker.collect(from:time:)(a1, a2, v12);
  os_unfair_lock_lock((v2 + 64));
  v5 = v12[9];
  *(v2 + 392) = v12[8];
  *(v2 + 408) = v5;
  *(v2 + 424) = v12[10];
  *(v2 + 440) = v13;
  v6 = v12[5];
  *(v2 + 328) = v12[4];
  *(v2 + 344) = v6;
  v7 = v12[7];
  *(v2 + 360) = v12[6];
  *(v2 + 376) = v7;
  v8 = v12[1];
  *(v2 + 264) = v12[0];
  *(v2 + 280) = v8;
  v9 = v12[3];
  *(v2 + 296) = v12[2];
  *(v2 + 312) = v9;
  os_unfair_lock_unlock((v2 + 64));
  os_unfair_lock_lock((v2 + 64));
  sub_1A7DEF158((v2 + 72), a2, v2, a1, &v11);
  os_unfair_lock_unlock((v2 + 64));
  return v11;
}

uint64_t sub_1A7DEE73C()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B7E10);
  sub_1A7B0CB00(v0, qword_1EB2B7E10);
  return sub_1A7E22050();
}

double sub_1A7DEE7C0@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2B4890 != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v1 = word_1EB2B7DE8;
  v2 = HIBYTE(word_1EB2B7DE8);
  v3 = byte_1EB2B7DEA;
  result = *&qword_1EB2B7DF0;
  v5 = unk_1EB2B7DF8;
  v6 = qword_1EB2B7E00;
  v7 = unk_1EB2B7E08;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v1;
  *(a1 + 33) = v2;
  *(a1 + 34) = v3;
  *(a1 + 40) = result;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = v1;
  *(a1 + 73) = v2;
  *(a1 + 74) = v3;
  *(a1 + 80) = result;
  *(a1 + 88) = v5;
  *(a1 + 96) = v6;
  *(a1 + 104) = v7;
  *(a1 + 112) = v1;
  *(a1 + 113) = v2;
  *(a1 + 114) = v3;
  *(a1 + 120) = result;
  *(a1 + 128) = v5;
  *(a1 + 136) = v6;
  *(a1 + 144) = v7;
  *(a1 + 152) = v1;
  *(a1 + 153) = v2;
  *(a1 + 154) = v3;
  *(a1 + 160) = result;
  *(a1 + 168) = v5;
  *(a1 + 176) = v6;
  *(a1 + 184) = v7;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = *&v17[3];
  *(a1 + 201) = *v17;
  *(a1 + 208) = 0;
  *(a1 + 216) = v1;
  *(a1 + 217) = v2;
  *(a1 + 218) = v3;
  *(a1 + 219) = v15;
  *(a1 + 223) = v16;
  *(a1 + 224) = result;
  *(a1 + 232) = v5;
  *(a1 + 240) = v6;
  *(a1 + 248) = v7;
  *(a1 + 256) = v1;
  *(a1 + 257) = v2;
  *(a1 + 258) = v3;
  *(a1 + 263) = v14;
  *(a1 + 259) = v13;
  *(a1 + 264) = result;
  *(a1 + 272) = v5;
  *(a1 + 280) = v6;
  *(a1 + 288) = v7;
  *(a1 + 296) = v1;
  *(a1 + 297) = v2;
  *(a1 + 298) = v3;
  *(a1 + 299) = v11;
  *(a1 + 303) = v12;
  *(a1 + 304) = result;
  *(a1 + 312) = v5;
  *(a1 + 320) = v6;
  *(a1 + 328) = v7;
  *(a1 + 336) = v1;
  *(a1 + 337) = v2;
  *(a1 + 338) = v3;
  *(a1 + 339) = v9;
  *(a1 + 343) = v10;
  *(a1 + 344) = result;
  *(a1 + 352) = v5;
  *(a1 + 360) = v6;
  *(a1 + 368) = v7;
  return result;
}

uint64_t IDSLinkSelectionMetricTracker.init(reporter:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = sub_1A7CC9920(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1A7DEF6BC(v8, v1, v3, v4);
  sub_1A7B0CD6C(a1);
  return v10;
}

void sub_1A7DEEA38(_WORD *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  LOWORD(v44) = *a1;
  v6 = sub_1A7DEF9B4(&v44, a2);
  if (!v6)
  {
    if (qword_1EB2B4890 != -1)
    {
      swift_once();
    }

    v24 = HIBYTE(word_1EB2B7DE8);
    v25 = byte_1EB2B7DEA;
    v26 = *&qword_1EB2B7DF0;
    v27 = unk_1EB2B7DF8;
    v28 = *&qword_1EB2B7E00;
    *a4 = word_1EB2B7DE8;
    *(a4 + 1) = v24;
    *(a4 + 2) = v25;
    goto LABEL_40;
  }

  v7 = v6;
  os_unfair_lock_lock(v6 + 10);
  sub_1A7CCBD20(&v7[12], &v44);
  os_unfair_lock_unlock(v7 + 10);
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  type metadata accessor for IDSSemiActiveLinkQualityMonitor();
  if ((swift_dynamicCast() & 1) == 0 || (v8 = v50) == 0)
  {
    v20 = 0.0;
    goto LABEL_16;
  }

  os_unfair_lock_lock((v50 + 40));
  v9 = *(v8 + 176);
  v10 = *(v8 + 184);
  v11 = *(v8 + 208);
  v45 = *(v8 + 192);
  v46 = v11;
  v12 = *(v8 + 232);
  v47 = *(v8 + 224);
  v42 = a3;
  v13 = *(v8 + 240);
  sub_1A7D641E0(v9);
  *&v44 = v9;
  *(&v44 + 1) = v10;
  v48 = v12;
  v49 = v13;
  v14 = sub_1A7D5E3B0();
  v15 = v42 - v14;
  if (v42 < v14)
  {
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v16 = v12;
  if (v15)
  {
    v16 = v16 / (v15 / 1000000.0);
  }

  os_unfair_lock_unlock((v8 + 40));
  v17 = v16 * 30.0;
  if (COERCE__INT64(fabs(v16 * 30.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_54;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v17 <= 10)
  {
    v18 = 10;
  }

  else
  {
    v18 = v17;
  }

  os_unfair_lock_lock((v8 + 40));
  v19 = IDSLinkPacketBitfield.packetsReceived(outOfMostRecent:)(v18);
  os_unfair_lock_unlock((v8 + 40));
  if (v19.outOf < 1)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = 1.0 - v19._0 / v19.outOf;
  }

  os_unfair_lock_lock((v8 + 40));
  v31 = *(v8 + 104);
  v32 = *(v8 + 112);
  v33 = *(v8 + 136);
  v45 = *(v8 + 120);
  v46 = v33;
  v34 = *(v8 + 160);
  v47 = *(v8 + 152);
  v35 = *(v8 + 168);
  sub_1A7D641E0(v31);
  *&v44 = v31;
  *(&v44 + 1) = v32;
  v48 = v34;
  v49 = v35;
  v36 = sub_1A7D5E3B0();
  v37 = v42 - v36;
  if (v42 < v36)
  {
    goto LABEL_57;
  }

  v38 = v34;
  if (v37)
  {
    v38 = v38 / (v37 / 1000000.0);
  }

  os_unfair_lock_unlock((v8 + 40));
  v39 = v38 * 30.0;
  if (COERCE__INT64(fabs(v38 * 30.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v39 < 9.22337204e18)
  {
    if (v39 <= 10)
    {
      v40 = 10;
    }

    else
    {
      v40 = v39;
    }

    os_unfair_lock_lock((v8 + 40));
    v41 = IDSLinkPacketBitfield.packetsReceived(outOfMostRecent:)(v40);
    os_unfair_lock_unlock((v8 + 40));

    if (v41.outOf >= 1)
    {
      v21 = 1.0 - v41._0 / v41.outOf;
LABEL_17:
      os_unfair_lock_lock(v7 + 10);
      sub_1A7CCBC80(&v7[12], &v44);
      os_unfair_lock_unlock(v7 + 10);
      sub_1A7CC7FFC(&qword_1EB2B4A88);
      if (swift_dynamicCast())
      {
        if (*(&v51 + 1))
        {
          sub_1A7B14FF0(&v50, &v44);
          v22 = *(&v45 + 1);
          v23 = v46;
          sub_1A7CC9878(&v44, *(&v45 + 1));
          (*(v23 + 8))(&v50, v7, v22, v23);
          v43 = v50;
          sub_1A7B0CD6C(&v44);
          goto LABEL_25;
        }
      }

      else
      {
        v52 = 0;
        v50 = 0u;
        v51 = 0u;
      }

      sub_1A7CC9970(&v50, &qword_1EB2B4A90);
      v43 = 0u;
LABEL_25:
      v29 = sub_1A7D2B3E4();
      os_unfair_lock_lock(v7 + 10);
      sub_1A7CCBDBC(&v7[12], &v44);
      os_unfair_lock_unlock(v7 + 10);
      if (swift_dynamicCast() & 1) != 0 && v50 != 2 && (v50)
      {
        v30 = 1;
      }

      else
      {
        v30 = sub_1A7D2B3E4();
      }

      v27 = 0.0;
      if ((*&v21 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v21;
      }

      if ((~*&v21 & 0x7FF0000000000000) != 0)
      {
        v26 = v21;
      }

      if ((*&v20 & 0xFFFFFFFFFFFFFLL) == 0)
      {
        v27 = v20;
      }

      if ((~*&v20 & 0x7FF0000000000000) != 0)
      {
        v27 = v20;
      }

      *a4 = 1;
      *(a4 + 1) = v29 & 1;
      *(a4 + 2) = v30 & 1;
      v28 = v43;
LABEL_40:
      *(a4 + 8) = v26;
      *(a4 + 16) = v27;
      *(a4 + 24) = v28;
      return;
    }

LABEL_16:
    v21 = 0.0;
    goto LABEL_17;
  }

LABEL_60:
  __break(1u);
}

__n128 IDSLinkSelectionMetricTracker.collect(from:time:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = 257;
  sub_1A7DEEA38(&v26, a1, a2, &v27);
  v23 = v28;
  v24 = v27;
  v22 = v29;
  v25 = v30;
  v21 = v31;
  v26 = 1;
  sub_1A7DEEA38(&v26, a1, a2, &v27);
  v6 = v27;
  v7 = v28;
  v8 = v29;
  v19 = v31;
  v20 = v30;
  v26 = 256;
  sub_1A7DEEA38(&v26, a1, a2, &v27);
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v17 = v31;
  v18 = v30;
  v26 = 0;
  sub_1A7DEEA38(&v26, a1, a2, &v27);
  v12 = v27;
  v13 = v28;
  v14 = v29;
  result = v30;
  v16 = v31;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = v24;
  *(a3 + 25) = v23;
  *(a3 + 26) = v22;
  *(a3 + 32) = v25;
  *(a3 + 48) = v21;
  *(a3 + 64) = v6;
  *(a3 + 65) = v7;
  *(a3 + 66) = v8;
  *(a3 + 88) = v19;
  *(a3 + 72) = v20;
  *(a3 + 104) = v9;
  *(a3 + 105) = v10;
  *(a3 + 106) = v11;
  *(a3 + 112) = v18;
  *(a3 + 128) = v17;
  *(a3 + 144) = v12;
  *(a3 + 145) = v13;
  *(a3 + 146) = v14;
  *(a3 + 152) = result;
  *(a3 + 168) = v16;
  return result;
}

uint64_t IDSLinkSelectionMetricTracker.reportIfNeeded(linkEngine:time:)(uint64_t a1, unint64_t a2)
{
  os_unfair_lock_lock((v2 + 64));
  sub_1A7DEF158((v2 + 72), a2, v2, a1, &v6);
  os_unfair_lock_unlock((v2 + 64));
  return v6;
}

uint64_t sub_1A7DEF158@<X0>(unint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 10);
  v90 = *(a1 + 9);
  v91 = v8;
  v9 = *(a1 + 10);
  v92 = *(a1 + 11);
  v10 = *(a1 + 4);
  v11 = *(a1 + 6);
  v86 = *(a1 + 5);
  v87 = v11;
  v12 = *(a1 + 6);
  v13 = *(a1 + 8);
  v88 = *(a1 + 7);
  v89 = v13;
  v14 = *(a1 + 2);
  v15 = v14;
  v82 = *(a1 + 1);
  v83 = v14;
  v16 = *(a1 + 4);
  v17 = *(a1 + 3);
  v84 = v17;
  v85 = v16;
  v18 = *(a1 + 21);
  v19 = *(a1 + 19);
  v78 = *(a1 + 20);
  v79 = v18;
  v20 = *(a1 + 21);
  v80 = *(a1 + 22);
  v21 = *(a1 + 17);
  v22 = *(a1 + 15);
  v74 = *(a1 + 16);
  v75 = v21;
  v23 = *(a1 + 17);
  v24 = *(a1 + 19);
  v76 = *(a1 + 18);
  v77 = v24;
  v25 = *(a1 + 13);
  v26 = *(a1 + 11);
  v70 = *(a1 + 12);
  v71 = v25;
  v27 = *(a1 + 13);
  v28 = *(a1 + 15);
  v72 = *(a1 + 14);
  v73 = v28;
  v66 = v78;
  v67 = v20;
  v68 = *(a1 + 22);
  v62 = v74;
  v63 = v23;
  v64 = v76;
  v65 = v19;
  *v59 = v70;
  *&v59[16] = v27;
  v60 = v72;
  v61 = v22;
  *&from.cellWifi.downlinkPacketLoss = v7;
  *&from.cellWifi.confidence = v90;
  *&from.cellCell.uplinkPacketLoss = v9;
  *&from.cellCell.score = v26;
  *&from.wifiWifi.confidence = v10;
  *&from.wifiCell.uplinkPacketLoss = v86;
  *&from.wifiCell.score = v12;
  *&from.cellWifi.connected = v88;
  *&from.hasChanged = v82;
  *&from.wifiWifi.connected = v15;
  v30 = (a1 + 1);
  v29 = a1[1];
  v81 = a1[46];
  v31 = *a1;
  if (a2 >= *a1)
  {
    v32 = a2 - v31;
  }

  else
  {
    v32 = 0;
  }

  v69 = a1[46];
  from.reportIndex = v29;
  *&from.wifiWifi.downlinkPacketLoss = v17;
  result = IDSLinkSelectionMetric.hasChangedNonPacketLossState(from:)(&from);
  if ((result & 1) == 0 && v32 <= 0x1C9C37F)
  {
    v34 = 30000000 - v32;
    v35 = a5;
    goto LABEL_15;
  }

  if (v31)
  {
    v36 = v32 / 1000000.0;
  }

  else
  {
    v36 = 0.0;
  }

  *&v71 = v36;
  if (__OFADD__(v29, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  *&v70 = v29 + 1;
  v66 = v78;
  v67 = v79;
  v68 = v80;
  v62 = v74;
  v63 = v75;
  v64 = v76;
  v65 = v77;
  *v59 = v70;
  *&v59[16] = v71;
  v60 = v72;
  v61 = v73;
  *&from.cellWifi.downlinkPacketLoss = v89;
  *&from.cellWifi.confidence = v90;
  *&from.cellCell.uplinkPacketLoss = v91;
  *&from.cellCell.score = v92;
  *&from.wifiWifi.confidence = v85;
  *&from.wifiCell.uplinkPacketLoss = v86;
  *&from.wifiCell.score = v87;
  *&from.cellWifi.connected = v88;
  *&from.hasChanged = v82;
  *&from.wifiWifi.connected = v83;
  v69 = v81;
  from.reportIndex = v29;
  *&from.wifiWifi.downlinkPacketLoss = v84;
  BYTE8(v70) = IDSLinkSelectionMetric.hasChangedNonPacketLossState(from:)(&from);
  if (qword_1EB2B4898 != -1)
  {
LABEL_17:
    swift_once();
  }

  v37 = sub_1A7E22060();
  sub_1A7B0CB00(v37, qword_1EB2B7E10);

  v38 = sub_1A7E22040();
  v39 = sub_1A7E228F0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    from.reportIndex = v54;
    *v40 = 136315394;
    os_unfair_lock_lock((a4 + 120));
    v41 = *(a4 + 128);
    v42 = *(a4 + 136);

    os_unfair_lock_unlock((a4 + 120));
    v43 = sub_1A7B0CB38(v41, v42, &from.reportIndex);

    *(v40 + 4) = v43;
    *(v40 + 12) = 2080;
    swift_beginAccess();
    v66 = v78;
    v67 = v79;
    v68 = v80;
    v69 = v81;
    v62 = v74;
    v63 = v75;
    v64 = v76;
    v65 = v77;
    *v59 = v70;
    *&v59[16] = v71;
    v60 = v72;
    v61 = v73;
    v44 = IDSLinkSelectionMetric.description.getter();
    v46 = sub_1A7B0CB38(v44, v45, &from.reportIndex);

    *(v40 + 14) = v46;
    _os_log_impl(&dword_1A7AD9000, v38, v39, "Reporting link selection metric for LinkEngine %s: %s", v40, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC5654B0](v54, -1, -1);
    MEMORY[0x1AC5654B0](v40, -1, -1);
  }

  v35 = a5;
  v47 = a3[5];
  v48 = a3[6];
  sub_1A7CC9878(a3 + 2, v47);
  swift_beginAccess();
  v66 = v78;
  v67 = v79;
  v68 = v80;
  v69 = v81;
  v62 = v74;
  v63 = v75;
  v64 = v76;
  v65 = v77;
  *v59 = v70;
  *&v59[16] = v71;
  v60 = v72;
  v61 = v73;
  static IDSDictionaryMetric.linkSelection(_:)(v59, &from);
  *v59 = from.reportIndex;
  *&v59[8] = *&from.hasChanged;
  (*(v48 + 8))(v59, v47, v48);

  *a1 = a2;
  v49 = v79;
  *(v30 + 8) = v78;
  *(v30 + 9) = v49;
  *(v30 + 10) = v80;
  v30[22] = v81;
  v50 = v75;
  *(v30 + 4) = v74;
  *(v30 + 5) = v50;
  v51 = v77;
  *(v30 + 6) = v76;
  *(v30 + 7) = v51;
  v52 = v71;
  *v30 = v70;
  *(v30 + 1) = v52;
  v53 = v73;
  *(v30 + 2) = v72;
  *(v30 + 3) = v53;
  v34 = 30000000;
LABEL_15:
  *v35 = v34;
  return result;
}

uint64_t IDSLinkSelectionMetricTracker.__deallocating_deinit()
{
  sub_1A7B0CD6C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DEF6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  v7 = sub_1A7CC98BC(&v9);
  (*(*(a3 - 8) + 32))(v7, a1, a3);
  *(a2 + 56) = 30000000;
  sub_1A7DEE7C0(__src);
  *(a2 + 64) = 0;
  memcpy((a2 + 72), __src, 0x178uLL);
  sub_1A7B14FF0(&v9, a2 + 16);
  return a2;
}

uint64_t sub_1A7DEF768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  return sub_1A7DEF6BC(v9, v10, a3, a4);
}

uint64_t sub_1A7DEF8AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 376))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1A7DEF900(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 376) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 376) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1A7DEF9B4(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_1A7CC7FFC(&qword_1EB2B4A80);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v43 - v6;
  v47 = type metadata accessor for LinkState(0);
  MEMORY[0x1EEE9AC00](v47, v8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v46 = &v43 - v12;
  v13 = *a1;
  v43 = a1[1];
  v44 = v13;
  os_unfair_lock_lock((a2 + 16));
  v14 = *(a2 + 24);

  os_unfair_lock_unlock((a2 + 16));
  v15 = 0;
  v17 = v14 + 64;
  v16 = *(v14 + 64);
  v48 = v14;
  v18 = 1 << *(v14 + 32);
  v54 = MEMORY[0x1E69E7CC0];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  while (v20)
  {
LABEL_10:
    v23 = *(*(v48 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v20)))));

    os_unfair_lock_lock((v23 + 40));
    v24 = type metadata accessor for LinkStateComponent(0);
    v25 = v24;
    v26 = *(v23 + 48);
    if (*(v26 + 16) && (v27 = sub_1A7CD0DFC(v24), (v28 & 1) != 0))
    {
      sub_1A7B0CD10(*(v26 + 56) + 32 * v27, &v52);
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    os_unfair_lock_unlock((v23 + 40));
    sub_1A7CC7FFC(&qword_1EB2B66D0);
    v29 = swift_dynamicCast();
    v30 = *(v25 - 8);
    (*(v30 + 56))(v7, v29 ^ 1u, 1, v25);
    if ((*(v30 + 48))(v7, 1, v25))
    {
      sub_1A7CC9970(v7, &qword_1EB2B4A80);
      v14 = v46;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v31 = v45;
      sub_1A7CD0EC4(v7, v45);
      sub_1A7CC9970(v7, &qword_1EB2B4A80);
      v14 = v46;
      sub_1A7CD0F28(v31, v46);
    }

    v20 &= v20 - 1;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = sub_1A7E22CF0();
      (*(*(v32 - 8) + 8))(v14, v32);
      os_unfair_lock_lock((v23 + 40));
      v33 = *(v23 + 48);
      if (*(v33 + 16) && (v34 = sub_1A7CD0DFC(&type metadata for LinkDefinitionComponent), (v35 & 1) != 0))
      {
        sub_1A7B0CD10(*(v33 + 56) + 32 * v34, &v52);
      }

      else
      {
        v52 = 0u;
        v53 = 0u;
      }

      os_unfair_lock_unlock((v23 + 40));
      if ((swift_dynamicCast() & 1) == 0)
      {
        v49 = 1uLL;
        v50 = 0;
LABEL_26:
        sub_1A7CDBC48(1);
        v14 = 0;
        goto LABEL_27;
      }

      v14 = *(&v49 + 1);
      v36 = v49;
      if (v49 == 1)
      {
        goto LABEL_26;
      }

      sub_1A7CDB7B8(v49);
      sub_1A7CDBC48(v36);
      if (v36)
      {

        sub_1A7CDB84C(v36);
        if (*(v14 + 16) && (v37 = sub_1A7CD0DFC(&type metadata for LinkEndpointIDSRAT), (v38 & 1) != 0))
        {
          sub_1A7B0CD10(*(v14 + 56) + 32 * v37, &v52);

          sub_1A7B1503C(&v52, &v49);
          sub_1A7CC7FFC(&qword_1EB2B5040);
          if ((swift_dynamicCast() & 1) != 0 && (v51 > 0xA || ((1 << v51) & 0x601) == 0))
          {
            if (v44)
            {
              goto LABEL_50;
            }

            goto LABEL_38;
          }
        }

        else
        {
        }

        if (!v44)
        {
          goto LABEL_50;
        }

LABEL_38:
        os_unfair_lock_lock((v23 + 40));
        v14 = *(v23 + 48);
        if (*(v14 + 16) && (v39 = sub_1A7CD0DFC(&type metadata for IDSObservedRemoteRAT), (v40 & 1) != 0))
        {
          sub_1A7B0CD10(*(v14 + 56) + 32 * v39, &v52);
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        os_unfair_lock_unlock((v23 + 40));
        if (swift_dynamicCast() & 1) == 0 || (BYTE4(v49))
        {
          goto LABEL_50;
        }

        if (v49 <= 0xA && ((1 << v49) & 0x601) != 0)
        {
          if (v43)
          {
            goto LABEL_48;
          }

LABEL_50:
        }

        else
        {
          if (v43)
          {
            goto LABEL_50;
          }

LABEL_48:
          v14 = &v54;
          sub_1A7E22BF0();
          sub_1A7E22C40();
          sub_1A7E22C50();
          sub_1A7E22C00();
        }
      }

      else
      {
LABEL_27:

        sub_1A7CDB84C(0);
      }
    }

    else
    {

      sub_1A7CD0E68(v14);
    }
  }

  while (1)
  {
    v22 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_59;
    }

    if (v22 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v22);
    ++v15;
    if (v20)
    {
      v15 = v22;
      goto LABEL_10;
    }
  }

  v14 = v54;
  if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x4000000000000000) == 0)
  {
    if (*(v54 + 16))
    {
      goto LABEL_54;
    }

LABEL_60:

    return 0;
  }

LABEL_59:
  result = sub_1A7E22DA0();
  if (!result)
  {
    goto LABEL_60;
  }

LABEL_54:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v42 = MEMORY[0x1AC562480](0, v14);
    goto LABEL_57;
  }

  if (*(v14 + 16))
  {
    v42 = *(v14 + 32);

LABEL_57:

    return v42;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A7DF0058()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B7E30);
  sub_1A7B0CB00(v0, qword_1EB2B7E30);
  return sub_1A7E22050();
}

uint64_t IDSLinkSelectionMetricTrackingTask.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1A7DF0114(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A7DF0134, 0, 0);
}

uint64_t sub_1A7DF0134()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A7CE88C8;
    v3 = v0[5];

    return sub_1A7DF022C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7DF022C(uint64_t a1)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A7DF024C, 0, 0);
}

uint64_t sub_1A7DF024C()
{
  v19 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = (*(v2 + 48))();
  v4 = *(v2 + 64);
  IDSLinkSelectionMetricTracker.collect(from:time:)(v1, v3, v0 + 16);
  os_unfair_lock_lock((v4 + 64));
  v5 = *(v0 + 16);
  v6 = *(v0 + 32);
  v7 = *(v0 + 64);
  *(v4 + 296) = *(v0 + 48);
  *(v4 + 312) = v7;
  *(v4 + 264) = v5;
  *(v4 + 280) = v6;
  v8 = *(v0 + 80);
  v9 = *(v0 + 96);
  v10 = *(v0 + 128);
  *(v4 + 360) = *(v0 + 112);
  *(v4 + 376) = v10;
  *(v4 + 328) = v8;
  *(v4 + 344) = v9;
  v11 = *(v0 + 144);
  v12 = *(v0 + 160);
  v13 = *(v0 + 176);
  *(v4 + 440) = *(v0 + 192);
  *(v4 + 408) = v12;
  *(v4 + 424) = v13;
  *(v4 + 392) = v11;
  os_unfair_lock_unlock((v4 + 64));
  os_unfair_lock_lock((v4 + 64));
  sub_1A7DEF158((v4 + 72), v3, v4, v1, &v18);
  os_unfair_lock_unlock((v4 + 64));
  v14 = 1000000000000 * v18;
  v15 = (v18 * 0xE8D4A51000uLL) >> 64;
  v16 = *(v0 + 8);

  return v16(v14, v15);
}

uint64_t sub_1A7DF03AC()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  v0[3] = v2;

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1A7D00D8C;

    return IDSLinksQualityRepeatingAsyncTask.stop()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t IDSLinkSelectionMetricTrackingTask.deinit()
{

  sub_1A7DF04CC(v0 + 40);

  return v0;
}

uint64_t IDSLinkSelectionMetricTrackingTask.__deallocating_deinit()
{

  sub_1A7DF04CC(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1A7DF056C()
{
  v1 = v0[2];
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 40);
  v0[3] = v2;

  os_unfair_lock_unlock((v1 + 32));
  if (v2)
  {
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1A7D013D8;

    return IDSLinksQualityRepeatingAsyncTask.stop()();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A7DF06A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v61 = a1;
  v9 = sub_1A7CC7FFC(&unk_1EB2B61C0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v62 = &v48 - v11;
  v63 = sub_1A7E226D0();
  v57 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A7E22060();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v59 = v18;
  v60 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v48 - v21;
  *(v5 + 32) = 0;
  v23 = (v5 + 32);
  *(v5 + 16) = 0xD00000000000001ALL;
  *(v5 + 24) = 0x80000001A7EB1CA0;
  *(v5 + 40) = 0;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 64) = a2;

  os_unfair_lock_lock((v5 + 32));

  v24 = *(v5 + 24);
  v53 = *(v5 + 16);
  v54 = v24;
  v25 = qword_1EB2B48A0;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_1A7B0CB00(v15, qword_1EB2B7E30);
  v56 = v16;
  v27 = *(v16 + 16);
  v27(v22, v26, v15);
  v50 = v27;
  v55 = swift_allocObject();
  swift_weakInit();

  sub_1A7E226B0();
  type metadata accessor for IDSLinksQualityRepeatingAsyncTask();
  v28 = swift_allocObject();
  v29 = v14;
  v52 = v14;
  v58 = v5;
  v30 = v28 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  v31 = swift_weakInit();
  v64 = 0;
  *v30 = 0;
  *(v30 + 16) = 0;
  *(v30 + 8) = 0;
  sub_1A7CEB2D0(v31, v30 + 8);
  v32 = v22;
  v51 = v22;
  v49 = v15;
  v27((v28 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_logger), v22, v15);
  v33 = (v28 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_name);
  v34 = v54;
  *v33 = v53;
  v33[1] = v34;
  v35 = v28 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state;
  os_unfair_lock_lock((v28 + OBJC_IVAR____TtC13IDSFoundation33IDSLinksQualityRepeatingAsyncTask_state));
  swift_weakAssign();
  v36 = v57;
  v38 = v62;
  v37 = v63;
  (*(v57 + 16))(v62, v29, v63);
  (*(v36 + 56))(v38, 0, 1, v37);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = v60;
  v50(v60, v32, v15);
  v41 = v56;
  v42 = (*(v56 + 80) + 56) & ~*(v56 + 80);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v39;
  v43[5] = &unk_1A7E54B08;
  v43[6] = v55;
  v44 = v43 + v42;
  v45 = v49;
  (*(v41 + 32))(v44, v40, v49);

  *(v35 + 16) = sub_1A7D3F5DC(0, 0, v62, &unk_1A7E44050, v43);

  os_unfair_lock_unlock(v35);

  (*(v36 + 8))(v52, v63);
  (*(v41 + 8))(v51, v45);

  v46 = v58;
  *(v58 + 40) = v28;
  os_unfair_lock_unlock(v23);
  return v46;
}

uint64_t sub_1A7DF0BBC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A7CEB1BC;

  return sub_1A7DF0114(a1, v1);
}

uint64_t LinkEngineLink.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  os_unfair_lock_lock((v3 + 40));
  sub_1A7D90D6C((v3 + 48), a1, &v9);
  os_unfair_lock_unlock((v3 + 40));
  sub_1A7CC7FFC(&qword_1EB2B66D0);
  v7 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v7 ^ 1u, 1, a2);
}

uint64_t LinkEngineLink.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A7DF198C(a1, a2, a3);
  v4 = sub_1A7E229A0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t LinkEngineLink.engine.getter()
{
  sub_1A7DCF24C(v0 + 32, v3);
  Strong = swift_weakLoadStrong();
  sub_1A7DCF2A8(v3);
  return Strong;
}

uint64_t sub_1A7DF0DD8()
{
  v0 = sub_1A7E22060();
  sub_1A7CC7A10(v0, qword_1EB2B32E0);
  sub_1A7B0CB00(v0, qword_1EB2B32E0);
  return sub_1A7E22050();
}

uint64_t LinkEngineLink.uniqueName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LinkEngineLink.deinit()
{
  v1 = v0;
  if (qword_1EB2B32D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A7E22060();
  sub_1A7B0CB00(v2, qword_1EB2B32E0);

  v3 = sub_1A7E22040();
  v4 = sub_1A7E228F0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1A7B0CB38(*(v1 + 16), *(v1 + 24), &v8);
    _os_log_impl(&dword_1A7AD9000, v3, v4, "LinkEngineLink.deinit: %s", v5, 0xCu);
    sub_1A7B0CD6C(v6);
    MEMORY[0x1AC5654B0](v6, -1, -1);
    MEMORY[0x1AC5654B0](v5, -1, -1);
  }

  sub_1A7DCF2A8(v1 + 32);
  sub_1A7DF19F8(v1 + 48);
  return v1;
}

uint64_t LinkEngineLink.__deallocating_deinit()
{
  LinkEngineLink.deinit();

  return swift_deallocClassInstance();
}

uint64_t LinkEngineLink.components.getter()
{
  os_unfair_lock_lock((v0 + 40));
  v1 = *(v0 + 48);

  os_unfair_lock_unlock((v0 + 40));
  return v1;
}

void sub_1A7DF105C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  os_unfair_lock_lock((v3 + 40));

  *(v3 + 48) = v2;

  os_unfair_lock_unlock((v3 + 40));
}

void LinkEngineLink.components.setter(uint64_t a1)
{
  os_unfair_lock_lock((v1 + 40));

  *(v1 + 48) = a1;

  os_unfair_lock_unlock((v1 + 40));
}

void (*LinkEngineLink.components.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  os_unfair_lock_lock((v1 + 40));
  v3 = *(v1 + 48);

  os_unfair_lock_unlock((v1 + 40));
  *a1 = v3;
  return sub_1A7DF1160;
}

void sub_1A7DF1160(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {

    os_unfair_lock_lock((v3 + 40));

    *(v3 + 48) = v2;
    os_unfair_lock_unlock((v3 + 40));
  }

  else
  {
    os_unfair_lock_lock((v3 + 40));

    *(v3 + 48) = v2;

    os_unfair_lock_unlock((v3 + 40));
  }
}

_OWORD *sub_1A7DF11F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1A7E229A0();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  (*(v8 + 16))(&v16 - v11, a3, v7, v10);
  v13 = *(a4 - 8);
  if ((*(v13 + 48))(v12, 1, a4) == 1)
  {
    (*(v8 + 8))(v12, v7);
    v16 = 0u;
    v17 = 0u;
  }

  else
  {
    *(&v17 + 1) = a4;
    v14 = sub_1A7CC98BC(&v16);
    (*(v13 + 32))(v14, v12, a4);
  }

  return sub_1A7CC8D74(&v16, a2);
}

void (*LinkEngineLink.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = sub_1A7E229A0();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[6] = v13;
  LinkEngineLink.subscript.getter(a2, a3, v13);
  return sub_1A7DF14A8;
}

void sub_1A7DF14A8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_1A7DF198C(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_1A7DF198C((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1A7DF15A0()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 48);

  os_unfair_lock_unlock((v1 + 40));
  return v2;
}

void sub_1A7DF15E0(uint64_t a1)
{
  v3 = *v1;
  os_unfair_lock_lock((v3 + 40));

  *(v3 + 48) = a1;

  os_unfair_lock_unlock((v3 + 40));
}

uint64_t (*sub_1A7DF162C(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = LinkEngineLink.components.modify(v2);
  return sub_1A7D9177C;
}

uint64_t sub_1A7DF16C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A7DF198C(a1, a2, a3);
  v4 = sub_1A7E229A0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}