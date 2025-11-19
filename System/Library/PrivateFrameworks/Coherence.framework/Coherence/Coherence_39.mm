uint64_t sub_1AE1A0050(void *a1)
{
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];
  swift_beginAccess();
  v5 = a1[3];
  v6 = a1[4];

  if (sub_1ADF637A8(v4, v6))
  {
    goto LABEL_2;
  }

  v8 = sub_1ADF637A8(v3, v5);

  if (v8)
  {
    v7 = 1;
    return v7 & 1;
  }

  swift_beginAccess();
  v10 = v1[5];
  v11 = v1[6];
  swift_beginAccess();
  v12 = a1[5];
  v13 = a1[6];

  if (sub_1ADF637A8(v11, v13))
  {
LABEL_2:
    v7 = 1;
  }

  else
  {
    v7 = sub_1ADF637A8(v10, v12);
  }

  return v7 & 1;
}

uint64_t sub_1AE1A01C8(void *a1)
{
  if (v1 == a1)
  {
    v3 = 0;
  }

  else if (v1[7] != a1[7] && ((swift_beginAccess(), *(v1[4] + 16)) || (swift_beginAccess(), *(v1[6] + 16)) || (swift_beginAccess(), *(a1[4] + 16)) || (swift_beginAccess(), *(a1[6] + 16))))
  {
    sub_1AE1A02DC();
    v4 = sub_1AE1A02DC();
    v3 = sub_1AE1A0050(v4);
  }

  else
  {
    v3 = sub_1AE1A0050(a1);
  }

  return v3 & 1;
}

uint64_t sub_1AE1A02DC()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  if (*(v0[4] + 16) || (swift_beginAccess(), *(v0[6] + 16)))
  {
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    v3 = *(qword_1ED96F2F8 + 40);
    sub_1AE23D6AC();
    v4 = swift_allocObject();

    sub_1AE19E814(v5);
    swift_beginAccess();
    sub_1ADDF8898(v7, v8, v9);
    swift_endAccess();
    swift_beginAccess();
    sub_1ADDF8898(v7, v8, v9);
    swift_endAccess();

    *(v4 + 56) = v7;
    return v4;
  }

  else
  {
  }

  return v1;
}

uint64_t sub_1AE1A0490(void *a1)
{
  swift_beginAccess();
  v18 = a1[3];
  v19 = a1[4];
  swift_beginAccess();
  v3 = v1[3];
  v4 = v1[4];

  sub_1ADE00714(v5);
  sub_1ADE00714(v3);

  swift_beginAccess();
  v16 = a1[5];
  v17 = a1[6];
  swift_beginAccess();
  v7 = v1[5];
  v6 = v1[6];

  sub_1ADE00714(v8);
  sub_1ADE00714(v7);

  v9 = sub_1ADF684B4(v18);
  v10 = sub_1ADF684B4(v19);

  v12 = v9 + v10;
  if (__OFADD__(v9, v10))
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = sub_1ADF684B4(v16);
  v14 = sub_1ADF684B4(v17);

  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1A0650(void *a1)
{
  if (v1 == a1)
  {
    return 0;
  }

  if (v1[7] == a1[7])
  {
    return sub_1AE1A0490(v1);
  }

  swift_beginAccess();
  if (!*(v1[4] + 16))
  {
    swift_beginAccess();
    if (!*(v1[6] + 16))
    {
      swift_beginAccess();
      if (!*(a1[4] + 16))
      {
        swift_beginAccess();
        if (!*(a1[6] + 16))
        {
          return sub_1AE1A0490(v1);
        }
      }
    }
  }

  sub_1AE1A02DC();
  v4 = sub_1AE1A02DC();
  v5 = sub_1AE1A0490(v4);

  return v5;
}

uint64_t sub_1AE1A077C()
{
  v1 = v0;
  v2 = swift_beginAccess();
  if (*(v0[4] + 16))
  {
    if (qword_1ED96B308 != -1)
    {
      v2 = swift_once();
      v12 = v0[4];
    }

    v3 = v0[3];
    v4 = *(qword_1ED96F2F8 + 40);
    MEMORY[0x1EEE9AC00](v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v5 = v1[3];
    v6 = v1[4];
    *(v1 + 3) = v15;

    v1[7] = v14;
  }

  result = swift_beginAccess();
  if (*(v1[6] + 16))
  {
    if (qword_1ED96B308 != -1)
    {
      result = swift_once();
      v13 = v1[6];
    }

    v8 = v1[5];
    v9 = *(qword_1ED96F2F8 + 40);
    MEMORY[0x1EEE9AC00](result);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
    sub_1AE23D6AC();

    v10 = v1[5];
    v11 = v1[6];
    *(v1 + 5) = v15;

    v1[7] = v14;
  }

  return result;
}

void *sub_1AE1A09F4(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v54 - v10;
  v12 = sub_1AE23BFEC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1E69E7CC8];
  v4[3] = MEMORY[0x1E69E7CC8];
  v4[4] = v17;
  v4[5] = v17;
  v4[6] = v17;
  v4[7] = 0;
  v63 = a1;
  v18 = *a1;
  v19 = *(a2 + 24);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v18 >= v20;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    sub_1ADE42E40();
    swift_allocError();
    *v22 = 0xD000000000000013;
    *(v22 + 8) = 0x80000001AE25FD70;
    *(v22 + 16) = 0;
    swift_willThrow();

    v23 = v63;
    v62 = *(v63 + 1);
    sub_1ADDCEDE0(&v62, &qword_1EB5BDA20, &qword_1AE253910);
    v61 = *(v23 + 3);
    sub_1ADDCEDE0(&v61, &qword_1EB5BDA20, &qword_1AE253910);
    v25 = v4[3];
    v24 = v4[4];

    v27 = v4[5];
    v26 = v4[6];

    swift_deallocPartialClassInstance();
  }

  else
  {
    v54[2] = v4 + 3;
    v54[1] = v4 + 5;
    (*(v13 + 16))(v16, v19 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v18, v12);
    v28 = type metadata accessor for ReplicaState();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    v31 = swift_allocObject();
    v32 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v33 = type metadata accessor for Replica();
    v56 = v3;
    v57 = a2;
    v34 = v33;
    v35 = *(*(v33 - 8) + 56);
    v55 = v11;
    v35(v31 + v32, 1, 1, v33);
    (*(v13 + 32))(v31 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v16, v12);
    *(v31 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
    *(v31 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
    v36 = v55;
    v35(v55, 1, 1, v34);
    v37 = v57;
    swift_beginAccess();
    sub_1ADDD85E4(v36, v31 + v32);
    swift_endAccess();
    v4[2] = v31;
    v38 = v63;
    v40 = v63[1];
    v39 = v63[2];
    if (v40)
    {
      v41 = v63[1];
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    if (v40)
    {
      v42 = v63[2];
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
    }

    v43 = v63[2];
    sub_1ADE42C78(v63[1]);

    v44 = v56;
    sub_1ADDD6748(v41, v42, v37, &v58);
    if (v44)
    {

      sub_1ADE42CB8(v40);
      v60 = *(v38 + 3);
      sub_1ADDCEDE0(&v60, &qword_1EB5BDA20, &qword_1AE253910);
    }

    else
    {
      swift_beginAccess();
      v46 = v4[3];
      v45 = v4[4];
      *(v4 + 3) = v58;

      v47 = v38[3];
      if (v47)
      {
        v48 = v38[4];
        sub_1ADE42CB8(v40);
      }

      else
      {
        sub_1ADE42CB8(v40);
        v47 = MEMORY[0x1E69E7CC0];
        v48 = MEMORY[0x1E69E7CC0];
      }

      v49 = v57;

      sub_1ADDD6748(v47, v48, v49, &v59);
      swift_beginAccess();
      v51 = v4[5];
      v50 = v4[6];
      *(v4 + 5) = v59;

      if (qword_1ED96B308 != -1)
      {
        swift_once();
      }

      v52 = *(qword_1ED96F2F8 + 40);
      sub_1AE23D6AC();

      v4[7] = v59;
    }
  }

  return v4;
}

uint64_t sub_1AE1A0F64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[2];
  v12 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  (*(v7 + 16))(v10, v11 + v12, v6);
  v13 = sub_1ADDF66A8(v10);
  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  v14 = v3[4];
  v23[3] = v3[3];
  v23[4] = v14;

  v15 = sub_1ADDF5C7C(a1);
  v17 = v16;

  swift_beginAccess();
  v18 = v3[6];
  v23[1] = v3[5];
  v23[2] = v18;

  v19 = sub_1ADDF5C7C(a1);
  v21 = v20;

  *a2 = v13;
  a2[1] = v15;
  a2[2] = v17;
  a2[3] = v19;
  a2[4] = v21;
  return result;
}

void CRCounter.copy(renamingReferences:)(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];

  v6 = sub_1ADF684B4(v4);
  v7 = sub_1ADF684B4(v5);

  v8 = v6 + v7;
  if (__OFADD__(v6, v7))
  {
    __break(1u);
    goto LABEL_8;
  }

  swift_beginAccess();
  v9 = v3[5];
  v10 = v3[6];

  v11 = sub_1ADF684B4(v9);
  v12 = sub_1ADF684B4(v10);

  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = v8 - v13;
  if (__OFSUB__(v8, v13))
  {
LABEL_9:
    __break(1u);
    return;
  }

  type metadata accessor for CRCounterRef();
  v15 = swift_allocObject();
  sub_1AE19E550();
  *a1 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = swift_allocObject();

    sub_1AE19E814(v17);

    *a1 = v16;
  }

  sub_1AE19EB64(v14);
}

uint64_t CRCounter.value.getter()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];

  v4 = sub_1ADF684B4(v2);
  v5 = sub_1ADF684B4(v3);

  v7 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v8 = v1[5];
  v9 = v1[6];

  v10 = sub_1ADF684B4(v8);
  v11 = sub_1ADF684B4(v9);

  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = v7 - v12;
  if (__OFSUB__(v7, v12))
  {
LABEL_7:
    __break(1u);
  }

  return result;
}

void CRCounter.init(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRCounterRef();
  v4 = swift_allocObject();
  sub_1AE19E550();
  *a2 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = swift_allocObject();

    sub_1AE19E814(v6);

    *a2 = v5;
  }

  sub_1AE19EB64(a1);
}

void CRCounter.copy(renamingReferences:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if (!a1)
  {
    sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  swift_beginAccess();
  v5 = v4[3];
  v6 = v4[4];

  v7 = sub_1ADF684B4(v5);
  v8 = sub_1ADF684B4(v6);

  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
    goto LABEL_10;
  }

  swift_beginAccess();
  v10 = v4[5];
  v11 = v4[6];

  v12 = sub_1ADF684B4(v10);
  v13 = sub_1ADF684B4(v11);

  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v15 = v9 - v14;
  if (__OFSUB__(v9, v14))
  {
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for CRCounterRef();
  v16 = swift_allocObject();
  sub_1AE19E550();
  *a2 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = swift_allocObject();

    sub_1AE19E814(v18);

    *a2 = v17;
  }

  sub_1AE19EB64(v15);
}

uint64_t CRCounter.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = OBJC_IVAR____TtC9Coherence12ReplicaState_identity;
  swift_beginAccess();
  v5 = sub_1AE23BFEC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void CRCounter.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for CRCounterRef();
  v4 = swift_allocObject();
  sub_1AE19E550();

  *a2 = v4;
}

void *CRCounter.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRCounterRef();
  v2 = swift_allocObject();
  result = sub_1AE19E550();
  *a1 = v2;
  return result;
}

void *CRCounter.init(defaultState:)@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRCounterRef();
  v2 = swift_allocObject();
  result = sub_1AE19E550();
  *a1 = v2;
  return result;
}

Swift::Void __swiftcall CRCounter.increment(by:)(Swift::Int by)
{
  v2 = v1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CRCounterRef();
    v7 = swift_allocObject();

    sub_1AE19E814(v8);
    v9 = *v2;

    *v2 = v7;
  }

  sub_1AE19EB64(by);
}

Swift::Void __swiftcall CRCounter.decrement(by:)(Swift::Int by)
{
  v2 = -by;
  if (__OFSUB__(0, by))
  {
    __break(1u);
  }

  else
  {
    v3 = v1;
    v4 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v7 = swift_allocObject();

      sub_1AE19E814(v8);
      v9 = *v3;

      *v3 = v7;
    }

    sub_1AE19EB64(v2);
  }
}

uint64_t CRCounter.merge(_:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = *v2;
  if (*v2 == v4)
  {
    if (qword_1ED9670C0 != -1)
    {
      result = swift_once();
    }

    v11 = byte_1ED96F222;
    *a2 = word_1ED96F220;
    *(a2 + 2) = v11;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v8 = swift_allocObject();

      sub_1AE19E814(v9);
      v10 = *v2;

      *v2 = v8;
    }

    return sub_1AE19EF08(v4, a2);
  }

  return result;
}

uint64_t CRCounter.merge(_:)(void **a1)
{
  v2 = *a1;
  result = *v1;
  if (*v1 == v2)
  {
    if (qword_1ED9670C0 != -1)
    {

      return swift_once();
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v6 = swift_allocObject();

      sub_1AE19E814(v7);
      v8 = *v1;

      *v1 = v6;
    }

    return sub_1AE19EF08(v2, &v9);
  }

  return result;
}

Swift::Bool __swiftcall CRCounter.needToFinalizeTimestamps()()
{
  v1 = *v0;
  swift_beginAccess();
  if (*(*(v1 + 32) + 16))
  {
    return 1;
  }

  swift_beginAccess();
  return *(*(v1 + 48) + 16) != 0;
}

uint64_t CRCounter.finalizeTimestamps(_:)()
{
  v1 = v0;
  v2 = *v0;
  swift_beginAccess();
  if (*(*(v2 + 32) + 16) || (result = swift_beginAccess(), *(*(v2 + 48) + 16)))
  {
    v4 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v7 = swift_allocObject();

      sub_1AE19E814(v8);
      v9 = *v1;

      *v1 = v7;
    }

    return sub_1AE1A077C();
  }

  return result;
}

uint64_t CRCounter.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;
    swift_retain_n();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *(sub_1ADDE78C8() + 16);
    if ((~v11 & 0xF000000000000007) != 0 && (v11 & 0xF000000000000000) == 0x7000000000000000)
    {
      v13 = (v11 & 0xFFFFFFFFFFFFFFFLL);
      v6 = v13[2];
      v7 = v13[3];
      v8 = v13[4];
      v9 = v13[5];
      v10 = v13[6];
      sub_1ADE42C78(v7);
      sub_1ADE42C78(v9);
    }

    v17[0] = v6;
    v17[1] = v7;
    v17[2] = v8;
    v17[3] = v9;
    v17[4] = v10;
    type metadata accessor for CRCounterRef();
    v14 = swift_allocObject();
    sub_1AE1A09F4(v17, a1);

    if (!v2)
    {
      *a2 = v14;
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v16 = 0xD000000000000014;
    *(v16 + 8) = 0x80000001AE25FB50;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRCounter.encode(to:)()
{
  v2 = *v0;
  result = sub_1ADDFCC74();
  if (!v1)
  {
    v4 = *(result + 16);
    v5 = result;

    v6 = sub_1AE19E3F0(v4);
    swift_beginAccess();
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;
  }

  return result;
}

{
  v1 = *v0;
  swift_beginAccess();
  v2 = v1[3];
  v3 = v1[4];

  v4 = sub_1ADF684B4(v2);
  v5 = sub_1ADF684B4(v3);

  v7 = v4 + v5;
  if (__OFADD__(v4, v5))
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_beginAccess();
  v8 = v1[5];
  v9 = v1[6];

  v10 = sub_1ADF684B4(v8);
  v11 = sub_1ADF684B4(v9);

  if (__OFADD__(v10, v11))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__OFSUB__(v7, v10 + v11))
  {
    return sub_1AE23D3BC();
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL CRCounter.isDefaultState.getter()
{
  v1 = *v0;
  swift_beginAccess();
  if (*(v1[4] + 16))
  {
    return 0;
  }

  if (*(v1[3] + 16))
  {
    return 0;
  }

  swift_beginAccess();
  return !*(v1[6] + 16) && *(v1[5] + 16) == 0;
}

uint64_t sub_1AE1A1E08@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  result = sub_1AE1A0650(*a1);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  *a2 = v7;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t CRCounter.actionUndoingDifference(from:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  result = sub_1AE1A0650(*a1);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = result;
  }

  *a2 = v7;
  *(a2 + 8) = v6 & 1;
  return result;
}

Swift::Void __swiftcall CRCounter.apply(_:)(Coherence::CRCounter::MutatingAction_optional a1)
{
  if ((*(a1.value.delta + 8) & 1) == 0)
  {
    v2 = v1;
    v3 = *a1.value.delta;
    v4 = *v1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = *v1;
      type metadata accessor for CRCounterRef();
      v6 = swift_allocObject();

      sub_1AE19E814(v7);
      v8 = *v2;

      *v2 = v6;
    }

    v9 = -v3;
    if (__OFSUB__(0, v3))
    {
      __break(1u);
    }

    else
    {
      v10 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        type metadata accessor for CRCounterRef();
        v13 = swift_allocObject();

        sub_1AE19E814(v14);
        v15 = *v2;

        *v2 = v13;
      }

      sub_1AE19EB64(v9);
    }
  }
}

uint64_t CRCounter.delta(_:from:)@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  swift_beginAccess();
  v6 = v4[3];
  v7 = v4[4];
  swift_beginAccess();
  v8 = v5[3];
  v9 = v5[4];

  if (sub_1ADF637A8(v10, v7))
  {
    goto LABEL_2;
  }

  v11 = sub_1ADF637A8(v8, v6);

  if (v11)
  {
    goto LABEL_4;
  }

  swift_beginAccess();
  v13 = v4[5];
  v14 = v4[6];
  swift_beginAccess();
  v15 = v5[5];
  v16 = v5[6];

  if (sub_1ADF637A8(v17, v14))
  {
LABEL_2:
  }

  else
  {
    v18 = sub_1ADF637A8(v15, v13);

    if ((v18 & 1) == 0)
    {
      *a2 = 0;
      return result;
    }
  }

LABEL_4:
  v19 = v4;
  v20 = v5;

  result = sub_1AE1A2934(&v19);
  *a2 = v20;
  return result;
}

uint64_t CRCounter.merge(delta:)(void **a1)
{
  v2 = *a1;
  if (*v1 == *a1)
  {
    if (qword_1ED9670C0 != -1)
    {
      swift_once();
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *v1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for CRCounterRef();
      v5 = swift_allocObject();

      sub_1AE19E814(v6);
      v7 = *v1;

      *v1 = v5;
    }

    sub_1AE19EF08(v2, &v9);
  }

  return 1;
}

