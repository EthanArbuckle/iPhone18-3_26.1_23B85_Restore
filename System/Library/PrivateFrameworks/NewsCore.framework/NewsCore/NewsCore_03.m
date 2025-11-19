unint64_t sub_1B646F168()
{
  result = qword_1EB9521E0[0];
  if (!qword_1EB9521E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9521E0);
  }

  return result;
}

unint64_t sub_1B646F1C0()
{
  result = qword_1EB9522F0;
  if (!qword_1EB9522F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9522F0);
  }

  return result;
}

unint64_t sub_1B646F218()
{
  result = qword_1EB9522F8[0];
  if (!qword_1EB9522F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9522F8);
  }

  return result;
}

uint64_t sub_1B646F26C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444964656566 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E615264656566 && a2 == 0xE900000000000065 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E657078457369 && a2 == 0xEC000000656C6261 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E4F646568636163 && a2 == 0xEA0000000000796CLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

id FCDateRange.dateInterval.getter()
{
  v1 = sub_1B67D877C();
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  MEMORY[0x1EEE9AC00](v3);
  result = [v0 earlierDate];
  if (result)
  {
    v5 = result;
    sub_1B67D874C();

    result = [v0 laterDate];
    if (result)
    {
      v6 = result;
      sub_1B67D874C();

      return sub_1B67D841C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B646F538()
{
  if (*v0)
  {
    result = 0x65746144646E65;
  }

  else
  {
    result = 0x7461447472617473;
  }

  *v0;
  return result;
}

uint64_t sub_1B646F578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v6 || (sub_1B67DA2DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B67DA2DC();

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

uint64_t sub_1B646F65C(uint64_t a1)
{
  v2 = sub_1B646F9FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B646F698(uint64_t a1)
{
  v2 = sub_1B646F9FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B646F6D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = Decodable<>.init(from:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void *Decodable<>.init(from:)(uint64_t *a1, uint64_t a2)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v28 = &v23 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A670, &qword_1B6811D00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B646F9FC();
  sub_1B67DA46C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v16;
  }

  v25 = v8;
  v26 = v11;
  v17 = sub_1B67D877C();
  v30 = 0;
  sub_1B645C75C(&unk_1EDB1EFA0);
  v18 = v28;
  sub_1B67DA1CC();
  v19 = *(v17 - 8);
  v20 = *(v19 + 56);
  v23 = v19 + 56;
  v24 = v20;
  v20(v18, 0, 1, v17);
  v29 = 1;
  v21 = v25;
  sub_1B67DA1CC();
  v24(v21, 0, 1, v17);
  result = sub_1B646FE94(v18, v21);
  if (result)
  {
    v16 = result;
    (*(v26 + 8))(v14, v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v16;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B646F9FC()
{
  result = qword_1EDB20D50[0];
  if (!qword_1EDB20D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB20D50);
  }

  return result;
}

uint64_t sub_1B646FA50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B646FE94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B67D877C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = 0;
  if (v6(a1, 1, v4) != 1)
  {
    v7 = sub_1B67D86DC();
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_1B67D86DC();
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithStartDate:v7 endDate:v8];

  return v9;
}

unint64_t sub_1B6470000()
{
  result = qword_1EB952380[0];
  if (!qword_1EB952380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952380);
  }

  return result;
}

unint64_t sub_1B6470058()
{
  result = qword_1EDB20D40;
  if (!qword_1EDB20D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB20D40);
  }

  return result;
}

unint64_t sub_1B64700B0()
{
  result = qword_1EDB20D48;
  if (!qword_1EDB20D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB20D48);
  }

  return result;
}

uint64_t sub_1B6470104()
{
  if (*v0)
  {
    return 0x726564724F6E696DLL;
  }

  else
  {
    return 0x726564724F78616DLL;
  }
}

uint64_t sub_1B6470138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726564724F78616DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B67DA2DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726564724F6E696DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B67DA2DC();

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

uint64_t sub_1B6470214(uint64_t a1)
{
  v2 = sub_1B6470488();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6470250(uint64_t a1)
{
  v2 = sub_1B6470488();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B647028C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Decodable<>.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Decodable<>.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A680, &qword_1B6811E88);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6470488();
  sub_1B67DA46C();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = 0;
  v9 = sub_1B67DA1DC();
  v14 = 1;
  v10 = sub_1B67DA1DC();
  v11 = [swift_getObjCClassFromMetadata() feedRangeWithMaxOrder:v9 minOrder:v10];
  (*(v4 + 8))(v7, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC20, &qword_1B6813BE0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6496468();
  sub_1B67DA46C();
  if (!v1)
  {
    v9 = sub_1B67DA1BC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B450, &qword_1B68158C0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B7754();
  sub_1B67DA46C();
  if (!v1)
  {
    v9 = sub_1B67DA1DC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1B6470488()
{
  result = qword_1EB952490[0];
  if (!qword_1EB952490[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952490);
  }

  return result;
}

unint64_t sub_1B6470690()
{
  result = qword_1EB9526A0[0];
  if (!qword_1EB9526A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9526A0);
  }

  return result;
}

unint64_t sub_1B64706E8()
{
  result = qword_1EB9527B0;
  if (!qword_1EB9527B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9527B0);
  }

  return result;
}

unint64_t sub_1B6470740()
{
  result = qword_1EB9527B8[0];
  if (!qword_1EB9527B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9527B8);
  }

  return result;
}

uint64_t sub_1B6470794()
{
  v1 = 0x496C656E6E616863;
  v2 = 0x44496369706F74;
  if (*v0 != 2)
  {
    v2 = 0x7367616C66;
  }

  if (*v0)
  {
    v1 = 0x496E6F6974636573;
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

uint64_t sub_1B647080C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6471180(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6470840(uint64_t a1)
{
  v2 = sub_1B6470C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B647087C(uint64_t a1)
{
  v2 = sub_1B6470C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1B64708B8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = Decodable<>.init(from:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id Decodable<>.init(from:)(uint64_t *a1, id a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A690, &qword_1B6812008);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6470C08();
  sub_1B67DA46C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v34 = 0;
    sub_1B67DA14C();
    v12 = v11;
    v33 = 1;
    v13 = sub_1B67DA14C();
    v15 = v14;
    v30 = v13;
    v32 = 2;
    v28 = sub_1B67DA14C();
    v29 = v16;
    v31 = 3;
    v17 = sub_1B67DA16C();
    if (v18)
    {
      v20 = 0;
    }

    else
    {
      v20 = v17;
    }

    v27 = v20;
    if (v12)
    {
      v26 = sub_1B67D963C();
    }

    else
    {
      v26 = 0;
    }

    if (v15)
    {
      v21 = sub_1B67D963C();
    }

    else
    {
      v21 = 0;
    }

    if (v29)
    {
      v22 = sub_1B67D963C();
    }

    else
    {
      v22 = 0;
    }

    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v24 = v26;
    a2 = [v23 initWithChannelID:v26 sectionID:v21 topicID:v22 flags:v27];

    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a2;
}

unint64_t sub_1B6470C08()
{
  result = qword_1EDB20AB0[0];
  if (!qword_1EDB20AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB20AB0);
  }

  return result;
}

uint64_t _s10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B647107C()
{
  result = qword_1EB952840[0];
  if (!qword_1EB952840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952840);
  }

  return result;
}

unint64_t sub_1B64710D4()
{
  result = qword_1EDB20AA0;
  if (!qword_1EDB20AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB20AA0);
  }

  return result;
}

unint64_t sub_1B647112C()
{
  result = qword_1EDB20AA8;
  if (!qword_1EDB20AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB20AA8);
  }

  return result;
}

uint64_t sub_1B6471180(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496C656E6E616863 && a2 == 0xE900000000000044;
  if (v4 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6974636573 && a2 == 0xE900000000000044 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44496369706F74 && a2 == 0xE700000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B67DA2DC();

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

uint64_t sub_1B6471348()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EB95A8C8);
  __swift_project_value_buffer(v0, qword_1EB95A8C8);
  return sub_1B67D8A8C();
}

uint64_t sub_1B64713F4()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EDB205A8);
  __swift_project_value_buffer(v0, qword_1EDB205A8);
  return sub_1B67D8A8C();
}

uint64_t sub_1B64714A0()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EDB204F0);
  __swift_project_value_buffer(v0, qword_1EDB204F0);
  return sub_1B67D8A8C();
}

uint64_t sub_1B647154C()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EDB204D8);
  __swift_project_value_buffer(v0, qword_1EDB204D8);
  return sub_1B67D8A8C();
}

uint64_t sub_1B64715F8()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EDB205C0);
  __swift_project_value_buffer(v0, qword_1EDB205C0);
  return sub_1B67D8A8C();
}

uint64_t sub_1B64716A4()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EB95A8E0);
  __swift_project_value_buffer(v0, qword_1EB95A8E0);
  return sub_1B67D8A8C();
}

uint64_t sub_1B64717C0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1B67D8A8C();
}

uint64_t sub_1B6471868(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1B67D8A9C();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t InterestToken.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t InterestToken.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t InterestToken.deinit()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3(v4);

  v5 = *(v1 + 24);

  return v1;
}

uint64_t InterestToken.__deallocating_deinit()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3(v4);

  v5 = *(v1 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6471A38()
{
  result = sub_1B67D964C();
  qword_1EB95A910 = result;
  *algn_1EB95A918 = v1;
  return result;
}

uint64_t sub_1B6471A68()
{
  result = sub_1B67D964C();
  qword_1EB95A920 = result;
  *algn_1EB95A928 = v1;
  return result;
}

id SmarterFetchConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SmarterFetchConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmarterFetchConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SmarterFetchConstants.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmarterFetchConstants();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6471C64(int a1, int a2, id a3)
{
  v3 = [a3 recordName];
  v4 = sub_1B67D964C();

  return v4;
}

uint64_t sub_1B6471CBC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1B6501630(a1, a2, a3, a4, a5, a7);

  sub_1B645745C(a3, a4);
  if (v7)
  {
  }

  return a1;
}

uint64_t sub_1B6471D60(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B64720D0(a1, a2, a3, a4, a5, a6);
  if (v6)
  {
    return sub_1B645745C(a2, a3);
  }

  v11 = v9;
  sub_1B645745C(a2, a3);
  return v11;
}

uint64_t sub_1B6471DD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1B63F3DA0(0, &qword_1EB94A6A0, 0x1E695BA70);
  sub_1B65013CC(a5, a7);
  v12 = sub_1B67D9C2C();
  sub_1B64720D0(v12, a3, a4, a5, a6, a7);
  if (v16)
  {
    return sub_1B645745C(a3, a4);
  }

  v15 = v13;
  sub_1B645745C(a3, a4);
  return v15;
}

uint64_t sub_1B6471ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a1 != a4 || a2 != a5) && (sub_1B67DA2DC() & 1) == 0)
  {
    return 0;
  }

  sub_1B63F3DA0(0, &qword_1EB94A6A8, 0x1E69E58C0);
  return sub_1B67D9D9C() & 1;
}

uint64_t sub_1B6471F84()
{
  sub_1B67DA3DC();
  sub_1B67D967C();
  sub_1B67D9DAC();
  return sub_1B67DA41C();
}

uint64_t sub_1B6471FE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = nullsub_1(*v2, v2[1], v2[2], a1[2], a1[3], a1[4], a1[5]);
  a2[1] = v4;
}

uint64_t sub_1B6472038()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1B6471F84();
}

uint64_t sub_1B6472044()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return sub_1B6471F54();
}

uint64_t sub_1B6472050()
{
  sub_1B67DA3DC();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1B6471F54();
  return sub_1B67DA41C();
}

void sub_1B64720D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B6501460(a1, a2, a3, a4, a6);
  if (v6)
  {
  }
}

uint64_t sub_1B6472138()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6472174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B64721BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B6472214()
{
  result = sub_1B67D964C();
  qword_1EDB204B8 = result;
  unk_1EDB204C0 = v1;
  return result;
}

uint64_t *sub_1B6472244()
{
  if (qword_1EDB21F80 != -1)
  {
    swift_once();
  }

  return &qword_1EDB204B8;
}

uint64_t sub_1B6472294()
{
  result = sub_1B67D964C();
  qword_1EDB20498 = result;
  unk_1EDB204A0 = v1;
  return result;
}

uint64_t sub_1B64722C4()
{
  result = sub_1B67D964C();
  qword_1EDB20478 = result;
  unk_1EDB20480 = v1;
  return result;
}

uint64_t sub_1B64722F4()
{
  result = sub_1B67D964C();
  qword_1EDB20488 = result;
  unk_1EDB20490 = v1;
  return result;
}

uint64_t sub_1B6472324()
{
  result = sub_1B67D964C();
  qword_1EDB204A8 = result;
  unk_1EDB204B0 = v1;
  return result;
}

uint64_t sub_1B6472354()
{
  result = sub_1B67D964C();
  qword_1EDB204C8 = result;
  unk_1EDB204D0 = v1;
  return result;
}

uint64_t *sub_1B6472384()
{
  if (qword_1EDB21F88 != -1)
  {
    swift_once();
  }

  return &qword_1EDB204C8;
}

uint64_t NotificationHistoryItem.notificationID.getter()
{
  v1 = *v0;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6472448(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];

  sub_1B67D8B5C();
}

