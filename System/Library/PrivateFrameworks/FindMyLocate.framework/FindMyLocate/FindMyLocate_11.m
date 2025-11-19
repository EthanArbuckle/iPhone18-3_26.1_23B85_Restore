uint64_t sub_1B80BA8E8()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v15 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    if (v4)
    {
      v5 = *(v2 + 24);
      v6 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_1B80C926C();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1B80BAA78;
  }

  else
  {
    if (v4)
    {
      v11 = *(v2 + 24);
      v12 = *(v2 + 32);
      swift_getObjectType();
      v7 = sub_1B80C926C();
      v9 = v13;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = sub_1B7FFAF5C;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1B80BAA78()
{
  v0[2] = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
  swift_dynamicCast();
  swift_willThrowTypedImpl();
  v1 = v0[1];

  return v1();
}

unint64_t sub_1B80BAB30()
{
  result = qword_1EBA674A0;
  if (!qword_1EBA674A0)
  {
    type metadata accessor for Fence.UpdateStream.AsyncIterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674A0);
  }

  return result;
}

uint64_t sub_1B80BAB88@<X0>(uint64_t a1@<X8>)
{
  sub_1B7FBF9C0(*v1 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_iterator, a1);
}

uint64_t sub_1B80BABF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B80BAC38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FriendshipRequestStreamChange()
{
  result = qword_1EBA674A8;
  if (!qword_1EBA674A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B80BAD04()
{
  result = type metadata accessor for FriendshipRequest();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FriendshipAction.rawValue.getter()
{
  v1 = *v0;
  v2 = 6579297;
  v3 = 0x796669646F6DLL;
  v4 = 0x726566666FLL;
  if (v1 != 3)
  {
    v4 = 0x657469766E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65766F6D6572;
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

uint64_t FriendshipAction.description.getter()
{
  v1 = *v0;
  v2 = 1684300078;
  v3 = 0x796669646F6D2ELL;
  v4 = 0x726566666F2ELL;
  if (v1 != 3)
  {
    v4 = 0x657469766E692ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65766F6D65722ELL;
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

FindMyLocate::FriendshipAction_optional __swiftcall FriendshipAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B80BAEE0()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80BAFAC()
{
  *v0;
  *v0;
  *v0;
  sub_1B80C911C();
}

uint64_t sub_1B80BB064()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B80BB138(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6579297;
  v5 = 0xE600000000000000;
  v6 = 0x796669646F6DLL;
  v7 = 0xE500000000000000;
  v8 = 0x726566666FLL;
  if (v2 != 3)
  {
    v8 = 0x657469766E69;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65766F6D6572;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1B80BB270()
{
  v1 = *v0;
  v2 = 1684300078;
  v3 = 0x796669646F6D2ELL;
  v4 = 0x726566666F2ELL;
  if (v1 != 3)
  {
    v4 = 0x657469766E692ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65766F6D65722ELL;
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

uint64_t sub_1B80BB300(uint64_t a1)
{
  v2 = sub_1B80BBC8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BB33C(uint64_t a1)
{
  v2 = sub_1B80BBC8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BB378()
{
  v1 = 0x6465766F6D6572;
  if (*v0 != 1)
  {
    v1 = 0x6465696669646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6465646461;
  }
}

uint64_t sub_1B80BB3D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80BCA9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80BB3F8(uint64_t a1)
{
  v2 = sub_1B80BBB2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BB434(uint64_t a1)
{
  v2 = sub_1B80BBB2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BB470(uint64_t a1)
{
  v2 = sub_1B80BBBE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BB4AC(uint64_t a1)
{
  v2 = sub_1B80BBBE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BB4E8(uint64_t a1)
{
  v2 = sub_1B80BBC38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BB524(uint64_t a1)
{
  v2 = sub_1B80BBC38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendStreamChange.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674B8, &qword_1B80DD3B0);
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674C0, &qword_1B80DD3B8);
  v43 = *(v5 - 8);
  v44 = v5;
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674C8, &qword_1B80DD3C0);
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v38 - v10;
  v49 = type metadata accessor for Friend();
  v11 = *(*(v49 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v49);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v19 = type metadata accessor for FriendStreamChange();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674D0, &qword_1B80DD3C8);
  v23 = *(v50 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v26 = &v38 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80BBB2C();
  sub_1B80C99DC();
  sub_1B80BBB80(v48, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v29 = (v23 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B80BC53C(v22, v16, type metadata accessor for Friend);
      v52 = 1;
      sub_1B80BBC38();
      v30 = v42;
      v31 = v50;
      sub_1B80C974C();
      sub_1B808D93C(&qword_1EBA67048);
      v32 = v44;
      sub_1B80C97DC();
      v33 = v43;
    }

    else
    {
      v16 = v38;
      sub_1B80BC53C(v22, v38, type metadata accessor for Friend);
      v53 = 2;
      sub_1B80BBBE4();
      v30 = v45;
      v31 = v50;
      sub_1B80C974C();
      sub_1B808D93C(&qword_1EBA67048);
      v32 = v47;
      sub_1B80C97DC();
      v33 = v46;
    }

    (*(v33 + 8))(v30, v32);
    v36 = v16;
  }

  else
  {
    sub_1B80BC53C(v22, v18, type metadata accessor for Friend);
    v51 = 0;
    sub_1B80BBC8C();
    v34 = v39;
    v31 = v50;
    sub_1B80C974C();
    sub_1B808D93C(&qword_1EBA67048);
    v35 = v41;
    sub_1B80C97DC();
    (*(v40 + 8))(v34, v35);
    v36 = v18;
  }

  sub_1B7FE7C34(v36);
  return (*v29)(v26, v31);
}

unint64_t sub_1B80BBB2C()
{
  result = qword_1EBA674D8;
  if (!qword_1EBA674D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674D8);
  }

  return result;
}

uint64_t sub_1B80BBB80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendStreamChange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B80BBBE4()
{
  result = qword_1EBA674E0;
  if (!qword_1EBA674E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674E0);
  }

  return result;
}

unint64_t sub_1B80BBC38()
{
  result = qword_1EBA674E8;
  if (!qword_1EBA674E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674E8);
  }

  return result;
}

unint64_t sub_1B80BBC8C()
{
  result = qword_1EBA674F0;
  if (!qword_1EBA674F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA674F0);
  }

  return result;
}

uint64_t FriendStreamChange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA674F8, &qword_1B80DD3D0);
  v4 = *(v3 - 8);
  v70 = v3;
  v71 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v61 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67500, &qword_1B80DD3D8);
  v8 = *(v7 - 8);
  v68 = v7;
  v69 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67508, &qword_1B80DD3E0);
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v61 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67510, &unk_1B80DD3E8);
  v76 = *(v14 - 8);
  v77 = v14;
  v15 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for FriendStreamChange();
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v61 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v61 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v61 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1B80BBB2C();
  v33 = v78;
  sub_1B80C99BC();
  if (!v33)
  {
    v62 = v25;
    v63 = v28;
    v64 = v22;
    v35 = v72;
    v34 = v73;
    v78 = 0;
    v65 = v18;
    v37 = v74;
    v36 = v75;
    v38 = v77;
    v39 = sub_1B80C973C();
    v40 = (2 * *(v39 + 16)) | 1;
    v80 = v39;
    v81 = v39 + 32;
    v82 = 0;
    v83 = v40;
    v41 = sub_1B7FCD6E4();
    if (v41 == 3 || v82 != v83 >> 1)
    {
      v45 = sub_1B80C955C();
      swift_allocError();
      v47 = v46;
      v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v47 = v65;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
      swift_willThrow();
    }

    else
    {
      if (v41)
      {
        if (v41 == 1)
        {
          v84 = 1;
          sub_1B80BBC38();
          v42 = v78;
          sub_1B80C968C();
          v43 = v36;
          v44 = v76;
          if (v42)
          {
            goto LABEL_9;
          }

          v78 = v30;
          type metadata accessor for Friend();
          sub_1B808D93C(qword_1ED8DD290);
          v58 = v62;
          v59 = v68;
          sub_1B80C972C();
          (*(v69 + 8))(v34, v59);
          (*(v44 + 8))(v17, v77);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v58;
        }

        else
        {
          v84 = 2;
          sub_1B80BBBE4();
          v53 = v37;
          v54 = v78;
          sub_1B80C968C();
          v55 = v76;
          if (v54)
          {
            goto LABEL_9;
          }

          v43 = v36;
          v78 = v30;
          type metadata accessor for Friend();
          sub_1B808D93C(qword_1ED8DD290);
          v56 = v64;
          v57 = v70;
          sub_1B80C972C();
          (*(v71 + 8))(v53, v57);
          (*(v55 + 8))(v17, v38);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v51 = v56;
        }

LABEL_17:
        v60 = v78;
        sub_1B80BC53C(v51, v78, type metadata accessor for FriendStreamChange);
        sub_1B80BC53C(v60, v43, type metadata accessor for FriendStreamChange);
        return __swift_destroy_boxed_opaque_existential_0(v79);
      }

      v84 = 0;
      sub_1B80BBC8C();
      v50 = v78;
      sub_1B80C968C();
      if (!v50)
      {
        v78 = v30;
        type metadata accessor for Friend();
        sub_1B808D93C(qword_1ED8DD290);
        v51 = v63;
        v52 = v67;
        sub_1B80C972C();
        (*(v66 + 8))(v35, v52);
        (*(v76 + 8))(v17, v38);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v43 = v36;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v76 + 8))(v17, v38);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v79);
}

uint64_t sub_1B80BC53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B80BC5A8()
{
  result = qword_1EBA67518;
  if (!qword_1EBA67518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67518);
  }

  return result;
}

unint64_t sub_1B80BC680()
{
  result = qword_1EBA67520;
  if (!qword_1EBA67520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67520);
  }

  return result;
}

unint64_t sub_1B80BC6D8()
{
  result = qword_1EBA67528;
  if (!qword_1EBA67528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67528);
  }

  return result;
}

unint64_t sub_1B80BC730()
{
  result = qword_1EBA67530;
  if (!qword_1EBA67530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67530);
  }

  return result;
}

unint64_t sub_1B80BC788()
{
  result = qword_1EBA67538;
  if (!qword_1EBA67538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67538);
  }

  return result;
}

unint64_t sub_1B80BC7E0()
{
  result = qword_1EBA67540;
  if (!qword_1EBA67540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67540);
  }

  return result;
}

unint64_t sub_1B80BC838()
{
  result = qword_1EBA67548;
  if (!qword_1EBA67548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67548);
  }

  return result;
}

unint64_t sub_1B80BC890()
{
  result = qword_1EBA67550;
  if (!qword_1EBA67550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67550);
  }

  return result;
}