void sub_1AE1A222C(uint64_t *a1@<X8>)
{
  v7 = *v1;
  v3 = CRCounter.value.getter();
  type metadata accessor for CRCounterRef();
  v4 = swift_allocObject();
  sub_1AE19E550();
  *a1 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = swift_allocObject();

    sub_1AE19E814(v6);

    *a1 = v5;
  }

  sub_1AE19EB64(v3);
}

uint64_t sub_1AE1A22E8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  result = sub_1AE1A0650(*a1);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1AE1A2378()
{
  v2 = *v0;
  result = sub_1ADDFCC74();
  if (!v1)
  {
    v4 = *(result + 16);
    v5 = result;

    v6 = sub_1AE19E3F0(v4);
    swift_beginAccess();
    v7 = *(v5 + 24);
    *(v5 + 24) = v6;
  }

  return result;
}

void *sub_1AE1A2408@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CRCounterRef();
  v2 = swift_allocObject();
  result = sub_1AE19E550();
  *a1 = v2;
  return result;
}

uint64_t CRCounter.MutatingAction.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 64))
  {
    type metadata accessor for CRDecoder.CRDTContainer();
    inited = swift_initStackObject();
    *(inited + 16) = a1;
    *(inited + 24) = 0;
    *(inited + 32) = 1;

    v5 = *(sub_1ADDE78C8() + 16);
    if (v5 >> 60)
    {
      v6 = 1;
    }

    else
    {
      v6 = (v5 & 0xF000000000000007) == 0xF000000000000007;
    }

    if (v6)
    {
      type metadata accessor for Proto_Register._StorageClass();
      v9 = swift_initStaticObject();
    }

    else
    {
      v9 = *(v5 + 16);
    }

    swift_beginAccess();
    v10 = *(v9 + 40);
    if (v10)
    {
      v11 = *(v9 + 40);
    }

    else
    {
      type metadata accessor for Proto_Value._StorageClass();
      v10 = swift_initStaticObject();
    }

    v12 = *(v10 + 16);
    if ((~v12 & 0xF000000000000007) != 0 && ((v12 >> 59) & 0x1E | (v12 >> 2) & 1) == 4)
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    }

    else
    {
      v13 = 0;
    }

    *a2 = v13;
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v7 = 0xD000000000000014;
    *(v7 + 8) = 0x80000001AE25FB50;
    *(v7 + 16) = 0;
    swift_willThrow();
  }

  return result;
}

uint64_t CRCounter.MutatingAction.encode(to:)()
{
  v2 = *v0;
  result = sub_1ADDFCC74();
  if (!v1)
  {
    type metadata accessor for Proto_Value._StorageClass();
    inited = swift_initStaticObject();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = swift_allocObject();
      v6 = *(inited + 16);
      *(v5 + 16) = v6;
      sub_1ADE51B2C(v6);

      inited = v5;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v2;
    v8 = v7 | 0x2000000000000000;
    v9 = *(inited + 16);
    *(inited + 16) = v8;
    sub_1ADE51B48(v9);
    type metadata accessor for Proto_Register._StorageClass();
    v10 = swift_initStaticObject();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      swift_allocObject();
      v10 = sub_1ADDE8D20(v10);
    }

    swift_beginAccess();
    v11 = *(v10 + 40);
    *(v10 + 40) = inited;

    swift_beginAccess();

    sub_1AE1B783C(v12);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AE1A28E8()
{
  v2 = *v0;
  CRCounter.value.getter();
  return sub_1AE23D3BC();
}

uint64_t sub_1AE1A2934(void *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for CRCounterRef();
    v7 = swift_allocObject();

    sub_1AE19E814(v8);
    v9 = *v2;

    *v2 = v7;
  }

  swift_beginAccess();
  v10 = v3[3];
  v11 = v3[4];
  swift_beginAccess();

  sub_1ADE00714(v12);
  sub_1ADE00714(v10);
  swift_endAccess();

  swift_beginAccess();
  v13 = v3[5];
  v14 = v3[6];
  swift_beginAccess();

  sub_1ADE00714(v15);
  sub_1ADE00714(v13);
  swift_endAccess();
}

uint64_t _s9Coherence9CRCounterV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  v4 = *(qword_1ED96F2F8 + 40);
  sub_1AE23D6AC();
  swift_beginAccess();
  v5 = v2[3];
  v6 = v2[4];
  if (*(v6 + 16) && *(v30 + 16))
  {
    v26 = v2[3];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1ADDF8898(v28, v29, v30);

    v5 = v26;
  }

  else
  {
    v7 = v2[3];
  }

  swift_beginAccess();
  v8 = v3[3];
  v9 = v3[4];
  if (*(v9 + 16) && *(v30 + 16))
  {
    v24 = v3[3];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1ADDF8898(v28, v29, v30);

    v8 = v24;
  }

  else
  {
    v10 = v3[3];
  }

  sub_1ADF64C74(v6, v9);
  if ((v11 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_1ADF64C74(v5, v8);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_17:

    v16 = 0;
    return v16 & 1;
  }

  swift_beginAccess();
  v14 = v2[5];
  v15 = v2[6];
  if (*(v15 + 16) && *(v30 + 16))
  {
    v27 = v2[5];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1ADDF8898(v28, v29, v30);

    v14 = v27;
  }

  else
  {
    v17 = v2[5];
  }

  swift_beginAccess();
  v18 = v3[5];
  v19 = v3[6];
  if (*(v19 + 16) && *(v30 + 16))
  {
    v25 = v3[5];
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_1ADDF8898(v28, v29, v30);

    v18 = v25;
  }

  else
  {
    v20 = v3[5];
  }

  sub_1ADF64C74(v15, v19);
  if (v21)
  {
    sub_1ADF64C74(v14, v18);
    v16 = v22;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

unint64_t sub_1AE1A2E18(uint64_t a1)
{
  result = sub_1AE1A2E40();
  *(a1 + 24) = result;
  return result;
}

unint64_t sub_1AE1A2E40()
{
  result = qword_1EB5B8C30[0];
  if (!qword_1EB5B8C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5B8C30);
  }

  return result;
}

uint64_t sub_1AE1A2EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1AE1A2F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDC68, &unk_1AE253C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = sub_1AE23BFEC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  swift_beginAccess();
  sub_1ADDCEE40(v2 + v16, v7, &qword_1EB5BDC68, &unk_1AE253C20);
  v17 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  result = (*(*(v17 - 8) + 48))(v7, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 16))(v12, v7, v8);
    sub_1ADDE5728(v7);
    sub_1ADDE3CD8();
    (*(v9 + 8))(v12, v8);
    (*(v9 + 32))(a2, v15, v8);
    result = type metadata accessor for Replica();
    *(a2 + *(result + 20)) = 0;
  }

  return result;
}

uint64_t sub_1AE1A3160()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1EB5BDC80);
  __swift_project_value_buffer(v0, qword_1EB5BDC80);
  return sub_1AE23C77C();
}

uint64_t sub_1AE1A31DC()
{
  v0 = sub_1AE23BDDC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1AE23BC1C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1AE23BC0C();
  sub_1AE23BBFC();
  sub_1AE23BCEC();
  sub_1AE23BD0C();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1AE1A3388()
{
  sqlite3_finalize(v0[11]);
  sqlite3_finalize(v0[12]);
  sqlite3_finalize(v0[13]);
  v1 = v0[14];

  return sqlite3_finalize(v1);
}

uint64_t sub_1AE1A33C8(void *a1, uint64_t a2, uint64_t a3)
{
  sqlite3_bind_blob(*(a3 + 112), 1, a1, 16, *(a3 + 72));
  v4 = *(a3 + 112);
  v5 = a3 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica;
  swift_beginAccess();
  v6 = type metadata accessor for CRReplicaDatabase.ReplicaDb(0);
  v7 = *(*(v6 - 8) + 48);
  result = v7(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  sqlite3_bind_int64(v4, 2, *(v5 + *(v6 + 20)));
  result = v7(v5, 1, v6);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sqlite3_bind_int64(*(a3 + 112), 3, *(v5 + *(v6 + 24)));
  result = sqlite3_step(*(a3 + 112));
  if (result == 101)
  {
    return result;
  }

  sub_1AE23DA2C();

  result = sqlite3_errmsg(*(a3 + 32));
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v9 = sub_1AE23CDEC();
  MEMORY[0x1B26FB670](v9);

  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  sub_1ADE47024();
  swift_allocError();
  *v10 = 0xD000000000000010;
  *(v10 + 8) = 0x80000001AE262EB0;
  *(v10 + 16) = 2;
  return swift_willThrow();
}

uint64_t sub_1AE1A359C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  return sub_1ADDCEDE0(v0 + OBJC_IVAR____TtC9Coherence17CRReplicaDatabase_replica, &qword_1EB5BDC68, &unk_1AE253C20);
}

uint64_t sub_1AE1A363C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v11, 0, 14);
      v6 = v11;
      goto LABEL_9;
    }

    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v11[0] = a1;
      LOWORD(v11[1]) = a2;
      BYTE2(v11[1]) = BYTE2(a2);
      BYTE3(v11[1]) = BYTE3(a2);
      BYTE4(v11[1]) = BYTE4(a2);
      BYTE5(v11[1]) = BYTE5(a2);
      v6 = v11 + BYTE6(a2);
LABEL_9:
      sub_1AE1A33C8(v11, v6, a3);
      goto LABEL_10;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1AE1A37A4(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE1A37A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AE23BB7C();
  v8 = result;
  if (result)
  {
    result = sub_1AE23BBAC();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1AE23BB9C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1AE1A33C8(v8, v14, a4);
}

unint64_t sub_1AE1A3858(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1A3878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1AE1A31DC();
}

uint64_t sub_1AE1A3880@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - v10;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v11 = sub_1AE23C78C();
  __swift_project_value_buffer(v11, qword_1ED96F1C8);

  sub_1ADDD86D8(a1, a2);
  v12 = sub_1AE23C76C();
  v13 = sub_1AE23D60C();

  sub_1ADDCC35C(a1, a2);
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v36 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_1AE1FB594(*(v3 + 104), *(v3 + 112), &v36);
    *(v15 + 12) = 2080;
    v37 = sub_1AE23BEAC();
    v38 = v17;
    v34 = 47;
    v35 = 0xE100000000000000;
    v32 = 95;
    v33 = 0xE100000000000000;
    sub_1ADE42DEC();
    v18 = sub_1AE23D82C();
    v20 = v19;

    v21 = sub_1AE1FB594(v18, v20, &v36);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_1ADDCA000, v12, v13, "%s addLazyAsset %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v16, -1, -1);
    v22 = v15;
    a3 = v28;
    MEMORY[0x1B26FDA50](v22, -1, -1);
  }

  type metadata accessor for CRAssetRef();
  v23 = swift_allocObject();
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = v4;
  v24 = *(v4 + 24);
  v25 = swift_allocObject();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  v37 = &unk_1AE254530;
  v38 = v25;
  swift_weakInit();
  sub_1ADDD86D8(a1, a2);

  sub_1ADDD86D8(a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v26 = v29;
  sub_1AE23D1FC();

  result = (*(v30 + 8))(v26, v31);
  *a3 = v23;
  return result;
}

uint64_t sub_1AE1A3C14(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (!*(v3 + 16))
  {
    return swift_endAccess();
  }

  v4 = sub_1ADDFF050(a1);
  if ((v5 & 1) == 0)
  {
    return swift_endAccess();
  }

  v6 = *(*(v3 + 56) + 8 * v4);
  swift_endAccess();

  sub_1AE1A62D0();
}

uint64_t sub_1AE1A3C98@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v40 = a3;
  v5 = v4;
  v39 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v37 = *(v8 - 8);
  v38 = v8;
  v9 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v35 - v13;
  v15 = sub_1AE23BDDC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CRAssetRef();
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v44 = v20;
  v20[4] = v5;
  v21 = *(v16 + 16);
  v21(v19, v40, v15);
  v21(v14, v5 + OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory, v15);
  (*(v16 + 56))(v14, 0, 1, v15);
  v40 = a1;
  v22 = a2;
  sub_1ADDD86D8(a1, a2);

  v23 = v41;
  v24 = sub_1AE163454(v19, 0, 0, 0, v14);
  if (v23)
  {
  }

  v26 = v24;
  v27 = type metadata accessor for CRAssetProviderUniqueFile(0);
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v30 + 112) = 0;
  *(v30 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
  v21((v30 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl), v26 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v15);
  *(v30 + 120) = v26;
  v31 = *(v5 + 24);
  v32 = swift_allocObject();
  v33 = v40;
  v32[2] = v40;
  v32[3] = v22;
  v32[4] = v30;
  v42 = &unk_1AE254498;
  v43 = v32;
  swift_weakInit();
  sub_1ADDD86D8(v33, v22);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v34 = v36;
  sub_1AE23D1FC();

  result = (*(v37 + 8))(v34, v38);
  *v39 = v44;
  return result;
}

uint64_t sub_1AE1A4038@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v36 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v29 - v11;
  v12 = sub_1AE23BDDC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  v32 = &v29 - v17;
  type metadata accessor for CRAssetRef();
  v19 = swift_allocObject();
  v30 = a2;
  v31 = v19;
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = v5;
  sub_1ADDD86D8(a1, a2);

  sub_1AE23BD5C();
  v20 = *(v5 + 32);
  v37 = v5;
  v38 = v18;
  v39 = 0;
  type metadata accessor for CRAssetWatchedDirectory();
  sub_1AE23D6AC();
  v21 = v40;
  v22 = *(v5 + 24);
  (*(v13 + 16))(v15, a3, v12);
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v26 = v30;
  *(v25 + 16) = a1;
  *(v25 + 24) = v26;
  (*(v13 + 32))(v25 + v23, v15, v12);
  *(v25 + v24) = v21;
  v40 = &unk_1AE254510;
  v41 = v25;
  swift_weakInit();
  sub_1ADDD86D8(a1, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v27 = v33;
  sub_1AE23D1FC();

  (*(v34 + 8))(v27, v35);
  result = (*(v13 + 8))(v32, v12);
  *v36 = v31;
  return result;
}

uint64_t sub_1AE1A4368()
{
  v0 = sub_1AE23C78C();
  __swift_allocate_value_buffer(v0, qword_1ED96F1C8);
  __swift_project_value_buffer(v0, qword_1ED96F1C8);
  return sub_1AE23C77C();
}

uint64_t sub_1AE1A43DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v52 = &v41 - v3;
  v53 = sub_1AE23BFEC();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCE8, &qword_1AE254458);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  swift_beginAccess();
  v14 = *(v0 + 112);
  v15 = *(v14 + 64);
  v43 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v41 = v0;
  v42 = (v16 + 63) >> 6;
  v44 = v4 + 32;
  v45 = v4 + 16;
  v49 = v4;
  v50 = v14;
  v51 = (v4 + 8);

  v20 = 0;
  v46 = v13;
  v47 = v10;
  if (v18)
  {
    while (1)
    {
      v21 = v20;
LABEL_12:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v24 | (v21 << 6);
      v27 = v49;
      v26 = v50;
      v28 = v48;
      v29 = v53;
      (*(v49 + 16))(v48, *(v50 + 48) + *(v49 + 72) * v25, v53);
      v30 = *(*(v26 + 56) + 8 * v25);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
      v32 = *(v31 + 48);
      v33 = *(v27 + 32);
      v10 = v47;
      v33(v47, v28, v29);
      *&v10[v32] = v30;
      (*(*(v31 - 8) + 56))(v10, 0, 1, v31);
      v23 = v21;
      v13 = v46;
LABEL_13:
      sub_1ADDD2198(v10, v13, &qword_1EB5BDCE8, &qword_1AE254458);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
      if ((*(*(v34 - 8) + 48))(v13, 1, v34) == 1)
      {
        break;
      }

      v35 = *&v13[*(v34 + 48)];
      v36 = sub_1AE23BDDC();
      v37 = v52;
      (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
      sub_1ADDD2198(v37, *(*(v35 + 64) + 40), &qword_1EB5B9DC0, &qword_1AE240B90);
      swift_continuation_resume();
      result = (*v51)(v13, v53);
      v20 = v23;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

    v39 = v41;
    v40 = *(v41 + 112);

    sub_1ADDCEDE0(v39 + OBJC_IVAR____TtC9Coherence19CRLazyAssetProvider_url, &qword_1EB5B9DC0, &qword_1AE240B90);
    swift_defaultActor_destroy();
    return v39;
  }

  else
  {
LABEL_5:
    if (v42 <= v20 + 1)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v42;
    }

    v23 = v22 - 1;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v42)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
        (*(*(v38 - 8) + 56))(v10, 1, 1, v38);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v43 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1A48A0()
{
  sub_1AE1A43DC();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1A48CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1AE23BFEC();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A4990, v3, 0);
}

uint64_t sub_1AE1A4990()
{
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  sub_1ADDD0F70();
  sub_1AE23BFBC();
  if (sub_1AE23D27C())
  {
    v2 = v0[2];
    v3 = sub_1AE23BDDC();
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    (*(v0[7] + 8))(v0[8], v0[6]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[8];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    v10 = swift_task_alloc();
    v0[9] = v10;
    v10[2] = v9;
    v10[3] = v8;
    v10[4] = v7;
    v10[5] = v6;
    v11 = swift_task_alloc();
    v0[10] = v11;
    *(v11 + 16) = v7;
    *(v11 + 24) = v6;
    v12 = sub_1ADDCEF80(&qword_1EB5BDCF8, type metadata accessor for CRLazyAssetProvider);
    v13 = *(MEMORY[0x1E69E88F0] + 4);
    v14 = swift_task_alloc();
    v0[11] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
    *v14 = v0;
    v14[1] = sub_1AE1A4C44;
    v16 = v0[2];

    return MEMORY[0x1EEE6DE18](v16, &unk_1AE254470, v10, sub_1AE1B3D48, v11, v7, v12, v15);
  }
}

void sub_1AE1A4C44()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[5];

    MEMORY[0x1EEE6DFA0](sub_1AE1A4D8C, v7, 0);
  }
}

uint64_t sub_1AE1A4D8C()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1AE1A4E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A4EB0, a4, 0);
}

uint64_t sub_1AE1A4EB0()
{
  v20 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = sub_1AE23C78C();
  __swift_project_value_buffer(v3, qword_1ED96F1C8);

  v4 = sub_1AE23C76C();
  v5 = sub_1AE23D60C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1AE1FB594(v8, v7, &v19);
    *(v9 + 12) = 2080;
    v11 = sub_1AE23CCAC();
    v13 = sub_1AE1FB594(v11, v12, &v19);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_1ADDCA000, v4, v5, "%s reading waiting for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v10, -1, -1);
    MEMORY[0x1B26FDA50](v9, -1, -1);
  }

  v14 = v0[16];
  sub_1ADDCEF80(&qword_1EB5BDCF8, type metadata accessor for CRLazyAssetProvider);
  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AE23D16C();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1AE1A50EC, v15, v17);
}