uint64_t NotificationHistoryItem.canonicalID.getter()
{
  v1 = *(*(v0 + 8) + 32);

  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t NotificationHistoryItem.articleID.getter()
{
  v1 = *(*(v0 + 16) + 32);

  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t NotificationHistoryItem.clusterID.getter()
{
  v1 = *(*(v0 + 24) + 32);

  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t NotificationHistoryItem.channelID.getter()
{
  v1 = *(*(v0 + 32) + 32);

  sub_1B67D8DCC();

  if (v4)
  {
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t NotificationHistoryItem.source.getter()
{
  v1 = *(*(v0 + 40) + 32);

  sub_1B67D8DCC();

  if (v4)
  {
    result = 0;
  }

  else
  {
    result = v3;
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t NotificationHistoryItem.notifiedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - v5;
  v7 = *(*(v1 + 48) + 32);

  sub_1B67D8DCC();

  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  result = (*(v9 + 48))(v6, 1, v8);
  if (result != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6472868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 56);
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B6472894(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];

  sub_1B67D8B5C();
}

uint64_t NotificationHistoryItem.originatedLocally.getter()
{
  v1 = *(v0 + 64);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v3 != 2)
  {
    return v3 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6472A34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B6472A60(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v10 = a2[7];
  v11 = a2[8];

  sub_1B67D8B5C();
}

uint64_t NotificationHistoryItem.init(notificationID:canonicalID:articleID:clusterID:channelID:source:notifiedAt:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, char *a11, unsigned int a12, uint64_t a13)
{
  v142 = a7;
  v143 = a8;
  v140 = a5;
  v141 = a6;
  v138 = a3;
  v139 = a4;
  v136 = a1;
  v137 = a2;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v144 = &v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C8, &qword_1B68123C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v135 = &v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v134 = &v119 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v133 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v132 = &v119 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v126 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v125 = &v119 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v32 - 8);
  v36 = &v119 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v119 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v40 = *(*(v39 - 8) + 56);
  v40(v38, 1, 1, v39);
  v40(v36, 1, 1, v39);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v131 = sub_1B67D8B3C();
  v145 = a9;
  *a9 = v131;
  v40(v38, 1, 1, v39);
  v40(v36, 1, 1, v39);
  v47 = *(v41 + 48);
  v48 = *(v41 + 52);
  swift_allocObject();
  v49 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB21F80 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDB204B8;
  v51 = unk_1EDB204C0;

  v52 = sub_1B6421E80();
  v130 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v49, v50, v51, v52 & 1);
  v145[1] = v130;
  v40(v38, 1, 1, v39);
  v40(v36, 1, 1, v39);
  v53 = *(v41 + 48);
  v54 = *(v41 + 52);
  swift_allocObject();
  v55 = sub_1B67D8DBC();
  if (qword_1EDB21F68 != -1)
  {
    swift_once();
  }

  v56 = qword_1EDB20498;
  v57 = unk_1EDB204A0;

  v58 = sub_1B6421E80();
  v129 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v55, v56, v57, v58 & 1);
  v145[2] = v129;
  v40(v38, 1, 1, v39);
  v40(v36, 1, 1, v39);
  v59 = *(v41 + 48);
  v60 = *(v41 + 52);
  swift_allocObject();
  v61 = sub_1B67D8DBC();
  if (qword_1EDB21F50 != -1)
  {
    swift_once();
  }

  v62 = qword_1EDB20478;
  v63 = unk_1EDB20480;

  v64 = sub_1B6421E80();
  v127 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v61, v62, v63, v64 & 1);
  v65 = v145;
  v145[3] = v127;
  v40(v38, 1, 1, v39);
  v40(v36, 1, 1, v39);
  v66 = *(v41 + 48);
  v67 = *(v41 + 52);
  swift_allocObject();
  v68 = sub_1B67D8DBC();
  if (qword_1EDB21F58 != -1)
  {
    swift_once();
  }

  v128 = a13;
  v69 = qword_1EDB20488;
  v70 = unk_1EDB20490;

  v71 = sub_1B6421E80();
  v124 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v68, v69, v70, v71 & 1);
  v65[4] = v124;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v73 = *(*(v72 - 8) + 56);
  v73(v125, 1, 1, v72);
  v73(v126, 1, 1, v72);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  v77 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
  v78 = v132;
  v79 = v133;
  if (qword_1EDB21F70 != -1)
  {
    swift_once();
  }

  v126 = a12;
  v125 = a11;
  v123 = a10;
  v80 = qword_1EDB204A8;
  v81 = unk_1EDB204B0;

  v82 = sub_1B6421E80();
  v122 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v77, v80, v81, v82 & 1);
  v65[5] = v122;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v84 = *(*(v83 - 8) + 56);
  v84(v78, 1, 1, v83);
  v84(v79, 1, 1, v83);
  v85 = v78;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  v121 = sub_1B67D8DBC();
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  v89 = v79;
  if (qword_1EDB21F88 != -1)
  {
    swift_once();
  }

  v90 = qword_1EDB204C8;
  v91 = unk_1EDB204D0;
  v120 = sub_1B67D877C();
  sub_1B6421ED0();

  v92 = sub_1B6421E80();
  v121 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v121, v90, v91, v92 & 1);
  v93 = v145;
  v145[6] = v121;
  v84(v85, 1, 1, v83);
  v84(v89, 1, 1, v83);
  v94 = *(v86 + 48);
  v95 = *(v86 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  v93[7] = sub_1B67D8B3C();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D0, &qword_1B68123C8);
  v100 = *(*(v99 - 8) + 56);
  v100(v134, 1, 1, v99);
  v100(v135, 1, 1, v99);
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D8, &qword_1B68123D0);
  v102 = *(v101 + 48);
  v103 = *(v101 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
  v105 = *(v104 + 48);
  v106 = *(v104 + 52);
  swift_allocObject();
  v93[8] = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v146 = v136;
  v147 = v137;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v107 = v144;
  sub_1B67D876C();
  v108 = v120;
  v109 = *(v120 - 8);
  v110 = *(v109 + 56);
  v110(v107, 0, 1, v120);
  sub_1B67D8DDC();

  v111 = *(v130 + 32);
  v146 = v138;
  v147 = v139;

  sub_1B67D8DDC();

  v112 = *(v129 + 32);
  v146 = v140;
  v147 = v141;

  sub_1B67D8DDC();

  v113 = *(v127 + 32);
  v146 = v142;
  v147 = v143;

  sub_1B67D8DDC();

  v114 = *(v124 + 32);
  v146 = v123;
  v147 = v125;

  sub_1B67D8DDC();

  v115 = *(v122 + 32);
  v146 = v126;
  LOBYTE(v147) = 0;

  sub_1B67D8DDC();

  v116 = *(v121 + 32);
  v117 = v128;
  (*(v109 + 16))(v107, v128, v108);
  v110(v107, 0, 1, v108);

  sub_1B67D8DDC();

  sub_1B67D8B4C();
  LOBYTE(v146) = 1;
  sub_1B67D8DDC();

  return (*(v109 + 8))(v117, v108);
}

id NotificationHistoryItem.init(_:notifiedAt:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v135 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C8, &qword_1B68123C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v161 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v160 = &v135 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v159 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v135 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v157 = &v135 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v156 = &v135 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v135 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v135 - v30;
  v32 = sub_1B67D877C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v135 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 identifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v38 = result;
  v39 = sub_1B67D964C();
  v154 = v40;
  v155 = v39;

  result = [a1 canonicalID];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v41 = result;
  v153 = v9;
  v42 = sub_1B67D964C();
  v151 = v43;
  v152 = v42;

  v44 = [a1 articleID];
  v45 = sub_1B67D964C();
  v149 = v46;
  v150 = v45;
  result = [a1 clusterID];
  if (!result)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v47 = result;
  v148 = a3;

  v141 = sub_1B67D964C();
  v140 = v48;

  v49 = [a1 channelID];
  v138 = sub_1B67D964C();
  v137 = v50;

  v146 = a1;
  v139 = [a1 source];
  v145 = v33;
  v51 = *(v33 + 16);
  v144 = v36;
  v147 = a2;
  v165 = v32;
  v143 = v33 + 16;
  v142 = v51;
  v51(v36, a2, v32);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v53 = *(*(v52 - 8) + 56);
  v53(v31, 1, 1, v52);
  v53(v29, 1, 1, v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v58 = *(v57 + 48);
  v59 = *(v57 + 52);
  swift_allocObject();
  v164 = sub_1B67D8B3C();
  v53(v31, 1, 1, v52);
  v53(v29, 1, 1, v52);
  v60 = *(v54 + 48);
  v61 = *(v54 + 52);
  swift_allocObject();
  v62 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB21F80 != -1)
  {
    swift_once();
  }

  v64 = qword_1EDB204B8;
  v63 = unk_1EDB204C0;

  v65 = sub_1B6421E80();
  v163 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v62, v64, v63, v65 & 1);
  v53(v31, 1, 1, v52);
  v53(v29, 1, 1, v52);
  v66 = *(v54 + 48);
  v67 = *(v54 + 52);
  swift_allocObject();
  v68 = sub_1B67D8DBC();
  if (qword_1EDB21F68 != -1)
  {
    swift_once();
  }

  v69 = qword_1EDB20498;
  v70 = unk_1EDB204A0;

  v71 = sub_1B6421E80();
  v162 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v68, v69, v70, v71 & 1);
  v53(v31, 1, 1, v52);
  v53(v29, 1, 1, v52);
  v72 = *(v54 + 48);
  v73 = *(v54 + 52);
  swift_allocObject();
  v74 = sub_1B67D8DBC();
  if (qword_1EDB21F50 != -1)
  {
    swift_once();
  }

  v75 = qword_1EDB20478;
  v76 = unk_1EDB20480;

  v77 = sub_1B6421E80();
  v136 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v74, v75, v76, v77 & 1);
  v53(v31, 1, 1, v52);
  v53(v29, 1, 1, v52);
  v78 = *(v54 + 48);
  v79 = *(v54 + 52);
  swift_allocObject();
  v80 = sub_1B67D8DBC();
  if (qword_1EDB21F58 != -1)
  {
    swift_once();
  }

  v81 = qword_1EDB20488;
  v82 = unk_1EDB20490;

  v83 = sub_1B6421E80();
  v135 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v80, v81, v82, v83 & 1);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v85 = *(*(v84 - 8) + 56);
  v85(v156, 1, 1, v84);
  v85(v157, 1, 1, v84);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v87 = *(v86 + 48);
  v88 = *(v86 + 52);
  swift_allocObject();
  v89 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
  v90 = v158;
  v91 = v159;
  if (qword_1EDB21F70 != -1)
  {
    swift_once();
  }

  v92 = qword_1EDB204A8;
  v93 = unk_1EDB204B0;

  v94 = sub_1B6421E80();
  v157 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v89, v92, v93, v94 & 1);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v96 = *(*(v95 - 8) + 56);
  v96(v90, 1, 1, v95);
  v96(v91, 1, 1, v95);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v98 = *(v97 + 48);
  v99 = *(v97 + 52);
  swift_allocObject();
  v156 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  if (qword_1EDB21F88 != -1)
  {
    swift_once();
  }

  v100 = qword_1EDB204C8;
  v101 = unk_1EDB204D0;
  sub_1B6421ED0();

  v102 = sub_1B6421E80();
  v156 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v156, v100, v101, v102 & 1);
  v96(v90, 1, 1, v95);
  v96(v91, 1, 1, v95);
  v103 = *(v97 + 48);
  v104 = *(v97 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v106 = *(v105 + 48);
  v107 = *(v105 + 52);
  swift_allocObject();
  v159 = sub_1B67D8B3C();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D0, &qword_1B68123C8);
  v109 = *(*(v108 - 8) + 56);
  v109(v160, 1, 1, v108);
  v109(v161, 1, 1, v108);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D8, &qword_1B68123D0);
  v111 = *(v110 + 48);
  v112 = *(v110 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
  v114 = *(v113 + 48);
  v115 = *(v113 + 52);
  swift_allocObject();
  v161 = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v166 = v155;
  v167 = v154;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v116 = v153;
  sub_1B67D876C();
  v117 = v145;
  v160 = *(v145 + 56);
  v118 = v165;
  (v160)(v116, 0, 1, v165);
  sub_1B67D8DDC();

  v119 = *(v163 + 32);
  v166 = v152;
  v167 = v151;

  sub_1B67D8DDC();

  v120 = *(v162 + 32);
  v166 = v150;
  v167 = v149;

  sub_1B67D8DDC();

  v121 = v136;
  v122 = *(v136 + 32);
  v166 = v141;
  v167 = v140;

  sub_1B67D8DDC();

  v123 = v135;
  v124 = *(v135 + 32);
  v166 = v138;
  v167 = v137;

  sub_1B67D8DDC();

  v125 = v157;
  v126 = *(v157 + 4);
  v166 = v139;
  LOBYTE(v167) = 0;

  sub_1B67D8DDC();

  v127 = v156;
  v128 = *(v156 + 32);
  v129 = v144;
  v142(v116, v144, v118);
  (v160)(v116, 0, 1, v118);

  sub_1B67D8DDC();

  v130 = v161;
  sub_1B67D8B4C();
  LOBYTE(v166) = 1;
  sub_1B67D8DDC();

  v131 = *(v117 + 8);
  v131(v147, v118);
  result = (v131)(v129, v118);
  v132 = v148;
  v133 = v163;
  *v148 = v164;
  v132[1] = v133;
  v132[2] = v162;
  v132[3] = v121;
  v132[4] = v123;
  v132[5] = v125;
  v134 = v159;
  v132[6] = v127;
  v132[7] = v134;
  v132[8] = v130;
  return result;
}

uint64_t NotificationHistoryItem.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C8, &qword_1B68123C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v100 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v96 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v101 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v96 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v98 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v96 = &v96 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v96 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v25 = *(*(v24 - 8) + 56);
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  swift_allocObject();
  v32 = sub_1B67D8B3C();
  v102 = a1;
  *a1 = v32;
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v33 = *(v26 + 48);
  v34 = *(v26 + 52);
  swift_allocObject();
  v35 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB21F80 != -1)
  {
    swift_once();
  }

  v37 = qword_1EDB204B8;
  v36 = unk_1EDB204C0;

  v38 = sub_1B6421E80();
  v39 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v35, v37, v36, v38 & 1);
  v102[1] = v39;
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v40 = *(v26 + 48);
  v41 = *(v26 + 52);
  swift_allocObject();
  v42 = sub_1B67D8DBC();
  if (qword_1EDB21F68 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDB20498;
  v44 = unk_1EDB204A0;

  v45 = sub_1B6421E80();
  v46 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v42, v43, v44, v45 & 1);
  v102[2] = v46;
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v47 = *(v26 + 48);
  v48 = *(v26 + 52);
  swift_allocObject();
  v49 = sub_1B67D8DBC();
  if (qword_1EDB21F50 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDB20478;
  v51 = unk_1EDB20480;

  v52 = sub_1B6421E80();
  v53 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v49, v50, v51, v52 & 1);
  v54 = v102;
  v102[3] = v53;
  v25(v23, 1, 1, v24);
  v25(v21, 1, 1, v24);
  v55 = *(v26 + 48);
  v56 = *(v26 + 52);
  swift_allocObject();
  v57 = sub_1B67D8DBC();
  if (qword_1EDB21F58 != -1)
  {
    swift_once();
  }

  v58 = qword_1EDB20488;
  v59 = unk_1EDB20490;

  v60 = sub_1B6421E80();
  v54[4] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v57, v58, v59, v60 & 1);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v62 = *(*(v61 - 8) + 56);
  v62(v96, 1, 1, v61);
  v62(v98, 1, 1, v61);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v66 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
  v67 = v101;
  v68 = v97;
  if (qword_1EDB21F70 != -1)
  {
    swift_once();
  }

  v69 = qword_1EDB204A8;
  v70 = unk_1EDB204B0;

  v71 = sub_1B6421E80();
  v54[5] = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v66, v69, v70, v71 & 1);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v73 = *(*(v72 - 8) + 56);
  v73(v68, 1, 1, v72);
  v73(v67, 1, 1, v72);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v75 = *(v74 + 48);
  v76 = *(v74 + 52);
  swift_allocObject();
  v98 = sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  if (qword_1EDB21F88 != -1)
  {
    swift_once();
  }

  v77 = qword_1EDB204C8;
  v78 = unk_1EDB204D0;
  sub_1B67D877C();
  sub_1B6421ED0();

  v79 = sub_1B6421E80();
  v80 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v98, v77, v78, v79 & 1);
  v81 = v102;
  v102[6] = v80;
  v73(v68, 1, 1, v72);
  v73(v101, 1, 1, v72);
  v82 = *(v74 + 48);
  v83 = *(v74 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  v81[7] = sub_1B67D8B3C();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D0, &qword_1B68123C8);
  v88 = *(*(v87 - 8) + 56);
  v88(v99, 1, 1, v87);
  v88(v100, 1, 1, v87);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D8, &qword_1B68123D0);
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
  v93 = *(v92 + 48);
  v94 = *(v92 + 52);
  swift_allocObject();
  v81[8] = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v103 = 0;
  sub_1B67D8DDC();
}

uint64_t NotificationHistoryItem.fastEntity.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = *v0;
  sub_1B67D8B6C();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  CKColumn.projectedValue.getter();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  v10 = sub_1B67D8B8C();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  return sub_1B67D8B9C();
}