unint64_t sub_1B80BC8E8()
{
  result = qword_1EBA67558;
  if (!qword_1EBA67558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67558);
  }

  return result;
}

unint64_t sub_1B80BC940()
{
  result = qword_1EBA67560;
  if (!qword_1EBA67560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67560);
  }

  return result;
}

unint64_t sub_1B80BC998()
{
  result = qword_1EBA67568;
  if (!qword_1EBA67568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67568);
  }

  return result;
}

unint64_t sub_1B80BC9F0()
{
  result = qword_1EBA67570;
  if (!qword_1EBA67570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67570);
  }

  return result;
}

unint64_t sub_1B80BCA48()
{
  result = qword_1EBA67578;
  if (!qword_1EBA67578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67578);
  }

  return result;
}

uint64_t sub_1B80BCA9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465646461 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

unint64_t sub_1B80BCBB0()
{
  result = qword_1EBA67580;
  if (!qword_1EBA67580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67580);
  }

  return result;
}

uint64_t sub_1B80BCC08()
{
  if (*v0)
  {
    return 0x6465766F6D6572;
  }

  else
  {
    return 0x64657461647075;
  }
}

uint64_t sub_1B80BCC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657461647075 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80BCD18(uint64_t a1)
{
  v2 = sub_1B80BD520();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BCD54(uint64_t a1)
{
  v2 = sub_1B80BD520();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BCD90(uint64_t a1)
{
  v2 = sub_1B80BD5D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BCDCC(uint64_t a1)
{
  v2 = sub_1B80BD5D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BCE08()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B80BCE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80BCEF0(uint64_t a1)
{
  v2 = sub_1B80BD62C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BCF2C(uint64_t a1)
{
  v2 = sub_1B80BD62C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LocationStreamChange.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67588, &qword_1B80DDA40);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67590, &qword_1B80DDA48);
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v39 - v7;
  v40 = type metadata accessor for Location();
  v8 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for LocationStreamChange();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67598, &unk_1B80DDA50);
  v14 = *(v73 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v17 = &v39 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80BD520();
  sub_1B80C99DC();
  sub_1B80BD574(v47, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v13[9];
    v70 = v13[8];
    v71 = v19;
    v72 = v13[10];
    v20 = v13[5];
    v66 = v13[4];
    v67 = v20;
    v21 = v13[7];
    v68 = v13[6];
    v69 = v21;
    v22 = v13[1];
    v62 = *v13;
    v63 = v22;
    v23 = v13[3];
    v64 = v13[2];
    v65 = v23;
    LOBYTE(v51) = 1;
    sub_1B80BD5D8();
    v24 = v41;
    v25 = v73;
    sub_1B80C974C();
    v59 = v70;
    v60 = v71;
    v61 = v72;
    v55 = v66;
    v56 = v67;
    v57 = v68;
    v58 = v69;
    v51 = v62;
    v52 = v63;
    v53 = v64;
    v54 = v65;
    sub_1B7FDC224();
    v26 = v43;
    sub_1B80C97DC();
    (*(v42 + 8))(v24, v26);
    (*(v14 + 8))(v17, v25);
  }

  else
  {
    v27 = v14;
    v28 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48));
    v29 = v28[9];
    v70 = v28[8];
    v71 = v29;
    v72 = v28[10];
    v30 = v28[5];
    v66 = v28[4];
    v67 = v30;
    v31 = v28[7];
    v68 = v28[6];
    v69 = v31;
    v32 = v28[1];
    v62 = *v28;
    v63 = v32;
    v33 = v28[3];
    v64 = v28[2];
    v65 = v33;
    sub_1B80BDE68(v13, v48, type metadata accessor for Location);
    LOBYTE(v51) = 0;
    sub_1B80BD62C();
    v34 = v44;
    v35 = v73;
    sub_1B80C974C();
    LOBYTE(v51) = 0;
    sub_1B80BDED0(&qword_1EBA675B8);
    v36 = v46;
    v37 = v49;
    sub_1B80C97DC();
    if (v37)
    {
      sub_1B7FCAD28(&v62);
      (*(v45 + 8))(v34, v36);
      sub_1B7FD7CBC(v48);
      return (*(v27 + 8))(v17, v35);
    }

    v59 = v70;
    v60 = v71;
    v61 = v72;
    v55 = v66;
    v56 = v67;
    v57 = v68;
    v58 = v69;
    v51 = v62;
    v52 = v63;
    v53 = v64;
    v54 = v65;
    v50 = 1;
    sub_1B7FDC224();
    sub_1B80C97DC();
    (*(v45 + 8))(v34, v36);
    sub_1B7FD7CBC(v48);
    (*(v27 + 8))(v17, v35);
  }

  return sub_1B7FCAD28(&v62);
}

unint64_t sub_1B80BD520()
{
  result = qword_1EBA675A0;
  if (!qword_1EBA675A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675A0);
  }

  return result;
}