uint64_t sub_1AE1A50EC()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v1[18];
  v5 = v1[16];
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_1AE1A5220;
  v6 = swift_continuation_init();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    v7 = v1[16];
    swift_task_reportUnexpectedExecutor();
  }

  v9 = v1[16];
  v8 = v1[17];
  swift_beginAccess();
  v10 = *(v9 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v9 + 112);
  *(v9 + 112) = 0x8000000000000000;
  sub_1ADEC0170(v6, v8, isUniquelyReferenced_nonNull_native);
  *(v9 + 112) = v13;
  swift_endAccess();

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1AE1A5220()
{
  v3 = *v0;
  sub_1ADDD2198(*(*v0 + 144), *(*v0 + 104), &qword_1EB5B9DC0, &qword_1AE240B90);

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1AE1A5348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE23BFEC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v15 - v9;
  v11 = sub_1AE23D1BC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a1;
  (*(v5 + 32))(&v13[v12], &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_1AE217C10(0, 0, v10, &unk_1AE254488, v13);
}

uint64_t sub_1AE1A5528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AE1A5548, a4, 0);
}

uint64_t sub_1AE1A5548()
{
  v1 = v0[2];
  sub_1AE1A55A8(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1AE1A55A8(uint64_t a1)
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v18[-v10];
  swift_beginAccess();
  v12 = *(v1 + 112);
  if (*(v12 + 16))
  {

    v13 = sub_1ADDDF300(a1);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      v16 = sub_1AE23BDDC();
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
      sub_1ADDD2198(v11, *(*(v15 + 64) + 40), &qword_1EB5B9DC0, &qword_1AE240B90);
      swift_continuation_resume();
    }

    else
    {
    }
  }

  (*(v4 + 16))(v7, a1, v3);
  swift_beginAccess();
  sub_1AE1D1B54(0, v7);
  return swift_endAccess();
}

uint64_t sub_1AE1A57C0(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1AE23BFEC();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCE8, &qword_1AE254458) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A590C, v2, 0);
}

uint64_t sub_1AE1A590C()
{
  v26 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_1AE23C78C();
  __swift_project_value_buffer(v2, qword_1ED96F1C8);
  swift_retain_n();
  v3 = sub_1AE23C76C();
  v4 = sub_1AE23D60C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315394;
    v9 = sub_1AE23CCAC();
    v11 = sub_1AE1FB594(v9, v10, &v25);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2048;
    swift_beginAccess();
    v12 = *(*(v6 + 112) + 16);

    *(v7 + 14) = v12;

    _os_log_impl(&dword_1ADDCA000, v3, v4, "%s accommodateReplacement of lazy provider with %ld readers", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B26FDA50](v8, -1, -1);
    MEMORY[0x1B26FDA50](v7, -1, -1);
  }

  else
  {
    v13 = v0[10];
  }

  v14 = v0[8];
  v24 = v0[9];
  ObjectType = swift_getObjectType();
  v16 = *(v24 + 32);
  v23 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[18] = v18;
  *v18 = v0;
  v18[1] = sub_1AE1A5BB8;
  v19 = v0[17];
  v21 = v0[8];
  v20 = v0[9];

  return v23(v19, 45, 0xE100000000000000, ObjectType, v20);
}

uint64_t sub_1AE1A5BB8()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE1A5CC8, v2, 0);
}

uint64_t sub_1AE1A5CC8()
{
  v1 = v0[12];
  v2 = v0[10];
  swift_beginAccess();
  v3 = *(v2 + 112);
  v4 = *(v3 + 64);
  v37 = v3 + 64;
  v5 = -1;
  v6 = -1 << *(v3 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v35 = v2;
  v36 = (63 - v6) >> 6;
  v39 = v1;
  v40 = *(v2 + 112);
  v41 = (v1 + 8);

  v9 = 0;
  v38 = v0;
  if (v7)
  {
    while (1)
    {
      v10 = v9;
LABEL_12:
      v14 = v0[13];
      v13 = v0[14];
      v15 = v0[11];
      v16 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v17 = v16 | (v10 << 6);
      (*(v39 + 16))(v14, *(v40 + 48) + *(v39 + 72) * v17, v15);
      v18 = *(*(v40 + 56) + 8 * v17);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
      v20 = *(v19 + 48);
      v0 = v38;
      (*(v39 + 32))(v13, v14, v15);
      *(v13 + v20) = v18;
      (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
      v12 = v10;
LABEL_13:
      v21 = v0[15];
      sub_1ADDD2198(v0[14], v21, &qword_1EB5BDCE8, &qword_1AE254458);
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
      v23 = (*(*(v22 - 8) + 48))(v21, 1, v22);
      v25 = v0[16];
      v24 = v0[17];
      v26 = v0[15];
      if (v23 == 1)
      {
        break;
      }

      v42 = v0[11];
      v27 = *(v26 + *(v22 + 48));
      sub_1ADDCEE40(v24, v25, &qword_1EB5B9DC0, &qword_1AE240B90);
      sub_1ADDD2198(v25, *(*(v27 + 64) + 40), &qword_1EB5B9DC0, &qword_1AE240B90);
      swift_continuation_resume();
      result = (*v41)(v26, v42);
      v9 = v12;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v30 = v0[13];
    v31 = v0[14];

    v32 = sub_1ADE51944(MEMORY[0x1E69E7CC0]);
    sub_1ADDCEDE0(v24, &qword_1EB5B9DC0, &qword_1AE240B90);
    v33 = *(v35 + 112);
    *(v35 + 112) = v32;

    v34 = v0[1];

    return v34();
  }

  else
  {
LABEL_5:
    if (v36 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v36;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v36)
      {
        v28 = v0[14];
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCF0, &qword_1AE254460);
        (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
        v7 = 0;
        goto LABEL_13;
      }

      v7 = *(v37 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1A60F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1A48CC(a1, a2, a3);
}

uint64_t sub_1AE1A61A0(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AE1A61C0, v2, 0);
}

uint64_t sub_1AE1A61C0()
{
  v5 = v0[1];
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_unknownObjectRetain();

  return v5(v3, v2);
}

uint64_t sub_1AE1A622C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE744B8;

  return sub_1AE1A57C0(a1, a2);
}

void sub_1AE1A62D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - v3;
  v5 = sub_1AE23BDDC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 24);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 24) = v12;
    if (v12 <= 0)
    {
      sub_1ADDCEE40(*(v0 + 16) + OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL, v4, &qword_1EB5B9DC0, &qword_1AE240B90);
      if ((*(v6 + 48))(v4, 1, v5) == 1)
      {
        sub_1ADDCEDE0(v4, &qword_1EB5B9DC0, &qword_1AE240B90);
      }

      else
      {
        (*(v6 + 32))(v9, v4, v5);
        if (swift_weakLoadStrong())
        {
          sub_1AE1A7788(v9);
        }

        (*(v6 + 8))(v9, v5);
      }
    }
  }
}

uint64_t sub_1AE1A64AC()
{
  v1 = v0;
  if (*(v0 + 120))
  {

    sub_1AE1A62D0();

    v2 = *(v0 + 120);
  }

  v3 = OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl;
  v4 = sub_1AE23BDDC();
  (*(*(v4 - 8) + 8))(v1 + v3, v4);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1A6554()
{
  v1[2] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = sub_1AE23BDDC();
  v1[4] = v3;
  v4 = *(v3 - 8);
  v1[5] = v4;
  v5 = *(v4 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A664C, v0, 0);
}

uint64_t sub_1AE1A664C()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v2 + 16);
  v5(v1, v0[2] + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl, v3);
  (*(v2 + 56))(v4, 1, 1, v3);
  v6 = sub_1AE163454(v1, 0, 0, 0, v4);
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = type metadata accessor for CRAssetProviderUniqueFile(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v13 + 112) = 0;
  *(v13 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
  v5(v13 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl, v6 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v8);
  *(v13 + 120) = v6;

  v14 = v0[1];

  return v14(v13, &off_1F23C6B90);
}

uint64_t sub_1AE1A6804(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AE1A6824, v1, 0);
}

uint64_t sub_1AE1A6824()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl;
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1AE1A690C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AE1A6998;

  return sub_1AE1A6554();
}

uint64_t sub_1AE1A6998(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_1AE1A6A9C()
{
  v1 = *(v0 + 120);

  v2 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
  v3 = sub_1AE23BDDC();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1A6B28@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1AE23BDDC();
  v8 = *(v5 - 8);
  (*(v8 + 16))(a2, v2 + v4, v5);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_1AE1A6BF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AE1A6C18, v1, 0);
}

uint64_t sub_1AE1A6C18()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v1, v2 + v3, v4);
  (*(v5 + 56))(v1, 0, 1, v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1AE1A6D00(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 8);
  v4 = swift_unknownObjectRetain();

  return v6(v4, a2);
}

uint64_t sub_1AE1A6EBC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - v8;
  v10 = sub_1AE23BDDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v15 = a2;
  }

  else
  {
    v16 = sub_1AE23BD5C();
    v22[1] = v22;
    v17 = *(v2 + 32);
    MEMORY[0x1EEE9AC00](v16);
    v22[-4] = v3;
    v22[-3] = v14;
    LOBYTE(v22[-2]) = 0;
    type metadata accessor for CRAssetWatchedDirectory();
    sub_1AE23D6AC();
    v15 = v25;
    (*(v11 + 8))(v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  }

  v18 = *(v3 + 24);
  (*(v11 + 16))(v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10, v13);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  (*(v11 + 32))(v20 + v19, v14, v10);
  *(v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v25 = &unk_1AE254438;
  v26 = v20;
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();

  return (*(v23 + 8))(v9, v24);
}

uint64_t sub_1AE1A71A8(void *a1)
{
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BD8C();
  if (swift_weakLoadStrong())
  {
    v7 = a1;
    sub_1AE1A6EBC(v6, 0);
  }

  return (*(v3 + 8))(v6, v2);
}

void sub_1AE1A73D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1AE23BC8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_1AE1A7508()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v12 - v3;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1AE23DA2C();
  MEMORY[0x1B26FB670](0xD000000000000016, 0x80000001AE263450);
  v13 = v0;
  sub_1AE23DBAC();
  MEMORY[0x1B26FB670](32, 0xE100000000000000);
  sub_1ADDCEE40(v0 + OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL, v4, &qword_1EB5B9DC0, &qword_1AE240B90);
  v5 = sub_1AE23BDDC();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1ADDCEDE0(v4, &qword_1EB5B9DC0, &qword_1AE240B90);
    v7 = 0xE100000000000000;
    v8 = 45;
  }

  else
  {
    v9 = sub_1AE23BDAC();
    v7 = v10;
    (*(v6 + 8))(v4, v5);
    v8 = v9;
  }

  MEMORY[0x1B26FB670](v8, v7);

  MEMORY[0x1B26FB670](62, 0xE100000000000000);
  return v14;
}

uint64_t sub_1AE1A7788(uint64_t a1)
{
  v3 = sub_1AE23BDDC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = *(v1 + 32);
  (*(v4 + 16))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  (*(v4 + 32))(v9 + v8, aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AE1B3C24;
  *(v10 + 24) = v9;
  aBlock[4] = sub_1AE1B5910;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1ADDF70CC;
  aBlock[3] = &block_descriptor_125;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1A79A4()
{
  [objc_opt_self() removeFilePresenter_];

  return swift_deallocClassInstance();
}

uint64_t sub_1AE1A7A48()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE1A7B44, 0, 0);
}

uint64_t sub_1AE1A7B44()
{
  if (!v0[2])
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
LABEL_8:
    v3 = v0[11];

    v4 = v0[1];

    return v4();
  }

  sub_1AE1B5874((v0 + 2), (v0 + 5));
  Strong = swift_weakLoadStrong();
  v0[13] = Strong;
  if (!Strong)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    goto LABEL_7;
  }

  v2 = Strong;
  if (sub_1AE23D27C())
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

LABEL_7:
    sub_1AE1B58AC((v0 + 5));
    goto LABEL_8;
  }

  v6 = v0[6];
  v9 = (v0[5] + *v0[5]);
  v7 = *(v0[5] + 4);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = sub_1AE1A7D08;

  return v9(v2);
}

uint64_t sub_1AE1A7D08()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE1A7E04, 0, 0);
}

uint64_t sub_1AE1A7E04()
{
  v1 = v0[13];

  sub_1AE1B58AC((v0 + 5));
  v2 = *(MEMORY[0x1E69E8678] + 4);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1AE1A7A48;
  v4 = v0[11];
  v5 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1AE1A7EBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v14 - v6;
  v8 = OBJC_IVAR____TtC9Coherence10AssetActor__streamContinuation;
  (*(v3 + 16))(&v14 - v6, v1 + OBJC_IVAR____TtC9Coherence10AssetActor__streamContinuation, v2, v5);
  sub_1AE23D20C();
  v9 = *(v3 + 8);
  v9(v7, v2);
  v10 = *(v1 + 112);

  v11 = *(v1 + 128);

  v9((v1 + v8), v2);
  v12 = *(v1 + OBJC_IVAR____TtC9Coherence10AssetActor__task);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_1AE1A801C()
{
  v1 = *(v0 + 16);
  swift_continuation_throwingResume();
  v2 = *(v0 + 8);

  return v2();
}

void (*sub_1AE1A807C(uint64_t a1, unint64_t a2))(void *)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 112);
  if (*(v6 + 16))
  {

    v7 = sub_1ADDDE7CC(a1, a2);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 24 * v7 + 16);

      if (v9 > 1)
      {
        v10 = sub_1AE1A79F8();
        result = sub_1ADF5F264(v26, a1, a2);
        if (*v12)
        {
          v13 = v12[2];
          v14 = __OFSUB__(v13, 1);
          v15 = v13 - 1;
          if (v14)
          {
            __break(1u);
          }

          else
          {
            v12[2] = v15;
            (result)(v26, 0);
            return (v10)(v27, 0);
          }
        }

        else
        {
          (result)(v26, 0);
          return (v10)(v27, 0);
        }

        return result;
      }
    }

    else
    {
    }
  }

  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v16 = sub_1AE23C78C();
  __swift_project_value_buffer(v16, qword_1ED96F1C8);

  sub_1ADDD86D8(a1, a2);
  v17 = sub_1AE23C76C();
  v18 = sub_1AE23D60C();

  sub_1ADDCC35C(a1, a2);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v28 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1AE1FB594(*(v3 + 120), *(v3 + 128), &v28);
    *(v19 + 12) = 2080;
    v27[0] = sub_1AE23BEAC();
    v27[1] = v21;
    v26[0] = 47;
    v26[1] = 0xE100000000000000;
    v27[4] = 95;
    v27[5] = 0xE100000000000000;
    sub_1ADE42DEC();
    v22 = sub_1AE23D82C();
    v24 = v23;

    v25 = sub_1AE1FB594(v22, v24, &v28);

    *(v19 + 14) = v25;
    _os_log_impl(&dword_1ADDCA000, v17, v18, "%s deinitAsset %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v20, -1, -1);
    MEMORY[0x1B26FDA50](v19, -1, -1);
  }

  swift_beginAccess();
  sub_1ADDD86D8(a1, a2);
  sub_1AE1D1D08(0, 0, 0, a1, a2);
  return swift_endAccess();
}

uint64_t sub_1AE1A83E8(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v4 = sub_1AE23BDDC();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v6 = *(v5 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A84B8, v2, 0);
}

uint64_t sub_1AE1A84B8()
{
  v60 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v4 = v0[16];
  v5 = v0[14];
  v6 = sub_1AE23C78C();
  __swift_project_value_buffer(v6, qword_1ED96F1C8);
  v58 = *(v3 + 16);
  v58(v1, v5, v2);

  v7 = sub_1AE23C76C();
  v8 = sub_1AE23D60C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  v11 = v0[17];
  v12 = v0[18];
  if (v9)
  {
    v13 = v0[16];
    v14 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v14 = 136315394;
    *(v14 + 4) = sub_1AE1FB594(*(v13 + 120), *(v13 + 128), &v59);
    *(v14 + 12) = 2080;
    sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
    v15 = sub_1AE23DD9C();
    v17 = v16;
    (*(v12 + 8))(v10, v11);
    v18 = sub_1AE1FB594(v15, v17, &v59);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_1ADDCA000, v7, v8, "%s presentedSubitemDidAppear %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v57, -1, -1);
    MEMORY[0x1B26FDA50](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v19 = v0[14];
  v0[8] = sub_1AE23BCFC();
  v0[9] = v20;
  v0[10] = 95;
  v0[11] = 0xE100000000000000;
  v0[12] = 47;
  v0[13] = 0xE100000000000000;
  sub_1ADE42DEC();
  sub_1AE23D82C();

  v21 = sub_1AE23BE1C();
  v23 = v22;
  v0[21] = v21;
  v0[22] = v22;
  sub_1ADDE0F78(v21, v22);

  if (v23 >> 60 != 15)
  {
    v24 = v0[16];
    sub_1ADDE1588(v21, v23);
    swift_beginAccess();
    v25 = *(v24 + 112);
    if (*(v25 + 16))
    {
      v26 = *(v24 + 112);

      v27 = sub_1ADDDE7CC(v21, v23);
      if (v28)
      {
        v29 = (*(v25 + 56) + 24 * v27);
        v0[23] = *v29;
        v30 = v29[1];
        v55 = v29[2];
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        v32 = *(v30 + 16);
        swift_unknownObjectRetain();
        v33 = v32(ObjectType, v30);
        swift_unknownObjectRelease();
        if (v33)
        {
          v54 = v30;
          v35 = v0[18];
          v34 = v0[19];
          v36 = v0[17];
          v37 = v0[15];
          v58(v34, v0[14], v36);
          v38 = type metadata accessor for CRAssetProviderUrl(0);
          v39 = *(v38 + 48);
          v40 = *(v38 + 52);
          v41 = swift_allocObject();
          v0[24] = v41;

          swift_defaultActor_initialize();
          *(v41 + 112) = 0;
          *(v41 + 120) = 0;
          *(v41 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_isTemporary) = 0;
          result = (*(v35 + 32))(v41 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl, v34, v36);
          *(v41 + 120) = v37;
          v43 = *(v37 + 24);
          v44 = __OFADD__(v43, 1);
          v45 = v43 + 1;
          if (v44)
          {
            __break(1u);
          }

          else
          {
            *(v37 + 24) = v45;
            swift_beginAccess();
            sub_1ADDE0F78(v21, v23);

            v46 = *(v24 + 112);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59 = *(v24 + 112);
            *(v24 + 112) = 0x8000000000000000;
            sub_1ADEC01B0(v41, &off_1F23C6BC8, v55, v21, v23, isUniquelyReferenced_nonNull_native);
            sub_1ADDE1588(v21, v23);
            *(v24 + 112) = v59;
            swift_endAccess();
            v48 = *(v54 + 48);
            swift_unknownObjectRetain();

            v56 = (v48 + *v48);
            v49 = v48[1];
            v50 = swift_task_alloc();
            v0[25] = v50;
            *v50 = v0;
            v50[1] = sub_1AE1A8B28;

            return (v56)(v41, &off_1F23C6BC8, ObjectType, v54);
          }

          return result;
        }

        sub_1ADDE1588(v21, v23);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1ADDE1588(v21, v23);
      }
    }

    else
    {
      sub_1ADDE1588(v21, v23);
    }
  }

  v52 = v0[19];
  v51 = v0[20];

  v53 = v0[1];

  return v53();
}

uint64_t sub_1AE1A8B28()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 128);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A8C78, v4, 0);
}

