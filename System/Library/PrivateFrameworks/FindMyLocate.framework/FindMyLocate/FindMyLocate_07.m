uint64_t sub_1B8064ADC(uint64_t a1)
{
  v2 = sub_1B8064E7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8064B18(uint64_t a1)
{
  v2 = sub_1B8064E7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8064B54(uint64_t a1)
{
  v2 = sub_1B8064F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8064B90(uint64_t a1)
{
  v2 = sub_1B8064F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipRequestType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664A8, &qword_1B80D4A90);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664B0, &qword_1B80D4A98);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664B8, &qword_1B80D4AA0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8064E7C();
  sub_1B80C99DC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1B8064ED0();
    v18 = v22;
    sub_1B80C974C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1B8064F24();
    sub_1B80C974C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1B8064E7C()
{
  result = qword_1EBA664C0;
  if (!qword_1EBA664C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA664C0);
  }

  return result;
}

unint64_t sub_1B8064ED0()
{
  result = qword_1EBA664C8;
  if (!qword_1EBA664C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA664C8);
  }

  return result;
}

unint64_t sub_1B8064F24()
{
  result = qword_1EBA664D0;
  if (!qword_1EBA664D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA664D0);
  }

  return result;
}

uint64_t FriendshipRequestType.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FriendshipRequestType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664D8, &qword_1B80D4AA8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664E0, &qword_1B80D4AB0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664E8, &unk_1B80D4AB8);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8064E7C();
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
      *v26 = &type metadata for FriendshipRequestType;
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
        sub_1B8064ED0();
        sub_1B80C968C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1B8064F24();
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

uint64_t sub_1B80654EC(uint64_t a1)
{
  v2 = sub_1B8065BB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8065528(uint64_t a1)
{
  v2 = sub_1B8065BB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8065564()
{
  v1 = 0x656E696C636564;
  if (*v0 != 1)
  {
    v1 = 0x776F4E746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x747065636361;
  }
}

uint64_t sub_1B80655B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80668D8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80655E0(uint64_t a1)
{
  v2 = sub_1B8065AB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806561C(uint64_t a1)
{
  v2 = sub_1B8065AB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8065658(uint64_t a1)
{
  v2 = sub_1B8065B5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8065694(uint64_t a1)
{
  v2 = sub_1B8065B5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80656D0(uint64_t a1)
{
  v2 = sub_1B8065B08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806570C(uint64_t a1)
{
  v2 = sub_1B8065B08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipResponseToInviteType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664F0, &qword_1B80D4AC8);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA664F8, &qword_1B80D4AD0);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66500, &qword_1B80D4AD8);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66508, &qword_1B80D4AE0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8065AB4();
  sub_1B80C99DC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1B8065B5C();
      v12 = v26;
      sub_1B80C974C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1B8065B08();
      v12 = v29;
      sub_1B80C974C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1B8065BB0();
    sub_1B80C974C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1B8065AB4()
{
  result = qword_1EBA66510;
  if (!qword_1EBA66510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66510);
  }

  return result;
}

unint64_t sub_1B8065B08()
{
  result = qword_1EBA66518;
  if (!qword_1EBA66518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66518);
  }

  return result;
}

unint64_t sub_1B8065B5C()
{
  result = qword_1EBA66520;
  if (!qword_1EBA66520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66520);
  }

  return result;
}

unint64_t sub_1B8065BB0()
{
  result = qword_1EBA66528;
  if (!qword_1EBA66528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66528);
  }

  return result;
}

uint64_t FriendshipResponseToInviteType.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FriendshipResponseToInviteType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66530, &qword_1B80D4AE8);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66538, &qword_1B80D4AF0);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66540, &qword_1B80D4AF8);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66548, &qword_1B80D4B00);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B8065AB4();
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
      *v30 = &type metadata for FriendshipResponseToInviteType;
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
          sub_1B8065B5C();
          sub_1B80C968C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1B8065B08();
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
        sub_1B8065BB0();
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

unint64_t sub_1B80661EC()
{
  result = qword_1EBA66550;
  if (!qword_1EBA66550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66550);
  }

  return result;
}

unint64_t sub_1B8066244()
{
  result = qword_1EBA66558;
  if (!qword_1EBA66558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66558);
  }

  return result;
}

unint64_t sub_1B806635C()
{
  result = qword_1EBA66560;
  if (!qword_1EBA66560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66560);
  }

  return result;
}

unint64_t sub_1B80663B4()
{
  result = qword_1EBA66568;
  if (!qword_1EBA66568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66568);
  }

  return result;
}

unint64_t sub_1B806640C()
{
  result = qword_1EBA66570;
  if (!qword_1EBA66570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66570);
  }

  return result;
}

unint64_t sub_1B8066464()
{
  result = qword_1EBA66578;
  if (!qword_1EBA66578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66578);
  }

  return result;
}

unint64_t sub_1B80664BC()
{
  result = qword_1EBA66580;
  if (!qword_1EBA66580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66580);
  }

  return result;
}

unint64_t sub_1B8066514()
{
  result = qword_1EBA66588;
  if (!qword_1EBA66588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66588);
  }

  return result;
}

unint64_t sub_1B806656C()
{
  result = qword_1EBA66590;
  if (!qword_1EBA66590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66590);
  }

  return result;
}

unint64_t sub_1B80665C4()
{
  result = qword_1EBA66598;
  if (!qword_1EBA66598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66598);
  }

  return result;
}

unint64_t sub_1B806661C()
{
  result = qword_1EBA665A0;
  if (!qword_1EBA665A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665A0);
  }

  return result;
}

unint64_t sub_1B8066674()
{
  result = qword_1EBA665A8;
  if (!qword_1EBA665A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665A8);
  }

  return result;
}

unint64_t sub_1B80666CC()
{
  result = qword_1EBA665B0;
  if (!qword_1EBA665B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665B0);
  }

  return result;
}

unint64_t sub_1B8066724()
{
  result = qword_1EBA665B8;
  if (!qword_1EBA665B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665B8);
  }

  return result;
}

unint64_t sub_1B806677C()
{
  result = qword_1EBA665C0;
  if (!qword_1EBA665C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665C0);
  }

  return result;
}

unint64_t sub_1B80667D4()
{
  result = qword_1EBA665C8;
  if (!qword_1EBA665C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665C8);
  }

  return result;
}

unint64_t sub_1B806682C()
{
  result = qword_1EBA665D0;
  if (!qword_1EBA665D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665D0);
  }

  return result;
}

unint64_t sub_1B8066884()
{
  result = qword_1EBA665D8;
  if (!qword_1EBA665D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA665D8);
  }

  return result;
}

uint64_t sub_1B80668D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C636564 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F4E746F6ELL && a2 == 0xE600000000000000)
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

uint64_t sub_1B8066A00()
{
  v1 = 0x6572616853746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6967696C45746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646572616873;
  }
}

uint64_t sub_1B8066A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8069340(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8066A8C(uint64_t a1)
{
  v2 = sub_1B8066FD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8066AC8(uint64_t a1)
{
  v2 = sub_1B8066FD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8066B04(uint64_t a1)
{
  v2 = sub_1B806702C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8066B40(uint64_t a1)
{
  v2 = sub_1B806702C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8066B7C(uint64_t a1)
{
  v2 = sub_1B8067080();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8066BB8(uint64_t a1)
{
  v2 = sub_1B8067080();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8066BF4(uint64_t a1)
{
  v2 = sub_1B80670D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8066C30(uint64_t a1)
{
  v2 = sub_1B80670D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FollowerState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA665E0, &qword_1B80D5280);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA665E8, &qword_1B80D5288);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA665F0, &qword_1B80D5290);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA665F8, &qword_1B80D5298);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8066FD8();
  sub_1B80C99DC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1B8067080();
      v12 = v26;
      sub_1B80C974C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1B806702C();
      v12 = v29;
      sub_1B80C974C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1B80670D4();
    sub_1B80C974C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1B8066FD8()
{
  result = qword_1ED8DC248[0];
  if (!qword_1ED8DC248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8DC248);
  }

  return result;
}

unint64_t sub_1B806702C()
{
  result = qword_1ED8DC208;
  if (!qword_1ED8DC208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC208);
  }

  return result;
}

unint64_t sub_1B8067080()
{
  result = qword_1ED8DC220;
  if (!qword_1ED8DC220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC220);
  }

  return result;
}

unint64_t sub_1B80670D4()
{
  result = qword_1EBA66600;
  if (!qword_1EBA66600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66600);
  }

  return result;
}

uint64_t FollowerState.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FollowerState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66608, &qword_1B80D52A0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66610, &qword_1B80D52A8);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66618, &qword_1B80D52B0);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66620, &unk_1B80D52B8);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B8066FD8();
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
      *v30 = &type metadata for FollowerState;
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
          sub_1B8067080();
          sub_1B80C968C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1B806702C();
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
        sub_1B80670D4();
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

uint64_t sub_1B8067754()
{
  if (*v0)
  {
    result = 0x6572616853746F6ELL;
  }

  else
  {
    result = 0x646572616873;
  }

  *v0;
  return result;
}

uint64_t sub_1B8067790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646572616873 && a2 == 0xE600000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6572616853746F6ELL && a2 == 0xE900000000000064)
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

uint64_t sub_1B8067870(uint64_t a1)
{
  v2 = sub_1B8067C88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80678AC(uint64_t a1)
{
  v2 = sub_1B8067C88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80678E8(uint64_t a1)
{
  v2 = sub_1B8067CDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8067924(uint64_t a1)
{
  v2 = sub_1B8067CDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8067960(uint64_t a1)
{
  v2 = sub_1B8067D30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806799C(uint64_t a1)
{
  v2 = sub_1B8067D30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FollowingState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66628, &qword_1B80D52C8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66630, &qword_1B80D52D0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66638, &qword_1B80D52D8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8067C88();
  sub_1B80C99DC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1B8067CDC();
    v18 = v22;
    sub_1B80C974C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1B8067D30();
    sub_1B80C974C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1B8067C88()
{
  result = qword_1ED8DC1F0;
  if (!qword_1ED8DC1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1F0);
  }

  return result;
}

unint64_t sub_1B8067CDC()
{
  result = qword_1ED8DC1C8;
  if (!qword_1ED8DC1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1C8);
  }

  return result;
}

unint64_t sub_1B8067D30()
{
  result = qword_1EBA66640;
  if (!qword_1EBA66640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66640);
  }

  return result;
}

uint64_t FollowingState.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t FollowingState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66648, &qword_1B80D52E0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66650, &qword_1B80D52E8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66658, &qword_1B80D52F0);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8067C88();
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
      *v26 = &type metadata for FollowingState;
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
        sub_1B8067CDC();
        sub_1B80C968C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1B8067D30();
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

uint64_t sub_1B80682F8()
{
  if (*v0)
  {
    result = 0x7265776F6C6C6F66;
  }

  else
  {
    result = 0x6E69776F6C6C6F66;
  }

  *v0;
  return result;
}

uint64_t sub_1B8068338@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69776F6C6C6F66 && a2 == 0xE900000000000067;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7265776F6C6C6F66 && a2 == 0xE800000000000000)
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

uint64_t sub_1B806841C(uint64_t a1)
{
  v2 = sub_1B8068630();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8068458(uint64_t a1)
{
  v2 = sub_1B8068630();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FriendshipState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66660, &qword_1B80D52F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8068630();
  sub_1B80C99DC();
  v17 = v9;
  v16 = 0;
  sub_1B8068684();
  sub_1B80C97DC();
  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1B80686D8();
    sub_1B80C97DC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1B8068630()
{
  result = qword_1ED8DC1B0;
  if (!qword_1ED8DC1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1B0);
  }

  return result;
}

unint64_t sub_1B8068684()
{
  result = qword_1EBA65A38;
  if (!qword_1EBA65A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A38);
  }

  return result;
}

unint64_t sub_1B80686D8()
{
  result = qword_1EBA65A48;
  if (!qword_1EBA65A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A48);
  }

  return result;
}

uint64_t FriendshipState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66668, &qword_1B80D5300);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8068630();
  sub_1B80C99BC();
  if (!v2)
  {
    v17 = 0;
    sub_1B8068900();
    sub_1B80C972C();
    v11 = v18;
    v15 = 1;
    sub_1B8068954();
    sub_1B80C972C();
    (*(v6 + 8))(v9, v5);
    v13 = v16;
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1B8068900()
{
  result = qword_1EBA65A30;
  if (!qword_1EBA65A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A30);
  }

  return result;
}

unint64_t sub_1B8068954()
{
  result = qword_1EBA65A40;
  if (!qword_1EBA65A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65A40);
  }

  return result;
}

unint64_t sub_1B8068A0C()
{
  result = qword_1EBA66670;
  if (!qword_1EBA66670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66670);
  }

  return result;
}

unint64_t sub_1B8068A64()
{
  result = qword_1EBA66678;
  if (!qword_1EBA66678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66678);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FriendshipState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for FriendshipState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1B8068CBC()
{
  result = qword_1EBA66680;
  if (!qword_1EBA66680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66680);
  }

  return result;
}

unint64_t sub_1B8068D14()
{
  result = qword_1EBA66688;
  if (!qword_1EBA66688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66688);
  }

  return result;
}

unint64_t sub_1B8068D6C()
{
  result = qword_1EBA66690;
  if (!qword_1EBA66690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66690);
  }

  return result;
}

unint64_t sub_1B8068DC4()
{
  result = qword_1ED8DC1A0;
  if (!qword_1ED8DC1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1A0);
  }

  return result;
}

unint64_t sub_1B8068E1C()
{
  result = qword_1ED8DC1A8;
  if (!qword_1ED8DC1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1A8);
  }

  return result;
}

unint64_t sub_1B8068E74()
{
  result = qword_1ED8DC1D0;
  if (!qword_1ED8DC1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1D0);
  }

  return result;
}

unint64_t sub_1B8068ECC()
{
  result = qword_1ED8DC1D8;
  if (!qword_1ED8DC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1D8);
  }

  return result;
}

unint64_t sub_1B8068F24()
{
  result = qword_1ED8DC1B8;
  if (!qword_1ED8DC1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1B8);
  }

  return result;
}

unint64_t sub_1B8068F7C()
{
  result = qword_1ED8DC1C0;
  if (!qword_1ED8DC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1C0);
  }

  return result;
}

unint64_t sub_1B8068FD4()
{
  result = qword_1ED8DC1E0;
  if (!qword_1ED8DC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1E0);
  }

  return result;
}

unint64_t sub_1B806902C()
{
  result = qword_1ED8DC1E8;
  if (!qword_1ED8DC1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1E8);
  }

  return result;
}

unint64_t sub_1B8069084()
{
  result = qword_1ED8DC228;
  if (!qword_1ED8DC228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC228);
  }

  return result;
}

unint64_t sub_1B80690DC()
{
  result = qword_1ED8DC230;
  if (!qword_1ED8DC230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC230);
  }

  return result;
}

unint64_t sub_1B8069134()
{
  result = qword_1ED8DC210;
  if (!qword_1ED8DC210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC210);
  }

  return result;
}

unint64_t sub_1B806918C()
{
  result = qword_1ED8DC218;
  if (!qword_1ED8DC218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC218);
  }

  return result;
}

unint64_t sub_1B80691E4()
{
  result = qword_1ED8DC1F8;
  if (!qword_1ED8DC1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC1F8);
  }

  return result;
}

unint64_t sub_1B806923C()
{
  result = qword_1ED8DC200;
  if (!qword_1ED8DC200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC200);
  }

  return result;
}

unint64_t sub_1B8069294()
{
  result = qword_1ED8DC238;
  if (!qword_1ED8DC238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC238);
  }

  return result;
}

unint64_t sub_1B80692EC()
{
  result = qword_1ED8DC240;
  if (!qword_1ED8DC240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC240);
  }

  return result;
}

uint64_t sub_1B8069340(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646572616873 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572616853746F6ELL && a2 == 0xE900000000000064 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6967696C45746F6ELL && a2 == 0xEB00000000656C62)
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

FindMyLocate::LocationShareState_optional __swiftcall LocationShareState.init(rawValue:)(Swift::String rawValue)
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

uint64_t LocationShareState.rawValue.getter()
{
  v1 = 0x6572616853746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x6967696C45746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x646572616873;
  }
}