uint64_t sub_1B80BD574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocationStreamChange();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B80BD5D8()
{
  result = qword_1EBA675A8;
  if (!qword_1EBA675A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675A8);
  }

  return result;
}

unint64_t sub_1B80BD62C()
{
  result = qword_1EBA675B0;
  if (!qword_1EBA675B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675B0);
  }

  return result;
}

uint64_t LocationStreamChange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA675C0, &qword_1B80DDA60);
  v51 = *(v50 - 8);
  v3 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v48 - v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA675C8, &qword_1B80DDA68);
  v53 = *(v52 - 8);
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA675D0, &unk_1B80DDA70);
  v56 = *(v7 - 8);
  v8 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v48 - v9;
  v11 = type metadata accessor for LocationStreamChange();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B80BD520();
  v23 = v58;
  sub_1B80C99BC();
  if (!v23)
  {
    v48 = v15;
    v24 = v54;
    v49 = v20;
    v58 = v11;
    v25 = v55;
    v26 = sub_1B80C973C();
    v27 = (2 * *(v26 + 16)) | 1;
    v70 = v26;
    v71 = v26 + 32;
    v72 = 0;
    v73 = v27;
    v28 = sub_1B7FCC41C();
    if (v28 == 2 || v72 != v73 >> 1)
    {
      v39 = sub_1B80C955C();
      swift_allocError();
      v41 = v40;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v41 = v58;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
      (*(v56 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v28)
      {
        LOBYTE(v59) = 1;
        sub_1B80BD5D8();
        v29 = v24;
        sub_1B80C968C();
        v30 = v56;
        sub_1B7FDC440();
        v31 = v50;
        sub_1B80C972C();
        (*(v51 + 8))(v29, v31);
        (*(v30 + 8))(v10, v7);
        swift_unknownObjectRelease();
        v32 = v68;
        v33 = v48;
        v48[8] = v67;
        v33[9] = v32;
        v33[10] = v69;
        v34 = v64;
        v33[4] = v63;
        v33[5] = v34;
        v35 = v66;
        v33[6] = v65;
        v33[7] = v35;
        v36 = v60;
        *v33 = v59;
        v33[1] = v36;
        v37 = v62;
        v33[2] = v61;
        v33[3] = v37;
        swift_storeEnumTagMultiPayload();
        v38 = v49;
        sub_1B80BDE68(v33, v49, type metadata accessor for LocationStreamChange);
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_1B80BD62C();
        sub_1B80C968C();
        v43 = v56;
        type metadata accessor for Location();
        LOBYTE(v59) = 0;
        sub_1B80BDED0(&qword_1ED8DBC38);
        v44 = v18;
        v45 = v52;
        sub_1B80C972C();
        v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660E8, &qword_1B80D2EB0) + 48);
        LOBYTE(v59) = 1;
        sub_1B7FDC440();
        sub_1B80C972C();
        (*(v53 + 8))(v57, v45);
        (*(v43 + 8))(v10, v7);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v38 = v49;
        sub_1B80BDE68(v44, v49, type metadata accessor for LocationStreamChange);
      }

      sub_1B80BDE68(v38, v25, type metadata accessor for LocationStreamChange);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v74);
}

uint64_t sub_1B80BDE68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80BDED0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Location();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B80BDF78()
{
  result = qword_1EBA675D8;
  if (!qword_1EBA675D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675D8);
  }

  return result;
}

unint64_t sub_1B80BDFD0()
{
  result = qword_1EBA675E0;
  if (!qword_1EBA675E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675E0);
  }

  return result;
}

unint64_t sub_1B80BE028()
{
  result = qword_1EBA675E8;
  if (!qword_1EBA675E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675E8);
  }

  return result;
}

unint64_t sub_1B80BE080()
{
  result = qword_1EBA675F0;
  if (!qword_1EBA675F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675F0);
  }

  return result;
}

unint64_t sub_1B80BE0D8()
{
  result = qword_1EBA675F8;
  if (!qword_1EBA675F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA675F8);
  }

  return result;
}

unint64_t sub_1B80BE130()
{
  result = qword_1EBA67600;
  if (!qword_1EBA67600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67600);
  }

  return result;
}

unint64_t sub_1B80BE188()
{
  result = qword_1EBA67608;
  if (!qword_1EBA67608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67608);
  }

  return result;
}

unint64_t sub_1B80BE1E0()
{
  result = qword_1EBA67610;
  if (!qword_1EBA67610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67610);
  }

  return result;
}

unint64_t sub_1B80BE238()
{
  result = qword_1EBA67618;
  if (!qword_1EBA67618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67618);
  }

  return result;
}

uint64_t PreferenceStreamChange.description.getter()
{
  v1 = *v0;
  if (*(v0 + 52) > 1u)
  {
    if (*(v0 + 52) != 2)
    {
      return 0x6C616974696E692ELL;
    }

    sub_1B80C952C();

    v14[0] = 0xD000000000000010;
    v14[1] = 0x80000001B80CE790;
  }

  else
  {
    if (!*(v0 + 52))
    {
      v3 = v0[1];
      v2 = v0[2];
      v4 = v0[3];
      v5 = v0[4];
      v6 = v0[5];
      v7 = *(v0 + 12);
      v18 = 0x6369766544656D2ELL;
      v19 = 0xEA00000000002865;
      if (v3)
      {
        v14[0] = v1;
        v14[1] = v3;
        v14[2] = v2;
        v14[3] = v4;
        v14[4] = v5;
        v14[5] = v6;
        v15 = v7 & 0x101;
        v16 = BYTE2(v7) & 1;
        v17 = HIBYTE(v7) & 1;
        v8 = Device.description.getter();
        v10 = v9;
      }

      else
      {
        v10 = 0xE400000000000000;
        v8 = 1701736302;
      }

      MEMORY[0x1B8CB7A40](v8, v10);

      MEMORY[0x1B8CB7A40](41, 0xE100000000000000);
      return v18;
    }

    strcpy(v14, ".myLocation(");
    BYTE5(v14[1]) = 0;
    HIWORD(v14[1]) = -5120;
  }

  if (v1)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v11, v12);

  MEMORY[0x1B8CB7A40](41, 0xE100000000000000);
  return v14[0];
}