uint64_t sub_1AE1A8C78()
{
  v1 = v0[23];
  v2 = v0[24];
  sub_1ADDE1588(v0[21], v0[22]);

  swift_unknownObjectRelease();
  v4 = v0[19];
  v3 = v0[20];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1AE1A8CFC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_1AE23BDDC();
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A8DBC, v1, 0);
}

uint64_t sub_1AE1A8DBC()
{
  v40 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = sub_1AE23C78C();
  __swift_project_value_buffer(v6, qword_1ED96F1C8);
  (*(v2 + 16))(v1, v5, v3);

  v7 = sub_1AE23C76C();
  v8 = sub_1AE23D60C();

  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[25];
  v10 = v0[26];
  v12 = v0[24];
  if (v9)
  {
    v13 = v0[23];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v39 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1AE1FB594(*(v13 + 120), *(v13 + 128), &v39);
    *(v14 + 12) = 2080;
    sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
    v16 = sub_1AE23DD9C();
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_1AE1FB594(v16, v18, &v39);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1ADDCA000, v7, v8, "%s accommodatePresentedSubitemDeletion %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v15, -1, -1);
    MEMORY[0x1B26FDA50](v14, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v20 = v0[22];
  v0[16] = sub_1AE23BCFC();
  v0[17] = v21;
  v0[18] = 95;
  v0[19] = 0xE100000000000000;
  v0[20] = 47;
  v0[21] = 0xE100000000000000;
  sub_1ADE42DEC();
  sub_1AE23D82C();

  v22 = sub_1AE23BE1C();
  v24 = v23;
  v0[27] = v22;
  v0[28] = v23;
  sub_1ADDE0F78(v22, v23);

  if (v24 >> 60 != 15)
  {
    v25 = v0[23];
    sub_1ADDE1588(v22, v24);
    swift_beginAccess();
    v26 = *(v25 + 112);
    if (*(v26 + 16))
    {

      v27 = sub_1ADDDE7CC(v22, v24);
      if (v28)
      {
        v29 = (*(v26 + 56) + 24 * v27);
        v0[29] = *v29;
        v30 = v29[1];
        swift_unknownObjectRetain();

        ObjectType = swift_getObjectType();
        v32 = *(v30 + 40);
        v38 = (v32 + *v32);
        v33 = v32[1];
        v34 = swift_task_alloc();
        v0[30] = v34;
        *v34 = v0;
        v34[1] = sub_1AE1A9258;

        return v38(ObjectType, v30);
      }
    }

    sub_1ADDE1588(v22, v24);
  }

  v36 = v0[26];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1AE1A9258(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = a2;
  v5 = v3[30];
  v6 = v3[23];
  v8 = *v2;
  v4[31] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AE1A9378, v6, 0);
}

uint64_t sub_1AE1A9378()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 184);
  v4 = sub_1AE1A79F8();
  v6 = sub_1ADF5F264((v0 + 48), v2, v1);
  if (*v5)
  {
    v7 = *(v0 + 120);
    v9 = *(v0 + 224);
    v8 = *(v0 + 232);
    v10 = *(v0 + 216);
    *v5 = *(v0 + 248);
    v5[1] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    (v6)(v0 + 48, 0);
    (v4)(v0 + 16, 0);
    v11 = v10;
    v12 = v9;
  }

  else
  {
    v14 = *(v0 + 224);
    v13 = *(v0 + 232);
    v15 = *(v0 + 216);
    (v6)(v0 + 48, 0);
    (v4)(v0 + 16, 0);
    v11 = v15;
    v12 = v14;
  }

  sub_1ADDE1588(v11, v12);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v16 = *(v0 + 208);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AE1A94D8(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v4 = sub_1AE23BDDC();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A95DC, v1, 0);
}

uint64_t sub_1AE1A95DC()
{
  v59 = v0;
  if (qword_1ED966B00 == -1)
  {
    goto LABEL_2;
  }

LABEL_27:
  swift_once();
LABEL_2:
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v6 = sub_1AE23C78C();
  __swift_project_value_buffer(v6, qword_1ED96F1C8);
  (*(v3 + 16))(v1, v4, v2);

  v7 = sub_1AE23C76C();
  v8 = sub_1AE23D60C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 176);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  if (v9)
  {
    v13 = *(v0 + 136);
    v14 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = v57;
    *v14 = 136315394;
    *(v14 + 4) = sub_1AE1FB594(*(v13 + 120), *(v13 + 128), &v58);
    *(v14 + 12) = 2080;
    sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
    v15 = sub_1AE23DD9C();
    v17 = v16;
    v20 = *(v12 + 8);
    v19 = v12 + 8;
    v18 = v20;
    v20(v10, v11);
    v21 = sub_1AE1FB594(v15, v17, &v58);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1ADDCA000, v7, v8, "%s accommodatePresentedItemDeletion %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v57, -1, -1);
    MEMORY[0x1B26FDA50](v14, -1, -1);
  }

  else
  {

    v22 = *(v12 + 8);
    v19 = v12 + 8;
    v18 = v22;
    v22(v10, v11);
  }

  *(v0 + 184) = v19;
  *(v0 + 192) = v18;
  v23 = *(v0 + 136);
  swift_beginAccess();
  v24 = *(v23 + 112);
  *(v0 + 200) = v24;
  v25 = *(v24 + 32);
  *(v0 + 264) = v25;
  v26 = 1 << v25;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v24 + 64);

  v29 = 0;
  if (v28)
  {
    while (1)
    {
      while (1)
      {
        v31 = *(v0 + 200);
LABEL_16:
        *(v0 + 208) = v28;
        *(v0 + 216) = v29;
        v54 = *(v0 + 160);
        v55 = *(v0 + 152);
        v53 = *(v0 + 144);
        v33 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v34 = v33 | (v29 << 6);
        v35 = (*(v31 + 48) + 16 * v34);
        v36 = *v35;
        *(v0 + 224) = *v35;
        v37 = v35[1];
        *(v0 + 232) = v37;
        v38 = (*(v31 + 56) + 24 * v34);
        *(v0 + 240) = *v38;
        v39 = v38[1];
        ObjectType = swift_getObjectType();
        v41 = *(v39 + 24);
        swift_unknownObjectRetain_n();
        sub_1ADDD86D8(v36, v37);
        v52 = ObjectType;
        v41(ObjectType, v39);
        swift_unknownObjectRelease();
        if ((*(v54 + 48))(v53, 1, v55) != 1)
        {
          break;
        }

        v30 = *(v0 + 144);
        swift_unknownObjectRelease();
        sub_1ADDCC35C(v36, v37);
        sub_1ADDCEDE0(v30, &qword_1EB5B9DC0, &qword_1AE240B90);
        if (!v28)
        {
          goto LABEL_12;
        }
      }

      v42 = *(v0 + 128);
      (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
      sub_1AE23BCBC();
      sub_1AE23BCBC();
      LOBYTE(v42) = sub_1AE23CE4C();

      if (v42)
      {
        break;
      }

      v43 = *(v0 + 184);
      (*(v0 + 192))(*(v0 + 168), *(v0 + 152));
      swift_unknownObjectRelease();
      sub_1ADDCC35C(v36, v37);
      if (!v28)
      {
        goto LABEL_12;
      }
    }

    v49 = *(v39 + 40);
    swift_unknownObjectRetain();
    v56 = (v49 + *v49);
    v50 = v49[1];
    v51 = swift_task_alloc();
    *(v0 + 248) = v51;
    *v51 = v0;
    v51[1] = sub_1AE1A9BB8;

    return v56(v52, v39);
  }

  else
  {
    while (1)
    {
LABEL_12:
      v32 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v31 = *(v0 + 200);
      if (v32 >= (((1 << *(v0 + 264)) + 63) >> 6))
      {
        break;
      }

      v28 = *(v31 + 8 * v32 + 64);
      ++v29;
      if (v28)
      {
        v29 = v32;
        goto LABEL_16;
      }
    }

    v44 = *(v0 + 168);
    v45 = *(v0 + 176);
    v46 = *(v0 + 144);

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1AE1A9BB8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[13] = v2;
  v4[14] = a1;
  v4[15] = a2;
  v5 = v3[31];
  v6 = v3[30];
  v7 = v3[17];
  v9 = *v2;
  v4[32] = a1;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1A9CF4, v7, 0);
}

uint64_t sub_1AE1A9CF4()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 136);
  v4 = sub_1AE1A79F8();
  v6 = sub_1ADF5F264((v0 + 48), v2, v1);
  if (*v5)
  {
    v7 = *(v0 + 120);
    *v5 = *(v0 + 256);
    v5[1] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  (v6)(v0 + 48, 0);
  (v4)(v0 + 16, 0);
  v8 = *(v0 + 256);
  v9 = *(v0 + 240);
  v11 = *(v0 + 184);
  v10 = *(v0 + 192);
  v12 = *(v0 + 168);
  v13 = *(v0 + 152);
  sub_1ADDCC35C(*(v0 + 224), *(v0 + 232));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  result = v10(v12, v13);
  v15 = *(v0 + 216);
  v16 = (*(v0 + 208) - 1) & *(v0 + 208);
  if (v16)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      return result;
    }

    result = *(v0 + 200);
    if (v18 >= (((1 << *(v0 + 264)) + 63) >> 6))
    {
      break;
    }

    v16 = *(result + 8 * v18 + 64);
    ++v15;
    if (v16)
    {
      v15 = v18;
      while (1)
      {
        *(v0 + 208) = v16;
        *(v0 + 216) = v15;
        v39 = *(v0 + 160);
        v40 = *(v0 + 152);
        v38 = *(v0 + 144);
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v20 = v19 | (v15 << 6);
        v21 = (*(result + 48) + 16 * v20);
        v22 = *v21;
        *(v0 + 224) = *v21;
        v23 = v21[1];
        *(v0 + 232) = v23;
        v24 = (*(result + 56) + 24 * v20);
        *(v0 + 240) = *v24;
        v25 = v24[1];
        ObjectType = swift_getObjectType();
        v27 = *(v25 + 24);
        swift_unknownObjectRetain_n();
        sub_1ADDD86D8(v22, v23);
        v37 = ObjectType;
        v27(ObjectType, v25);
        swift_unknownObjectRelease();
        if ((*(v39 + 48))(v38, 1, v40) == 1)
        {
          v17 = *(v0 + 144);
          swift_unknownObjectRelease();
          sub_1ADDCC35C(v22, v23);
          result = sub_1ADDCEDE0(v17, &qword_1EB5B9DC0, &qword_1AE240B90);
          if (!v16)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v28 = *(v0 + 128);
          (*(*(v0 + 160) + 32))(*(v0 + 168), *(v0 + 144), *(v0 + 152));
          sub_1AE23BCBC();
          sub_1AE23BCBC();
          LOBYTE(v28) = sub_1AE23CE4C();

          if (v28)
          {
            v34 = *(v25 + 40);
            swift_unknownObjectRetain();
            v41 = (v34 + *v34);
            v35 = v34[1];
            v36 = swift_task_alloc();
            *(v0 + 248) = v36;
            *v36 = v0;
            v36[1] = sub_1AE1A9BB8;

            return v41(v37, v25);
          }

          v29 = *(v0 + 184);
          (*(v0 + 192))(*(v0 + 168), *(v0 + 152));
          swift_unknownObjectRelease();
          result = sub_1ADDCC35C(v22, v23);
          if (!v16)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        result = *(v0 + 200);
      }
    }
  }

  v30 = *(v0 + 168);
  v31 = *(v0 + 176);
  v32 = *(v0 + 144);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1AE1AA154(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 224) = a3;
  *(v4 + 88) = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  v7 = sub_1AE23BDDC();
  *(v4 + 120) = v7;
  v8 = *(v7 - 8);
  *(v4 + 128) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AA264, a4, 0);
}

uint64_t sub_1AE1AA264()
{
  v44 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = sub_1AE23C78C();
  *(v0 + 152) = __swift_project_value_buffer(v3, qword_1ED96F1C8);

  v4 = sub_1AE23C76C();
  v5 = sub_1AE23D60C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1AE1FB594(*(v6 + 120), *(v6 + 128), &v43);
    *(v8 + 12) = 2080;
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    sub_1ADDD86D8(v10, v11);
    *(v0 + 40) = sub_1AE23BEAC();
    *(v0 + 48) = v12;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC();
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v10, v11);

    v16 = sub_1AE1FB594(v13, v15, &v43);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v4, v5, "%s readAsset %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v9, -1, -1);
    MEMORY[0x1B26FDA50](v8, -1, -1);
  }

  v17 = *(v0 + 96);
  v18 = *(v0 + 104);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  v21 = *(v18 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 224);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 160) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:
      **(v0 + 88) = xmmword_1AE2427C0;
      v30 = *(v0 + 136);
      v29 = *(v0 + 144);
      v31 = *(v0 + 112);

      v32 = *(v0 + 8);

      return v32();
    }
  }

  v34 = *(v0 + 104);
  v35 = swift_getObjectType();
  v36 = *(v34 + 120);
  *(v0 + 168) = v36;
  v37 = *(v34 + 128);
  *(v0 + 176) = v37;
  v38 = *(v26 + 32);
  swift_unknownObjectRetain();
  v42 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 184) = v40;
  *v40 = v0;
  v40[1] = sub_1AE1AA710;
  v41 = *(v0 + 112);

  return v42(v41, v36, v37, v35, v26);
}

uint64_t sub_1AE1AA710()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 104);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AA83C, v3, 0);
}

uint64_t sub_1AE1AA83C()
{
  v32 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[20];
    v5 = v0[11];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    *v5 = xmmword_1AE2427C0;
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[14];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[18];
    v12 = v0[17];
    v13 = v0[13];
    (*(v2 + 32))(v11, v3, v1);
    (*(v2 + 16))(v12, v11, v1);

    v14 = sub_1AE23C76C();
    v15 = sub_1AE23D60C();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[21];
      v16 = v0[22];
      v19 = v0[16];
      v18 = v0[17];
      v20 = v0[15];
      v21 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = v30;
      *v21 = 136315394;
      *(v21 + 4) = sub_1AE1FB594(v17, v16, &v31);
      *(v21 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v22 = sub_1AE23DD9C();
      v24 = v23;
      v25 = *(v19 + 8);
      v25(v18, v20);
      v26 = sub_1AE1FB594(v22, v24, &v31);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_1ADDCA000, v14, v15, "%s reading url %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v30, -1, -1);
      MEMORY[0x1B26FDA50](v21, -1, -1);
    }

    else
    {
      v28 = v0[16];
      v27 = v0[17];
      v29 = v0[15];

      v25 = *(v28 + 8);
      v25(v27, v29);
    }

    v0[24] = v25;

    return MEMORY[0x1EEE6DFA0](sub_1AE1AAB58, 0, 0);
  }
}

uint64_t sub_1AE1AAB58()
{
  v1 = v0[18];
  v2 = sub_1AE23BDFC();
  v4 = v3;
  v0[25] = 0;
  v5 = v0[13];
  v0[26] = v4;
  v0[27] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1AE1AABF0, v5, 0);
}

uint64_t sub_1AE1AABF0()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[15];
  v7 = v0[16];
  v8 = v0[11];
  v9 = v0[12];
  *v8 = v2;
  v8[1] = v1;

  sub_1ADDD86D8(v2, v1);
  v3(v5, v6);
  swift_unknownObjectRelease();

  sub_1ADDCC35C(v2, v1);
  v11 = v0[17];
  v10 = v0[18];
  v12 = v0[14];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1AE1AACE4()
{
  v1 = v0[24];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[14];
  swift_unknownObjectRelease();
  v1(v4, v5);

  v8 = v0[1];
  v9 = v0[25];

  return v8();
}

uint64_t sub_1AE1AAD98(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 136) = a6;
  *(v7 + 144) = v6;
  *(v7 + 120) = a4;
  *(v7 + 128) = a5;
  *(v7 + 288) = a3;
  *(v7 + 112) = a1;
  v9 = *(a6 - 8);
  *(v7 + 152) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 160) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  *(v7 + 168) = swift_task_alloc();
  v12 = sub_1AE23BDDC();
  *(v7 + 176) = v12;
  v13 = *(v12 - 8);
  *(v7 + 184) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 192) = swift_task_alloc();
  v15 = swift_task_alloc();
  v16 = *a2;
  *(v7 + 200) = v15;
  *(v7 + 208) = v16;

  return MEMORY[0x1EEE6DFA0](sub_1AE1AAF08, v6, 0);
}

uint64_t sub_1AE1AAF08()
{
  v45 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 144);
  v3 = sub_1AE23C78C();
  *(v0 + 216) = __swift_project_value_buffer(v3, qword_1ED96F1C8);

  v4 = sub_1AE23C76C();
  v5 = sub_1AE23D60C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v44 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1AE1FB594(*(v7 + 120), *(v7 + 128), &v44);
    *(v8 + 12) = 2080;
    v10 = *(v6 + 16);
    v11 = *(v6 + 24);
    sub_1ADDD86D8(v10, v11);
    *(v0 + 64) = sub_1AE23BEAC();
    *(v0 + 72) = v12;
    *(v0 + 80) = 47;
    *(v0 + 88) = 0xE100000000000000;
    *(v0 + 96) = 95;
    *(v0 + 104) = 0xE100000000000000;
    sub_1ADE42DEC();
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v10, v11);

    v16 = sub_1AE1FB594(v13, v15, &v44);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v4, v5, "%s readAsset %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v9, -1, -1);
    MEMORY[0x1B26FDA50](v8, -1, -1);
  }

  v17 = *(v0 + 208);
  v18 = *(v0 + 144);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  v21 = *(v18 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 288);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 224) = *v25;
  v26 = v25[1];
  *(v0 + 232) = v26;
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:
      (*(*(v0 + 152) + 56))(*(v0 + 112), 1, 1, *(v0 + 136));
      v30 = *(v0 + 192);
      v29 = *(v0 + 200);
      v32 = *(v0 + 160);
      v31 = *(v0 + 168);

      v33 = *(v0 + 8);

      return v33();
    }
  }

  v35 = *(v0 + 144);
  v36 = swift_getObjectType();
  v37 = *(v35 + 120);
  *(v0 + 240) = v37;
  v38 = *(v35 + 128);
  *(v0 + 248) = v38;
  v39 = *(v26 + 32);
  swift_unknownObjectRetain();
  v43 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  *(v0 + 256) = v41;
  *v41 = v0;
  v41[1] = sub_1AE1AB3E0;
  v42 = *(v0 + 168);

  return v43(v42, v37, v38, v36, v26);
}