uint64_t sub_1B6475514(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x656C63697472615FLL;
    if (a1 != 2)
    {
      v6 = 0x72657473756C635FLL;
    }

    if (a1)
    {
      v5 = 0x63696E6F6E61635FLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65696669746F6E5FLL;
    v2 = 0x6465696669646F6DLL;
    if (a1 != 7)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C656E6E6168635FLL;
    if (a1 != 4)
    {
      v3 = 0x656372756F735FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1B6475650@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B64777CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6475684(uint64_t a1)
{
  v2 = sub_1B6475C08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64756C0(uint64_t a1)
{
  v2 = sub_1B6475C08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationHistoryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6E0, &qword_1B68123D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v26 = v1[2];
  v27 = v9;
  v12 = v1[5];
  v24 = v1[4];
  v25 = v11;
  v13 = v1[7];
  v22 = v1[6];
  v23 = v12;
  v20 = v1[8];
  v21 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6475C08();

  v15 = v4;
  sub_1B67DA47C();
  v29 = v10;
  v28 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290);
  sub_1B67DA24C();
  if (v2)
  {

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    v16 = v25;
    v17 = v26;

    v29 = v27;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
    sub_1B6413CCC(&qword_1EB94A6E8, &qword_1EB94A6B0, &qword_1B6812380);
    sub_1B67DA24C();
    v29 = v17;
    v28 = 2;
    sub_1B67DA24C();
    v29 = v16;
    v28 = 3;
    sub_1B67DA24C();
    v29 = v24;
    v28 = 4;
    sub_1B67DA24C();
    v29 = v23;
    v28 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
    sub_1B6413CCC(&qword_1EB94A6F0, &qword_1EB94A6B8, &qword_1B6812388);
    sub_1B67DA24C();
    v29 = v22;
    v28 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
    sub_1B6413CCC(&qword_1EB94A5F0, &qword_1EB94A5B8, &unk_1B6812390);
    sub_1B67DA24C();
    v29 = v21;
    v28 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA24C();
    v29 = v20;
    v28 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
    sub_1B6413CCC(&qword_1EB94A6F8, &qword_1EB94A6C0, &qword_1B68123B8);
    sub_1B67DA24C();
    return (*(v5 + 8))(v8, v15);
  }
}

unint64_t sub_1B6475C08()
{
  result = qword_1EB952B80[0];
  if (!qword_1EB952B80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952B80);
  }

  return result;
}

uint64_t NotificationHistoryItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v131 = a1;
  v120 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A700, &qword_1B68123E0);
  v122 = *(v124 - 8);
  v2 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v130 = &v119 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C8, &qword_1B68123C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v127 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v119 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v139 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v125 = &v119 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v134 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v133 = &v119 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v119 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v27 = *(*(v26 - 8) + 56);
  v27(v25, 1, 1, v26);
  v27(v23, 1, 1, v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v123 = v31;
  swift_allocObject();
  v138 = sub_1B67D8B3C();
  v27(v25, 1, 1, v26);
  v27(v23, 1, 1, v26);
  v34 = *(v28 + 48);
  v35 = *(v28 + 52);
  swift_allocObject();
  v36 = sub_1B67D8DBC();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B0, &qword_1B6812380);
  if (qword_1EDB21F80 != -1)
  {
    swift_once();
  }

  v38 = qword_1EDB204B8;
  v37 = unk_1EDB204C0;

  v39 = sub_1B6421E80();
  v129 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v36, v38, v37, v39 & 1);
  v27(v25, 1, 1, v26);
  v27(v23, 1, 1, v26);
  v40 = *(v28 + 48);
  v41 = *(v28 + 52);
  swift_allocObject();
  v42 = sub_1B67D8DBC();
  if (qword_1EDB21F68 != -1)
  {
    swift_once();
  }

  v43 = qword_1EDB20498;
  v44 = unk_1EDB204A0;

  v45 = sub_1B6421E80();
  v137 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v42, v43, v44, v45 & 1);
  v27(v25, 1, 1, v26);
  v27(v23, 1, 1, v26);
  v46 = *(v28 + 48);
  v47 = *(v28 + 52);
  swift_allocObject();
  v48 = sub_1B67D8DBC();
  if (qword_1EDB21F50 != -1)
  {
    swift_once();
  }

  v49 = qword_1EDB20478;
  v50 = unk_1EDB20480;

  v51 = sub_1B6421E80();
  v136 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v48, v49, v50, v51 & 1);
  v27(v25, 1, 1, v26);
  v27(v23, 1, 1, v26);
  v52 = *(v28 + 48);
  v53 = *(v28 + 52);
  swift_allocObject();
  v54 = sub_1B67D8DBC();
  if (qword_1EDB21F58 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDB20488;
  v56 = unk_1EDB20490;

  v57 = sub_1B6421E80();
  v135 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v54, v55, v56, v57 & 1);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v59 = *(*(v58 - 8) + 56);
  v59(v133, 1, 1, v58);
  v59(v134, 1, 1, v58);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v63 = sub_1B67D8DBC();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6B8, &qword_1B6812388);
  v65 = v139;
  v66 = v125;
  if (qword_1EDB21F70 != -1)
  {
    swift_once();
  }

  v67 = qword_1EDB204A8;
  v68 = unk_1EDB204B0;

  v69 = sub_1B6421E80();
  v121 = v64;
  v134 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v63, v67, v68, v69 & 1);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v71 = *(*(v70 - 8) + 56);
  v71(v66, 1, 1, v70);
  v71(v65, 1, 1, v70);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = sub_1B67D8DBC();
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B8, &unk_1B6812390);
  v76 = v66;
  if (qword_1EDB21F88 != -1)
  {
    swift_once();
  }

  v77 = qword_1EDB204C8;
  v78 = unk_1EDB204D0;
  sub_1B67D877C();
  sub_1B6421ED0();

  v79 = sub_1B6421E80();
  v132 = CKColumn.__allocating_init(wrappedValue:name:encrypted:)(v75, v77, v78, v79 & 1);
  v71(v76, 1, 1, v70);
  v71(v139, 1, 1, v70);
  v80 = *(v72 + 48);
  v81 = *(v72 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  v83 = *(v82 + 48);
  v84 = *(v82 + 52);
  swift_allocObject();
  v139 = sub_1B67D8B3C();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D0, &qword_1B68123C8);
  v86 = *(*(v85 - 8) + 56);
  v86(v126, 1, 1, v85);
  v86(v127, 1, 1, v85);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6D8, &qword_1B68123D0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  swift_allocObject();
  sub_1B67D8DBC();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A6C0, &qword_1B68123B8);
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  swift_allocObject();
  v127 = sub_1B67D8B3C();
  v93 = v131;
  v94 = v131[4];
  __swift_project_boxed_opaque_existential_1(v131, v131[3]);
  sub_1B6475C08();
  v95 = v130;
  v96 = v128;
  sub_1B67DA46C();
  if (v96)
  {
    v97 = v129;
    v98 = v132;
    v102 = v139;
    __swift_destroy_boxed_opaque_existential_1(v93);
    v147 = v138;
    v148 = v97;
    v149 = v137;
    v150 = v136;
    v151 = v135;
    v152 = v134;
    v153 = v98;
    v154 = v102;
    v155 = v127;
  }

  else
  {
    LOBYTE(v141) = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290);
    v99 = v124;
    sub_1B67DA1CC();

    v138 = v147;
    LOBYTE(v141) = 1;
    v100 = v95;
    v101 = sub_1B6413CCC(&qword_1EB94A708, &qword_1EB94A6B0, &qword_1B6812380);
    sub_1B67DA1CC();

    v104 = v101;
    v105 = v147;
    LOBYTE(v141) = 2;
    v129 = v104;
    sub_1B67DA1CC();

    v137 = v147;
    LOBYTE(v141) = 3;
    sub_1B67DA1CC();

    v136 = v147;
    LOBYTE(v141) = 4;
    sub_1B67DA1CC();

    v135 = v147;
    LOBYTE(v141) = 5;
    sub_1B6413CCC(&qword_1EB94A710, &qword_1EB94A6B8, &qword_1B6812388);
    sub_1B67DA1CC();

    v134 = v147;
    LOBYTE(v141) = 6;
    sub_1B6413CCC(&qword_1EB94A620, &qword_1EB94A5B8, &unk_1B6812390);
    sub_1B67DA1CC();

    v106 = v147;
    LOBYTE(v141) = 7;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0);
    sub_1B67DA1CC();

    v107 = v147;
    v146 = 8;
    sub_1B6413CCC(&qword_1EB94A718, &qword_1EB94A6C0, &qword_1B68123B8);
    sub_1B67DA1CC();
    (*(v122 + 8))(v100, v99);

    v108 = v106;
    v132 = v106;
    v109 = v156;
    v110 = v138;
    *&v141 = v138;
    *(&v141 + 1) = v105;
    v111 = v107;
    v139 = v107;
    v112 = v137;
    v113 = v136;
    *&v142 = v137;
    *(&v142 + 1) = v136;
    v114 = v135;
    v115 = v134;
    *&v143 = v135;
    *(&v143 + 1) = v134;
    *&v144 = v108;
    *(&v144 + 1) = v111;
    v145 = v156;
    v116 = v120;
    *(v120 + 64) = v156;
    v117 = v144;
    v116[2] = v143;
    v116[3] = v117;
    v118 = v142;
    *v116 = v141;
    v116[1] = v118;
    sub_1B6476E40(&v141, &v147);
    __swift_destroy_boxed_opaque_existential_1(v93);
    v147 = v110;
    v148 = v105;
    v149 = v112;
    v150 = v113;
    v151 = v114;
    v152 = v115;
    v153 = v132;
    v154 = v139;
    v155 = v109;
  }

  return sub_1B6476E10(&v147);
}

unint64_t sub_1B6476EB4(uint64_t a1)
{
  *(a1 + 8) = sub_1B6476EE4();
  result = sub_1B6476F38();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6476EE4()
{
  result = qword_1EDB1F320;
  if (!qword_1EDB1F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F320);
  }

  return result;
}

unint64_t sub_1B6476F38()
{
  result = qword_1EB94A720;
  if (!qword_1EB94A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94A720);
  }

  return result;
}

unint64_t sub_1B6476FC0()
{
  result = qword_1EDB1F330;
  if (!qword_1EDB1F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F330);
  }

  return result;
}

unint64_t sub_1B6477018()
{
  result = qword_1EDB1F310;
  if (!qword_1EDB1F310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F310);
  }

  return result;
}

unint64_t sub_1B6477070()
{
  result = qword_1EDB1F328;
  if (!qword_1EDB1F328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F328);
  }

  return result;
}

unint64_t sub_1B64770C8()
{
  result = qword_1EDB1F308;
  if (!qword_1EDB1F308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F308);
  }

  return result;
}

unint64_t sub_1B6477120()
{
  result = qword_1EDB1F338[0];
  if (!qword_1EDB1F338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB1F338);
  }

  return result;
}

unint64_t sub_1B647717C()
{
  result = qword_1EDB1F2F8;
  if (!qword_1EDB1F2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F2F8);
  }

  return result;
}

unint64_t sub_1B64771D0()
{
  result = qword_1EDB1F300;
  if (!qword_1EDB1F300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F300);
  }

  return result;
}

unint64_t sub_1B6477244()
{
  result = qword_1EDB1F318;
  if (!qword_1EDB1F318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1F318);
  }

  return result;
}

uint64_t sub_1B6477298(uint64_t a1)
{
  v2 = sub_1B6476FC0();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64772E4(uint64_t a1)
{
  v2 = sub_1B6476FC0();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B6477330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6476FC0();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B6477394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6476FC0();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B64773E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6476FC0();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6477434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B6476FC0();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B64774BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1B6477504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NotificationHistoryItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NotificationHistoryItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B64776C8()
{
  result = qword_1EB952D10[0];
  if (!qword_1EB952D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952D10);
  }

  return result;
}

unint64_t sub_1B6477720()
{
  result = qword_1EB952E20;
  if (!qword_1EB952E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB952E20);
  }

  return result;
}

unint64_t sub_1B6477778()
{
  result = qword_1EB952E28[0];
  if (!qword_1EB952E28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952E28);
  }

  return result;
}

uint64_t sub_1B64777CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63696E6F6E61635FLL && a2 == 0xEC00000044496C61 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C63697472615FLL && a2 == 0xEA00000000004449 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72657473756C635FLL && a2 == 0xEA00000000004449 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C656E6E6168635FLL && a2 == 0xEA00000000004449 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F735FLL && a2 == 0xE700000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65696669746F6E5FLL && a2 == 0xEB00000000744164 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B6828BB0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t NotificationHistoryType.add(_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v15[2] = a1[2];
  v15[3] = v6;
  v16 = *(a1 + 8);
  v7 = a1[1];
  v15[0] = *a1;
  v15[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A728, &unk_1B68127B0);
  v8 = swift_allocObject();
  v9 = a1[2];
  v10 = a1[3];
  v11 = *a1;
  *(v8 + 48) = a1[1];
  *(v8 + 64) = v9;
  *(v8 + 80) = v10;
  *(v8 + 96) = *(a1 + 8);
  *(v8 + 16) = xmmword_1B68100D0;
  *(v8 + 32) = v11;
  v12 = *(a3 + 24);
  sub_1B6476E40(v15, v14);
  v12(v8, a2, a3);
}

uint64_t sub_1B6477BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PrivateZoneLocation();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A730, &qword_1B68127C0);
  sub_1B6418A50(a2, v11);
  v13 = sub_1B67D8A9C();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = PrivateZone.__allocating_init(context:location:logger:)(a1, v11, v7);
  sub_1B6416298(a2);
  *(v12 + 16) = v14;
  return v12;
}

uint64_t sub_1B6477D2C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1B6477D74, 0, 0);
}

uint64_t sub_1B6477D74()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = *(v0[7] + 16);
  v0[9] = v3;
  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  v0[4] = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580);
  sub_1B67D9E5C();
  v0[5] = v0[3];
  v5 = swift_task_alloc();
  v0[10] = v5;
  *(v5 + 16) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A748, &qword_1B68127E0);
  *(v2 + 24) = v6;
  *(v2 + 32) = sub_1B6413CCC(&qword_1EDB1E610, &qword_1EB94A748, &qword_1B68127E0);
  v7 = swift_task_alloc();
  v0[11] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A730, &qword_1B68127C0);
  v9 = sub_1B6413CCC(&qword_1EB94A750, &qword_1EB94A730, &qword_1B68127C0);
  *v7 = v0;
  v7[1] = sub_1B6477FE0;
  v10 = v0[6];

  return PrivateZoneType.query<A>(options:executor:)(v10, v0 + 5, sub_1B64784D4, v5, v8, v6, v9);
}

uint64_t sub_1B6477FE0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(v5 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6478158, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1B6478158()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 48));
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_1B64781BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v26 - v4);
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1B67D8B1C();
  v11 = *(v27 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6472384();
  v16 = *v15;
  v17 = v15[1];

  sub_1B67D876C();
  v29[3] = v6;
  v29[4] = MEMORY[0x1E69D6130];
  __swift_allocate_boxed_opaque_existential_0(v29);
  sub_1B67D870C();
  (*(v7 + 8))(v10, v6);
  sub_1B67D8C9C();

  __swift_destroy_boxed_opaque_existential_1(v29);
  v18 = v15[1];
  *v5 = *v15;
  v5[1] = v18;
  v19 = *MEMORY[0x1E69D6220];
  v20 = sub_1B67D8E4C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v5, v19, v20);
  (*(v21 + 56))(v5, 0, 1, v20);

  v22 = v29[6];
  v23 = sub_1B67D8D2C();
  if (v22)
  {
    sub_1B6479254(v5);
    return (*(v11 + 8))(v14, v27);
  }

  else
  {
    v25 = v23;
    sub_1B6479254(v5);
    result = (*(v11 + 8))(v14, v27);
    *v26 = v25;
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
    JUMPOUT(0x1B8C96DF0);
  }

  return result;
}

uint64_t sub_1B647853C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B6478560, 0, 0);
}

uint64_t sub_1B6478560()
{
  v1 = v0[8];
  v2 = v0[7];
  v3 = *(v0[9] + 16);
  v0[10] = v3;
  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  v0[4] = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580);
  sub_1B67D9E5C();
  v0[5] = v0[3];
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[12] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A730, &qword_1B68127C0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A758, &qword_1B68127F0);
  v9 = sub_1B6413CCC(&qword_1EB94A750, &qword_1EB94A730, &qword_1B68127C0);
  *v6 = v0;
  v6[1] = sub_1B6478794;
  v10 = v0[6];

  return PrivateZoneType.query<A>(options:executor:)(v10, v0 + 5, sub_1B6478B68, v5, v7, v8, v9);
}

uint64_t sub_1B6478794()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *v1;
  *(v5 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B647890C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1B6478924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v24[-1] - v7);
  v9 = sub_1B67D8B1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6472244();
  v15 = *v14;
  v16 = v14[1];
  v24[3] = MEMORY[0x1E69E6158];
  v24[4] = MEMORY[0x1E69D62D8];
  v24[0] = a2;
  v24[1] = a3;

  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(v24);
  v17 = sub_1B6472384();
  v18 = v17[1];
  *v8 = *v17;
  v8[1] = v18;
  v19 = *MEMORY[0x1E69D6220];
  v20 = sub_1B67D8E4C();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v8, v19, v20);
  (*(v21 + 56))(v8, 0, 1, v20);

  sub_1B67D8D1C();
  sub_1B6479254(v8);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B6478B84()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6478BBC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B642694C;

  return sub_1B6477D2C(a1);
}

uint64_t sub_1B6478C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B6422E9C;

  return sub_1B647853C(a1, a2, a3);
}

uint64_t sub_1B6478D54()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1B6478DEC;

  return sub_1B64FA510();
}

uint64_t sub_1B6478DEC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B6478F00()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1B64792BC;

  return sub_1B64FABC0();
}