uint64_t sub_1B8069524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572616853746F6ELL;
  v4 = 0xE900000000000064;
  if (v2 != 1)
  {
    v3 = 0x6967696C45746F6ELL;
    v4 = 0xEB00000000656C62;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x646572616873;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6572616853746F6ELL;
  v8 = 0xE900000000000064;
  if (*a2 != 1)
  {
    v7 = 0x6967696C45746F6ELL;
    v8 = 0xEB00000000656C62;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x646572616873;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

unint64_t sub_1B8069640()
{
  result = qword_1EBA66698;
  if (!qword_1EBA66698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66698);
  }

  return result;
}

uint64_t sub_1B8069694()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B8069740()
{
  *v0;
  *v0;
  sub_1B80C911C();
}

uint64_t sub_1B80697D8()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B806988C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000064;
  v5 = 0x6572616853746F6ELL;
  if (v2 != 1)
  {
    v5 = 0x6967696C45746F6ELL;
    v4 = 0xEB00000000656C62;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646572616873;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1B80699B4()
{
  result = qword_1EBA666A0;
  if (!qword_1EBA666A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666A0);
  }

  return result;
}

FindMyLocate::Account::TokenStatus_optional __swiftcall Account.TokenStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t Account.icloudIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Account.dsid.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Account.authToken.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Account.authToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Account.appToken.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t Account.appHostName.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t Account.apsEnvironment.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return v1;
}

uint64_t Account.peopleURL.getter()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);

  return v1;
}

unint64_t sub_1B8069CC4()
{
  v1 = *v0;
  v2 = 1684632420;
  v3 = 0x7269766E45737061;
  if (v1 != 6)
  {
    v3 = 0x5255656C706F6570;
  }

  v4 = 0x6E656B6F54707061;
  if (v1 != 4)
  {
    v4 = 0x4E74736F48707061;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = 0x656B6F5468747561;
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

uint64_t sub_1B8069DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B806AA30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8069E0C(uint64_t a1)
{
  v2 = sub_1B806A15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8069E48(uint64_t a1)
{
  v2 = sub_1B806A15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Account.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA666A8, &qword_1B80D5D00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v28 = v1[3];
  v29 = v10;
  v11 = v1[4];
  v26 = v1[5];
  v27 = v11;
  v25 = *(v1 + 48);
  v12 = v1[8];
  v24[5] = v1[7];
  v24[6] = v12;
  v13 = v1[10];
  v24[3] = v1[9];
  v24[4] = v13;
  v14 = v1[12];
  v24[1] = v1[11];
  v24[2] = v14;
  v15 = v1[14];
  v24[0] = v1[13];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  sub_1B806A15C();
  sub_1B80C99DC();
  v39 = 0;
  v21 = v30;
  sub_1B80C978C();
  if (v21)
  {
    return (*(v4 + 8))(v7, v20);
  }

  v22 = v25;
  v30 = v15;
  v38 = 1;
  sub_1B80C978C();
  v37 = 2;
  sub_1B80C975C();
  v36 = v22;
  v35 = 3;
  sub_1B806A1B0();
  sub_1B80C97DC();
  v34 = 4;
  sub_1B80C978C();
  v33 = 5;
  sub_1B80C975C();
  v32 = 6;
  sub_1B80C978C();
  v31 = 7;
  sub_1B80C975C();
  return (*(v4 + 8))(0, v20);
}

unint64_t sub_1B806A15C()
{
  result = qword_1EBA666B0;
  if (!qword_1EBA666B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666B0);
  }

  return result;
}

unint64_t sub_1B806A1B0()
{
  result = qword_1EBA666B8;
  if (!qword_1EBA666B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666B8);
  }

  return result;
}

uint64_t Account.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA666C0, &qword_1B80D5D08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806A15C();
  sub_1B80C99BC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v55[0]) = 0;
    v11 = sub_1B80C96DC();
    v46 = v12;
    LOBYTE(v55[0]) = 1;
    v13 = sub_1B80C96DC();
    *(&v45 + 1) = v14;
    *&v45 = v13;
    v44 = a2;
    LOBYTE(v55[0]) = 2;
    v15 = sub_1B80C96AC();
    v17 = v16;
    v42 = v15;
    LOBYTE(v47) = 3;
    sub_1B806A7D4();
    sub_1B80C972C();
    v18 = LOBYTE(v55[0]);
    LOBYTE(v55[0]) = 4;
    v19 = sub_1B80C96DC();
    v41 = v20;
    v65 = 1;
    v40 = v19;
    LOBYTE(v55[0]) = 5;
    v38 = sub_1B80C96AC();
    v39 = v18;
    v43 = v21;
    LOBYTE(v55[0]) = 6;
    v22 = sub_1B80C96DC();
    v24 = v23;
    v37 = v22;
    v66 = 7;
    v25 = sub_1B80C96AC();
    v26 = v9;
    v28 = v27;
    (*(v6 + 8))(v26, v5);
    *&v47 = v11;
    v29 = v46;
    *(&v47 + 1) = v46;
    v48 = v45;
    v30 = *(&v45 + 1);
    *&v49 = v42;
    *(&v49 + 1) = v17;
    LOBYTE(v50) = v39;
    *(&v50 + 1) = v40;
    *&v51 = v41;
    *(&v51 + 1) = v38;
    *&v52 = v43;
    *(&v52 + 1) = v37;
    *&v53 = v24;
    *(&v53 + 1) = v25;
    v54 = v28;
    v31 = v44;
    *(v44 + 112) = v28;
    v32 = v52;
    v31[4] = v51;
    v31[5] = v32;
    v31[6] = v53;
    v33 = v47;
    v34 = v48;
    v35 = v50;
    v31[2] = v49;
    v31[3] = v35;
    *v31 = v33;
    v31[1] = v34;
    sub_1B806A828(&v47, v55);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v55[0] = v11;
    v55[1] = v29;
    v55[2] = v45;
    v55[3] = v30;
    v55[4] = v42;
    v55[5] = v17;
    v56 = v39;
    v57 = v40;
    v58 = v41;
    v59 = v38;
    v60 = v43;
    v61 = v37;
    v62 = v24;
    v63 = v25;
    v64 = v28;
    return sub_1B806A860(v55);
  }
}

unint64_t sub_1B806A7D4()
{
  result = qword_1EBA666C8;
  if (!qword_1EBA666C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666C8);
  }

  return result;
}

unint64_t sub_1B806A894()
{
  result = qword_1EBA666D0;
  if (!qword_1EBA666D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666D0);
  }

  return result;
}

unint64_t sub_1B806A92C()
{
  result = qword_1EBA666D8;
  if (!qword_1EBA666D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666D8);
  }

  return result;
}

unint64_t sub_1B806A984()
{
  result = qword_1EBA666E0;
  if (!qword_1EBA666E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666E0);
  }

  return result;
}

unint64_t sub_1B806A9DC()
{
  result = qword_1EBA666E8;
  if (!qword_1EBA666E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666E8);
  }

  return result;
}

uint64_t sub_1B806AA30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001B80CD830 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632420 && a2 == 0xE400000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656B6F5468747561 && a2 == 0xE90000000000006ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656B6F5468747561 && a2 == 0xEF7375746174536ELL || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656B6F54707061 && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4E74736F48707061 && a2 == 0xEB00000000656D61 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7269766E45737061 && a2 == 0xEE00746E656D6E6FLL || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x5255656C706F6570 && a2 == 0xE90000000000004CLL)
  {

    return 7;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

unint64_t sub_1B806ACF0()
{
  result = qword_1EBA666F0;
  if (!qword_1EBA666F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666F0);
  }

  return result;
}

void Address.init(mapItem:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v115 = 0;
  v116 = 0;
  v113 = 0;
  v114 = 0;
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    sub_1B80C90BC();

    v6 = sub_1B80C917C();
    v109 = v7;
    v110 = v6;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v8 = [a1 geoAddress];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 formattedAddressLines];
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v12 = v10;
      sub_1B80C920C();
    }

    v13 = [v9 structuredAddress];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 country];
      if (v15)
      {
        v16 = v15;
        sub_1B80C90BC();

        v17 = sub_1B80C917C();
        v106 = v18;
        v107 = v17;
      }

      else
      {
        v106 = 0;
        v107 = 0;
      }

      v21 = [v14 countryCode];
      if (v21)
      {
        v22 = v21;
        sub_1B80C90BC();

        v23 = sub_1B80C917C();
        v104 = v24;
        v105 = v23;
      }

      else
      {
        v104 = 0;
        v105 = 0;
      }

      v25 = [v14 thoroughfare];
      if (v25)
      {
        v26 = v25;
        sub_1B80C90BC();

        v103 = sub_1B80C917C();
        v115 = v103;
        v116 = v27;
      }

      else
      {
        v103 = 0;
        v27 = 0;
      }

      v111 = v27;
      v28 = [v14 fullThoroughfare];
      if (v28)
      {
        v29 = v28;
        sub_1B80C90BC();

        v30 = sub_1B80C917C();
        v101 = v31;
        v102 = v30;
      }

      else
      {
        v101 = 0;
        v102 = 0;
      }

      v32 = [v14 locality];
      if (v32)
      {
        v33 = v32;
        sub_1B80C90BC();

        v100 = sub_1B80C917C();
        v113 = v100;
        v114 = v34;
        v19 = v34;
      }

      else
      {
        v100 = 0;
        v19 = 0;
      }

      v35 = [v14 administrativeAreaCode];
      if (v35)
      {
        v36 = v35;
        sub_1B80C90BC();

        v37 = sub_1B80C917C();
        v97 = v38;
        v98 = v37;
      }

      else
      {
        v97 = 0;
        v98 = 0;
      }

      v39 = [v14 administrativeArea];
      if (v39)
      {
        v40 = v39;
        sub_1B80C90BC();

        v41 = sub_1B80C917C();
        v95 = v42;
        v96 = v41;
      }

      else
      {
        v95 = 0;
        v96 = 0;
      }

      v43 = [v14 subAdministrativeArea];
      if (v43)
      {
        v44 = v43;
        sub_1B80C90BC();

        v45 = sub_1B80C917C();
        v93 = v46;
        v94 = v45;
      }

      else
      {

        v93 = 0;
        v94 = 0;
      }

      v20 = v111;
    }

    else
    {

      v93 = 0;
      v94 = 0;
      v95 = 0;
      v96 = 0;
      v97 = 0;
      v98 = 0;
      v101 = 0;
      v102 = 0;
      v104 = 0;
      v105 = 0;
      v106 = 0;
      v107 = 0;
      v100 = 0;
      v19 = 0;
      v103 = 0;
      v20 = 0;
    }
  }

  else
  {
    v93 = 0;
    v94 = 0;
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v101 = 0;
    v102 = 0;
    v104 = 0;
    v105 = 0;
    v106 = 0;
    v107 = 0;
    v100 = 0;
    v19 = 0;
    v103 = 0;
    v20 = 0;
    v11 = MEMORY[0x1E69E7CC0];
  }

  v47 = [a1 geoAddress];
  if (v47 && (v48 = v47, v49 = [v47 structuredAddress], v48, v49) && (v50 = objc_msgSend(v49, sel_fullThoroughfare), v49, v50))
  {
    v51 = sub_1B80C90BC();
    v91 = v52;
    v92 = v51;
  }

  else
  {
    v91 = 0;
    v92 = 0;
  }

  v53 = [a1 geoAddress];
  v112 = v20;
  if (v53 && (v54 = v53, v55 = [v53 structuredAddress], v54, v55))
  {
    v56 = [v55 areaOfInterests];

    v57 = MEMORY[0x1E69E7CC0];
    if (v56)
    {
      sub_1B80C920C();
    }
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  v58 = [a1 addressObject];
  if (v58 && (v59 = v58, v60 = [v58 fullAddressNoCurrentCountryWithMultiline_], v59, v60))
  {
    v61 = sub_1B80C90BC();
    v89 = v62;
    v90 = v61;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v63 = [a1 addressObject];
  v64 = v63;
  v108 = v11;
  if (!v63)
  {
    goto LABEL_55;
  }

  v65 = [v63 cityAndAboveNoCurrentCountryWithFallback_];
  if (!v65)
  {
    goto LABEL_55;
  }

  v66 = v65;
  v67 = sub_1B80C90BC();
  v69 = v68;

  v70 = HIBYTE(v69) & 0xF;
  if ((v69 & 0x2000000000000000) == 0)
  {
    v70 = v67 & 0xFFFFFFFFFFFFLL;
  }

  if (!v70)
  {

LABEL_55:
    v67 = 0;
    v69 = 0;
  }

  v71 = sub_1B806BBFC(&v115, &v113);
  v73 = v72;

  if (v73)
  {
    v74 = HIBYTE(v73) & 0xF;
    if ((v73 & 0x2000000000000000) == 0)
    {
      v74 = v71 & 0xFFFFFFFFFFFFLL;
    }

    if (!v74)
    {

      v71 = 0;
      v73 = 0;
    }
  }

  else
  {
    v71 = 0;
  }

  v99 = v19;
  v88 = v67;
  if (v64)
  {
    v75 = [v64 shortAddress];
    v87 = v57;
    if (v75)
    {
      v76 = v75;
      v77 = sub_1B80C90BC();
      v79 = v78;

      v80 = HIBYTE(v79) & 0xF;
      if ((v79 & 0x2000000000000000) == 0)
      {
        v80 = v77 & 0xFFFFFFFFFFFFLL;
      }

      if (v80)
      {
LABEL_69:
        v81 = [v64 fullAddressNoCurrentCountryWithMultiline_];
        if (v81)
        {
          v82 = v81;
          v83 = sub_1B80C90BC();
          v85 = v84;

          swift_unknownObjectRelease();
          v86 = HIBYTE(v85) & 0xF;
          if ((v85 & 0x2000000000000000) == 0)
          {
            v86 = v83 & 0xFFFFFFFFFFFFLL;
          }

          if (v86)
          {
            goto LABEL_77;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v83 = 0;
        v85 = 0;
LABEL_77:
        v57 = v87;
        goto LABEL_78;
      }
    }

    v77 = 0;
    v79 = 0;
    goto LABEL_69;
  }

  swift_unknownObjectRelease();
  v77 = 0;
  v79 = 0;
  v83 = 0;
  v85 = 0;
LABEL_78:
  *a2 = v110;
  a2[1] = v109;
  a2[2] = v108;
  a2[3] = v107;
  a2[4] = v106;
  a2[5] = v105;
  a2[6] = v104;
  a2[7] = v103;
  a2[8] = v112;
  a2[9] = v102;
  a2[10] = v101;
  a2[11] = v100;
  a2[12] = v99;
  a2[13] = v98;
  a2[14] = v97;
  a2[15] = v96;
  a2[16] = v95;
  a2[17] = v94;
  a2[18] = v93;
  a2[19] = v92;
  a2[20] = v91;
  a2[21] = v57;
  a2[22] = v90;
  a2[23] = v89;
  a2[24] = v88;
  a2[25] = v69;
  a2[26] = 0;
  a2[27] = 0;
  a2[28] = v71;
  a2[29] = v73;
  a2[30] = v77;
  a2[31] = v79;
  a2[32] = v83;
  a2[33] = v85;
}

uint64_t Address.description.getter()
{
  v1 = v0[1];
  v31 = *v0;
  v32 = v0[2];
  v2 = v0[4];
  v34 = v0[3];
  v35 = v0[5];
  v33 = v0[6];
  v3 = v0[8];
  v4 = v0[10];
  v36 = v0[7];
  v37 = v0[12];
  v5 = v0[14];
  v38 = v0[9];
  v6 = v0[16];
  v39 = v0[18];
  v40 = v0[17];
  v41 = v0[19];
  v54 = v0[20];
  v42 = v0[21];
  v43 = v0[22];
  v55 = v0[23];
  v44 = v0[25];
  v45 = v0[24];
  v46 = v0[27];
  v47 = v0[26];
  v49 = v0[28];
  v48 = v0[29];
  v50 = v0[31];
  v51 = v0[30];
  v52 = v0[33];
  v53 = v0[32];

  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0x203A6C6562616CLL, 0xE700000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v7 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v7);

  MEMORY[0x1B8CB7A40](0xD000000000000017, 0x80000001B80CD850);
  v8 = MEMORY[0x1B8CB7B30](v32, MEMORY[0x1E69E6158]);
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0x7972746E756F630ALL, 0xEA0000000000203ALL);
  v9 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v9);

  MEMORY[0x1B8CB7A40](0x7972746E756F630ALL, 0xEE00203A65646F43);
  v10 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v10);

  MEMORY[0x1B8CB7A40](0x4E7465657274730ALL, 0xED0000203A656D61);
  v11 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v11);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD870);
  v12 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v12);

  MEMORY[0x1B8CB7A40](0x74696C61636F6C0ALL, 0xEB00000000203A79);
  v13 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v13);

  MEMORY[0x1B8CB7A40](0x6F4365746174730ALL, 0xEC000000203A6564);
  v14 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v14);

  MEMORY[0x1B8CB7A40](0xD000000000000015, 0x80000001B80CD890);
  v15 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v15);

  MEMORY[0x1B8CB7A40](0xD000000000000018, 0x80000001B80CD8B0);
  v16 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v16);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CD8D0);
  v17 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v17);

  MEMORY[0x1B8CB7A40](0xD000000000000011, 0x80000001B80CD8F0);
  v18 = MEMORY[0x1B8CB7B30](v42, MEMORY[0x1E69E6158]);
  MEMORY[0x1B8CB7A40](v18);

  MEMORY[0x1B8CB7A40](0xD00000000000001ALL, 0x80000001B80CD910);
  v19 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v19);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD930);
  if (v44)
  {
    v20 = v45;
  }

  else
  {
    v20 = 45;
  }

  if (v44)
  {
    v21 = v44;
  }

  else
  {
    v21 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v20, v21);

  MEMORY[0x1B8CB7A40](0x72646441696F700ALL, 0xED0000203A737365);
  if (v46)
  {
    v22 = v47;
  }

  else
  {
    v22 = 45;
  }

  if (v46)
  {
    v23 = v46;
  }

  else
  {
    v23 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v22, v23);

  MEMORY[0x1B8CB7A40](0x64416C6C616D730ALL, 0xEF203A7373657264);
  if (v48)
  {
    v24 = v49;
  }

  else
  {
    v24 = 45;
  }

  if (v48)
  {
    v25 = v48;
  }

  else
  {
    v25 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v24, v25);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD950);
  if (v50)
  {
    v26 = v51;
  }

  else
  {
    v26 = 45;
  }

  if (v50)
  {
    v27 = v50;
  }

  else
  {
    v27 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v26, v27);

  MEMORY[0x1B8CB7A40](0x6441656772616C0ALL, 0xEF203A7373657264);
  if (v52)
  {
    v28 = v53;
  }

  else
  {
    v28 = 45;
  }

  if (v52)
  {
    v29 = v52;
  }

  else
  {
    v29 = 0xE100000000000000;
  }

  MEMORY[0x1B8CB7A40](v28, v29);

  return 0;
}