uint64_t sub_1AE1AB3E0()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 144);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AB50C, v3, 0);
}

uint64_t sub_1AE1AB50C()
{
  v42 = v0;
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[28];
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[14];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    (*(v5 + 56))(v7, 1, 1, v6);
    v9 = v0[24];
    v8 = v0[25];
    v11 = v0[20];
    v10 = v0[21];

    v12 = v0[1];

    return v12();
  }

  else
  {
    v14 = v0[27];
    v16 = v0[24];
    v15 = v0[25];
    v17 = v0[18];
    (*(v2 + 32))(v15, v3, v1);
    (*(v2 + 16))(v16, v15, v1);

    v18 = sub_1AE23C76C();
    v19 = sub_1AE23D60C();

    if (os_log_type_enabled(v18, v19))
    {
      v21 = v0[30];
      v20 = v0[31];
      v23 = v0[23];
      v22 = v0[24];
      v24 = v0[22];
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v41 = v39;
      *v25 = 136315394;
      *(v25 + 4) = sub_1AE1FB594(v21, v20, &v41);
      *(v25 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v26 = sub_1AE23DD9C();
      v28 = v27;
      v29 = *(v23 + 8);
      v29(v22, v24);
      v30 = sub_1AE1FB594(v26, v28, &v41);

      *(v25 + 14) = v30;
      _os_log_impl(&dword_1ADDCA000, v18, v19, "%s reading url %s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v39, -1, -1);
      MEMORY[0x1B26FDA50](v25, -1, -1);
    }

    else
    {
      v32 = v0[23];
      v31 = v0[24];
      v33 = v0[22];

      v29 = *(v32 + 8);
      v29(v31, v33);
    }

    v0[33] = v29;
    v40 = (v0[15] + *v0[15]);
    v34 = *(v0[15] + 4);
    v35 = swift_task_alloc();
    v0[34] = v35;
    *v35 = v0;
    v35[1] = sub_1AE1AB8E4;
    v36 = v0[25];
    v37 = v0[20];
    v38 = v0[16];

    return v40(v37, v36);
  }
}

uint64_t sub_1AE1AB8E4()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_1AE1ABBD8;
  }

  else
  {
    v6 = sub_1AE1ABA10;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1AE1ABA10()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 208);
  v20 = *(v0 + 200);
  v21 = *(v0 + 264);
  v3 = *(v0 + 184);
  v19 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  *(v0 + 40) = *(v0 + 224);
  *(v0 + 56) = v2;
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  *(v8 + 24) = v4;

  swift_unknownObjectRetain();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD10, &qword_1AE2544F0);
  sub_1AE1ABC9C(v0 + 40, sub_1AE1B5520, v8, v9, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v10);
  swift_unknownObjectRelease();
  v11 = *(v0 + 40);
  v12 = *(v0 + 56);
  swift_unknownObjectRelease();

  v21(v20, v19);

  (*(v5 + 56))(v7, 0, 1, v6);
  (*(v5 + 8))(v4, v6);
  v14 = *(v0 + 192);
  v13 = *(v0 + 200);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AE1ABBD8()
{
  v1 = v0[33];
  v2 = v0[28];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[22];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  swift_unknownObjectRelease();
  v1(v4, v5);

  v9 = v0[1];
  v10 = v0[35];

  return v9();
}

uint64_t sub_1AE1ABC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_1AE1ABDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AE1ABDCC, a1, 0);
}

uint64_t sub_1AE1ABDCC()
{
  v1 = v0[2];
  sub_1AE1A807C(v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1AE1ABE30@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v49 - v7;
  v57 = sub_1AE23BDDC();
  v55 = *(v57 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - v11;
  v12 = sub_1AE23C9BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1AE23C96C();
  v59 = *(v17 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADDCEF80(&qword_1EB5BB808, MEMORY[0x1E6966620]);
  sub_1AE23C95C();
  sub_1ADDD86D8(a1, a2);
  sub_1AE1B1DC4(a1, a2);
  v51 = 0;
  v21 = a1;
  v56 = a2;
  sub_1ADDCC35C(a1, a2);
  sub_1AE23C94C();
  (*(v13 + 8))(v16, v12);
  sub_1ADDCEF80(&qword_1ED9664C0, MEMORY[0x1E69663E0]);
  v60 = v17;
  v58 = v20;
  v22 = v50;
  v23 = sub_1AE23C97C();
  v25 = sub_1AE03C8CC(v23, v24);

  v26 = sub_1ADDCC6B4(v25);
  v28 = v27;

  type metadata accessor for CRAssetRef();
  v29 = swift_allocObject();
  v29[2] = v26;
  v29[3] = v28;
  v30 = v52;
  v53 = v29;
  v29[4] = v52;
  v31 = type metadata accessor for CRFileSnapshot();
  sub_1ADDD86D8(v26, v28);

  sub_1AE162BBC(0, 0, v22);
  v32 = v30;
  sub_1ADDCEE40(v30 + 56, &v65, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (v66)
  {
    sub_1ADE23E6C(&v65, v67);
    v34 = v68;
    v33 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v35 = (*(v33 + 8))(v21, v56, v34, v33);
    v37 = v36;
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    sub_1ADDCEDE0(&v65, &qword_1EB5B9DB0, &qword_1AE240B80);
    v35 = a1;
    v37 = v56;
    sub_1ADDD86D8(a1, v56);
  }

  v38 = v51;
  sub_1AE23BEDC();
  if (v38)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_1ADDCC35C(v35, v37);
    v39 = *(v55 + 32);
    v40 = v54;
    v41 = v57;
    v39(v54, v22, v57);
    v42 = *(v31 + 48);
    v43 = *(v31 + 52);
    v44 = swift_allocObject();
    v39((v44 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url), v40, v41);
    v45 = *(v32 + 24);
    v46 = swift_allocObject();
    v46[2] = v26;
    v46[3] = v28;
    v46[4] = v44;
    v67[0] = &unk_1AE242370;
    v67[1] = v46;
    swift_weakInit();
    sub_1ADDD86D8(v26, v28);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
    v47 = v62;
    sub_1AE23D1FC();

    sub_1ADDCC35C(v26, v28);
    (*(v63 + 8))(v47, v64);
    result = (*(v59 + 8))(v58, v60);
    *v61 = v53;
  }

  return result;
}

uint64_t sub_1AE1AC490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AE1AC4B8, a1, 0);
}

void (*sub_1AE1AC4B8())(void *)
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v1 + 112);

  v6 = sub_1ADDDE7CC(v4, v3);
  if ((v7 & 1) == 0)
  {

LABEL_9:
    v33 = *(v0 + 168);
    v34 = *(v0 + 176);
    v35 = *(v0 + 160);
    v36 = type metadata accessor for CRAssetProviderUniqueFile(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v39 + 112) = 0;
    *(v39 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v40 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
    v41 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
    v42 = sub_1AE23BDDC();
    (*(*(v42 - 8) + 16))(v39 + v41, v34 + v40, v42);
    *(v39 + 120) = v34;
    swift_beginAccess();

    sub_1ADDD86D8(v35, v33);

    v43 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1ADEC01B0(v39, &off_1F23C6B90, 1, v35, v33, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(v35, v33);
    *(v1 + 112) = v55;
    swift_endAccess();

    goto LABEL_10;
  }

  v8 = (*(v2 + 56) + 24 * v6);
  *(v0 + 184) = *v8;
  v9 = v8[1];
  v10 = v8[2];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v12 = *(v9 + 8);
  swift_unknownObjectRetain();
  v13 = v12(ObjectType, v9);
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = *(v0 + 176);
    v15 = type metadata accessor for CRAssetProviderUniqueFile(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    *(v0 + 192) = v18;
    swift_defaultActor_initialize();
    *(v18 + 112) = 0;
    *(v18 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v19 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
    v20 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
    v21 = sub_1AE23BDDC();
    result = (*(*(v21 - 8) + 16))(v18 + v20, v14 + v19, v21);
    *(v18 + 120) = v14;
    v23 = __OFADD__(v10, 1);
    v24 = v10 + 1;
    if (!v23)
    {
      v26 = *(v0 + 168);
      v25 = *(v0 + 176);
      v27 = *(v0 + 160);
      swift_beginAccess();

      sub_1ADDD86D8(v27, v26);

      v28 = *(v1 + 112);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v1 + 112);
      *(v1 + 112) = 0x8000000000000000;
      sub_1ADEC01B0(v18, &off_1F23C6B90, v24, v27, v26, v29);
      sub_1ADDCC35C(v27, v26);
      *(v1 + 112) = v54;
      swift_endAccess();
      v30 = *(v9 + 48);
      swift_unknownObjectRetain();

      v53 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      *(v0 + 200) = v32;
      *v32 = v0;
      v32[1] = sub_1AE1AC9B8;

      return (v53)(v18, &off_1F23C6B90, ObjectType, v9);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v47 = *(v0 + 160);
  v46 = *(v0 + 168);
  v48 = *(v0 + 152);
  v49 = sub_1AE1A79F8();
  result = sub_1ADF5F264((v0 + 48), v47, v46);
  if (*v50)
  {
    v51 = v50[2];
    v23 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v23)
    {
      goto LABEL_18;
    }

    v50[2] = v52;
  }

  (result)(v0 + 48, 0);
  (v49)(v0 + 16, 0);
  swift_unknownObjectRelease();
LABEL_10:
  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1AE1AC9B8()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 152);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B58F4, v4, 0);
}

uint64_t sub_1AE1ACB08(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v48 - v7;
  v8 = sub_1AE23BDDC();
  v58 = *(v8 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v48 - v12;
  v64 = sub_1AE23C96C();
  v57 = *(v64 - 8);
  v13 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1AE23C9BC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23C9AC();
  v21 = objc_allocWithZone(MEMORY[0x1E695DF48]);
  v56 = a1;
  v22 = sub_1AE23BD1C();
  v23 = [v21 initWithURL_];

  if (v23)
  {
    v53 = v17;
    v54 = v16;
    v49 = v8;
    v50 = v2;
    [v23 open];
    v24 = swift_slowAlloc();
    if ([v23 hasBytesAvailable])
    {
      do
      {
        v25 = [v23 read:v24 maxLength:0x4000];
        if (!v25)
        {
          break;
        }

        if ((v25 & 0x8000000000000000) != 0)
        {
          sub_1ADE42E40();
          swift_allocError();
          *v46 = 0xD00000000000002ALL;
          *(v46 + 8) = 0x80000001AE2634A0;
          *(v46 + 16) = 0;
          swift_willThrow();

          goto LABEL_12;
        }

        MEMORY[0x1B26FB230](v24, v24 + v25);
      }

      while (([v23 hasBytesAvailable] & 1) != 0);
    }

    MEMORY[0x1B26FDA50](v24, -1, -1);
    [v23 close];
    sub_1AE23C99C();
    sub_1ADDCEF80(&qword_1ED9664C0, MEMORY[0x1E69663E0]);
    v26 = v64;
    v27 = sub_1AE23C97C();
    v29 = sub_1AE03C8CC(v27, v28);

    v17 = sub_1ADDCC6B4(v29);
    v48 = v30;

    sub_1ADDCEE40(v3 + 56, &v59, &qword_1EB5B9DB0, &qword_1AE240B80);
    if (v60)
    {
      sub_1ADE23E6C(&v59, v61);
      v31 = v62;
      v32 = v63;
      __swift_project_boxed_opaque_existential_1(v61, v62);
      v33 = v55;
      (*(v32 + 24))(v56, v31, v32);

      (*(v57 + 8))(v15, v26);
      (*(v53 + 8))(v20, v54);
      v34 = type metadata accessor for CRFileSnapshot();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      v37 = swift_allocObject();
      (*(v58 + 32))(v37 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v33, v49);
      __swift_destroy_boxed_opaque_existential_1(v61);
    }

    else
    {
      v55 = v17;
      sub_1ADDCEDE0(&v59, &qword_1EB5B9DB0, &qword_1AE240B80);
      v40 = v58;
      v41 = *(v58 + 16);
      v17 = v51;
      v42 = v49;
      v41(v51, v56, v49);
      v43 = v3 + OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory;
      v44 = v52;
      v41(v52, v43, v42);
      (*(v40 + 56))(v44, 0, 1, v42);
      v45 = v50;
      sub_1AE163454(v17, 0, 0, 0, v44);
      if (v45)
      {
        sub_1ADDCC35C(v55, v48);

        (*(v57 + 8))(v15, v64);
LABEL_12:
        (*(v53 + 8))(v20, v54);
      }

      else
      {

        (*(v57 + 8))(v15, v64);
        (*(v53 + 8))(v20, v54);
        return v55;
      }
    }
  }

  else
  {
    sub_1ADE42E40();
    swift_allocError();
    *v38 = 0xD000000000000025;
    *(v38 + 8) = 0x80000001AE263470;
    *(v38 + 16) = 0;
    swift_willThrow();
    v39 = *(v17 + 8);
    v17 += 8;
    v39(v20, v16);
  }

  return v17;
}

void sub_1AE1AD190(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = v3;
  v60 = *MEMORY[0x1E69E9840];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v45 - v13;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  if (a2)
  {
    v47 = &v45 - v13;
    v48 = v10;
    v49 = v12;
    v15 = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
    v56 = 0;
    v16 = sub_1AE23BD1C();
    v17 = swift_allocObject();
    v17[2] = &v57;
    v17[3] = v5;
    v17[4] = &v56;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1AE1B56A4;
    *(v18 + 24) = v17;
    v54 = sub_1AE02ACF8;
    v55 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v51 = 1107296256;
    v52 = sub_1ADE8AB00;
    v53 = &block_descriptor_171;
    v19 = _Block_copy(&aBlock);

    aBlock = 0;
    [v15 coordinateReadingItemAtURL:v16 options:0 error:&aBlock byAccessor:v19];
    _Block_release(v19);

    v20 = aBlock;
    v21 = aBlock;
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
    }

    if (v21)
    {
      v22 = v56;
      v56 = v20;
    }

    v23 = v56;
    if (v56)
    {
      swift_willThrow();
      v24 = v23;

      v25 = v57;
      v26 = v58;
      v27 = sub_1AE1B56A4;
      v28 = v59;
LABEL_9:
      sub_1AE1B5574(v25, v26, v28);
      v33 = v27;
LABEL_15:
      sub_1ADDDCE7C(v33, v17);
      v44 = *MEMORY[0x1E69E9840];
      return;
    }

    v34 = v59;
    v45 = sub_1AE1B56A4;
  }

  else
  {
    v29 = v12;
    v30 = sub_1AE1ACB08(a1);
    if (v4)
    {
      v28 = 0;
      v26 = 0;
      v25 = 0;
      v27 = 0;
      v17 = 0;
      goto LABEL_9;
    }

    v34 = v32;
    v47 = v14;
    v48 = v10;
    v49 = v29;
    v57 = v30;
    v58 = v31;
    v59 = v32;
    sub_1AE1B5574(0, 0, 0);
    v45 = 0;
    v17 = 0;
  }

  v46 = a3;
  if (v34)
  {
    v35 = *(v5 + 24);
    v37 = v57;
    v36 = v58;
    v38 = swift_allocObject();
    v38[2] = v37;
    v38[3] = v36;
    v38[4] = v34;
    aBlock = &unk_1AE254500;
    v51 = v38;
    swift_weakInit();

    sub_1ADDD86D8(v37, v36);

    sub_1ADDD86D8(v37, v36);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
    v39 = v47;
    sub_1AE23D1FC();

    sub_1ADDCC35C(v37, v36);
    (*(v48 + 8))(v39, v49);
    v40 = v59;
    if (v59)
    {
      v41 = v57;
      v42 = v58;
      type metadata accessor for CRAssetRef();
      v43 = swift_allocObject();
      v43[2] = v41;
      v43[3] = v42;
      v43[4] = v5;
      *v46 = v43;

      sub_1ADDD86D8(v41, v42);
      sub_1AE1B5574(v41, v42, v40);
      v33 = v45;
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1AE1AD65C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1AE1ACB08(a1);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *a2 = v3;
  a2[1] = v7;
  a2[2] = v8;

  return sub_1AE1B5574(v4, v5, v6);
}

uint64_t sub_1AE1AD6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AE1AD720, a1, 0);
}

void (*sub_1AE1AD720())(void *)
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v1 + 112);

  v6 = sub_1ADDDE7CC(v4, v3);
  if ((v7 & 1) == 0)
  {

LABEL_9:
    v33 = *(v0 + 168);
    v34 = *(v0 + 176);
    v35 = *(v0 + 160);
    v36 = type metadata accessor for CRAssetProviderUniqueFile(0);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v39 + 112) = 0;
    *(v39 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v40 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
    v41 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
    v42 = sub_1AE23BDDC();
    (*(*(v42 - 8) + 16))(v39 + v41, v34 + v40, v42);
    *(v39 + 120) = v34;
    swift_beginAccess();

    sub_1ADDD86D8(v35, v33);

    v43 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1ADEC01B0(v39, &off_1F23C6B90, 1, v35, v33, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(v35, v33);
    *(v1 + 112) = v55;
    swift_endAccess();

    goto LABEL_10;
  }

  v8 = (*(v2 + 56) + 24 * v6);
  *(v0 + 184) = *v8;
  v9 = v8[1];
  v10 = v8[2];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v12 = *(v9 + 8);
  swift_unknownObjectRetain();
  v13 = v12(ObjectType, v9);
  swift_unknownObjectRelease();
  if (v13)
  {
    v14 = *(v0 + 176);
    v15 = type metadata accessor for CRAssetProviderUniqueFile(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    v18 = swift_allocObject();
    *(v0 + 192) = v18;
    swift_defaultActor_initialize();
    *(v18 + 112) = 0;
    *(v18 + OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_isTemporary) = 0;
    v19 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;
    v20 = OBJC_IVAR____TtC9Coherence25CRAssetProviderUniqueFile_fileUrl;
    v21 = sub_1AE23BDDC();
    result = (*(*(v21 - 8) + 16))(v18 + v20, v14 + v19, v21);
    *(v18 + 120) = v14;
    v23 = __OFADD__(v10, 1);
    v24 = v10 + 1;
    if (!v23)
    {
      v26 = *(v0 + 168);
      v25 = *(v0 + 176);
      v27 = *(v0 + 160);
      swift_beginAccess();

      sub_1ADDD86D8(v27, v26);

      v28 = *(v1 + 112);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v54 = *(v1 + 112);
      *(v1 + 112) = 0x8000000000000000;
      sub_1ADEC01B0(v18, &off_1F23C6B90, v24, v27, v26, v29);
      sub_1ADDCC35C(v27, v26);
      *(v1 + 112) = v54;
      swift_endAccess();
      v30 = *(v9 + 48);
      swift_unknownObjectRetain();

      v53 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      *(v0 + 200) = v32;
      *v32 = v0;
      v32[1] = sub_1AE1ADC20;

      return (v53)(v18, &off_1F23C6B90, ObjectType, v9);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v47 = *(v0 + 160);
  v46 = *(v0 + 168);
  v48 = *(v0 + 152);
  v49 = sub_1AE1A79F8();
  result = sub_1ADF5F264((v0 + 48), v47, v46);
  if (*v50)
  {
    v51 = v50[2];
    v23 = __OFADD__(v51, 1);
    v52 = v51 + 1;
    if (v23)
    {
      goto LABEL_18;
    }

    v50[2] = v52;
  }

  (result)(v0 + 48, 0);
  (v49)(v0 + 16, 0);
  swift_unknownObjectRelease();
LABEL_10:
  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_1AE1ADC20()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 152);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1ADD70, v4, 0);
}

uint64_t sub_1AE1ADD70()
{
  v1 = v0[23];
  v2 = v0[24];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1AE1ADDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1ADE74240;

  return sub_1AE1A83E8(a2, a3);
}

uint64_t sub_1AE1ADE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1AE1ADF24;

  return sub_1AE1A8CFC(a2);
}