uint64_t dispatch thunk of NotificationHistoryType.recentHistoryItems()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1B642694C;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of NotificationHistoryType.historyItem(canonicalID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B6422E9C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_1B6479254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B64792C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v66 = a1;
  v68 = a2;
  v4 = *v2;
  v5 = sub_1B67D8A9C();
  v57 = *(v5 - 8);
  v58 = v5;
  v6 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A760, &qword_1B6812880);
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v55 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A768, &qword_1B6812888);
  v61 = *(v67 - 8);
  v11 = *(v61 + 64);
  v12 = MEMORY[0x1EEE9AC00](v67);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v60 = &v55 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v55 - v16;
  v17 = *sub_1B644E570();
  v18 = v2[2];

  v19 = [objc_msgSend(v18 appConfigurationManager)];
  swift_unknownObjectRelease();
  if ([v19 respondsToSelector_])
  {
    [v19 isSmarterFetchEnabledForLatest];
  }

  swift_unknownObjectRelease();
  sub_1B6479B80();
  v20 = sub_1B67D880C();

  if (v20)
  {
    MEMORY[0x1EEE9AC00](v21);
    v22 = v66;
    *(&v55 - 4) = v66;
    *(&v55 - 24) = 0;
    *(&v55 - 2) = v3;
    (*(v63 + 104))(v62, *MEMORY[0x1E69E8790], v64);
    v23 = v65;
    sub_1B67D9ADC();
    v24 = swift_allocObject();
    *(v24 + 16) = v3;
    *(v24 + 24) = v22;
    v26 = v67;
    v25 = v68;
    v68[3] = v67;
    v25[4] = sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888);
    __swift_allocate_boxed_opaque_existential_0(v25);

    v27 = v22;
    sub_1B644ABA0(sub_1B647DBA0, v24, v26);

    return (*(v61 + 8))(v23, v26);
  }

  else
  {
    v29 = *sub_1B644E900();

    v30 = [objc_msgSend(v18 appConfigurationManager)];
    swift_unknownObjectRelease();
    if ([v30 respondsToSelector_])
    {
      [v30 isSmarterFetchEnabledForSupplementalLatest];
    }

    swift_unknownObjectRelease();
    v31 = sub_1B67D880C();

    if (v31)
    {
      v32 = sub_1B6471774();
      v34 = v56;
      v33 = v57;
      v35 = v58;
      (*(v57 + 16))(v56, v32, v58);
      v36 = sub_1B67D8A7C();
      v37 = sub_1B67D9C8C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1B63EF000, v36, v37, "will fetch My Articles from CK with supplementation from Smarter Fetch", v38, 2u);
        MEMORY[0x1B8C96DF0](v38, -1, -1);
      }

      v39 = (*(v33 + 8))(v34, v35);
      MEMORY[0x1EEE9AC00](v39);
      v40 = v66;
      *(&v55 - 2) = v66;
      *(&v55 - 1) = v3;
      v41 = *MEMORY[0x1E69E8790];
      v42 = v62;
      v43 = *(v63 + 104);
      v44 = v64;
      v43(v62, v41, v64);
      v45 = sub_1B67D9ADC();
      MEMORY[0x1EEE9AC00](v45);
      *(&v55 - 4) = v40;
      *(&v55 - 24) = 1;
      *(&v55 - 2) = v3;
      v43(v42, v41, v44);
      v46 = v59;
      sub_1B67D9ADC();
      v47 = v60;
      v48 = v67;
      sub_1B644ABA0(sub_1B6479F04, 0, v67);
      v49 = *(v61 + 8);
      v49(v46, v48);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A770, &qword_1B6812890);
      v51 = v68;
      v68[3] = v50;
      v51[4] = sub_1B6413CCC(&qword_1EB94A778, &qword_1EB94A770, &qword_1B6812890);
      __swift_allocate_boxed_opaque_existential_0(v51);
      sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888);
      v52 = v65;
      sub_1B67D8A5C();
      v49(v47, v48);
      return (v49)(v52, v48);
    }

    else
    {
      v53 = v68;
      v68[3] = v67;
      v53[4] = sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v53);
      MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
      *(&v55 - 2) = v66;
      *(&v55 - 1) = v3;
      (*(v63 + 104))(v62, *MEMORY[0x1E69E8790], v64);
      return sub_1B67D9ADC();
    }
  }
}

unint64_t sub_1B6479B80()
{
  result = qword_1EDB1ED10;
  if (!qword_1EDB1ED10)
  {
    type metadata accessor for MyArticlesService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1ED10);
  }

  return result;
}

uint64_t sub_1B6479BD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v28 = a3;
  v29 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A760, &qword_1B6812880);
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  v10 = sub_1B67D8A9C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6471774();
  (*(v11 + 16))(v14, v15, v10);
  v16 = a1;
  v17 = sub_1B67D8A7C();
  v18 = sub_1B67D9C8C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543362;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_1B63EF000, v17, v18, "failed fetch My Articles from Smarter Fetch, falling back to CK, error=%{public}@", v19, 0xCu);
    sub_1B6418AB4(v20, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v20, -1, -1);
    MEMORY[0x1B8C96DF0](v19, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A768, &qword_1B6812888);
  a4[4] = sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  MEMORY[0x1EEE9AC00](boxed_opaque_existential_0);
  v24 = v29;
  *(&v26 - 2) = v28;
  *(&v26 - 1) = v24;
  (*(v26 + 104))(v9, *MEMORY[0x1E69E8790], v27);
  return sub_1B67D9ADC();
}

uint64_t sub_1B6479F04@<X0>(uint64_t *a1@<X8>)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A760, &qword_1B6812880);
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v17 - v4;
  v6 = sub_1B67D8A9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6471774();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_1B67D8A7C();
  v13 = sub_1B67D9C9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = v5;
    v15 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1B63EF000, v12, v13, "ignoring failure to supplement My Articles from Smarter Fetch", v14, 2u);
    v5 = v18;
    MEMORY[0x1B8C96DF0](v15, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8790], v19);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A768, &qword_1B6812888);
  a1[4] = sub_1B6413CCC(&qword_1EDB1E5F8, &qword_1EB94A768, &qword_1B6812888);
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1B67D9ADC();
}

uint64_t sub_1B647A200(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  v7 = *(v6 - 8);
  v82 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v73 - v8;
  v9 = sub_1B67D8A9C();
  v85 = *(v9 - 8);
  v86 = v9;
  v10 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v84 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1B6480148();
  v13 = [objc_allocWithZone(FCFeedRequestOperation) init];
  v14 = *(a3 + 16);
  [v13 setContext_];
  [v13 setFeedDatabase_];
  v15 = [objc_msgSend(v14 configurationManager)];
  swift_unknownObjectRelease();
  [v13 setConfiguration_];
  swift_unknownObjectRelease();
  sub_1B63F3DA0(0, &unk_1EDB1E5A0, off_1E7C344C0);
  v16 = sub_1B67D97AC();
  [v13 setFeedRequests_];

  [v13 setExpectedNetworkEventCount_];
  if (a2[OBJC_IVAR___FCMyArticlesRequest_isFullFetch] == 1)
  {
    [v13 setPrewarmRequestKey_];
    swift_unknownObjectRelease();
  }

  v17 = sub_1B6471774();
  v19 = v84;
  v18 = v85;
  v20 = v86;
  (*(v85 + 16))(v84, v17, v86);
  v21 = v13;
  v22 = a2;

  v23 = sub_1B67D8A7C();
  LODWORD(v80) = sub_1B67D9C9C();
  v24 = os_log_type_enabled(v23, v80);
  v87 = v6;
  v88 = a1;
  v81 = v21;
  if (!v24)
  {

    swift_bridgeObjectRelease_n();
    (*(v18 + 8))(v19, v20);
LABEL_20:
    v56 = sub_1B64802E0();
    v57 = swift_allocObject();
    *(v57 + 16) = 0;
    v58 = a1;
    v59 = v57;
    v86 = *(v7 + 16);
    v60 = v83;
    v61 = v87;
    v86(v83, v58, v87);
    v62 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v63 = (v82 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
    v64 = swift_allocObject();
    *(v64 + 16) = v59;
    v80 = v59;
    v85 = *(v7 + 32);
    (v85)(v64 + v62, v60, v61);
    *(v64 + v63) = v56;
    v94 = sub_1B647FA28;
    v95 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v91 = 1107296256;
    v84 = &v92;
    v92 = sub_1B647ACDC;
    v93 = &block_descriptor_31;
    v65 = _Block_copy(&aBlock);

    v66 = v81;
    [v81 setProgressHandler_];
    _Block_release(v65);
    v67 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v68 = v87;
    v86(v60, v88, v87);
    v69 = swift_allocObject();
    *(v69 + 16) = v67;
    (v85)(v69 + v62, v60, v68);
    *(v69 + v63) = v80;
    v94 = sub_1B647FBE0;
    v95 = v69;
    aBlock = MEMORY[0x1E69E9820];
    v91 = 1107296256;
    v92 = sub_1B647B218;
    v93 = &block_descriptor_40;
    v70 = _Block_copy(&aBlock);

    [v66 setRequestCompletionHandler_];
    _Block_release(v70);
    *(swift_allocObject() + 16) = v66;
    v71 = v66;
    sub_1B67D9A4C();
    [v71 start];
  }

  v79 = v23;
  v25 = swift_slowAlloc();
  v26 = swift_slowAlloc();
  v78 = swift_slowAlloc();
  aBlock = v78;
  *v25 = 136446722;
  v27 = [v21 shortOperationDescription];

  if (!v27)
  {
    goto LABEL_22;
  }

  v28 = sub_1B67D964C();
  v30 = v29;

  v31 = sub_1B6456540(v28, v30, &aBlock);

  *(v25 + 4) = v31;
  *(v25 + 12) = 2114;
  v32 = *&v22[OBJC_IVAR___FCMyArticlesRequest_dateRange];
  *(v25 + 14) = v32;
  *v26 = v32;
  *(v25 + 22) = 2082;
  v77 = v22;
  v76 = v25;
  v75 = v26;
  if (v12 >> 62)
  {
    v33 = sub_1B67DA04C();
    if (v33)
    {
      goto LABEL_7;
    }

LABEL_18:
    v47 = v32;

    v36 = MEMORY[0x1E69E7CC0];
    v46 = v84;
    a1 = v88;
LABEL_19:
    v48 = MEMORY[0x1B8C94A20](v36, MEMORY[0x1E69E6158]);
    v50 = v49;

    v51 = sub_1B6456540(v48, v50, &aBlock);

    v52 = v76;
    *(v76 + 24) = v51;
    v53 = v79;
    _os_log_impl(&dword_1B63EF000, v79, v80, "will fetch My Articles from CK, operation=%{public}s, range=%{public}@, feeds=%{public}s", v52, 0x20u);
    v54 = v75;
    sub_1B6418AB4(v75, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v54, -1, -1);
    v55 = v78;
    swift_arrayDestroy();
    MEMORY[0x1B8C96DF0](v55, -1, -1);
    MEMORY[0x1B8C96DF0](v52, -1, -1);

    (*(v85 + 8))(v46, v86);
    goto LABEL_20;
  }

  v33 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_18;
  }

LABEL_7:
  v89 = MEMORY[0x1E69E7CC0];
  v34 = v32;
  sub_1B6456B24(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v74 = v7;
    v35 = 0;
    v36 = v89;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x1B8C95180](v35, v12);
      }

      else
      {
        v37 = *(v12 + 8 * v35 + 32);
      }

      v38 = v37;
      v39 = [v38 feedID];
      v40 = sub_1B67D964C();
      v42 = v41;

      v89 = v36;
      v44 = *(v36 + 16);
      v43 = *(v36 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_1B6456B24((v43 > 1), v44 + 1, 1);
        v36 = v89;
      }

      ++v35;
      *(v36 + 16) = v44 + 1;
      v45 = v36 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
    }

    while (v33 != v35);

    a1 = v88;
    v7 = v74;
    v46 = v84;
    goto LABEL_19;
  }

  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1B647AB64(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A798, &qword_1B6812A18);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v17 - v10;
  if (a1 >> 62)
  {
    v12 = sub_1B67DA04C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = swift_beginAccess();
  v14 = *(a2 + 16);
  v15 = __OFADD__(v14, v12);
  v16 = v14 + v12;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v16;
    v17[1] = a1;
    v17[2] = a4;
    v17[3] = 1;
    v18 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
    sub_1B67D9A6C();
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

uint64_t sub_1B647ACDC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_1B63F3DA0(0, &qword_1EDB1E5C8, 0x1E69B6E30);
  v3 = sub_1B67D97BC();

  v2(v3);
}

uint64_t sub_1B647AD60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v5 = sub_1B67D8A9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A798, &qword_1B6812A18);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = v5;
    v39 = v12;
    v19 = Strong;
    v20 = [Strong networkEvents];
    sub_1B63F3DA0(0, &qword_1EDB1E570, off_1E7C34970);
    v21 = sub_1B67D97BC();

    v42 = 0;
    v43 = 0;
    v41 = v21;
    v44 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
    sub_1B67D9A6C();

    v5 = v38;
    v12 = v39;
    (*(v14 + 8))(v17, v13);
  }

  if (a1)
  {
    v22 = a1;
    v23 = sub_1B6471774();
    (*(v6 + 16))(v12, v23, v5);
    v24 = a1;
    v25 = sub_1B67D8A7C();
    v26 = sub_1B67D9C9C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138543362;
      v29 = a1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_1B63EF000, v25, v26, "failed to fetch My Articles from CK, error=%{public}@", v27, 0xCu);
      sub_1B6418AB4(v28, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v28, -1, -1);
      MEMORY[0x1B8C96DF0](v27, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
    v41 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  }

  else
  {
    v31 = sub_1B6471774();
    (*(v6 + 16))(v10, v31, v5);
    v32 = v40;

    v33 = sub_1B67D8A7C();
    v34 = sub_1B67D9C9C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134349056;
      swift_beginAccess();
      *(v35 + 4) = *(v32 + 16);

      _os_log_impl(&dword_1B63EF000, v33, v34, "did fetch My Articles from CK, unique items=%{public}ld", v35, 0xCu);
      MEMORY[0x1B8C96DF0](v35, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v10, v5);
    v45 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  }

  return sub_1B67D9A7C();
}

uint64_t sub_1B647B218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {
    sub_1B63F3DA0(0, &unk_1EDB1E580, off_1E7C344D0);
    v6 = sub_1B67D97BC();
  }

  if (a3)
  {
    sub_1B63F3DA0(0, &qword_1EDB1E5C8, 0x1E69B6E30);
    a3 = sub_1B67D97BC();
  }

  v9 = a4;
  v8(v6, a3, a4);
}

uint64_t sub_1B647B2F8(uint64_t a1, void *a2, char a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v22 - v15;
  v17 = sub_1B67D993C();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  (*(v9 + 32))(v19 + v18, v12, v8);
  v20 = a2;

  sub_1B644BCA8(0, 0, v16, &unk_1B6812A08, v19);
}

uint64_t sub_1B647B510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 400) = a6;
  *(v7 + 408) = a7;
  *(v7 + 281) = a5;
  *(v7 + 392) = a4;
  v8 = *(*(type metadata accessor for SmarterFetchRequest(0) - 8) + 64) + 15;
  *(v7 + 416) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A798, &qword_1B6812A18);
  *(v7 + 424) = v9;
  v10 = *(v9 - 8);
  *(v7 + 432) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 440) = swift_task_alloc();
  v12 = sub_1B67D8A9C();
  *(v7 + 448) = v12;
  v13 = *(v12 - 8);
  *(v7 + 456) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  *(v7 + 488) = swift_task_alloc();
  *(v7 + 496) = swift_task_alloc();
  v15 = sub_1B67D87BC();
  *(v7 + 504) = v15;
  v16 = *(v15 - 8);
  *(v7 + 512) = v16;
  v17 = *(v16 + 64) + 15;
  *(v7 + 520) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B647B6F8, 0, 0);
}