uint64_t sub_1B806BBFC(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = a1[1];
  if (!v4)
  {
    return 0;
  }

  v5 = *a1;
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    return 0;
  }

  swift_beginAccess();
  v7 = a2[1];
  if (!v7)
  {
    return 0;
  }

  v8 = *a2;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = *a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();

  v12 = [v11 bundleForClass_];
  sub_1B80C8C8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B80D20F0;
  v14 = MEMORY[0x1E69E6158];
  *(v13 + 56) = MEMORY[0x1E69E6158];
  v15 = sub_1B806BEAC();
  *(v13 + 32) = v5;
  *(v13 + 40) = v4;
  *(v13 + 96) = v14;
  *(v13 + 104) = v15;
  *(v13 + 64) = v15;
  *(v13 + 72) = v8;
  *(v13 + 80) = v7;
  v16 = sub_1B80C90CC();

  return v16;
}

uint64_t sub_1B806BDD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B806BE18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B806BEAC()
{
  result = qword_1EBA666F8;
  if (!qword_1EBA666F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA666F8);
  }

  return result;
}

uint64_t DefaultCustomLabel.localizedLabel.getter()
{
  v1 = *v0;
  type metadata accessor for BundleHelper();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_1B80C8C8C();

  return v4;
}

FindMyLocate::DefaultCustomLabel_optional __swiftcall DefaultCustomLabel.init(rawValue:)(Swift::String rawValue)
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

uint64_t DefaultCustomLabel.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x656D6F683C21245FLL;
  v3 = 0x6F6863733C21245FLL;
  v4 = 0x3E6D79673C21245FLL;
  if (v1 != 3)
  {
    v4 = 0x6568746F3C21245FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B726F773C21245FLL;
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

unint64_t sub_1B806C148()
{
  result = qword_1EBA66700;
  if (!qword_1EBA66700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66700);
  }

  return result;
}

uint64_t sub_1B806C19C()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B806C2A4()
{
  *v0;
  *v0;
  *v0;
  sub_1B80C911C();
}

uint64_t sub_1B806C398()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

void sub_1B806C4A8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x656D6F683C21245FLL;
  v4 = 0xEE005F24213E6C6FLL;
  v5 = 0x6F6863733C21245FLL;
  v6 = 0xEB000000005F2421;
  v7 = 0x3E6D79673C21245FLL;
  if (v2 != 3)
  {
    v7 = 0x6568746F3C21245FLL;
    v6 = 0xED00005F24213E72;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (*v1)
  {
    v3 = 0x6B726F773C21245FLL;
  }

  if (*v1 <= 1u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v5;
  }

  if (*v1 <= 1u)
  {
    v9 = 0xEC0000005F24213ELL;
  }

  else
  {
    v9 = v4;
  }

  *a1 = v8;
  a1[1] = v9;
}

uint64_t DecodedLocationNotification.handle.getter@<X0>(_OWORD *a1@<X8>)
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
  return sub_1B805D84C(v18, &v17);
}

void *DecodedLocationNotification.contact.getter()
{
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

void *DecodedLocationNotification.location.getter()
{
  v1 = *(v0 + 184);
  v2 = v1;
  return v1;
}

uint64_t sub_1B806C65C()
{
  v1 = 0x746361746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

uint64_t sub_1B806C6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B806D53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B806C6DC(uint64_t a1)
{
  v2 = sub_1B806CAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806C718(uint64_t a1)
{
  v2 = sub_1B806CAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 DecodedLocationNotification.init(handle:contact:location:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 144);
  *(a4 + 128) = *(a1 + 128);
  *(a4 + 144) = v4;
  *(a4 + 160) = *(a1 + 160);
  v5 = *(a1 + 80);
  *(a4 + 64) = *(a1 + 64);
  *(a4 + 80) = v5;
  v6 = *(a1 + 112);
  *(a4 + 96) = *(a1 + 96);
  *(a4 + 112) = v6;
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  result = *(a1 + 48);
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 48) = result;
  *(a4 + 176) = a2;
  *(a4 + 184) = a3;
  return result;
}

uint64_t DecodedLocationNotification.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66708, &qword_1B80D61A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1B806CAEC();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v26);
  }

  v12 = v6;
  v64 = 0;
  sub_1B7FDC440();
  sub_1B80C96CC();
  v13 = v5;
  v61 = v50;
  v62 = v51;
  v63 = v52;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v60 = v49;
  v53 = v42;
  v54 = v43;
  v55 = v44;
  v56 = v45;
  v14 = sub_1B806CBA8(1, &qword_1EBA65FC8, 0x1E695CD58, &qword_1EBA66760, &qword_1B80D6400);
  v15 = sub_1B806CBA8(2, &qword_1ED8DBBE8, 0x1E6985C40, &qword_1EBA66750, &qword_1B80D63F8);
  (*(v12 + 8))(v9, v13);
  v35 = v61;
  v36 = v62;
  v37 = v63;
  v31 = v57;
  v32 = v58;
  v16 = v60;
  v33 = v59;
  v34 = v60;
  v27 = v53;
  v28 = v54;
  v17 = v56;
  v29 = v55;
  v30 = v56;
  v18 = v62;
  a2[8] = v61;
  a2[9] = v18;
  v19 = v32;
  v20 = v33;
  a2[4] = v31;
  a2[5] = v19;
  *&v38 = v14;
  *(&v38 + 1) = v15;
  a2[6] = v20;
  a2[7] = v16;
  v21 = v28;
  v22 = v29;
  *a2 = v27;
  a2[1] = v21;
  a2[2] = v22;
  a2[3] = v17;
  v23 = v38;
  a2[10] = v37;
  a2[11] = v23;
  sub_1B806CEA4(&v27, v39);
  __swift_destroy_boxed_opaque_existential_0(v26);
  v39[8] = v61;
  v39[9] = v62;
  v39[10] = v63;
  v39[4] = v57;
  v39[5] = v58;
  v39[6] = v59;
  v39[7] = v60;
  v39[0] = v53;
  v39[1] = v54;
  v39[2] = v55;
  v39[3] = v56;
  v40 = v14;
  v41 = v15;
  return sub_1B804D010(v39);
}

unint64_t sub_1B806CAEC()
{
  result = qword_1EBA66710;
  if (!qword_1EBA66710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66710);
  }

  return result;
}

uint64_t sub_1B806CB40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D78, &qword_1B80D2640);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B806CBA8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v19 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66708, &qword_1B80D61A8);
  sub_1B806D6A4();
  result = sub_1B80C96CC();
  if (!v5)
  {
    if (v18 >> 60 == 15)
    {
      result = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66748, &qword_1B80D63F0);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1B80D1EB0;
      v12 = sub_1B7FBFCCC(0, a2, a3);
      *(v11 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      *(v11 + 32) = v12;
      v13 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
      v14 = sub_1B80C91FC();

      v15 = [v13 initWithArray_];

      sub_1B80C93AC();
      sub_1B806D6F8();
      swift_allocError();
      swift_willThrow();
      result = sub_1B7FC72F8(v17, v18);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t DecodedLocationNotification.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66718, &qword_1B80D61B0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = v1[9];
  v50 = v1[8];
  v51 = v9;
  v52 = v1[10];
  v10 = v1[5];
  v46 = v1[4];
  v47 = v10;
  v11 = v1[7];
  v48 = v1[6];
  v49 = v11;
  v12 = v1[1];
  v42 = *v1;
  v43 = v12;
  v13 = v1[3];
  v44 = v1[2];
  v45 = v13;
  v14 = *(v1 + 22);
  v18 = *(v1 + 23);
  v19 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B805D84C(&v42, &v31);
  sub_1B806CAEC();
  sub_1B80C99DC();
  v39 = v50;
  v40 = v51;
  v41 = v52;
  v35 = v46;
  v36 = v47;
  v37 = v48;
  v38 = v49;
  v31 = v42;
  v32 = v43;
  v33 = v44;
  v34 = v45;
  v53 = 0;
  sub_1B7FDC224();
  sub_1B80C977C();
  if (v2)
  {
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    sub_1B806CB40(&v20);
  }

  else
  {
    v16 = v18;
    v28 = v39;
    v29 = v40;
    v30 = v41;
    v24 = v35;
    v25 = v36;
    v26 = v37;
    v27 = v38;
    v20 = v31;
    v21 = v32;
    v22 = v33;
    v23 = v34;
    sub_1B806CB40(&v20);
    sub_1B806D154(v19);
    sub_1B806D154(v16);
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1B806D154(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = objc_opt_self();
    v11 = 0;
    v3 = a1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v11];
    v5 = v11;
    if (v4)
    {
      v6 = sub_1B80C8D3C();
      v8 = v7;

      v11 = v6;
      v12 = v8;
      sub_1B7FC62D8(v6, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66718, &qword_1B80D61B0);
      sub_1B806D650();
      sub_1B80C977C();
      sub_1B7FC72F8(v11, v12);

      sub_1B7FC3CCC(v6, v8);
    }

    else
    {
      v9 = v5;
      sub_1B80C8D0C();

      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t get_enum_tag_for_layout_string_12FindMyLocate6HandleVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy192_8(uint64_t a1, __int128 *a2)
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
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = result;
  *(a1 + 144) = v9;
  return result;
}

uint64_t sub_1B806D334(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 192))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B806D390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 184) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 192) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B806D438()
{
  result = qword_1EBA66720;
  if (!qword_1EBA66720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66720);
  }

  return result;
}

unint64_t sub_1B806D490()
{
  result = qword_1EBA66728;
  if (!qword_1EBA66728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66728);
  }

  return result;
}

unint64_t sub_1B806D4E8()
{
  result = qword_1EBA66730;
  if (!qword_1EBA66730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66730);
  }

  return result;
}

uint64_t sub_1B806D53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
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

unint64_t sub_1B806D650()
{
  result = qword_1EBA66738;
  if (!qword_1EBA66738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66738);
  }

  return result;
}

unint64_t sub_1B806D6A4()
{
  result = qword_1EBA66740;
  if (!qword_1EBA66740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66740);
  }

  return result;
}

unint64_t sub_1B806D6F8()
{
  result = qword_1EBA66758;
  if (!qword_1EBA66758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66758);
  }

  return result;
}

uint64_t Device.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Device.deviceName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Device.idsDeviceId.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall Device.init(identifier:deviceName:idsDeviceId:isActive:isThisDevice:isCompanion:isAutoMeCapable:)(FindMyLocate::Device *__return_ptr retstr, Swift::String identifier, Swift::String deviceName, Swift::String idsDeviceId, Swift::Bool isActive, Swift::Bool isThisDevice, Swift::Bool isCompanion, Swift::Bool isAutoMeCapable)
{
  retstr->identifier = identifier;
  retstr->deviceName = deviceName;
  retstr->idsDeviceId = idsDeviceId;
  retstr->isActive = isActive;
  retstr->isThisDevice = isThisDevice;
  retstr->isCompanion = isCompanion;
  retstr->isAutoMeCapable = isAutoMeCapable;
}

uint64_t Device.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  v19 = *(v0 + 51);
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0x696669746E656469, 0xEC000000203A7265);
  MEMORY[0x1B8CB7A40](v1, v2);
  MEMORY[0x1B8CB7A40](0x4E65636976656420, 0xED0000203A656D61);
  MEMORY[0x1B8CB7A40](v3, v4);
  MEMORY[0x1B8CB7A40](0x6976654473646920, 0xEE00203A64496563);
  MEMORY[0x1B8CB7A40](v5, v6);
  MEMORY[0x1B8CB7A40](0x7669746341736920, 0xEB00000000203A65);
  if (v7)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v7)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v10, v11);

  MEMORY[0x1B8CB7A40](0x4473696854736920, 0xEF203A6563697665);
  if (v8)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v8)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v12, v13);

  MEMORY[0x1B8CB7A40](0x61706D6F43736920, 0xEE00203A6E6F696ELL);
  if (v9)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (v9)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v14, v15);

  MEMORY[0x1B8CB7A40](0xD000000000000012, 0x80000001B80CDA30);
  if (v19)
  {
    v16 = 1702195828;
  }

  else
  {
    v16 = 0x65736C6166;
  }

  if (v19)
  {
    v17 = 0xE400000000000000;
  }

  else
  {
    v17 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v16, v17);

  return 0;
}

uint64_t sub_1B806DA94()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6E61706D6F437369;
  if (v1 != 5)
  {
    v3 = 0x654D6F7475417369;
  }

  v4 = 0x6576697463417369;
  if (v1 != 3)
  {
    v4 = 0x6544736968547369;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E656369766564;
  if (v1 != 1)
  {
    v5 = 0x6369766544736469;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B806DB98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B806E92C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B806DBCC(uint64_t a1)
{
  v2 = sub_1B806E564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806DC08(uint64_t a1)
{
  v2 = sub_1B806E564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Device.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66768, &qword_1B80D6458);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v15 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  v11 = v1[4];
  v16 = v1[5];
  v17 = v11;
  LODWORD(v11) = *(v1 + 48);
  v15[4] = *(v1 + 49);
  v15[5] = v11;
  LODWORD(v11) = *(v1 + 50);
  v15[2] = *(v1 + 51);
  v15[3] = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806E564();
  sub_1B80C99DC();
  v27 = 0;
  v13 = v20;
  sub_1B80C978C();
  if (v13)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v26 = 1;
  sub_1B80C978C();
  v25 = 2;
  sub_1B80C978C();
  v24 = 3;
  sub_1B80C979C();
  v23 = 4;
  sub_1B80C979C();
  v22 = 5;
  sub_1B80C979C();
  v21 = 6;
  sub_1B80C979C();
  return (*(v4 + 8))(v7, v3);
}

uint64_t Device.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = *(v0 + 49);
  v9 = *(v0 + 50);
  v10 = *(v0 + 51);
  sub_1B80C911C();
  sub_1B80C911C();
  sub_1B80C911C();
  sub_1B80C995C();
  sub_1B80C995C();
  sub_1B80C995C();
  return sub_1B80C995C();
}

uint64_t Device.hashValue.getter()
{
  sub_1B80C993C();
  Device.hash(into:)();
  return sub_1B80C997C();
}

uint64_t Device.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66770, &qword_1B80D6460);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806E564();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v32[0]) = 0;
  v11 = sub_1B80C96DC();
  v28 = v12;
  LOBYTE(v32[0]) = 1;
  *&v27 = sub_1B80C96DC();
  *(&v27 + 1) = v13;
  LOBYTE(v32[0]) = 2;
  v26 = sub_1B80C96DC();
  v15 = v14;
  LOBYTE(v32[0]) = 3;
  v37 = sub_1B80C96EC();
  LOBYTE(v32[0]) = 4;
  v25 = sub_1B80C96EC();
  LOBYTE(v32[0]) = 5;
  v24 = sub_1B80C96EC();
  v38 = 6;
  v16 = sub_1B80C96EC();
  v37 &= 1u;
  v24 &= 1u;
  v25 &= 1u;
  (*(v6 + 8))(v9, v5);
  HIDWORD(v23) = v16 & 1;
  v18 = *(&v27 + 1);
  v17 = v28;
  *&v29[0] = v11;
  *(&v29[0] + 1) = v28;
  v19 = v26;
  v20 = v27;
  v29[1] = v27;
  *&v30 = v26;
  *(&v30 + 1) = v15;
  LOBYTE(v31) = v37;
  BYTE1(v31) = v25;
  BYTE2(v31) = v24;
  HIBYTE(v31) = BYTE4(v23);
  v21 = v27;
  *a2 = v29[0];
  *(a2 + 16) = v21;
  *(a2 + 32) = v30;
  *(a2 + 48) = v31;
  sub_1B805C08C(v29, v32);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v32[0] = v11;
  v32[1] = v17;
  v32[2] = v20;
  v32[3] = v18;
  v32[4] = v19;
  v32[5] = v15;
  v33 = v37;
  v34 = v25;
  v35 = v24;
  v36 = BYTE4(v23);
  return sub_1B805C0E8(v32);
}