uint64_t sub_1AE1ADF24()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE1AE020, 0, 0);
}

uint64_t sub_1AE1AE020()
{
  v1 = v0[2];
  if (v1)
  {
    v2 = v0[3];
    v1(0);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1AE1AE090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a3;
  v4[3] = a4;
  v6 = swift_task_alloc();
  v4[4] = v6;
  *v6 = v4;
  v6[1] = sub_1AE1AE130;

  return sub_1AE1A94D8(a2);
}

uint64_t sub_1AE1AE130()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE1AE22C, 0, 0);
}

uint64_t sub_1AE1AE22C()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1AE1AE294(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v66) = a3;
  v8 = sub_1AE23BDDC();
  v9 = *(v8 - 8);
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57[-v14];
  swift_beginAccess();
  v16 = *(a1 + 16);
  if (*(v16 + 16) && (v17 = sub_1ADDFF050(a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    if ((v66 & 1) == 0)
    {
LABEL_6:
      *a4 = v19;

      return;
    }

    v20 = *(v19 + 24);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v19 + 24) = v22;
      goto LABEL_6;
    }

    __break(1u);
  }

  else
  {
    v61 = v12;
    v63 = a4;
    v64 = v4;
    swift_endAccess();
    v62 = v9;
    v23 = a1;
    v25 = (v9 + 2);
    v24 = v9[2];
    v65 = a2;
    v24(v15, a2, v8);
    v26 = type metadata accessor for CRAssetFilePresenter(0);
    v27 = objc_allocWithZone(v26);
    swift_weakInit();
    v28 = OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL;
    v59 = v25;
    v60 = v24;
    v24(&v27[OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL], v15, v8);
    v29 = v23;
    v30 = v62;
    (v62[7])(&v27[v28], 0, 1, v8);
    v31 = objc_allocWithZone(MEMORY[0x1E696ADC8]);

    v32 = [v31 init];
    *&v27[OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemOperationQueue] = v32;
    swift_weakAssign();
    v67.receiver = v27;
    v67.super_class = v26;
    v33 = objc_msgSendSuper2(&v67, sel_init);

    v34 = v30[1];
    v34(v15, v8);
    type metadata accessor for CRAssetWatchedDirectory();
    v35 = swift_allocObject();
    v36 = v35;
    *(v35 + 16) = v33;
    *(v35 + 24) = 0;
    if (v66)
    {
      *(v35 + 24) = 1;
    }

    if (*(v23 + 96))
    {
      v37 = v33;
      v38 = v63;
      v39 = v65;
      v40 = v33;
    }

    else
    {
      v41 = qword_1ED966B00;
      v66 = v33;
      v62 = v33;
      v42 = v41 == -1;
      v43 = v65;
      if (!v42)
      {
        swift_once();
      }

      v44 = sub_1AE23C78C();
      __swift_project_value_buffer(v44, qword_1ED96F1C8);
      v45 = v61;
      v60(v61, v43, v8);

      v46 = sub_1AE23C76C();
      v47 = sub_1AE23D60C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v59 = v34;
        v49 = v48;
        v60 = swift_slowAlloc();
        v68[0] = v60;
        *v49 = 136315394;
        *(v49 + 4) = sub_1AE1FB594(*(v23 + 104), *(v23 + 112), v68);
        *(v49 + 12) = 2080;
        sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
        v58 = v47;
        v50 = sub_1AE23DD9C();
        v52 = v51;
        v59(v45, v8);
        v53 = sub_1AE1FB594(v50, v52, v68);

        *(v49 + 14) = v53;
        _os_log_impl(&dword_1ADDCA000, v46, v58, "%s watchDirectory %s", v49, 0x16u);
        v54 = v60;
        swift_arrayDestroy();
        MEMORY[0x1B26FDA50](v54, -1, -1);
        MEMORY[0x1B26FDA50](v49, -1, -1);
      }

      else
      {

        v34(v45, v8);
      }

      v38 = v63;
      [objc_opt_self() addFilePresenter_];
      v39 = v65;
      v40 = v66;
    }

    swift_beginAccess();

    v55 = *(v29 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v29 + 16);
    *(v29 + 16) = 0x8000000000000000;
    sub_1ADEC0320(v36, v39, isUniquelyReferenced_nonNull_native);
    *(v29 + 16) = v69;
    swift_endAccess();

    *v38 = v36;
  }
}

uint64_t sub_1AE1AE7E4(void *a1, uint64_t a2)
{
  v4 = sub_1AE23BDDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  swift_beginAccess();
  v12 = a1[2];
  if (*(v12 + 16) && (v13 = sub_1ADDFF050(a2), (v14 & 1) != 0))
  {
    v15 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v16 = qword_1ED966B00;
    v34 = v15;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_1AE23C78C();
    __swift_project_value_buffer(v17, qword_1ED96F1C8);
    v18 = *(v5 + 16);
    v18(v11, a2, v4);

    v19 = sub_1AE23C76C();
    v20 = sub_1AE23D60C();

    v33 = v20;
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v32 = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v22 = v21;
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v22 = 136315394;
      *(v22 + 4) = sub_1AE1FB594(a1[13], a1[14], v35);
      *(v22 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v30 = v19;
      v23 = sub_1AE23DD9C();
      v25 = v24;
      (*(v5 + 8))(v11, v4);
      v26 = sub_1AE1FB594(v23, v25, v35);

      *(v22 + 14) = v26;
      v27 = v30;
      _os_log_impl(&dword_1ADDCA000, v30, v33, "%s unwatchDirectory %s", v22, 0x16u);
      v28 = v31;
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v28, -1, -1);
      MEMORY[0x1B26FDA50](v22, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    [objc_opt_self() removeFilePresenter_];

    v18(v8, a2, v4);
  }

  else
  {
    swift_endAccess();
    (*(v5 + 16))(v8, a2, v4);
  }

  swift_beginAccess();
  sub_1AE1D1E58(0, v8);
  return swift_endAccess();
}

uint64_t sub_1AE1AEB94(uint64_t a1)
{
  v82[9] = *MEMORY[0x1E69E9840];
  v2 = sub_1AE23BDDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v63 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v63 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC8, &qword_1AE2543F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v70 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v71 = &v63 - v16;
  *(a1 + 96) = 1;
  v17 = sub_1ADDCD674(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  v18 = *(a1 + 48);
  *(a1 + 48) = v17;

  swift_beginAccess();
  v80 = a1;
  v19 = *(a1 + 16);
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v19 + 64);
  v64 = (v21 + 63) >> 6;
  v81 = (v3 + 16);
  v73 = (v3 + 32);
  v67 = v3;
  v77 = (v3 + 8);
  v68 = v19;

  v24 = 0;
  v63 = 0;
  *&v25 = 136315394;
  v65 = v25;
  for (i = v20; ; v20 = i)
  {
    if (v23)
    {
      v28 = v24;
LABEL_16:
      v32 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v33 = v32 | (v28 << 6);
      v34 = v68;
      v35 = v67;
      v36 = v66;
      (*(v67 + 16))(v66, *(v68 + 48) + *(v67 + 72) * v33, v2);
      v37 = *(*(v34 + 56) + 8 * v33);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
      v39 = *(v38 + 48);
      v40 = *(v35 + 32);
      v41 = v70;
      v40(v70, v36, v2);
      *(v41 + v39) = v37;
      (*(*(v38 - 8) + 56))(v41, 0, 1, v38);

      v31 = v71;
    }

    else
    {
      v29 = v64 <= v24 + 1 ? v24 + 1 : v64;
      v30 = v29 - 1;
      v31 = v71;
      while (1)
      {
        v28 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          __break(1u);
        }

        if (v28 >= v64)
        {
          break;
        }

        v23 = *(v20 + 8 * v28);
        ++v24;
        if (v23)
        {
          v24 = v28;
          goto LABEL_16;
        }
      }

      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
      v41 = v70;
      (*(*(v60 - 8) + 56))(v70, 1, 1, v60);
      v23 = 0;
      v24 = v30;
    }

    sub_1ADDD2198(v41, v31, &qword_1EB5BDCC8, &qword_1AE2543F0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDCD0, &qword_1AE2543F8);
    v43 = (*(*(v42 - 8) + 48))(v31, 1, v42);
    v44 = v72;
    if (v43 == 1)
    {
      break;
    }

    v76 = *(v31 + *(v42 + 48));
    (*v73)(v72, v31, v2);
    if (qword_1ED966B00 != -1)
    {
      swift_once();
    }

    v45 = sub_1AE23C78C();
    __swift_project_value_buffer(v45, qword_1ED96F1C8);
    v74 = *v81;
    v74(v79, v44, v2);

    v46 = sub_1AE23C76C();
    v47 = sub_1AE23D60C();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v82[0] = v49;
      *v48 = v65;
      *(v48 + 4) = sub_1AE1FB594(*(v80 + 104), *(v80 + 112), v82);
      *(v48 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v50 = sub_1AE23DD9C();
      v52 = v51;
      v75 = *v77;
      v75(v79, v2);
      v53 = sub_1AE1FB594(v50, v52, v82);
      v44 = v72;

      *(v48 + 14) = v53;
      _os_log_impl(&dword_1ADDCA000, v46, v47, "%s unwatchDirectory(enterBackground) %s", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v49, -1, -1);
      MEMORY[0x1B26FDA50](v48, -1, -1);
    }

    else
    {

      v75 = *v77;
      v75(v79, v2);
    }

    [objc_opt_self() removeFilePresenter_];
    v74(v78, v44, v2);
    v54 = [objc_opt_self() defaultManager];
    sub_1AE23BDAC();
    v55 = sub_1AE23CCDC();

    v82[0] = 0;
    v56 = [v54 contentsOfDirectoryAtPath:v55 error:v82];

    v57 = v82[0];
    if (v56)
    {
      v26 = sub_1AE23CFDC();
      v27 = v57;
    }

    else
    {
      v58 = v82[0];
      v59 = sub_1AE23BC9C();

      swift_willThrow();
      v26 = 0;
      v63 = 0;
    }

    swift_beginAccess();
    sub_1AE1D2018(v26, v78);
    swift_endAccess();

    v75(v44, v2);
  }

  v62 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE1AF560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  v7 = sub_1AE23BDDC();
  v5[24] = v7;
  v8 = *(v7 - 8);
  v5[25] = v8;
  v9 = *(v8 + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AF62C, a1, 0);
}

void (*sub_1AE1AF62C())(void *)
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);
    v5 = *(v1 + 112);

    v6 = sub_1ADDDE7CC(v4, v3);
    if (v7)
    {
      v8 = (*(v2 + 56) + 24 * v6);
      *(v0 + 216) = *v8;
      v9 = v8[1];
      v10 = v8[2];
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v12 = *(v9 + 8);
      swift_unknownObjectRetain();
      v13 = v12(ObjectType, v9);
      swift_unknownObjectRelease();
      if (v13)
      {
        v58 = ObjectType;
        v14 = *(v0 + 200);
        v15 = *(v0 + 208);
        v16 = *(v0 + 184);
        v17 = *(v0 + 192);
        (*(v14 + 16))(v15, *(v0 + 176), v17);
        v18 = type metadata accessor for CRAssetProviderUrl(0);
        v19 = *(v18 + 48);
        v20 = *(v18 + 52);
        v21 = swift_allocObject();
        *(v0 + 224) = v21;

        swift_defaultActor_initialize();
        *(v21 + 112) = 0;
        *(v21 + 120) = 0;
        *(v21 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_isTemporary) = 0;
        result = (*(v14 + 32))(v21 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl, v15, v17);
        *(v21 + 120) = v16;
        v23 = *(v16 + 24);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (!v24)
        {
          *(v16 + 24) = v25;
          v26 = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
            v28 = *(v0 + 160);
            v27 = *(v0 + 168);
            swift_beginAccess();
            sub_1ADDD86D8(v28, v27);

            v29 = *(v1 + 112);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v59 = *(v1 + 112);
            *(v1 + 112) = 0x8000000000000000;
            sub_1ADEC01B0(v21, &off_1F23C6BC8, v26, v28, v27, isUniquelyReferenced_nonNull_native);
            sub_1ADDCC35C(v28, v27);
            *(v1 + 112) = v59;
            swift_endAccess();
            v31 = *(v9 + 48);
            swift_unknownObjectRetain();

            v57 = (v31 + *v31);
            v32 = v31[1];
            v33 = swift_task_alloc();
            *(v0 + 232) = v33;
            *v33 = v0;
            v33[1] = sub_1AE1AFB5C;

            return (v57)(v21, &off_1F23C6BC8, v58, v9);
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v51 = *(v0 + 160);
      v50 = *(v0 + 168);
      v52 = *(v0 + 152);
      v53 = sub_1AE1A79F8();
      result = sub_1ADF5F264((v0 + 48), v51, v50);
      if (*v54)
      {
        v55 = v54[2];
        v24 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (v24)
        {
LABEL_22:
          __break(1u);
          return result;
        }

        v54[2] = v56;
      }

      (result)(v0 + 48, 0);
      (v53)(v0 + 16, 0);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }
  }

  v35 = *(v0 + 200);
  v34 = *(v0 + 208);
  v36 = *(v0 + 184);
  v37 = *(v0 + 192);
  (*(v35 + 16))(v34, *(v0 + 176), v37);
  v38 = type metadata accessor for CRAssetProviderUrl(0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();

  swift_defaultActor_initialize();
  *(v41 + 112) = 0;
  *(v41 + 120) = 0;
  *(v41 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_isTemporary) = 0;
  result = (*(v35 + 32))(v41 + OBJC_IVAR____TtC9Coherence18CRAssetProviderUrl_fileUrl, v34, v37);
  *(v41 + 120) = v36;
  v42 = *(v36 + 24);
  v24 = __OFADD__(v42, 1);
  v43 = v42 + 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_20;
  }

  v45 = *(v0 + 160);
  v44 = *(v0 + 168);
  *(v36 + 24) = v43;
  swift_beginAccess();
  sub_1ADDD86D8(v45, v44);

  v46 = *(v1 + 112);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1ADEC01B0(v41, &off_1F23C6BC8, 1, v45, v44, v47);
  sub_1ADDCC35C(v45, v44);
  *(v1 + 112) = v60;
  swift_endAccess();

LABEL_12:
  v48 = *(v0 + 208);

  v49 = *(v0 + 8);

  return v49();
}

uint64_t sub_1AE1AFB5C()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 152);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1AFCAC, v4, 0);
}

uint64_t sub_1AE1AFCAC()
{
  v1 = v0[27];
  v2 = v0[28];
  swift_unknownObjectRelease();

  v3 = v0[26];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AE1AFD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AE1AFD44, a1, 0);
}

void (*sub_1AE1AFD44())(uint64_t, void)
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v1 + 112);

  v6 = sub_1ADDDE7CC(v4, v3);
  if ((v7 & 1) == 0)
  {

LABEL_9:
    v26 = *(v0 + 168);
    v25 = *(v0 + 176);
    v27 = *(v0 + 160);
    swift_beginAccess();

    sub_1ADDD86D8(v27, v26);
    v28 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1ADEC01B0(v25, &off_1F23C6B90, 1, v27, v26, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(v27, v26);
    *(v1 + 112) = v41;
    swift_endAccess();
    goto LABEL_10;
  }

  v8 = (*(v2 + 56) + 24 * v6);
  *(v0 + 184) = *v8;
  v9 = v8[1];
  v10 = v8[2];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v12 = *(v9 + 8);
  swift_unknownObjectRetain();
  v13 = v12(ObjectType, v9);
  result = swift_unknownObjectRelease();
  if (v13)
  {
    v15 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      v17 = *(v0 + 168);
      v16 = *(v0 + 176);
      v18 = *(v0 + 160);
      swift_beginAccess();
      swift_retain_n();
      sub_1ADDD86D8(v18, v17);
      v19 = *(v1 + 112);
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v40 = *(v1 + 112);
      *(v1 + 112) = 0x8000000000000000;
      sub_1ADEC01B0(v16, &off_1F23C6B90, v15, v18, v17, v20);
      sub_1ADDCC35C(v18, v17);
      *(v1 + 112) = v40;
      swift_endAccess();
      v21 = *(v9 + 48);

      swift_unknownObjectRetain();
      v39 = (v21 + *v21);
      v22 = v21[1];
      v23 = swift_task_alloc();
      *(v0 + 192) = v23;
      *v23 = v0;
      v23[1] = sub_1AE1B012C;
      v24 = *(v0 + 176);

      return (v39)(v24, &off_1F23C6B90, ObjectType, v9);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v32 = *(v0 + 160);
  v31 = *(v0 + 168);
  v33 = *(v0 + 152);
  v34 = sub_1AE1A79F8();
  result = sub_1ADF5F264((v0 + 48), v32, v31);
  if (*v35)
  {
    v36 = v35[2];
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
      goto LABEL_18;
    }

    v35[2] = v38;
  }

  result(v0 + 48, 0);
  (v34)(v0 + 16, 0);
  swift_unknownObjectRelease();
LABEL_10:
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1AE1B012C()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 152);
  v6 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B027C, v4, 0);
}

uint64_t sub_1AE1B027C()
{
  v2 = v0[22];
  v1 = v0[23];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

uint64_t sub_1AE1B02E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AE1B030C, a1, 0);
}