uint64_t sub_1B647B6F8()
{
  v43 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v4 = *(v0 + 496);
  v5 = *(v0 + 448);
  v6 = *(v0 + 456);
  v7 = *(v0 + 392);
  sub_1B67D87AC();
  v8 = sub_1B67D879C();
  v10 = v9;
  v41 = v8;
  *(v0 + 528) = v8;
  *(v0 + 536) = v9;
  (*(v3 + 8))(v1, v2);
  v11 = sub_1B6471AF8();
  *(v0 + 544) = *v11;
  *(v0 + 552) = v11[1];
  v12 = *&v7[OBJC_IVAR___FCMyArticlesRequest_dateRange];
  v13 = objc_opt_self();
  *(v0 + 560) = v13;

  v14 = [v13 feedRangeFromDateRange_];
  *(v0 + 568) = v14;
  v15 = sub_1B6471774();
  *(v0 + 576) = v15;
  v16 = *(v6 + 16);
  *(v0 + 584) = v16;
  *(v0 + 592) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v4, v15, v5);
  v17 = v7;

  v18 = sub_1B67D8A7C();
  v19 = sub_1B67D9C9C();

  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 496);
  v22 = *(v0 + 448);
  v23 = *(v0 + 456);
  if (v20)
  {
    v24 = *(v0 + 281);
    v39 = *(v0 + 496);
    v25 = swift_slowAlloc();
    v40 = v14;
    v26 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v25 = 136446722;
    if (v24)
    {
      v27 = 1702195828;
    }

    else
    {
      v27 = 0x65736C6166;
    }

    v38 = v22;
    if (v24)
    {
      v28 = 0xE400000000000000;
    }

    else
    {
      v28 = 0xE500000000000000;
    }

    v29 = sub_1B6456540(v27, v28, &v42);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2114;
    *(v25 + 14) = v12;
    *v26 = v12;
    *(v25 + 22) = 2082;
    v30 = v12;
    *(v25 + 24) = sub_1B6456540(v41, v10, &v42);
    _os_log_impl(&dword_1B63EF000, v18, v19, "will fetch My Articles from Smarter Fetch, supplemental=%{public}s, range=%{public}@, id=%{public}s", v25, 0x20u);
    sub_1B6418AB4(v26, &qword_1EB94A780, &qword_1B6810140);
    v31 = v26;
    v14 = v40;
    MEMORY[0x1B8C96DF0](v31, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8C96DF0](v37, -1, -1);
    MEMORY[0x1B8C96DF0](v25, -1, -1);

    v32 = *(v23 + 8);
    v32(v39, v38);
  }

  else
  {

    v32 = *(v23 + 8);
    v32(v21, v22);
  }

  *(v0 + 600) = v32;
  v33 = *(*(v0 + 400) + 24);
  *(v0 + 608) = v33;
  v34 = sub_1B67D963C();
  *(v0 + 616) = v34;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 352;
  *(v0 + 24) = sub_1B647BB00;
  v35 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7A0, &qword_1B6812A20);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B647CC28;
  *(v0 + 104) = &block_descriptor_4;
  *(v0 + 112) = v35;
  [v33 lookupFeedItemsForFeedID:v34 feedRange:v14 completion:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B647BB00()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B647BBE0, 0, 0);
}

unint64_t sub_1B647BBE0()
{
  v106 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 536);
  inited = *(v0 + 488);
  v6 = *(v0 + 448);
  v8 = *(v0 + 352);
  v7 = *(v0 + 360);
  *(v0 + 624) = v8;

  v3(inited, v4, v6);

  v9 = sub_1B67D8A7C();
  LOBYTE(inited) = sub_1B67D9C9C();

  v11 = v7 >> 62;
  v103 = v8;
  if (!os_log_type_enabled(v9, inited))
  {
    v20 = *(v0 + 600);
    v21 = *(v0 + 488);
    v22 = *(v0 + 448);
    v23 = *(v0 + 456);

    v20(v21, v22);
    v13 = v8;
    goto LABEL_8;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v105[0] = v13;
  *v12 = 134349570;
  if (v8 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B67DA04C())
  {
    *(v12 + 4) = i;

    *(v12 + 12) = 2050;
    v15 = v11 ? sub_1B67DA04C() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = *(v0 + 536);
    v17 = *(v0 + 528);
    v96 = *(v0 + 488);
    v98 = *(v0 + 600);
    v18 = *(v0 + 448);
    v19 = *(v0 + 456);
    *(v12 + 14) = v15;

    *(v12 + 22) = 2082;
    *(v12 + 24) = sub_1B6456540(v17, v16, v105);
    _os_log_impl(&dword_1B63EF000, v9, inited, "retrieved %{public}ld feed items from the cache, missingRanges=%{public}ld, id=%{public}s", v12, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
    MEMORY[0x1B8C96DF0](v12, -1, -1);

    v98(v96, v18);
    v13 = v103;
LABEL_8:
    v24 = *(v0 + 552);
    v25 = *(v0 + 544);
    v27 = *(v0 + 432);
    v26 = *(v0 + 440);
    v99 = *(v0 + 424);
    v9 = *(v0 + 408);
    *(v0 + 632) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7A8, &qword_1B6812A28);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    *(inited + 32) = v25;
    *(inited + 40) = v24;
    v28 = objc_opt_self();
    *(v0 + 640) = v28;

    *(inited + 48) = [v28 feedContextForSmarterFetch];
    v29 = sub_1B645C624(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A7B0, &qword_1B6812A30);
    *(v0 + 256) = v13;
    *(v0 + 264) = v29;
    *(v0 + 272) = 2;
    *(v0 + 280) = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
    LOBYTE(inited) = v30;
    *(v0 + 648) = v30;
    sub_1B67D9A6C();
    v31 = *(v27 + 8);
    *(v0 + 656) = v31;
    *(v0 + 664) = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v26, v99);
    if (v7 >> 62)
    {
      v12 = sub_1B67DA04C();
      if (!v12)
      {
LABEL_30:
        v63 = *(v0 + 592);
        v64 = *(v0 + 584);
        v65 = *(v0 + 576);
        v66 = *(v0 + 552);
        v67 = *(v0 + 536);
        v68 = *(v0 + 464);
        v69 = *(v0 + 448);

        v64(v68, v65, v69);

        v70 = sub_1B67D8A7C();
        v71 = sub_1B67D9C9C();

        v72 = os_log_type_enabled(v70, v71);
        v73 = *(v0 + 600);
        v74 = *(v0 + 536);
        if (v72)
        {
          v104 = *(v0 + 600);
          v75 = *(v0 + 528);
          v76 = *(v0 + 456);
          v102 = *(v0 + 464);
          v77 = *(v0 + 448);
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v105[0] = v79;
          *v78 = 136446210;
          v80 = sub_1B6456540(v75, v74, v105);

          *(v78 + 4) = v80;
          _os_log_impl(&dword_1B63EF000, v70, v71, "finished with just the contents of the cache, id=%{public}s", v78, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v79);
          MEMORY[0x1B8C96DF0](v79, -1, -1);
          MEMORY[0x1B8C96DF0](v78, -1, -1);

          v104(v102, v77);
        }

        else
        {
          v82 = *(v0 + 456);
          v81 = *(v0 + 464);
          v83 = *(v0 + 448);
          v84 = *(v0 + 536);

          v73(v81, v83);
        }

        v85 = *(v0 + 568);
        v86 = *(v0 + 408);
        *(v0 + 384) = 0;
        sub_1B67D9A7C();

        v87 = *(v0 + 520);
        v88 = *(v0 + 488);
        v89 = *(v0 + 496);
        v91 = *(v0 + 472);
        v90 = *(v0 + 480);
        v92 = *(v0 + 464);
        v93 = *(v0 + 440);
        v94 = *(v0 + 416);

        v95 = *(v0 + 8);

        return v95();
      }
    }

    else
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v12)
      {
        goto LABEL_30;
      }
    }

    v11 = v7 & 0xC000000000000001;
    if ((v7 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(v7 + 32);
      goto LABEL_13;
    }

LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }

  v32 = MEMORY[0x1B8C95180](0, v7);
LABEL_13:
  inited = v32;
  v13 = &selRef_stringByAppendingPathComponent_;
  v9 = [v32 top];

  if (!v9)
  {
    v9 = [*(v0 + 568) top];
  }

  result = v12 - 1;
  if (__OFSUB__(v12, 1))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v11)
  {
    v34 = MEMORY[0x1B8C95180](result, v7);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  if (result >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_42:
    __break(1u);
    return result;
  }

  v34 = *(v7 + 8 * result + 32);
LABEL_21:
  v35 = v34;

  v36 = [v35 bottom];

  if (!v36)
  {
    v36 = [*(v0 + 568) bottom];
  }

  v37 = *(v0 + 592);
  v38 = *(v0 + 584);
  v39 = *(v0 + 576);
  v40 = *(v0 + 536);
  v41 = *(v0 + 480);
  v42 = *(v0 + 448);
  v43 = [*(v0 + 560) feedRangeWithTop:v9 bottom:v36];
  *(v0 + 672) = v43;

  v38(v41, v39, v42);

  v44 = v43;
  v45 = sub_1B67D8A7C();
  v46 = sub_1B67D9C9C();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 600);
  if (v47)
  {
    v49 = *(v0 + 536);
    v50 = *(v0 + 528);
    v97 = *(v0 + 456);
    v100 = *(v0 + 448);
    v101 = *(v0 + 480);
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v105[0] = v53;
    *v51 = 138543874;
    *(v51 + 4) = v44;
    *v52 = v44;
    *(v51 + 12) = 2114;
    v54 = [v44 dateRange];
    *(v51 + 14) = v54;
    v52[1] = v54;
    *(v51 + 22) = 2082;
    *(v51 + 24) = sub_1B6456540(v50, v49, v105);
    _os_log_impl(&dword_1B63EF000, v45, v46, "will fetch from feedRange=%{public}@, dateRange=%{public}@, id=%{public}s", v51, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A780, &qword_1B6810140);
    swift_arrayDestroy();
    MEMORY[0x1B8C96DF0](v52, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x1B8C96DF0](v53, -1, -1);
    MEMORY[0x1B8C96DF0](v51, -1, -1);

    v55 = v100;
    v56 = v101;
  }

  else
  {
    v57 = *(v0 + 480);
    v58 = *(v0 + 448);
    v59 = *(v0 + 456);

    v56 = v57;
    v55 = v58;
  }

  v48(v56, v55);
  sub_1B647CCE0(*(v0 + 281), *(v0 + 400), v44, *(v0 + 528), *(v0 + 536), *(v0 + 416));
  v60 = swift_task_alloc();
  *(v0 + 680) = v60;
  *v60 = v0;
  v60[1] = sub_1B647C578;
  v61 = *(v0 + 416);
  v62 = *(v0 + 400);

  return sub_1B647D144(v61);
}

uint64_t sub_1B647C578(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 680);
  v12 = *v3;
  v5[86] = a2;
  v5[87] = v2;

  if (v2)
  {
    v7 = v5[78];
    v8 = v5[69];
    v9 = v5[67];

    v10 = sub_1B647CB20;
  }

  else
  {
    v5[88] = a1;
    v10 = sub_1B647C6C0;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1B647C6C0()
{
  v59 = v0;
  v1 = *(v0 + 672);
  v2 = *(v0 + 608);
  v53 = *(v0 + 584);
  v56 = *(v0 + 592);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 472);
  v49 = *(v0 + 448);
  v51 = *(v0 + 576);
  v7 = sub_1B647F5A0(*(v0 + 704), *(v0 + 624), v1);

  sub_1B63F3DA0(0, &qword_1EDB1E5C8, 0x1E69B6E30);
  v8 = sub_1B67D97AC();
  v9 = sub_1B67D963C();
  [v2 saveFeedItems:v8 feedID:v9 feedRange:v1];

  v53(v6, v51, v49);

  v57 = v7;

  v10 = sub_1B67D8A7C();
  v11 = sub_1B67D9C9C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v58 = v13;
    *v12 = 134349314;
    if (v57 >> 62)
    {
      v14 = sub_1B67DA04C();
    }

    else
    {
      v14 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v54 = *(v0 + 600);
    v15 = *(v0 + 536);
    v16 = *(v0 + 528);
    v17 = *(v0 + 472);
    v18 = *(v0 + 448);
    v19 = *(v0 + 456);
    *(v12 + 4) = v14;

    *(v12 + 12) = 2082;
    v20 = sub_1B6456540(v16, v15, &v58);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1B63EF000, v10, v11, "saved %{public}ld feed items to the cache, id=%{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8C96DF0](v13, -1, -1);
    MEMORY[0x1B8C96DF0](v12, -1, -1);

    v54(v17, v18);
  }

  else
  {
    v21 = *(v0 + 600);
    v22 = *(v0 + 536);
    v23 = *(v0 + 472);
    v24 = *(v0 + 448);
    v25 = *(v0 + 456);

    v21(v23, v24);
  }

  v47 = *(v0 + 664);
  v48 = *(v0 + 688);
  v46 = *(v0 + 656);
  v26 = *(v0 + 648);
  v27 = *(v0 + 640);
  v28 = *(v0 + 632);
  v50 = *(v0 + 568);
  v29 = *(v0 + 552);
  v30 = *(v0 + 544);
  v31 = *(v0 + 440);
  v32 = *(v0 + 424);
  v52 = *(v0 + 416);
  v55 = *(v0 + 672);
  v33 = *(v0 + 408);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = v30;
  *(inited + 40) = v29;
  *(inited + 48) = [v27 feedContextForSmarterFetch];
  v35 = sub_1B645C624(inited);
  swift_setDeallocating();
  sub_1B6418AB4(inited + 32, &qword_1EB94A7B0, &qword_1B6812A30);
  *(v0 + 288) = v57;
  *(v0 + 296) = v35;
  *(v0 + 304) = 2;
  *(v0 + 312) = 0;
  sub_1B67D9A6C();
  v46(v31, v32);
  *(v0 + 328) = 0;
  *(v0 + 336) = 0;
  *(v0 + 320) = v48;
  *(v0 + 344) = 1;
  sub_1B67D9A6C();
  v46(v31, v32);
  *(v0 + 376) = 0;
  sub_1B67D9A7C();

  sub_1B6467DA0(v52);
  v36 = *(v0 + 520);
  v37 = *(v0 + 488);
  v38 = *(v0 + 496);
  v40 = *(v0 + 472);
  v39 = *(v0 + 480);
  v41 = *(v0 + 464);
  v42 = *(v0 + 440);
  v43 = *(v0 + 416);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1B647CB20()
{
  sub_1B6467DA0(v0[52]);
  v1 = v0[87];
  v2 = v0[84];
  v3 = v0[81];
  v4 = v0[71];
  v5 = v0[51];
  v0[46] = v1;
  v6 = v1;
  sub_1B67D9A7C();

  v7 = v0[65];
  v8 = v0[61];
  v9 = v0[62];
  v11 = v0[59];
  v10 = v0[60];
  v12 = v0[58];
  v13 = v0[55];
  v14 = v0[52];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B647CC28(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1B63F3DA0(0, &qword_1EDB1E5C8, 0x1E69B6E30);
  v2 = sub_1B67D97BC();
  sub_1B63F3DA0(0, &qword_1EB94A650, off_1E7C344B8);
  v3 = sub_1B67D97BC();
  v4 = *(*(v1 + 64) + 40);
  *v4 = v2;
  v4[1] = v3;

  return MEMORY[0x1EEE6DED8](v1);
}

void sub_1B647CCE0(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v46 = a5;
  v44 = a6;
  v45 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v50 = sub_1B67D877C();
  v16 = *(v50 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v50);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v41 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v41 - v24;
  v26 = a2 + 32;
  if (a1)
  {
    sub_1B6431D18(v26, v47);
    v27 = v48;
    v43 = v49;
    v42 = __swift_project_boxed_opaque_existential_1(v47, v48);
    v28 = [a3 dateRange];
    v29 = [v28 laterDate];

    if (v29)
    {
      sub_1B67D874C();

      v30 = [a3 dateRange];
      v31 = [v30 earlierDate];

      if (v31)
      {
        sub_1B67D874C();

        v32 = v50;
        (*(v16 + 32))(v15, v23, v50);
        v33 = 0;
      }

      else
      {
        v33 = 1;
        v32 = v50;
      }

      (*(v16 + 56))(v15, v33, 1, v32);
      (*(v43 + 32))(v25, v15, v45, v46, v27);
      sub_1B6418AB4(v15, &unk_1EB94A100, &qword_1B680FD50);
      (*(v16 + 8))(v25, v32);
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v47);
      return;
    }

    __break(1u);
  }

  else
  {
    sub_1B6431D18(v26, v47);
    v34 = v48;
    v43 = v49;
    v42 = __swift_project_boxed_opaque_existential_1(v47, v48);
    v35 = [a3 dateRange];
    v36 = [v35 laterDate];

    if (v36)
    {
      sub_1B67D874C();

      v37 = [a3 dateRange];
      v38 = [v37 earlierDate];

      if (v38)
      {
        sub_1B67D874C();

        v39 = v50;
        (*(v16 + 32))(v13, v23, v50);
        v40 = 0;
      }

      else
      {
        v40 = 1;
        v39 = v50;
      }

      (*(v16 + 56))(v13, v40, 1, v39);
      (*(v43 + 8))(v20, v13, v45, v46, v34);
      sub_1B6418AB4(v13, &unk_1EB94A100, &qword_1B680FD50);
      (*(v16 + 8))(v20, v39);
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1B647D144(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2[8] = a1;
  v2[9] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A310, &unk_1B6812A70);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7F0, &qword_1B6811318);
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B647D2A4, 0, 0);
}

uint64_t sub_1B647D2A4()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[8];
  v4 = v0[9];
  v6 = MEMORY[0x1E69E7CC0];
  v0[4] = MEMORY[0x1E69E7CC0];
  v0[5] = v6;
  v7 = v4[12];
  v8 = v4[13];
  __swift_project_boxed_opaque_existential_1(v4 + 9, v7);
  (*(v8 + 8))(v5, v7, v8);
  sub_1B67D9A9C();
  v0[17] = v6;
  v0[18] = v6;
  v0[16] = v6;
  v9 = *(MEMORY[0x1E69E87A8] + 4);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_1B647D400;
  v11 = v0[12];
  v12 = v0[10];
  v13 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DB90](v0 + 2, 0, 0, v12, v0 + 6);
}