uint64_t sub_1B80BE438()
{
  v1 = 0x696C616974696E69;
  v2 = 0x697461636F4C796DLL;
  if (*v0 != 2)
  {
    v2 = 0x6552646E65697266;
  }

  if (*v0)
  {
    v1 = 0x656369766544656DLL;
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

uint64_t sub_1B80BE4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80BFEC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80BE4F4(uint64_t a1)
{
  v2 = sub_1B80BEED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE530(uint64_t a1)
{
  v2 = sub_1B80BEED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BE584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6465776F6C6C61 && a2 == 0xE700000000000000)
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

uint64_t sub_1B80BE60C(uint64_t a1)
{
  v2 = sub_1B80BEF24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE648(uint64_t a1)
{
  v2 = sub_1B80BEF24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BE684(uint64_t a1)
{
  v2 = sub_1B80BF020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE6C0(uint64_t a1)
{
  v2 = sub_1B80BF020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BE710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656369766564 && a2 == 0xE600000000000000)
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

uint64_t sub_1B80BE794(uint64_t a1)
{
  v2 = sub_1B80BEFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE7D0(uint64_t a1)
{
  v2 = sub_1B80BEFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80BE824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
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

uint64_t sub_1B80BE8AC(uint64_t a1)
{
  v2 = sub_1B80BEF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80BE8E8(uint64_t a1)
{
  v2 = sub_1B80BEF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreferenceStreamChange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67620, &qword_1B80DDE50);
  v44 = *(v3 - 8);
  v45 = v3;
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v32[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67628, &qword_1B80DDE58);
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v32[-v8];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67630, &qword_1B80DDE60);
  v38 = *(v39 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v32[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67638, &qword_1B80DDE68);
  v37 = *(v12 - 8);
  v13 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67640, &qword_1B80DDE70);
  v47 = *(v16 - 8);
  v48 = v16;
  v17 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v32[-v18];
  v20 = *v1;
  v36 = v1[1];
  v46 = v20;
  v21 = *(v1 + 5);
  v35 = *(v1 + 4);
  v34 = v21;
  v33 = *(v1 + 12);
  v22 = *(v1 + 52);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80BEED0();
  sub_1B80C99DC();
  if (v22 <= 1)
  {
    if (!v22)
    {
      LOBYTE(v51) = 1;
      sub_1B80BEFCC();
      v24 = v48;
      sub_1B80C974C();
      v51 = v46;
      v52 = v36;
      v53 = v35;
      v54 = v34;
      v55 = v33;
      sub_1B806F1E8();
      v25 = v39;
      sub_1B80C977C();
      (*(v38 + 8))(v11, v25);
      return (*(v47 + 8))(v19, v24);
    }

    v49 = v46;
    LOBYTE(v51) = 2;
    sub_1B80BEF78();
    v27 = v40;
    v28 = v48;
    sub_1B80C974C();
    v29 = v42;
    sub_1B80C979C();
    v30 = v41;
    goto LABEL_7;
  }

  if (v22 == 2)
  {
    v50 = v46;
    LOBYTE(v51) = 3;
    sub_1B80BEF24();
    v27 = v43;
    v28 = v48;
    sub_1B80C974C();
    v29 = v45;
    sub_1B80C979C();
    v30 = v44;
LABEL_7:
    (*(v30 + 8))(v27, v29);
    return (*(v47 + 8))(v19, v28);
  }

  LOBYTE(v51) = 0;
  sub_1B80BF020();
  v31 = v48;
  sub_1B80C974C();
  (*(v37 + 8))(v15, v12);
  return (*(v47 + 8))(v19, v31);
}

unint64_t sub_1B80BEED0()
{
  result = qword_1ED8DD520;
  if (!qword_1ED8DD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD520);
  }

  return result;
}

unint64_t sub_1B80BEF24()
{
  result = qword_1ED8DC8C8;
  if (!qword_1ED8DC8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC8C8);
  }

  return result;
}

unint64_t sub_1B80BEF78()
{
  result = qword_1ED8DC8D8[0];
  if (!qword_1ED8DC8D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8DC8D8);
  }

  return result;
}

unint64_t sub_1B80BEFCC()
{
  result = qword_1ED8DC8D0;
  if (!qword_1ED8DC8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC8D0);
  }

  return result;
}

unint64_t sub_1B80BF020()
{
  result = qword_1ED8DD4F8;
  if (!qword_1ED8DD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4F8);
  }

  return result;
}

uint64_t PreferenceStreamChange.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67648, &qword_1B80DDE78);
  v67 = *(v63 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v70 = &v59 - v4;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67650, &qword_1B80DDE80);
  v66 = *(v69 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67658, &qword_1B80DDE88);
  v8 = *(v7 - 8);
  v64 = v7;
  v65 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67660, &qword_1B80DDE90);
  v62 = *(v12 - 8);
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v59 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67668, &unk_1B80DDE98);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v59 - v19;
  v22 = a1[3];
  v21 = a1[4];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1B80BEED0();
  v23 = v72;
  sub_1B80C99BC();
  if (!v23)
  {
    v24 = v15;
    v60 = v12;
    v25 = v11;
    v26 = v68;
    v27 = v69;
    v61 = 0;
    v72 = v17;
    v29 = v70;
    v28 = v71;
    v30 = sub_1B80C973C();
    v31 = (2 * *(v30 + 16)) | 1;
    v78 = v30;
    v79 = v30 + 32;
    v80 = 0;
    v81 = v31;
    v32 = sub_1B7FC72BC();
    if (v32 == 4 || v80 != v81 >> 1)
    {
      v41 = v16;
      v42 = sub_1B80C955C();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v44 = &type metadata for PreferenceStreamChange;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v72 + 8))(v20, v41);
    }

    else
    {
      if (v32 > 1u)
      {
        v47 = v72;
        if (v32 == 2)
        {
          LOBYTE(v73) = 2;
          sub_1B80BEF78();
          v48 = v61;
          sub_1B80C968C();
          if (!v48)
          {
            v49 = v28;
            v50 = v27;
            v57 = sub_1B80C96EC();
            (*(v66 + 8))(v26, v50);
            (*(v47 + 8))(v20, v16);
            swift_unknownObjectRelease();
            v37 = 0;
            v36 = v57 & 1;
            v40 = 1;
LABEL_22:
            *v49 = v37 | v36;
            *(v49 + 8) = v38;
            *(v49 + 24) = v39;
            *(v49 + 40) = v34;
            *(v49 + 48) = v35;
            *(v49 + 52) = v40;
            return __swift_destroy_boxed_opaque_existential_0(v82);
          }
        }

        else
        {
          LOBYTE(v73) = 3;
          sub_1B80BEF24();
          v52 = v29;
          v53 = v61;
          sub_1B80C968C();
          if (!v53)
          {
            v49 = v28;
            v55 = v16;
            v56 = v63;
            v58 = sub_1B80C96EC();
            (*(v67 + 8))(v52, v56);
            (*(v47 + 8))(v20, v55);
            swift_unknownObjectRelease();
            v37 = 0;
            v36 = v58 & 1;
            v40 = 2;
            goto LABEL_22;
          }
        }
      }

      else
      {
        if (v32)
        {
          LOBYTE(v73) = 1;
          sub_1B80BEFCC();
          v51 = v61;
          sub_1B80C968C();
          if (!v51)
          {
            sub_1B805B96C();
            v54 = v64;
            sub_1B80C96CC();
            (*(v65 + 8))(v25, v54);
            (*(v72 + 8))(v20, v16);
            swift_unknownObjectRelease();
            v40 = 0;
            v36 = v73;
            v38 = v74;
            v39 = v75;
            v34 = v76;
            v35 = v77;
            v37 = v73 & 0xFFFFFFFFFFFFFF00;
            goto LABEL_20;
          }
        }

        else
        {
          LOBYTE(v73) = 0;
          sub_1B80BF020();
          v33 = v61;
          sub_1B80C968C();
          if (!v33)
          {
            (*(v62 + 8))(v24, v60);
            (*(v72 + 8))(v20, v16);
            swift_unknownObjectRelease();
            v34 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0uLL;
            v39 = 0uLL;
            v40 = 3;
LABEL_20:
            v49 = v28;
            goto LABEL_22;
          }
        }

        v47 = v72;
      }

      (*(v47 + 8))(v20, v16);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v82);
}