void (*sub_1AE1B030C())(void *)
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v1 + 112);

  v6 = sub_1ADDDE7CC(v4, v3);
  if ((v7 & 1) == 0)
  {

LABEL_8:
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    v22 = type metadata accessor for CRLazyAssetProvider(0);
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    v25 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v25 + 112) = sub_1ADE51944(MEMORY[0x1E69E7CC0]);
    *(v25 + 120) = 1;
    v26 = OBJC_IVAR____TtC9Coherence19CRLazyAssetProvider_url;
    v27 = sub_1AE23BDDC();
    (*(*(v27 - 8) + 56))(v25 + v26, 1, 1, v27);
    *(v25 + OBJC_IVAR____TtC9Coherence19CRLazyAssetProvider_isTemporary) = 1;
    swift_beginAccess();
    sub_1ADDD86D8(v21, v20);

    v28 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_1ADEC01B0(v25, &off_1F23C6C00, 1, v21, v20, isUniquelyReferenced_nonNull_native);
    sub_1ADDCC35C(v21, v20);
    *(v1 + 112) = v33;
    swift_endAccess();

    goto LABEL_9;
  }

  v31 = *(v0 + 112);
  v32 = *(v0 + 120);
  v8 = *(v0 + 104);
  v9 = (*(v2 + 56) + 24 * v6);
  v10 = *v9;
  v11 = v9[1];
  swift_unknownObjectRetain();

  ObjectType = swift_getObjectType();
  v13 = *(v11 + 8);
  swift_unknownObjectRetain();
  v13(ObjectType, v11);
  swift_unknownObjectRelease();
  v14 = sub_1AE1A79F8();
  result = sub_1ADF5F264((v0 + 48), v31, v32);
  if (*v16)
  {
    v17 = v16[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      __break(1u);
      return result;
    }

    v16[2] = v19;
  }

  (result)(v0 + 48, 0);
  (v14)(v0 + 16, 0);
  swift_unknownObjectRelease();
LABEL_9:
  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1AE1B05C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[21] = a6;
  v7[22] = a7;
  v7[19] = a4;
  v7[20] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v7[23] = v8;
  v9 = *(v8 - 8);
  v7[24] = v9;
  v10 = *(v9 + 64) + 15;
  v7[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B0694, 0, 0);
}

uint64_t sub_1AE1B0694()
{
  v1 = v0[19];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[26] = *(Strong + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AE1B0858, 0, 0);
  }

  else
  {
    v3 = v0[19];
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = v0[22];
      v6 = *(v4 + 24);
      v0[27] = v6;

      v7 = swift_task_alloc();
      v0[28] = v7;
      *v7 = v0;
      v7[1] = sub_1AE1B0BBC;
      v8 = v0[21];
      v9 = v0[22];
      v10 = v0[20];

      return sub_1AE1B3F94(v10, 1, v6, v8, v9);
    }

    else
    {
      v11 = v0[25];

      v12 = v0[1];

      return v12();
    }
  }
}

uint64_t sub_1AE1B0858()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];
  v4 = v0[24];
  v0[2] = v0;
  v0[3] = sub_1AE1B098C;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[13] = &unk_1AE2544D8;
  v0[14] = v6;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v4 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1B098C()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE1B0A6C, 0, 0);
}

uint64_t sub_1AE1B0A6C()
{
  v1 = v0[26];

  v2 = v0[19];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[22];
    v5 = *(Strong + 24);
    v0[27] = v5;

    v6 = swift_task_alloc();
    v0[28] = v6;
    *v6 = v0;
    v6[1] = sub_1AE1B0BBC;
    v7 = v0[21];
    v8 = v0[22];
    v9 = v0[20];

    return sub_1AE1B3F94(v9, 1, v5, v7, v8);
  }

  else
  {
    v11 = v0[25];

    v12 = v0[1];

    return v12();
  }
}

void sub_1AE1B0BBC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[22];
  }

  else
  {
    v6 = v2[27];
    v7 = v2[22];

    v8 = v2[25];

    v9 = *(v4 + 8);

    v9();
  }
}

uint64_t sub_1AE1B0D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a8;
  v8[24] = v14;
  v8[21] = a6;
  v8[22] = a7;
  v8[19] = a4;
  v8[20] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v8[25] = v9;
  v10 = *(v9 - 8);
  v8[26] = v10;
  v11 = *(v10 + 64) + 15;
  v8[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B0DE8, 0, 0);
}

uint64_t sub_1AE1B0DE8()
{
  v1 = v0[19];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[28] = *(Strong + 24);

    return MEMORY[0x1EEE6DFA0](sub_1AE1B0FCC, 0, 0);
  }

  else
  {
    v3 = v0[19];
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    if (v4)
    {
      v5 = v0[24];
      v7 = v0[21];
      v6 = v0[22];
      v8 = *(v4 + 24);
      v0[29] = v8;

      v10 = v7(v9);

      v11 = swift_task_alloc();
      v0[30] = v11;
      *v11 = v0;
      v11[1] = sub_1AE1B134C;
      v12 = v0[23];
      v13 = v0[24];
      v14 = v0[20];

      return sub_1AE1B4AC0(v14, v10 & 1, v8, v12, v13);
    }

    else
    {
      v15 = v0[27];

      v16 = v0[1];

      return v16();
    }
  }
}

uint64_t sub_1AE1B0FCC()
{
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v0[2] = v0;
  v0[3] = sub_1AE1B1100;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[13] = &unk_1AE2544C0;
  v0[14] = v6;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v4 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1B1100()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1AE1B11E0, 0, 0);
}

uint64_t sub_1AE1B11E0()
{
  v1 = v0[28];

  v2 = v0[19];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[24];
    v6 = v0[21];
    v5 = v0[22];
    v7 = *(Strong + 24);
    v0[29] = v7;

    v9 = v6(v8);

    v10 = swift_task_alloc();
    v0[30] = v10;
    *v10 = v0;
    v10[1] = sub_1AE1B134C;
    v11 = v0[23];
    v12 = v0[24];
    v13 = v0[20];

    return sub_1AE1B4AC0(v13, v9 & 1, v7, v11, v12);
  }

  else
  {
    v15 = v0[27];

    v16 = v0[1];

    return v16();
  }
}

void sub_1AE1B134C()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[24];
  }

  else
  {
    v6 = v2[29];
    v7 = v2[24];

    v8 = v2[27];

    v9 = *(v4 + 8);

    v9();
  }
}

uint64_t sub_1AE1B149C(uint64_t a1, uint64_t *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 136) = a6;
  *(v7 + 144) = v6;
  *(v7 + 120) = a4;
  *(v7 + 128) = a5;
  *(v7 + 208) = a3;
  *(v7 + 112) = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  *(v7 + 152) = v9;
  v10 = *(v9 - 8);
  *(v7 + 160) = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v13 = *a2;
  *(v7 + 168) = v12;
  *(v7 + 176) = v13;

  return MEMORY[0x1EEE6DFA0](sub_1AE1B157C, 0, 0);
}

uint64_t sub_1AE1B15A4()
{
  v1 = v0[23];
  v3 = v0[20];
  v2 = v0[21];
  v4 = v0[19];
  v0[2] = v0;
  v0[3] = sub_1AE1B16DC;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v0[10] = &unk_1AE254520;
  v0[11] = v6;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1B16DC()
{
  v1 = *v0;
  v11 = *v0;
  *(v1 + 104) = *(*v0 + 176);
  v2 = v1 + 104;
  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  *v3 = v11;
  v3[1] = sub_1AE1B1818;
  v4 = *(v2 + 80);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 104);
  v8 = *(v2 + 8);
  v9 = *(v2 + 16);

  return sub_1AE1AAD98(v8, v2, v7, v9, v5, v6);
}

uint64_t sub_1AE1B1818()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1AE1B1954, 0, 0);
  }

  else
  {
    v4 = v3[21];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1AE1B1954()
{
  v1 = v0[21];

  v2 = v0[1];
  v3 = v0[25];

  return v2();
}

uint64_t CRAssetManager.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  sub_1ADDCEDE0(v0 + 56, &qword_1EB5B9DB0, &qword_1AE240B80);
  v5 = *(v0 + 112);

  v6 = OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory;
  v7 = sub_1AE23BDDC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  return v0;
}

uint64_t CRAssetManager.__deallocating_deinit()
{
  CRAssetManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void sub_1AE1B1B10()
{
  if (!qword_1EB5B95C8)
  {
    sub_1AE23BDDC();
    v0 = sub_1AE23D7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB5B95C8);
    }
  }
}