uint64_t sub_1B647D400()
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;

  if (v0)
  {
    v5 = *(v2 + 128);
    v4 = *(v2 + 136);

    v6 = sub_1B647D874;
  }

  else
  {
    v6 = sub_1B647D554;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B647D554()
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  if (*(v0 + 24) <= 1u)
  {
    if (!*(v0 + 24))
    {
      sub_1B6449D2C(*(v0 + 16), 0);
LABEL_13:
      v11 = *(MEMORY[0x1E69E87A8] + 4);
      v12 = swift_task_alloc();
      *(v0 + 152) = v12;
      *v12 = v0;
      v12[1] = sub_1B647D400;
      v13 = *(v0 + 96);
      v14 = *(v0 + 80);
      v15 = *MEMORY[0x1E69E9840];

      return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v14, v0 + 48);
    }

    v5 = *(*(v0 + 72) + 112);
    *(v0 + 56) = 0;
    v6 = [v5 feedItemFromPBRecord:v1 error:v0 + 56];
    v7 = *(v0 + 56);
    if (!v6)
    {
      v23 = v7;
      v24 = sub_1B67D855C();

      swift_willThrow();
      sub_1B6449D2C(v1, 1);

      goto LABEL_13;
    }

    v8 = v6;
    v9 = v7;
    [v8 setSurfacedByFlags_];
    v10 = v8;
    MEMORY[0x1B8C949F0]();
    if (*((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((*(v0 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B67D97FC();
    }

    sub_1B67D983C();
    sub_1B6449D2C(v1, 1);

    v4 = *(v0 + 136);
    *(v0 + 128) = *(v0 + 32);
LABEL_12:
    *(v0 + 136) = v4;
    goto LABEL_13;
  }

  if (*(v0 + 24) == 2)
  {
    v2 = (v0 + 40);
    v3 = v1;
    MEMORY[0x1B8C949F0]();
    if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v25 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B67D97FC();
    }

    sub_1B67D983C();
    sub_1B6449D2C(v1, 2);
    v4 = vld1q_dup_f64(v2);
    goto LABEL_12;
  }

  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  v18 = *(v0 + 104);
  (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  (*(v17 + 8))(v16, v18);

  v19 = *(v0 + 8);
  v20 = *(v0 + 144);
  v21 = *(v0 + 128);
  v22 = *MEMORY[0x1E69E9840];

  return v19(v21, v20);
}

uint64_t sub_1B647D874()
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[6];

  v5 = v0[1];
  v6 = *MEMORY[0x1E69E9840];

  return v5();
}

uint64_t sub_1B647D954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  if (a2)
  {
    sub_1B67D967C();
  }

  v8 = sub_1B67DA41C();
  v9 = a3 + 56;
  v10 = -1 << *(a3 + 32);
  v11 = v8 & ~v10;
  if ((*(a3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *(a3 + 48);
    do
    {
      v14 = (v13 + 16 * v11);
      v15 = v14[1];
      if (v15)
      {
        if (a2)
        {
          v16 = *v14 == a1 && v15 == a2;
          if (v16 || (sub_1B67DA2DC() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a2)
      {
        return 1;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return 0;
}

BOOL sub_1B647DA7C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = sub_1B67DA3CC();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1B647DB24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v2 = *(v0 + 112);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B647DC00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1B647DC48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B647DCAC()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B642694C;

  return sub_1B647B510(v7, v8, v9, v4, v5, v6, v0 + v3);
}

char *sub_1B647DDD4(char *a1, int64_t a2, char a3)
{
  result = sub_1B647DE14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B647DDF4(void *a1, int64_t a2, char a3)
{
  result = sub_1B647DF18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B647DE14(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7D0, &unk_1B6812A60);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1B647DF18(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A7E0, &unk_1B6814DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C0, &qword_1B6812A50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B647E04C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_1B67DA3CC();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_1B647E754(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1B647E12C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  if (a3)
  {
    sub_1B67D967C();
  }

  v9 = sub_1B67DA41C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_16:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B647E874(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (v15)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_1B67DA2DC() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v11);

  return 0;
}

uint64_t sub_1B647E2B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7B8, &qword_1B6812A48);
  result = sub_1B67D9ECC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_1B67DA3CC();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B647E4D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C8, &qword_1B6812A58);
  result = sub_1B67D9ECC();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v21 = *v19;
      v20 = v19[1];
      v22 = *(v6 + 40);
      sub_1B67DA3DC();
      sub_1B67DA3FC();
      if (v20)
      {
        sub_1B67D967C();
      }

      result = sub_1B67DA41C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v21;
      v15[1] = v20;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B647E754(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B647E2B4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1B647EA30();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1B647ECC8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_1B67DA3CC();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1B67DA33C();
  __break(1u);
  return result;
}

uint64_t sub_1B647E874(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_1B647E4D8(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1B647EB70();
      goto LABEL_22;
    }

    sub_1B647EEB8(v9 + 1);
  }

  v11 = *v4;
  v12 = *(*v4 + 40);
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  if (a2)
  {
    sub_1B67D967C();
  }

  result = sub_1B67DA41C();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == v8 && v18 == a2;
          if (v19 || (result = sub_1B67DA2DC(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C0, &qword_1B6812A50);
            result = sub_1B67DA33C();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void *sub_1B647EA30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7B8, &qword_1B6812A48);
  v2 = *v0;
  v3 = sub_1B67D9EBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1B647EB70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C8, &qword_1B6812A58);
  v2 = *v0;
  v3 = sub_1B67D9EBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1B647ECC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7B8, &qword_1B6812A48);
  result = sub_1B67D9ECC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_1B67DA3CC();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B647EEB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C8, &qword_1B6812A58);
  result = sub_1B67D9ECC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      sub_1B67DA3DC();
      sub_1B67DA3FC();
      if (v19)
      {

        sub_1B67D967C();
      }

      result = sub_1B67DA41C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_32;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_30;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {

LABEL_30:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1B647F10C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A7C0, &qword_1B6812A50);
  v4 = sub_1B647F9AC();
  result = MEMORY[0x1B8C94D60](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_1B647E12C(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1B647F1B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C94D60](v2, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1B647E04C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

id sub_1B647F22C(id result, unint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v42 = result;
  if (a2 >> 62)
  {
LABEL_38:
    v39 = a2 & 0xFFFFFFFFFFFFFF8;
    v35 = result;
    v6 = sub_1B67DA04C();
    result = v35;
    if (!v6)
    {
      return result;
    }
  }

  else
  {
    v39 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }
  }

  v7 = 0;
  do
  {
    v36 = result;
    for (i = v7; ; ++i)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1B8C95180](i, a2);
      }

      else
      {
        if (i >= *(v39 + 16))
        {
          goto LABEL_37;
        }

        result = *(a2 + 8 * i + 32);
      }

      v9 = result;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v10 = *a3;

      v11 = [v9 articleID];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1B67D964C();
        v15 = v14;
      }

      else
      {
        v13 = 0;
        v15 = 0;
      }

      v16 = sub_1B647D954(v13, v15, v10);

      if ((v16 & 1) == 0)
      {
        break;
      }

      if (v7 == v6)
      {
        return v36;
      }
    }

    v17 = [a4 clampOrder_];
    if (sub_1B647DA7C(v17, *a5))
    {
      v18 = [a4 maxOrder];
      if (v18)
      {
        v19 = v18;
        while (1)
        {
          v20 = *a5;
          if (!*(*a5 + 16))
          {
            break;
          }

          v21 = *(v20 + 40);
          v22 = sub_1B67DA3CC();
          v23 = -1 << *(v20 + 32);
          v24 = v22 & ~v23;
          if (((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          while (*(*(v20 + 48) + 8 * v24) != v19)
          {
            v24 = (v24 + 1) & v25;
            if (((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          v17 = 0;
          if (!--v19)
          {
            goto LABEL_29;
          }
        }

LABEL_27:
        v17 = v19;
      }

      else
      {
        v17 = 0;
      }
    }

LABEL_29:
    v26 = sub_1B67D963C();
    [v9 setFeedID_];

    [v9 setOrder_];
    v27 = [v9 articleID];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1B67D964C();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    sub_1B647E12C(&v41, v29, v31);

    sub_1B647E04C(&v41, v17);
    v32 = v9;
    MEMORY[0x1B8C949F0]();
    if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v34 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1B67D97FC();
    }

    sub_1B67D983C();
    v33 = v42;

    result = v33;
  }

  while (v7 != v6);
  return result;
}

id sub_1B647F5A0(unint64_t a1, unint64_t a2, void *a3)
{
  v49 = a3;
  v5 = sub_1B6471AF8();
  v6 = *v5;
  v7 = v5[1];
  if (a2 >> 62)
  {
    v8 = sub_1B67DA04C();
  }

  else
  {
    v8 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = v8 & ~(v8 >> 63);
  if (v8)
  {
    v51 = MEMORY[0x1E69E7CC0];

    result = sub_1B647DDF4(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_38;
    }

    v46 = v8 & ~(v8 >> 63);
    v47 = a1;
    v48 = v7;
    v11 = v51;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        MEMORY[0x1B8C95180](v12, a2);
        v13 = [swift_unknownObjectRetain() articleID];
        if (v13)
        {
          v14 = v13;
          v15 = sub_1B67D964C();
          v17 = v16;
          swift_unknownObjectRelease_n();
        }

        else
        {
          swift_unknownObjectRelease_n();
          v15 = 0;
          v17 = 0;
        }

        v51 = v11;
        v19 = *(v11 + 16);
        v18 = *(v11 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1B647DDF4((v18 > 1), v19 + 1, 1);
          v11 = v51;
        }

        ++v12;
        *(v11 + 16) = v19 + 1;
        v20 = v11 + 16 * v19;
        *(v20 + 32) = v15;
        *(v20 + 40) = v17;
      }

      while (v8 != v12);
    }

    else
    {
      v21 = (a2 + 32);
      v22 = v8;
      do
      {
        v23 = *v21;
        v24 = [v23 articleID];
        if (v24)
        {
          v25 = v24;
          v26 = sub_1B67D964C();
          v28 = v27;
        }

        else
        {

          v26 = 0;
          v28 = 0;
        }

        v51 = v11;
        v30 = *(v11 + 16);
        v29 = *(v11 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1B647DDF4((v29 > 1), v30 + 1, 1);
          v11 = v51;
        }

        *(v11 + 16) = v30 + 1;
        v31 = v11 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
        ++v21;
        --v22;
      }

      while (v22);
    }

    a1 = v47;
    v9 = v8 & ~(v8 >> 63);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1B647F10C(v11);

  v51 = v32;
  v33 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
LABEL_35:
    v43 = sub_1B647F1B8(v33);

    v50 = v43;

    v44 = v49;
    v45 = sub_1B647F22C(MEMORY[0x1E69E7CC0], a1, &v51, v44, &v50);

    swift_bridgeObjectRelease_n();

    return v45;
  }

  v50 = MEMORY[0x1E69E7CC0];
  result = sub_1B647DDD4(0, v9, 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v33 = v50;
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        v35 = [MEMORY[0x1B8C95180](i a2)];
        swift_unknownObjectRelease();
        v50 = v33;
        v37 = *(v33 + 16);
        v36 = *(v33 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1B647DDD4((v36 > 1), v37 + 1, 1);
          v33 = v50;
        }

        *(v33 + 16) = v37 + 1;
        *(v33 + 8 * v37 + 32) = v35;
      }
    }

    else
    {
      v38 = (a2 + 32);
      do
      {
        v39 = [*v38 order];
        v50 = v33;
        v41 = *(v33 + 16);
        v40 = *(v33 + 24);
        if (v41 >= v40 >> 1)
        {
          v42 = v39;
          sub_1B647DDD4((v40 > 1), v41 + 1, 1);
          v39 = v42;
          v33 = v50;
        }

        *(v33 + 16) = v41 + 1;
        *(v33 + 8 * v41 + 32) = v39;
        ++v38;
        --v8;
      }

      while (v8);
    }

    goto LABEL_35;
  }

LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1B647F9AC()
{
  result = qword_1EDB1E638;
  if (!qword_1EDB1E638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94A7C0, &qword_1B6812A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1E638);
  }

  return result;
}

uint64_t sub_1B647FA28(unint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B647AB64(a1, v5, v1 + v4, v6);
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_27Tm(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 24) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);

  (*(v4 + 8))(v1 + v6, v3);
  a1(*(v1 + v7));

  return MEMORY[0x1EEE6BDD0](v1, v7 + 8, v5 | 7);
}

uint64_t sub_1B647FBE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v3 + 16);
  v8 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B647AD60(a3, v7, v3 + v6, v8);
}

uint64_t sub_1B647FCAC()
{
  v1 = 0x747865746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x646E657078457369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1B647FD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6481E08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B647FD38(uint64_t a1)
{
  v2 = sub_1B6482BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B647FD74(uint64_t a1)
{
  v2 = sub_1B6482BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B647FDB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v15 = a5;
  v14[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A858, &qword_1B6812D70);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6482BC4();
  sub_1B67DA47C();
  v18 = 0;
  sub_1B67DA20C();
  if (!v5)
  {
    v14[1] = v14[0];
    v17 = 1;
    sub_1B63F3DA0(0, &qword_1EDB1E5B0, off_1E7C34420);
    sub_1B6481CF8(&qword_1EDB1E5C0, &qword_1EDB1E5B0, off_1E7C34420);
    sub_1B67DA24C();
    v16 = 2;
    sub_1B67DA21C();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B647FFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B6481F1C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7 & 1;
  }

  return result;
}

uint64_t MyArticlesRequest.feedIDs.getter()
{
  v1 = *(v0 + OBJC_IVAR___FCMyArticlesRequest_feeds);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v2, 0);
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);

      if (v7 >= v8 >> 1)
      {
        sub_1B6456B24((v8 > 1), v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_1B6480148()
{
  v1 = [objc_opt_self() feedRangeFromDateRange_];
  v2 = v1;
  v3 = *(v0 + OBJC_IVAR___FCMyArticlesRequest_feeds);
  v4 = *(v3 + 16);
  if (v4)
  {
    v17 = MEMORY[0x1E69E7CC0];
    result = sub_1B67D9FAC();
    v6 = *(v0 + OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed);
    if (v6 < 0)
    {
      __break(1u);
    }

    else
    {
      v7 = (v3 + 56);
      do
      {
        v8 = *(v7 - 3);
        v9 = *(v7 - 2);
        v10 = *(v7 - 1);
        v11 = *v7;
        v7 += 32;
        v12 = objc_allocWithZone(FCFeedRequest);

        v13 = v10;
        v14 = v2;
        v15 = sub_1B67D963C();

        [v12 initWithFeedID:v15 feedRange:v14 maxCount:v6 isExpendable:v11 cachedOnly:0 requiredFeature:0];

        sub_1B67D9F7C();
        v16 = *(v17 + 16);
        sub_1B67D9FBC();
        sub_1B67D9FCC();
        sub_1B67D9F8C();
        --v4;
      }

      while (v4);

      return v17;
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1B64802E0()
{
  v1 = *(v0 + OBJC_IVAR___FCMyArticlesRequest_feeds);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x1E69E7CC8];
  while (v3 < *(v1 + 16))
  {
    v9 = *(v4 - 2);
    v8 = *(v4 - 1);
    v10 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = sub_1B6456E70(v9, v8);
    v14 = v5[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_19;
    }

    v18 = v13;
    if (v5[3] < v17)
    {
      sub_1B64817EC(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_1B6456E70(v9, v8);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v18)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v12;
    sub_1B6481A90();
    v12 = v23;
    if (v18)
    {
LABEL_3:
      v6 = v5[7];
      v7 = *(v6 + 8 * v12);
      *(v6 + 8 * v12) = v10;

      goto LABEL_4;
    }

LABEL_12:
    v5[(v12 >> 6) + 8] |= 1 << v12;
    v20 = (v5[6] + 16 * v12);
    *v20 = v9;
    v20[1] = v8;
    *(v5[7] + 8 * v12) = v10;

    v21 = v5[2];
    v16 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v16)
    {
      goto LABEL_20;
    }

    v5[2] = v22;
LABEL_4:
    ++v3;
    v4 += 4;
    if (v2 == v3)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1B67DA34C();
  __break(1u);
  return result;
}

void sub_1B64804AC(unint64_t a1, uint64_t a2, void *a3, unint64_t a4, char a5)
{
  v6 = v5;
  LOBYTE(v7) = a5;
  v10 = a1;
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
    while (1)
    {
      v47 = MEMORY[0x1E69E7CC0];
      sub_1B64816C0(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        break;
      }

      v36 = a4;
      v37 = v7;
      v38 = v6;
      a4 = 0;
      v12 = v47;
      v42 = v10;
      v43 = v10 & 0xC000000000000001;
      v39 = a3;
      v40 = v10 & 0xFFFFFFFFFFFFFF8;
      v41 = v11;
      while (1)
      {
        v13 = a4 + 1;
        if (__OFADD__(a4, 1))
        {
          break;
        }

        if (v43)
        {
          v14 = v12;
          v15 = MEMORY[0x1B8C95180](a4, v10);
        }

        else
        {
          if (a4 >= *(v40 + 16))
          {
            goto LABEL_19;
          }

          v14 = v12;
          v15 = *(v10 + 8 * a4 + 32);
        }

        v16 = v15;
        v17 = [v15 feedID];
        v18 = sub_1B67D964C();
        v20 = v19;

        if (!*(a2 + 16))
        {

LABEL_17:

          v30 = [v16 feedID];
          v31 = sub_1B67D964C();
          v33 = v32;

          sub_1B6481BFC();
          swift_allocError();
          *v34 = v31;
          v34[1] = v33;
          swift_willThrow();

          return;
        }

        v21 = sub_1B6456E70(v18, v20);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_17;
        }

        v45 = *(*(a2 + 56) + 8 * v21);
        v24 = [v16 feedID];
        v6 = sub_1B67D964C();
        v26 = v25;

        v27 = [v16 isExpendable];
        v12 = v14;
        v47 = v14;
        v7 = *(v14 + 16);
        v28 = *(v12 + 24);
        a3 = (v7 + 1);
        if (v7 >= v28 >> 1)
        {
          sub_1B64816C0((v28 > 1), v7 + 1, 1);
          v12 = v47;
        }

        *(v12 + 16) = a3;
        v29 = v12 + 32 * v7;
        *(v29 + 32) = v6;
        *(v29 + 40) = v26;
        *(v29 + 48) = v45;
        *(v29 + 56) = v27;
        ++a4;
        v10 = v42;
        if (v13 == v41)
        {

          a3 = v39;
          v6 = v38;
          LOBYTE(v7) = v37;
          a4 = v36;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v11 = sub_1B67DA04C();
      if (!v11)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_21:

    v12 = MEMORY[0x1E69E7CC0];
LABEL_22:
    v35 = objc_allocWithZone(v6);
    *&v35[OBJC_IVAR___FCMyArticlesRequest_feeds] = v12;
    *&v35[OBJC_IVAR___FCMyArticlesRequest_dateRange] = a3;
    *&v35[OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed] = a4;
    v35[OBJC_IVAR___FCMyArticlesRequest_isFullFetch] = v7 & 1;
    v46.receiver = v35;
    v46.super_class = v6;
    objc_msgSendSuper2(&v46, sel_init);
  }
}

id MyArticlesRequest.copy(with:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___FCMyArticlesRequest_feeds);
  v5 = *(v1 + OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed);
  v6 = *(v1 + OBJC_IVAR___FCMyArticlesRequest_isFullFetch);
  v7 = objc_allocWithZone(ObjectType);
  *&v7[OBJC_IVAR___FCMyArticlesRequest_feeds] = v4;
  *&v7[OBJC_IVAR___FCMyArticlesRequest_dateRange] = a1;
  *&v7[OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed] = v5;
  v7[OBJC_IVAR___FCMyArticlesRequest_isFullFetch] = v6;
  v10.receiver = v7;
  v10.super_class = ObjectType;

  v8 = a1;
  return objc_msgSendSuper2(&v10, sel_init);
}

id MyArticlesRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1B6480950()
{
  v1 = 0x676E615265746164;
  v2 = 0x7364656566;
  if (*v0 != 2)
  {
    v2 = 0x736D65744978616DLL;
  }

  if (*v0)
  {
    v1 = 0x65466C6C75467369;
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

uint64_t sub_1B64809E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B64821B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6480A08(uint64_t a1)
{
  v2 = sub_1B6481C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6480A44(uint64_t a1)
{
  v2 = sub_1B6481C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id MyArticlesRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MyArticlesRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A828, &qword_1B6812A90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6481C50();
  sub_1B67DA47C();
  v15 = *(v3 + OBJC_IVAR___FCMyArticlesRequest_dateRange);
  HIBYTE(v14) = 0;
  sub_1B63F3DA0(0, &qword_1EDB1E5D0, off_1E7C34370);
  sub_1B6481CF8(&unk_1EDB1E5E0, &qword_1EDB1E5D0, off_1E7C34370);
  sub_1B67DA24C();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR___FCMyArticlesRequest_isFullFetch);
    LOBYTE(v15) = 1;
    sub_1B67DA21C();
    v15 = *(v3 + OBJC_IVAR___FCMyArticlesRequest_feeds);
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A830, &qword_1B6812A98);
    sub_1B6481D3C(&qword_1EDB1E628, sub_1B6481CA4);
    sub_1B67DA24C();
    v13 = *(v3 + OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed);
    LOBYTE(v15) = 3;
    sub_1B67DA22C();
  }

  return (*(v6 + 8))(v9, v5);
}

id MyArticlesRequest.init(from:)(uint64_t *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A838, &unk_1B6812AA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &ObjectType - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6481C50();
  sub_1B67DA46C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_1B63F3DA0(0, &qword_1EDB1E5D0, off_1E7C34370);
    v14 = 0;
    sub_1B6481CF8(&qword_1EDB1E5D8, &qword_1EDB1E5D0, off_1E7C34370);
    sub_1B67DA1CC();
    *&v1[OBJC_IVAR___FCMyArticlesRequest_dateRange] = v15;
    LOBYTE(v15) = 1;
    v1[OBJC_IVAR___FCMyArticlesRequest_isFullFetch] = sub_1B67DA1AC() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A830, &qword_1B6812A98);
    v14 = 2;
    sub_1B6481D3C(&qword_1EDB1E620, sub_1B6481DB4);
    sub_1B67DA1CC();
    *&v1[OBJC_IVAR___FCMyArticlesRequest_feeds] = v15;
    LOBYTE(v15) = 3;
    *&v1[OBJC_IVAR___FCMyArticlesRequest_maxItemsPerFeed] = sub_1B67DA1BC();
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

id sub_1B6481188@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MyArticlesRequest.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MyArticlesRequest.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6812A80;
  *(inited + 32) = 0x7364656546;
  *(inited + 40) = 0xE500000000000000;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 48) = *(*(v2 + OBJC_IVAR___FCMyArticlesRequest_feeds) + 16);
  *(inited + 72) = v5;
  *(inited + 80) = 0x6E61522065746144;
  *(inited + 88) = 0xEA00000000006567;
  v6 = *(v2 + OBJC_IVAR___FCMyArticlesRequest_dateRange);
  *(inited + 120) = sub_1B63F3DA0(0, &qword_1EDB1E5D0, off_1E7C34370);
  *(inited + 96) = v6;
  v7 = v6;
  sub_1B6482328(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A848, &qword_1B6812AB0);
  swift_arrayDestroy();
  a1[3] = sub_1B67D895C();
  a1[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1B67D894C();
}

id sub_1B648140C@<X0>(void *a1@<X8>)
{
  result = _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvgZ_0();
  *a1 = result;
  return result;
}

void sub_1B6481434(id *a1)
{
  v1 = *a1;
  v2 = *a1;

  _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(v1);
}

void (*static MyArticlesRequest.lastRequestIssued.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = sub_1B67D85FC();
  v3 = *(v2 - 8);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(v3 + 64));
  }

  v5 = v4;
  a1[2] = v4;
  result = FCURLForMyArticlesRequest();
  if (result)
  {
    v7 = result;
    sub_1B67D85AC();

    v8 = sub_1B67D860C();
    v10 = v9;
    (*(v3 + 8))(v5, v2);
    v11 = sub_1B67D83AC();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    sub_1B67D839C();
    sub_1B6482928(&qword_1EDB1ED18);
    sub_1B67D838C();
    sub_1B645745C(v8, v10);

    *a1 = a1[1];
    return sub_1B648165C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B648165C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  if (a2)
  {
    v4 = v2;
    _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(v2);
  }

  else
  {
    _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(*a1);
  }

  free(v3);
}

char *sub_1B64816C0(char *a1, int64_t a2, char a3)
{
  result = sub_1B64816E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B64816E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A870, &qword_1B6812D88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B64817EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A800, &qword_1B6810CE0);
  v39 = a2;
  result = sub_1B67DA0CC();
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
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_1B67DA3DC();
      sub_1B67D967C();
      result = sub_1B67DA41C();
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
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
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

id sub_1B6481A90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A800, &qword_1B6810CE0);
  v2 = *v0;
  v3 = sub_1B67DA0BC();
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

        result = v20;
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

unint64_t sub_1B6481BFC()
{
  result = qword_1EB952EB0[0];
  if (!qword_1EB952EB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952EB0);
  }

  return result;
}

unint64_t sub_1B6481C50()
{
  result = qword_1EDB22FC8[0];
  if (!qword_1EDB22FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB22FC8);
  }

  return result;
}

unint64_t sub_1B6481CA4()
{
  result = qword_1EDB22C80[0];
  if (!qword_1EDB22C80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB22C80);
  }

  return result;
}

uint64_t sub_1B6481CF8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1B63F3DA0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6481D3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94A830, &qword_1B6812A98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6481DB4()
{
  result = qword_1EDB22C78;
  if (!qword_1EDB22C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22C78);
  }

  return result;
}

uint64_t sub_1B6481E08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E657078457369 && a2 == 0xEC000000656C6261)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B67DA2DC();

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

uint64_t sub_1B6481F1C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A860, &qword_1B6812D78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6482BC4();
  sub_1B67DA46C();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_1B67DA19C();
    sub_1B63F3DA0(0, &qword_1EDB1E5B0, off_1E7C34420);
    v12 = 1;
    sub_1B6481CF8(&qword_1EDB1E5B8, &qword_1EDB1E5B0, off_1E7C34420);
    sub_1B67DA1CC();
    v11 = 2;
    v10 = 0;
    sub_1B67DA1AC();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t sub_1B64821B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E615265746164 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65466C6C75467369 && a2 == 0xEB00000000686374 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364656566 && a2 == 0xE500000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D65744978616DLL && a2 == 0xEF64656546726550)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B67DA2DC();

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

unint64_t sub_1B6482328(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A868, &qword_1B6812D80);
    v3 = sub_1B67DA0EC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B6482C18(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B6456E70(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B644A4F0(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

id _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvgZ_0()
{
  v0 = sub_1B67D85FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = FCURLForMyArticlesRequest();
  if (result)
  {
    v6 = result;
    sub_1B67D85AC();

    v7 = sub_1B67D860C();
    v9 = v8;
    (*(v1 + 8))(v4, v0);
    v10 = sub_1B67D83AC();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    sub_1B67D839C();
    type metadata accessor for MyArticlesRequest();
    sub_1B6482928(&qword_1EDB1ED18);
    sub_1B67D838C();
    sub_1B645745C(v7, v9);

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s8NewsCore17MyArticlesRequestC04lastE6IssuedACSgvsZ_0(void *a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D85FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v30 - v8;
  if (a1)
  {
    v10 = sub_1B67D83FC();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = a1;
    sub_1B67D83EC();
    v31[0] = v13;
    type metadata accessor for MyArticlesRequest();
    sub_1B6482928(qword_1EDB1ED20);
    v22 = sub_1B67D83DC();
    v24 = v23;

    v25 = FCURLForMyArticlesRequest();
    if (v25)
    {
      v26 = v25;
      sub_1B67D85AC();

      sub_1B67D867C();
      sub_1B645745C(v22, v24);

      (*(v3 + 8))(v9, v2);
LABEL_11:
      v29 = *MEMORY[0x1E69E9840];
      return;
    }

    goto LABEL_13;
  }

  v14 = [objc_opt_self() defaultManager];
  v15 = FCURLForMyArticlesRequest();
  if (!v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v16 = v15;
  sub_1B67D85AC();

  v17 = sub_1B67D858C();
  (*(v3 + 8))(v7, v2);
  v31[0] = 0;
  v18 = [v14 removeItemAtURL:v17 error:v31];

  v19 = v31[0];
  if (!v18)
  {
    v30[0] = v31[0];
    v27 = v31[0];
    v28 = sub_1B67D855C();

    swift_willThrow();
    goto LABEL_11;
  }

  v20 = *MEMORY[0x1E69E9840];

  v21 = v19;
}

uint64_t sub_1B6482928(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MyArticlesRequest();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6482A00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1B6482A48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B6482AC0()
{
  result = qword_1EB952F40[0];
  if (!qword_1EB952F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB952F40);
  }

  return result;
}

unint64_t sub_1B6482B18()
{
  result = qword_1EDB22FB0;
  if (!qword_1EDB22FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22FB0);
  }

  return result;
}

unint64_t sub_1B6482B70()
{
  result = qword_1EDB22FB8;
  if (!qword_1EDB22FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22FB8);
  }

  return result;
}

unint64_t sub_1B6482BC4()
{
  result = qword_1EDB22E20[0];
  if (!qword_1EDB22E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB22E20);
  }

  return result;
}

uint64_t sub_1B6482C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A848, &qword_1B6812AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MyArticlesRequest.Feed.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MyArticlesRequest.Feed.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B6482DDC()
{
  result = qword_1EB9530D0[0];
  if (!qword_1EB9530D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9530D0);
  }

  return result;
}

unint64_t sub_1B6482E34()
{
  result = qword_1EDB22E10;
  if (!qword_1EDB22E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22E10);
  }

  return result;
}

unint64_t sub_1B6482E8C()
{
  result = qword_1EDB22E18;
  if (!qword_1EDB22E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB22E18);
  }

  return result;
}

uint64_t sub_1B6482EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B6484FB4;

  return (sub_1B6484AF4)(a1, a2, a3, a7, a8);
}

uint64_t MyArticlesRequestFactoryType.createRequest(dateRange:configuration:sidecar:maxFeeds:maxItemsPerFeed:binOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = swift_task_alloc();
  *(v8 + 16) = v14;
  *v14 = v8;
  v14[1] = sub_1B6484FB4;

  return sub_1B6484AF4(a1, a2, a3, a7, a8);
}

uint64_t sub_1B64830A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[32] = a6;
  v7[33] = v6;
  v7[30] = a4;
  v7[31] = a5;
  v7[28] = a2;
  v7[29] = a3;
  v7[27] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B64830D4, 0, 0);
}