uint64_t get_enum_tag_for_layout_string_12FindMyLocate22PreferenceStreamChangeO(uint64_t a1)
{
  if ((*(a1 + 52) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 52) & 3;
  }
}

uint64_t sub_1B80BF8E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 53))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 52);
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

uint64_t sub_1B80BF928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 52) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B80BF980(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 36) = 0u;
    LOBYTE(a2) = 3;
  }

  *(result + 52) = a2;
  return result;
}

unint64_t sub_1B80BF9FC()
{
  result = qword_1EBA67670;
  if (!qword_1EBA67670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67670);
  }

  return result;
}

unint64_t sub_1B80BFA54()
{
  result = qword_1EBA67678;
  if (!qword_1EBA67678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67678);
  }

  return result;
}

unint64_t sub_1B80BFAAC()
{
  result = qword_1EBA67680;
  if (!qword_1EBA67680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67680);
  }

  return result;
}

unint64_t sub_1B80BFB04()
{
  result = qword_1EBA67688;
  if (!qword_1EBA67688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67688);
  }

  return result;
}

unint64_t sub_1B80BFB5C()
{
  result = qword_1ED8DD4E8;
  if (!qword_1ED8DD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4E8);
  }

  return result;
}

unint64_t sub_1B80BFBB4()
{
  result = qword_1ED8DD4F0;
  if (!qword_1ED8DD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4F0);
  }

  return result;
}

unint64_t sub_1B80BFC0C()
{
  result = qword_1ED8DD500;
  if (!qword_1ED8DD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD500);
  }

  return result;
}

unint64_t sub_1B80BFC64()
{
  result = qword_1ED8DD508;
  if (!qword_1ED8DD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD508);
  }

  return result;
}

unint64_t sub_1B80BFCBC()
{
  result = qword_1ED8DD528;
  if (!qword_1ED8DD528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD528);
  }

  return result;
}

unint64_t sub_1B80BFD14()
{
  result = qword_1ED8DD530;
  if (!qword_1ED8DD530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD530);
  }

  return result;
}

unint64_t sub_1B80BFD6C()
{
  result = qword_1ED8DD4D8;
  if (!qword_1ED8DD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4D8);
  }

  return result;
}

unint64_t sub_1B80BFDC4()
{
  result = qword_1ED8DD4E0;
  if (!qword_1ED8DD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD4E0);
  }

  return result;
}

unint64_t sub_1B80BFE1C()
{
  result = qword_1ED8DD510;
  if (!qword_1ED8DD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD510);
  }

  return result;
}

unint64_t sub_1B80BFE74()
{
  result = qword_1ED8DD518;
  if (!qword_1ED8DD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD518);
  }

  return result;
}

uint64_t sub_1B80BFEC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C616974696E69 && a2 == 0xEB0000000064657ALL;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656369766544656DLL && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461636F4C796DLL && a2 == 0xEA00000000006E6FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6552646E65697266 && a2 == 0xEE00737473657571)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1B80C0060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B80C00A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t static LocalizationUtility.localizedString(key:table:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3;
  *a3;
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_1B80C8C8C();

  return v5;
}