uint64_t sub_1B806E348()
{
  sub_1B80C993C();
  Device.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B806E38C()
{
  sub_1B80C993C();
  Device.hash(into:)();
  return sub_1B80C997C();
}

uint64_t _s12FindMyLocate6DeviceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 49);
  v6 = *(a1 + 50);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v15 = *(a1 + 51);
  v16 = *(a2 + 48);
  v17 = *(a2 + 49);
  v11 = *(a2 + 50);
  v14 = *(a2 + 51);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1B80C981C()) && (v2 == v7 && v4 == v8 || (sub_1B80C981C()))
  {
    v12 = v6 ^ v11;
    if (v3 == v9 && v5 == v10)
    {
      if (((v18 ^ v16 | v19 ^ v17 | v12) & 1) == 0)
      {
        return v15 ^ v14 ^ 1u;
      }
    }

    else if (!((v18 ^ v16) & 1 | ((sub_1B80C981C() & 1) == 0) | ((v19 ^ v17) | v12) & 1))
    {
      return v15 ^ v14 ^ 1u;
    }
  }

  return 0;
}

unint64_t sub_1B806E564()
{
  result = qword_1ED8DD558;
  if (!qword_1ED8DD558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD558);
  }

  return result;
}

unint64_t sub_1B806E5BC()
{
  result = qword_1EBA65980;
  if (!qword_1EBA65980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65980);
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B806E62C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_1B806E674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Device.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Device.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B806E828()
{
  result = qword_1EBA66778;
  if (!qword_1EBA66778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66778);
  }

  return result;
}

unint64_t sub_1B806E880()
{
  result = qword_1ED8DD548;
  if (!qword_1ED8DD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD548);
  }

  return result;
}

unint64_t sub_1B806E8D8()
{
  result = qword_1ED8DD550;
  if (!qword_1ED8DD550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD550);
  }

  return result;
}

uint64_t sub_1B806E92C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369766544736469 && a2 == 0xEB00000000644965 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6576697463417369 && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6544736968547369 && a2 == 0xEC00000065636976 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E61706D6F437369 && a2 == 0xEB000000006E6F69 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x654D6F7475417369 && a2 == 0xEF656C6261706143)
  {

    return 6;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t DeviceWithCompanion.description.getter()
{
  v11 = *(v0 + 24);
  v12 = *(v0 + 16);
  v9 = *(v0 + 40);
  v10 = *(v0 + 32);
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v14 = *(v0 + 80);
  v15 = *(v0 + 72);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v13 = *(v0 + 104);
  sub_1B8051E5C(*v0, *(v0 + 8));
  sub_1B8051E5C(v2, v3);
  sub_1B80C952C();

  strcpy(v16, "thisDevice: ");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA661B0, &qword_1B80D66C0);
  v6 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v6);

  MEMORY[0x1B8CB7A40](0x696E61706D6F6320, 0xEC000000203A6E6FLL);
  v7 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v7);

  return v16[0];
}

uint64_t DeviceWithCompanion.thisDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_1B8051E5C(v2, v3);
}

uint64_t DeviceWithCompanion.companion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return sub_1B8051E5C(v2, v3);
}

void __swiftcall DeviceWithCompanion.init(thisDevice:companion:)(FindMyLocate::DeviceWithCompanion *__return_ptr retstr, FindMyLocate::Device_optional *thisDevice, FindMyLocate::Device_optional *companion)
{
  deviceName = thisDevice->value.deviceName;
  retstr->thisDevice.value.identifier = thisDevice->value.identifier;
  retstr->thisDevice.value.deviceName = deviceName;
  retstr->thisDevice.value.idsDeviceId = thisDevice->value.idsDeviceId;
  v4 = companion->value.deviceName;
  *&retstr->thisDevice.is_nil = companion->value.identifier;
  v5 = *&companion->value.isActive;
  *&retstr->thisDevice.value.isActive = *&thisDevice->value.isActive;
  *(&retstr->companion.value.identifier._object + 7) = v4;
  *(&retstr->companion.value.deviceName._object + 7) = companion->value.idsDeviceId;
  *(&retstr->companion.value.idsDeviceId._object + 7) = v5;
}

uint64_t sub_1B806EDA4()
{
  if (*v0)
  {
    result = 0x6F696E61706D6F63;
  }

  else
  {
    result = 0x6976654473696874;
  }

  *v0;
  return result;
}

uint64_t sub_1B806EDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6976654473696874 && a2 == 0xEA00000000006563;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6F696E61706D6F63 && a2 == 0xE90000000000006ELL)
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

uint64_t sub_1B806EED4(uint64_t a1)
{
  v2 = sub_1B806F194();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B806EF10(uint64_t a1)
{
  v2 = sub_1B806F194();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DeviceWithCompanion.encode(to:)(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66780, &qword_1B80D66C8);
  v33 = *(v31 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v20 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = *(v1 + 32);
  v9 = *(v1 + 40);
  v27 = *(v1 + 24);
  v28 = v9;
  v11 = *(v1 + 48);
  v12 = *(v1 + 56);
  v25 = *(v1 + 64);
  v26 = v12;
  v13 = *(v1 + 72);
  v23 = *(v1 + 80);
  v24 = v13;
  v14 = *(v1 + 88);
  v21 = *(v1 + 96);
  v22 = v14;
  v41 = *(v1 + 104);
  v15 = a1[4];
  v29 = a1[3];
  v30 = v15;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v16 = v27;
  LODWORD(v9) = v11;
  sub_1B8051E5C(v6, v7);
  sub_1B806F194();
  v17 = v31;
  sub_1B80C99DC();
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v37 = v16;
  v38 = v10;
  v39 = v28;
  v40 = v9;
  v42 = 0;
  sub_1B806F1E8();
  v18 = v32;
  sub_1B80C977C();
  sub_1B804FBC0(v34, v35);
  if (!v18)
  {
    v34 = v26;
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v38 = v22;
    v39 = v21;
    v40 = v41;
    v42 = 1;
    sub_1B8051E5C(v26, v25);
    sub_1B80C977C();
    sub_1B804FBC0(v34, v35);
  }

  return (*(v33 + 8))(v5, v17);
}

unint64_t sub_1B806F194()
{
  result = qword_1EBA66788;
  if (!qword_1EBA66788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66788);
  }

  return result;
}

unint64_t sub_1B806F1E8()
{
  result = qword_1EBA65988;
  if (!qword_1EBA65988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA65988);
  }

  return result;
}

uint64_t DeviceWithCompanion.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66790, &qword_1B80D66D0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B806F194();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  v11 = v29;
  LOBYTE(v30[0]) = 0;
  sub_1B805B96C();
  sub_1B80C96CC();
  v28 = v35;
  v26 = v36;
  v27 = v37;
  v51 = v38;
  v52 = 1;
  sub_1B80C96CC();
  (*(v10 + 8))(v8, v4);
  v24 = v47;
  v25 = v46;
  v22 = v48;
  v23 = *(&v47 + 1);
  v20 = v49;
  v21 = *(&v48 + 1);
  HIDWORD(v19) = v50;
  v12 = *(&v27 + 1);
  v30[0] = v28;
  v13 = v26;
  v30[1] = v26;
  v14 = v27;
  v31 = v27;
  LODWORD(v10) = v51;
  LODWORD(v32) = v51;
  *(&v32 + 1) = v46;
  v33 = v47;
  v34[0] = v48;
  *&v34[1] = v49;
  DWORD2(v34[1]) = v50;
  v15 = v26;
  *v11 = v28;
  v11[1] = v15;
  v16 = v34[0];
  v11[4] = v33;
  v11[5] = v16;
  v17 = v32;
  v11[2] = v31;
  v11[3] = v17;
  *(v11 + 92) = *(v34 + 12);
  sub_1B805BEB4(v30, &v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v35 = v28;
  v36 = v13;
  *&v37 = v14;
  *(&v37 + 1) = v12;
  v38 = v10;
  v39 = v25;
  v40 = v24;
  v41 = v23;
  v42 = v22;
  v43 = v21;
  v44 = v20;
  v45 = HIDWORD(v19);
  return sub_1B805BF10(&v35);
}

uint64_t get_enum_tag_for_layout_string_12FindMyLocate6DeviceVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy108_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1B806F5A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 108))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B806F600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 108) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 108) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1B806F694()
{
  result = qword_1EBA66798;
  if (!qword_1EBA66798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA66798);
  }

  return result;
}

unint64_t sub_1B806F6EC()
{
  result = qword_1EBA667A0;
  if (!qword_1EBA667A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667A0);
  }

  return result;
}

unint64_t sub_1B806F744()
{
  result = qword_1EBA667A8;
  if (!qword_1EBA667A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667A8);
  }

  return result;
}

uint64_t Fence.label.getter()
{
  v1 = (v0 + *(type metadata accessor for Fence(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Fence.label.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Fence(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Fence.createdBy.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Fence(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Fence.finder.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Fence(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t sub_1B806F950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Fence.acceptanceStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Fence(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

double Fence.region.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Fence(0) + 40);
  result = *(v3 + 16);
  v5 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  return result;
}

__n128 Fence.region.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for Fence(0) + 40));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t Fence.placemark.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Fence(0) + 44));
  v4 = v3[9];
  v5 = v3[7];
  v30 = v3[8];
  v31 = v4;
  v6 = v3[9];
  v7 = v3[11];
  v32 = v3[10];
  v8 = v32;
  v33 = v7;
  v9 = v3[5];
  v11 = v3[3];
  v26 = v3[4];
  v10 = v26;
  v27 = v9;
  v12 = v3[5];
  v13 = v3[7];
  v28 = v3[6];
  v14 = v28;
  v29 = v13;
  v15 = v3[1];
  v16 = v3[3];
  v24 = v3[2];
  v17 = v24;
  v25 = v16;
  v18 = v3[1];
  v23[0] = *v3;
  v19 = v23[0];
  v23[1] = v18;
  a1[8] = v30;
  a1[9] = v6;
  v20 = v3[11];
  a1[10] = v8;
  a1[11] = v20;
  a1[4] = v10;
  a1[5] = v12;
  a1[6] = v14;
  a1[7] = v5;
  *a1 = v19;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v11;
  return sub_1B806FB80(v23, &v22);
}

__n128 Fence.placemark.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for Fence(0) + 44));
  v4 = v3[9];
  v17[8] = v3[8];
  v17[9] = v4;
  v5 = v3[11];
  v17[10] = v3[10];
  v17[11] = v5;
  v6 = v3[5];
  v17[4] = v3[4];
  v17[5] = v6;
  v7 = v3[7];
  v17[6] = v3[6];
  v17[7] = v7;
  v8 = v3[3];
  v17[2] = v3[2];
  v17[3] = v8;
  v9 = v3[1];
  v17[0] = *v3;
  v17[1] = v9;
  sub_1B806FC7C(v17);
  v10 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v10;
  v11 = *(a1 + 176);
  v3[10] = *(a1 + 160);
  v3[11] = v11;
  v12 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v12;
  v13 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v13;
  v14 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v14;
  result = *(a1 + 32);
  v16 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v16;
  return result;
}

uint64_t Fence.others.getter()
{
  v1 = *(v0 + *(type metadata accessor for Fence(0) + 48));
}