void sub_1AE1B1C3C()
{
  sub_1AE1B1B10();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1AE1B1CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  result = a6(319);
  if (v7 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1AE1B1DC4(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      sub_1AE23C9BC();
      sub_1ADDCEF80(&qword_1EB5BB808, MEMORY[0x1E6966620]);
      result = sub_1AE23C93C();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1AE1B1FA4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AE1B1FA4(uint64_t a1, uint64_t a2)
{
  result = sub_1AE23BB7C();
  if (!result || (result = sub_1AE23BBAC(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1AE23BB9C();
      sub_1AE23C9BC();
      sub_1ADDCEF80(&qword_1EB5BB808, MEMORY[0x1E6966620]);
      return sub_1AE23C93C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AE1B2084(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1AE23E31C();
  sub_1AE23CDAC();
  v7 = sub_1AE23E34C();
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
    if (v12 || (sub_1AE23E00C() & 1) != 0)
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
    sub_1ADEC7A64();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1AE1B21C0(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1AE1B21C0(unint64_t result)
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

    v9 = sub_1AE23D8FC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1AE23E31C();

        sub_1AE23CDAC();
        v15 = sub_1AE23E34C();

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

uint64_t sub_1AE1B2384(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA30, &qword_1AE2456B8);
  result = sub_1AE23D9FC();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1AE23E31C();
    sub_1ADDD86D8(v17, v18);
    sub_1AE23BECC();
    result = sub_1AE23E34C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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

uint64_t sub_1AE1B25AC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA9B0, &qword_1AE254430);
  result = sub_1AE23D9FC();
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
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_1AE23E31C();

    sub_1AE23CDAC();
    result = sub_1AE23E34C();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
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

uint64_t sub_1AE1B27D0(uint64_t result)
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

        sub_1AE1B2084(v12, v13);

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

uint64_t sub_1AE1B28FC(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x1E69E7CD0];
LABEL_53:
    v50 = *MEMORY[0x1E69E9840];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
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
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
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
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    sub_1AE23E31C();

    sub_1AE23CDAC();
    v24 = sub_1AE23E34C();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (sub_1AE23E00C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x1EEE9AC00](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_1AE1B25AC(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            sub_1AE23E31C();

            sub_1AE23CDAC();
            v43 = sub_1AE23E34C();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((sub_1AE23E00C() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
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
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = sub_1AE1B2E6C(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x1B26FDA50](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    sub_1ADDDCE74();
    goto LABEL_53;
  }

  result = MEMORY[0x1B26FDA50](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_1AE1B2E6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
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
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return sub_1AE1B25AC(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        sub_1AE23E31C();

        sub_1AE23CDAC();
        v20 = sub_1AE23E34C();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((sub_1AE23E00C() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_1AE1B30A4(uint64_t a1)
{
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE744B8;

  return sub_1AE1ADE84(a1, v1 + v5, v7, v8);
}

uint64_t sub_1AE1B31BC(uint64_t a1)
{
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1ADDD8(a1, v1 + v5, v6);
}

uint64_t objectdestroy_75Tm()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AE1B3368(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = sub_1AE23BDDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19[0] = v5;
    v19[1] = Strong;
    v14 = *(Strong + 24);
    (*(v10 + 16))(v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
    v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v16 = swift_allocObject();
    (*(v10 + 32))(v16 + v15, v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    v17 = (v16 + ((v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v17 = sub_1AE1B5928;
    v17[1] = v12;
    v21 = &unk_1AE254450;
    v22 = v16;
    swift_weakInit();
    _Block_copy(a3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
    sub_1AE23D1FC();

    (*(v20 + 8))(v8, v19[0]);
  }

  else
  {
    _Block_copy(a3);
    a3[2](a3, 0);
  }
}

uint64_t sub_1AE1B365C(uint64_t a1, void (**a2)(void, void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v26 - v9;
  v11 = sub_1AE23BDDC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v26 - v16;
  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  sub_1ADDCEE40(a1 + OBJC_IVAR____TtC9Coherence20CRAssetFilePresenter_presentedItemURL, v10, &qword_1EB5B9DC0, &qword_1AE240B90);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    _Block_copy(a2);
    sub_1ADDCEDE0(v10, &qword_1EB5B9DC0, &qword_1AE240B90);
LABEL_6:
    a2[2](a2, 0);
  }

  v27 = v4;
  v18 = *(v12 + 32);
  v18(v17, v10, v11);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    _Block_copy(a2);
    (*(v12 + 8))(v17, v11);
    goto LABEL_6;
  }

  v26[1] = *(Strong + 24);
  v26[2] = Strong;
  (*(v12 + 16))(v14, v17, v11);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = swift_allocObject();
  v18((v21 + v20), v14, v11);
  v22 = (v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v23 = v30;
  *v22 = sub_1AE1B3A5C;
  v22[1] = v23;
  v31 = &unk_1AE254448;
  v32 = v21;
  swift_weakInit();
  _Block_copy(a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  v24 = v28;
  sub_1AE23D1FC();

  (*(v29 + 8))(v24, v27);
  (*(v12 + 8))(v17, v11);
}

uint64_t sub_1AE1B3A64(uint64_t a1)
{
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE744B8;

  return sub_1AE1AE090(a1, v1 + v5, v7, v8);
}

uint64_t objectdestroy_71Tm()
{
  v1 = sub_1AE23BDDC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v6 = *(v0 + v5 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1AE1B3C24()
{
  v1 = *(sub_1AE23BDDC() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1AE1AE7E4(v2, v3);
}

uint64_t sub_1AE1B3C88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1ADE74240;

  return sub_1AE1A4E08(a1, v4, v5, v7, v6);
}

uint64_t sub_1AE1B3D50(uint64_t a1)
{
  v4 = *(sub_1AE23BFEC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE744B8;

  return sub_1AE1A5528(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1AE1B3E48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1AFD1C(a1, v4, v5, v6);
}

uint64_t sub_1AE1B3EF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1ADE744B8;

  return sub_1AE1A7FFC(a1, v4);
}

uint64_t sub_1AE1B3F94(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 216) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v8 = sub_1AE23BDDC();
  *(v5 + 128) = v8;
  v9 = *(v8 - 8);
  *(v5 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B40A4, a3, 0);
}

uint64_t sub_1AE1B40A4()
{
  v44 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = sub_1AE23C78C();
  *(v0 + 160) = __swift_project_value_buffer(v3, qword_1ED96F1C8);

  v4 = sub_1AE23C76C();
  v5 = sub_1AE23D60C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1AE1FB594(*(v6 + 120), *(v6 + 128), &v43);
    *(v8 + 12) = 2080;
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    sub_1ADDD86D8(v10, v11);
    *(v0 + 40) = sub_1AE23BEAC();
    *(v0 + 48) = v12;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC();
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v10, v11);

    v16 = sub_1AE1FB594(v13, v15, &v43);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v4, v5, "%s readAsset %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v9, -1, -1);
    MEMORY[0x1B26FDA50](v8, -1, -1);
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  v21 = *(v18 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 216);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 168) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:
      v30 = *(v0 + 144);
      v29 = *(v0 + 152);
      v31 = *(v0 + 120);

      v32 = *(v0 + 8);

      return v32(1);
    }
  }

  v34 = *(v0 + 96);
  v35 = swift_getObjectType();
  v36 = *(v34 + 120);
  *(v0 + 176) = v36;
  v37 = *(v34 + 128);
  *(v0 + 184) = v37;
  v38 = *(v26 + 32);
  swift_unknownObjectRetain();
  v42 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 192) = v40;
  *v40 = v0;
  v40[1] = sub_1AE1B4544;
  v41 = *(v0 + 120);

  return v42(v41, v36, v37, v35, v26);
}

uint64_t sub_1AE1B4544()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 96);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B4670, v3, 0);
}

uint64_t sub_1AE1B4670()
{
  v34 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[21];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[15];

    v8 = v0[1];

    return v8(1);
  }

  else
  {
    v10 = v0[19];
    v11 = v0[18];
    v12 = v0[12];
    (*(v2 + 32))(v10, v3, v1);
    (*(v2 + 16))(v11, v10, v1);

    v13 = sub_1AE23C76C();
    v14 = sub_1AE23D60C();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[22];
      v15 = v0[23];
      v18 = v0[17];
      v17 = v0[18];
      v19 = v0[16];
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v20 = 136315394;
      *(v20 + 4) = sub_1AE1FB594(v16, v15, &v33);
      *(v20 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v21 = sub_1AE23DD9C();
      v23 = v22;
      v26 = *(v18 + 8);
      v25 = v18 + 8;
      v24 = v26;
      v26(v17, v19);
      v27 = sub_1AE1FB594(v21, v23, &v33);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1ADDCA000, v13, v14, "%s reading url %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v32, -1, -1);
      MEMORY[0x1B26FDA50](v20, -1, -1);
    }

    else
    {
      v29 = v0[17];
      v28 = v0[18];
      v30 = v0[16];

      v31 = *(v29 + 8);
      v25 = v29 + 8;
      v24 = v31;
      v31(v28, v30);
    }

    v0[25] = v25;
    v0[26] = v24;

    return MEMORY[0x1EEE6DFA0](sub_1AE1B4980, 0, 0);
  }
}

uint64_t sub_1AE1B4980()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 152));

  return MEMORY[0x1EEE6DFA0](sub_1AE1B49F4, v2, 0);
}

uint64_t sub_1AE1B49F4()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[16];
  v6 = v0[11];

  v1(v4, v5);
  swift_unknownObjectRelease();

  v8 = v0[18];
  v7 = v0[19];
  v9 = v0[15];

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1AE1B4AC0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  *(v5 + 216) = a2;
  *(v5 + 88) = a1;
  *(v5 + 96) = a3;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v8 = sub_1AE23BDDC();
  *(v5 + 128) = v8;
  v9 = *(v8 - 8);
  *(v5 + 136) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B4BD0, a3, 0);
}

uint64_t sub_1AE1B4BD0()
{
  v44 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = sub_1AE23C78C();
  *(v0 + 160) = __swift_project_value_buffer(v3, qword_1ED96F1C8);

  v4 = sub_1AE23C76C();
  v5 = sub_1AE23D60C();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v43 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1AE1FB594(*(v6 + 120), *(v6 + 128), &v43);
    *(v8 + 12) = 2080;
    v10 = *(v7 + 16);
    v11 = *(v7 + 24);
    sub_1ADDD86D8(v10, v11);
    *(v0 + 40) = sub_1AE23BEAC();
    *(v0 + 48) = v12;
    *(v0 + 56) = 47;
    *(v0 + 64) = 0xE100000000000000;
    *(v0 + 72) = 95;
    *(v0 + 80) = 0xE100000000000000;
    sub_1ADE42DEC();
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v10, v11);

    v16 = sub_1AE1FB594(v13, v15, &v43);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v4, v5, "%s readAsset %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v9, -1, -1);
    MEMORY[0x1B26FDA50](v8, -1, -1);
  }

  v17 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = *(v17 + 16);
  v19 = *(v17 + 24);
  swift_beginAccess();
  v21 = *(v18 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_11;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_11;
  }

  v24 = *(v0 + 216);
  v25 = (*(v21 + 56) + 24 * v22);
  *(v0 + 168) = *v25;
  v26 = v25[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  if ((v24 & 1) == 0)
  {
    ObjectType = swift_getObjectType();
    v28 = *(v26 + 16);
    swift_unknownObjectRetain();
    LOBYTE(ObjectType) = v28(ObjectType, v26);
    swift_unknownObjectRelease();
    if (ObjectType)
    {
      swift_unknownObjectRelease();
LABEL_11:
      v30 = *(v0 + 144);
      v29 = *(v0 + 152);
      v31 = *(v0 + 120);

      v32 = *(v0 + 8);

      return v32(1);
    }
  }

  v34 = *(v0 + 96);
  v35 = swift_getObjectType();
  v36 = *(v34 + 120);
  *(v0 + 176) = v36;
  v37 = *(v34 + 128);
  *(v0 + 184) = v37;
  v38 = *(v26 + 32);
  swift_unknownObjectRetain();
  v42 = (v38 + *v38);
  v39 = v38[1];
  v40 = swift_task_alloc();
  *(v0 + 192) = v40;
  *v40 = v0;
  v40[1] = sub_1AE1B5070;
  v41 = *(v0 + 120);

  return v42(v41, v36, v37, v35, v26);
}

uint64_t sub_1AE1B5070()
{
  v1 = *(*v0 + 192);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 96);
  v5 = *v0;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1B519C, v3, 0);
}

uint64_t sub_1AE1B519C()
{
  v34 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[21];
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v6 = v0[18];
    v5 = v0[19];
    v7 = v0[15];

    v8 = v0[1];

    return v8(1);
  }

  else
  {
    v10 = v0[19];
    v11 = v0[18];
    v12 = v0[12];
    (*(v2 + 32))(v10, v3, v1);
    (*(v2 + 16))(v11, v10, v1);

    v13 = sub_1AE23C76C();
    v14 = sub_1AE23D60C();

    if (os_log_type_enabled(v13, v14))
    {
      v16 = v0[22];
      v15 = v0[23];
      v18 = v0[17];
      v17 = v0[18];
      v19 = v0[16];
      v20 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v33 = v32;
      *v20 = 136315394;
      *(v20 + 4) = sub_1AE1FB594(v16, v15, &v33);
      *(v20 + 12) = 2080;
      sub_1ADDCEF80(&qword_1EB5BDCE0, MEMORY[0x1E6968FB0]);
      v21 = sub_1AE23DD9C();
      v23 = v22;
      v26 = *(v18 + 8);
      v25 = v18 + 8;
      v24 = v26;
      v26(v17, v19);
      v27 = sub_1AE1FB594(v21, v23, &v33);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1ADDCA000, v13, v14, "%s reading url %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v32, -1, -1);
      MEMORY[0x1B26FDA50](v20, -1, -1);
    }

    else
    {
      v29 = v0[17];
      v28 = v0[18];
      v30 = v0[16];

      v31 = *(v29 + 8);
      v25 = v29 + 8;
      v24 = v31;
      v31(v28, v30);
    }

    v0[25] = v25;
    v0[26] = v24;

    return MEMORY[0x1EEE6DFA0](sub_1AE1B54AC, 0, 0);
  }
}

uint64_t sub_1AE1B54AC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  (*(v0 + 104))(*(v0 + 152));

  return MEMORY[0x1EEE6DFA0](sub_1AE1B58E8, v2, 0);
}

uint64_t sub_1AE1B5574(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1ADDCC35C(result, a2);
  }

  return result;
}

uint64_t objectdestroy_134Tm()
{
  sub_1ADDCC35C(v0[2], v0[3]);
  v1 = v0[4];

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AE1B55F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1ADE744B8;

  return sub_1AE1AD6F8(a1, v4, v5, v6);
}

uint64_t sub_1AE1B56A4(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return sub_1AE1AD65C(a1, *(v1 + 16));
}

uint64_t sub_1AE1B56B0(uint64_t a1)
{
  v4 = *(sub_1AE23BDDC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1ADE744B8;

  return sub_1AE1AF560(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1AE1B57CC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1ADE744B8;

  return sub_1AE1B02E4(a1, v5, v4);
}

uint64_t sub_1AE1B5950(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDD40, &qword_1AE2545A8);
  sub_1AE23CA3C();
  swift_endAccess();
  v6 = sub_1ADE5534C(0, v2, 0, v3);
  v7 = (a1 + 32);
  v55 = v4;
  while (1)
  {
    v8 = *v7;
    swift_beginAccess();
    v9 = v8[8];
    if (v9)
    {
      v10 = v8[8];
      v11 = v8[9];
    }

    else
    {
      v11 = 0;
    }

    v12 = v9 ? v8[10] : 0xC000000000000000;
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_42;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_42;
        }

        goto LABEL_17;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
LABEL_42:
      v45 = v8[8];
      v46 = v8[9];
      v47 = v8[10];
      sub_1ADE42E40();
      v6 = swift_allocError();
      *v48 = 0xD000000000000016;
      *(v48 + 8) = 0x80000001AE25FC80;
      *(v48 + 16) = 0;
      swift_willThrow();
      sub_1ADE56F74(v45, v46, v47);

      sub_1ADDCC35C(v11, v12);

      return v6;
    }

LABEL_17:
    v50 = v7;
    v51 = v2;
    sub_1ADE56F74(v9, v8[9], v8[10]);

    sub_1ADDD86D8(v11, v12);

    sub_1ADDCC35C(v11, v12);
    swift_beginAccess();
    v16 = v8[5];
    v17 = v8[6];
    v18 = v16 ? v8[5] : v3;
    v19 = v16 ? v8[6] : v3;
    v53 = v18;
    v54 = v19;
    swift_beginAccess();
    if (v8[7])
    {
      inited = v8[7];
    }

    else
    {
      type metadata accessor for Proto_CRDT._StorageClass();
      inited = swift_initStaticObject();
    }

    swift_beginAccess();
    sub_1ADDD86D8(v11, v12);
    sub_1ADE42C78(v16);

    v20 = *(v4 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 40);
    *(v4 + 40) = 0x8000000000000000;
    v24 = sub_1ADDDE7CC(v11, v12);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v28 = v23;
    if (v22[3] >= v27)
    {
      v31 = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        v32 = v22;
        if (v23)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1ADF6F47C();
        v32 = v22;
        if (v28)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      sub_1ADF698B8(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1ADDDE7CC(v11, v12);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_46;
      }

      v24 = v29;
      v31 = v6;
      v32 = v22;
      if (v28)
      {
LABEL_33:
        v33 = (v32[7] + 24 * v24);
        v34 = *v33;
        v35 = v33[1];
        v36 = v33[2];
        *v33 = v53;
        v33[1] = v54;
        v33[2] = inited;

        sub_1ADDCC35C(v11, v12);
        goto LABEL_37;
      }
    }

    v32[(v24 >> 6) + 8] |= 1 << v24;
    v37 = (v32[6] + 16 * v24);
    *v37 = v11;
    v37[1] = v12;
    v38 = (v32[7] + 24 * v24);
    *v38 = v53;
    v38[1] = v54;
    v38[2] = inited;
    v39 = v32[2];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      goto LABEL_45;
    }

    v32[2] = v41;
LABEL_37:
    *(v55 + 40) = v32;
    swift_endAccess();
    v6 = v31;
    v43 = *(v31 + 16);
    v42 = *(v31 + 24);
    v3 = MEMORY[0x1E69E7CC0];
    if (v43 >= v42 >> 1)
    {
      v6 = sub_1ADE5534C((v42 > 1), v43 + 1, 1, v31);
    }

    *(v6 + 16) = v43 + 1;
    v44 = v6 + 16 * v43;
    *(v44 + 32) = v11;
    *(v44 + 40) = v12;
    v7 = v50 + 1;
    v2 = v51 - 1;
    v4 = v55;
    if (v51 == 1)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE1B5DC4(void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = *(*(a2 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));

      if (!v12)
      {
        break;
      }

      v13 = a1[3];
      v14 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v13);
      if ((*(v14 + 8))(v13, v14) & 1) != 0 || (v15 = a1[3], v16 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v15), ((*(v16 + 8))(v15, v16)))
      {

        break;
      }

      v7 &= v7 - 1;
      (*(*v12 + 120))(a1);

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_13:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AE1B5F68(uint64_t a1, uint64_t a2)
{
  v35 = MEMORY[0x1E69E7CC8];
  v3 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  sub_1AE23CA3C();
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = v35;
  v9 = (v5 + 63) >> 6;
  v33 = a2;

  v10 = 0;
  v31 = a2 + 64;
  while (v7)
  {
    v13 = v10;
LABEL_11:
    v14 = (v13 << 9) | (8 * __clz(__rbit64(v7)));
    v15 = *(*(v33 + 48) + v14);
    v16 = *(*(v33 + 56) + v14);

    if (!v16)
    {
LABEL_21:

      return v8;
    }

    v17 = (*(*v16 + 104))(a1);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v8;
    v19 = sub_1ADF4A3F0(v15);
    v21 = v8[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_23;
    }

    v25 = v20;
    if (v8[3] >= v24)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v19;
        sub_1ADF711F8();
        v19 = v29;
      }
    }

    else
    {
      sub_1ADF6C5C8(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1ADF4A3F0(v15);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_25;
      }
    }

    v7 &= v7 - 1;
    v8 = v34;
    if (v25)
    {
      v11 = v34[7];
      v12 = *(v11 + 8 * v19);
      *(v11 + 8 * v19) = v17;
    }

    else
    {
      v34[(v19 >> 6) + 8] |= 1 << v19;
      *(v34[6] + 8 * v19) = v15;
      *(v34[7] + 8 * v19) = v17;

      v27 = v34[2];
      v23 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v23)
      {
        goto LABEL_24;
      }

      v34[2] = v28;
    }

    v10 = v13;
    v4 = v31;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {
      goto LABEL_21;
    }

    v7 = *(v4 + 8 * v13);
    ++v10;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE1B61F4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  while (v5)
  {
    v9 = v8;
LABEL_10:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(**(*(a1 + 56) + ((v9 << 9) | (8 * v10))) + 128);

    LOBYTE(v11) = v11(v12);

    if (v11)
    {
      v13 = 1;
LABEL_13:

      return v13;
    }
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {
      v13 = 0;
      goto LABEL_13;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9Coherence22UnknownValuePropertiesV18finalizeTimestampsyyAA9CRContextCF_0(uint64_t a1)
{
  v2 = *v1;
  result = sub_1AE1B61F4(*v1);
  if ((result & 1) == 0)
  {
    return result;
  }

  v34 = v1;
  v38 = MEMORY[0x1E69E7CC8];
  v4 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB8C0, &qword_1AE24D2F0);
  sub_1AE23CA3C();
  v5 = 0;
  v6 = v2 + 64;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = v38;
  v11 = (v7 + 63) >> 6;
  v36 = v2;
  while (v9)
  {
LABEL_12:
    v15 = (v5 << 9) | (8 * __clz(__rbit64(v9)));
    v16 = *(*(v2 + 48) + v15);
    v17 = *(*(v2 + 56) + v15);

    if (!v17)
    {
LABEL_27:

      *v34 = v10;
      return result;
    }

    v18 = *(*v17 + 128);

    v20 = v18(v19);

    if (v20)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = (*(*v17 + 144))();

        v17 = v21;
      }

      (*(*v17 + 136))(a1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v10;
    v23 = sub_1ADF4A3F0(v16);
    v25 = v10[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_30;
    }

    v29 = v24;
    if (v10[3] < v28)
    {
      sub_1ADF6C5C8(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1ADF4A3F0(v16);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_32;
      }

LABEL_22:
      if (v29)
      {
        goto LABEL_5;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_22;
    }

    v33 = v23;
    sub_1ADF711F8();
    v23 = v33;
    v10 = v37;
    if (v29)
    {
LABEL_5:
      v12 = v10[7];
      v13 = *(v12 + 8 * v23);
      *(v12 + 8 * v23) = v17;

      goto LABEL_6;
    }

LABEL_23:
    v10[(v23 >> 6) + 8] |= 1 << v23;
    *(v10[6] + 8 * v23) = v16;
    *(v10[7] + 8 * v23) = v17;
    v31 = v10[2];
    v27 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v27)
    {
      goto LABEL_31;
    }

    v10[2] = v32;
LABEL_6:
    v9 &= v9 - 1;

    v2 = v36;
  }

  while (1)
  {
    v14 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v5;
    if (v9)
    {
      v5 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

Coherence::UnknownValueProperties __swiftcall UnknownValueProperties.copy(renamingReferences:)(Swift::OpaquePointer_optional renamingReferences)
{
  v3 = v1;
  v4 = *v2;
  if (renamingReferences.value._rawValue)
  {
    rawValue = renamingReferences.value._rawValue;
  }

  else
  {
    rawValue = sub_1ADE51288(MEMORY[0x1E69E7CC0]);
  }

  v8 = rawValue;

  v6 = sub_1AE1B5F68(&v8, v4);

  *v3 = v6;
  return result;
}

Coherence::UnknownValueProperties __swiftcall UnknownValueProperties.copy(renamingReferences:)(Swift::OpaquePointer *renamingReferences)
{
  v3 = v1;
  result.properties._rawValue = sub_1AE1B5F68(renamingReferences, *v2);
  v3->properties._rawValue = result.properties._rawValue;
  return result;
}

uint64_t UnknownValueProperties.encode(to:)()
{
  v2 = v1;
  v3 = *v0;
  v4 = *v0 + 64;
  v5 = 1 << *(*v0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*v0 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v12 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
      v13 = *(*(v3 + 48) + v12);
      v14 = *(*(v3 + 56) + v12);

      sub_1ADF8A7DC(v15, v13);
      if (v2)
      {
        break;
      }

      v7 &= v7 - 1;

      v10 = v11;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v1 = *v0;
  sub_1ADF7F000();
  return sub_1AE23CB3C();
}

uint64_t UnknownValueProperties.hashValue.getter()
{
  v1 = *v0;
  sub_1AE23E31C();
  sub_1ADDF5580(v3, v1);
  return sub_1AE23E34C();
}

uint64_t UnknownValueProperties.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1ADF4E010(a1, v7);
  sub_1ADF7EF28();
  v5 = sub_1AE23CB5C();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AE1B6940@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1ADF4E010(a1, v7);
  sub_1ADF7EF28();
  v5 = sub_1AE23CB5C();
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1AE1B69D0()
{
  v1 = *v0;
  sub_1ADF7F000();
  return sub_1AE23CB3C();
}

uint64_t sub_1AE1B6A38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BB3D0, &unk_1AE24C540);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1AE241900;
  sub_1AE23BFCC();
  v2 = MEMORY[0x1E69E7508];
  v3 = MEMORY[0x1E69E7558];
  *(v1 + 56) = MEMORY[0x1E69E7508];
  *(v1 + 64) = v3;
  *(v1 + 32) = v4;
  sub_1AE23BFCC();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v5;
  v9 = sub_1AE23CD3C();
  MEMORY[0x1B26FB670](46, 0xE100000000000000);
  v8 = *(v0 + *(type metadata accessor for Replica() + 20));
  v6 = sub_1AE23DD9C();
  MEMORY[0x1B26FB670](v6);

  return v9;
}

uint64_t sub_1AE1B6B44(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v8 = swift_allocObject();
    v9 = *(v7 + 16);
    *(v8 + 16) = v9;
    sub_1ADE51B2C(v9);

    *v2 = v8;
    v7 = v8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v10 | 0x4000000000000004;
  v12 = *(v7 + 16);
  *(v7 + 16) = v11;

  return sub_1ADE51B48(v12);
}

uint64_t sub_1AE1B6BF8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v8 = swift_allocObject();
    v9 = *(v7 + 16);
    *(v8 + 16) = v9;
    sub_1ADE51B2C(v9);

    *v2 = v8;
    v7 = v8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v10 | 0x6000000000000004;
  v12 = *(v7 + 16);
  *(v7 + 16) = v11;

  return sub_1ADE51B48(v12);
}

uint64_t sub_1AE1B6CF4(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE5215C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  v9 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  v11 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v11;
  v12 = v8 | 0x4000000000000000;
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return sub_1ADE52174(v13);
}

uint64_t sub_1AE1B6DB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v8 = swift_allocObject();
    v9 = *(v7 + 16);
    *(v8 + 16) = v9;
    sub_1ADE51B2C(v9);

    *v2 = v8;
    v7 = v8;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = v10 | 0x3000000000000000;
  v12 = *(v7 + 16);
  *(v7 + 16) = v11;

  return sub_1ADE51B48(v12);
}

uint64_t sub_1AE1B6EA4(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE5215C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  v9 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v9;
  *(v8 + 112) = *(a1 + 96);
  v10 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v10;
  v11 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v11;
  v12 = v8 | 0x5000000000000000;
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  return sub_1ADE52174(v13);
}

uint64_t sub_1AE1B6F64(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_CRDT._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE5215C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x9000000000000000;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE52174(v10);
}

uint64_t sub_1AE1B7008(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x2000000000000000;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B70A8(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x1000000000000000;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B7148(double a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 4;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B71F0(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x5000000000000000;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B7294(float a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x7000000000000000;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B733C(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x2000000000000004;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B73E4(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  v10 = v8 | 0x6000000000000000;
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return sub_1ADE51B48(v11);
}

uint64_t sub_1AE1B7490(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x4000000000000000;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B7530(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Proto_Value._StorageClass();
    v6 = swift_allocObject();
    v7 = *(v5 + 16);
    *(v6 + 16) = v7;
    sub_1ADE51B2C(v7);

    *v1 = v6;
    v5 = v6;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = v8 | 0x5000000000000004;
  v10 = *(v5 + 16);
  *(v5 + 16) = v9;

  return sub_1ADE51B48(v10);
}

uint64_t sub_1AE1B7620(uint64_t a1, void (*a2)(void), void (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2(0);
    v12 = swift_allocObject();
    *(v12 + 16) = *(v11 + 16);
    a3();

    *v5 = v12;
    v11 = v12;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  v14 = v13 | 0x8000000000000000;
  v15 = *(v11 + 16);
  *(v11 + 16) = v14;

  return a5(v15);
}