uint64_t sub_1B64830D4()
{
  v1 = *(*(v0 + 264) + 16);
  *(v0 + 272) = v1;
  v2 = [v1 pptContext];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(v0 + 224);
  *(v0 + 368) = [v2 isRunningPPT];
  swift_unknownObjectRelease();
  v4 = [v1 subscriptionList];
  *(v0 + 280) = v4;
  if (v3)
  {
    v5 = *(v0 + 224);
    goto LABEL_6;
  }

  v5 = [objc_msgSend(v1 configurationManager)];
  v2 = swift_unknownObjectRelease();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v2);
  }

  v6 = *(v0 + 224);
LABEL_6:
  *(v0 + 288) = v5;
  swift_unknownObjectRetain();
  v7 = FCCurrentQoSOrUtilityIfMain();
  *(v0 + 296) = v7;
  v8 = FCDispatchQueueForQualityOfService(v7);
  *(v0 + 304) = v8;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 208;
  *(v0 + 24) = sub_1B64832E0;
  v9 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A880, &unk_1B6812EB8);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1B6484074;
  *(v0 + 168) = &block_descriptor_5;
  *(v0 + 176) = v9;
  [v4 performFirstSyncWithCallbackQueue:v8 completion:v0 + 144];
  v2 = (v0 + 16);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B64832E0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 312) = v2;
  if (v2)
  {
    v3 = sub_1B6483C94;
  }

  else
  {
    v3 = sub_1B64833F0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B64833F0()
{
  v1 = *(v0 + 280);

  v2 = [v1 allSubscribedTagIDs];
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = v2;
  v4 = *(v0 + 280);
  sub_1B67D9AFC();

  v5 = sub_1B67D9AEC();
  *(v0 + 320) = v5;

  v2 = [v4 mutedTagIDs];
  if (!v2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = v2;
  v7 = *(v0 + 272);
  sub_1B67D9AFC();

  v8 = sub_1B67D9AEC();
  *(v0 + 328) = v8;

  v2 = [v7 purchaseController];
  if (!v2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = v2;
  v2 = [v2 allPurchasedTagIDs];
  if (!v2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = v2;
  v22 = v8;
  v11 = *(v0 + 272);

  sub_1B67D9AFC();
  v12 = sub_1B67D9AEC();
  *(v0 + 336) = v12;

  v2 = [v11 bundleSubscriptionManager];
  *(v0 + 344) = v2;
  if (!v2)
  {
LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v2);
  }

  v13 = v2;
  v14 = *(v0 + 296);
  v21 = *(v0 + 288);
  v15 = *(v0 + 368);
  v16 = *(v0 + 272);
  v17 = objc_opt_self();
  *(v0 + 352) = v17;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_1B6483704;
  v18 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A888, &qword_1B6812EC8);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1B6484140;
  *(v0 + 168) = &block_descriptor_5;
  *(v0 + 176) = v18;
  LOBYTE(v20) = (v15 & 1) == 0;
  [v17 fetchTagsForQueryingWithSubscribedTagIDs:v5 mutedTagIDs:v22 purchasedTagIDs:v12 bundleSubscriptionProvider:v13 configuration:v21 contentContext:v16 fallbackToPresubscribedTagIDs:v20 qualityOfService:v14 completionHandler:v0 + 144];
  v2 = (v0 + 80);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B6483704()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = sub_1B6483FBC;
  }

  else
  {
    v3 = sub_1B6483814;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

id sub_1B6483814()
{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[36];
  v6 = v0[33];
  v40 = v0[32];
  v41 = v0[34];
  v7 = v0[30];
  v9 = v0[26];
  v8 = v0[27];
  swift_unknownObjectRelease();

  v38 = [objc_opt_self() feedRangeFromDateRange_];
  v10 = NewsCoreUserDefaults();
  LOBYTE(v2) = [v10 BOOLForKey_];

  sub_1B648422C(v2, v5);
  sub_1B6484420(v7, v9, v6);
  v11 = swift_allocObject();
  *(v11 + 16) = v40;
  *(v11 + 24) = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A390, &qword_1B6812ED0);
  v12 = sub_1B67D97AC();
  v0[22] = sub_1B6484C58;
  v0[23] = v11;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B648488C;
  v0[21] = &block_descriptor_8;
  v13 = _Block_copy(v0 + 18);
  v14 = v0[23];

  v15 = sub_1B67D97AC();
  result = [v41 purchaseController];
  if (!result)
  {
    goto LABEL_9;
  }

  v17 = result;
  v42 = v12;
  result = [result allPurchasedTagIDs];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  v19 = v0[34];

  sub_1B67D9AFC();
  v20 = sub_1B67D9AEC();

  result = [v19 bundleSubscriptionManager];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = v0[31];

  if (v22 < 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v23 = v0[36];
  v24 = v0[31];
  v37 = v0[30];
  v39 = v0[27];
  LOBYTE(v36) = *(v0 + 368);
  v25 = [v0[44] feedRequestsForTags:v42 tagBinProvider:v13 hiddenFeedIDs:v15 allowPaidBundleFeed:1 purchasedTagIDs:v20 bundleSubscriptionProvider:v21 configuration:v23 maxCount:v24 feedRange:v38 sidecar:v0[29] isRunningPPT:v36];
  swift_unknownObjectRelease();

  _Block_release(v13);
  type metadata accessor for MyArticlesRequest();
  v26 = [v25 allRequests];
  sub_1B63F3DA0(0, &unk_1EDB1E5A0, off_1E7C344C0);
  v27 = sub_1B67D97BC();

  v28 = [v25 feedContextByFeedID];
  sub_1B63F3DA0(0, &qword_1EDB1E5B0, off_1E7C34420);
  v29 = sub_1B67D954C();

  sub_1B64804AC(v27, v29, v39, v24, v37 == 0);
  v31 = v30;
  v32 = v0[38];
  v34 = v0[35];
  v33 = v0[36];

  swift_unknownObjectRelease();

  v35 = v0[1];

  return v35(v31);
}

uint64_t sub_1B6483C94()
{
  v1 = *(v0 + 312);
  swift_willThrow();

  v2 = *(v0 + 280);
  v3 = [v2 allSubscribedTagIDs];
  if (!v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = *(v0 + 280);
  sub_1B67D9AFC();

  v6 = sub_1B67D9AEC();
  *(v0 + 320) = v6;

  v3 = [v5 mutedTagIDs];
  if (!v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v3;
  v8 = *(v0 + 272);
  sub_1B67D9AFC();

  v9 = sub_1B67D9AEC();
  *(v0 + 328) = v9;

  v3 = [v8 purchaseController];
  if (!v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = v3;
  v3 = [v3 allPurchasedTagIDs];
  if (!v3)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v11 = v3;
  v23 = v9;
  v12 = *(v0 + 272);

  sub_1B67D9AFC();
  v13 = sub_1B67D9AEC();
  *(v0 + 336) = v13;

  v3 = [v12 bundleSubscriptionManager];
  *(v0 + 344) = v3;
  if (!v3)
  {
LABEL_13:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v3);
  }

  v14 = v3;
  v15 = *(v0 + 296);
  v22 = *(v0 + 288);
  v16 = *(v0 + 368);
  v17 = *(v0 + 272);
  v18 = objc_opt_self();
  *(v0 + 352) = v18;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 208;
  *(v0 + 88) = sub_1B6483704;
  v19 = swift_continuation_init();
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A888, &qword_1B6812EC8);
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1B6484140;
  *(v0 + 168) = &block_descriptor_5;
  *(v0 + 176) = v19;
  LOBYTE(v21) = (v16 & 1) == 0;
  [v18 fetchTagsForQueryingWithSubscribedTagIDs:v6 mutedTagIDs:v23 purchasedTagIDs:v13 bundleSubscriptionProvider:v14 configuration:v22 contentContext:v17 fallbackToPresubscribedTagIDs:v21 qualityOfService:v15 completionHandler:v0 + 144];
  v3 = (v0 + 80);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_1B6483FBC()
{
  v1 = v0[45];
  v3 = v0[42];
  v2 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  swift_willThrow();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = v0[45];
  v10 = v0[1];

  return v10();
}

uint64_t sub_1B6484074(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1B6484140(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A390, &qword_1B6812ED0);
    **(*(v4 + 64) + 40) = sub_1B67D97BC();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1B648422C(char a1, id a2)
{
  if (a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = [a2 hiddenFeedIDs];
  if (v3)
  {
    v4 = v3;
    sub_1B67D97BC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A910, &qword_1B6812FF0);
  sub_1B67D9DEC();

  if (v6)
  {
    v5 = sub_1B648430C(v6);

    if (v5)
    {
      return v5;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1B648430C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  sub_1B6456B24(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_1B6458B54(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1B6456B24((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_1B6484420(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a1 < 1)
  {

    return;
  }

  v4 = a1;
  v5 = *(a3 + 24);
  v6 = (a2 >> 62);
  if (a2 >> 62)
  {
    goto LABEL_48;
  }

  v7 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v7 & ~(v7 >> 63), 0);
    if (v7 < 0)
    {
      __break(1u);
      goto LABEL_50;
    }

    v47 = v5;
    v49 = v6;
    if ((v3 & 0xC000000000000001) != 0)
    {
      v9 = v3;
      v10 = 0;
      do
      {
        MEMORY[0x1B8C95180](v10, v9);
        v11 = [swift_unknownObjectRetain() identifier];
        v12 = sub_1B67D964C();
        v14 = v13;
        swift_unknownObjectRelease_n();

        v16 = *(v51 + 16);
        v15 = *(v51 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1B6456B24((v15 > 1), v16 + 1, 1);
        }

        ++v10;
        *(v51 + 16) = v16 + 1;
        v17 = v51 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v7 != v10);
    }

    else
    {
      v9 = v3;
      v18 = (v3 + 32);
      do
      {
        v19 = *v18;
        v20 = [swift_unknownObjectRetain_n() identifier];
        v21 = sub_1B67D964C();
        v23 = v22;
        swift_unknownObjectRelease_n();

        v25 = *(v51 + 16);
        v24 = *(v51 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1B6456B24((v24 > 1), v25 + 1, 1);
        }

        *(v51 + 16) = v25 + 1;
        v26 = v51 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        ++v18;
        --v7;
      }

      while (v7);
    }

    v3 = v9;
    v5 = v47;
    v6 = v49;
    v8 = MEMORY[0x1E69E7CC0];
  }

  v27 = sub_1B67D97AC();

  v28 = [v5 rankTagIDsDescending_];

  if (!v28)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v29 = sub_1B67D97BC();

  v30 = *(v29 + 16);
  if (v30 >= v4)
  {
    v30 = v4;
  }

  v4 = sub_1B6484A30(v29 + 32, 0, (2 * v30) | 1);
  swift_unknownObjectRelease();
  v52 = v8;
  if (v6)
  {
    v5 = sub_1B67DA04C();
    if (v5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_24:
      v31 = 0;
      v48 = v3 & 0xFFFFFFFFFFFFFF8;
      v50 = v3 & 0xC000000000000001;
      v46 = v3;
      v3 += 32;
      v32 = v4 + 56;
      do
      {
        if (v50)
        {
          v6 = MEMORY[0x1B8C95180](v31, v46);
          v33 = __OFADD__(v31++, 1);
          if (v33)
          {
LABEL_43:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v31 >= *(v48 + 16))
          {
            __break(1u);
LABEL_48:
            v7 = sub_1B67DA04C();
            goto LABEL_4;
          }

          v6 = *(v3 + 8 * v31);
          swift_unknownObjectRetain();
          v33 = __OFADD__(v31++, 1);
          if (v33)
          {
            goto LABEL_43;
          }
        }

        v34 = [v6 identifier];
        v35 = sub_1B67D964C();
        v37 = v36;

        if (*(v4 + 16) && (v38 = *(v4 + 40), sub_1B67DA3DC(), sub_1B67D967C(), v39 = sub_1B67DA41C(), v40 = -1 << *(v4 + 32), v41 = v39 & ~v40, ((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) != 0))
        {
          v42 = ~v40;
          while (1)
          {
            v43 = (*(v4 + 48) + 16 * v41);
            v44 = *v43 == v35 && v43[1] == v37;
            if (v44 || (sub_1B67DA2DC() & 1) != 0)
            {
              break;
            }

            v41 = (v41 + 1) & v42;
            if (((*(v32 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          sub_1B67D9F7C();
          v45 = *(v52 + 16);
          sub_1B67D9FBC();
          sub_1B67D9FCC();
          sub_1B67D9F8C();
        }

        else
        {
LABEL_25:

          swift_unknownObjectRelease();
        }
      }

      while (v31 != v5);
    }
  }
}

uint64_t sub_1B648488C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v4 = v2(v3);

  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1B64848E8()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6484928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B6435678;

  return sub_1B64830A8(a1, a2, a3, a4, a5, a6);
}

void *sub_1B6484A14@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B6484A30(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x1B8C94D60](result, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_1B6469928(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1B6484AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B6484FB4;

  return (v15)(a1, a2, a3, 0, 0, 0, a4, a5);
}

uint64_t sub_1B6484C58(void *a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2;
  }

  v3 = *(v1 + 24);
  if ([a1 tagType] != 1)
  {
    return 3;
  }

  v4 = *(v3 + 16);

  return FCFeedBinForTopicsInForYou(v4);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_7(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t dispatch thunk of MyArticlesRequestFactoryType.createRequest(dateRange:configuration:sidecar:maxFeeds:maxItemsPerFeed:binOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_1B6484E3C;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1B6484E3C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1B6484F60(uint64_t a1, unint64_t *a2)
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

uint64_t sub_1B6484FB8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = sub_1B67D85FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_opt_self() smarterFetchBaseURLForConfiguration_];
  swift_unknownObjectRelease();
  if (v14)
  {
    sub_1B67D85AC();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_1B648A08C(v6, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1B6418AB4(v8, &unk_1EB94BB50, &qword_1B6814FD0);
    sub_1B6489830();
    swift_allocError();
    *v15 = 1;
    *(v15 + 8) = 1;
    return swift_willThrow();
  }

  else
  {
    sub_1B67D859C();
    (*(v10 + 8))(v8, v9);
    return (*(v10 + 32))(v18, v13, v9);
  }
}

void sub_1B648526C(void *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1B67D963C();
  v4 = [v2 URLSessionWithSourceApplicationBundleIdentifier_];

  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B64852FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A990, &qword_1B6813028);
  v41 = *(v4 - 8);
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v40 = v36 - v6;
  Request = type metadata accessor for SmarterFetchRequest(0);
  v8 = *(*(Request - 8) + 64);
  MEMORY[0x1EEE9AC00](Request);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B67D8A9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D877C();
  v38 = *(v16 - 8);
  v39 = v16;
  v17 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  v20 = sub_1B6471844();
  v21 = *(v12 + 16);
  v37 = v11;
  v21(v15, v20, v11);
  v43 = a1;
  sub_1B6489884(a1, v10, type metadata accessor for SmarterFetchRequest);
  v22 = sub_1B67D8A7C();
  v23 = sub_1B67D9C9C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36[0] = v4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v36[1] = a2;
    v27 = v26;
    v44 = v26;
    *v25 = 136446210;
    sub_1B643034C(&qword_1EB94A998, type metadata accessor for SmarterFetchRequest);
    v28 = sub_1B67DA28C();
    v30 = v29;
    sub_1B6467DA0(v10);
    v31 = sub_1B6456540(v28, v30, &v44);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1B63EF000, v22, v23, "will issue Smarter Fetch request, request=%{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1B8C96DF0](v27, -1, -1);
    v32 = v25;
    v4 = v36[0];
    MEMORY[0x1B8C96DF0](v32, -1, -1);
  }

  else
  {

    sub_1B6467DA0(v10);
  }

  v33 = (*(v12 + 8))(v15, v37);
  MEMORY[0x1EEE9AC00](v33);
  v34 = v43;
  v36[-4] = v42;
  v36[-3] = v34;
  v36[-2] = v19;
  (*(v41 + 104))(v40, *MEMORY[0x1E69E8790], v4);
  sub_1B67D9ADC();
  return (*(v38 + 8))(v19, v39);
}

uint64_t sub_1B6485750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a2;
  v29 = a3;
  v30 = a1;
  v33 = sub_1B67D877C();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
  v6 = *(v28 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v26 - v8;
  v26 = &v26 - v8;
  Request = type metadata accessor for SmarterFetchRequest(0);
  v11 = *(Request - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](Request - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  v18 = sub_1B67D993C();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1B6489884(v29, v13, type metadata accessor for SmarterFetchRequest);
  v19 = v9;
  v20 = v28;
  (*(v6 + 16))(v19, v30, v28);
  (*(v4 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31, v33);
  v21 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v22 = (v12 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = (v7 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = 0;
  *(v24 + 3) = 0;
  *(v24 + 4) = v32;
  sub_1B6489628(v13, &v24[v21]);
  (*(v6 + 32))(&v24[v22], v26, v20);
  (*(v4 + 32))(&v24[v23], v27, v33);

  sub_1B644BCA8(0, 0, v17, &unk_1B68130F0, v24);
}