uint64_t Fence.updatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Fence(0) + 56);
  v4 = sub_1B80C8E2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Fence.ckRecordZoneOwnerName.getter()
{
  v1 = (v0 + *(type metadata accessor for Fence(0) + 64));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t Fence.shouldDeleteFence.setter(char a1)
{
  result = type metadata accessor for Fence(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t Fence.init(label:createdBy:finder:variant:region:placemark:others:muteEndDate:acceptanceStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v70 = a8;
  v65 = a5;
  v67 = a2;
  v66 = a1;
  v64 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v68 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58[-v20];
  v60 = &v58[-v20];
  v71 = type metadata accessor for Fence.Variant(0);
  v22 = *(*(v71 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v71);
  v69 = &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v58[-v25];
  v59 = *a3;
  v27 = *a4;
  v63 = *a6;
  v28 = *(a6 + 2);
  v62 = *(a6 + 24);
  v29 = a7[9];
  v80 = a7[8];
  v81 = v29;
  v30 = a7[11];
  v82 = a7[10];
  v83 = v30;
  v31 = a7[5];
  v76 = a7[4];
  v77 = v31;
  v32 = a7[7];
  v78 = a7[6];
  v79 = v32;
  v33 = a7[1];
  v72 = *a7;
  v73 = v33;
  v34 = a7[3];
  v74 = a7[2];
  v75 = v34;
  sub_1B806F950(a5, &v58[-v25], type metadata accessor for Fence.Variant);
  sub_1B7FB8448(a10, v21, &unk_1EBA65FD0, &unk_1B80D1920);
  v35 = type metadata accessor for Fence(0);
  v36 = v35[13];
  v37 = sub_1B80C8E2C();
  (*(*(v37 - 8) + 56))(a9 + v36, 1, 1, v37);
  v38 = v35[15];
  v39 = sub_1B80C8E9C();
  v61 = *(*(v39 - 8) + 56);
  v61(a9 + v38, 1, 1, v39);
  v40 = (a9 + v35[16]);
  sub_1B80C8E7C();
  v41 = (a9 + v35[5]);
  v42 = v67;
  *v41 = v66;
  v41[1] = v42;
  *(a9 + v35[6]) = v59;
  v43 = v35[7];
  LODWORD(v67) = v27;
  *(a9 + v43) = v27;
  sub_1B806F950(v26, a9 + v35[8], type metadata accessor for Fence.Variant);
  v44 = a9 + v35[10];
  *v44 = v63;
  *(v44 + 16) = v28;
  *(v44 + 24) = v62;
  v45 = (a9 + v35[11]);
  v46 = v81;
  v45[8] = v80;
  v45[9] = v46;
  v47 = v83;
  v45[10] = v82;
  v45[11] = v47;
  v48 = v77;
  v45[4] = v76;
  v45[5] = v48;
  v49 = v79;
  v45[6] = v78;
  v45[7] = v49;
  v50 = v73;
  *v45 = v72;
  v45[1] = v50;
  v51 = v75;
  v45[2] = v74;
  v45[3] = v51;
  *(a9 + v35[12]) = v70;
  v52 = v68;
  v53 = v60;
  sub_1B8070830(v60, v68);
  sub_1B7FF450C(v52, a9 + v36, &unk_1EBA65FD0, &unk_1B80D1920);
  v54 = a9 + v35[14];
  sub_1B80C8E1C();
  sub_1B7FB86D4(v64, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B8071064(v65, type metadata accessor for Fence.Variant);
  sub_1B7FB86D4(v53, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B7FB86D4(a9 + v38, &qword_1EBA667B0, &qword_1B80D68E8);
  v61(a9 + v38, 1, 1, v39);
  v55 = v69;
  *v40 = 0;
  v40[1] = 0;
  *(a9 + v35[17]) = 0;
  sub_1B8071324(v26, v55, type metadata accessor for Fence.Variant);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      if (v67)
      {
        v57 = 2;
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      result = sub_1B8071064(v55, type metadata accessor for Fence.Variant);
      v57 = 0;
    }
  }

  else
  {
    v57 = 2;
  }

  *(a9 + v35[9]) = v57;
  return result;
}

uint64_t Fence.init(label:createdBy:finder:variant:region:placemark:others:muteEndDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, _OWORD *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v56 = a5;
  v52 = a1;
  v53 = a2;
  v58 = a10;
  v59 = a8;
  v60 = type metadata accessor for Fence.Variant(0);
  v15 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v49[-v19];
  v21 = *a3;
  v22 = *a4;
  v51 = *a6;
  v23 = *(a6 + 2);
  v50 = *(a6 + 24);
  v24 = type metadata accessor for Fence(0);
  v25 = v24[13];
  v26 = sub_1B80C8E2C();
  (*(*(v26 - 8) + 56))(a9 + v25, 1, 1, v26);
  v27 = v24[15];
  v28 = sub_1B80C8E9C();
  v29 = *(v28 - 8);
  v54 = *(v29 + 56);
  v55 = v29 + 56;
  v54(a9 + v27, 1, 1, v28);
  v30 = (a9 + v24[16]);
  sub_1B80C8E7C();
  v31 = (a9 + v24[5]);
  v32 = v53;
  *v31 = v52;
  v31[1] = v32;
  *(a9 + v24[6]) = v21;
  v33 = v24[7];
  LODWORD(v53) = v22;
  *(a9 + v33) = v22;
  v34 = v56;
  sub_1B806F950(v56, a9 + v24[8], type metadata accessor for Fence.Variant);
  v35 = a9 + v24[10];
  *v35 = v51;
  *(v35 + 16) = v23;
  *(v35 + 24) = v50;
  v36 = (a9 + v24[11]);
  v37 = a7[9];
  v36[8] = a7[8];
  v36[9] = v37;
  v38 = a7[11];
  v36[10] = a7[10];
  v36[11] = v38;
  v39 = a7[5];
  v36[4] = a7[4];
  v36[5] = v39;
  v40 = a7[7];
  v36[6] = a7[6];
  v36[7] = v40;
  v41 = a7[1];
  *v36 = *a7;
  v36[1] = v41;
  v42 = a7[3];
  v36[2] = a7[2];
  v36[3] = v42;
  v43 = v58;
  *(a9 + v24[12]) = v59;
  sub_1B8070830(v43, v20);
  v44 = a9 + v25;
  v45 = v57;
  sub_1B7FF450C(v20, v44, &unk_1EBA65FD0, &unk_1B80D1920);
  v46 = a9 + v24[14];
  sub_1B80C8E1C();
  sub_1B7FB86D4(v43, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B7FB86D4(a9 + v27, &qword_1EBA667B0, &qword_1B80D68E8);
  v54(a9 + v27, 1, 1, v28);
  *v30 = 0;
  v30[1] = 0;
  *(a9 + v24[17]) = 0;
  sub_1B8071324(v34, v45, type metadata accessor for Fence.Variant);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      if (v53)
      {
        v48 = 2;
      }

      else
      {
        v48 = 0;
      }
    }

    else
    {
      result = sub_1B8071064(v45, type metadata accessor for Fence.Variant);
      v48 = 0;
    }
  }

  else
  {
    v48 = 2;
  }

  *(a9 + v24[9]) = v48;
  return result;
}

uint64_t sub_1B8070830@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1B80C8E2C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  sub_1B7FB8448(a1, v7, &unk_1EBA65FD0, &unk_1B80D1920);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1B7FB86D4(v7, &unk_1EBA65FD0, &unk_1B80D1920);
LABEL_6:
    v19 = 1;
    return (*(v9 + 56))(a2, v19, 1, v8);
  }

  v16 = *(v9 + 32);
  v16(v15, v7, v8);
  sub_1B80C8DFC();
  v17 = sub_1B80C8D9C();
  v18 = *(v9 + 8);
  v18(v13, v8);
  if ((v17 & 1) == 0)
  {
    v18(v15, v8);
    goto LABEL_6;
  }

  v16(a2, v15, v8);
  v19 = 0;
  return (*(v9 + 56))(a2, v19, 1, v8);
}

uint64_t Fence.init(id:label:createdBy:finder:variant:acceptanceStatus:region:placemark:others:muteEndDate:ckRecordIdentifier:ckRecordZoneOwnerName:updatedAt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v58 = a3;
  v59 = a6;
  v56 = a1;
  v57 = a2;
  v66 = a14;
  v67 = a15;
  v64 = a16;
  v65 = a13;
  v62 = a11;
  v63 = a12;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v52 - v23;
  v25 = *a4;
  v26 = *a5;
  v27 = *a7;
  v55 = *a8;
  v28 = *(a8 + 2);
  LODWORD(v23) = *(a8 + 24);
  v53 = v27;
  v54 = v23;
  v29 = type metadata accessor for Fence(0);
  v30 = v29[13];
  v61 = v30;
  v31 = sub_1B80C8E2C();
  v32 = *(v31 - 8);
  (*(v32 + 56))(a9 + v30, 1, 1, v31);
  v33 = v29[15];
  v60 = v33;
  v34 = sub_1B80C8E9C();
  (*(*(v34 - 8) + 56))(a9 + v33, 1, 1, v34);
  v35 = (a9 + v29[16]);
  v36 = v56;
  sub_1B806F950(v56, a9, type metadata accessor for Fence.ID);
  v37 = (a9 + v29[5]);
  v38 = v58;
  *v37 = v57;
  v37[1] = v38;
  *(a9 + v29[6]) = v25;
  *(a9 + v29[7]) = v26;
  v39 = v59;
  sub_1B806F950(v59, a9 + v29[8], type metadata accessor for Fence.Variant);
  v40 = v54;
  *(a9 + v29[9]) = v53;
  v41 = a9 + v29[10];
  *v41 = v55;
  *(v41 + 16) = v28;
  *(v41 + 24) = v40;
  v42 = (a9 + v29[11]);
  v43 = a10[9];
  v42[8] = a10[8];
  v42[9] = v43;
  v44 = a10[11];
  v42[10] = a10[10];
  v42[11] = v44;
  v45 = a10[5];
  v42[4] = a10[4];
  v42[5] = v45;
  v46 = a10[7];
  v42[6] = a10[6];
  v42[7] = v46;
  v47 = a10[1];
  *v42 = *a10;
  v42[1] = v47;
  v48 = a10[3];
  v42[2] = a10[2];
  v42[3] = v48;
  v49 = v63;
  *(a9 + v29[12]) = v62;
  sub_1B8070830(v49, v24);
  sub_1B7FB86D4(v49, &unk_1EBA65FD0, &unk_1B80D1920);
  sub_1B8071064(v39, type metadata accessor for Fence.Variant);
  sub_1B8071064(v36, type metadata accessor for Fence.ID);
  sub_1B7FF450C(v24, a9 + v61, &unk_1EBA65FD0, &unk_1B80D1920);
  (*(v32 + 32))(a9 + v29[14], v64, v31);
  result = sub_1B7FF450C(v65, a9 + v60, &qword_1EBA667B0, &qword_1B80D68E8);
  v51 = v67;
  *v35 = v66;
  v35[1] = v51;
  *(a9 + v29[17]) = 0;
  return result;
}

unint64_t sub_1B8070DCC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C6562616CLL;
      break;
    case 2:
      result = 0x4264657461657263;
      break;
    case 3:
      result = 0x7265646E6966;
      break;
    case 4:
      result = 0x746E6169726176;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E6F69676572;
      break;
    case 7:
      result = 0x72616D6563616C70;
      break;
    case 8:
      result = 0x73726568746FLL;
      break;
    case 9:
      result = 0x44646E456574756DLL;
      break;
    case 10:
      result = 0x4164657461647075;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B8070F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8081484(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8070F9C(uint64_t a1)
{
  v2 = sub_1B807EEEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8070FD8(uint64_t a1)
{
  v2 = sub_1B807EEEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8071064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Fence.ID.init(string:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v21 - v6;
  v8 = sub_1B80C8E9C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Fence.ID(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1B80C8E3C();

    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v19 = *(v9 + 32);
      v19(v12, v7, v8);
      v19(v17, v12, v8);
      sub_1B8071324(v17, a2, type metadata accessor for Fence.ID);
      v18 = 0;
      return (*(v14 + 56))(a2, v18, 1, v13);
    }

    sub_1B7FB86D4(v7, &qword_1EBA667B0, &qword_1B80D68E8);
  }

  v18 = 1;
  return (*(v14 + 56))(a2, v18, 1, v13);
}

uint64_t sub_1B8071324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80713A0(uint64_t a1)
{
  v2 = sub_1B807E3FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80713DC(uint64_t a1)
{
  v2 = sub_1B807E3FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s12FindMyLocate5FenceV2IDV10uuidStringSSvg_0()
{
  sub_1B80C8E4C();
  v0 = sub_1B80C90FC();

  return v0;
}

uint64_t _s12FindMyLocate5FenceV2IDV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B80C8E9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s12FindMyLocate5FenceV2IDV2idAE10Foundation4UUIDV_tcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B80C8E9C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1B8071540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
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

uint64_t sub_1B80715C8(uint64_t a1)
{
  v2 = sub_1B807EAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8071604(uint64_t a1)
{
  v2 = sub_1B807EAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s12FindMyLocate5FenceV2IDV4hash4intoys6HasherVz_tF_0()
{
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1EBA65A68, MEMORY[0x1E69695A8]);

  return sub_1B80C905C();
}

uint64_t _s12FindMyLocate5FenceV2IDV9hashValueSivg_0()
{
  sub_1B80C993C();
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1EBA65A68, MEMORY[0x1E69695A8]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t sub_1B807174C()
{
  sub_1B80C993C();
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1EBA65A68, MEMORY[0x1E69695A8]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t sub_1B80717D0(uint64_t a1)
{
  v2 = sub_1B8071E00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807180C(uint64_t a1)
{
  v2 = sub_1B8071E00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8071848()
{
  v1 = 0x676E69646E6570;
  if (*v0 != 1)
  {
    v1 = 0x6465747065636361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x48676E69646E6570;
  }
}

uint64_t sub_1B80718B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80818D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80718D8(uint64_t a1)
{
  v2 = sub_1B8071DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8071914(uint64_t a1)
{
  v2 = sub_1B8071DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8071950(uint64_t a1)
{
  v2 = sub_1B8071E54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807198C(uint64_t a1)
{
  v2 = sub_1B8071E54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80719C8(uint64_t a1)
{
  v2 = sub_1B8071EA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8071A04(uint64_t a1)
{
  v2 = sub_1B8071EA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.AcceptanceStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B8, &qword_1B80D68F0);
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667C0, &qword_1B80D68F8);
  v27 = *(v6 - 8);
  v28 = v6;
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v23 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667C8, &qword_1B80D6900);
  v24 = *(v9 - 8);
  v25 = v9;
  v10 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667D0, &qword_1B80D6908);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8071DAC();
  sub_1B80C99DC();
  if (v18)
  {
    if (v18 == 1)
    {
      v33 = 1;
      sub_1B8071E54();
      v12 = v26;
      sub_1B80C974C();
      v21 = v27;
      v20 = v28;
    }

    else
    {
      v34 = 2;
      sub_1B8071E00();
      v12 = v29;
      sub_1B80C974C();
      v21 = v30;
      v20 = v31;
    }
  }

  else
  {
    v32 = 0;
    sub_1B8071EA8();
    sub_1B80C974C();
    v21 = v24;
    v20 = v25;
  }

  (*(v21 + 8))(v12, v20);
  return (*(v14 + 8))(v17, v13);
}

unint64_t sub_1B8071DAC()
{
  result = qword_1EBA667D8;
  if (!qword_1EBA667D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667D8);
  }

  return result;
}

unint64_t sub_1B8071E00()
{
  result = qword_1EBA667E0;
  if (!qword_1EBA667E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667E0);
  }

  return result;
}

unint64_t sub_1B8071E54()
{
  result = qword_1EBA667E8;
  if (!qword_1EBA667E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667E8);
  }

  return result;
}

unint64_t sub_1B8071EA8()
{
  result = qword_1EBA667F0;
  if (!qword_1EBA667F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA667F0);
  }

  return result;
}

uint64_t Fence.AcceptanceStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667F8, &qword_1B80D6910);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66800, &qword_1B80D6918);
  v37 = *(v40 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66808, &qword_1B80D6920);
  v36 = *(v9 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66810, &qword_1B80D6928);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v35 - v16;
  v18 = a1[3];
  v19 = a1[4];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1B8071DAC();
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
      *v30 = &type metadata for Fence.AcceptanceStatus;
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
          sub_1B8071E54();
          sub_1B80C968C();
          v27 = v43;
          (*(v37 + 8))(v8, v40);
          (*(v27 + 8))(v17, v13);
        }

        else
        {
          v50 = 2;
          sub_1B8071E00();
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
        sub_1B8071EA8();
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

uint64_t Fence.AcceptanceStatus.description.getter()
{
  v1 = 0x657470656363612ELL;
  if (*v0 == 1)
  {
    v1 = 0x676E69646E65702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E65702ELL;
  }
}

uint64_t sub_1B8072508()
{
  v1 = 0x657470656363612ELL;
  if (*v0 == 1)
  {
    v1 = 0x676E69646E65702ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69646E65702ELL;
  }
}

uint64_t sub_1B8072580(uint64_t a1)
{
  v2 = sub_1B807EAA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80725BC(uint64_t a1)
{
  v2 = sub_1B807EAA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80725F8()
{
  if (*v0)
  {
    result = 0x676E697661656CLL;
  }

  else
  {
    result = 0x676E697669727261;
  }

  *v0;
  return result;
}

uint64_t sub_1B8072634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E697669727261 && a2 == 0xE800000000000000;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E697661656CLL && a2 == 0xE700000000000000)
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

uint64_t sub_1B8072710(uint64_t a1)
{
  v2 = sub_1B807EA00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807274C(uint64_t a1)
{
  v2 = sub_1B807EA00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072788(uint64_t a1)
{
  v2 = sub_1B807EA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80727C4(uint64_t a1)
{
  v2 = sub_1B807EA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072808()
{
  v1 = 0x6E69727275636572;
  if (*v0 != 1)
  {
    v1 = 0x656C756465686373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D6954656E6FLL;
  }
}

uint64_t sub_1B8072870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8081B40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8072898(uint64_t a1)
{
  v2 = sub_1B807E610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80728D4(uint64_t a1)
{
  v2 = sub_1B807E610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072910(uint64_t a1)
{
  v2 = sub_1B807E760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807294C(uint64_t a1)
{
  v2 = sub_1B807E760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072988(uint64_t a1)
{
  v2 = sub_1B807E6B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80729C4(uint64_t a1)
{
  v2 = sub_1B807E6B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8072A00(uint64_t a1)
{
  v2 = sub_1B807E664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8072A3C(uint64_t a1)
{
  v2 = sub_1B807E664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.Variant.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for Fence.Schedule(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Fence.Variant(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v1, v9, type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = *v9;
    v12 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    v12 = 1;
LABEL_5:
    MEMORY[0x1B8CB8250](v12);
    return MEMORY[0x1B8CB8250](v11);
  }

  sub_1B8071324(v9, v5, type metadata accessor for Fence.Schedule);
  MEMORY[0x1B8CB8250](2);
  v14 = *(v5 + 1);
  MEMORY[0x1B8CB8250](*v5);
  MEMORY[0x1B8CB8250](v14);
  v15 = *(v5 + 3);
  MEMORY[0x1B8CB8250](*(v5 + 2));
  MEMORY[0x1B8CB8250](v15);
  v16 = v5[32];
  sub_1B80C995C();
  v17 = *(v2 + 28);
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0]);
  sub_1B80C905C();
  return sub_1B8071064(v5, type metadata accessor for Fence.Schedule);
}

uint64_t Fence.Variant.hashValue.getter()
{
  sub_1B80C993C();
  Fence.Variant.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B8072CB0()
{
  sub_1B80C993C();
  Fence.Variant.hash(into:)();
  return sub_1B80C997C();
}

uint64_t sub_1B8072CF4()
{
  sub_1B80C993C();
  Fence.Variant.hash(into:)();
  return sub_1B80C997C();
}

uint64_t Fence.Variant.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Fence.Schedule(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Fence.Variant(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v1, v9, type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v14 = *v9;
    v18 = 0x656D6954656E6F2ELL;
    v19 = 0xE900000000000028;
    if (v14)
    {
      v12 = 0x676E697661656C2ELL;
    }

    else
    {
      v12 = 0x6E6976697272612ELL;
    }

    if (v14)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE900000000000067;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = *v9;
    v18 = 0x697272756365722ELL;
    v19 = 0xEB0000000028676ELL;
    if (v11)
    {
      v12 = 0x676E697661656C2ELL;
    }

    else
    {
      v12 = 0x6E6976697272612ELL;
    }

    if (v11)
    {
      v13 = 0xE800000000000000;
    }

    else
    {
      v13 = 0xE900000000000067;
    }

LABEL_15:
    MEMORY[0x1B8CB7A40](v12, v13);

    MEMORY[0x1B8CB7A40](41, 0xE100000000000000);
    return v18;
  }

  sub_1B8071324(v9, v5, type metadata accessor for Fence.Schedule);
  v18 = 0x6C7564656863732ELL;
  v19 = 0xEA00000000002865;
  v16 = Fence.Schedule.description.getter();
  MEMORY[0x1B8CB7A40](v16);

  MEMORY[0x1B8CB7A40](41, 0xE100000000000000);
  v17 = v18;
  sub_1B8071064(v5, type metadata accessor for Fence.Schedule);
  return v17;
}

uint64_t Fence.Variant.valueForAnalytics.getter()
{
  v1 = type metadata accessor for Fence.Variant(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v0, v4, type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      if (*v4)
      {
        return 4;
      }

      else
      {
        return 3;
      }
    }

    else
    {
      sub_1B8071064(v4, type metadata accessor for Fence.Variant);
      return 5;
    }
  }

  else if (*v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t Fence.Trigger.description.getter()
{
  if (*v0)
  {
    result = 0x676E697661656C2ELL;
  }

  else
  {
    result = 0x6E6976697272612ELL;
  }

  *v0;
  return result;
}

uint64_t sub_1B80730CC()
{
  if (*v0)
  {
    result = 0x676E697661656C2ELL;
  }

  else
  {
    result = 0x6E6976697272612ELL;
  }

  *v0;
  return result;
}

uint64_t Fence.TriggerPosition.description.getter()
{
  v1 = type metadata accessor for Fence.TriggerPosition(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v0, v4, type metadata accessor for Fence.TriggerPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B8071064(v4, type metadata accessor for Fence.TriggerPosition);
  if (!EnumCaseMultiPayload)
  {
    return 0x656469736E692ELL;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x6564697374756F2ELL;
  }

  return 0x72657465646E752ELL;
}

uint64_t sub_1B8073228(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v3, v5, type metadata accessor for Fence.TriggerPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B8071064(v5, type metadata accessor for Fence.TriggerPosition);
  if (!EnumCaseMultiPayload)
  {
    return 0x656469736E692ELL;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x6564697374756F2ELL;
  }

  return 0x72657465646E752ELL;
}

uint64_t Fence.TriggerPosition.valueForAnalytics.getter()
{
  v1 = type metadata accessor for Fence.TriggerPosition(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B806F950(v0, v4, type metadata accessor for Fence.TriggerPosition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1B8071064(v4, type metadata accessor for Fence.TriggerPosition);
  return EnumCaseMultiPayload + 1;
}

double Fence.MonitorRegion.center.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1B8073460(uint64_t a1)
{
  v2 = sub_1B807ED48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807349C(uint64_t a1)
{
  v2 = sub_1B807ED48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80734D8()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x50646570706F7264;
  if (v1 != 6)
  {
    v3 = 1819242356;
  }

  v4 = 0x4273736572646461;
  if (v1 != 4)
  {
    v4 = 0x6D6F74737563;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6F4C646E65697266;
  if (v1 != 2)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0x4C746E6572727563;
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

uint64_t sub_1B80735F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8081C68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B8073618(uint64_t a1)
{
  v2 = sub_1B807EBF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073654(uint64_t a1)
{
  v2 = sub_1B807EBF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073690(uint64_t a1)
{
  v2 = sub_1B807EE44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80736CC(uint64_t a1)
{
  v2 = sub_1B807EE44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073708(uint64_t a1)
{
  v2 = sub_1B807ECF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073744(uint64_t a1)
{
  v2 = sub_1B807ECF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073780(uint64_t a1)
{
  v2 = sub_1B807ECA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80737BC(uint64_t a1)
{
  v2 = sub_1B807ECA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80737F8(uint64_t a1)
{
  v2 = sub_1B807EDF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073834(uint64_t a1)
{
  v2 = sub_1B807EDF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073870(uint64_t a1)
{
  v2 = sub_1B807ED9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80738AC(uint64_t a1)
{
  v2 = sub_1B807ED9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80738E8(uint64_t a1)
{
  v2 = sub_1B807EC4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073924(uint64_t a1)
{
  v2 = sub_1B807EC4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073960(uint64_t a1)
{
  v2 = sub_1B807EE98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807399C(uint64_t a1)
{
  v2 = sub_1B807EE98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t Fence.MonitorRegion.Source.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x646570706F72642ELL;
  if (v1 != 6)
  {
    v3 = 0x6C6F6F742ELL;
  }

  v4 = 0x737365726464612ELL;
  if (v1 != 4)
  {
    v4 = 0x6D6F747375632ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4C646E656972662ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

unint64_t sub_1B8073B28()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x646570706F72642ELL;
  if (v1 != 6)
  {
    v3 = 0x6C6F6F742ELL;
  }

  v4 = 0x737365726464612ELL;
  if (v1 != 4)
  {
    v4 = 0x6D6F747375632ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4C646E656972662ELL;
  if (v1 != 2)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1B8073C48()
{
  if (*v0)
  {
    result = 0x726568746FLL;
  }

  else
  {
    result = 25965;
  }

  *v0;
  return result;
}

uint64_t sub_1B8073C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25965 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
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

uint64_t sub_1B8073D44(uint64_t a1)
{
  v2 = sub_1B807E450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073D80(uint64_t a1)
{
  v2 = sub_1B807E450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073DBC(uint64_t a1)
{
  v2 = sub_1B807E4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073DF8(uint64_t a1)
{
  v2 = sub_1B807E4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8073E34(uint64_t a1)
{
  v2 = sub_1B807E4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8073E70(uint64_t a1)
{
  v2 = sub_1B807E4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.Participant.description.getter()
{
  if (*v0)
  {
    result = 0x726568746F2ELL;
  }

  else
  {
    result = 6647086;
  }

  *v0;
  return result;
}

uint64_t sub_1B8073F0C()
{
  if (*v0)
  {
    result = 0x726568746F2ELL;
  }

  else
  {
    result = 6647086;
  }

  *v0;
  return result;
}

uint64_t Fence.Participant.valueForAnalytics.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B8073F50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1B8074024()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C995C();
  return sub_1B80C997C();
}

uint64_t sub_1B8074098()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80C995C();
  return sub_1B80C997C();
}

BOOL sub_1B8074120(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *sub_1B8074150@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_1B807417C@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

FindMyLocate::Fence::TimeOfDay __swiftcall Fence.TimeOfDay.init(hour:minute:)(Swift::UInt hour, Swift::UInt minute)
{
  *v2 = hour;
  v2[1] = minute;
  result.minute = minute;
  result.hour = hour;
  return result;
}

uint64_t sub_1B80742B8()
{
  if (*v0)
  {
    result = 0x6574756E696DLL;
  }

  else
  {
    result = 1920298856;
  }

  *v0;
  return result;
}

uint64_t sub_1B80742E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1920298856 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000)
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

uint64_t sub_1B80743C0(uint64_t a1)
{
  v2 = sub_1B807E808();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80743FC(uint64_t a1)
{
  v2 = sub_1B807E808();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.TimeOfDay.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1B8CB8250](*v0);
  return MEMORY[0x1B8CB8250](v1);
}

uint64_t Fence.TimeOfDay.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v2);
  return sub_1B80C997C();
}

uint64_t sub_1B80744D0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v2);
  return sub_1B80C997C();
}

uint64_t sub_1B807452C()
{
  v1 = v0[1];
  MEMORY[0x1B8CB8250](*v0);
  return MEMORY[0x1B8CB8250](v1);
}

uint64_t sub_1B8074568()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v2);
  return sub_1B80C997C();
}

__n128 Fence.Schedule.start.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 Fence.Schedule.end.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

uint64_t Fence.Schedule.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Fence.Schedule(0) + 28);
  v4 = sub_1B80C8FCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Fence.Schedule.init(start:end:daysOfWeek:timeZone:)@<X0>(_OWORD *a1@<X0>, __int128 *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  v8 = *a2;
  *a5 = *a1;
  *(a5 + 16) = v8;
  *(a5 + 32) = v7;
  v9 = *(type metadata accessor for Fence.Schedule(0) + 28);
  v10 = sub_1B80C8FCC();
  v11 = *(*(v10 - 8) + 32);

  return v11(a5 + v9, a4, v10);
}

uint64_t sub_1B8074720()
{
  v1 = 0x7472617473;
  v2 = 0x6557664F73796164;
  if (*v0 != 2)
  {
    v2 = 0x656E6F5A656D6974;
  }

  if (*v0)
  {
    v1 = 6581861;
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

uint64_t sub_1B8074794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8081F1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80747BC(uint64_t a1)
{
  v2 = sub_1B807E85C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80747F8(uint64_t a1)
{
  v2 = sub_1B807E85C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.Schedule.hash(into:)()
{
  v1 = *(v0 + 8);
  MEMORY[0x1B8CB8250](*v0);
  MEMORY[0x1B8CB8250](v1);
  v2 = *(v0 + 24);
  MEMORY[0x1B8CB8250](*(v0 + 16));
  MEMORY[0x1B8CB8250](v2);
  v3 = *(v0 + 32);
  sub_1B80C995C();
  v4 = *(type metadata accessor for Fence.Schedule(0) + 28);
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0]);
  return sub_1B80C905C();
}

uint64_t Fence.Schedule.hashValue.getter()
{
  sub_1B80C993C();
  v1 = *(v0 + 8);
  MEMORY[0x1B8CB8250](*v0);
  MEMORY[0x1B8CB8250](v1);
  v2 = *(v0 + 24);
  MEMORY[0x1B8CB8250](*(v0 + 16));
  MEMORY[0x1B8CB8250](v2);
  v3 = *(v0 + 32);
  sub_1B80C995C();
  v4 = *(type metadata accessor for Fence.Schedule(0) + 28);
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t sub_1B80749CC(uint64_t a1)
{
  sub_1B80C993C();
  v3 = *(v1 + 8);
  MEMORY[0x1B8CB8250](*v1);
  MEMORY[0x1B8CB8250](v3);
  v4 = *(v1 + 24);
  MEMORY[0x1B8CB8250](*(v1 + 16));
  MEMORY[0x1B8CB8250](v4);
  v5 = *(v1 + 32);
  sub_1B80C995C();
  v6 = *(a1 + 28);
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t sub_1B8074AA8(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  MEMORY[0x1B8CB8250](*v2);
  MEMORY[0x1B8CB8250](v4);
  v5 = *(v2 + 24);
  MEMORY[0x1B8CB8250](*(v2 + 16));
  MEMORY[0x1B8CB8250](v5);
  v6 = *(v2 + 32);
  sub_1B80C995C();
  v7 = *(a2 + 28);
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0]);
  return sub_1B80C905C();
}

uint64_t sub_1B8074B64(uint64_t a1, uint64_t a2)
{
  sub_1B80C993C();
  v4 = *(v2 + 8);
  MEMORY[0x1B8CB8250](*v2);
  MEMORY[0x1B8CB8250](v4);
  v5 = *(v2 + 24);
  MEMORY[0x1B8CB8250](*(v2 + 16));
  MEMORY[0x1B8CB8250](v5);
  v6 = *(v2 + 32);
  sub_1B80C995C();
  v7 = *(a2 + 28);
  sub_1B80C8FCC();
  sub_1B807E298(&qword_1EBA66818, MEMORY[0x1E6969BC0]);
  sub_1B80C905C();
  return sub_1B80C997C();
}

uint64_t Fence.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA667B0, &qword_1B80D68E8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v66 = &v65 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v65 - v7;
  *&v79 = 0;
  *(&v79 + 1) = 0xE000000000000000;
  sub_1B80C952C();
  v91 = v79;
  MEMORY[0x1B8CB7A40](540697705, 0xE400000000000000);
  sub_1B80C8E4C();
  v9 = sub_1B80C90FC();
  v11 = v10;

  MEMORY[0x1B8CB7A40](v9, v11);

  MEMORY[0x1B8CB7A40](0x203A6C6562616C0ALL, 0xE900000000000027);
  v12 = type metadata accessor for Fence(0);
  MEMORY[0x1B8CB7A40](*(v1 + v12[5]), *(v1 + v12[5] + 8));
  MEMORY[0x1B8CB7A40](0x6574616572630A27, 0xED0000203A794264);
  if (*(v0 + v12[6]))
  {
    v13 = 0x726568746F2ELL;
  }

  else
  {
    v13 = 6647086;
  }

  if (*(v0 + v12[6]))
  {
    v14 = 0xE600000000000000;
  }

  else
  {
    v14 = 0xE300000000000000;
  }

  MEMORY[0x1B8CB7A40](v13, v14);

  MEMORY[0x1B8CB7A40](0x3A7265646E69660ALL, 0xE900000000000020);
  if (*(v0 + v12[7]))
  {
    v15 = 0x726568746F2ELL;
  }

  else
  {
    v15 = 6647086;
  }

  if (*(v0 + v12[7]))
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xE300000000000000;
  }

  MEMORY[0x1B8CB7A40](v15, v16);

  MEMORY[0x1B8CB7A40](0x746E61697261760ALL, 0xEA0000000000203ALL);
  v17 = v0 + v12[8];
  v18 = Fence.Variant.description.getter();
  MEMORY[0x1B8CB7A40](v18);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CDA90);
  if (!*(v1 + v12[9]))
  {
    v19 = 0xEE006E6564646948;
    goto LABEL_17;
  }

  if (*(v1 + v12[9]) == 1)
  {
    v19 = 0xE800000000000000;
LABEL_17:
    v20 = 0x676E69646E65702ELL;
    goto LABEL_19;
  }

  v19 = 0xE900000000000064;
  v20 = 0x657470656363612ELL;
LABEL_19:
  MEMORY[0x1B8CB7A40](v20, v19);

  MEMORY[0x1B8CB7A40](0x3A6E6F696765720ALL, 0xEF203A74616C2820);
  v21 = (v1 + v12[10]);
  v22 = *v21;
  sub_1B80C938C();
  v23 = 0xE700000000000000;
  MEMORY[0x1B8CB7A40](0x203A6E6F6C202CLL, 0xE700000000000000);
  v24 = v21[1];
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x737569646172202CLL, 0xEA0000000000203ALL);
  v25 = v21[2];
  sub_1B80C938C();
  MEMORY[0x1B8CB7A40](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v26 = *(v21 + 24);
  if (v26 > 3)
  {
    v27 = v66;
    if (v26 > 5)
    {
      if (v26 == 6)
      {
        v23 = 0xEB000000006E6950;
        v28 = 0x646570706F72642ELL;
      }

      else
      {
        v23 = 0xE500000000000000;
        v28 = 0x6C6F6F742ELL;
      }
    }

    else if (v26 == 4)
    {
      v23 = 0xEC0000006B6F6F42;
      v28 = 0x737365726464612ELL;
    }

    else
    {
      v28 = 0x6D6F747375632ELL;
    }
  }

  else
  {
    v27 = v66;
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v23 = 0xEF6E6F697461636FLL;
        v28 = 0x4C646E656972662ELL;
      }

      else
      {
        v23 = 0x80000001B80CDA50;
        v28 = 0xD000000000000011;
      }
    }

    else if (v26)
    {
      v23 = 0x80000001B80CDA70;
      v28 = 0xD000000000000010;
    }

    else
    {
      v23 = 0xE800000000000000;
      v28 = 0x6E776F6E6B6E752ELL;
    }
  }

  MEMORY[0x1B8CB7A40](v28, v23);

  MEMORY[0x1B8CB7A40](0x6D6563616C700A29, 0xED0000203A6B7261);
  v29 = (v1 + v12[11]);
  v30 = v29[9];
  v87 = v29[8];
  v88 = v30;
  v31 = v29[11];
  v89 = v29[10];
  v90 = v31;
  v32 = v29[5];
  v83 = v29[4];
  v84 = v32;
  v33 = v29[7];
  v85 = v29[6];
  v86 = v33;
  v34 = v29[1];
  v79 = *v29;
  v80 = v34;
  v35 = v29[3];
  v81 = v29[2];
  v82 = v35;
  v36 = PlaceMark.shortDescription.getter();
  if (!v37)
  {
    v38 = v29[9];
    v75 = v29[8];
    v76 = v38;
    v39 = v29[11];
    v77 = v29[10];
    v78 = v39;
    v40 = v29[5];
    v71 = v29[4];
    v72 = v40;
    v41 = v29[7];
    v73 = v29[6];
    v74 = v41;
    v42 = v29[1];
    v67 = *v29;
    v68 = v42;
    v43 = v29[3];
    v69 = v29[2];
    v70 = v43;
    v36 = PlaceMark.description.getter();
  }

  v44 = 7104878;
  MEMORY[0x1B8CB7A40](v36);

  MEMORY[0x1B8CB7A40](0x3A73726568746F0ALL, 0xE900000000000020);
  v45 = MEMORY[0x1B8CB7B30](*(v1 + v12[12]), &type metadata for PersonHandle);
  MEMORY[0x1B8CB7A40](v45);

  MEMORY[0x1B8CB7A40](0x646E456574756D0ALL, 0xEE00203A65746144);
  sub_1B7FB8448(v1 + v12[13], v8, &unk_1EBA65FD0, &unk_1B80D1920);
  v46 = sub_1B80C8E2C();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v8, 1, v46) == 1)
  {
    sub_1B7FB86D4(v8, &unk_1EBA65FD0, &unk_1B80D1920);
    v48 = 0xE300000000000000;
    v49 = 7104878;
  }

  else
  {
    v50 = sub_1B80C8D5C();
    v48 = v51;
    (*(v47 + 8))(v8, v46);
    v49 = v50;
  }

  MEMORY[0x1B8CB7A40](v49, v48);

  MEMORY[0x1B8CB7A40](0x646574616470750ALL, 0xEC000000203A7441);
  v52 = v1 + v12[14];
  v53 = sub_1B80C8D5C();
  MEMORY[0x1B8CB7A40](v53);

  MEMORY[0x1B8CB7A40](0xD000000000000015, 0x80000001B80CDAB0);
  sub_1B7FB8448(v1 + v12[15], v27, &qword_1EBA667B0, &qword_1B80D68E8);
  v54 = sub_1B80C8E9C();
  v55 = *(v54 - 8);
  if ((*(v55 + 48))(v27, 1, v54) == 1)
  {
    sub_1B7FB86D4(v27, &qword_1EBA667B0, &qword_1B80D68E8);
    v56 = 0xE300000000000000;
    v57 = 7104878;
  }

  else
  {
    v58 = sub_1B80C8E4C();
    v56 = v59;
    (*(v55 + 8))(v27, v54);
    v57 = v58;
  }

  MEMORY[0x1B8CB7A40](v57, v56);

  MEMORY[0x1B8CB7A40](0xD000000000000018, 0x80000001B80CDAD0);
  v60 = (v1 + v12[16]);
  if (v60[1])
  {
    v44 = *v60;
    v61 = v60[1];
  }

  else
  {
    v61 = 0xE300000000000000;
  }

  MEMORY[0x1B8CB7A40](v44, v61);

  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CDAF0);
  if (*(v1 + v12[17]))
  {
    v62 = 1702195828;
  }

  else
  {
    v62 = 0x65736C6166;
  }

  if (*(v1 + v12[17]))
  {
    v63 = 0xE400000000000000;
  }

  else
  {
    v63 = 0xE500000000000000;
  }

  MEMORY[0x1B8CB7A40](v62, v63);

  return v91;
}

uint64_t Fence.Schedule.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E20, &unk_1B80D2110);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1B80D20F0;
  v2 = MEMORY[0x1E69E6810];
  v3 = MEMORY[0x1E69E6870];
  *(v1 + 56) = MEMORY[0x1E69E6810];
  *(v1 + 64) = v3;
  v4 = *(v0 + 8);
  *(v1 + 32) = *v0;
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
  *(v1 + 72) = v4;
  v5 = sub_1B80C90DC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1B80D20F0;
  *(v6 + 56) = v2;
  *(v6 + 64) = v3;
  v7 = *(v0 + 24);
  *(v6 + 32) = *(v0 + 16);
  *(v6 + 96) = v2;
  *(v6 + 104) = v3;
  *(v6 + 72) = v7;
  v8 = sub_1B80C90DC();
  v10 = v9;
  sub_1B80C952C();

  MEMORY[0x1B8CB7A40](0x209380E220, 0xA500000000000000);
  MEMORY[0x1B8CB7A40](v8, v10);

  MEMORY[0x1B8CB7A40](32, 0xE100000000000000);
  v14 = *(v0 + 32);
  Fence.DaysOfWeek.description.getter();
  MEMORY[0x1B8CB7A40]();

  MEMORY[0x1B8CB7A40](8236, 0xE200000000000000);
  v11 = v0 + *(type metadata accessor for Fence.Schedule(0) + 28);
  v12 = sub_1B80C8FAC();
  MEMORY[0x1B8CB7A40](v12);

  return v5;
}

void Fence.DaysOfWeek.description.getter()
{
  v1 = 0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v1 <= 7)
  {
    v4 = 7;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = &unk_1F2FF9510 + 24 * v1 + 32;
  while (1)
  {
    if (v1 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
      sub_1B807E2E0();
      sub_1B80C906C();

      return;
    }

    if (v5 == ++v1)
    {
      break;
    }

    v7 = v6 + 24;
    v8 = *v6;
    v6 += 24;
    if ((v8 & ~v2) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1B807D780(0, *(v3 + 2) + 1, 1, v3);
      }

      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        v3 = sub_1B807D780((v11 > 1), v12 + 1, 1, v3);
      }

      *(v3 + 2) = v12 + 1;
      v13 = &v3[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t Fence.findee.getter@<X0>(BOOL *a1@<X8>)
{
  result = type metadata accessor for Fence(0);
  *a1 = (*(v1 + *(result + 28)) & 1) == 0;
  return result;
}

uint64_t Fence.update(muteEndDate:)(uint64_t a1)
{
  v3 = sub_1B80C8E2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  sub_1B7FB8448(a1, v15, &unk_1EBA65FD0, &unk_1B80D1920);
  if ((*(v4 + 48))(v15, 1, v3) == 1)
  {
    sub_1B7FB86D4(v15, &unk_1EBA65FD0, &unk_1B80D1920);
    v18 = 1;
  }

  else
  {
    v25 = v1;
    v19 = *(v4 + 32);
    v19(v10, v15, v3);
    sub_1B80C8DFC();
    v20 = sub_1B80C8D9C();
    v21 = *(v4 + 8);
    v21(v8, v3);
    if (v20)
    {
      v19(v17, v10, v3);
      v18 = 0;
    }

    else
    {
      v21(v10, v3);
      v18 = 1;
    }

    v1 = v25;
  }

  (*(v4 + 56))(v17, v18, 1, v3);
  v22 = type metadata accessor for Fence(0);
  return sub_1B7FF450C(v17, v1 + *(v22 + 52), &unk_1EBA65FD0, &unk_1B80D1920);
}

uint64_t Fence.update(ckRecordIdentifier:owner:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for Fence(0);
  v8 = *(v7 + 60);
  sub_1B7FB86D4(v3 + v8, &qword_1EBA667B0, &qword_1B80D68E8);
  v9 = sub_1B80C8E9C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v3 + v8, a1, v9);
  (*(v10 + 56))(v3 + v8, 0, 1, v9);
  v11 = (v3 + *(v7 + 64));
  v12 = v11[1];

  *v11 = a2;
  v11[1] = a3;
  return result;
}

uint64_t static Fence.isAllowed(at:)(double a1, double a2)
{
  v6[3] = &type metadata for KoreaFeatureFlag;
  v6[4] = sub_1B807E3A8();
  v4 = sub_1B80C8A7C();
  __swift_destroy_boxed_opaque_existential_0(v6);
  if (v4)
  {
    return 1;
  }

  if (qword_1EBA65A98 != -1)
  {
    swift_once();
  }

  return [qword_1EBA66F28 containsCoordinate_] ^ 1;
}

uint64_t Fence.ID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1B80C8E9C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66830, &qword_1B80D6940);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Fence.ID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E3FC();
  sub_1B80C99BC();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1B807E298(&qword_1EBA65A60, MEMORY[0x1E69695A8]);
    sub_1B80C972C();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1B8071324(v14, v17, type metadata accessor for Fence.ID);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Fence.Participant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66838, &qword_1B80D6948);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66840, &qword_1B80D6950);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66848, &qword_1B80D6958);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E450();
  sub_1B80C99DC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1B807E4A4();
    v18 = v22;
    sub_1B80C974C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1B807E4F8();
    sub_1B80C974C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t Fence.Participant.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66868, &qword_1B80D6960);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66870, &qword_1B80D6968);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66878, &qword_1B80D6970);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E450();
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
      *v26 = &type metadata for Fence.Participant;
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
        sub_1B807E4A4();
        sub_1B80C968C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1B807E4F8();
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

uint64_t sub_1B80767BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E40, &qword_1B80D9210);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v42 - v4;
  v5 = sub_1B80C8E2C();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E48, &qword_1B80D9218);
  v43 = *(v8 - 8);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E50, &qword_1B80D9220);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Fence.TriggerPosition.CodingRepresentation(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E58, &qword_1B80D9228);
  v52 = *(v20 - 8);
  v53 = v20;
  v21 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v42 - v22;
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80819F0();
  sub_1B80C99DC();
  sub_1B806F950(v51, v19, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v32 = *v19;
    v33 = v19[1];
    LOBYTE(v54) = 0;
    sub_1B8081AEC();
    v34 = v53;
    sub_1B80C974C();
    v54 = v32;
    v55 = v33;
    sub_1B806D650();
    sub_1B80C97DC();
    (*(v42 + 8))(v15, v12);
    (*(v52 + 8))(v23, v34);
    v30 = v32;
    v31 = v33;
    return sub_1B7FC3CCC(v30, v31);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v26 = *v19;
    v27 = v19[1];
    LOBYTE(v54) = 1;
    sub_1B8081A98();
    v28 = v53;
    sub_1B80C974C();
    v54 = v26;
    v55 = v27;
    sub_1B806D650();
    v29 = v44;
    sub_1B80C97DC();
    (*(v43 + 8))(v11, v29);
    (*(v52 + 8))(v23, v28);
    v30 = v26;
    v31 = v27;
    return sub_1B7FC3CCC(v30, v31);
  }

  v37 = v47;
  v36 = v48;
  v38 = v45;
  (*(v47 + 32))(v45, v19, v48);
  LOBYTE(v54) = 2;
  sub_1B8081A44();
  v39 = v46;
  v40 = v53;
  sub_1B80C974C();
  sub_1B807E298(&qword_1ED8DC390, MEMORY[0x1E6969530]);
  v41 = v50;
  sub_1B80C97DC();
  (*(v49 + 8))(v39, v41);
  (*(v37 + 8))(v38, v36);
  return (*(v52 + 8))(v23, v40);
}

uint64_t sub_1B8076D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E00, &qword_1B80D91F0);
  v67 = *(v65 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v71 = &v59 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E08, &qword_1B80D91F8);
  v66 = *(v64 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v70 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E10, &qword_1B80D9200);
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v59 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E18, &qword_1B80D9208);
  v72 = *(v69 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v59 - v12;
  v14 = type metadata accessor for Fence.TriggerPosition.CodingRepresentation(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v59 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1B80819F0();
  v29 = v74;
  sub_1B80C99BC();
  if (!v29)
  {
    v59 = v24;
    v60 = v21;
    v31 = v68;
    v30 = v69;
    v61 = v18;
    v33 = v70;
    v32 = v71;
    v74 = v26;
    v34 = v14;
    v35 = v73;
    v36 = sub_1B80C973C();
    v37 = (2 * *(v36 + 16)) | 1;
    v76 = v36;
    v77 = v36 + 32;
    v78 = 0;
    v79 = v37;
    v38 = sub_1B7FCD6E4();
    if (v38 == 3 || v78 != v79 >> 1)
    {
      v42 = v30;
      v43 = sub_1B80C955C();
      swift_allocError();
      v45 = v44;
      v46 = v13;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v45 = v34;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v72 + 8))(v46, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38)
      {
        if (v38 == 1)
        {
          LOBYTE(v75) = 1;
          sub_1B8081A98();
          sub_1B80C968C();
          v39 = v35;
          v40 = v30;
          sub_1B806D6A4();
          v41 = v64;
          sub_1B80C972C();
          (*(v66 + 8))(v33, v41);
          (*(v72 + 8))(v13, v40);
          swift_unknownObjectRelease();
          v57 = v60;
          *v60 = v75;
          swift_storeEnumTagMultiPayload();
          v58 = v74;
          sub_1B8071324(v57, v74, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        }

        else
        {
          LOBYTE(v75) = 2;
          sub_1B8081A44();
          sub_1B80C968C();
          v53 = v30;
          sub_1B80C8E2C();
          sub_1B807E298(&qword_1ED8DBBD8, MEMORY[0x1E6969530]);
          v54 = v61;
          v55 = v65;
          sub_1B80C972C();
          v56 = v72;
          (*(v67 + 8))(v32, v55);
          (*(v56 + 8))(v13, v53);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v58 = v74;
          sub_1B8071324(v54, v74, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
          v39 = v73;
        }
      }

      else
      {
        LOBYTE(v75) = 0;
        sub_1B8081AEC();
        v49 = v31;
        sub_1B80C968C();
        sub_1B806D6A4();
        v50 = v30;
        v51 = v62;
        sub_1B80C972C();
        (*(v63 + 8))(v49, v51);
        (*(v72 + 8))(v13, v50);
        swift_unknownObjectRelease();
        v52 = v59;
        *v59 = v75;
        swift_storeEnumTagMultiPayload();
        v58 = v74;
        sub_1B8071324(v52, v74, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        v39 = v35;
      }

      sub_1B8071324(v58, v39, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v80);
}

uint64_t sub_1B8077644()
{
  v1 = 0x6564697374756FLL;
  if (*v0 != 1)
  {
    v1 = 0x6D72657465646E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656469736E69;
  }
}

uint64_t sub_1B80776A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B80826F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80776CC(uint64_t a1)
{
  v2 = sub_1B80819F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8077708(uint64_t a1)
{
  v2 = sub_1B80819F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8077744(uint64_t a1)
{
  v2 = sub_1B8081AEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8077780(uint64_t a1)
{
  v2 = sub_1B8081AEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80777BC(uint64_t a1)
{
  v2 = sub_1B8081A98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80777F8(uint64_t a1)
{
  v2 = sub_1B8081A98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8077834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1B80778B4(uint64_t a1)
{
  v2 = sub_1B8081A44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80778F0(uint64_t a1)
{
  v2 = sub_1B8081A44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.TriggerPosition.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for Fence.TriggerPosition.CodingRepresentation(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - v9;
  v11 = type metadata accessor for Fence.TriggerPosition(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B80C99AC();
  if (!v2)
  {
    v36 = v14;
    v17 = v37;
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    sub_1B807E298(&qword_1EBA66880, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
    sub_1B80C982C();
    v19 = v10;
    v20 = v10;
    v21 = v8;
    sub_1B806F950(v20, v8, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v23 = v17;
      if (EnumCaseMultiPayload != 1)
      {
        sub_1B8071064(v19, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        v29 = sub_1B80C8E2C();
        v30 = v36;
        (*(*(v29 - 8) + 32))(v36, v8, v29);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        __swift_destroy_boxed_opaque_existential_0(v38);
        sub_1B8071324(v30, v23, type metadata accessor for Fence.TriggerPosition);
        return __swift_destroy_boxed_opaque_existential_0(v39);
      }

      v25 = *v8;
      v24 = v8[1];
      sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
      sub_1B7FBFCCC(0, &qword_1ED8DBBE8, 0x1E6985C40);
      v26 = sub_1B80C943C();
      if (v26)
      {
        v31 = v26;
        sub_1B8071064(v19, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        v32 = v25;
LABEL_13:
        sub_1B7FC3CCC(v32, v24);
        v33 = v36;
        *v36 = v31;
        v30 = v33;
        goto LABEL_14;
      }

      sub_1B807E56C();
      swift_allocError();
      swift_willThrow();
      v34 = v25;
    }

    else
    {
      v27 = *v8;
      v24 = v21[1];
      sub_1B7FBFCCC(0, &qword_1EBA65D40, 0x1E696ACD0);
      sub_1B7FBFCCC(0, &qword_1ED8DBBE8, 0x1E6985C40);
      v28 = sub_1B80C943C();
      if (v28)
      {
        v23 = v17;
        v31 = v28;
        sub_1B8071064(v19, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
        v32 = v27;
        goto LABEL_13;
      }

      sub_1B807E56C();
      swift_allocError();
      swift_willThrow();
      v34 = v27;
    }

    sub_1B7FC3CCC(v34, v24);
    sub_1B8071064(v19, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  return __swift_destroy_boxed_opaque_existential_0(v39);
}

void Fence.TriggerPosition.encode(to:)(void *a1)
{
  v2 = v1;
  v23[5] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for Fence.TriggerPosition(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Fence.TriggerPosition.CodingRepresentation(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B806F950(v2, v7, type metadata accessor for Fence.TriggerPosition);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v19 = sub_1B80C8E2C();
    (*(*(v19 - 8) + 32))(v11, v7, v19);
  }

  else
  {
    v12 = *v7;
    v13 = objc_opt_self();
    v23[0] = 0;
    v14 = [v13 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v23];
    v15 = v23[0];
    if (!v14)
    {
      v21 = v15;
      sub_1B80C8D0C();

      swift_willThrow();
      goto LABEL_7;
    }

    v16 = sub_1B80C8D3C();
    v18 = v17;

    *v11 = v16;
    v11[1] = v18;
  }

  swift_storeEnumTagMultiPayload();
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80C99CC();
  __swift_mutable_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1B807E298(&qword_1EBA66890, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
  sub_1B80C983C();
  sub_1B8071064(v11, type metadata accessor for Fence.TriggerPosition.CodingRepresentation);
  __swift_destroy_boxed_opaque_existential_0(v23);
LABEL_7:
  v22 = *MEMORY[0x1E69E9840];
}

uint64_t Fence.Variant.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66898, &qword_1B80D6978);
  v40 = *(v2 - 8);
  v41 = v2;
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v34 - v4;
  v37 = type metadata accessor for Fence.Schedule(0);
  v5 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668A0, &qword_1B80D6980);
  v35 = *(v7 - 8);
  v36 = v7;
  v8 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668A8, &qword_1B80D6988);
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - v13;
  v15 = type metadata accessor for Fence.Variant(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668B0, &qword_1B80D6990);
  v43 = *(v19 - 8);
  v44 = v19;
  v20 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v34 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E610();
  sub_1B80C99DC();
  sub_1B806F950(v42, v18, type metadata accessor for Fence.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v18;
      v48 = 1;
      sub_1B807E6B8();
      v26 = v44;
      sub_1B80C974C();
      v47 = v25;
      sub_1B807E70C();
      v27 = v36;
      sub_1B80C97DC();
      (*(v35 + 8))(v10, v27);
    }

    else
    {
      v31 = v38;
      sub_1B8071324(v18, v38, type metadata accessor for Fence.Schedule);
      v49 = 2;
      sub_1B807E664();
      v32 = v39;
      v26 = v44;
      sub_1B80C974C();
      sub_1B807E298(&qword_1EBA668C8, type metadata accessor for Fence.Schedule);
      v33 = v41;
      sub_1B80C97DC();
      (*(v40 + 8))(v32, v33);
      sub_1B8071064(v31, type metadata accessor for Fence.Schedule);
    }

    return (*(v43 + 8))(v22, v26);
  }

  else
  {
    v28 = *v18;
    v46 = 0;
    sub_1B807E760();
    v29 = v44;
    sub_1B80C974C();
    v45 = v28;
    sub_1B807E70C();
    sub_1B80C97DC();
    (*(v34 + 8))(v14, v11);
    return (*(v43 + 8))(v22, v29);
  }
}

uint64_t Fence.Variant.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668E8, &qword_1B80D6998);
  v67 = *(v65 - 8);
  v3 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  v71 = &v59 - v4;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668F0, &qword_1B80D69A0);
  v66 = *(v64 - 8);
  v5 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v70 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA668F8, &qword_1B80D69A8);
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v59 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66900, &qword_1B80D69B0);
  v72 = *(v69 - 8);
  v11 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v13 = &v59 - v12;
  v14 = type metadata accessor for Fence.Variant(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v59 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v59 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v59 - v25;
  v27 = a1[3];
  v28 = a1[4];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1B807E610();
  v29 = v74;
  sub_1B80C99BC();
  if (!v29)
  {
    v59 = v24;
    v60 = v21;
    v31 = v68;
    v30 = v69;
    v61 = v18;
    v33 = v70;
    v32 = v71;
    v74 = v26;
    v34 = v14;
    v35 = v73;
    v36 = sub_1B80C973C();
    v37 = (2 * *(v36 + 16)) | 1;
    v76 = v36;
    v77 = v36 + 32;
    v78 = 0;
    v79 = v37;
    v38 = sub_1B7FCD6E4();
    if (v38 == 3 || v78 != v79 >> 1)
    {
      v42 = v30;
      v43 = sub_1B80C955C();
      swift_allocError();
      v45 = v44;
      v46 = v13;
      v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
      *v45 = v34;
      sub_1B80C969C();
      sub_1B80C954C();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v72 + 8))(v46, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v38)
      {
        if (v38 == 1)
        {
          v80 = 1;
          sub_1B807E6B8();
          sub_1B80C968C();
          v39 = v35;
          v40 = v30;
          sub_1B807E7B4();
          v41 = v64;
          sub_1B80C972C();
          (*(v66 + 8))(v33, v41);
          (*(v72 + 8))(v13, v40);
          swift_unknownObjectRelease();
          v57 = v60;
          *v60 = v80;
          swift_storeEnumTagMultiPayload();
          v58 = v74;
          sub_1B8071324(v57, v74, type metadata accessor for Fence.Variant);
        }

        else
        {
          v80 = 2;
          sub_1B807E664();
          sub_1B80C968C();
          v53 = v30;
          type metadata accessor for Fence.Schedule(0);
          sub_1B807E298(&qword_1EBA66908, type metadata accessor for Fence.Schedule);
          v54 = v61;
          v55 = v65;
          sub_1B80C972C();
          v56 = v72;
          (*(v67 + 8))(v32, v55);
          (*(v56 + 8))(v13, v53);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v58 = v74;
          sub_1B8071324(v54, v74, type metadata accessor for Fence.Variant);
          v39 = v73;
        }
      }

      else
      {
        v80 = 0;
        sub_1B807E760();
        v49 = v31;
        sub_1B80C968C();
        sub_1B807E7B4();
        v50 = v30;
        v51 = v62;
        sub_1B80C972C();
        (*(v63 + 8))(v49, v51);
        (*(v72 + 8))(v13, v50);
        swift_unknownObjectRelease();
        v52 = v59;
        *v59 = v80;
        swift_storeEnumTagMultiPayload();
        v58 = v74;
        sub_1B8071324(v52, v74, type metadata accessor for Fence.Variant);
        v39 = v35;
      }

      sub_1B8071324(v58, v39, type metadata accessor for Fence.Variant);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v75);
}

uint64_t Fence.TimeOfDay.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66918, &qword_1B80D69B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[1] = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E808();
  sub_1B80C99DC();
  v14 = 0;
  sub_1B80C97CC();
  if (!v2)
  {
    v13 = 1;
    sub_1B80C97CC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t Fence.TimeOfDay.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66928, &qword_1B80D69C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E808();
  sub_1B80C99BC();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1B80C971C();
    v15 = 1;
    v12 = sub_1B80C971C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Fence.Schedule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66930, &qword_1B80D69C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807E85C();
  sub_1B80C99DC();
  v15 = *v3;
  v14 = 0;
  sub_1B807E8B0();
  sub_1B80C97DC();
  if (!v2)
  {
    v15 = v3[1];
    v14 = 1;
    sub_1B80C97DC();
    LOBYTE(v15) = *(v3 + 32);
    v14 = 2;
    sub_1B807E904();
    sub_1B80C97DC();
    v12 = *(type metadata accessor for Fence.Schedule(0) + 28);
    LOBYTE(v15) = 3;
    sub_1B80C8FCC();
    sub_1B807E298(&qword_1EBA66950, MEMORY[0x1E6969BC0]);
    sub_1B80C97DC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t Fence.Schedule.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1B80C8FCC();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66958, &qword_1B80D69D0);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for Fence.Schedule(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B807E85C();
  sub_1B80C99BC();
  if (!v2)
  {
    v23 = v12;
    v24 = v4;
    v31 = 0;
    sub_1B807E958();
    v18 = v28;
    sub_1B80C972C();
    *v15 = v30;
    v31 = 1;
    sub_1B80C972C();
    *(v15 + 1) = v30;
    v31 = 2;
    sub_1B807E9AC();
    sub_1B80C972C();
    v20 = v27;
    v15[32] = v30;
    LOBYTE(v30) = 3;
    sub_1B807E298(&qword_1EBA66970, MEMORY[0x1E6969BC0]);
    v21 = v24;
    sub_1B80C972C();
    (*(v20 + 8))(v11, v18);
    (*(v25 + 32))(&v15[*(v23 + 28)], v7, v21);
    sub_1B8071324(v15, v26, type metadata accessor for Fence.Schedule);
  }

  return __swift_destroy_boxed_opaque_existential_0(v29);
}

uint64_t Fence.Trigger.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66978, &qword_1B80D69D8);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66980, &qword_1B80D69E0);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66988, &qword_1B80D69E8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807EA00();
  sub_1B80C99DC();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1B807EA54();
    v18 = v22;
    sub_1B80C974C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1B807EAA8();
    sub_1B80C974C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

uint64_t Fence.Trigger.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669A8, &qword_1B80D69F0);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669B0, &qword_1B80D69F8);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669B8, &qword_1B80D6A00);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807EA00();
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
      *v26 = &type metadata for Fence.Trigger;
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
        sub_1B807EA54();
        sub_1B80C968C();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_1B807EAA8();
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

uint64_t sub_1B807A194(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1B80C99DC();
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1ED8DC388, MEMORY[0x1E69695A8]);
  sub_1B80C97DC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t Fence.TriggerID.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1B80C8E9C();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669D0, &qword_1B80D6A10);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Fence.TriggerID(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B807EAFC();
  sub_1B80C99BC();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    sub_1B807E298(&qword_1EBA65A60, MEMORY[0x1E69695A8]);
    sub_1B80C972C();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    sub_1B8071324(v14, v17, type metadata accessor for Fence.TriggerID);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B807A5B0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E78, &qword_1B80D9238);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v12 = *(v1 + 24);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8082084();
  sub_1B80C99DC();
  v15[15] = 0;
  sub_1B80C97AC();
  if (!v2)
  {
    v15[14] = 1;
    sub_1B80C97AC();
    v15[13] = 2;
    sub_1B80C97AC();
    v15[12] = v12;
    v15[11] = 3;
    sub_1B808212C();
    sub_1B80C97DC();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1B807A7CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66E60, &qword_1B80D9230);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8082084();
  sub_1B80C99BC();
  if (!v2)
  {
    v19[15] = 0;
    sub_1B80C96FC();
    v12 = v11;
    v19[14] = 1;
    sub_1B80C96FC();
    v14 = v13;
    v19[13] = 2;
    sub_1B80C96FC();
    v17 = v16;
    v19[11] = 3;
    sub_1B80820D8();
    sub_1B80C972C();
    (*(v6 + 8))(v9, v5);
    v18 = v19[12];
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v17;
    *(a2 + 24) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1B807AA4C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1B80C99DC();
  sub_1B80C8E9C();
  sub_1B807E298(&qword_1ED8DC388, MEMORY[0x1E69695A8]);
  sub_1B80C97DC();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B807ABCC()
{
  v1 = 0x656475746974616CLL;
  v2 = 0x737569646172;
  if (*v0 != 2)
  {
    v2 = 0x656372756F73;
  }

  if (*v0)
  {
    v1 = 0x64757469676E6F6CLL;
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

uint64_t sub_1B807AC44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B8082810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B807AC6C(uint64_t a1)
{
  v2 = sub_1B8082084();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B807ACA8(uint64_t a1)
{
  v2 = sub_1B8082084();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Fence.MonitorRegion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80C99AC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_1B807EB50();
    sub_1B80C982C();
    __swift_destroy_boxed_opaque_existential_0(v10);
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t Fence.MonitorRegion.encode(to:)(void *a1)
{
  v6 = *v1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80C99CC();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1B807EBA4();
  sub_1B80C983C();
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t Fence.MonitorRegion.Source.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669E8, &qword_1B80D6A18);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669F0, &qword_1B80D6A20);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA669F8, &qword_1B80D6A28);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A00, &qword_1B80D6A30);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A08, &qword_1B80D6A38);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A10, &qword_1B80D6A40);
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v46 = &v43 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A18, &qword_1B80D6A48);
  v44 = *(v45 - 8);
  v21 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A20, &qword_1B80D6A50);
  v43 = *(v24 - 8);
  v25 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v43 - v26;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A28, &qword_1B80D6A58);
  v28 = *(v64 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v30 = *v1;
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = &v43 - v34;
  __swift_project_boxed_opaque_existential_1(v33, v32);
  sub_1B807EBF8();
  sub_1B80C99DC();
  v36 = (v28 + 8);
  if (v30 > 3)
  {
    if (v30 > 5)
    {
      if (v30 == 6)
      {
        v71 = 6;
        sub_1B807ECA0();
        v38 = v58;
        v37 = v64;
        sub_1B80C974C();
        v40 = v59;
        v39 = v60;
      }

      else
      {
        v72 = 7;
        sub_1B807EC4C();
        v38 = v61;
        v37 = v64;
        sub_1B80C974C();
        v40 = v62;
        v39 = v63;
      }
    }

    else if (v30 == 4)
    {
      v69 = 4;
      sub_1B807ED48();
      v38 = v52;
      v37 = v64;
      sub_1B80C974C();
      v40 = v53;
      v39 = v54;
    }

    else
    {
      v70 = 5;
      sub_1B807ECF4();
      v38 = v55;
      v37 = v64;
      sub_1B80C974C();
      v40 = v56;
      v39 = v57;
    }

    goto LABEL_16;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v67 = 2;
      sub_1B807EDF0();
      v38 = v46;
      v37 = v64;
      sub_1B80C974C();
      v40 = v47;
      v39 = v48;
    }

    else
    {
      v68 = 3;
      sub_1B807ED9C();
      v38 = v49;
      v37 = v64;
      sub_1B80C974C();
      v40 = v50;
      v39 = v51;
    }

LABEL_16:
    (*(v40 + 8))(v38, v39);
    return (*v36)(v35, v37);
  }

  if (v30)
  {
    v66 = 1;
    sub_1B807EE44();
    v41 = v64;
    sub_1B80C974C();
    (*(v44 + 8))(v23, v45);
    return (*v36)(v35, v41);
  }

  v65 = 0;
  sub_1B807EE98();
  v37 = v64;
  sub_1B80C974C();
  (*(v43 + 8))(v27, v24);
  return (*v36)(v35, v37);
}

uint64_t Fence.MonitorRegion.Source.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A78, &qword_1B80D6A60);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v89 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A80, &qword_1B80D6A68);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v93 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A88, &qword_1B80D6A70);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A90, &qword_1B80D6A78);
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v68 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66A98, &qword_1B80D6A80);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v68 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AA0, &qword_1B80D6A88);
  v76 = *(v77 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v77);
  v88 = &v68 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AA8, &qword_1B80D6A90);
  v74 = *(v75 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AB0, &qword_1B80D6A98);
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66AB8, &qword_1B80D6AA0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v68 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_1B807EBF8();
  v34 = v95;
  sub_1B80C99BC();
  if (!v34)
  {
    v69 = v26;
    v68 = v23;
    v70 = v22;
    v36 = v90;
    v35 = v91;
    v38 = v92;
    v37 = v93;
    v95 = v28;
    v39 = v94;
    v72 = v27;
    v71 = v31;
    v40 = sub_1B80C973C();
    v41 = (2 * *(v40 + 16)) | 1;
    v97 = v40;
    v98 = v40 + 32;
    v99 = 0;
    v100 = v41;
    v42 = sub_1B7FC5288();
    if (v42 != 8 && v99 == v100 >> 1)
    {
      v101 = v42;
      if (v42 > 3u)
      {
        v54 = v72;
        v55 = v71;
        if (v42 > 5u)
        {
          v63 = v95;
          if (v42 == 6)
          {
            v102 = 6;
            sub_1B807ECA0();
            sub_1B80C968C();
            (*(v84 + 8))(v37, v85);
          }

          else
          {
            v102 = 7;
            sub_1B807EC4C();
            v67 = v89;
            sub_1B80C968C();
            (*(v86 + 8))(v67, v87);
          }

          (*(v63 + 8))(v55, v54);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        v56 = v95;
        if (v42 == 4)
        {
          v102 = 4;
          sub_1B807ED48();
          sub_1B80C968C();
          v57 = v80;
          v58 = v81;
        }

        else
        {
          v102 = 5;
          sub_1B807ECF4();
          v35 = v38;
          sub_1B80C968C();
          v58 = v82;
          v57 = v83;
        }

        (*(v58 + 8))(v35, v57);
        (*(v56 + 8))(v55, v54);
      }

      else
      {
        if (v42 > 1u)
        {
          v59 = v95;
          if (v42 == 2)
          {
            v102 = 2;
            sub_1B807EDF0();
            v60 = v88;
            v61 = v72;
            v62 = v71;
            sub_1B80C968C();
            (*(v76 + 8))(v60, v77);
          }

          else
          {
            v102 = 3;
            sub_1B807ED9C();
            v61 = v72;
            v62 = v71;
            sub_1B80C968C();
            (*(v78 + 8))(v36, v79);
          }

          (*(v59 + 8))(v62, v61);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        if (v42)
        {
          v102 = 1;
          sub_1B807EE44();
          v64 = v70;
          v65 = v72;
          v66 = v71;
          sub_1B80C968C();
          (*(v74 + 8))(v64, v75);
          (*(v95 + 8))(v66, v65);
        }

        else
        {
          v102 = 0;
          sub_1B807EE98();
          v44 = v69;
          v45 = v72;
          v46 = v71;
          sub_1B80C968C();
          (*(v73 + 8))(v44, v68);
          (*(v95 + 8))(v46, v45);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v43 = v101;
      return __swift_destroy_boxed_opaque_existential_0(v96);
    }

    v47 = sub_1B80C955C();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
    *v49 = &type metadata for Fence.MonitorRegion.Source;
    v51 = v72;
    v52 = v71;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x1E69E6AF8], v47);
    swift_willThrow();
    (*(v95 + 8))(v52, v51);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v96);
}