uint64_t LocalizationUtility.Table.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t sub_1B80C029C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B8092BC8(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69E6158];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v8 = *(v2 + 16);
      v9 = *(v2 + 24);

      if (v8 >= v9 >> 1)
      {
        sub_1B8092BC8((v9 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = sub_1B806BEAC();
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v8 + 1;
      sub_1B80C0530(&v11, v2 + 40 * v8 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1B80C039C(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a3;
  *a3;
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_1B80C8C8C();

  sub_1B80C029C(a4);
  v7 = sub_1B80C90CC();

  return v7;
}

unint64_t sub_1B80C04BC()
{
  result = qword_1EBA67690;
  if (!qword_1EBA67690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67690);
  }

  return result;
}

uint64_t sub_1B80C0530(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t ClientID.init(identifier:connectionType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  if (a2)
  {

    v8 = sub_1B80C909C();
    v10 = v9;
  }

  else
  {
    v11 = [objc_opt_self() processInfo];
    [v11 processIdentifier];

    sub_1B80C991C();
    sub_1B804B6D0();
    v8 = sub_1B80C960C();
    v10 = v12;
  }

  sub_1B7FDAA44();
  sub_1B80C8BBC();
  sub_1B7FC3CCC(v8, v10);
  v13 = type metadata accessor for ClientID();
  v14 = (a4 + v13[6]);
  *v14 = a1;
  v14[1] = a2;
  *(a4 + v13[5]) = v7;
  v15 = v13[7];
  v16 = sub_1B80C8E9C();
  return (*(*(v16 - 8) + 56))(a4 + v15, 1, 1, v16);
}

uint64_t ClientID.init(xpcConnectionID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8E9C();
  v10 = *(v4 - 8);
  (*(v10 + 16))(a2, a1, v4);
  v5 = type metadata accessor for ClientID();
  v6 = (a2 + v5[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + v5[5]) = 0;
  v7 = v5[7];
  (*(v10 + 32))(a2 + v7, a1, v4);
  v8 = *(v10 + 56);

  return v8(a2 + v7, 0, 1, v4);
}

uint64_t sub_1B80C07C8(uint64_t a1)
{
  v2 = sub_1B80C0BE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C0804(uint64_t a1)
{
  v2 = sub_1B80C0BE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C0840(uint64_t a1)
{
  v2 = sub_1B7FCE400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C087C(uint64_t a1)
{
  v2 = sub_1B7FCE400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C08B8(uint64_t a1)
{
  v2 = sub_1B7FCE2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C08F4(uint64_t a1)
{
  v2 = sub_1B7FCE2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientID.ConnectionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67698, &qword_1B80DE6A0);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676A0, &qword_1B80DE6A8);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676A8, &qword_1B80DE6B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCE400();
  sub_1B80C99DC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1B80C0BE0();
    v18 = v22;
    sub_1B80C974C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1B7FCE2A0();
    sub_1B80C974C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1B80C0BE0()
{
  result = qword_1EBA676B0;
  if (!qword_1EBA676B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA676B0);
  }

  return result;
}

uint64_t ClientID.ConnectionType.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t ClientID.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B80C8E9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ClientID.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for ClientID() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t ClientID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA676D8, &qword_1B80DE6D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FD03B0();
  sub_1B80C99DC();
  LOBYTE(v14) = 0;
  sub_1B80C8E9C();
  sub_1B7FCE654(&qword_1ED8DC388, MEMORY[0x1E69695A8]);
  sub_1B80C97DC();
  if (!v2)
  {
    v11 = type metadata accessor for ClientID();
    LOBYTE(v14) = *(v3 + v11[5]);
    v15 = 1;
    sub_1B80C0FE4();
    sub_1B80C97DC();
    v12 = v11[7];
    LOBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
    sub_1B80C1038();
    sub_1B80C97DC();
    v14 = *(v3 + v11[6]);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
    sub_1B80C10EC();
    sub_1B80C97DC();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B80C0FE4()
{
  result = qword_1ED8DBC48;
  if (!qword_1ED8DBC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC48);
  }

  return result;
}

unint64_t sub_1B80C1038()
{
  result = qword_1ED8DC380;
  if (!qword_1ED8DC380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA667B0, &qword_1B80D68E8);
    sub_1B7FCE654(&qword_1ED8DC388, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC380);
  }

  return result;
}

unint64_t sub_1B80C10EC()
{
  result = qword_1ED8DBC18;
  if (!qword_1ED8DBC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65D98, &qword_1B80DE6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DBC18);
  }

  return result;
}

uint64_t sub_1B80C1174()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80C124C()
{
  *v0;
  *v0;
  *v0;
  sub_1B80C911C();
}

uint64_t sub_1B80C1310()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80C13E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1B80C1B84();
  *a2 = result;
  return result;
}

void sub_1B80C1414(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1684632949;
  v4 = 0xEF44496E6F697463;
  v5 = 0x656E6E6F43637078;
  if (*v1 != 2)
  {
    v5 = 0x696669746E656469;
    v4 = 0xEA00000000007265;
  }

  if (*v1)
  {
    v3 = 0x697463656E6E6F63;
    v2 = 0xEE00657079546E6FLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1B80C14A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B80C1B84();
  *a1 = result;
  return result;
}

uint64_t sub_1B80C14D0(uint64_t a1)
{
  v2 = sub_1B7FD03B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C150C(uint64_t a1)
{
  v2 = sub_1B7FD03B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientID.hashValue.getter()
{
  sub_1B80C993C();
  ClientID.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B80C158C()
{
  sub_1B80C993C();
  ClientID.hash(into:)();
  return sub_1B80C997C();
}

unint64_t sub_1B80C15EC()
{
  result = qword_1EBA676E0;
  if (!qword_1EBA676E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA676E0);
  }

  return result;
}

void sub_1B80C1688()
{
  sub_1B80C8E9C();
  if (v0 <= 0x3F)
  {
    sub_1B80C172C();
    if (v1 <= 0x3F)
    {
      sub_1B80C177C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B80C172C()
{
  if (!qword_1ED8DD578)
  {
    v0 = sub_1B80C946C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DD578);
    }
  }
}

void sub_1B80C177C()
{
  if (!qword_1ED8DDA90)
  {
    sub_1B80C8E9C();
    v0 = sub_1B80C946C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED8DDA90);
    }
  }
}

unint64_t sub_1B80C1818()
{
  result = qword_1EBA676E8;
  if (!qword_1EBA676E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA676E8);
  }

  return result;
}

unint64_t sub_1B80C1870()
{
  result = qword_1EBA676F0;
  if (!qword_1EBA676F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA676F0);
  }

  return result;
}

unint64_t sub_1B80C18C8()
{
  result = qword_1ED8DC3E8;
  if (!qword_1ED8DC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3E8);
  }

  return result;
}

unint64_t sub_1B80C1920()
{
  result = qword_1ED8DC3F0;
  if (!qword_1ED8DC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3F0);
  }

  return result;
}

unint64_t sub_1B80C1978()
{
  result = qword_1ED8DC3B8;
  if (!qword_1ED8DC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3B8);
  }

  return result;
}

unint64_t sub_1B80C19D0()
{
  result = qword_1ED8DC3C0;
  if (!qword_1ED8DC3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3C0);
  }

  return result;
}

unint64_t sub_1B80C1A28()
{
  result = qword_1ED8DC3A8;
  if (!qword_1ED8DC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3A8);
  }

  return result;
}

unint64_t sub_1B80C1A80()
{
  result = qword_1ED8DC3B0;
  if (!qword_1ED8DC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3B0);
  }

  return result;
}

unint64_t sub_1B80C1AD8()
{
  result = qword_1ED8DC3D0;
  if (!qword_1ED8DC3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3D0);
  }

  return result;
}

unint64_t sub_1B80C1B30()
{
  result = qword_1ED8DC3D8;
  if (!qword_1ED8DC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC3D8);
  }

  return result;
}

uint64_t sub_1B80C1B84()
{
  v0 = sub_1B80C967C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t CommunicationError.description.getter()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000001BLL;
  }

  *v0;
  return result;
}

unint64_t CommunicationError.errorUserInfo.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66F38, &unk_1B80DECA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B80D1EB0;
  v3 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B80C90BC();
  *(inited + 40) = v4;
  v5 = 0xD000000000000019;
  v6 = "09D49612BundleHelper";
  if (v1 == 1)
  {
    v6 = "ResultObject encoding error";
  }

  else
  {
    v5 = 0xD00000000000001BLL;
  }

  if (v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001BLL;
  }

  if (v1)
  {
    v8 = v6;
  }

  else
  {
    v8 = "Missing Trampoline object";
  }

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v7;
  *(inited + 56) = v8 | 0x8000000000000000;
  v9 = sub_1B8083464(inited);
  swift_setDeallocating();
  sub_1B8083594(inited + 32);
  return v9;
}

FindMyLocate::CommunicationError_optional __swiftcall CommunicationError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue + 24;
  if ((rawValue - 1000) >= 3)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1B80C1D60(uint64_t a1)
{
  v2 = sub_1B80C1ED4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B80C1D9C(uint64_t a1)
{
  v2 = sub_1B80C1ED4();
  v3 = sub_1B80C1F28();
  v4 = sub_1B804B6D0();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

unint64_t sub_1B80C1E18()
{
  result = qword_1EBA67700;
  if (!qword_1EBA67700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67700);
  }

  return result;
}

unint64_t sub_1B80C1E70()
{
  result = qword_1EBA67708;
  if (!qword_1EBA67708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67708);
  }

  return result;
}

unint64_t sub_1B80C1ED4()
{
  result = qword_1EBA67710;
  if (!qword_1EBA67710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67710);
  }

  return result;
}

unint64_t sub_1B80C1F28()
{
  result = qword_1EBA67718;
  if (!qword_1EBA67718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67718);
  }

  return result;
}

void *ResultObject.internalValue.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  sub_1B80C1FE4(v1, *(v0 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 8), *(v0 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 16));
  return v1;
}

id sub_1B80C1FE4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1B7FC62D8(a1, a2);
  }
}

id static ResultObject.success(_:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 0;
  sub_1B7FC62D8(a1, a2);
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ResultObject.__allocating_init(data:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 0;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id static ResultObject.failure(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v4 = a1;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ResultObject.__allocating_init(error:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v4 = a1;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t ResultObject.__allocating_init(_:)(int *a1)
{
  v2[4] = v1;
  v2[5] = objc_allocWithZone(v1);
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1B80C229C;

  return v7();
}

uint64_t sub_1B80C229C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = sub_1B80C246C;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = sub_1B80C23D0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B80C23D0()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 56) != 0;
  v4 = (v1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  *v4 = vextq_s8(*(v0 + 64), *(v0 + 64), 8uLL);
  v4[1].i8[0] = v3;
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  v5 = objc_msgSendSuper2((v0 + 16), sel_init);
  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1B80C246C()
{
  super_class = v0[3].super_class;
  receiver = v0[2].receiver;
  v2 = v0[2].super_class;
  v4 = v2 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue;
  *v4 = super_class;
  *(v4 + 1) = 0;
  v4[16] = super_class != 0;
  v0[1].receiver = v2;
  v0[1].super_class = receiver;
  v5 = objc_msgSendSuper2(v0 + 1, sel_init);
  v6 = v0->super_class;

  return v6(v5);
}

uint64_t ResultObject.init(_:)(int *a1)
{
  v2[4] = v1;
  v2[5] = swift_getObjectType();
  v7 = (a1 + *a1);
  v4 = a1[1];
  v5 = swift_task_alloc();
  v2[6] = v5;
  *v5 = v2;
  v5[1] = sub_1B80C2608;

  return v7();
}

uint64_t sub_1B80C2608(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = sub_1B80C27D8;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = sub_1B80C273C;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B80C273C()
{
  v1 = *(v0 + 56) != 0;
  v2 = *(v0 + 32);
  v3 = (*(v0 + 32) + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  *v3 = vextq_s8(*(v0 + 64), *(v0 + 64), 8uLL);
  v3[1].i8[0] = v1;
  *(v0 + 16) = v2;
  v4 = objc_msgSendSuper2((v0 + 16), sel_init);
  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_1B80C27D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 32) + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue;
  *v3 = v1;
  *(v3 + 8) = 0;
  *(v3 + 16) = v1 != 0;
  *(v0 + 16) = v2;
  v4 = objc_msgSendSuper2((v0 + 16), sel_init);
  v5 = *(v0 + 8);

  return v5(v4);
}

id ResultObject.init(data:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v6[16] = 0;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id ResultObject.init(error:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v4 = a1;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

Swift::Void __swiftcall ResultObject.encode(with:)(NSCoder with)
{
  v3 = (v1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  v10 = *(v1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue);
  v12 = *(v1 + OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA67728, &qword_1B80DEE10);
  sub_1B80C999C();
  if (v9 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_1B80C8D1C();
    sub_1B7FC72F8(v8, v9);
  }

  v5 = sub_1B80C90AC();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];

  v11 = *v3;
  v13 = *(v3 + 16);
  sub_1B80C998C();
  if (v8)
  {
    v6 = sub_1B80C8CFC();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1B80C90AC();
  [(objc_class *)with.super.isa encodeObject:v6 forKey:v7];
}

id ResultObject.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1B80C2C80();

  return v4;
}

id ResultObject.init(coder:)(void *a1)
{
  v2 = sub_1B80C2C80();

  return v2;
}

id ResultObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ResultObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B80C2C80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1B7FBFCCC(0, &qword_1EBA67738, 0x1E695DEF0);
  v3 = sub_1B80C945C();
  sub_1B7FBFCCC(0, &qword_1EBA67740, 0x1E696ABC0);
  v4 = sub_1B80C945C();
  if (v4)
  {
    v5 = v4;

    v3 = 0;
  }

  else
  {
    if (v3)
    {
      v7 = v3;
      v5 = sub_1B80C8D3C();
      v3 = v8;

      v6 = 0;
      goto LABEL_6;
    }

    sub_1B80C1E70();
    v5 = swift_allocError();
    *v11 = 2;
  }

  v6 = 1;
LABEL_6:
  v9 = &v1[OBJC_IVAR____TtC12FindMyLocate12ResultObject_internalValue];
  *v9 = v5;
  *(v9 + 1) = v3;
  v9[16] = v6;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

uint64_t dispatch thunk of ResultObject.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 88);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B80A24D0;

  return v10(a1, a2);
}

uint64_t sub_1B80C2F50(uint64_t a1)
{
  v2 = sub_1B80C36A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C2F8C(uint64_t a1)
{
  v2 = sub_1B80C36A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C2FC8(uint64_t a1)
{
  v2 = sub_1B7FC38C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3004(uint64_t a1)
{
  v2 = sub_1B7FC38C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3040(uint64_t a1)
{
  v2 = sub_1B80C374C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C307C(uint64_t a1)
{
  v2 = sub_1B80C374C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C30B8(uint64_t a1)
{
  v2 = sub_1B80C36F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C30F4(uint64_t a1)
{
  v2 = sub_1B80C36F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3130(uint64_t a1)
{
  v2 = sub_1B80C35A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C316C(uint64_t a1)
{
  v2 = sub_1B80C35A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C31A8()
{
  if (*v0)
  {
    result = 0x7461446C69746E75;
  }

  else
  {
    result = 0x656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_1B80C31E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7461446C69746E75 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80C32C4(uint64_t a1)
{
  v2 = sub_1B80C3650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3300(uint64_t a1)
{
  v2 = sub_1B80C3650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C333C(uint64_t a1)
{
  v2 = sub_1B80C37A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3378(uint64_t a1)
{
  v2 = sub_1B80C37A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C33B4(uint64_t a1)
{
  v2 = sub_1B7FC39E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C33F0(uint64_t a1)
{
  v2 = sub_1B7FC39E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C342C()
{
  if (*v0)
  {
    result = 0x6E6F697469736F70;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_1B80C345C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B80C3530(uint64_t a1)
{
  v2 = sub_1B80C35FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C356C(uint64_t a1)
{
  v2 = sub_1B80C35FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B80C35A8()
{
  result = qword_1EBA67790;
  if (!qword_1EBA67790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67790);
  }

  return result;
}

unint64_t sub_1B80C35FC()
{
  result = qword_1EBA67798;
  if (!qword_1EBA67798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67798);
  }

  return result;
}

unint64_t sub_1B80C3650()
{
  result = qword_1EBA677A8;
  if (!qword_1EBA677A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA677A8);
  }

  return result;
}

unint64_t sub_1B80C36A4()
{
  result = qword_1EBA677B0;
  if (!qword_1EBA677B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA677B0);
  }

  return result;
}

unint64_t sub_1B80C36F8()
{
  result = qword_1ED8DC128;
  if (!qword_1ED8DC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC128);
  }

  return result;
}

unint64_t sub_1B80C374C()
{
  result = qword_1EBA677B8;
  if (!qword_1EBA677B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA677B8);
  }

  return result;
}

unint64_t sub_1B80C37A0()
{
  result = qword_1EBA677C0;
  if (!qword_1EBA677C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA677C0);
  }

  return result;
}

uint64_t sub_1B80C37F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B80C3854(uint64_t a1)
{
  v2 = sub_1B7FC96B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3890(uint64_t a1)
{
  v2 = sub_1B7FC96B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C38CC(uint64_t a1)
{
  v2 = sub_1B7FC9704();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3908(uint64_t a1)
{
  v2 = sub_1B7FC9704();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3944(uint64_t a1)
{
  v2 = sub_1B7FC5AD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3980(uint64_t a1)
{
  v2 = sub_1B7FC5AD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C39BC(uint64_t a1)
{
  v2 = sub_1B80C3C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C39F8(uint64_t a1)
{
  v2 = sub_1B80C3C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3A34(uint64_t a1)
{
  v2 = sub_1B80C3BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3A70(uint64_t a1)
{
  v2 = sub_1B80C3BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3AAC(uint64_t a1)
{
  v2 = sub_1B80C3B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3AE8(uint64_t a1)
{
  v2 = sub_1B80C3B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80C3B24(uint64_t a1)
{
  v2 = sub_1B7FC5B28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80C3B60(uint64_t a1)
{
  v2 = sub_1B7FC5B28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B80C3B9C()
{
  result = qword_1EBA67868;
  if (!qword_1EBA67868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67868);
  }

  return result;
}

unint64_t sub_1B80C3BF0()
{
  result = qword_1ED8DC318;
  if (!qword_1ED8DC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC318);
  }

  return result;
}

unint64_t sub_1B80C3C44()
{
  result = qword_1EBA67878;
  if (!qword_1EBA67878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67878);
  }

  return result;
}

unint64_t sub_1B80C3C9C()
{
  result = qword_1EBA678B0;
  if (!qword_1EBA678B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678B0);
  }

  return result;
}

unint64_t sub_1B80C3CF4()
{
  result = qword_1EBA678B8;
  if (!qword_1EBA678B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678B8);
  }

  return result;
}

unint64_t sub_1B80C3D4C()
{
  result = qword_1EBA678C0;
  if (!qword_1EBA678C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678C0);
  }

  return result;
}

unint64_t sub_1B80C3DA4()
{
  result = qword_1EBA678C8;
  if (!qword_1EBA678C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678C8);
  }

  return result;
}

unint64_t sub_1B80C3DFC()
{
  result = qword_1EBA678D0;
  if (!qword_1EBA678D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678D0);
  }

  return result;
}

unint64_t sub_1B80C3E54()
{
  result = qword_1EBA678D8;
  if (!qword_1EBA678D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678D8);
  }

  return result;
}

unint64_t sub_1B80C3EAC()
{
  result = qword_1EBA678E0;
  if (!qword_1EBA678E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678E0);
  }

  return result;
}

unint64_t sub_1B80C3F04()
{
  result = qword_1EBA678E8;
  if (!qword_1EBA678E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678E8);
  }

  return result;
}

unint64_t sub_1B80C3F5C()
{
  result = qword_1EBA678F0;
  if (!qword_1EBA678F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678F0);
  }

  return result;
}

unint64_t sub_1B80C3FB4()
{
  result = qword_1EBA678F8;
  if (!qword_1EBA678F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA678F8);
  }

  return result;
}

unint64_t sub_1B80C400C()
{
  result = qword_1EBA67900;
  if (!qword_1EBA67900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67900);
  }

  return result;
}

unint64_t sub_1B80C4064()
{
  result = qword_1EBA67908;
  if (!qword_1EBA67908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67908);
  }

  return result;
}

uint64_t dispatch thunk of FriendshipProtocol.respondToInviteRequest(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.allFriends()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.startFriendsUpdate()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FriendshipProtocol.friends(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B80C5B50;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.friendshipState(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.offerExpiration(for:fromHandle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B7FC253C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of FriendshipProtocol.offerExpiration(for:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 56);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B7FC253C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of FriendshipProtocol.sendFriendshipOffer(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.sendFriendshipInvite(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.stopSharingMyLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FBA3EC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of FriendshipProtocol.peerToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 88);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B80C5B50;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.ownerToken()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 96);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B80C4F04;

  return v9(a1, a2);
}

uint64_t sub_1B80C4F04(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of FriendshipProtocol.startRanging(handle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 104);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.startOwnerRanging()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 112);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FriendshipProtocol.stopRanging()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 120);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FriendshipProtocol.resetTokenDatabase()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 128);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FriendshipProtocol.removePeerToken(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 136);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.requestOwnerToken(force:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 144);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipProtocol.stopConfigRangingSession()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 152);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of FriendshipServiceClientProtocol.updateFriends(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipServiceClientProtocol.didDiscover(nearbyObject:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of FriendshipServiceClientProtocol.didUpdate(nearbyObject:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.startRefreshingLocation(_:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B80C4F04;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.stopRefreshingLocation(for:priority:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B7FC253C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of LocationProtocol.stopRefreshingAllLocations(clientID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.locations(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B80C5B50;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.subscribeToBackgroundProactiveLocations(clientID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B80C5B50;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.latestLocations(for:clientID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B80C5B50;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.decryptNotification(payload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 56);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B7FC253C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of LocationProtocol.processLocationPayload(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 64);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.processLocationCommandPayload(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 72);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.publishLocation(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 80);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.getSharingKey()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B80C7B80;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.setSharingKey(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 96);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.performKeyRoll()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 104);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.getSharedKeys()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 112);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B80C7B80;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.getCachedLocations()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 120);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B80C7B80;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.processIDSServiceMessage(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 128);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B80C7B80;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LocationProtocol.fetchConfig()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 136);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B80C6F18;

  return v9(a1, a2);
}

uint64_t sub_1B80C6F18(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.clearCachedConfig()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 144);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.triggerStewieProactiveNotification()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 152);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.dismissStewieNotifications()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 160);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationProtocol.publishCurrentLocationToStewie()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 168);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FBA3EC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.stewiePublishResult()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 176);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.currentStewieState()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 184);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationProtocol.stopMonitoringStewieState()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 192);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of LocationServiceClientProtocol.locationsForHandles(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationServiceClientProtocol.locationsUnavailable(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of LocationServiceClientProtocol.stewieServiceStateChanged(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.setActiveLocationSharingDevice(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SettingsProtocol.hideMyLocation(hidden:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FBA3EC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.allowFriendshipRequests(allowed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.activeLocationSharingDevice(cached:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1B7FC253C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SettingsProtocol.thisDeviceWithCompanion()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.isMyLocationEnabled(cached:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B80C4F04;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.areFriendshipRequestsAllowed(cached:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 56);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B80C5B50;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.startMonitoringPreferencesChangeForClient()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 64);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SettingsProtocol.allDevices(cached:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B80C4F04;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsProtocol.emulateShowSaveMeAlertCommand()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 80);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7FC253C;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SettingsServiceClientProtocol.meDeviceUpdated(meDevice:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SettingsServiceClientProtocol.preferencesUpdated(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B7FC253C;

  return v11(a1, a2, a3);
}