uint64_t sub_1E6287B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E6287F20(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E6287B34(uint64_t a1)
{
  v2 = sub_1E62886EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6287B70(uint64_t a1)
{
  v2 = sub_1E62886EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E6287BAC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E6288170(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1E6287C14()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E65E6D28();
  sub_1E61AFA9C(v9, v1);
  sub_1E61AF5B0(v9, v2);
  sub_1E61AF134(v9, v3);
  sub_1E61AECB8(v9, v4);
  sub_1E61AF5B0(v9, v5);
  sub_1E61AE83C(v9, v6);
  sub_1E61AFA9C(v9, v7);
  return sub_1E65E6D78();
}

uint64_t sub_1E6287CC8(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  sub_1E61AFA9C(a1, v3);
  sub_1E61AF5B0(a1, v4);
  sub_1E61AF134(a1, v5);
  sub_1E61AECB8(a1, v6);
  sub_1E61AF5B0(a1, v7);
  sub_1E61AE83C(a1, v8);

  return sub_1E61AFA9C(a1, v9);
}

uint64_t sub_1E6287D68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E65E6D28();
  sub_1E61AFA9C(v9, v1);
  sub_1E61AF5B0(v9, v2);
  sub_1E61AF134(v9, v3);
  sub_1E61AECB8(v9, v4);
  sub_1E61AF5B0(v9, v5);
  sub_1E61AE83C(v9, v6);
  sub_1E61AFA9C(v9, v7);
  return sub_1E65E6D78();
}

uint64_t sub_1E6287E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1E6287E74(v5, v7) & 1;
}

uint64_t sub_1E6287E74(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1E628565C(*a1, *a2) & 1) == 0 || (sub_1E6285B74(a1[1], a2[1]) & 1) == 0 || (sub_1E62860DC(a1[2], a2[2]) & 1) == 0 || (sub_1E62865F4(a1[3], a2[3]) & 1) == 0 || (sub_1E6285B74(a1[4], a2[4]) & 1) == 0 || (sub_1E6286B0C(a1[5], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[6];
  v5 = a2[6];

  return sub_1E628565C(v4, v5);
}

uint64_t sub_1E6287F20(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x80000001E66152E0 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E6615300 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001E6615320 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E6615340 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4C676E6972616873 && a2 == 0xEB000000006B6E69 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E6615360 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E6615380 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1E65E6C18();

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

uint64_t sub_1E6288170@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773B0, &qword_1E65F9DF0);
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v8 = v25 - v7;
  v9 = MEMORY[0x1E69E7CC0];
  sub_1E5DF9D44(MEMORY[0x1E69E7CC0]);
  v29 = sub_1E5E06D90(v9);
  v32 = sub_1E5E06FB4(v9);
  v33 = sub_1E5E071AC(v9);
  v35 = sub_1E5E06D90(v9);
  v34 = sub_1E5E073A4(v9);
  v10 = sub_1E5DF9D44(v9);
  v30 = a1;
  v31 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E62886EC();
  sub_1E65E6D98();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    v26 = a2;
    v27 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773C0, &qword_1E65F9DF8);
    v36 = 0;
    v12 = sub_1E6288740();
    v13 = v28;
    sub_1E65E6AD8();

    v14 = v37;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773D8, &qword_1E65F9E08);
    v36 = 1;
    v16 = sub_1E62887F8();
    sub_1E65E6AD8();
    v25[1] = v16;
    v25[2] = v15;

    v17 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0773E8, &unk_1E65F9E10);
    v36 = 2;
    sub_1E62888B0();
    sub_1E65E6AD8();
    v29 = v12;

    v18 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077400, &unk_1E65F9E20);
    v36 = 3;
    sub_1E6288968();
    sub_1E65E6AD8();

    v19 = v37;
    v36 = 4;
    sub_1E65E6AD8();

    v35 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077418, &unk_1E65F9E30);
    v36 = 5;
    sub_1E6288A20();
    sub_1E65E6AD8();

    v34 = v37;
    v36 = 6;
    sub_1E65E6AD8();
    (*(v27 + 8))(v8, v13);

    v20 = v37;

    v21 = v35;

    v22 = v34;

    __swift_destroy_boxed_opaque_existential_1(v30);

    v24 = v26;
    *v26 = v14;
    v24[1] = v17;
    v24[2] = v18;
    v24[3] = v19;
    v24[4] = v21;
    v24[5] = v22;
    v24[6] = v20;
  }

  return result;
}

unint64_t sub_1E62886EC()
{
  result = qword_1ED0773B8;
  if (!qword_1ED0773B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0773B8);
  }

  return result;
}

unint64_t sub_1E6288740()
{
  result = qword_1ED0773C8;
  if (!qword_1ED0773C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773C0, &qword_1E65F9DF8);
    sub_1E5FED46C(&qword_1ED0773D0, &qword_1ED072AE0, &qword_1E65F9E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0773C8);
  }

  return result;
}

unint64_t sub_1E62887F8()
{
  result = qword_1ED0773E0;
  if (!qword_1ED0773E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773D8, &qword_1E65F9E08);
    sub_1E5E1CC5C();
    sub_1E5FED46C(&qword_1ED0773D0, &qword_1ED072AE0, &qword_1E65F9E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0773E0);
  }

  return result;
}

unint64_t sub_1E62888B0()
{
  result = qword_1ED0773F0;
  if (!qword_1ED0773F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773E8, &unk_1E65F9E10);
    sub_1E5FED46C(&qword_1ED0773F8, &qword_1ED076308, &qword_1E65F53D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0773F0);
  }

  return result;
}

unint64_t sub_1E6288968()
{
  result = qword_1ED077408;
  if (!qword_1ED077408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077400, &unk_1E65F9E20);
    sub_1E5FED46C(&qword_1ED077410, &qword_1ED0762E8, &qword_1E65F53C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077408);
  }

  return result;
}

unint64_t sub_1E6288A20()
{
  result = qword_1ED077420;
  if (!qword_1ED077420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077418, &unk_1E65F9E30);
    sub_1E5FED46C(&qword_1ED077428, &qword_1ED0762C8, &qword_1E65F53B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077420);
  }

  return result;
}

unint64_t sub_1E6288AD8()
{
  result = qword_1ED077438;
  if (!qword_1ED077438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773C0, &qword_1E65F9DF8);
    sub_1E5FED46C(&qword_1ED077440, &qword_1ED072AE0, &qword_1E65F9E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077438);
  }

  return result;
}

unint64_t sub_1E6288B90()
{
  result = qword_1ED077448;
  if (!qword_1ED077448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773D8, &qword_1E65F9E08);
    sub_1E5E1CCB8();
    sub_1E5FED46C(&qword_1ED077440, &qword_1ED072AE0, &qword_1E65F9E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077448);
  }

  return result;
}

unint64_t sub_1E6288C48()
{
  result = qword_1ED077450;
  if (!qword_1ED077450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0773E8, &unk_1E65F9E10);
    sub_1E5FED46C(&qword_1ED077458, &qword_1ED076308, &qword_1E65F53D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077450);
  }

  return result;
}

unint64_t sub_1E6288D00()
{
  result = qword_1ED077460;
  if (!qword_1ED077460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077400, &unk_1E65F9E20);
    sub_1E5FED46C(&qword_1ED077468, &qword_1ED0762E8, &qword_1E65F53C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077460);
  }

  return result;
}

unint64_t sub_1E6288DB8()
{
  result = qword_1ED077470;
  if (!qword_1ED077470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED077418, &unk_1E65F9E30);
    sub_1E5FED46C(&qword_1ED077478, &qword_1ED0762C8, &qword_1E65F53B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED077470);
  }

  return result;
}

uint64_t sub_1E6288E70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6288EB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6288F20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6288F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E6288FFC()
{
  result = qword_1ED0775C0;
  if (!qword_1ED0775C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775C0);
  }

  return result;
}

unint64_t sub_1E6289054()
{
  result = qword_1ED0775C8;
  if (!qword_1ED0775C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775C8);
  }

  return result;
}

unint64_t sub_1E62890AC()
{
  result = qword_1ED0775D0;
  if (!qword_1ED0775D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775D0);
  }

  return result;
}

uint64_t sub_1E628910C()
{
  v1 = *v0;
  sub_1E65E6D28();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t sub_1E62891C4()
{
  *v0;
  *v0;
  *v0;
  sub_1E65E5D78();
}

uint64_t sub_1E6289268()
{
  v1 = *v0;
  sub_1E65E6D28();
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t sub_1E628931C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1E6289700();
  *a2 = result;
  return result;
}

void sub_1E628934C(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368564;
  v4 = 0xE600000000000000;
  v5 = 0x6D6F74746F62;
  if (*v1 != 2)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  if (*v1)
  {
    v3 = 0x676E696461656CLL;
    v2 = 0xE700000000000000;
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

uint64_t sub_1E62893C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E6289700();
  *a1 = result;
  return result;
}

uint64_t sub_1E62893E8(uint64_t a1)
{
  v2 = sub_1E62899B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E6289424(uint64_t a1)
{
  v2 = sub_1E62899B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EdgeInsets.encode(to:)(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0775D8, &qword_1E65FA0C8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E62899B0();
  sub_1E65E6DA8();
  v20 = a2;
  v19 = 0;
  sub_1E5F8BCBC();
  sub_1E65E6B78();
  if (!v5)
  {
    v20 = a3;
    v19 = 1;
    sub_1E65E6B78();
    v20 = a4;
    v19 = 2;
    sub_1E65E6B78();
    v20 = a5;
    v19 = 3;
    sub_1E65E6B78();
  }

  return (*(v12 + 8))(v15, v11);
}

void sub_1E62896B0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E628974C(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1E6289700()
{
  v0 = sub_1E65E6A48();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

double sub_1E628974C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077600, &qword_1E65FA278);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E62899B0();
  sub_1E65E6D98();
  v10[32] = 0;
  sub_1E5F8BF70();
  sub_1E65E6AD8();
  v8 = v11;
  v10[24] = 1;
  sub_1E65E6AD8();
  v10[16] = 2;
  sub_1E65E6AD8();
  v10[15] = 3;
  sub_1E65E6AD8();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_1E62899B0()
{
  result = qword_1ED0775E0;
  if (!qword_1ED0775E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775E0);
  }

  return result;
}

unint64_t sub_1E6289A18()
{
  result = qword_1ED0775E8;
  if (!qword_1ED0775E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775E8);
  }

  return result;
}

unint64_t sub_1E6289A70()
{
  result = qword_1ED0775F0;
  if (!qword_1ED0775F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775F0);
  }

  return result;
}

unint64_t sub_1E6289AC8()
{
  result = qword_1ED0775F8;
  if (!qword_1ED0775F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0775F8);
  }

  return result;
}

uint64_t sub_1E6289B1C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E3B68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 3u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v10 = MEMORY[0x1E69CC450];
        goto LABEL_18;
      }

      goto LABEL_8;
    }

    if (a1 != 2)
    {
      v10 = MEMORY[0x1E69CC428];
      goto LABEL_18;
    }

LABEL_14:
    v10 = MEMORY[0x1E69CC4A8];
    goto LABEL_18;
  }

  if (a1 <= 5u)
  {
    if (a1 != 4)
    {
      v10 = MEMORY[0x1E69CC438];
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (a1 == 6)
  {
    v10 = MEMORY[0x1E69CC490];
    goto LABEL_18;
  }

  if (a1 != 7)
  {
    v10 = MEMORY[0x1E69CC498];
LABEL_18:
    v21 = *v10;
    v22 = sub_1E65D9908();
    v24 = *(v22 - 8);
    (*(v24 + 104))(a2, v21, v22);
    v23 = *(v24 + 56);

    return v23(a2, 0, 1, v22);
  }

LABEL_8:
  v11 = v7;
  sub_1E65DE358();
  v12 = sub_1E65E3B48();
  v13 = sub_1E65E6328();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    v16 = sub_1E65DFFA8();
    v18 = sub_1E5DFD4B0(v16, v17, &v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1E5DE9000, v12, v13, "Metric Destination not supported for %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);
  }

  (*(v5 + 8))(v9, v11);
  v19 = sub_1E65D9908();
  return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
}

unint64_t sub_1E6289E48(char a1, char a2)
{
  result = 0x632E657275676966;
  switch(a2)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x642E657275676966;
      break;
    case 4:
    case 12:
      if (a1)
      {
        result = 0xD000000000000017;
      }

      else
      {
        result = 0x722E657275676966;
      }

      break;
    case 5:
      if (a1)
      {
        result = 0x722E657275676966;
      }

      else
      {
        result = 0x772E657275676966;
      }

      break;
    case 6:
      result = 0xD000000000000025;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x656D2E656C707061;
      break;
    case 9:
      result = 0x702E657275676966;
      break;
    case 10:
      result = 0x722E657275676966;
      break;
    case 11:
      result = 0xD000000000000022;
      break;
    case 13:
      result = 0x792E657275676966;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E628A07C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D40, &qword_1E65EED28);
  sub_1E65D7FB8();
  switch(v8)
  {
    case 1:
      v2 = MEMORY[0x1E699F4C8];
      goto LABEL_17;
    case 2:
      v2 = MEMORY[0x1E699F4F0];
      goto LABEL_17;
    case 3:
      v2 = MEMORY[0x1E699F4E0];
      goto LABEL_17;
    case 4:
      v2 = MEMORY[0x1E699F510];
      goto LABEL_17;
    case 5:
      v2 = MEMORY[0x1E699F4B0];
      goto LABEL_17;
    case 6:
      v2 = MEMORY[0x1E699F4D0];
      goto LABEL_17;
    case 7:
      v2 = MEMORY[0x1E699F4B8];
      goto LABEL_17;
    case 8:
      v2 = MEMORY[0x1E699F4C0];
      goto LABEL_17;
    case 9:
      v2 = MEMORY[0x1E699F4F8];
      goto LABEL_17;
    case 10:
      v2 = MEMORY[0x1E699F4E8];
      goto LABEL_17;
    case 11:
      v2 = MEMORY[0x1E699F508];
      goto LABEL_17;
    case 12:
      v2 = MEMORY[0x1E699F518];
      goto LABEL_17;
    case 13:
      v2 = MEMORY[0x1E699F4D8];
      goto LABEL_17;
    case 14:
      v3 = sub_1E65E2A48();
      return (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
    default:
      v2 = MEMORY[0x1E699F500];
LABEL_17:
      v5 = *v2;
      v6 = sub_1E65E2A48();
      v7 = *(v6 - 8);
      (*(v7 + 104))(a1, v5, v6);
      return (*(v7 + 56))(a1, 0, 1, v6);
  }
}

uint64_t dispatch thunk of RouteDetourPresenting.activate(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E61CFDA0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of RouteDetourPresenting.deactivate(display:animated:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1E5DFE6BC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of RouteDetourDisplaying.apply(handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1E5DFA78C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RouteDetourDisplaying.reset(animated:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFE6BC;

  return v11(a1, a2, a3);
}

uint64_t sub_1E628A770()
{
  v0 = sub_1E65DE688();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = sub_1E65DEBD8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE648();
  (*(v1 + 104))(v5, *MEMORY[0x1E699CBC8], v0);
  v13 = sub_1E65DE678();
  v14 = *(v1 + 8);
  v14(v5, v0);
  v14(v7, v0);
  v15 = MEMORY[0x1E699CD18];
  if ((v13 & 1) == 0)
  {
    v15 = MEMORY[0x1E699CD10];
  }

  (*(v9 + 104))(v12, *v15, v8);
  return sub_1E65DEBA8();
}

uint64_t sub_1E628A978@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v40 = a1;
  v43 = a2;
  v4 = type metadata accessor for AppComposer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - v9;
  v41 = sub_1E65DEA78();
  v11 = *(v41 - 8);
  v39 = *(v11 + 64);
  v12 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v38 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v34 - v16;
  sub_1E5E1D5BC(v2, v10, type metadata accessor for AppComposer);
  v17 = *(v5 + 80);
  v18 = (v17 + 16) & ~v17;
  v36 = v18 + v6;
  v37 = v17 | 7;
  v19 = swift_allocObject();
  sub_1E5E1FA80(v10, v19 + v18);
  sub_1E5E1D5BC(v3, v8, type metadata accessor for AppComposer);
  v20 = swift_allocObject();
  sub_1E5E1FA80(v8, v20 + v18);
  sub_1E5DF650C(v40, v45);
  v21 = swift_allocObject();
  sub_1E5DF599C(v45, v21 + 16);
  v22 = v44;
  sub_1E65DEA38();
  v23 = v10;
  sub_1E5E1D5BC(v3, v10, type metadata accessor for AppComposer);
  v24 = v11;
  v40 = *(v11 + 16);
  v25 = v38;
  v26 = v41;
  v40(v38, v22, v41);
  v27 = *(v24 + 80);
  v35 = v24;
  v28 = (v36 + v27) & ~v27;
  v29 = swift_allocObject();
  sub_1E5E1FA80(v23, v29 + v18);
  v30 = *(v24 + 32);
  v30(v29 + v28, v25, v26);
  v31 = v42;
  v40(v42, v44, v26);
  v32 = swift_allocObject();
  v30(v32 + ((v27 + 16) & ~v27), v31, v26);
  sub_1E65DB208();
  sub_1E628C244(&qword_1ED077630, MEMORY[0x1E699D110]);
  sub_1E65DE478();
  return (*(v35 + 8))(v44, v26);
}

uint64_t sub_1E628AE00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E628AE20, 0, 0);
}

uint64_t sub_1E628AE20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v2 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 24);
  v5 = AccountService.makeAccountChangedStream.getter();
  v0[4] = v6;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v11 = (v5 + *v5);
  v8 = v5[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_1E628AFA8;

  return v11(boxed_opaque_existential_1);
}

uint64_t sub_1E628AFA8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1E628B0B8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E628AE00(a1, v1 + v5);
}

uint64_t sub_1E628B1B4()
{
  v1 = v0[3];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x1E695C3E0];
  v4 = sub_1E65E6448();

  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077648, &qword_1E65FA320);
  v1[4] = sub_1E5FED46C(&qword_1ED077650, &qword_1ED077648, &qword_1E65FA320);
  __swift_allocate_boxed_opaque_existential_1(v1);
  v0[2] = v4;
  sub_1E65E6438();
  sub_1E628C244(&qword_1ED077658, MEMORY[0x1E6969F08]);
  sub_1E65E69C8();
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E628B350()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1E65EA660;
  *(v2 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v3 = v1 + *(type metadata accessor for AppComposer() + 20);
  v4 = v3 + *(type metadata accessor for AppEnvironment() + 24);
  v5 = AccountService.fetchUserContact.getter();
  v0[4] = v6;
  v10 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  v8[1] = sub_1E628B4C4;

  return v10(v2);
}

uint64_t sub_1E628B4C4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v7 = sub_1E628B65C;
  }

  else
  {
    *(v4 + 56) = a1;
    v7 = sub_1E628B5EC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E628B5EC()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[7];

  return v3(v4);
}

uint64_t sub_1E628B65C()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = v0[1];
  v4 = v0[6];

  return v3();
}

uint64_t sub_1E628B6C8()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E628B330(v0 + v3);
}

uint64_t sub_1E628B794(uint64_t a1)
{
  v1[4] = a1;
  v2 = type metadata accessor for RouteSource(0);
  v1[5] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E628B828, 0, 0);
}

uint64_t sub_1E628B828()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v5 = v3[3];
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v6 = (type metadata accessor for RouteDestination() - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v0 + 56) = v9;
  *(v9 + 16) = xmmword_1E65EA670;
  v10 = v9 + v8;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D5BC(v1, v10 + v6[7], type metadata accessor for RouteSource);
  *(v10 + v6[8]) = MEMORY[0x1E69E7CD0];
  sub_1E6069714(v1);
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  sub_1E600F5B0((v0 + 25));
  v11 = swift_task_alloc();
  *(v0 + 64) = v11;
  *v11 = v0;
  v11[1] = sub_1E628BA1C;

  return RoutingContext.presentDestinations(_:style:priority:)(v9, (v0 + 16), (v0 + 25), v5, v4);
}

uint64_t sub_1E628BA1C()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *v1;
  v4[9] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E628BB80, 0, 0);
  }

  else
  {
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1E628BB80()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_1E628BBE4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFA78C;

  return sub_1E628B794(v0 + 16);
}

uint64_t sub_1E628BC78(uint64_t *a1, uint64_t a2)
{
  v20 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077638, &qword_1E65FA310);
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - v5;
  v7 = sub_1E65DEA78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DE868();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  (*(v8 + 16))(v11, v20, v7);
  sub_1E65DE858();
  type metadata accessor for AppFeature();
  sub_1E628C244(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E628C244(&qword_1ED077640, MEMORY[0x1E699CC70]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v18 = sub_1E65E4F08();
  (*(v3 + 8))(v6, v21);
  (*(v13 + 8))(v16, v12);
  return v18;
}

uint64_t sub_1E628BF7C()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DEA78() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1E628BC78((v0 + v2), v5);
}

uint64_t sub_1E628C048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65DE668();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E628C0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DE668();
  v5 = *(*(v4 - 8) + 24);

  return v5(a1, a2, v4);
}

uint64_t sub_1E628C120()
{
  sub_1E65DEA48();
  sub_1E65DEA68();
  sub_1E65DEA58();
  v0 = sub_1E65DEE18();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1E65DEE08();
}

uint64_t sub_1E628C1AC()
{
  v0 = *(*(sub_1E65DEA78() - 8) + 80);

  return sub_1E628C120();
}

uint64_t sub_1E628C20C(void *a1)
{
  v1 = a1;

  return MEMORY[0x1EEE050C0](v1);
}

uint64_t sub_1E628C244(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E628C28C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ItemContext();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchItemContext();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  sub_1E65E04E8();
  if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1E628C4E4(v5, v12);
    sub_1E628C4E4(v12, v10);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v13 = sub_1E65DCCE8();
      v14 = *(v13 - 8);
      (*(v14 + 32))(a1, v10, v13);
      return (*(v14 + 56))(a1, 0, 1, v13);
    }

    v16 = type metadata accessor for SearchItemContext;
    v17 = v10;
  }

  else
  {
    v16 = type metadata accessor for ItemContext;
    v17 = v5;
  }

  sub_1E61A6420(v17, v16);
  v18 = sub_1E65DCCE8();
  return (*(*(v18 - 8) + 56))(a1, 1, 1, v18);
}

uint64_t sub_1E628C4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchItemContext();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AppComposer.navigationSplitViewBuilder<A, B>(sidebarViewBuilder:detailViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v27[2] = a4;
  v27[3] = a5;
  v27[4] = a3;
  v27[5] = a1;
  v27[6] = a2;
  v27[7] = a8;
  v12 = type metadata accessor for AppComposer();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v27[8] = a4;
  v27[9] = a5;
  v27[10] = a6;
  v27[11] = a7;
  v15 = sub_1E65DF178();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v27 - v21;
  sub_1E5E1DEAC(v27[1], v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);

  sub_1E65DF168();
  swift_getWitnessTable();
  sub_1E5FEE4C8(v20);
  v25 = *(v16 + 8);
  v25(v20, v15);
  sub_1E5FEE4C8(v22);
  return (v25)(v22, v15);
}

uint64_t sub_1E628C7C0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077660, &qword_1E65FA328);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v15 - v5;
  v7 = sub_1E65DF1E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1E65DF1D8();
  type metadata accessor for AppFeature();
  sub_1E628CB0C(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E628CB0C(&qword_1ED077668, MEMORY[0x1E699CF88]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v13 = sub_1E65E4F08();
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
  return v13;
}

uint64_t sub_1E628CA24()
{
  v1 = *(type metadata accessor for AppComposer() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1E628C7C0(v2);
}

uint64_t sub_1E628CA84(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for AppState() + 156));

  return MEMORY[0x1EEE04F38](v1);
}

uint64_t sub_1E628CACC(uint64_t a1)
{
  v2 = sub_1E65DF1C8();
  result = type metadata accessor for AppState();
  *(a1 + *(result + 156)) = v2 & 1;
  return result;
}

uint64_t sub_1E628CB0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E628CB54(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075688, &qword_1E65F1C18);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  v7 = sub_1E65DF158();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1E65DF088();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;

  sub_1E65DF148();
  sub_1E65DF078();
  type metadata accessor for AppFeature();
  sub_1E628CE38(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  sub_1E628CE38(&qword_1EE2D67E8, MEMORY[0x1E699CF48]);
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v15 = sub_1E65E4F08();
  (*(v3 + 8))(v6, v2);
  (*(v10 + 8))(v13, v9);
  return v15;
}

uint64_t sub_1E628CE38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E628CE80()
{
  result = qword_1EE2D67F0;
  if (!qword_1EE2D67F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D67F0);
  }

  return result;
}

uint64_t sub_1E628CED4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a1;
  v28 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  v2 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077670, &qword_1E65FA330);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v25 - v13;
  v15 = sub_1E65D7848();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AppState();
  v21 = *(v20 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v14);
  sub_1E5DFE50C(v10, &qword_1ED071F78, &unk_1E65EA3F0);
  v22 = *(v16 + 48);
  if (v22(v14, 1, v15) == 1)
  {
    sub_1E65D77C8();
    if (v22(v14, 1, v15) != 1)
    {
      sub_1E5DFE50C(v14, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  v23 = *(v20 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  sub_1E65E4C98();
  sub_1E628CE80();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v4, &qword_1ED072808, &qword_1E65EBE00);
  return sub_1E65DF018();
}

uint64_t AppComposer.currentTimeViewBuilder()()
{
  v0 = sub_1E65D76A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = sub_1E65E42C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  sub_1E65D7688();
  sub_1E65E61E8();
  (*(v1 + 16))(v5, v7, v0);
  sub_1E65E42B8();
  (*(v1 + 8))(v7, v0);
  (*(v9 + 16))(v13, v15, v8);
  sub_1E628D79C();
  sub_1E65E3CB8();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_1E628D484@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E65E4688();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E65D76A8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077678, &qword_1E65FA340);
  sub_1E65E3CA8();
  sub_1E65E4678();
  v6 = sub_1E65E4698();
  v8 = v7;
  v10 = v9;
  sub_1E65E4588();
  v11 = sub_1E65E4668();
  v13 = v12;
  v15 = v14;

  sub_1E6012728(v6, v8, v10 & 1);

  sub_1E65E41E8();
  v16 = sub_1E65E4648();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1E6012728(v11, v13, v15 & 1);

  *a1 = v16;
  *(a1 + 8) = v18;
  *(a1 + 16) = v20 & 1;
  *(a1 + 24) = v22;
  return result;
}

uint64_t sub_1E628D64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077678, &qword_1E65FA340);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077680, &qword_1E65FA348);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    sub_1E628D484(&v14);
    result = (*(v5 + 8))(v8, v4);
    v12 = v15;
    v13 = v16;
    *a2 = v14;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E628D79C()
{
  result = qword_1ED0757D0;
  if (!qword_1ED0757D0)
  {
    sub_1E65E42C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0757D0);
  }

  return result;
}

uint64_t sub_1E628D7F4()
{
  sub_1E628D918();
  sub_1E628D96C();
  v0 = 1;
  if ((sub_1E65D7FF8() & 1) == 0 && (sub_1E65D7FF8() & 1) == 0)
  {
    v0 = 2;
    if ((sub_1E65D7FF8() & 1) == 0)
    {
      if (sub_1E65D7FF8())
      {
        return 3;
      }

      else
      {
        return 4;
      }
    }
  }

  return v0;
}

unint64_t sub_1E628D918()
{
  result = qword_1EE2D7120;
  if (!qword_1EE2D7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7120);
  }

  return result;
}

unint64_t sub_1E628D96C()
{
  result = qword_1EE2D7118;
  if (!qword_1EE2D7118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7118);
  }

  return result;
}

uint64_t sub_1E628D9C0@<X0>(uint64_t a1@<X8>)
{
  v127 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v126 = &v111 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v125 = &v111 - v7;
  v124 = sub_1E65DAC98();
  v123 = *(v124 - 8);
  v8 = *(v123 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v119 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1E65E3328();
  v10 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v118 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_1E65DA0B8();
  v120 = *(v121 - 8);
  v12 = *(v120 + 64);
  v13 = MEMORY[0x1EEE9AC00](v121);
  v117 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v116 = &v111 - v15;
  v115 = sub_1E65D9D58();
  v113 = *(v115 - 8);
  v16 = *(v113 + 64);
  v17 = MEMORY[0x1EEE9AC00](v115);
  v114 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v111 - v19;
  v129 = sub_1E65D8BB8();
  v20 = *(*(v129 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v129);
  v128 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v145 = &v111 - v23;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077688, &qword_1E65FA350);
  v24 = *(*(v136 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v136);
  v135 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v144 = &v111 - v27;
  v28 = sub_1E65D74E8();
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v143 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D0, &qword_1E65F1598);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v111 - v34;
  v36 = sub_1E65D8818();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v137 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v134 = &v111 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v133 = &v111 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v132 = &v111 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v131 = &v111 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v111 - v49;
  v51 = sub_1E65D8478();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v111 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077690, &qword_1E65FA358);
  v57 = *(*(v56 - 8) + 64);
  v58 = MEMORY[0x1EEE9AC00](v56 - 8);
  v142 = &v111 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v111 - v60;
  v140 = v1;
  sub_1E65D9778();
  sub_1E65D87F8();
  v62 = *(v37 + 8);
  v138 = v37 + 8;
  v139 = v36;
  v130 = v62;
  v62(v50, v36);
  if ((*(v52 + 48))(v35, 1, v51) == 1)
  {
    sub_1E5DFE50C(v35, &qword_1ED0752D0, &qword_1E65F1598);
    v63 = 1;
  }

  else
  {
    (*(v52 + 32))(v55, v35, v51);
    sub_1E65D8468();
    sub_1E65D8448();
    sub_1E65E3338();
    (*(v52 + 8))(v55, v51);
    v63 = 0;
  }

  v64 = sub_1E65E3348();
  (*(*(v64 - 8) + 56))(v61, v63, 1, v64);
  v65 = v145;
  sub_1E65D9768();
  v66 = v65;
  v67 = v128;
  sub_1E628E768(v66, v128);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v141 = v61;
  if (EnumCaseMultiPayload == 1)
  {
    v69 = v120;
    v70 = v116;
    v71 = v121;
    (*(v120 + 32))(v116, v67, v121);
    v72 = v117;
    (*(v69 + 16))(v117, v70, v71);
    v73 = v119;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65E3318();
    (*(v123 + 8))(v73, v124);
    sub_1E65DA0A8();
    sub_1E628E7CC();
    v74 = v135;
    sub_1E65DC438();
    v75 = *(v69 + 8);
    v76 = v72;
    v77 = v141;
    v75(v76, v71);
    v75(v70, v71);
  }

  else
  {
    v77 = v61;
    v78 = v113;
    v79 = v112;
    v80 = v67;
    v81 = v115;
    (*(v113 + 32))(v112, v80, v115);
    v82 = v114;
    (*(v78 + 16))(v114, v79, v81);
    v74 = v135;
    sub_1E6134680(v82, v135);
    (*(v78 + 8))(v79, v81);
  }

  sub_1E625B0B0(v145);
  swift_storeEnumTagMultiPayload();
  sub_1E628E824(v74, v144);
  v83 = v131;
  sub_1E65D9778();
  v145 = sub_1E65D87A8();
  v136 = v84;
  v85 = v83;
  v86 = v139;
  v87 = v130;
  v130(v85, v139);
  v88 = v132;
  sub_1E65D9778();
  v135 = sub_1E65D87E8();
  v131 = v89;
  v87(v88, v86);
  sub_1E628E894(v77, v142);
  v90 = v133;
  sub_1E65D9778();
  sub_1E65D87B8();
  v87(v90, v86);
  v91 = v134;
  sub_1E65D9778();
  v92 = sub_1E65D8808();
  v132 = v93;
  v133 = v92;
  v87(v91, v86);
  v94 = v137;
  sub_1E65D9778();
  v95 = sub_1E65D87C8();
  v87(v94, v86);
  v96 = 1 << *(v95 + 32);
  v97 = -1;
  if (v96 < 64)
  {
    v97 = ~(-1 << v96);
  }

  v98 = v97 & *(v95 + 56);
  v99 = (v96 + 63) >> 6;

  v100 = 0;
  v101 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v102 = v100;
    if (v98)
    {
LABEL_14:
      v103 = *(v95 + 48) + 24 * (__clz(__rbit64(v98)) | (v100 << 6));
      v104 = *(v103 + 16);
      v98 &= v98 - 1;
      v147 = *v103;
      v148 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077030, &qword_1E65F92F8);
      sub_1E65D7FB8();
      switch(v146)
      {
        case 0:
        case 2:
        case 9:
        case 12:
        case 13:
          continue;
        case 1:
          LODWORD(v140) = 0;
          goto LABEL_25;
        case 3:
          v105 = 2;
          goto LABEL_24;
        case 4:
          v105 = 1;
          goto LABEL_24;
        case 5:
          v105 = 3;
          goto LABEL_24;
        case 6:
          v105 = 4;
          goto LABEL_24;
        case 7:
          v105 = 5;
          goto LABEL_24;
        case 8:
          v105 = 6;
          goto LABEL_24;
        case 10:
          v105 = 7;
          goto LABEL_24;
        case 11:
          v105 = 8;
LABEL_24:
          LODWORD(v140) = v105;
LABEL_25:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_1E64F6D20(0, *(v101 + 2) + 1, 1, v101);
          }

          v107 = *(v101 + 2);
          v106 = *(v101 + 3);
          v108 = v107 + 1;
          if (v107 >= v106 >> 1)
          {
            v139 = v107 + 1;
            v109 = sub_1E64F6D20((v106 > 1), v107 + 1, 1, v101);
            v108 = v139;
            v101 = v109;
          }

          *(v101 + 2) = v108;
          v101[v107 + 32] = v140;
          continue;
        default:
          goto LABEL_32;
      }
    }

    break;
  }

  while (1)
  {
    v100 = v102 + 1;
    if (__OFADD__(v102, 1))
    {
      __break(1u);
LABEL_32:
      JUMPOUT(0);
    }

    if (v100 >= v99)
    {
      break;
    }

    v98 = *(v95 + 56 + 8 * v100);
    ++v102;
    if (v98)
    {
      goto LABEL_14;
    }
  }

  sub_1E600CC24(v101);

  sub_1E65E3238();
  return sub_1E5DFE50C(v141, &unk_1ED077690, &qword_1E65FA358);
}

uint64_t sub_1E628E768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D8BB8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E628E7CC()
{
  result = qword_1ED075940;
  if (!qword_1ED075940)
  {
    sub_1E65E3328();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED075940);
  }

  return result;
}

uint64_t sub_1E628E824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077688, &qword_1E65FA350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E628E894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077690, &qword_1E65FA358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E628E904@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v50 = sub_1E65DB948();
  v1 = *(v50 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1E65DC158();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DB9F8();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v53 = &v44 - v13;
  v14 = sub_1E65E07B8();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v44 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v44 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = sub_1E65DAE38();
  if (v25 == sub_1E65DAE38())
  {
    sub_1E65E0778();
    v48 = v24;
    sub_1E65E0768();
    v26 = *MEMORY[0x1E699D400];
    v27 = *(v5 + 104);
    v28 = v49;
    v27(v8, v26, v49);
    v29 = *(v1 + 104);
    v30 = v50;
    v29(v4, *MEMORY[0x1E699D178], v50);
    sub_1E65DB9E8();
    v27(v8, v26, v28);
    v29(v4, *MEMORY[0x1E699D170], v30);
    sub_1E65DB9E8();
  }

  else
  {
    v31 = v8;
    v48 = v4;
    v32 = v18;
    v34 = v49;
    v33 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0678();
    v35 = sub_1E65E07C8();
    v46 = v21;
    sub_1E65E0768();
    v47 = v32;
    sub_1E65E0768();
    if (sub_1E65E4B48())
    {
      sub_1E65DC368();
    }

    v45 = v35 & 1;
    v36 = 0x4054000000000000;
    if (v35)
    {
      v36 = 0;
    }

    v44 = v36;
    v37 = *MEMORY[0x1E699D3E8];
    v38 = *(v5 + 104);
    v39 = v8;
    v40 = v34;
    v38(v39, v37, v34);
    v41 = *(v1 + 104);
    v42 = v48;
    v41(v48, *MEMORY[0x1E699D178], v33);
    sub_1E65DB9E8();
    v38(v31, v37, v40);
    v41(v42, *MEMORY[0x1E699D180], v33);
    sub_1E65DB9E8();
  }

  return sub_1E65DBC18();
}

char *sub_1E628EE00@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = *(type metadata accessor for RouteDetourNavigationControllerRoutingContext() + 20);
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
  result = sub_1E625E57C(a2 + v8, 0, v11, a1, v9, v10);
  *a4 = result;
  return result;
}

uint64_t sub_1E628EE88(uint64_t a1, char a2)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = type metadata accessor for RouteDetourNavigationControllerRoutingContext();
  *(v3 + 32) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 56) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E628EF60, v7, v6);
}

uint64_t sub_1E628EF60()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    v9 = *(v0 + 64);
    v10 = *(v0 + 16);
    v11 = *(v7 + 20);
    sub_1E62CC108(v8 + v11, v5 + v11, type metadata accessor for AppComposer);
    v12 = *(v8 + *(v7 + 24));
    swift_unknownObjectWeakInit();
    v13 = swift_unknownObjectWeakAssign();
    *(v5 + *(v7 + 24)) = v12;
    sub_1E62CC108(v13, v6, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    swift_unknownObjectRetain();
    v14 = sub_1E6290E10(v8 + v11, 0, v6, v10);
    sub_1E62BC770(v6, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    [v4 pushViewController:v14 animated:v9];

    sub_1E62BC770(v5, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  }

  else
  {
    v16 = *(v0 + 40);
    v17 = *(v0 + 48);
    sub_1E5FAA54C();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1E628F138(uint64_t a1, char a2)
{
  *(v3 + 144) = a2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v2;
  v4 = type metadata accessor for RouteDetourNavigationControllerRoutingContext();
  *(v3 + 80) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v7 = type metadata accessor for RouteDestination();
  *(v3 + 112) = v7;
  v8 = *(v7 - 8);
  *(v3 + 120) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 136) = sub_1E65E6048();
  v11 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E628F2A4, v11, v10);
}

uint64_t sub_1E628F2A4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(v0 + 112);
    v6 = *(v0 + 120);
    v7 = *(v0 + 104);
    sub_1E5DFD1CC(*(v0 + 64), v7, &unk_1ED072040, &qword_1E65F0860);
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v8 = *(v0 + 144);
      sub_1E5DFE50C(*(v0 + 104), &unk_1ED072040, &qword_1E65F0860);
      v9 = [v4 popToRootViewControllerAnimated_];

LABEL_20:
      v39 = *(v0 + 128);
      v40 = *(v0 + 96);
      v41 = *(v0 + 104);
      v42 = *(v0 + 88);

      v15 = *(v0 + 8);
      goto LABEL_21;
    }

    v16 = *(v0 + 128);
    v17 = *(v0 + 96);
    v19 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 72);
    sub_1E5E1E528(*(v0 + 104), v16, type metadata accessor for RouteDestination);
    v21 = *(v19 + 20);
    sub_1E62CC108(v20 + v21, v17 + v21, type metadata accessor for AppComposer);
    v22 = *(v20 + *(v19 + 24));
    swift_unknownObjectWeakInit();
    v23 = swift_unknownObjectWeakAssign();
    *(v17 + *(v19 + 24)) = v22;
    sub_1E62CC108(v23, v18, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    swift_unknownObjectRetain();
    v24 = sub_1E6290E10(v20 + v21, 0, v18, v16);
    sub_1E62BC770(v18, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    v25 = [v4 viewControllers];
    sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
    v26 = sub_1E65E5F18();

    if (v26 >> 62)
    {
      result = sub_1E65E67C8();
      if (result)
      {
        goto LABEL_7;
      }
    }

    else
    {
      result = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_7:
        if ((v26 & 0xC000000000000001) != 0)
        {
          v28 = MEMORY[0x1E694E2D0](0, v26);
        }

        else
        {
          if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v28 = *(v26 + 32);
        }

        v29 = v28;

        goto LABEL_13;
      }
    }

    v29 = 0;
LABEL_13:
    *(v0 + 48) = v29;
    *(v0 + 56) = v24;
    v43 = MEMORY[0x1E69E7CC0];
    v30 = v24;
    for (i = 0; i != 2; ++i)
    {
      v32 = *(v0 + 48 + 8 * i);
      if (v32)
      {
        v33 = v32;
        MEMORY[0x1E694D8F0]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1E65E5F68();
        }

        sub_1E65E5FA8();
      }
    }

    v35 = *(v0 + 128);
    v36 = *(v0 + 96);
    v37 = *(v0 + 144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072140, &qword_1E65EA890);
    swift_arrayDestroy();
    v38 = sub_1E65E5EF8();

    [v4 setViewControllers:v38 animated:v37];

    sub_1E62BC770(v36, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    sub_1E62BC770(v35, type metadata accessor for RouteDestination);
    goto LABEL_20;
  }

  v10 = *(v0 + 128);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 88);
  sub_1E5FAA54C();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();

  v15 = *(v0 + 8);
LABEL_21:

  return v15();
}

uint64_t sub_1E628F720(uint64_t a1, char a2)
{
  *(v3 + 96) = a2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  v4 = type metadata accessor for RouteDetourNavigationControllerRoutingContext();
  *(v3 + 72) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  sub_1E65E6058();
  *(v3 + 88) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E628F7EC, v7, v6);
}

uint64_t sub_1E628F7EC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 96);
    v8 = *(v0 + 56);
    v9 = *(v0 + 64);
    sub_1E62CC108(v9 + *(v6 + 20), v5 + *(v6 + 20), type metadata accessor for AppComposer);
    v10 = *(v9 + *(v6 + 24));
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v5 + *(v6 + 24)) = v10;
    *(v0 + 40) = v6;
    *(v0 + 48) = &off_1F5FB76B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    sub_1E62CC108(v5, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    v12 = swift_task_alloc();
    *(v12 + 16) = v9;
    *(v12 + 24) = v0 + 16;
    swift_unknownObjectRetain();
    sub_1E5F9F34C(sub_1E62CC3CC, v12, v8);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
    v13 = sub_1E65E5EF8();

    [v4 setViewControllers:v13 animated:v7];

    sub_1E62BC770(v5, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  }

  else
  {
    v15 = *(v0 + 80);
    sub_1E5FAA54C();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E628FA1C(uint64_t a1, uint64_t *a2, char a3)
{
  *(v4 + 112) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = type metadata accessor for RouteDetourViewControllerRoutingContext();
  *(v4 + 32) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v4 + 48) = v8;
  *(v4 + 56) = v9;
  *(v4 + 113) = *(a2 + 8);
  sub_1E65E6058();
  *(v4 + 64) = sub_1E65E6048();
  v11 = sub_1E65E5FC8();
  *(v4 + 72) = v11;
  *(v4 + 80) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1E628FB04, v11, v10);
}

uint64_t sub_1E628FB04()
{
  v1 = *(v0 + 24);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = *(v0 + 113);
    v5 = *(v0 + 48);
    v6 = *(v0 + 56);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 24);
    v34 = *(v0 + 16);
    v10 = type metadata accessor for RouteDetourNavigationControllerRoutingContext();
    v11 = *(v10 + 20);
    sub_1E62CC108(v9 + v11, v5 + *(v8 + 20), type metadata accessor for AppComposer);
    v12 = *(v9 + *(v10 + 24));
    swift_unknownObjectWeakInit();
    v13 = swift_unknownObjectWeakAssign();
    *(v5 + *(v8 + 24)) = v12;
    sub_1E62CC108(v13, v7, type metadata accessor for RouteDetourViewControllerRoutingContext);
    swift_unknownObjectRetain();
    v14 = sub_1E629F014(v9 + v11, 0, v7, v34);
    sub_1E62BC770(v7, type metadata accessor for RouteDetourViewControllerRoutingContext);
    v15 = sub_1E61AAA48(v14);
    *(v0 + 96) = v15;

    v16 = [v15 presentationController];
    if (v16)
    {
      v17 = v16;
      [v16 setDelegate_];
    }

    ObjectType = swift_getObjectType();
    v19 = swift_conformsToProtocol2();
    if (v19)
    {
      v20 = v19;
      swift_getObjectType();
      v21 = swift_conformsToProtocol2();
      if (v21)
      {
        if (v15)
        {
          v22 = v21;
          v23 = *(MEMORY[0x1E69CD6C0] + 4);
          v24 = swift_task_alloc();
          *(v0 + 104) = v24;
          *v24 = v0;
          v24[1] = sub_1E628FE4C;

          return MEMORY[0x1EEE37958](v15, v22, 1, ObjectType, v20);
        }
      }
    }

    v25 = *(v0 + 64);
    v26 = *(v0 + 112);

    [v3 presentViewController:v15 animated:v26 completion:0];

    v27 = *(v0 + 40);
    sub_1E62BC770(*(v0 + 48), type metadata accessor for RouteDetourViewControllerRoutingContext);

    v28 = *(v0 + 8);
  }

  else
  {
    v29 = *(v0 + 64);
    v30 = *(v0 + 40);
    v31 = *(v0 + 48);

    sub_1E5FAA54C();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();

    v28 = *(v0 + 8);
  }

  return v28();
}

uint64_t sub_1E628FE4C()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E628FF6C, v4, v3);
}

uint64_t sub_1E628FF6C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];

  v4 = v0[5];
  sub_1E62BC770(v0[6], type metadata accessor for RouteDetourViewControllerRoutingContext);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E629000C(uint64_t a1, uint64_t *a2, char a3)
{
  *(v4 + 112) = a3;
  *(v4 + 56) = a1;
  *(v4 + 64) = v3;
  v6 = type metadata accessor for RouteDetourNavigationControllerRoutingContext();
  *(v4 + 72) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v4 + 80) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  *(v4 + 88) = v9;
  *(v4 + 96) = v10;
  *(v4 + 113) = *(a2 + 8);
  sub_1E65E6058();
  *(v4 + 104) = sub_1E65E6048();
  v12 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6290120, v12, v11);
}

uint64_t sub_1E6290120()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v30 = 0;
    swift_willThrow();
LABEL_11:
    v36 = *(v0 + 80);
    v35 = *(v0 + 88);

    v29 = *(v0 + 8);
    goto LABEL_12;
  }

  v4 = Strong;
  v5 = *(v0 + 56);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v31 = *(v0 + 88);
    v32 = type metadata accessor for RouteDestination();
    (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
    sub_1E5DFE50C(v31, &unk_1ED072040, &qword_1E65F0860);
    sub_1E5FAA54C();
    swift_allocError();
    v34 = 3;
LABEL_10:
    *v33 = v34;
    swift_willThrow();

    goto LABEL_11;
  }

  v7 = *(v0 + 113);
  v8 = v6 - 1;
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  v11 = type metadata accessor for RouteDestination();
  v12 = *(v11 - 8);
  sub_1E62CC108(v5 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8, v9, type metadata accessor for RouteDestination);
  (*(v12 + 56))(v9, 0, 1, v11);
  sub_1E5DFE50C(v9, &unk_1ED072040, &qword_1E65F0860);
  LOBYTE(v38) = v7;
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
  v14 = sub_1E61AAA48(v13);

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    sub_1E5FAA54C();
    swift_allocError();
    v34 = 6;
    goto LABEL_10;
  }

  v16 = v15;
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 56);
  v20 = *(v0 + 64);
  sub_1E62CC108(v20 + *(v18 + 20), v17 + *(v18 + 20), type metadata accessor for AppComposer);
  v21 = *(v20 + *(v18 + 24));
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *(v17 + *(v18 + 24)) = v21;
  *(v0 + 40) = v18;
  *(v0 + 48) = &off_1F5FB76B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_1E62CC108(v17, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  v23 = swift_task_alloc();
  *(v23 + 16) = v20;
  *(v23 + 24) = v0 + 16;
  swift_unknownObjectRetain();
  sub_1E5F9F34C(sub_1E6290DF0, v23, v19);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v24 = sub_1E65E5EF8();

  [v16 setViewControllers:v24 animated:0];

  v25 = [v16 presentationController];
  if (v25)
  {
    v26 = v25;
    [v25 setDelegate_];
  }

  v28 = *(v0 + 80);
  v27 = *(v0 + 88);
  [v4 presentViewController:v16 animated:*(v0 + 112) completion:0];

  sub_1E62BC770(v28, type metadata accessor for RouteDetourNavigationControllerRoutingContext);

  v29 = *(v0 + 8);
LABEL_12:

  return v29();
}

uint64_t sub_1E629058C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  v2 = [Strong viewControllers];

  sub_1E5DEF738(0, &qword_1EE2D4630, 0x1E69DD258);
  v3 = sub_1E65E5F18();

  if (v3 >> 62)
  {
    v4 = sub_1E65E67C8();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4;
}

uint64_t sub_1E6290648()
{
  type metadata accessor for NullTaskScheduler();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_1E62CC0C0(&qword_1ED077E70, type metadata accessor for NullTaskScheduler);
  return v0;
}

uint64_t sub_1E62906D4(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E628EE88(a1, a2);
}

uint64_t sub_1E6290778(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 32) = a1;
  sub_1E65E6058();
  *(v2 + 24) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6290814, v4, v3);
}

uint64_t sub_1E6290814()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
  }

  else
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E62908EC(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E628F138(a1, a2);
}

uint64_t sub_1E6290990(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFE6BC;

  return sub_1E628F720(a1, a2);
}

uint64_t sub_1E6290A34(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6290A58, 0, 0);
}

uint64_t sub_1E6290A58()
{
  v1 = v0[2];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[3] = Strong;
  if (Strong)
  {
    sub_1E65E6058();
    v0[4] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6290B64, v4, v3);
  }

  else
  {
    sub_1E5FAA54C();
    swift_allocError();
    *v5 = 0;
    swift_willThrow();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1E6290B64()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 40);

  [v2 dismissViewControllerAnimated:v3 completion:0];

  return MEMORY[0x1EEE6DFA0](sub_1E6290BE8, 0, 0);
}

uint64_t sub_1E6290BE8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6290C4C(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E628FA1C(a1, a2, a3);
}

uint64_t sub_1E6290CF8(uint64_t a1, uint64_t *a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E629000C(a1, a2, a3);
}

uint64_t type metadata accessor for RouteDetourNavigationControllerRoutingContext()
{
  result = qword_1ED077E80;
  if (!qword_1ED077E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1E6290E10(uint64_t a1, void *a2, uint64_t (*a3)(), uint64_t a4)
{
  *&v1861 = a4;
  v1860 = a3;
  v1829 = a2;
  *&v1862 = a1;
  v4 = sub_1E65DAEB8();
  v1624 = *(v4 - 8);
  v1625 = v4;
  v5 = *(v1624 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v1623 = &v1597 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D90, &unk_1E65FA3D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v1621 = &v1597 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v1622 = &v1597 - v11;
  v12 = sub_1E65DCA88();
  v1647 = *(v12 - 8);
  v1648 = v12;
  v13 = *(v1647 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v1777 = &v1597 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E63B8();
  v1645 = *(v15 - 8);
  v1646 = v15;
  v16 = *(v1645 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v1644 = &v1597 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1641 = sub_1E65E6398();
  v18 = *(*(v1641 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1641);
  v1643 = &v1597 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65E4F68();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v1640 = &v1597 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1769 = type metadata accessor for MetricService();
  Description = v1769[-1].Description;
  v23 = Description[8];
  MEMORY[0x1EEE9AC00](v1769);
  v1768 = &v1597 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65DD0A8();
  v1637 = *(v25 - 8);
  v1638 = v25;
  v26 = *(v1637 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v1767 = &v1597 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1601 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  v28 = *(*(v1601 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1601);
  v1600 = &v1597 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770A8, &unk_1E65FA3E0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v1611 = &v1597 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v1610 = &v1597 - v34;
  v1756 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v35 = *(*(v1756 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1756);
  v1780 = &v1597 - v36;
  v1776 = sub_1E65E3F88();
  v1775 = *(v1776 - 8);
  v37 = *(v1775 + 64);
  MEMORY[0x1EEE9AC00](v1776);
  v1773 = &v1597 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1774 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v1772 = *(v1774 - 8);
  v39 = *(v1772 + 64);
  MEMORY[0x1EEE9AC00](v1774);
  v1771 = &v1597 - v40;
  v1778 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776C0, &qword_1E65F9648);
  v41 = *(*(v1778 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1778);
  v1779 = &v1597 - v42;
  v1760 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B0, &unk_1E65FA3F0);
  v1759 = *(v1760 - 8);
  v43 = *(v1759 + 64);
  v44 = MEMORY[0x1EEE9AC00](v1760);
  v1758 = &v1597 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v1755 = &v1597 - v46;
  v1764 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776D0, &qword_1E65F9650);
  v47 = *(*(v1764 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v1764);
  v1757 = &v1597 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v1840 = (&v1597 - v50);
  v1754 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B8, &unk_1E65FA400);
  v51 = *(*(v1754 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1754);
  v1841 = &v1597 - v52;
  v1823 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v1765 = *(v1823 - 8);
  v53 = *(v1765 + 64);
  v54 = MEMORY[0x1EEE9AC00](v1823);
  v1824 = &v1597 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1766 = v55;
  MEMORY[0x1EEE9AC00](v54);
  v1770 = (&v1597 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C0, &unk_1E65FA410);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x1EEE9AC00](v57 - 8);
  v1753 = &v1597 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v1786 = &v1597 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v1752 = &v1597 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v1785 = &v1597 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8);
  v1612 = &v1597 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v1744 = &v1597 - v70;
  v1746 = sub_1E65D7218();
  v71 = *(*(v1746 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1746);
  v1745 = &v1597 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C8, &unk_1E65FA420);
  v73 = *(*(v1616 - 8) + 64);
  v74 = MEMORY[0x1EEE9AC00](v1616);
  v1619 = &v1597 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v1618 = &v1597 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v1615 = &v1597 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776F0, &qword_1E65F9658);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x1EEE9AC00](v79 - 8);
  v1617 = &v1597 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v1620 = &v1597 - v83;
  v1856 = sub_1E65DEEA8();
  v1858 = *(v1856 - 1);
  v84 = *(v1858 + 64);
  MEMORY[0x1EEE9AC00](v1856);
  *&v1857 = &v1597 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1749 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  v86 = *(*(v1749 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1749);
  v1750 = &v1597 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v1631 = *(v88 - 8);
  v1632 = v88;
  v89 = *(v1631 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v1630 = &v1597 - v90;
  v1635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  v91 = *(*(v1635 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1635);
  v1634 = &v1597 - v92;
  v1748 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v93 = *(*(v1748 - 8) + 64);
  v94 = MEMORY[0x1EEE9AC00](v1748);
  v1639 = &v1597 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1EEE9AC00](v94);
  v1633 = &v1597 - v97;
  MEMORY[0x1EEE9AC00](v96);
  v1636 = &v1597 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v1603 = *(v99 - 8);
  v1604 = v99;
  v100 = *(v1603 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v1602 = &v1597 - v101;
  v1607 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  v102 = *(*(v1607 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1607);
  v1606 = &v1597 - v103;
  v1747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v104 = *(*(v1747 - 8) + 64);
  v105 = MEMORY[0x1EEE9AC00](v1747);
  v1609 = &v1597 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x1EEE9AC00](v105);
  v1605 = &v1597 - v108;
  MEMORY[0x1EEE9AC00](v107);
  v1608 = &v1597 - v109;
  v1734 = sub_1E65D9048();
  v1733 = *(v1734 - 8);
  v110 = *(v1733 + 64);
  MEMORY[0x1EEE9AC00](v1734);
  v1731 = &v1597 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1732 = sub_1E65E58D8();
  v1730 = *(v1732 - 8);
  v112 = *(v1730 + 64);
  MEMORY[0x1EEE9AC00](v1732);
  v1729 = &v1597 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1728 = sub_1E65DA308();
  v1727 = *(v1728 - 8);
  v114 = *(v1727 + 64);
  MEMORY[0x1EEE9AC00](v1728);
  v1724 = &v1597 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1725 = sub_1E65E56B8();
  v1722 = *(v1725 - 8);
  v116 = *(v1722 + 64);
  MEMORY[0x1EEE9AC00](v1725);
  v1721 = &v1597 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1763 = sub_1E65D7EB8();
  v1762 = *(v1763 - 8);
  v118 = *(v1762 + 64);
  v119 = MEMORY[0x1EEE9AC00](v1763);
  v1650 = &v1597 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1599 = v120;
  MEMORY[0x1EEE9AC00](v119);
  v1782 = &v1597 - v121;
  v1822 = sub_1E65E55E8();
  v1783 = *(v1822 - 8);
  v122 = *(v1783 + 64);
  v123 = MEMORY[0x1EEE9AC00](v1822);
  v1649 = &v1597 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1598 = v124;
  MEMORY[0x1EEE9AC00](v123);
  v1818 = &v1597 - v125;
  v1709 = type metadata accessor for PlaylistType();
  v126 = *(*(v1709 - 8) + 64);
  v127 = MEMORY[0x1EEE9AC00](v1709);
  v1629 = (&v1597 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = MEMORY[0x1EEE9AC00](v127);
  v1597 = (&v1597 - v130);
  MEMORY[0x1EEE9AC00](v129);
  v1741 = &v1597 - v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v133 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132 - 8);
  v1740 = &v1597 - v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v136 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135 - 8);
  v1739 = &v1597 - v137;
  v1738 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077740, &qword_1E65F9660);
  v1737 = *(v1738 - 8);
  v138 = *(v1737 + 64);
  MEMORY[0x1EEE9AC00](v1738);
  v1736 = &v1597 - v139;
  v1707 = sub_1E65DDE68();
  v1703 = *(v1707 - 8);
  v140 = *(v1703 + 64);
  MEMORY[0x1EEE9AC00](v1707);
  v1704 = &v1597 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1735 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D0, &unk_1E65FA480);
  v142 = *(*(v1735 - 8) + 64);
  v143 = MEMORY[0x1EEE9AC00](v1735);
  v1742 = &v1597 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v143);
  v1743 = &v1597 - v145;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v1705 = *(v146 - 8);
  v147 = *(v1705 + 64);
  v148 = MEMORY[0x1EEE9AC00](v146 - 8);
  v1814 = &v1597 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1706 = v149;
  MEMORY[0x1EEE9AC00](v148);
  v1817 = &v1597 - v150;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v1701 = *(v151 - 8);
  v152 = *(v1701 + 64);
  v153 = MEMORY[0x1EEE9AC00](v151 - 8);
  v1813 = &v1597 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1702 = v154;
  MEMORY[0x1EEE9AC00](v153);
  v1816 = &v1597 - v155;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v1698 = *(v156 - 8);
  v157 = *(v1698 + 64);
  v158 = MEMORY[0x1EEE9AC00](v156 - 8);
  v1710 = &v1597 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = MEMORY[0x1EEE9AC00](v158);
  v1812 = &v1597 - v161;
  v1815 = v162;
  MEMORY[0x1EEE9AC00](v160);
  v1835 = &v1597 - v163;
  v1692 = sub_1E65E52B8();
  v164 = *(*(v1692 - 8) + 64);
  v165 = MEMORY[0x1EEE9AC00](v1692);
  v1696 = (&v1597 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v165);
  v1715 = &v1597 - v167;
  v1697 = sub_1E65E5528();
  v1695 = *(v1697 - 8);
  v168 = *(v1695 + 64);
  MEMORY[0x1EEE9AC00](v1697);
  v1693 = &v1597 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1811 = sub_1E65E57D8();
  v1691 = *(v1811 - 8);
  v170 = *(v1691 + 64);
  MEMORY[0x1EEE9AC00](v1811);
  v1689 = &v1597 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v173 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v172 - 8);
  v1694 = &v1597 - v174;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v176 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175 - 8);
  v1690 = &v1597 - v177;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v179 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178 - 8);
  v1687 = &v1597 - v180;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v1683 = *(v181 - 8);
  v182 = *(v1683 + 64);
  v183 = MEMORY[0x1EEE9AC00](v181 - 8);
  v1685 = &v1597 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1684 = v184;
  MEMORY[0x1EEE9AC00](v183);
  v1834 = &v1597 - v185;
  v1688 = sub_1E65D7848();
  v1686 = *(v1688 - 8);
  v186 = *(v1686 + 64);
  MEMORY[0x1EEE9AC00](v1688);
  v1838 = (&v1597 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = sub_1E65E5C28();
  v189 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188 - 8);
  v1819 = &v1597 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1781 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v1832 = *(v1781 - 8);
  v191 = *(v1832 + 8);
  v192 = MEMORY[0x1EEE9AC00](v1781);
  v1613 = &v1597 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = MEMORY[0x1EEE9AC00](v192);
  v1614 = &v1597 - v195;
  v196 = MEMORY[0x1EEE9AC00](v194);
  v1809 = &v1597 - v197;
  MEMORY[0x1EEE9AC00](v196);
  v1810 = &v1597 - v198;
  v1717 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077790, &qword_1E65F9668);
  v1714 = *(v1717 - 8);
  v199 = *(v1714 + 64);
  MEMORY[0x1EEE9AC00](v1717);
  v1711 = &v1597 - v200;
  v1719 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E0, &unk_1E65FA4C0);
  v201 = *(*(v1719 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1719);
  v1718 = &v1597 - v202;
  v1723 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777A0, &qword_1E65F9670);
  v203 = *(*(v1723 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1723);
  v1726 = &v1597 - v204;
  v1678 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E8, &unk_1E65FA4D0);
  v1675 = *(v1678 - 8);
  v205 = *(v1675 + 64);
  MEMORY[0x1EEE9AC00](v1678);
  v1674 = &v1597 - v206;
  v1682 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777B0, &qword_1E65F9678);
  v1680 = *(v1682 - 8);
  v207 = *(v1680 + 64);
  MEMORY[0x1EEE9AC00](v1682);
  v1677 = &v1597 - v208;
  v1681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F0, &unk_1E65FA4E0);
  v1679 = *(v1681 - 8);
  v209 = *(v1679 + 64);
  MEMORY[0x1EEE9AC00](v1681);
  v1676 = &v1597 - v210;
  v1673 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v1672 = *(v1673 - 8);
  v211 = *(v1672 + 64);
  MEMORY[0x1EEE9AC00](v1673);
  v1671 = &v1597 - v212;
  v1720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F8, &unk_1E65FA4F0);
  v213 = *(*(v1720 - 8) + 64);
  v214 = MEMORY[0x1EEE9AC00](v1720);
  v1712 = &v1597 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = MEMORY[0x1EEE9AC00](v214);
  v1713 = &v1597 - v217;
  MEMORY[0x1EEE9AC00](v216);
  v1716 = &v1597 - v218;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777D0, &qword_1E65F9680);
  v220 = *(*(v219 - 8) + 64);
  v221 = MEMORY[0x1EEE9AC00](v219 - 8);
  v1784 = &v1597 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v221);
  v1751 = &v1597 - v223;
  v1669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077100, &unk_1E65FA500);
  v224 = *(*(v1669 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1669);
  v1668 = &v1597 - v225;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777E0, &qword_1E65F9688);
  v227 = *(*(v226 - 8) + 64);
  v228 = MEMORY[0x1EEE9AC00](v226 - 8);
  v1798 = &v1597 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v228);
  v1801 = &v1597 - v230;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077108, &unk_1E65FA510);
  v232 = *(*(v231 - 8) + 64);
  v233 = MEMORY[0x1EEE9AC00](v231 - 8);
  v1667 = &v1597 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v233);
  v1666 = &v1597 - v235;
  v1665 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777F0, &qword_1E65F9690);
  v236 = *(*(v1665 - 8) + 64);
  v237 = MEMORY[0x1EEE9AC00](v1665);
  v1795 = &v1597 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v237);
  v1670 = &v1597 - v239;
  v1848 = sub_1E65D74E8();
  v1849 = *(v1848 - 1);
  v240 = *(v1849 + 64);
  v241 = MEMORY[0x1EEE9AC00](v1848);
  v1787 = &v1597 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = MEMORY[0x1EEE9AC00](v241);
  v1836 = &v1597 - v243;
  v244 = MEMORY[0x1EEE9AC00](v242);
  v1805 = &v1597 - v245;
  v246 = MEMORY[0x1EEE9AC00](v244);
  v1804 = &v1597 - v247;
  MEMORY[0x1EEE9AC00](v246);
  v1794 = &v1597 - v248;
  v1808 = sub_1E65E1518();
  v1807 = *(v1808 - 8);
  v249 = *(v1807 + 64);
  MEMORY[0x1EEE9AC00](v1808);
  v1806 = &v1597 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1847 = sub_1E65DB848();
  v1846 = *(v1847 - 1);
  v251 = *(v1846 + 8);
  v252 = MEMORY[0x1EEE9AC00](v1847);
  v1799 = &v1597 - ((v253 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = MEMORY[0x1EEE9AC00](v252);
  v1800 = &v1597 - v255;
  v256 = MEMORY[0x1EEE9AC00](v254);
  v1796 = &v1597 - v257;
  v258 = MEMORY[0x1EEE9AC00](v256);
  v1797 = &v1597 - v259;
  v260 = MEMORY[0x1EEE9AC00](v258);
  v1802 = &v1597 - v261;
  MEMORY[0x1EEE9AC00](v260);
  v1803 = &v1597 - v262;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  v264 = *(*(v263 - 8) + 64);
  v265 = MEMORY[0x1EEE9AC00](v263 - 8);
  v1663 = &v1597 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v265);
  v1664 = &v1597 - v267;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077800, &qword_1E65F9698);
  v269 = *(*(v268 - 8) + 64);
  v270 = MEMORY[0x1EEE9AC00](v268 - 8);
  v1661 = &v1597 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v270);
  v1662 = &v1597 - v272;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072708, &unk_1E65FA530);
  v274 = *(*(v273 - 8) + 64);
  v275 = MEMORY[0x1EEE9AC00](v273 - 8);
  v1659 = &v1597 - ((v276 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v275);
  v1660 = &v1597 - v277;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v279 = *(*(v278 - 8) + 64);
  v280 = MEMORY[0x1EEE9AC00](v278 - 8);
  v1655 = &v1597 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v280);
  v1658 = &v1597 - v282;
  v283 = sub_1E65E0B48();
  v284 = *(*(v283 - 8) + 64);
  MEMORY[0x1EEE9AC00](v283 - 8);
  v1656 = &v1597 - ((v285 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1833 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077110, &unk_1E65FA540);
  v1657 = *(v1833 - 1);
  v286 = *(v1657 + 64);
  v287 = MEMORY[0x1EEE9AC00](v1833);
  v1790 = &v1597 - ((v288 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = MEMORY[0x1EEE9AC00](v287);
  v1653 = &v1597 - v290;
  v291 = MEMORY[0x1EEE9AC00](v289);
  v1654 = &v1597 - v292;
  MEMORY[0x1EEE9AC00](v291);
  v1793 = &v1597 - v293;
  v1792 = sub_1E65D72D8();
  v1791 = *(v1792 - 8);
  v294 = *(v1791 + 64);
  MEMORY[0x1EEE9AC00](v1792);
  v1842 = (&v1597 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1826 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077820, &qword_1E65F96A8);
  v296 = *(*(v1826 - 8) + 64);
  v297 = MEMORY[0x1EEE9AC00](v1826);
  v1628 = &v1597 - ((v298 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = MEMORY[0x1EEE9AC00](v297);
  v1761 = &v1597 - v300;
  v301 = MEMORY[0x1EEE9AC00](v299);
  v1651 = &v1597 - v302;
  v303 = MEMORY[0x1EEE9AC00](v301);
  v305 = &v1597 - v304;
  v306 = MEMORY[0x1EEE9AC00](v303);
  v1825 = &v1597 - v307;
  MEMORY[0x1EEE9AC00](v306);
  v1652 = &v1597 - v308;
  v309 = type metadata accessor for BrowsePage();
  v310 = *(*(v309 - 8) + 64);
  MEMORY[0x1EEE9AC00](v309);
  v312 = &v1597 - ((v311 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1851 = sub_1E65D76F8();
  v1852 = *(v1851 - 8);
  v313 = *(v1852 + 8);
  v314 = MEMORY[0x1EEE9AC00](v1851);
  v1821 = &v1597 - ((v313 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = MEMORY[0x1EEE9AC00](v314);
  v1820 = &v1597 - v316;
  v317 = MEMORY[0x1EEE9AC00](v315);
  v1627 = &v1597 - v318;
  v319 = MEMORY[0x1EEE9AC00](v317);
  v1626 = &v1597 - v320;
  v321 = MEMORY[0x1EEE9AC00](v319);
  v1850 = &v1597 - v322;
  v323 = MEMORY[0x1EEE9AC00](v321);
  v1831 = &v1597 - v324;
  v325 = MEMORY[0x1EEE9AC00](v323);
  v1830 = &v1597 - v326;
  v327 = MEMORY[0x1EEE9AC00](v325);
  v1839 = &v1597 - v328;
  v329 = MEMORY[0x1EEE9AC00](v327);
  v1789 = &v1597 - v330;
  v331 = MEMORY[0x1EEE9AC00](v329);
  v1788 = &v1597 - v332;
  MEMORY[0x1EEE9AC00](v331);
  v1843 = &v1597 - v333;
  v1700 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  v334 = *(*(v1700 - 8) + 64);
  v335 = MEMORY[0x1EEE9AC00](v1700);
  v1699 = &v1597 - ((v336 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v335);
  v1708 = &v1597 - v337;
  v338 = type metadata accessor for AppComposer();
  v1853 = *(v338 - 8);
  v339 = *(v1853 + 8);
  v340 = MEMORY[0x1EEE9AC00](v338);
  v342 = &v1597 - ((v341 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = MEMORY[0x1EEE9AC00](v340);
  v1828 = &v1597 - v344;
  v345 = MEMORY[0x1EEE9AC00](v343);
  v1827 = &v1597 - v346;
  v347 = MEMORY[0x1EEE9AC00](v345);
  v1845 = &v1597 - v348;
  v349 = MEMORY[0x1EEE9AC00](v347);
  v1844 = (&v1597 - v350);
  v1855 = v351;
  MEMORY[0x1EEE9AC00](v349);
  v1859 = &v1597 - v352;
  v353 = type metadata accessor for RouteResource();
  v354 = *(*(v353 - 8) + 64);
  MEMORY[0x1EEE9AC00](v353);
  v356 = &v1597 - ((v355 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1873[3] = type metadata accessor for RouteDetourNavigationControllerRoutingContext();
  v1873[4] = &off_1F5FB76B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1873);
  sub_1E62CC108(v1860, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
  v1860 = v338;
  v1854 = (v1862 + *(v338 + 20));
  v357 = *(v1854 + 8);
  sub_1E62CC108(v1861, v356, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v784 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v785 = &v356[v784[12]];
      v787 = *v785;
      v786 = v785[1];
      v1851 = v787;
      v1850 = v786;
      v788 = v784[16];
      v1846 = *&v356[v784[20]];
      v789 = v784[24];
      LODWORD(v1849) = v356[v784[28]];
      v790 = &v356[v784[32]];
      v1848 = *v790;
      LODWORD(v1847) = v790[8];
      v791 = v1835;
      sub_1E5FAB460(v356, v1835, &unk_1ED077760, &unk_1E66011D0);
      v792 = v1816;
      sub_1E5FAB460(&v356[v788], v1816, &qword_1ED072B60, &unk_1E65FA490);
      v793 = v1817;
      sub_1E5FAB460(&v356[v789], v1817, &unk_1ED077750, &unk_1E66011C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
      *&v1861 = swift_allocBox();
      (*(v1703 + 104))(v1704, *MEMORY[0x1E69CAB38], v1707);
      LOBYTE(aBlock) = 0;
      sub_1E65DDC88();
      v1842 = type metadata accessor for AppComposer;
      v794 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DFD1CC(v791, v1812, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5DFD1CC(v793, v1814, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFD1CC(v792, v1813, &qword_1ED072B60, &unk_1E65FA490);
      v795 = *(v1853 + 80);
      v796 = ((v795 + 16) & ~v795);
      v1855 = (v1855 + v796);
      v1853 = v796;
      v1852 = (v795 | 7);
      v1843 = *(v1698 + 80);
      v797 = (v1855 + v1843) & ~v1843;
      v1841 = (v795 | 7 | v1843);
      v798 = (v1815 + v797 + 7) & 0xFFFFFFFFFFFFFFF8;
      v799 = (*(v1705 + 80) + v798 + 8) & ~*(v1705 + 80);
      v800 = (v1706 + v799 + 7) & 0xFFFFFFFFFFFFFFF8;
      v801 = (*(v1701 + 80) + v800 + 9) & ~*(v1701 + 80);
      v1840 = (v801 + v1702);
      v1839 = (v801 + v1702) & 0xFFFFFFFFFFFFFFF8;
      v802 = (v1839 + 23) & 0xFFFFFFFFFFFFFFF8;
      v803 = swift_allocObject();
      v1838 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v794, v796 + v803, type metadata accessor for AppComposer);
      sub_1E5FAB460(v1812, v803 + v797, &unk_1ED077760, &unk_1E66011D0);
      *(v803 + v798) = v1846;
      sub_1E5FAB460(v1814, v803 + v799, &unk_1ED077750, &unk_1E66011C0);
      v804 = v803 + v800;
      *v804 = v1848;
      *(v804 + 8) = v1847;
      sub_1E5FAB460(v1813, v803 + v801, &qword_1ED072B60, &unk_1E65FA490);
      *(v1840 + v803) = v1849;
      *(v803 + v1839 + 8) = v1861;
      v805 = (v803 + v802);
      v806 = v1850;
      *v805 = v1851;
      v805[1] = v806;
      LODWORD(v797) = *(type metadata accessor for AppEnvironment() + 72);

      v807 = LocalizationService.localizedDateComponentsFormatter.getter();
      v1854 = v807();

      v808 = v1862;
      v809 = v1844;
      v810 = v1842;
      sub_1E62CC108(v1862, v1844, v1842);
      v811 = v1855;
      v1851 = swift_allocObject();
      v812 = v1853;
      sub_1E5E1E528(v809, v1853 + v1851, type metadata accessor for AppComposer);
      v813 = v1845;
      sub_1E62CC108(v808, v1845, v810);
      sub_1E5DF650C(v1873, &aBlock);
      v814 = v1710;
      sub_1E5DFD1CC(v1835, v1710, &unk_1ED077760, &unk_1E66011D0);
      v815 = (v811 + 7) & 0xFFFFFFFFFFFFFFF8;
      v816 = (v1843 + v815 + 40) & ~v1843;
      v817 = swift_allocObject();
      sub_1E5E1E528(v813, v812 + v817, v1838);
      sub_1E5DF599C(&aBlock, v817 + v815);
      sub_1E5FAB460(v814, v817 + v816, &unk_1ED077760, &unk_1E66011D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00);
      v818 = v1736;
      sub_1E65E26F8();
      sub_1E65E5148();
      sub_1E65E5138();
      v819 = sub_1E65E4FD8();
      v820 = v1739;
      (*(*(v819 - 8) + 56))(v1739, 1, 1, v819);
      if (qword_1EE2D49E0 != -1)
      {
        swift_once();
      }

      v821 = sub_1E65E5018();
      __swift_project_value_buffer(v821, qword_1EE2D49E8);
      v822 = sub_1E65E2E78();
      v823 = v1740;
      (*(*(v822 - 8) + 56))(v1740, 1, 1, v822);
      sub_1E5FED46C(&qword_1ED077120, &unk_1ED077740, &qword_1E65F9660);
      v824 = v1743;
      v825 = v1738;
      sub_1E65E4728();

      sub_1E5DFE50C(v823, &unk_1ED077730, &unk_1E65EA310);
      sub_1E5DFE50C(v820, &qword_1ED071EF8, &unk_1E65FA470);
      (*(v1737 + 8))(v818, v825);
      v826 = v1862;
      v827 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      v828 = swift_allocObject();
      sub_1E5E1E528(v827, v1853 + v828, type metadata accessor for AppComposer);

      v829 = (v824 + *(v1735 + 36));
      *v829 = sub_1E62CC3F4;
      v829[1] = v828;
      v830 = v1742;
      sub_1E5DFD1CC(v824, v1742, &qword_1ED0770D0, &unk_1E65FA480);
      v831 = *v826;
      v832 = *(v1860 + 8);
      v833 = swift_allocObject();
      v1862 = *(v826 + v832);
      *(v833 + 16) = v1862;
      v834 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v835 = v1565;
      }

      else
      {

        swift_unknownObjectRetain();
        v835 = MEMORY[0x1E69E7CD0];
      }

      v836 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v834);
      v837 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778E0, &unk_1E65FA5C0));
      v369 = sub_1E626E800(v830, v835, MEMORY[0x1E69E7CC0], v836, 0, 0, 0, 0, 0, 0, 0, v831, sub_1E62CC440, v833);

      sub_1E5DFE50C(v824, &qword_1ED0770D0, &unk_1E65FA480);
      sub_1E5DFE50C(v1817, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFE50C(v1816, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFE50C(v1835, &unk_1ED077760, &unk_1E66011D0);
      goto LABEL_266;
    case 2u:
      v642 = *v356;
      v641 = *(v356 + 1);
      *v312 = *v356;
      *(v312 + 1) = v641;
      swift_storeEnumTagMultiPayload();

      v643 = v357;
      v644 = v1862;
      sub_1E617DC64(v312, &aBlock);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      if (v643 < 2)
      {
        *v312 = v642;
        *(v312 + 1) = v641;
        swift_storeEnumTagMultiPayload();

        sub_1E6508CD4(v1873, v312, &aBlock, v305);
        sub_1E62BC770(v312, type metadata accessor for BrowsePage);
        sub_1E6272CEC();
        v645 = v1825;
        sub_1E5FEE4C8(v305);
        sub_1E5DFE50C(v305, &unk_1ED077820, &qword_1E65F96A8);
        v646 = v1761;
        sub_1E5FEE4C8(v645);
        sub_1E5DFE50C(v645, &unk_1ED077820, &qword_1E65F96A8);
        v647 = v1626;
        sub_1E65D76E8();
        v648 = v1627;
        sub_1E65D76E8();
        v649 = v646;
        v650 = v1628;
        sub_1E5DFD1CC(v649, v1628, &unk_1ED077820, &qword_1E65F96A8);
        *&v1861 = sub_1E6388F1C(v642, v641, v648, v647, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v651 = swift_allocObject();
        *(v651 + 16) = xmmword_1E65F32F0;
        *(v651 + 32) = sub_1E62B15D4(v642, v641, v648, boxed_opaque_existential_1, &aBlock, v644);
        *(v651 + 40) = [objc_opt_self() flexibleSpaceItem];
        v652 = sub_1E638AB3C(v642, v641, v647, &aBlock);

        *(v651 + 48) = v652;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
        v653 = *v644;
        v654 = *(v1860 + 8);
        v655 = swift_allocObject();
        v1862 = *(v644 + v654);
        *(v655 + 16) = v1862;
        v656 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);

        swift_unknownObjectRetain();
        *(&v1585 + 1) = sub_1E62CC440;
        *&v1585 = v653;
        v369 = sub_1E630B390(v650, v1861, v651, v656, 0, 0, 0, 0, 1, 0, v1585, v655);

        sub_1E5DFE50C(v650, &unk_1ED077820, &qword_1E65F96A8);
        swift_unknownObjectRelease();

        v657 = *(v1852 + 1);
        v658 = v1851;
        v657(v648, v1851);
        v657(v647, v658);
        sub_1E5DFE50C(v1761, &unk_1ED077820, &qword_1E65F96A8);
        goto LABEL_266;
      }

      if (v643 != 3)
      {
        goto LABEL_331;
      }

      v1375 = v1859;
      sub_1E62CC108(v644, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &v1865);
      v1376 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1377 = (v1855 + v1376 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1378 = swift_allocObject();
      sub_1E5E1E528(v1375, v1378 + v1376, type metadata accessor for AppComposer);
      v1379 = (v1378 + v1377);
      *v1379 = v642;
      v1379[1] = v641;
      sub_1E5DF599C(&v1865, v1378 + ((v1377 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1380 = sub_1E65E4438();
      v1381 = *v644;
      v1382 = *(v1860 + 8);
      v1383 = swift_allocObject();
      v1862 = *(v644 + v1382);
      *(v1383 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1384 = v1575;
      }

      else
      {

        swift_unknownObjectRetain();
        v1384 = MEMORY[0x1E69E7CD0];
      }

      v1385 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1386 = sub_1E626CAE8(sub_1E62CC410, v1378, v1380, v1384, MEMORY[0x1E69E7CC0], v1385, 0, 0, 0, 0, 0, 0, 0, v1381, sub_1E62CC440, v1383);

      v1387 = v1829;
      if (v1829)
      {
        v1388 = v1829;
        v1389 = v1386;
        if ([v1388 isViewLoaded])
        {
          v1390 = [v1388 view];
          if (v1390)
          {
            v1391 = v1390;
            v1392 = [v1390 snapshotViewAfterScreenUpdates_];

            goto LABEL_264;
          }

          goto LABEL_323;
        }
      }

      else
      {
        v1553 = v1386;
      }

      v1392 = 0;
LABEL_264:
      v1554 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v369 = sub_1E630B7AC(v1386, v1392);

      swift_unknownObjectRelease();

LABEL_265:

      goto LABEL_266;
    case 3u:
      LODWORD(v1854) = v357;
      v723 = *(v356 + 1);
      v1852 = *v356;
      v724 = v1852;
      v1849 = v723;
      LODWORD(v1861) = v356[16];
      LODWORD(v1860) = v356[17];
      v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v726 = *(v725 + 80);
      v1851 = v725;
      v727 = v1791;
      v728 = v1842;
      v729 = v1792;
      (*(v1791 + 32))(v1842, &v356[v726], v1792);
      v730 = *(v725 + 80);
      *v312 = v724;
      v731 = v1849;
      *(v312 + 1) = v1849;
      v312[16] = v1861;
      v312[17] = v1860;
      v1850 = *(v727 + 16);
      (v1850)(&v312[v730], v728, v729);
      swift_storeEnumTagMultiPayload();

      sub_1E617DC64(v312, &aBlock);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      v732 = *(v1851 + 80);
      *v312 = v1852;
      *(v312 + 1) = v731;
      LOBYTE(v728) = v1861;
      v312[16] = v1861;
      v312[17] = v1860;
      (v1850)(&v312[v732], v1842, v729);
      swift_storeEnumTagMultiPayload();
      v733 = v1825;
      v734 = v1862;
      sub_1E6508CD4(v1873, v312, &aBlock, v1825);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      v1852 = type metadata accessor for AppComposer;
      v735 = v1859;
      sub_1E62CC108(v734, v1859, type metadata accessor for AppComposer);
      v1851 = *(v1853 + 80);
      v736 = (v1851 + 17) & ~v1851;
      v737 = swift_allocObject();
      *(v737 + 16) = v728;
      v1853 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v735, v737 + v736, type metadata accessor for AppComposer);
      v738 = sub_1E6272CEC();
      v739 = v1653;
      v740 = v1826;
      sub_1E65E4718();

      sub_1E5DFE50C(v733, &unk_1ED077820, &qword_1E65F96A8);
      *&v1865 = v740;
      *(&v1865 + 1) = v738;
      swift_getOpaqueTypeConformance2();
      v741 = v1654;
      v742 = v1833;
      sub_1E5FEE4C8(v739);
      v743 = v1657;
      v744 = (v1657 + 8);
      v745 = *(v1657 + 8);
      v745(v739, v742);
      v746 = v1793;
      sub_1E5FEE4C8(v741);
      v1860 = v744;
      v745(v741, v742);
      v747 = v745;
      (*(v743 + 16))(v1790, v746, v742);
      v748 = *v1862;
      sub_1E62CC108(v1862, v342, v1852);
      v749 = (v1851 + 16) & ~v1851;
      v750 = v1855 + v749;
      v751 = swift_allocObject();
      sub_1E5E1E528(v342, v751 + v749, v1853);
      v750[v751] = v1861;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v752 = v1563;
      }

      else
      {

        v752 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B20, &qword_1E65F9800);
      v753 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      *(&v1587 + 1) = sub_1E62CC40C;
      *&v1587 = v748;
      v754 = v1790;
      v755 = sub_1E630B390(v1790, v752, MEMORY[0x1E69E7CC0], v753, 0, 0, 0, 0, 0, 0, v1587, v751);

      v747(v754, v1833);
      v369 = v755;
      sub_1E65D71F8();
      sub_1E62CC0C0(&qword_1ED075EA8, MEMORY[0x1E6968678]);
      sub_1E65E5E48();
      v756 = sub_1E65E5C48();

      [v369 setTitle_];

      v757 = sub_1E6307A64();
      v758 = v757;
      if (v1854 > 1)
      {
        [v757 setLargeTitleDisplayMode_];
        swift_unknownObjectRelease();
      }

      else
      {
        [v757 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        v758 = v369;
      }

      v747(v1793, v1833);
      (*(v1791 + 8))(v1842, v1792);
      goto LABEL_266;
    case 4u:
      v492 = &v356[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48)];
      v493 = *v492;
      v494 = v492[1];
      v495 = v356;
      v496 = v1656;
      sub_1E5E1E528(v495, v1656, MEMORY[0x1E699DD40]);
      v497 = v1658;
      v498 = v493;
      v499 = v1862;
      sub_1E63DB038(v496, v498, v494, v1873, v1658);

      v500 = v1655;
      sub_1E5DFD1CC(v497, v1655, &unk_1ED077810, &qword_1E65F96A0);
      v501 = *v499;
      v502 = *(v1860 + 8);
      v503 = swift_allocObject();
      v1862 = *(v499 + v502);
      *(v503 + 16) = v1862;
      v504 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v505 = v1560;
      }

      else
      {

        swift_unknownObjectRetain();
        v505 = MEMORY[0x1E69E7CD0];
      }

      v506 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v504);
      v507 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D8, &qword_1E65F97E8));
      v369 = sub_1E626CF50(v500, v505, MEMORY[0x1E69E7CC0], v506, 0, 0, 0, 0, 0, 0, 0, v501, sub_1E62CC440, v503);

      sub_1E5DFE50C(v497, &unk_1ED077810, &qword_1E65F96A0);
      sub_1E62BC770(v496, MEMORY[0x1E699DD40]);
      goto LABEL_266;
    case 5u:
      v845 = v1664;
      v846 = v1862;
      AppComposer.libraryGalleryViewBuilder(_:currentRoutingContext:)(*v356, v1873, v1664);
      v847 = v1663;
      sub_1E5DFD1CC(v845, v1663, &qword_1ED0729A0, &unk_1E65FA520);
      v848 = *v846;
      v849 = *(v1860 + 8);
      v850 = swift_allocObject();
      v1862 = *(v846 + v849);
      *(v850 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v851 = v1566;
      }

      else
      {

        swift_unknownObjectRetain();
        v851 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C8, &qword_1E65F97D8);
      v852 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      *(&v1588 + 1) = sub_1E62CC440;
      *&v1588 = v848;
      v853 = sub_1E630B390(v847, v851, MEMORY[0x1E69E7CC0], v852, 0, 0, 0, 0, 0, 0, v1588, v850);

      sub_1E5DFE50C(v847, &qword_1ED0729A0, &unk_1E65FA520);
      swift_getKeyPath();
      v369 = v853;
      v854 = v1838;
      sub_1E65E4EC8();

      sub_1E65DF548();
      (*(v1686 + 8))(v854, v1688);
      v855 = sub_1E65E5C48();

      [v369 setTitle_];

      v856 = sub_1E6307A64();
      [v856 setLargeTitleDisplayMode_];

      sub_1E5DFE50C(v845, &qword_1ED0729A0, &unk_1E65FA520);
      goto LABEL_266;
    case 6u:
      *&v1861 = *v356;
      v870 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v871 = *(v870 + 64);
      (*(v1846 + 4))(v1803, &v356[*(v870 + 48)], v1847);
      (*(v1807 + 32))(v1806, &v356[v871], v1808);
      v872 = v1860;
      v873 = v1862;
      v874 = (v1862 + *(v1860 + 9));
      v875 = *v874;
      v876 = v874[1];
      sub_1E617FDC0();
      v877 = sub_1E65DB818();
      v878 = sub_1E65DB838();
      v879 = sub_1E625B3D4(v878);

      v880 = *(v872 + 8);
      v881 = swift_allocObject();
      v882 = *(v873 + v880);
      v1860 = v881;
      *(v881 + 16) = v882;
      swift_unknownObjectRetain();
      sub_1E65DB578();
      sub_1E65E1508();
      sub_1E65E1268();
      v883 = *v1854;
      v884 = objc_allocWithZone(sub_1E65E1328());
      v885 = sub_1E65E5C48();

      v886 = sub_1E65E5C48();

      v887 = [v884 initWithServiceType:v885 placement:v886 bag:v883];

      v888 = v887;
      sub_1E65E14E8();
      if (v889)
      {
        v890 = sub_1E65E5C48();
      }

      else
      {
        v890 = 0;
      }

      v1275 = v1859;
      v1276 = v1853;
      [v888 setOfferHints_];

      v369 = v888;
      [v369 setAccount_];
      [v369 setAnonymousMetrics_];
      v1277 = sub_1E625E194(v879);
      v1278 = v1862;
      v1858 = v879;
      if (!v1277)
      {
        v1277 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      sub_1E625B10C(v1277);

      v1279 = sub_1E65E5AF8();

      [v369 setMetricsOverlay_];

      sub_1E65DB588();
      v1280 = sub_1E65E5C48();

      [v369 setMediaClientIdentifier_];

      v1281 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v1282 = sub_1E65E6348();

      [v369 setClientInfo_];

      v1283 = sub_1E65E1308();
      *&v1857 = type metadata accessor for AppComposer;
      sub_1E62CC108(v1278, v1275, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1284 = (*(v1276 + 80) + 16) & ~*(v1276 + 80);
      v1285 = (v1855 + v1284 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1286 = v1275;
      v1287 = (v1285 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1288 = swift_allocObject();
      v1856 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v1286, v1288 + v1284, type metadata accessor for AppComposer);
      v1289 = v1858;
      *(v1288 + v1285) = v1858;
      sub_1E5DF599C(&aBlock, v1288 + v1287);

      sub_1E65E13A8();

      v1290 = sub_1E65E1308();
      sub_1E62CC108(v1862, v1286, v1857);
      sub_1E5DF650C(v1873, &aBlock);
      v1291 = swift_allocObject();
      sub_1E5E1E528(v1286, v1291 + v1284, v1856);
      *(v1291 + v1285) = v1289;
      sub_1E5DF599C(&aBlock, v1291 + v1287);
      sub_1E65E13B8();

      sub_1E65E1318();
      v985 = *(v1846 + 1);
      v986 = v1847;
      v985(v1802, v1847);
      (*(v1807 + 8))(v1806, v1808);
      v987 = v1803;
      goto LABEL_148;
    case 7u:
      v759 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290);
      v760 = v1849;
      v761 = v1794;
      v762 = v1848;
      (*(v1849 + 32))(v1794, &v356[*(v759 + 48)], v1848);
      v763 = v1670;
      (*(v760 + 16))(v1670, v761, v762);
      v764 = v1862;
      v765 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      v766 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v767 = swift_allocObject();
      sub_1E5E1E528(v765, v767 + v766, type metadata accessor for AppComposer);
      v768 = (v763 + *(v1665 + 36));
      *v768 = sub_1E62CC3F4;
      v768[1] = v767;
      sub_1E5DFD1CC(v763, v1795, &unk_1ED0777F0, &qword_1E65F9690);
      v769 = *v764;
      v770 = *(v1860 + 8);
      v771 = swift_allocObject();
      v1862 = *(v764 + v770);
      *(v771 + 16) = v1862;
      v772 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v773 = v1564;
      }

      else
      {

        swift_unknownObjectRetain();
        v773 = MEMORY[0x1E69E7CD0];
      }

      v774 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v772);
      v775 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C0, &qword_1E65F97D0));
      v369 = sub_1E626D770(v1795, v773, MEMORY[0x1E69E7CC0], v774, 0, 0, 0, 0, 0, 0, 0, v769, sub_1E62CC440, v771);

      sub_1E5DFE50C(v763, &unk_1ED0777F0, &qword_1E65F9690);
      (*(v760 + 8))(v1794, v762);
      (*(v1846 + 1))(v356, v1847);
      goto LABEL_266;
    case 8u:
      v953 = *v356;
      v954 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v955 = *(v954 + 64);
      (*(v1846 + 4))(v1797, &v356[*(v954 + 48)], v1847);
      (*(v1849 + 32))(v1804, &v356[v955], v1848);
      v956 = v1860;
      v957 = v1862;
      v958 = (v1862 + *(v1860 + 9));
      v959 = *v958;
      v960 = v958[1];
      sub_1E617FDC0();
      v961 = sub_1E65DB818();
      v962 = sub_1E65DB838();
      v963 = sub_1E625B3D4(v962);

      v964 = *(v956 + 8);
      v965 = swift_allocObject();
      v1857 = *(v957 + v964);
      *(v965 + 16) = v1857;
      v966 = *v1854;
      v967 = objc_allocWithZone(sub_1E65E1378());
      swift_unknownObjectRetain();
      v968 = sub_1E65D7448();
      v969 = [v967 initWithBag:v966 URL:v968];

      v369 = v969;
      [v369 setAccount_];
      [v369 setAnonymousMetrics_];
      v970 = sub_1E625E194(v963);
      *&v1861 = v953;
      v1860 = v965;
      v1858 = v963;
      if (!v970)
      {
        v970 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v971 = v1853;
      sub_1E625B10C(v970);

      v972 = sub_1E65E5AF8();

      [v369 setMetricsOverlay_];

      sub_1E65DB588();
      v973 = sub_1E65E5C48();

      [v369 setMediaClientIdentifier_];

      v974 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v975 = sub_1E65E6348();

      [v369 setClientInfo_];

      v976 = sub_1E65E1358();
      *&v1857 = type metadata accessor for AppComposer;
      v977 = v1859;
      sub_1E62CC108(v957, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v978 = (*(v971 + 80) + 16) & ~*(v971 + 80);
      v979 = ((v1855 + v978 + 7) & 0xFFFFFFFFFFFFFFF8);
      v1856 = v979;
      v980 = (v979 + 15) & 0xFFFFFFFFFFFFFFF8;
      v981 = swift_allocObject();
      v1855 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v977, v981 + v978, type metadata accessor for AppComposer);
      v982 = v1858;
      *(v979 + v981) = v1858;
      sub_1E5DF599C(&aBlock, v981 + v980);

      sub_1E65E13A8();

      v983 = sub_1E65E1358();
      sub_1E62CC108(v1862, v977, v1857);
      sub_1E5DF650C(v1873, &aBlock);
      v984 = swift_allocObject();
      sub_1E5E1E528(v977, v984 + v978, v1855);
      *(v1856 + v984) = v982;
      sub_1E5DF599C(&aBlock, v984 + v980);
      sub_1E65E13B8();

      sub_1E65E1368();
      v985 = *(v1846 + 1);
      v986 = v1847;
      v985(v1796, v1847);
      (*(v1849 + 8))(v1804, v1848);
      v987 = v1797;
LABEL_148:
      v985(v987, v986);
      goto LABEL_266;
    case 9u:
      v611 = *v356;
      v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v613 = *(v612 + 64);
      (*(v1846 + 4))(v1800, &v356[*(v612 + 48)], v1847);
      v614 = (v1849 + 32);
      v615 = v1805;
      v1856 = *(v1849 + 32);
      (v1856)(v1805, &v356[v613], v1848);
      v616 = v1860;
      v617 = v1862;
      v618 = (v1862 + *(v1860 + 9));
      v619 = *v618;
      v620 = v618[1];
      sub_1E617FDC0();
      v621 = sub_1E65DB838();
      v622 = sub_1E625B3D4(v621);

      v623 = *(v616 + 8);
      v624 = swift_allocObject();
      v1861 = *(v617 + v623);
      v1860 = v624;
      *(v624 + 16) = v1861;
      v625 = objc_opt_self();
      swift_unknownObjectRetain();
      v626 = [v625 currentProcess];
      sub_1E65DB598();
      v627 = sub_1E65E6348();

      v628 = *v1854;
      v629 = objc_allocWithZone(sub_1E65E12F8());
      *&v1861 = v611;
      *&v1857 = v627;
      v369 = [v629 initWithBag:v628 account:v611 clientInfo:v627];
      v1858 = v622;
      v630 = sub_1E625E194(v622);
      v1852 = v614;
      if (!v630)
      {
        sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v631 = v1744;
      v632 = sub_1E65E5AF8();

      [v369 setMetricsOverlay_];

      sub_1E63265A8(v631);
      v633 = v1849;
      v634 = *(v1849 + 48);
      v635 = v615;
      v636 = v1848;
      v637 = v634(v631, 1, v1848);
      v638 = v1856;
      if (v637 == 1)
      {
        v639 = *(v633 + 16);
        v640 = v1787;
        v639(v1787, v635, v636);
        if (v634(v631, 1, v636) != 1)
        {
          sub_1E5DFE50C(v631, &qword_1ED072340, &qword_1E65EA410);
        }
      }

      else
      {
        v640 = v1787;
        (v1856)(v1787, v631, v636);
      }

      v1222 = sub_1E65D7448();
      v1223 = [v369 loadURL_];

      v1224 = v640;
      v1225 = v1849;
      v1226 = v1836;
      (*(v1849 + 16))(v1836, v1224, v636);
      v1227 = (*(v1225 + 80) + 16) & ~*(v1225 + 80);
      v1228 = swift_allocObject();
      v638(v1228 + v1227, v1226, v636);
      *&v1870 = sub_1E62CC4CC;
      *(&v1870 + 1) = v1228;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v1869 = sub_1E625E2DC;
      *(&v1869 + 1) = &block_descriptor_834;
      v1229 = _Block_copy(&aBlock);

      [v1223 addFinishBlock_];
      _Block_release(v1229);

      v1230 = sub_1E65E12D8();
      v1231 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1232 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1233 = (v1855 + v1232 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1234 = swift_allocObject();
      sub_1E5E1E528(v1231, v1234 + v1232, type metadata accessor for AppComposer);
      *(v1234 + v1233) = v1858;
      sub_1E5DF599C(&aBlock, v1234 + ((v1233 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_1E65E1338();

      sub_1E65E12E8();
      v1235 = *(v1225 + 8);
      v1235(v1787, v636);
      v1236 = *(v1846 + 1);
      v1237 = v1847;
      v1236(v1799, v1847);
      v1235(v1805, v636);
      v1236(v1800, v1237);
      goto LABEL_266;
    case 0xAu:
      v891 = *v356;
      v892 = *(v356 + 1);
      if (v357 < 2)
      {
        v1854 = type metadata accessor for AppComposer;
        v893 = v1862;
        v894 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v895 = *(v1853 + 80);
        v1844 = (v1855 + ((v895 + 16) & ~v895));
        v896 = (v895 + 16) & ~v895;
        v1847 = v896;
        v1845 = v895 | 7;
        v897 = (v1844 + 7) & 0xFFFFFFFFFFFFFFF8;
        v898 = swift_allocObject();
        v1846 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v894, v898 + v896, type metadata accessor for AppComposer);
        v899 = (v898 + v897);
        *v899 = v891;
        v899[1] = v892;

        sub_1E61F84B0(v891, v892, sub_1E62CC4A4, v898, &aBlock);

        AppComposer.modalityDetailViewBuilder(identifier:currentRoutingContext:)(v891, v892, v1873, v1785);
        v900 = v891;
        v1849 = v891;
        v901 = v1850;
        sub_1E65D76E8();
        v902 = v892;
        v903 = v1770;
        *v1770 = v900;
        *(v903 + 8) = v902;
        *&v1861 = v902;
        *(v903 + 16) = 4;
        swift_storeEnumTagMultiPayload();

        v904 = sub_1E6200DD8(v903, v901, &aBlock);
        sub_1E5DFE50C(v903, &unk_1ED0776E0, &qword_1E65EDC00);
        v1855 = *(v1852 + 2);
        (v1855)(v1820, v901, v1851);
        v905 = sub_1E65E4BA8();
        v906 = v1841;
        *v1841 = v905;
        *(v906 + 1) = v907;
        v1839 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v908 = sub_1E65E4998();
        v909 = *(v1764 + 36);
        v1843 = sub_1E604C89C();

        v910 = v1840;
        v1842 = v904;
        sub_1E65DE568();
        *v910 = v908;
        v911 = v1861;
        *v903 = v1849;
        *(v903 + 8) = v911;
        *(v903 + 16) = 4;
        swift_storeEnumTagMultiPayload();
        v912 = v893;
        v913 = v1859;
        sub_1E62CC108(v912, v1859, v1854);
        sub_1E5DFD1CC(v903, v1824, &unk_1ED0776E0, &qword_1E65EDC00);
        v914 = v1851;
        (v1855)(v1821, v901, v1851);
        p_aBlock = &aBlock;
        v1855 = aBlock;
        v1854 = *(&v1869 + 1);
        v1853 = *(&v1870 + 1);
        v1849 = *(&v1871 + 1);
        v1848 = *(&v1872[0] + 1);
        v916 = (v1844 + *(v1765 + 80)) & ~*(v1765 + 80);
        v917 = v1852;
        v918 = (v1766 + *(v1852 + 80) + v916) & ~*(v1852 + 80);
        v919 = (v313 + v918 + 7) & 0xFFFFFFFFFFFFFFF8;
        v920 = swift_allocObject();
        sub_1E5E1E528(v913, v1847 + v920, v1846);
        sub_1E5FAB460(v1824, v920 + v916, &unk_1ED0776E0, &qword_1E65EDC00);
        v917[4](v920 + v918, v1821, v914);
        v921 = (v920 + v919);
        v922 = v1871;
        v921[2] = v1870;
        v921[3] = v922;
        v921[4] = v1872[0];
        v923 = v1869;
        *v921 = aBlock;
        v921[1] = v923;

        swift_unknownObjectRetain();

        v924 = v1771;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v903, &unk_1ED0776E0, &qword_1E65EDC00);
        v925 = v1773;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
        sub_1E62CC0C0(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
        v926 = v1779;
        v927 = v1774;
        v928 = v1776;
        sub_1E65E47D8();
        (*(v1775 + 8))(v925, v928);
        (*(v1772 + 8))(v924, v927);
        v929 = sub_1E65E49C8();
        KeyPath = swift_getKeyPath();
        *&v1865 = v929;
        v931 = sub_1E65E3D08();
        v932 = (v926 + *(v1778 + 36));
        *v932 = KeyPath;
        v932[1] = v931;
        v933 = *MEMORY[0x1E697E6E8];
        v934 = sub_1E65E3DD8();
        v935 = v1780;
        (*(*(v934 - 8) + 104))(v1780, v933, v934);
        sub_1E62CC0C0(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
        if (sub_1E65E5B98())
        {
          v1859 = &v1841[v1839];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
          v936 = v1755;
          sub_1E65E4848();
          sub_1E5DFE50C(v935, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v926, &unk_1ED0776C0, &qword_1E65F9648);
          v937 = v1757;
          sub_1E5DFD1CC(v1840, v1757, &unk_1ED0776D0, &qword_1E65F9650);
          v938 = v1759;
          v939 = *(v1759 + 16);
          v940 = v1758;
          v941 = v1760;
          v939(v1758, v936, v1760);
          v942 = v1859;
          sub_1E5DFD1CC(v937, v1859, &unk_1ED0776D0, &qword_1E65F9650);
          v943 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v939((v942 + *(v943 + 48)), v940, v941);
          v944 = *(v938 + 8);
          v944(v936, v941);
          sub_1E5DFE50C(v1840, &unk_1ED0776D0, &qword_1E65F9650);
          v944(v940, v941);
          sub_1E5DFE50C(v937, &unk_1ED0776D0, &qword_1E65F9650);
          v945 = v1841;
          v946 = &v1841[*(v1754 + 36)];
          v947 = v1842;
          *v946 = sub_1E6275B64;
          v946[1] = v947;
          v948 = type metadata accessor for BarButtonItem();
          v946[2] = 0;
          v946[3] = 0;
          v949 = objc_allocWithZone(v948);

          v950 = sub_1E625BF8C(v1820, v945);

          (*(v1852 + 1))(v1850, v1851);
          sub_1E5DFD1CC(v1785, v1752, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v935 = swift_allocObject();
          *(v935 + 16) = xmmword_1E65EA660;
          *(v935 + 32) = v950;
          v951 = v950;
          v952 = sub_1E65E4B48();
          *&v1861 = v951;
          if (v952)
          {
            v927 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v934 = 0;
          }

          else
          {
            v927 = [objc_opt_self() blackColor];
            v934 = 3;
          }

          v1511 = v1862;
          v924 = *v1862;
          v1512 = *(v1860 + 8);
          p_aBlock = swift_allocObject();
          v1862 = *(v1511 + v1512);
          p_aBlock[1] = v1862;
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_231;
          }

          goto LABEL_294;
        }

        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1513 = v1568;
          goto LABEL_232;
        }

LABEL_231:

        swift_unknownObjectRetain();
        v1513 = MEMORY[0x1E69E7CD0];
LABEL_232:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
        v1514 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
        *(&v1595 + 1) = sub_1E62CC440;
        *&v1595 = v924;
        v1515 = v1752;
        v369 = sub_1E630B390(v1752, v1513, v935, v1514, 0, 0, v927, v934, 1, 0, v1595, p_aBlock);

        v370 = &qword_1ED0770C0;
        v371 = &unk_1E65FA410;
        sub_1E5DFE50C(v1515, &qword_1ED0770C0, &unk_1E65FA410);

        swift_unknownObjectRelease();
        v1416 = v1785;
LABEL_237:
        sub_1E5DFE50C(v1416, v370, v371);
        goto LABEL_266;
      }

      v1417 = v1862;
      if (v357 != 3)
      {
        goto LABEL_339;
      }

      v1418 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1419 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1420 = (v1855 + v1419 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1421 = swift_allocObject();
      sub_1E5E1E528(v1418, v1421 + v1419, type metadata accessor for AppComposer);
      v1422 = (v1421 + v1420);
      *v1422 = v891;
      v1422[1] = v892;
      sub_1E5DF599C(&aBlock, v1421 + ((v1420 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1423 = sub_1E65E4438();
      v1424 = *v1417;
      v1425 = *(v1860 + 8);
      v1426 = swift_allocObject();
      v1862 = *(v1417 + v1425);
      *(v1426 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1427 = v1577;
      }

      else
      {

        swift_unknownObjectRetain();
        v1427 = MEMORY[0x1E69E7CD0];
      }

      v1428 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1404 = sub_1E626CAE8(sub_1E62CC404, v1421, v1423, v1427, MEMORY[0x1E69E7CC0], v1428, 0, 0, 0, 0, 0, 0, 0, v1424, sub_1E62CC440, v1426);

      v1405 = v1829;
      if (!v1829)
      {
        goto LABEL_221;
      }

      v1429 = v1829;
      v1430 = v1404;
      if (![v1429 isViewLoaded])
      {
        goto LABEL_222;
      }

      v1408 = [v1429 view];
      if (!v1408)
      {
LABEL_325:
        __break(1u);
        goto LABEL_326;
      }

      goto LABEL_220;
    case 0xBu:
      v409 = v1666;
      AppComposer.onboardingModalityDetailViewBuilder(modalityIdentifier:currentRoutingContext:)(*v356, *(v356 + 1), v1873, v1666);

      v381 = &qword_1ED077108;
      v382 = &unk_1E65FA510;
      sub_1E5DFD1CC(v409, v1667, &qword_1ED077108, &unk_1E65FA510);
      v410 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AB0, &unk_1E65FA790));
      v369 = sub_1E65E18F8();
      v411 = v409;
      goto LABEL_126;
    case 0xCu:
      v607 = *v356;
      v608 = *(v356 + 1);
      sub_1E5F94E00(*(v356 + 2), v356[24]);
      v609 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
      v610 = InteropService.makePrivacySplashViewController.getter();
      v369 = v610(v607, v608);

      goto LABEL_265;
    case 0xDu:
      v858 = *v356;
      v857 = *(v356 + 1);
      v859 = *v356;
      v860 = v1862;
      sub_1E637E93C(v859, v857, &aBlock);
      v861 = v1668;
      sub_1E64970E4(v858, v857, v1873, &aBlock, v1668);
      v862 = sub_1E626FB98();
      v863 = v1801;
      sub_1E6012F9C(v1669, v862);
      sub_1E5DFE50C(v861, &qword_1ED077100, &unk_1E65FA500);
      v864 = v1788;
      sub_1E65D76E8();
      v865 = v1789;
      sub_1E65D76E8();
      sub_1E5DFD1CC(v863, v1798, &unk_1ED0777E0, &qword_1E65F9688);
      v866 = sub_1E623EEE8(v858, v857, v864, v865, &aBlock);
      if (v357 >= 2)
      {
        v869 = v1852;
        if (v357 != 3)
        {
          goto LABEL_331;
        }

        v867 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v867 = swift_allocObject();
        *(v867 + 16) = xmmword_1E65F32F0;
        *(v867 + 32) = sub_1E623F674(v858, v857, v864, &aBlock);
        *(v867 + 40) = [objc_opt_self() flexibleSpaceItem];
        v868 = sub_1E62408B4(v858, v857, v865, &aBlock);

        *(v867 + 48) = v868;
        v869 = v1852;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771B8, &qword_1E65F9750);
      v1409 = *v860;
      v1410 = *(v1860 + 8);
      v1411 = swift_allocObject();
      v1862 = *(v860 + v1410);
      *(v1411 + 16) = v1862;
      v1412 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);

      swift_unknownObjectRetain();
      *(&v1593 + 1) = sub_1E62CC440;
      *&v1593 = v1409;
      v1413 = v1798;
      v369 = sub_1E630B390(v1798, v866, v867, v1412, 0, 0, 0, 0, 1, 0, v1593, v1411);

      v370 = &unk_1ED0777E0;
      v371 = &qword_1E65F9688;
      sub_1E5DFE50C(v1413, &unk_1ED0777E0, &qword_1E65F9688);
      swift_unknownObjectRelease();

      v1414 = *(v869 + 1);
      v1415 = v1851;
      v1414(v1789, v1851);
      v1414(v1788, v1415);
      v1416 = v1801;
      goto LABEL_237;
    case 0xEu:
    case 0x13u:
    case 0x18u:
    case 0x26u:
    case 0x28u:
      goto LABEL_330;
    case 0xFu:
      v1027 = *v356;
      v1028 = *(v356 + 1);
      if (v357 < 2)
      {
        v1854 = type metadata accessor for AppComposer;
        v1029 = v1862;
        v1030 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1031 = *(v1853 + 80);
        v1844 = (v1855 + ((v1031 + 16) & ~v1031));
        v1032 = (v1031 + 16) & ~v1031;
        v1847 = v1032;
        v1845 = v1031 | 7;
        v1033 = (v1844 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1034 = swift_allocObject();
        v1846 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v1030, v1034 + v1032, type metadata accessor for AppComposer);
        v1035 = (v1034 + v1033);
        *v1035 = v1027;
        v1035[1] = v1028;

        sub_1E61F84B0(v1027, v1028, sub_1E62CC498, v1034, &aBlock);

        AppComposer.trainerDetailViewBuilder(identifier:currentRoutingContext:)(v1027, v1028, v1873, v1786);
        v1036 = v1027;
        v1849 = v1027;
        v1037 = v1850;
        sub_1E65D76E8();
        v1038 = v1028;
        v1039 = v1770;
        *v1770 = v1036;
        *(v1039 + 8) = v1038;
        *&v1861 = v1038;
        *(v1039 + 16) = 3;
        swift_storeEnumTagMultiPayload();

        v1040 = sub_1E6200DD8(v1039, v1037, &aBlock);
        sub_1E5DFE50C(v1039, &unk_1ED0776E0, &qword_1E65EDC00);
        v1855 = *(v1852 + 2);
        (v1855)(v1820, v1037, v1851);
        v1041 = sub_1E65E4BA8();
        v1042 = v1841;
        *v1841 = v1041;
        *(v1042 + 1) = v1043;
        v1839 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v1044 = sub_1E65E4998();
        v1045 = *(v1764 + 36);
        v1843 = sub_1E604C89C();

        v1046 = v1840;
        v1842 = v1040;
        sub_1E65DE568();
        *v1046 = v1044;
        v1047 = v1861;
        *v1039 = v1849;
        *(v1039 + 8) = v1047;
        *(v1039 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        v1048 = v1029;
        v1049 = v1859;
        sub_1E62CC108(v1048, v1859, v1854);
        sub_1E5DFD1CC(v1039, v1824, &unk_1ED0776E0, &qword_1E65EDC00);
        v1050 = v1851;
        (v1855)(v1821, v1037, v1851);
        p_aBlock = &aBlock;
        v1855 = aBlock;
        v1854 = *(&v1869 + 1);
        v1853 = *(&v1870 + 1);
        v1849 = *(&v1871 + 1);
        v1848 = *(&v1872[0] + 1);
        v1051 = (v1844 + *(v1765 + 80)) & ~*(v1765 + 80);
        v1052 = v1852;
        v1053 = (v1766 + *(v1852 + 80) + v1051) & ~*(v1852 + 80);
        v1054 = (v313 + v1053 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1055 = swift_allocObject();
        sub_1E5E1E528(v1049, v1847 + v1055, v1846);
        sub_1E5FAB460(v1824, v1055 + v1051, &unk_1ED0776E0, &qword_1E65EDC00);
        v1052[4](v1055 + v1053, v1821, v1050);
        v1056 = (v1055 + v1054);
        v1057 = v1871;
        v1056[2] = v1870;
        v1056[3] = v1057;
        v1056[4] = v1872[0];
        v1058 = v1869;
        *v1056 = aBlock;
        v1056[1] = v1058;

        swift_unknownObjectRetain();

        v924 = v1771;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v1039, &unk_1ED0776E0, &qword_1E65EDC00);
        v1059 = v1773;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
        sub_1E62CC0C0(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
        v1060 = v1779;
        v927 = v1774;
        v1061 = v1776;
        sub_1E65E47D8();
        (*(v1775 + 8))(v1059, v1061);
        (*(v1772 + 8))(v924, v927);
        v1062 = sub_1E65E49C8();
        v1063 = swift_getKeyPath();
        *&v1865 = v1062;
        v1064 = sub_1E65E3D08();
        v1065 = (v1060 + *(v1778 + 36));
        *v1065 = v1063;
        v1065[1] = v1064;
        v1066 = *MEMORY[0x1E697E6E8];
        v934 = sub_1E65E3DD8();
        v935 = v1780;
        (*(*(v934 - 8) + 104))(v1780, v1066, v934);
        sub_1E62CC0C0(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
        if (sub_1E65E5B98())
        {
          v1859 = &v1841[v1839];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
          v1067 = v1755;
          sub_1E65E4848();
          sub_1E5DFE50C(v935, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v1060, &unk_1ED0776C0, &qword_1E65F9648);
          v1068 = v1757;
          sub_1E5DFD1CC(v1840, v1757, &unk_1ED0776D0, &qword_1E65F9650);
          v1069 = v1759;
          v1070 = *(v1759 + 16);
          v1071 = v1758;
          v1072 = v1760;
          v1070(v1758, v1067, v1760);
          v1073 = v1859;
          sub_1E5DFD1CC(v1068, v1859, &unk_1ED0776D0, &qword_1E65F9650);
          v1074 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v1070((v1073 + *(v1074 + 48)), v1071, v1072);
          v1075 = *(v1069 + 8);
          v1075(v1067, v1072);
          sub_1E5DFE50C(v1840, &unk_1ED0776D0, &qword_1E65F9650);
          v1075(v1071, v1072);
          sub_1E5DFE50C(v1068, &unk_1ED0776D0, &qword_1E65F9650);
          v1076 = v1841;
          v1077 = &v1841[*(v1754 + 36)];
          v1078 = v1842;
          *v1077 = sub_1E6275B64;
          v1077[1] = v1078;
          v1079 = type metadata accessor for BarButtonItem();
          v1077[2] = 0;
          v1077[3] = 0;
          v1080 = objc_allocWithZone(v1079);

          v1081 = sub_1E625BF8C(v1820, v1076);

          (*(v1852 + 1))(v1850, v1851);
          sub_1E5DFD1CC(v1786, v1753, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v1082 = swift_allocObject();
          *(v1082 + 16) = xmmword_1E65EA660;
          *(v1082 + 32) = v1081;
          v1083 = v1081;
          v1084 = sub_1E65E4B48();
          *&v1861 = v1083;
          if (v1084)
          {
            v1085 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v1086 = 0;
          }

          else
          {
            v1085 = [objc_opt_self() blackColor];
            v1086 = 3;
          }

          v1516 = v1862;
          v1517 = *v1862;
          v1518 = *(v1860 + 8);
          v1519 = swift_allocObject();
          v1862 = *(v1516 + v1518);
          *(v1519 + 16) = v1862;
          if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
          {

            swift_unknownObjectRetain();
            sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
            v1520 = v1569;
          }

          else
          {

            swift_unknownObjectRetain();
            v1520 = MEMORY[0x1E69E7CD0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
          v1521 = v1857;
          (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
          *(&v1596 + 1) = sub_1E62CC440;
          *&v1596 = v1517;
          v1522 = v1753;
          v369 = sub_1E630B390(v1753, v1520, v1082, v1521, 0, 0, v1085, v1086, 1, 0, v1596, v1519);

          v370 = &qword_1ED0770C0;
          v371 = &unk_1E65FA410;
          sub_1E5DFE50C(v1522, &qword_1ED0770C0, &unk_1E65FA410);

          swift_unknownObjectRelease();
          v1416 = v1786;
          goto LABEL_237;
        }

        goto LABEL_293;
      }

      v1444 = v1862;
      if (v357 != 3)
      {
LABEL_339:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1E65E68A8();
        MEMORY[0x1E694D7C0](0xD000000000000026, 0x80000001E6615040);
        LOBYTE(v1865) = 2;
        sub_1E65E69B8();
        goto LABEL_331;
      }

      v1445 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1446 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1447 = (v1855 + v1446 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1448 = swift_allocObject();
      sub_1E5E1E528(v1445, v1448 + v1446, type metadata accessor for AppComposer);
      v1449 = (v1448 + v1447);
      *v1449 = v1027;
      v1449[1] = v1028;
      sub_1E5DF599C(&aBlock, v1448 + ((v1447 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1450 = sub_1E65E4438();
      v1451 = *v1444;
      v1452 = *(v1860 + 8);
      v1453 = swift_allocObject();
      v1862 = *(v1444 + v1452);
      *(v1453 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1454 = v1578;
      }

      else
      {

        swift_unknownObjectRetain();
        v1454 = MEMORY[0x1E69E7CD0];
      }

      v1455 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1404 = sub_1E626CAE8(sub_1E62CC400, v1448, v1450, v1454, MEMORY[0x1E69E7CC0], v1455, 0, 0, 0, 0, 0, 0, 0, v1451, sub_1E62CC440, v1453);

      v1405 = v1829;
      if (!v1829)
      {
        goto LABEL_221;
      }

      v1456 = v1829;
      v1457 = v1404;
      if (![v1456 isViewLoaded])
      {
        goto LABEL_222;
      }

      v1408 = [v1456 view];
      if (!v1408)
      {
LABEL_326:
        __break(1u);
        goto LABEL_327;
      }

      goto LABEL_220;
    case 0x10u:
      v508 = *v356;
      v509 = *(v356 + 1);
      sub_1E65D76E8();
      sub_1E65D76E8();
      sub_1E65D76E8();
      v510 = v508;
      v511 = v1862;
      LODWORD(v1854) = v357;
      sub_1E632331C(v508, v509, &aBlock);
      v1843 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
      v1838 = swift_allocBox();
      v512 = *v511;
      swift_getKeyPath();
      v513 = v1671;
      sub_1E65E4EC8();

      *&v1865 = v510;
      v1847 = v510;
      *(&v1865 + 1) = v509;

      v514 = v1673;
      sub_1E65E4D78();
      (*(v1672 + 8))(v513, v514);

      v1826 = v512;
      *&v1865 = sub_1E65E4ED8();
      *&v1861 = type metadata accessor for AppComposer;
      v515 = v1859;
      sub_1E62CC108(v511, v1859, type metadata accessor for AppComposer);
      v516 = *(v1853 + 80);
      v1836 = v1855 + ((v516 + 16) & ~v516);
      v517 = (v516 + 16) & ~v516;
      v1848 = v517;
      v1855 = (v516 | 7);
      v1835 = (((v1836 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      v518 = ((v1836 + 7) & 0xFFFFFFFFFFFFFFF8);
      v1846 = v518;
      v519 = swift_allocObject();
      v1853 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v515, v519 + v517, type metadata accessor for AppComposer);
      v520 = (v518 + v519);
      *v520 = v510;
      v520[1] = v509;
      v1849 = v509;
      v521 = swift_allocObject();
      *(v521 + 16) = sub_1E62CC484;
      *(v521 + 24) = v519;
      sub_1E65E3BB8();

      v522 = v1674;
      sub_1E65E3BD8();

      sub_1E5FED46C(&unk_1ED077940, &qword_1ED0770E8, &unk_1E65FA4D0);

      v523 = v1677;
      v524 = v1678;
      sub_1E65E3BE8();

      (*(v1675 + 8))(v522, v524);
      sub_1E5FED46C(&qword_1ED077138, &unk_1ED0777B0, &qword_1E65F9678);

      v525 = v1676;
      v526 = v1682;
      sub_1E65E3BD8();

      (*(v1680 + 8))(v523, v526);
      sub_1E5FED46C(&unk_1ED077950, &qword_1ED0770F0, &unk_1E65FA4E0);
      v527 = v1681;
      v1833 = sub_1E65E3BC8();
      (*(v1679 + 8))(v525, v527);
      v528 = v1862;
      v529 = v1859;
      sub_1E62CC108(v1862, v1859, v1861);
      sub_1E5DF650C(v1873, &v1865);
      v1843 = aBlock;
      v1842 = *(&v1869 + 1);
      v1841 = *(&v1870 + 1);
      v1840 = *(&v1871 + 1);
      v1834 = *(&v1872[0] + 1);
      v530 = v1846;
      v531 = (v1846 + 47) & 0xFFFFFFFFFFFFFFF8;
      v532 = swift_allocObject();
      v533 = v1848;
      sub_1E5E1E528(v529, &v1848[v532], v1853);
      sub_1E5DF599C(&v1865, v530 + v532);
      v1832 = v532;
      v534 = (v532 + v531);
      v535 = v1847;
      v536 = v1849;
      *v534 = v1847;
      v534[1] = v536;
      v537 = (v532 + ((v531 + 23) & 0xFFFFFFFFFFFFFFF8));
      v538 = v1872[0];
      v537[3] = v1871;
      v537[4] = v538;
      v539 = v1870;
      v537[1] = v1869;
      v537[2] = v539;
      *v537 = aBlock;
      v540 = v528;
      v541 = v1844;
      sub_1E62CC108(v540, v1844, v1861);
      sub_1E5DF650C(v1873, v1864);
      v542 = (v530 + 23) & 0xFFFFFFFFFFFFFFF8;
      v543 = swift_allocObject();
      sub_1E5E1E528(v541, &v533[v543], v1853);
      v544 = (v530 + v543);
      *v544 = v535;
      v544[1] = v536;
      v1829 = v543;
      sub_1E5DF599C(v1864, v543 + v542);
      v545 = (v543 + ((v542 + 47) & 0xFFFFFFFFFFFFFFF8));
      v546 = v1871;
      *(v545 + 2) = v1870;
      *(v545 + 3) = v546;
      *(v545 + 4) = v1872[0];
      v547 = v1869;
      *v545 = aBlock;
      *(v545 + 1) = v547;
      v548 = v1845;
      sub_1E62CC108(v1862, v1845, v1861);
      v549 = v1852;
      v550 = v1850;
      v551 = v1851;
      (*(v1852 + 2))(v1850, v1839, v1851);
      sub_1E5DF650C(v1873, v1863);
      v552 = &v1835[*(v549 + 80)] & ~*(v549 + 80);
      v553 = (v313 + v552 + 7) & 0xFFFFFFFFFFFFFFF8;
      v554 = swift_allocObject();
      v555 = v548;
      v556 = v1853;
      sub_1E5E1E528(v555, &v1848[v554], v1853);
      v557 = (v1846 + v554);
      v558 = v1847;
      v559 = v1849;
      *v557 = v1847;
      v557[1] = v559;
      v560 = *(v549 + 4);
      v1844 = v554;
      v560(v554 + v552, v550, v551);
      sub_1E5DF599C(v1863, v554 + v553);
      v561 = (v554 + ((v553 + 47) & 0xFFFFFFFFFFFFFFF8));
      v562 = v1871;
      v561[2] = v1870;
      v561[3] = v562;
      v561[4] = v1872[0];
      v563 = v1869;
      *v561 = aBlock;
      v561[1] = v563;
      v564 = v1862;
      v565 = v1827;
      v566 = v1861;
      sub_1E62CC108(v1862, v1827, v1861);
      v567 = swift_allocObject();
      v568 = v1848;
      v1850 = v567;
      v569 = v556;
      sub_1E5E1E528(v565, &v1848[v567], v556);
      v570 = (v1846 + v567);
      v571 = v1849;
      *v570 = v558;
      v570[1] = v571;
      v572 = v1828;
      sub_1E62CC108(v564, v1828, v566);
      v573 = swift_allocObject();
      sub_1E5E1E528(v572, &v568[v573], v569);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v1846 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      v1845 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
      sub_1E65E3368();
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
      sub_1E62BBB50(&qword_1ED077970, &unk_1ED077960, &unk_1E65FA670, sub_1E626F6F0);
      sub_1E62CC0C0(&qword_1ED077178, MEMORY[0x1E699EBD8]);
      v574 = v1711;
      sub_1E65E3098();
      v575 = sub_1E5FED46C(&unk_1ED0779F0, &unk_1ED077790, &qword_1E65F9668);
      v576 = v1718;
      v577 = v1717;
      sub_1E630FCD8(&aBlock, v1717, v575, v1718);
      (*(v1714 + 8))(v574, v577);
      v578 = v1859;
      sub_1E62CC108(v1862, v1859, v1861);
      v579 = swift_allocObject();
      sub_1E5E1E528(v578, &v1848[v579], v1853);
      sub_1E626F9E0();
      v580 = v1726;
      sub_1E6259D5C(sub_1E62CC3F4, v579, v1719);

      sub_1E5DFE50C(v576, &qword_1ED0770E0, &unk_1E65FA4C0);
      *&v1865 = v1833;
      v581 = swift_allocObject();
      v582 = v1871;
      v581[3] = v1870;
      v581[4] = v582;
      v581[5] = v1872[0];
      v583 = v1869;
      v581[1] = aBlock;
      v581[2] = v583;
      v584 = swift_allocObject();
      *(v584 + 16) = sub_1E62CC3BC;
      *(v584 + 24) = v581;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A00, &qword_1E65F9738);
      sub_1E626FB0C();
      sub_1E5FED46C(&qword_1ED077190, &unk_1ED077A00, &qword_1E65F9738);
      v585 = v1712;
      sub_1E65E4958();

      v586 = v580;
      v587 = v1831;
      sub_1E5DFE50C(v586, &unk_1ED0777A0, &qword_1E65F9670);
      v588 = v1862;

      v589 = sub_1E5FED46C(&unk_1ED077A10, &qword_1ED0770F8, &unk_1E65FA4F0);
      v590 = v1713;
      v591 = v1720;
      sub_1E5FEE4C8(v585);
      sub_1E5DFE50C(v585, &qword_1ED0770F8, &unk_1E65FA4F0);
      v592 = v1716;
      sub_1E5FEE4C8(v590);
      v593 = v590;
      v594 = v1849;
      sub_1E5DFE50C(v593, &qword_1ED0770F8, &unk_1E65FA4F0);

      v374 = v1751;
      sub_1E6012F9C(v591, v589);
      v595 = v1854;
      v596 = v592;
      v597 = v1830;
      sub_1E5DFE50C(v596, &qword_1ED0770F8, &unk_1E65FA4F0);
      sub_1E5DFD1CC(v374, v1784, &unk_1ED0777D0, &qword_1E65F9680);
      v598 = v1847;
      v599 = boxed_opaque_existential_1;
      *&v1861 = sub_1E62AD224(v1847, v594, v1839, v597, v587, boxed_opaque_existential_1, &aBlock, v588);
      if (v595 >= 2)
      {
        if (v595 != 3)
        {
          goto LABEL_331;
        }

        v603 = MEMORY[0x1E69E7CC0];
LABEL_169:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077198, &unk_1E65FA6B0);
        sub_1E65DC308();
        v1354 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v1355 = *(v1860 + 8);
        v1356 = swift_allocObject();
        v1862 = *(v588 + v1355);
        *(v1356 + 16) = v1862;
        v1357 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
        v1358 = v1826;

        swift_unknownObjectRetain();
        *(&v1592 + 1) = sub_1E62CC440;
        *&v1592 = v1358;
        v1359 = v1784;
        v369 = sub_1E630B390(v1784, v1861, v603, v1357, v1354, 0, 0, 0, 1, 0, v1592, v1356);

        sub_1E5DFE50C(v1359, &unk_1ED0777D0, &qword_1E65F9680);
        v1360 = sub_1E6307A64();
        [v1360 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        sub_1E5DFE50C(v374, &unk_1ED0777D0, &qword_1E65F9680);
        v1361 = *(v1852 + 1);
        v1362 = v1851;
        v1361(v1831, v1851);
        v1361(v1830, v1362);
        v1361(v1839, v1362);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A20, &qword_1E65F9740);
        v377 = swift_allocObject();
        v600 = sub_1E62B6BBC(v598, v594, v597, v599, &aBlock, v588);
        v375 = v594;
        *(v377 + 32) = v600;
        v378 = (v377 + 32);
        *(v377 + 40) = [objc_opt_self() flexibleSpaceItem];
        v601 = sub_1E62E68EC(v598, v375, v587, &aBlock);

        v602 = 0;
        *(v377 + 48) = v601;
        v603 = MEMORY[0x1E69E7CC0];
        *&v1865 = MEMORY[0x1E69E7CC0];
        v372 = 3;
LABEL_26:
        if (v602 <= 3)
        {
          v604 = 3;
        }

        else
        {
          v604 = v602;
        }

        while (1)
        {
          if (v602 == 3)
          {
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771A0, &unk_1E65FA6C0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            goto LABEL_169;
          }

          if (v604 == v602)
          {
            break;
          }

          v605 = *(v377 + 8 * v602++ + 32);
          if (v605)
          {
            v375 = v605;
            MEMORY[0x1E694D8F0]();
            if (*((v1865 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1865 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v606 = *((v1865 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1E65E5F68();
              v374 = v1751;
            }

            sub_1E65E5FA8();
            v603 = v1865;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_272:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v379 = v1558;
        }

        else
        {
LABEL_7:

          swift_unknownObjectRetain();
          v379 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AD0, &unk_1E65FA7A0);
        v380 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v378);
        *(&v1583 + 1) = sub_1E62CC440;
        *&v1583 = v375;
        v369 = sub_1E630B390(v374, v379, MEMORY[0x1E69E7CC0], v380, 0, 0, 0, 0, 0, 0, v1583, v377);

        v381 = &unk_1ED077800;
        v382 = &qword_1E65F9698;
LABEL_125:
        sub_1E5DFE50C(v374, v381, v382);
        v1221 = sub_1E6307A64();
        [v1221 setLargeTitleDisplayMode_];

        v411 = v372;
LABEL_126:
        sub_1E5DFE50C(v411, v381, v382);
      }

LABEL_266:
      __swift_destroy_boxed_opaque_existential_1(v1873);
      return v369;
    case 0x11u:
      v1102 = *(v356 + 1);

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v1104 = [objc_opt_self() bundleForClass_];
      v1105 = v1862;
      v1106 = *v1862;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1107;
      sub_1E5F9AEA8();
      v1108 = v1810;
      sub_1E65E41C8();
      v1109 = v1781;
      (*(v1832 + 2))(v1809, v1108, v1781);
      v1110 = *(v1860 + 8);
      v1111 = swift_allocObject();
      v1862 = *(v1105 + v1110);
      *(v1111 + 16) = v1862;
      v1112 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1113 = v1567;
      }

      else
      {

        swift_unknownObjectRetain();
        v1113 = MEMORY[0x1E69E7CD0];
      }

      v1114 = v1857;
      v1115 = v1848;
      v1116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
      (*(v1858 + 104))(v1114, *MEMORY[0x1E699CE18], v1112);
      v1117 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v369 = sub_1E626DF90(v1809, v1113, MEMORY[0x1E69E7CC0], v1114, 0, 0, 0, 0, 0, 0, 0, v1106, sub_1E62CC440, v1111);

      (*(v1832 + 1))(v1810, v1109);
      (*(v1849 + 8))(&v356[v1116], v1115);
      goto LABEL_266;
    case 0x12u:
      v776 = *v356;
      v777 = *(v356 + 1);
      v778 = v356[16];
      v779 = sub_1E65DAE38();
      if (v779 == sub_1E65DAE38())
      {
        v780 = 30;
      }

      else
      {
        v780 = 24;
      }

      v781 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      v782 = (*(v1853 + 80) + 33) & ~*(v1853 + 80);
      v783 = swift_allocObject();
      *(v783 + 16) = v776;
      *(v783 + 24) = v777;
      *(v783 + 32) = v778;
      sub_1E5E1E528(v781, v783 + v782, type metadata accessor for AppComposer);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077130, &qword_1E65F96C8));
      sub_1E626F21C();
      v369 = sub_1E6275B68(v780, &unk_1E65FAC20, v783, 0, 0);
      [v369 setModalPresentationStyle_];
      sub_1E5F94E14();
      goto LABEL_266;
    case 0x14u:
      v717 = *(v356 + 1);
      v1856 = *v356;
      v1854 = v717;
      v718 = *(v356 + 3);
      v1860 = *(v356 + 2);
      v1858 = v718;
      *&v1857 = *(v356 + 4);
      v719 = *(v356 + 6);
      v720 = *(v356 + 7);
      if (v357 > 1)
      {
        v721 = v1859;
        if (v357 != 3)
        {
          goto LABEL_331;
        }

        v722 = 24;
      }

      else
      {
        v721 = v1859;
        if (v357)
        {
          v722 = 30;
        }

        else
        {
          v722 = 24;
          if (v356[40] < 2u)
          {
            v722 = 2;
          }
        }
      }

      *&v1861 = v722;
      v1363 = v1855;
      sub_1E62CC108(v1862, v721, type metadata accessor for AppComposer);
      v1364 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1365 = (v1363 + v1364 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1366 = (v1365 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1367 = (v1366 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1368 = (v1367 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1369 = swift_allocObject();
      sub_1E5E1E528(v721, v1369 + v1364, type metadata accessor for AppComposer);
      v1370 = (v1369 + v1365);
      v1371 = v1854;
      *v1370 = v1856;
      v1370[1] = v1371;
      v1372 = (v1369 + v1366);
      v1373 = v1858;
      *v1372 = v1860;
      v1372[1] = v1373;
      *(v1369 + v1367) = v1857;
      *(v1369 + v1368) = v719;
      *(v1369 + ((v1368 + 15) & 0xFFFFFFFFFFFFFFF8)) = v720;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077910, &qword_1E65F96C0));
      v1374 = v720;
      v369 = sub_1E6275B68(v1861, &unk_1E65FAC18, v1369, 0, 0);
      [v369 setModalPresentationStyle_];

      goto LABEL_266;
    case 0x15u:
      v1007 = *v356;
      v1008 = *(v356 + 1);
      v1009 = *(v356 + 2);
      v1010 = *(v356 + 3);
      v1011 = *(v356 + 4);
      v1012 = v356[40];
      v1013 = *(v356 + 6);
      v1014 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
      sub_1E5FAB460(&v356[*(v1014 + 112)], v1834, &unk_1ED077780, &unk_1E66097F0);
      v1860 = v1009;
      v1858 = v1010;
      *&v1857 = v1011;
      v1856 = v1007;
      v1854 = v1008;
      if (v357 > 1)
      {
        v1015 = v1859;
        if (v357 != 3)
        {
          goto LABEL_331;
        }

        v1016 = 24;
      }

      else
      {
        v1015 = v1859;
        if (v357)
        {
          v1016 = 30;
        }

        else
        {
          v1016 = 24;
          if (v1012 < 2)
          {
            v1016 = 2;
          }
        }
      }

      *&v1861 = v1016;
      sub_1E62CC108(v1862, v1015, type metadata accessor for AppComposer);
      v1431 = v1685;
      sub_1E5DFD1CC(v1834, v1685, &unk_1ED077780, &unk_1E66097F0);
      v1432 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1433 = (v1855 + v1432 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1434 = (v1433 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1435 = (v1434 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1436 = (v1435 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1437 = (*(v1683 + 80) + v1436 + 8) & ~*(v1683 + 80);
      v1438 = swift_allocObject();
      sub_1E5E1E528(v1015, v1438 + v1432, type metadata accessor for AppComposer);
      v1439 = (v1438 + v1433);
      v1440 = v1854;
      *v1439 = v1856;
      v1439[1] = v1440;
      v1441 = (v1438 + v1434);
      v1442 = v1858;
      *v1441 = v1860;
      v1441[1] = v1442;
      *(v1438 + v1435) = v1857;
      *(v1438 + v1436) = v1013;
      sub_1E5FAB460(v1431, v1438 + v1437, &unk_1ED077780, &unk_1E66097F0);
      v1443 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077080, qword_1E65F94F8));
      v369 = sub_1E6275B68(v1861, &unk_1E65FAC10, v1438, 0, 0);
      [v369 setModalPresentationStyle_];
      sub_1E5DFE50C(v1834, &unk_1ED077780, &unk_1E66097F0);
      goto LABEL_266;
    case 0x16u:
      v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v660 = v659[12];
      v661 = &v356[v659[16]];
      v663 = *v661;
      v662 = *(v661 + 1);
      *&v1862 = v663;
      *&v1861 = v662;
      v664 = v659[20];
      v665 = &v356[v659[24]];
      v666 = *(v665 + 1);
      v1860 = *v665;
      v667 = &v356[v659[28]];
      v668 = v667[1];
      v1859 = *v667;
      v669 = v659[32];
      v670 = v659[36];
      v671 = *(v356 + 1);
      aBlock = *v356;
      v1869 = v671;
      *&v1870 = *(v356 + 4);
      v672 = v1849;
      v673 = v1836;
      (*(v1849 + 32))(v1836, &v356[v660], v1848);
      v674 = v1687;
      sub_1E5FAB460(&v356[v664], v1687, &qword_1ED076220, &unk_1E65FA4A0);
      v675 = &v356[v669];
      v676 = v1690;
      sub_1E5FAB460(v675, v1690, &unk_1ED077770, &unk_1E660C190);
      v677 = &v356[v670];
      v678 = v1694;
      sub_1E5FAB460(v677, v1694, &unk_1ED07B500, &qword_1E65F0EE0);
      v679 = v1854 + *(type metadata accessor for AppEnvironment() + 88);
      v680 = PlayerService.makeStandardPlayerViewController.getter();
      v369 = v680(&aBlock, v673, v1862, v1861, v674, v1860, v666, v1859, v668, v678, v676);

      sub_1E5DFE50C(v678, &unk_1ED07B500, &qword_1E65F0EE0);
      sub_1E5DFE50C(v676, &unk_1ED077770, &unk_1E660C190);
      sub_1E5DFE50C(v674, &qword_1ED076220, &unk_1E65FA4A0);
      (*(v672 + 8))(v1836, v1848);
      sub_1E6009FC0(&aBlock);
      goto LABEL_266;
    case 0x17u:
      v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v682 = v681[12];
      v683 = &v356[v681[16]];
      v684 = *v683;
      v685 = v683[1];
      v686 = v1691;
      v687 = v356[v681[20]];
      v688 = v1689;
      (*(v1691 + 32))(v1689, v356, v1811);
      v689 = v1695;
      v690 = &v356[v682];
      v691 = v1693;
      v692 = v1697;
      (*(v1695 + 32))(v1693, v690, v1697);
      v693 = v1854 + *(type metadata accessor for AppEnvironment() + 88);
      v694 = PlayerService.makeTipPlayerViewController.getter();
      v369 = v694(v688, v691, v684, v685, v687);

      sub_1E61B73EC(v684, v685);
      (*(v689 + 8))(v691, v692);
      (*(v686 + 8))(v688, v1811);
      goto LABEL_266;
    case 0x19u:
      if (v357 < 2)
      {
        v838 = *v356;
        v839 = (v1862 + *(v1860 + 9));
        v840 = *v839;
        v841 = v839[1];
        sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1873, v1872);
        *&aBlock = v840;
        *(&aBlock + 1) = v841;
        LOBYTE(v1869) = v357;
        v842 = *(type metadata accessor for AppEnvironment() + 68);
        sub_1E5FA9D34(v840, v841);
        active = InteropService.makeActiveWorkoutPlanViewController.getter();
        v1866 = &type metadata for CatalogPageRoutingContextNavigator;
        v1867 = sub_1E61379FC();
        *&v1865 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1865 + 16);
        v844 = active(v838, v840, v841, &v1865);
LABEL_119:
        v369 = v844;

        sub_1E6137AAC(&aBlock);
LABEL_120:
        __swift_destroy_boxed_opaque_existential_1(&v1865);
        goto LABEL_266;
      }

      v1393 = v1862;
      if (v357 != 3)
      {
        goto LABEL_331;
      }

      v1394 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1395 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1396 = (v1855 + v1395 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1397 = swift_allocObject();
      sub_1E5E1E528(v1394, v1397 + v1395, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1397 + v1396);
      v1398 = sub_1E65E4438();
      v1399 = *v1393;
      v1400 = *(v1860 + 8);
      v1401 = swift_allocObject();
      v1862 = *(v1393 + v1400);
      *(v1401 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1402 = v1576;
      }

      else
      {

        swift_unknownObjectRetain();
        v1402 = MEMORY[0x1E69E7CD0];
      }

      v1403 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1404 = sub_1E626CAE8(sub_1E62CC3F8, v1397, v1398, v1402, MEMORY[0x1E69E7CC0], v1403, 0, 0, 0, 0, 0, 0, 0, v1399, sub_1E62CC440, v1401);

      v1405 = v1829;
      if (!v1829)
      {
        goto LABEL_221;
      }

      v1406 = v1829;
      v1407 = v1404;
      if (![v1406 isViewLoaded])
      {
        goto LABEL_222;
      }

      v1408 = [v1406 view];
      if (!v1408)
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      goto LABEL_220;
    case 0x1Au:
      v988 = v1715;
      sub_1E5E1E528(v356, v1715, MEMORY[0x1E69CD768]);
      v989 = v1696;
      sub_1E62CC108(v988, v1696, MEMORY[0x1E69CD768]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_330;
          }

          v1539 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
          v1540 = InteropService.makeNotificationViewController.getter();
          v369 = v1540();
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            sub_1E62BC770(v988, MEMORY[0x1E69CD768]);
            v369 = *v989;
            goto LABEL_266;
          }

          v1269 = v1849;
          v1270 = v1836;
          v1271 = v1848;
          (*(v1849 + 32))(v1836, v989, v1848);
          v1272 = v1612;
          (*(v1269 + 16))(v1612, v1270, v1271);
          (*(v1269 + 56))(v1272, 0, 1, v1271);
          v1273 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
          v1274 = InteropService.makeAccountPageViewController.getter();
          v369 = v1274(v1272);

          sub_1E5DFE50C(v1272, &qword_1ED072340, &qword_1E65EA410);
          (*(v1269 + 8))(v1270, v1271);
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 5)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v991 = v357;
            v992 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
            v993 = InteropService.makePrivacyLinkListViewController.getter();
            sub_1E5DF650C(v1873, &aBlock);
            v994 = swift_allocObject();
            sub_1E5DF599C(&aBlock, v994 + 16);
            v995 = v991 >= 2;
            v996 = v991 < 2;
            *(v994 + 56) = v996;
            if (v995)
            {
              v997 = -64;
            }

            else
            {
              v997 = 0;
            }

            *(v994 + 64) = v997;
            sub_1E5FA9D20(v996, v997);
            v369 = v993(sub_1E62CC3C0, v994);

            sub_1E5F94E00(v996, v997);
            goto LABEL_257;
          }

          v1523 = MEMORY[0x1E697BAD0];
          goto LABEL_251;
        }

        if (EnumCaseMultiPayload == 6)
        {
          v1523 = MEMORY[0x1E697BAC8];
LABEL_251:
          v1541 = *v1523;
          sub_1E65E5C78();
          v1542 = v1612;
          sub_1E65D74C8();

          v1543 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
          v1544 = InteropService.makeAccountPageViewController.getter();
          v369 = v1544(v1542);

          sub_1E5DFE50C(v1542, &qword_1ED072340, &qword_1E65EA410);
          goto LABEL_257;
        }

        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_330;
        }

        v1545 = sub_1E65DAE38();
        if (v1545 == sub_1E65DAE38())
        {
          v1546 = 30;
        }

        else
        {
          v1546 = 24;
        }

        v1547 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1548 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
        v1549 = swift_allocObject();
        sub_1E5E1E528(v1547, v1549 + v1548, type metadata accessor for AppComposer);
        v1550 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077128, &unk_1E65FA5D0));
        v369 = sub_1E6275B68(v1546, &unk_1E65FAC08, v1549, 0, 0);
      }

LABEL_257:
      sub_1E62BC770(v988, MEMORY[0x1E69CD768]);
      goto LABEL_266;
    case 0x1Bu:
      v403 = v1741;
      sub_1E5E1E528(v356, v1741, type metadata accessor for PlaylistType);
      if (v357 < 2)
      {
        v404 = v1629;
        sub_1E62CC108(v403, v1629, type metadata accessor for PlaylistType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v406 = v1623;
          v405 = v1624;
          v407 = v404;
          v408 = v1625;
          (*(v1624 + 32))(v1623, v407, v1625);
          v369 = sub_1E62BA594(v406, boxed_opaque_existential_1, v1862, type metadata accessor for RouteDetourNavigationControllerRoutingContext, &off_1F5FB76B8, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
          (*(v405 + 8))(v406, v408);
        }

        else
        {
          v369 = sub_1E62BA414(*v404, v404[1], boxed_opaque_existential_1, v1862, type metadata accessor for RouteDetourNavigationControllerRoutingContext, &off_1F5FB76B8, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
        }

        goto LABEL_261;
      }

      if (v357 != 3)
      {
        goto LABEL_331;
      }

      v1293 = v1597;
      sub_1E62CC108(v403, v1597, type metadata accessor for PlaylistType);
      v1294 = swift_getEnumCaseMultiPayload();
      v1295 = v1862;
      if (v1294 == 1)
      {
        v1297 = v1623;
        v1296 = v1624;
        v1298 = v1625;
        (*(v1624 + 32))(v1623, v1293, v1625);
        v1299 = sub_1E62BA594(v1297, boxed_opaque_existential_1, v1295, type metadata accessor for RouteDetourNavigationControllerRoutingContext, &off_1F5FB76B8, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
        (*(v1296 + 8))(v1297, v1298);
      }

      else
      {
        v1299 = sub_1E62BA414(*v1293, v1293[1], boxed_opaque_existential_1, v1862, type metadata accessor for RouteDetourNavigationControllerRoutingContext, &off_1F5FB76B8, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
      }

      v1524 = swift_allocObject();
      *(v1524 + 16) = v1299;
      v1525 = v1299;
      v1526 = sub_1E65E4438();
      v1527 = *v1295;
      v1528 = *(v1860 + 8);
      v1529 = swift_allocObject();
      v1862 = *(v1295 + v1528);
      *(v1529 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1530 = v1574;
      }

      else
      {

        swift_unknownObjectRetain();
        v1530 = MEMORY[0x1E69E7CD0];
      }

      v1531 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1532 = sub_1E626CAE8(sub_1E62CC460, v1524, v1526, v1530, MEMORY[0x1E69E7CC0], v1531, 0, 0, 0, 0, 0, 0, 0, v1527, sub_1E62CC440, v1529);

      v1533 = v1829;
      if (v1829)
      {
        v1534 = v1829;
        v1535 = v1532;
        if ([v1534 isViewLoaded])
        {
          v1536 = [v1534 view];
          if (!v1536)
          {
LABEL_329:
            __break(1u);
LABEL_330:
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1E65E68A8();
            MEMORY[0x1E694D7C0](0xD000000000000017, 0x80000001E6614EE0);
            sub_1E65E69B8();
            MEMORY[0x1E694D7C0](0xD000000000000015, 0x80000001E6614F00);
            while (1)
            {
LABEL_331:
              sub_1E65E69D8();
              __break(1u);
            }
          }

          v1537 = v1536;
          v1538 = [v1536 snapshotViewAfterScreenUpdates_];

          goto LABEL_260;
        }
      }

      else
      {
        v1551 = v1532;
      }

      v1538 = 0;
LABEL_260:
      v1552 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v369 = sub_1E630B7AC(v1532, v1538);

LABEL_261:
      sub_1E62BC770(v403, type metadata accessor for PlaylistType);
      goto LABEL_266;
    case 0x1Cu:
      v395 = v1852;
      v396 = v1850;
      v397 = v1851;
      (*(v1852 + 4))(v1850, v356, v1851);
      v398 = (v1862 + *(v1860 + 9));
      v399 = *v398;
      v400 = v398[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v399;
      *(&aBlock + 1) = v400;
      LOBYTE(v1869) = v357;
      v401 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v399, v400);
      v402 = InteropService.makeWorkoutPlanDetailViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v369 = v402(v396, v399, v400, &v1865);

      sub_1E6137AAC(&aBlock);
      v395[1](v396, v397);
      goto LABEL_120;
    case 0x1Du:
      v1087 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v1088 = v1783;
      v1089 = *(v1783 + 32);
      v1089(v1818, v356, v1822);
      v1090 = v1762;
      v1091 = *(v1762 + 32);
      v1092 = &v356[v1087];
      v1093 = v1782;
      v1094 = v1763;
      (v1091)(v1782, v1092, v1763);
      if (v357 >= 2)
      {
        v1854 = v1091;
        *&v1861 = v1089;
        v1458 = v1862;
        if (v357 != 3)
        {
          goto LABEL_331;
        }

        v1459 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1460 = v1783 + 16;
        (*(v1783 + 16))(v1649, v1818, v1822);
        v1461 = v1090 + 16;
        (*(v1090 + 16))(v1650, v1782, v1094);
        sub_1E5DF650C(v1873, &aBlock);
        v1462 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
        v1463 = (v1855 + *(v1460 + 64) + v1462) & ~*(v1460 + 64);
        v1464 = (v1598 + *(v1461 + 64) + v1463) & ~*(v1461 + 64);
        v1465 = v1458;
        v1466 = (v1599 + v1464 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1467 = swift_allocObject();
        sub_1E5E1E528(v1459, v1467 + v1462, type metadata accessor for AppComposer);
        v1468 = v1467 + v1463;
        v1469 = v1763;
        (v1861)(v1468, v1649, v1822);
        (v1854)(v1467 + v1464, v1650, v1469);
        sub_1E5DF599C(&aBlock, v1467 + v1466);
        v1470 = sub_1E65E4438();
        v1471 = *v1465;
        v1472 = *(v1860 + 8);
        v1473 = swift_allocObject();
        v1862 = *(v1465 + v1472);
        *(v1473 + 16) = v1862;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1474 = v1579;
        }

        else
        {

          swift_unknownObjectRetain();
          v1474 = MEMORY[0x1E69E7CD0];
        }

        v1475 = v1829;
        v1476 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
        objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

        v1477 = sub_1E626CAE8(sub_1E62CC3E8, v1467, v1470, v1474, MEMORY[0x1E69E7CC0], v1476, 0, 0, 0, 0, 0, 0, 0, v1471, sub_1E62CC440, v1473);

        v1478 = v1822;
        if (v1475)
        {
          v1479 = v1475;
          v1480 = [v1479 isViewLoaded];
          v1481 = v1818;
          if (v1480)
          {
            v1482 = [v1479 view];
            if (!v1482)
            {
LABEL_327:
              __break(1u);
              goto LABEL_328;
            }

            v1483 = v1482;
            v1484 = [v1482 snapshotViewAfterScreenUpdates_];
          }

          else
          {
            v1484 = 0;
          }

          v1556 = v1783;
        }

        else
        {
          v1484 = 0;
          v1556 = v1783;
          v1481 = v1818;
        }

        v1557 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v369 = sub_1E630B7AC(v1477, v1484);

        (*(v1762 + 8))(v1782, v1469);
        (*(v1556 + 8))(v1481, v1478);
        goto LABEL_266;
      }

      v1095 = (v1862 + *(v1860 + 9));
      v1096 = v1093;
      v1097 = *v1095;
      v1098 = v1095[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1097;
      *(&aBlock + 1) = v1098;
      LOBYTE(v1869) = v357;
      v1099 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1097, v1098);
      v1100 = InteropService.makeWorkoutPlanAlternativeViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v1101 = v1818;
      v369 = v1100(v1818, v1096, v1097, v1098, &v1865);

      sub_1E6137AAC(&aBlock);
      (*(v1090 + 8))(v1096, v1094);
      (*(v1088 + 8))(v1101, v1822);
      goto LABEL_120;
    case 0x1Eu:
      v1123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      v1124 = *&v356[*(v1123 + 48)];
      v1125 = *&v356[*(v1123 + 64)];
      v698 = v1722;
      v699 = v1721;
      v1126 = v356;
      v701 = v1725;
      (*(v1722 + 32))(v1721, v1126, v1725);
      v1127 = (v1862 + *(v1860 + 9));
      v1128 = *v1127;
      v1129 = v1127[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1128;
      *(&aBlock + 1) = v1129;
      LOBYTE(v1869) = v357;
      v1130 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1128, v1129);
      v1131 = InteropService.makeWorkoutPlanPreferenceViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v1026 = v1131(v1128, v1129, v699, v1124, v1125, &v1865);
      goto LABEL_113;
    case 0x1Fu:
      v998 = *&v356[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48)];
      v999 = v1727;
      v1000 = v1724;
      v1001 = v1728;
      (*(v1727 + 32))(v1724, v356, v1728);
      v1002 = (v1862 + *(v1860 + 9));
      v1003 = *v1002;
      v1004 = v1002[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1003;
      *(&aBlock + 1) = v1004;
      LOBYTE(v1869) = v357;
      v1005 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1003, v1004);
      v1006 = InteropService.makeWorkoutPlanReviewViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v369 = v1006(v1000, v998, v1003, v1004, &v1865);

      sub_1E6137AAC(&aBlock);
      (*(v999 + 8))(v1000, v1001);
      goto LABEL_120;
    case 0x20u:
      v1017 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      v1018 = *&v356[*(v1017 + 48)];
      v1019 = *&v356[*(v1017 + 64)];
      v698 = v1730;
      v699 = v1729;
      v1020 = v356;
      v701 = v1732;
      (*(v1730 + 32))(v1729, v1020, v1732);
      v1021 = (v1862 + *(v1860 + 9));
      v1022 = *v1021;
      v1023 = v1021[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1022;
      *(&aBlock + 1) = v1023;
      LOBYTE(v1869) = v357;
      v1024 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1022, v1023);
      v1025 = InteropService.makeEditWorkoutPlanScheduleViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v1026 = v1025(v699, v1019, v1018, v1022, v1023, &v1865);
LABEL_113:
      v369 = v1026;

      goto LABEL_114;
    case 0x21u:
      v695 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      v696 = v356[*(v695 + 48)];
      v697 = v356[*(v695 + 64)];
      v698 = v1733;
      v699 = v1731;
      v700 = v356;
      v701 = v1734;
      (*(v1733 + 32))(v1731, v700, v1734);
      v702 = (v1862 + *(v1860 + 9));
      v703 = *v702;
      v704 = v702[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v703;
      *(&aBlock + 1) = v704;
      LOBYTE(v1869) = v357;
      v705 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v703, v704);
      v706 = InteropService.makeWorkoutPlanSummaryViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v369 = v706(v699, v696, v697, &v1865, v703, v704);
LABEL_114:

      sub_1E6137AAC(&aBlock);
      (*(v698 + 8))(v699, v701);
      goto LABEL_120;
    case 0x22u:
      v412 = v1862;
      v413 = v1859;
      v1839 = type metadata accessor for AppComposer;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      v414 = *(v1853 + 80);
      v415 = v1855;
      v1841 = v1855 + ((v414 + 16) & ~v414);
      v1853 = ((v414 + 16) & ~v414);
      v1846 = (v414 | 7);
      v416 = swift_allocObject();
      v1842 = type metadata accessor for AppComposer;
      v417 = v416;
      boxed_opaque_existential_1 = v416;
      sub_1E5E1E528(v413, v416 + ((v414 + 16) & ~v414), type metadata accessor for AppComposer);
      sub_1E65E5148();
      LODWORD(v1854) = v357;
      *&v1861 = sub_1E65E5138();
      v418 = v1844;
      sub_1E62CC108(v412, v1844, type metadata accessor for AppComposer);
      v419 = (v414 + 32) & ~v414;
      v420 = v415 + v419;
      v1836 = v419;
      v1835 = v420;
      v421 = swift_allocObject();
      v1849 = v421;
      v1840 = &unk_1E65FAC50;
      *(v421 + 16) = &unk_1E65FAC50;
      *(v421 + 24) = v417;
      sub_1E5E1E528(v418, v421 + v419, v1842);
      *(v421 + v420) = 0;
      v422 = v421 + (v420 & 0xFFFFFFFFFFFFFFF8);
      v1844 = sub_1E6172524;
      *(v422 + 8) = sub_1E6172524;
      *(v422 + 16) = 0;
      v423 = (v421 + (((v420 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      v424 = MEMORY[0x1E69AB380];
      v425 = v1861;
      *v423 = v1861;
      v423[1] = v424;
      v426 = v1862;
      v427 = v1839;
      sub_1E62CC108(v1862, v1845, v1839);
      v428 = (v414 + 48) & ~v414;
      v429 = v1855 + v428;
      v1834 = v428;
      v1855 = ((v1855 + v428) & 0xFFFFFFFFFFFFFFF8);
      v430 = swift_allocObject();
      v1848 = v430;
      v431 = boxed_opaque_existential_1;
      *(v430 + 16) = v1840;
      *(v430 + 24) = v431;
      *(v430 + 32) = v425;
      *(v430 + 40) = MEMORY[0x1E69AB380];
      sub_1E5E1E528(v1845, v430 + v428, v1842);
      v429[v430] = 0;
      v432 = v1855 + v430;
      v433 = v1844;
      *(v432 + 1) = v1844;
      *(v432 + 2) = 0;
      v434 = v426;
      v435 = v1827;
      sub_1E62CC108(v434, v1827, v427);
      v436 = (v429 + 7) & 0xFFFFFFFFFFFFFFF8;
      v437 = swift_allocObject();
      v438 = v1840;
      v437[2] = v1840;
      v437[3] = v431;
      v437[4] = v1861;
      v437[5] = MEMORY[0x1E69AB380];
      v439 = v1842;
      sub_1E5E1E528(v435, v437 + v1834, v1842);
      v440 = v437 + v436;
      *v440 = v433;
      *(v440 + 1) = 0;
      v440[16] = 0;
      v441 = v1828;
      sub_1E62CC108(v1862, v1828, v1839);
      v442 = swift_allocObject();
      v443 = boxed_opaque_existential_1;
      *(v442 + 16) = v438;
      *(v442 + 24) = v443;
      sub_1E5E1E528(v441, &v1836[v442], v439);
      swift_retain_n();
      swift_retain_n();
      sub_1E65D76E8();
      v1847 = v437;
      v1855 = v442;
      v444 = v1853;
      v445 = v1841;
      v1845 = 0x80000001E6615070;
      if (v1854 >= 2)
      {
        if (v1854 != 3)
        {
          goto LABEL_331;
        }

        v1840 = type metadata accessor for AppComposer;
        v1300 = v1862;
        v1301 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1873, &aBlock);
        v1302 = ((v1841 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1842 = v1302;
        v1834 = (v1302 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1303 = swift_allocObject();
        v1832 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v1301, v1853 + v1303, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v1302 + v1303);
        v1844 = v1303;
        v1304 = (v1303 + ((v1302 + 47) & 0xFFFFFFFFFFFFFFF8));
        v1305 = v1845;
        *v1304 = 0xD000000000000016;
        v1304[1] = v1305;
        v1306 = v1303 + ((((v1302 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        *v1306 = v1861;
        v1839 = &unk_1E65FAC58;
        *(v1306 + 1) = MEMORY[0x1E69AB380];
        *(v1306 + 2) = &unk_1E65FAC58;
        boxed_opaque_existential_1 = &unk_1E65FAC60;
        *(v1306 + 3) = v1849;
        *(v1306 + 4) = &unk_1E65FAC60;
        v1836 = &unk_1E65FAC68;
        *(v1306 + 5) = v1848;
        *(v1306 + 6) = &unk_1E65FAC68;
        v1835 = &unk_1E65FAC70;
        *(v1306 + 7) = v1847;
        *(v1306 + 8) = &unk_1E65FAC70;
        *(v1306 + 9) = v1855;
        v1306[80] = 0;
        v1307 = v1840;
        sub_1E62CC108(v1300, v1301, v1840);
        v1845 = swift_allocObject();
        v1308 = v1853;
        sub_1E5E1E528(v1301, v1853 + v1845, type metadata accessor for AppComposer);
        sub_1E62CC108(v1300, v1301, v1307);
        sub_1E5DF650C(v1873, &aBlock);
        v1309 = v1852;
        v1833 = *(v1852 + 2);
        v1310 = v1851;
        (v1833)(v1850, v1843, v1851);
        v1311 = v1834;
        v1312 = (v1834 + *(v1309 + 80) + 80) & ~*(v1309 + 80);
        v1313 = swift_allocObject();
        sub_1E5E1E528(v1301, v1308 + v1313, v1832);
        sub_1E5DF599C(&aBlock, v1842 + v1313);
        v1314 = (v1313 + v1311);
        v1840 = v1313;
        *v1314 = v1861;
        v1315 = v1839;
        v1314[1] = MEMORY[0x1E69AB380];
        v1314[2] = v1315;
        v1316 = boxed_opaque_existential_1;
        v1314[3] = v1849;
        v1314[4] = v1316;
        v1317 = v1836;
        v1314[5] = v1848;
        v1314[6] = v1317;
        v1318 = v1835;
        v1314[7] = v1847;
        v1314[8] = v1318;
        v1314[9] = v1855;
        v1319 = v1850;
        v1309[4](v1313 + v1312, v1850, v1310);
        (v1833)(v1319, v1843, v1310);
        v1842 = type metadata accessor for ArtworkDescriptor();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1839 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        boxed_opaque_existential_1 = type metadata accessor for ItemMetrics();
        v1836 = type metadata accessor for SectionMetrics();
        type metadata accessor for ViewDescriptor();
        sub_1E62CC0C0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E62CC0C0(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E62CC0C0(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E62CC0C0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        v1320 = v1861;
        v1321 = v1602;
        sub_1E65E1EB8();
        v1322 = sub_1E65E2DA8();
        v1323 = 0;
        v1324 = 0;
        v1325 = 0;
        v1326 = 0;
        v1327 = 0;
        v1328 = 0;
        v1329 = 0;
        v1330 = 0;
        v1331 = 0;
        v1332 = 0;
        if (v1322)
        {
          v1331 = &unk_1E65FAC70;
          v1329 = &unk_1E65FAC68;
          v1327 = &unk_1E65FAC60;
          v1325 = &unk_1E65FAC58;
          v1324 = MEMORY[0x1E69AB380];
          v1323 = v1320;
          v1326 = v1849;
          v1328 = v1848;
          v1330 = v1847;
          v1332 = v1855;
        }

        *&aBlock = v1323;
        *(&aBlock + 1) = v1324;
        *&v1869 = v1325;
        *(&v1869 + 1) = v1326;
        *&v1870 = v1327;
        *(&v1870 + 1) = v1328;
        *&v1871 = v1329;
        *(&v1871 + 1) = v1330;
        *&v1872[0] = v1331;
        *(&v1872[0] + 1) = v1332;
        sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450);
        v1333 = v1606;
        v1334 = v1604;
        sub_1E630FFE8(&aBlock, v1604, v1606);
        (*(v1603 + 8))(v1321, v1334);
        v482 = v1862;
        v1335 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1336 = swift_allocObject();
        sub_1E5E1E528(v1335, v1853 + v1336, type metadata accessor for AppComposer);
        sub_1E6072124();
        v1337 = v1605;
        sub_1E6259D5C(sub_1E62CC418, v1336, v1607);

        sub_1E5DFE50C(v1333, &unk_1ED077720, &qword_1E65EEE40);
        sub_1E6072098();
        v486 = v1608;
        v1338 = v1747;
        sub_1E5FEE4C8(v1337);
        v488 = &qword_1ED073E10;
        v489 = &unk_1E65FA460;
        sub_1E5DFE50C(v1337, &qword_1ED073E10, &unk_1E65FA460);
        v490 = v1609;
        sub_1E5FEE4C8(v486);
        sub_1E6071E58();
        v491 = v1750;
        sub_1E62DFB74(v490, v1748, v1338);
      }

      else
      {
        v1840 = type metadata accessor for AppComposer;
        v446 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1873, &aBlock);
        v447 = (v445 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1834 = v447;
        v448 = (v445 + 55) & 0xFFFFFFFFFFFFFFF8;
        v449 = swift_allocObject();
        v1844 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v446, v444 + v449, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v449 + v447);
        *(v449 + v447 + 40) = 0;
        v1842 = v449;
        v450 = (v449 + v448);
        v451 = v1845;
        *v450 = 0xD000000000000016;
        v450[1] = v451;
        v452 = (v449 + ((v448 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v452 = v1861;
        v1839 = &unk_1E65FAC58;
        v452[1] = MEMORY[0x1E69AB380];
        v452[2] = &unk_1E65FAC58;
        boxed_opaque_existential_1 = &unk_1E65FAC60;
        v452[3] = v1849;
        v452[4] = &unk_1E65FAC60;
        v1836 = &unk_1E65FAC68;
        v452[5] = v1848;
        v452[6] = &unk_1E65FAC68;
        v1835 = &unk_1E65FAC70;
        v452[7] = v1847;
        v452[8] = &unk_1E65FAC70;
        v452[9] = v1855;
        v453 = v1862;
        v454 = v1840;
        sub_1E62CC108(v1862, v446, v1840);
        v1845 = swift_allocObject();
        sub_1E5E1E528(v446, v1853 + v1845, v1844);
        sub_1E62CC108(v453, v446, v454);
        sub_1E5DF650C(v1873, &aBlock);
        v455 = v1852;
        v1833 = *(v1852 + 2);
        v456 = v1851;
        (v1833)(v1850, v1843, v1851);
        v457 = v1834;
        v458 = (v1834 + 47) & 0xFFFFFFFFFFFFFFF8;
        v459 = (v458 + *(v455 + 80) + 80) & ~*(v455 + 80);
        v460 = swift_allocObject();
        sub_1E5E1E528(v1859, v1853 + v460, v1844);
        sub_1E5DF599C(&aBlock, v460 + v457);
        v461 = (v460 + v458);
        v1840 = v460;
        *v461 = v1861;
        v462 = v1839;
        v461[1] = MEMORY[0x1E69AB380];
        v461[2] = v462;
        v463 = boxed_opaque_existential_1;
        v461[3] = v1849;
        v461[4] = v463;
        v464 = v1836;
        v461[5] = v1848;
        v461[6] = v464;
        v465 = v1835;
        v461[7] = v1847;
        v461[8] = v465;
        v461[9] = v1855;
        v466 = v1850;
        v455[4](v460 + v459, v1850, v456);
        (v1833)(v466, v1843, v456);
        v1844 = type metadata accessor for ArtworkDescriptor();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1839 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        boxed_opaque_existential_1 = type metadata accessor for ItemMetrics();
        v1836 = type metadata accessor for SectionMetrics();
        type metadata accessor for ViewDescriptor();
        sub_1E62CC0C0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E62CC0C0(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E62CC0C0(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E62CC0C0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        v467 = v1861;
        v468 = v1630;
        sub_1E65E2448();
        v469 = sub_1E65E2DA8();
        v470 = 0;
        v471 = 0;
        v472 = 0;
        v473 = 0;
        v474 = 0;
        v475 = 0;
        v476 = 0;
        v477 = 0;
        v478 = 0;
        v479 = 0;
        if (v469)
        {
          v478 = MEMORY[0x1E69AB380];
          v477 = &unk_1E65FAC58;
          v475 = &unk_1E65FAC60;
          v473 = &unk_1E65FAC68;
          v471 = &unk_1E65FAC70;
          v470 = v1855;
          v472 = v1847;
          v474 = v1848;
          v476 = v1849;
          v479 = v467;
        }

        *&aBlock = v479;
        *(&aBlock + 1) = v478;
        *&v1869 = v477;
        *(&v1869 + 1) = v476;
        *&v1870 = v475;
        *(&v1870 + 1) = v474;
        *&v1871 = v473;
        *(&v1871 + 1) = v472;
        *&v1872[0] = v471;
        *(&v1872[0] + 1) = v470;
        sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38);
        v480 = v1634;
        v481 = v1632;
        sub_1E630FFE8(&aBlock, v1632, v1634);
        (*(v1631 + 8))(v468, v481);
        v482 = v1862;
        v483 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v484 = swift_allocObject();
        sub_1E5E1E528(v483, v1853 + v484, type metadata accessor for AppComposer);
        sub_1E6071EE4();
        v485 = v1633;
        sub_1E6259D5C(sub_1E62CC418, v484, v1635);

        sub_1E5DFE50C(v480, &qword_1ED073DF8, &unk_1E65FA440);
        sub_1E6071E58();
        v486 = v1636;
        v487 = v1748;
        sub_1E5FEE4C8(v485);
        v488 = &unk_1ED077710;
        v489 = &qword_1E65EEE28;
        sub_1E5DFE50C(v485, &unk_1ED077710, &qword_1E65EEE28);
        v490 = v1639;
        sub_1E5FEE4C8(v486);
        sub_1E6072098();
        v491 = v1750;
        sub_1E62DFC6C(v490, v487);
      }

      sub_1E6071DCC();
      v1339 = v1699;
      sub_1E62DFC6C(v491, v1749);
      sub_1E5DFE50C(v491, &qword_1ED073DE8, &unk_1E65FA430);
      sub_1E5DFE50C(v490, v488, v489);
      sub_1E5DFE50C(v486, v488, v489);
      v1340 = v1856;
      (*(v1852 + 1))(v1843, v1851);
      sub_1E62BBB50(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
      v1341 = v1708;
      sub_1E5FEE4C8(v1339);
      sub_1E5DFE50C(v1339, &qword_1ED073DA8, &unk_1E65FA550);
      v1342 = *v482;
      v1343 = *(v1860 + 8);
      v1344 = swift_allocObject();
      v1862 = *(v482 + v1343);
      *(v1344 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1345 = v1561;
      }

      else
      {

        swift_unknownObjectRetain();
        v1345 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077200, &unk_1E65FA8D0);
      v1346 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1340);
      *(&v1591 + 1) = sub_1E62CC440;
      *&v1591 = v1342;
      v1347 = sub_1E630B390(v1341, v1345, MEMORY[0x1E69E7CC0], v1346, 0, 0, 0, 0, 0, 0, v1591, v1344);

      sub_1E5DFE50C(v1341, &qword_1ED073DA8, &unk_1E65FA550);
      v369 = v1347;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1348 = swift_getObjCClassFromMetadata();
      v1349 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v1350 = sub_1E65E5C48();

      [v369 setTitle_];

      v1351 = sub_1E6307A64();
      v1352 = v1351;
      if (v1854 > 1)
      {
        v1353 = 2;
      }

      else
      {
        v1353 = 1;
      }

      [v1351 setLargeTitleDisplayMode_];

      goto LABEL_266;
    case 0x23u:
      swift_storeEnumTagMultiPayload();
      v707 = v1862;
      sub_1E617DC64(v312, &aBlock);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      swift_storeEnumTagMultiPayload();
      sub_1E6508CD4(v1873, v312, &aBlock, v305);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      sub_1E6272CEC();
      v708 = v1825;
      sub_1E5FEE4C8(v305);
      sub_1E5DFE50C(v305, &unk_1ED077820, &qword_1E65F96A8);
      v383 = v1652;
      sub_1E5FEE4C8(v708);
      sub_1E5DFE50C(v708, &unk_1ED077820, &qword_1E65F96A8);
      v709 = v1651;
      sub_1E5DFD1CC(v383, v1651, &unk_1ED077820, &qword_1E65F96A8);
      v710 = *v707;
      v711 = *(v1860 + 8);
      v712 = swift_allocObject();
      v1862 = *(v707 + v711);
      *(v712 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v713 = v1562;
      }

      else
      {

        swift_unknownObjectRetain();
        v713 = MEMORY[0x1E69E7CD0];
      }

      v714 = v1856;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
      v715 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v714);
      *(&v1586 + 1) = sub_1E62CC440;
      *&v1586 = v710;
      v369 = sub_1E630B390(v709, v713, MEMORY[0x1E69E7CC0], v715, 0, 0, 0, 0, 1, 0, v1586, v712);

      v381 = &unk_1ED077820;
      v382 = &qword_1E65F96A8;
      sub_1E5DFE50C(v709, &unk_1ED077820, &qword_1E65F96A8);
      v716 = sub_1E6307A64();
      [v716 setLargeTitleDisplayMode_];

      swift_unknownObjectRelease();

      goto LABEL_49;
    case 0x24u:
      v383 = v1660;
      v384 = v1862;
      AppComposer.forYouViewBuilder(currentRoutingContext:)(v1873, v1660);
      v385 = v1659;
      sub_1E5DFD1CC(v383, v1659, &qword_1ED072708, &unk_1E65FA530);
      v386 = sub_1E65DAE38();
      v387 = sub_1E65DAE38();
      v388 = *v384;
      v389 = *(v1860 + 8);
      v390 = swift_allocObject();
      v1862 = *(v384 + v389);
      *(v390 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v391 = v1559;
      }

      else
      {

        swift_unknownObjectRetain();
        v391 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D0, &qword_1E65F97E0);
      v392 = v386 != v387;
      v393 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      *(&v1584 + 1) = sub_1E62CC440;
      *&v1584 = v388;
      v369 = sub_1E630B390(v385, v391, MEMORY[0x1E69E7CC0], v393, 0, 0, 0, 0, v392, 0, v1584, v390);

      v381 = &qword_1ED072708;
      v382 = &unk_1E65FA530;
      sub_1E5DFE50C(v385, &qword_1ED072708, &unk_1E65FA530);
      v394 = sub_1E6307A64();
      [v394 setLargeTitleDisplayMode_];

LABEL_49:
      v411 = v383;
      goto LABEL_126;
    case 0x25u:
      v372 = v1662;
      v373 = v1862;
      AppComposer.libraryViewBuilder(currentRoutingContext:)(v1873, v1662);
      v374 = v1661;
      sub_1E5DFD1CC(v372, v1661, &unk_1ED077800, &qword_1E65F9698);
      v375 = *v373;
      v376 = *(v1860 + 8);
      v377 = swift_allocObject();
      v1862 = *(v373 + v376);
      *(v377 + 16) = v1862;
      v378 = v1856;
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_7;
      }

      goto LABEL_272;
    case 0x27u:
      if (v357 < 2)
      {
        v1132 = (v1862 + *(v1860 + 8));
        v1133 = v1862;
        v1135 = *v1132;
        v1860 = v1132[1];
        v1134 = v1860;
        v1136 = swift_allocObject();
        v1850 = v1136;
        *(v1136 + 16) = v1135;
        *(v1136 + 24) = v1134;
        v1137 = *v1133;
        swift_getKeyPath();
        swift_unknownObjectRetain();
        sub_1E65E4EC8();

        v1138 = type metadata accessor for AppEnvironment();
        v1139 = Description;
        (Description[2])(v1768, v1854 + *(v1138 + 80), v1769);
        sub_1E65E5148();
        swift_unknownObjectRetain();
        *&v1861 = sub_1E65E5138();
        v1140 = type metadata accessor for SearchMetricsMonitor();
        v1141 = *(v1140 + 48);
        v1142 = *(v1140 + 52);
        v1858 = swift_allocObject();
        *&v1857 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue;
        sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
        sub_1E65E4F58();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1E62CC0C0(&qword_1EE2D4610, MEMORY[0x1E69E8030]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A450, &qword_1E65F8060);
        sub_1E5FED46C(&qword_1EE2D4820, &unk_1ED07A450, &qword_1E65F8060);
        sub_1E65E6738();
        (*(v1645 + 104))(v1644, *MEMORY[0x1E69E8090], v1646);
        v1143 = sub_1E65E63E8();
        v1144 = v1858;
        *(v1858 + v1857) = v1143;
        (*(v1637 + 32))(v1144 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState, v1767, v1638);
        v1145 = MEMORY[0x1E69AB380];
        *(v1144 + 16) = v1861;
        *(v1144 + 24) = v1145;
        (v1139[4])(v1144 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService, v1768, v1769);
        v1146 = (v1144 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker);
        v1147 = v1860;
        *v1146 = v1135;
        v1146[1] = v1147;
        v1148 = v1862;
        v1149 = v1859;
        v1860 = type metadata accessor for AppComposer;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1150 = *(v1853 + 80);
        v1848 = v1855 + ((v1150 + 16) & ~v1150);
        v1849 = (v1150 + 16) & ~v1150;
        v1151 = v1855;
        v1152 = swift_allocObject();
        *&v1857 = type metadata accessor for AppComposer;
        v1853 = v1152;
        sub_1E5E1E528(v1149, v1152 + ((v1150 + 16) & ~v1150), type metadata accessor for AppComposer);
        v1153 = v1844;
        sub_1E62CC108(v1148, v1844, type metadata accessor for AppComposer);
        v1154 = ((v1150 + 32) & ~v1150);
        v1846 = v1154;
        v1155 = (v1151 + v1154) & 0xFFFFFFFFFFFFFFF8;
        v1843 = v1151 + v1154;
        v1156 = swift_allocObject();
        v1856 = v1156;
        v1851 = &unk_1E65FAC28;
        *(v1156 + 16) = &unk_1E65FAC28;
        *(v1156 + 24) = v1152;
        sub_1E5E1E528(v1153, v1154 + v1156, v1857);
        *(v1151 + v1154 + v1156) = 0;
        v1157 = v1156 + v1155;
        v1852 = sub_1E6172524;
        *(v1157 + 8) = sub_1E6172524;
        *(v1157 + 16) = 0;
        v1158 = (v1156 + ((v1155 + 31) & 0xFFFFFFFFFFFFFFF8));
        v1159 = v1861;
        *v1158 = v1861;
        v1160 = MEMORY[0x1E69AB380];
        v1158[1] = MEMORY[0x1E69AB380];
        v1161 = v1862;
        v1162 = v1845;
        sub_1E62CC108(v1862, v1845, v1860);
        v1163 = (v1150 + 48) & ~v1150;
        v1164 = v1855 + v1163;
        v1165 = (v1855 + v1163) & 0xFFFFFFFFFFFFFFF8;
        v1166 = swift_allocObject();
        v1167 = v1851;
        v1168 = v1853;
        *(v1166 + 2) = v1851;
        *(v1166 + 3) = v1168;
        *(v1166 + 4) = v1159;
        *(v1166 + 5) = v1160;
        v1169 = v1166;
        v1170 = v1857;
        sub_1E5E1E528(v1162, v1166 + v1163, v1857);
        v1854 = v1169;
        v1164[v1169] = 0;
        v1171 = v1169 + v1165;
        *(v1171 + 1) = v1852;
        *(v1171 + 2) = 0;
        v1172 = v1161;
        v1173 = v1161;
        v1174 = v1827;
        v1175 = v1860;
        sub_1E62CC108(v1173, v1827, v1860);
        v1176 = swift_allocObject();
        v1177 = v1853;
        v1176[2] = v1167;
        v1176[3] = v1177;
        v1178 = v1861;
        v1176[4] = v1861;
        v1176[5] = MEMORY[0x1E69AB380];
        v1179 = v1176 + v1163;
        v1180 = v1176;
        sub_1E5E1E528(v1174, v1179, v1170);
        v1181 = v1180 + ((v1164 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1847 = v1180;
        *v1181 = v1852;
        *(v1181 + 8) = 0;
        *(v1181 + 16) = 0;
        v1182 = v1828;
        sub_1E62CC108(v1172, v1828, v1175);
        v1183 = swift_allocObject();
        *(v1183 + 16) = v1851;
        *(v1183 + 24) = v1177;
        v1184 = v1183;
        v1852 = v1183;
        sub_1E5E1E528(v1182, v1846 + v1183, v1170);
        *&aBlock = v1178;
        *(&aBlock + 1) = MEMORY[0x1E69AB380];
        *&v1869 = &unk_1E65FAC30;
        *(&v1869 + 1) = v1856;
        *&v1870 = &unk_1E65FAC38;
        *(&v1870 + 1) = v1854;
        *&v1871 = &unk_1E65FAC40;
        *(&v1871 + 1) = v1180;
        *&v1872[0] = &unk_1E65FAC48;
        *(&v1872[0] + 1) = v1184;
        swift_retain_n();
        swift_retain_n();
        v1185 = v1172;
        v1851 = sub_1E62B43E4(boxed_opaque_existential_1, &aBlock, v1172);
        v1186 = v1777;
        sub_1E63D53AC(v1851, v1777);
        v1187 = v1858;

        v1846 = sub_1E61C9468(v1186, v1187);
        v1188 = v1187;

        v1853 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A460, &qword_1E65F97C8);
        v1189 = v1859;
        sub_1E62CC108(v1185, v1859, v1860);
        sub_1E5DF650C(v1873, &v1865);
        v1190 = (v1848 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1191 = (v1190 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1192 = swift_allocObject();
        sub_1E5E1E528(v1189, v1192 + v1849, v1170);
        sub_1E5DF599C(&v1865, v1192 + v1190);
        v1193 = (v1192 + v1191);
        v1194 = v1871;
        v1193[2] = v1870;
        v1193[3] = v1194;
        v1193[4] = v1872[0];
        v1195 = v1869;
        *v1193 = aBlock;
        v1193[1] = v1195;
        *(v1192 + ((v1191 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1188;
        v1196 = v1844;
        sub_1E62CC108(v1185, v1844, v1860);
        sub_1E5DF650C(v1873, v1864);
        v1197 = (v1150 + 24) & ~v1150;
        v1198 = (v1855 + v1197 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1199 = (v1198 + 15) & 0xFFFFFFFFFFFFFFF8;
        v1200 = (v1199 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1201 = swift_allocObject();
        *(v1201 + 16) = v1846;
        sub_1E5E1E528(v1196, v1201 + v1197, v1857);
        *(v1201 + v1198) = v1851;
        sub_1E5DF599C(v1864, v1201 + v1199);
        v1202 = (v1201 + v1200);
        v1203 = v1871;
        v1202[2] = v1870;
        v1202[3] = v1203;
        v1202[4] = v1872[0];
        v1204 = v1869;
        *v1202 = aBlock;
        v1202[1] = v1204;
        *(v1201 + ((v1200 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1858;

        v369 = sub_1E65DCC78();
        (*(v1647 + 8))(v1777, v1648);
        goto LABEL_266;
      }

      v1502 = v1862;
      if (v357 != 3)
      {
        goto LABEL_331;
      }

      v1503 = v1600;
      sub_1E62284FC(v1873, v1600);
      v1504 = sub_1E622B4E0();
      v360 = v1610;
      sub_1E6012F9C(v1601, v1504);
      sub_1E5DFE50C(v1503, &unk_1ED0776A0, &qword_1E65F8030);
      v362 = v1611;
      sub_1E5DFD1CC(v360, v1611, &qword_1ED0770A8, &unk_1E65FA3E0);
      v1505 = *v1502;
      v1506 = *(v1860 + 8);
      v1507 = swift_allocObject();
      v1862 = *(v1502 + v1506);
      *(v1507 + 16) = v1862;
      v1508 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1509 = v1581;
      }

      else
      {

        swift_unknownObjectRetain();
        v1509 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AA0, &qword_1E65F9798);
      v1510 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1508);
      *(&v1594 + 1) = sub_1E62CC440;
      *&v1594 = v1505;
      v369 = sub_1E630B390(v362, v1509, MEMORY[0x1E69E7CC0], v1510, 0, 0, 0, 0, 0, 0, v1594, v1507);

      v370 = &qword_1ED0770A8;
      v371 = &unk_1E65FA3E0;
      goto LABEL_228;
    case 0x29u:
      v1205 = (v1862 + *(v1860 + 9));
      v1206 = v357;
      v1207 = *v1205;
      v1208 = v1205[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1207;
      *(&aBlock + 1) = v1208;
      LOBYTE(v1869) = v1206;
      v1209 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1207, v1208);
      v1210 = InteropService.makeAccountSettingsViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v844 = v1210(&v1865);
      goto LABEL_119;
    case 0x2Au:
      v1211 = sub_1E65DDF08();
      *(&v1869 + 1) = v1211;
      *&v1870 = sub_1E62CC0C0(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00]);
      v1212 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(*(v1211 - 8) + 104))(v1212, *MEMORY[0x1E69CABE8], v1211);
      LOBYTE(v1211) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v1211)
      {
        v1213 = v1850;
        sub_1E65D76E8();
        v372 = v1622;
        v1214 = v1862;
        sub_1E606A028(v1873, v1213, v1622);
        (*(v1852 + 1))(v1213, v1851);
        v374 = v1621;
        sub_1E5DFD1CC(v372, v1621, &qword_1ED073D90, &unk_1E65FA3D0);
        v1215 = *v1214;
        v1216 = *(v1860 + 8);
        v1217 = swift_allocObject();
        v1862 = *(v1214 + v1216);
        *(v1217 + 16) = v1862;
        v1218 = v1856;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1219 = v1572;
        }

        else
        {

          swift_unknownObjectRetain();
          v1219 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077930, &qword_1E65F96F8);
        v1220 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1218);
        *(&v1589 + 1) = sub_1E62CC440;
        *&v1589 = v1215;
        v369 = sub_1E630B390(v374, v1219, MEMORY[0x1E69E7CC0], v1220, 0, 0, 0, 0, 0, 0, v1589, v1217);

        v381 = &qword_1ED073D90;
        v382 = &unk_1E65FA3D0;
        goto LABEL_125;
      }

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1255 = swift_getObjCClassFromMetadata();
      v1256 = [objc_opt_self() bundleForClass_];
      v1257 = v1862;
      v1258 = *v1862;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1259;
      sub_1E5F9AEA8();
      v1260 = v1614;
      sub_1E65E41C8();
      v1261 = v1613;
      v1262 = v1781;
      (*(v1832 + 2))(v1613, v1260, v1781);
      v1263 = *(v1860 + 8);
      v1264 = swift_allocObject();
      v1862 = *(v1257 + v1263);
      *(v1264 + 16) = v1862;
      v1265 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1266 = v1573;
      }

      else
      {

        swift_unknownObjectRetain();
        v1266 = MEMORY[0x1E69E7CD0];
      }

      v1267 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1265);
      v1268 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v369 = sub_1E626DF90(v1261, v1266, MEMORY[0x1E69E7CC0], v1267, 0, 0, 0, 0, 0, 0, 0, v1258, sub_1E62CC440, v1264);

      (*(v1832 + 1))(v1260, v1262);
      goto LABEL_266;
    case 0x2Bu:
      if (v357 < 2)
      {
        v1118 = (v1862 + *(v1860 + 9));
        v1119 = *v1118;
        v1120 = v1118[1];
        sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1873, v1872);
        *&aBlock = v1119;
        *(&aBlock + 1) = v1120;
        LOBYTE(v1869) = v357;
        v1121 = *(type metadata accessor for AppEnvironment() + 68);
        sub_1E5FA9D34(v1119, v1120);
        QueueView = InteropService.makeUpNextQueueViewController.getter();
        v1866 = &type metadata for CatalogPageRoutingContextNavigator;
        v1867 = sub_1E61379FC();
        *&v1865 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1865 + 16);
        v844 = QueueView(&v1865, v1119, v1120);
        goto LABEL_119;
      }

      v1485 = v1862;
      if (v357 != 3)
      {
        goto LABEL_331;
      }

      v1486 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1487 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1488 = (v1855 + v1487 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1489 = swift_allocObject();
      sub_1E5E1E528(v1486, v1489 + v1487, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1489 + v1488);
      v1490 = sub_1E65E4438();
      v1491 = *v1485;
      v1492 = *(v1860 + 8);
      v1493 = swift_allocObject();
      v1862 = *(v1485 + v1492);
      *(v1493 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1494 = v1580;
      }

      else
      {

        swift_unknownObjectRetain();
        v1494 = MEMORY[0x1E69E7CD0];
      }

      v1495 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1404 = sub_1E626CAE8(sub_1E62CC3EC, v1489, v1490, v1494, MEMORY[0x1E69E7CC0], v1495, 0, 0, 0, 0, 0, 0, 0, v1491, sub_1E62CC440, v1493);

      v1405 = v1829;
      if (v1829)
      {
        v1496 = v1829;
        v1497 = v1404;
        if ([v1496 isViewLoaded])
        {
          v1408 = [v1496 view];
          if (!v1408)
          {
LABEL_328:
            __break(1u);
            goto LABEL_329;
          }

LABEL_220:
          v1498 = v1408;
          v1499 = [v1408 snapshotViewAfterScreenUpdates_];

LABEL_223:
          v1501 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v369 = sub_1E630B7AC(v1404, v1499);

          goto LABEL_266;
        }
      }

      else
      {
LABEL_221:
        v1500 = v1404;
      }

LABEL_222:
      v1499 = 0;
      goto LABEL_223;
    default:
      v358 = *v356;
      v359 = *(v356 + 1);
      if (v357 >= 3)
      {
        v1238 = v1615;
        v1239 = v1862;
        AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v358, *(v356 + 1), v1873, v1615);

        v1240 = sub_1E6273064();
        v1241 = v1620;
        sub_1E6012F9C(v1616, v1240);
        sub_1E5DFE50C(v1238, &qword_1ED0770C8, &unk_1E65FA420);
        v1242 = v1617;
        sub_1E5DFD1CC(v1241, v1617, &unk_1ED0776F0, &qword_1E65F9658);
        v1243 = *v1239;
        v1244 = *(v1860 + 8);
        v1245 = swift_allocObject();
        v1862 = *(v1239 + v1244);
        *(v1245 + 16) = v1862;
        v1246 = v1856;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1247 = v1571;
        }

        else
        {

          swift_unknownObjectRetain();
          v1247 = MEMORY[0x1E69E7CD0];
        }

        v1248 = v1829;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B60, &qword_1E65F9810);
        v1249 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1246);
        *(&v1590 + 1) = sub_1E62CC440;
        *&v1590 = v1243;
        v1250 = sub_1E630B390(v1242, v1247, MEMORY[0x1E69E7CC0], v1249, 0, 0, 0, 0, 0, 0, v1590, v1245);

        sub_1E5DFE50C(v1242, &unk_1ED0776F0, &qword_1E65F9658);
        if (v1248 && (v1251 = v1248, [v1251 isViewLoaded]))
        {
          v1252 = [v1251 view];
          if (!v1252)
          {
            __break(1u);
LABEL_323:
            __break(1u);
            goto LABEL_324;
          }

          v1253 = v1252;
          v1254 = [v1252 snapshotViewAfterScreenUpdates_];
        }

        else
        {
          v1254 = 0;
        }

        v1292 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v369 = sub_1E630B7AC(v1250, v1254);

        sub_1E5DFE50C(v1241, &unk_1ED0776F0, &qword_1E65F9658);
        goto LABEL_266;
      }

      v360 = v1618;
      v361 = v1862;
      AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v358, *(v356 + 1), v1873, v1618);

      v362 = v1619;
      sub_1E5DFD1CC(v360, v1619, &qword_1ED0770C8, &unk_1E65FA420);
      v363 = *v361;
      v364 = *(v1860 + 8);
      v365 = swift_allocObject();
      v1862 = *(v361 + v364);
      *(v365 + 16) = v1862;
      v366 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v367 = v1570;
      }

      else
      {

        swift_unknownObjectRetain();
        v367 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771F8, &unk_1E65FA7F0);
      v368 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v366);
      *(&v1582 + 1) = sub_1E62CC440;
      *&v1582 = v363;
      v369 = sub_1E630B390(v362, v367, MEMORY[0x1E69E7CC0], v368, 0, 0, 0, 0, 0, 0, v1582, v365);

      v370 = &qword_1ED0770C8;
      v371 = &unk_1E65FA420;
LABEL_228:
      sub_1E5DFE50C(v362, v370, v371);
      v1416 = v360;
      goto LABEL_237;
  }
}

char *sub_1E629F014(uint64_t a1, void *a2, uint64_t (*a3)(), uint64_t a4)
{
  *&v1861 = a4;
  v1860 = a3;
  v1829 = a2;
  *&v1862 = a1;
  v4 = sub_1E65DAEB8();
  v1624 = *(v4 - 8);
  v1625 = v4;
  v5 = *(v1624 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v1623 = &v1597 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D90, &unk_1E65FA3D0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v1621 = &v1597 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v1622 = &v1597 - v11;
  v12 = sub_1E65DCA88();
  v1647 = *(v12 - 8);
  v1648 = v12;
  v13 = *(v1647 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v1777 = &v1597 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E63B8();
  v1645 = *(v15 - 8);
  v1646 = v15;
  v16 = *(v1645 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v1644 = &v1597 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1641 = sub_1E65E6398();
  v18 = *(*(v1641 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1641);
  v1643 = &v1597 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E65E4F68();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v1640 = &v1597 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1769 = type metadata accessor for MetricService();
  Description = v1769[-1].Description;
  v23 = Description[8];
  MEMORY[0x1EEE9AC00](v1769);
  v1768 = &v1597 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65DD0A8();
  v1637 = *(v25 - 8);
  v1638 = v25;
  v26 = *(v1637 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v1767 = &v1597 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1601 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776A0, &qword_1E65F8030);
  v28 = *(*(v1601 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1601);
  v1600 = &v1597 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770A8, &unk_1E65FA3E0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v1611 = &v1597 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v1610 = &v1597 - v34;
  v1756 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v35 = *(*(v1756 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1756);
  v1780 = &v1597 - v36;
  v1776 = sub_1E65E3F88();
  v1775 = *(v1776 - 8);
  v37 = *(v1775 + 64);
  MEMORY[0x1EEE9AC00](v1776);
  v1773 = &v1597 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1774 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v1772 = *(v1774 - 8);
  v39 = *(v1772 + 64);
  MEMORY[0x1EEE9AC00](v1774);
  v1771 = &v1597 - v40;
  v1778 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776C0, &qword_1E65F9648);
  v41 = *(*(v1778 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1778);
  v1779 = &v1597 - v42;
  v1760 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B0, &unk_1E65FA3F0);
  v1759 = *(v1760 - 8);
  v43 = *(v1759 + 64);
  v44 = MEMORY[0x1EEE9AC00](v1760);
  v1758 = &v1597 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v1755 = &v1597 - v46;
  v1764 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776D0, &qword_1E65F9650);
  v47 = *(*(v1764 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v1764);
  v1757 = &v1597 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v1840 = (&v1597 - v50);
  v1754 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770B8, &unk_1E65FA400);
  v51 = *(*(v1754 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1754);
  v1841 = &v1597 - v52;
  v1823 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v1765 = *(v1823 - 8);
  v53 = *(v1765 + 64);
  v54 = MEMORY[0x1EEE9AC00](v1823);
  v1824 = &v1597 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1766 = v55;
  MEMORY[0x1EEE9AC00](v54);
  v1770 = (&v1597 - v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C0, &unk_1E65FA410);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x1EEE9AC00](v57 - 8);
  v1753 = &v1597 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v59);
  v1786 = &v1597 - v62;
  v63 = MEMORY[0x1EEE9AC00](v61);
  v1752 = &v1597 - v64;
  MEMORY[0x1EEE9AC00](v63);
  v1785 = &v1597 - v65;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x1EEE9AC00](v66 - 8);
  v1612 = &v1597 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v1744 = &v1597 - v70;
  v1746 = sub_1E65D7218();
  v71 = *(*(v1746 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1746);
  v1745 = &v1597 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C8, &unk_1E65FA420);
  v73 = *(*(v1616 - 8) + 64);
  v74 = MEMORY[0x1EEE9AC00](v1616);
  v1619 = &v1597 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v1618 = &v1597 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v1615 = &v1597 - v78;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776F0, &qword_1E65F9658);
  v80 = *(*(v79 - 8) + 64);
  v81 = MEMORY[0x1EEE9AC00](v79 - 8);
  v1617 = &v1597 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v1620 = &v1597 - v83;
  v1856 = sub_1E65DEEA8();
  v1858 = *(v1856 - 1);
  v84 = *(v1858 + 64);
  MEMORY[0x1EEE9AC00](v1856);
  *&v1857 = &v1597 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1749 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DE8, &unk_1E65FA430);
  v86 = *(*(v1749 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1749);
  v1750 = &v1597 - v87;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077700, &qword_1E65EEE38);
  v1631 = *(v88 - 8);
  v1632 = v88;
  v89 = *(v1631 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v1630 = &v1597 - v90;
  v1635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DF8, &unk_1E65FA440);
  v91 = *(*(v1635 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1635);
  v1634 = &v1597 - v92;
  v1748 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077710, &qword_1E65EEE28);
  v93 = *(*(v1748 - 8) + 64);
  v94 = MEMORY[0x1EEE9AC00](v1748);
  v1639 = &v1597 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = MEMORY[0x1EEE9AC00](v94);
  v1633 = &v1597 - v97;
  MEMORY[0x1EEE9AC00](v96);
  v1636 = &v1597 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E20, &unk_1E65FA450);
  v1603 = *(v99 - 8);
  v1604 = v99;
  v100 = *(v1603 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v1602 = &v1597 - v101;
  v1607 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077720, &qword_1E65EEE40);
  v102 = *(*(v1607 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1607);
  v1606 = &v1597 - v103;
  v1747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073E10, &unk_1E65FA460);
  v104 = *(*(v1747 - 8) + 64);
  v105 = MEMORY[0x1EEE9AC00](v1747);
  v1609 = &v1597 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = MEMORY[0x1EEE9AC00](v105);
  v1605 = &v1597 - v108;
  MEMORY[0x1EEE9AC00](v107);
  v1608 = &v1597 - v109;
  v1734 = sub_1E65D9048();
  v1733 = *(v1734 - 8);
  v110 = *(v1733 + 64);
  MEMORY[0x1EEE9AC00](v1734);
  v1731 = &v1597 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1732 = sub_1E65E58D8();
  v1730 = *(v1732 - 8);
  v112 = *(v1730 + 64);
  MEMORY[0x1EEE9AC00](v1732);
  v1729 = &v1597 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1728 = sub_1E65DA308();
  v1727 = *(v1728 - 8);
  v114 = *(v1727 + 64);
  MEMORY[0x1EEE9AC00](v1728);
  v1724 = &v1597 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1725 = sub_1E65E56B8();
  v1722 = *(v1725 - 8);
  v116 = *(v1722 + 64);
  MEMORY[0x1EEE9AC00](v1725);
  v1721 = &v1597 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1763 = sub_1E65D7EB8();
  v1762 = *(v1763 - 8);
  v118 = *(v1762 + 64);
  v119 = MEMORY[0x1EEE9AC00](v1763);
  v1650 = &v1597 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1599 = v120;
  MEMORY[0x1EEE9AC00](v119);
  v1782 = &v1597 - v121;
  v1822 = sub_1E65E55E8();
  v1783 = *(v1822 - 8);
  v122 = *(v1783 + 64);
  v123 = MEMORY[0x1EEE9AC00](v1822);
  v1649 = &v1597 - ((v124 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1598 = v124;
  MEMORY[0x1EEE9AC00](v123);
  v1818 = &v1597 - v125;
  v1709 = type metadata accessor for PlaylistType();
  v126 = *(*(v1709 - 8) + 64);
  v127 = MEMORY[0x1EEE9AC00](v1709);
  v1629 = (&v1597 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = MEMORY[0x1EEE9AC00](v127);
  v1597 = (&v1597 - v130);
  MEMORY[0x1EEE9AC00](v129);
  v1741 = &v1597 - v131;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  v133 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132 - 8);
  v1740 = &v1597 - v134;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  v136 = *(*(v135 - 8) + 64);
  MEMORY[0x1EEE9AC00](v135 - 8);
  v1739 = &v1597 - v137;
  v1738 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077740, &qword_1E65F9660);
  v1737 = *(v1738 - 8);
  v138 = *(v1737 + 64);
  MEMORY[0x1EEE9AC00](v1738);
  v1736 = &v1597 - v139;
  v1707 = sub_1E65DDE68();
  v1703 = *(v1707 - 8);
  v140 = *(v1703 + 64);
  MEMORY[0x1EEE9AC00](v1707);
  v1704 = &v1597 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1735 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D0, &unk_1E65FA480);
  v142 = *(*(v1735 - 8) + 64);
  v143 = MEMORY[0x1EEE9AC00](v1735);
  v1742 = &v1597 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v143);
  v1743 = &v1597 - v145;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v1705 = *(v146 - 8);
  v147 = *(v1705 + 64);
  v148 = MEMORY[0x1EEE9AC00](v146 - 8);
  v1814 = &v1597 - ((v149 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1706 = v149;
  MEMORY[0x1EEE9AC00](v148);
  v1817 = &v1597 - v150;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v1701 = *(v151 - 8);
  v152 = *(v1701 + 64);
  v153 = MEMORY[0x1EEE9AC00](v151 - 8);
  v1813 = &v1597 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1702 = v154;
  MEMORY[0x1EEE9AC00](v153);
  v1816 = &v1597 - v155;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v1698 = *(v156 - 8);
  v157 = *(v1698 + 64);
  v158 = MEMORY[0x1EEE9AC00](v156 - 8);
  v1710 = &v1597 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = MEMORY[0x1EEE9AC00](v158);
  v1812 = &v1597 - v161;
  v1815 = v162;
  MEMORY[0x1EEE9AC00](v160);
  v1835 = &v1597 - v163;
  v1692 = sub_1E65E52B8();
  v164 = *(*(v1692 - 8) + 64);
  v165 = MEMORY[0x1EEE9AC00](v1692);
  v1696 = (&v1597 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v165);
  v1715 = &v1597 - v167;
  v1697 = sub_1E65E5528();
  v1695 = *(v1697 - 8);
  v168 = *(v1695 + 64);
  MEMORY[0x1EEE9AC00](v1697);
  v1693 = &v1597 - ((v169 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1811 = sub_1E65E57D8();
  v1691 = *(v1811 - 8);
  v170 = *(v1691 + 64);
  MEMORY[0x1EEE9AC00](v1811);
  v1689 = &v1597 - ((v171 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v173 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v172 - 8);
  v1694 = &v1597 - v174;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077770, &unk_1E660C190);
  v176 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175 - 8);
  v1690 = &v1597 - v177;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076220, &unk_1E65FA4A0);
  v179 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178 - 8);
  v1687 = &v1597 - v180;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077780, &unk_1E66097F0);
  v1683 = *(v181 - 8);
  v182 = *(v1683 + 64);
  v183 = MEMORY[0x1EEE9AC00](v181 - 8);
  v1685 = &v1597 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1684 = v184;
  MEMORY[0x1EEE9AC00](v183);
  v1834 = &v1597 - v185;
  v1688 = sub_1E65D7848();
  v1686 = *(v1688 - 8);
  v186 = *(v1686 + 64);
  MEMORY[0x1EEE9AC00](v1688);
  v1838 = (&v1597 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = sub_1E65E5C28();
  v189 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188 - 8);
  v1819 = &v1597 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1781 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770D8, &unk_1E65FA4B0);
  v1832 = *(v1781 - 8);
  v191 = *(v1832 + 8);
  v192 = MEMORY[0x1EEE9AC00](v1781);
  v1613 = &v1597 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = MEMORY[0x1EEE9AC00](v192);
  v1614 = &v1597 - v195;
  v196 = MEMORY[0x1EEE9AC00](v194);
  v1809 = &v1597 - v197;
  MEMORY[0x1EEE9AC00](v196);
  v1810 = &v1597 - v198;
  v1717 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077790, &qword_1E65F9668);
  v1714 = *(v1717 - 8);
  v199 = *(v1714 + 64);
  MEMORY[0x1EEE9AC00](v1717);
  v1711 = &v1597 - v200;
  v1719 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E0, &unk_1E65FA4C0);
  v201 = *(*(v1719 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1719);
  v1718 = &v1597 - v202;
  v1723 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777A0, &qword_1E65F9670);
  v203 = *(*(v1723 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1723);
  v1726 = &v1597 - v204;
  v1678 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770E8, &unk_1E65FA4D0);
  v1675 = *(v1678 - 8);
  v205 = *(v1675 + 64);
  MEMORY[0x1EEE9AC00](v1678);
  v1674 = &v1597 - v206;
  v1682 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777B0, &qword_1E65F9678);
  v1680 = *(v1682 - 8);
  v207 = *(v1680 + 64);
  MEMORY[0x1EEE9AC00](v1682);
  v1677 = &v1597 - v208;
  v1681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F0, &unk_1E65FA4E0);
  v1679 = *(v1681 - 8);
  v209 = *(v1679 + 64);
  MEMORY[0x1EEE9AC00](v1681);
  v1676 = &v1597 - v210;
  v1673 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v1672 = *(v1673 - 8);
  v211 = *(v1672 + 64);
  MEMORY[0x1EEE9AC00](v1673);
  v1671 = &v1597 - v212;
  v1720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770F8, &unk_1E65FA4F0);
  v213 = *(*(v1720 - 8) + 64);
  v214 = MEMORY[0x1EEE9AC00](v1720);
  v1712 = &v1597 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = MEMORY[0x1EEE9AC00](v214);
  v1713 = &v1597 - v217;
  MEMORY[0x1EEE9AC00](v216);
  v1716 = &v1597 - v218;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777D0, &qword_1E65F9680);
  v220 = *(*(v219 - 8) + 64);
  v221 = MEMORY[0x1EEE9AC00](v219 - 8);
  v1784 = &v1597 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v221);
  v1751 = &v1597 - v223;
  v1669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077100, &unk_1E65FA500);
  v224 = *(*(v1669 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1669);
  v1668 = &v1597 - v225;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777E0, &qword_1E65F9688);
  v227 = *(*(v226 - 8) + 64);
  v228 = MEMORY[0x1EEE9AC00](v226 - 8);
  v1798 = &v1597 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v228);
  v1801 = &v1597 - v230;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077108, &unk_1E65FA510);
  v232 = *(*(v231 - 8) + 64);
  v233 = MEMORY[0x1EEE9AC00](v231 - 8);
  v1667 = &v1597 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v233);
  v1666 = &v1597 - v235;
  v1665 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777F0, &qword_1E65F9690);
  v236 = *(*(v1665 - 8) + 64);
  v237 = MEMORY[0x1EEE9AC00](v1665);
  v1795 = &v1597 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v237);
  v1670 = &v1597 - v239;
  v1848 = sub_1E65D74E8();
  v1849 = *(v1848 - 1);
  v240 = *(v1849 + 64);
  v241 = MEMORY[0x1EEE9AC00](v1848);
  v1787 = &v1597 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = MEMORY[0x1EEE9AC00](v241);
  v1836 = &v1597 - v243;
  v244 = MEMORY[0x1EEE9AC00](v242);
  v1805 = &v1597 - v245;
  v246 = MEMORY[0x1EEE9AC00](v244);
  v1804 = &v1597 - v247;
  MEMORY[0x1EEE9AC00](v246);
  v1794 = &v1597 - v248;
  v1808 = sub_1E65E1518();
  v1807 = *(v1808 - 8);
  v249 = *(v1807 + 64);
  MEMORY[0x1EEE9AC00](v1808);
  v1806 = &v1597 - ((v250 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1847 = sub_1E65DB848();
  v1846 = *(v1847 - 1);
  v251 = *(v1846 + 8);
  v252 = MEMORY[0x1EEE9AC00](v1847);
  v1799 = &v1597 - ((v253 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = MEMORY[0x1EEE9AC00](v252);
  v1800 = &v1597 - v255;
  v256 = MEMORY[0x1EEE9AC00](v254);
  v1796 = &v1597 - v257;
  v258 = MEMORY[0x1EEE9AC00](v256);
  v1797 = &v1597 - v259;
  v260 = MEMORY[0x1EEE9AC00](v258);
  v1802 = &v1597 - v261;
  MEMORY[0x1EEE9AC00](v260);
  v1803 = &v1597 - v262;
  v263 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729A0, &unk_1E65FA520);
  v264 = *(*(v263 - 8) + 64);
  v265 = MEMORY[0x1EEE9AC00](v263 - 8);
  v1663 = &v1597 - ((v266 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v265);
  v1664 = &v1597 - v267;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077800, &qword_1E65F9698);
  v269 = *(*(v268 - 8) + 64);
  v270 = MEMORY[0x1EEE9AC00](v268 - 8);
  v1661 = &v1597 - ((v271 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v270);
  v1662 = &v1597 - v272;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072708, &unk_1E65FA530);
  v274 = *(*(v273 - 8) + 64);
  v275 = MEMORY[0x1EEE9AC00](v273 - 8);
  v1659 = &v1597 - ((v276 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v275);
  v1660 = &v1597 - v277;
  v278 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v279 = *(*(v278 - 8) + 64);
  v280 = MEMORY[0x1EEE9AC00](v278 - 8);
  v1655 = &v1597 - ((v281 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v280);
  v1658 = &v1597 - v282;
  v283 = sub_1E65E0B48();
  v284 = *(*(v283 - 8) + 64);
  MEMORY[0x1EEE9AC00](v283 - 8);
  v1656 = &v1597 - ((v285 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1833 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077110, &unk_1E65FA540);
  v1657 = *(v1833 - 1);
  v286 = *(v1657 + 64);
  v287 = MEMORY[0x1EEE9AC00](v1833);
  v1790 = &v1597 - ((v288 + 15) & 0xFFFFFFFFFFFFFFF0);
  v289 = MEMORY[0x1EEE9AC00](v287);
  v1653 = &v1597 - v290;
  v291 = MEMORY[0x1EEE9AC00](v289);
  v1654 = &v1597 - v292;
  MEMORY[0x1EEE9AC00](v291);
  v1793 = &v1597 - v293;
  v1792 = sub_1E65D72D8();
  v1791 = *(v1792 - 8);
  v294 = *(v1791 + 64);
  MEMORY[0x1EEE9AC00](v1792);
  v1842 = (&v1597 - ((v295 + 15) & 0xFFFFFFFFFFFFFFF0));
  v1826 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077820, &qword_1E65F96A8);
  v296 = *(*(v1826 - 8) + 64);
  v297 = MEMORY[0x1EEE9AC00](v1826);
  v1628 = &v1597 - ((v298 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = MEMORY[0x1EEE9AC00](v297);
  v1761 = &v1597 - v300;
  v301 = MEMORY[0x1EEE9AC00](v299);
  v1651 = &v1597 - v302;
  v303 = MEMORY[0x1EEE9AC00](v301);
  v305 = &v1597 - v304;
  v306 = MEMORY[0x1EEE9AC00](v303);
  v1825 = &v1597 - v307;
  MEMORY[0x1EEE9AC00](v306);
  v1652 = &v1597 - v308;
  v309 = type metadata accessor for BrowsePage();
  v310 = *(*(v309 - 8) + 64);
  MEMORY[0x1EEE9AC00](v309);
  v312 = &v1597 - ((v311 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1851 = sub_1E65D76F8();
  v1852 = *(v1851 - 8);
  v313 = *(v1852 + 8);
  v314 = MEMORY[0x1EEE9AC00](v1851);
  v1821 = &v1597 - ((v313 + 15) & 0xFFFFFFFFFFFFFFF0);
  v315 = MEMORY[0x1EEE9AC00](v314);
  v1820 = &v1597 - v316;
  v317 = MEMORY[0x1EEE9AC00](v315);
  v1627 = &v1597 - v318;
  v319 = MEMORY[0x1EEE9AC00](v317);
  v1626 = &v1597 - v320;
  v321 = MEMORY[0x1EEE9AC00](v319);
  v1850 = &v1597 - v322;
  v323 = MEMORY[0x1EEE9AC00](v321);
  v1831 = &v1597 - v324;
  v325 = MEMORY[0x1EEE9AC00](v323);
  v1830 = &v1597 - v326;
  v327 = MEMORY[0x1EEE9AC00](v325);
  v1839 = &v1597 - v328;
  v329 = MEMORY[0x1EEE9AC00](v327);
  v1789 = &v1597 - v330;
  v331 = MEMORY[0x1EEE9AC00](v329);
  v1788 = &v1597 - v332;
  MEMORY[0x1EEE9AC00](v331);
  v1843 = &v1597 - v333;
  v1700 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DA8, &unk_1E65FA550);
  v334 = *(*(v1700 - 8) + 64);
  v335 = MEMORY[0x1EEE9AC00](v1700);
  v1699 = &v1597 - ((v336 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v335);
  v1708 = &v1597 - v337;
  v338 = type metadata accessor for AppComposer();
  v1853 = *(v338 - 8);
  v339 = *(v1853 + 8);
  v340 = MEMORY[0x1EEE9AC00](v338);
  v342 = &v1597 - ((v341 + 15) & 0xFFFFFFFFFFFFFFF0);
  v343 = MEMORY[0x1EEE9AC00](v340);
  v1828 = &v1597 - v344;
  v345 = MEMORY[0x1EEE9AC00](v343);
  v1827 = &v1597 - v346;
  v347 = MEMORY[0x1EEE9AC00](v345);
  v1845 = &v1597 - v348;
  v349 = MEMORY[0x1EEE9AC00](v347);
  v1844 = (&v1597 - v350);
  v1855 = v351;
  MEMORY[0x1EEE9AC00](v349);
  v1859 = &v1597 - v352;
  v353 = type metadata accessor for RouteResource();
  v354 = *(*(v353 - 8) + 64);
  MEMORY[0x1EEE9AC00](v353);
  v356 = &v1597 - ((v355 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1873[3] = type metadata accessor for RouteDetourViewControllerRoutingContext();
  v1873[4] = &off_1F5FC41D8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1873);
  sub_1E62CC108(v1860, boxed_opaque_existential_1, type metadata accessor for RouteDetourViewControllerRoutingContext);
  v1860 = v338;
  v1854 = (v1862 + *(v338 + 20));
  v357 = *(v1854 + 8);
  sub_1E62CC108(v1861, v356, type metadata accessor for RouteResource);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v784 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
      v785 = &v356[v784[12]];
      v787 = *v785;
      v786 = v785[1];
      v1851 = v787;
      v1850 = v786;
      v788 = v784[16];
      v1846 = *&v356[v784[20]];
      v789 = v784[24];
      LODWORD(v1849) = v356[v784[28]];
      v790 = &v356[v784[32]];
      v1848 = *v790;
      LODWORD(v1847) = v790[8];
      v791 = v1835;
      sub_1E5FAB460(v356, v1835, &unk_1ED077760, &unk_1E66011D0);
      v792 = v1816;
      sub_1E5FAB460(&v356[v788], v1816, &qword_1ED072B60, &unk_1E65FA490);
      v793 = v1817;
      sub_1E5FAB460(&v356[v789], v1817, &unk_1ED077750, &unk_1E66011C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
      *&v1861 = swift_allocBox();
      (*(v1703 + 104))(v1704, *MEMORY[0x1E69CAB38], v1707);
      LOBYTE(aBlock) = 0;
      sub_1E65DDC88();
      v1842 = type metadata accessor for AppComposer;
      v794 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DFD1CC(v791, v1812, &unk_1ED077760, &unk_1E66011D0);
      sub_1E5DFD1CC(v793, v1814, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFD1CC(v792, v1813, &qword_1ED072B60, &unk_1E65FA490);
      v795 = *(v1853 + 80);
      v796 = ((v795 + 16) & ~v795);
      v1855 = (v1855 + v796);
      v1853 = v796;
      v1852 = (v795 | 7);
      v1843 = *(v1698 + 80);
      v797 = (v1855 + v1843) & ~v1843;
      v1841 = (v795 | 7 | v1843);
      v798 = (v1815 + v797 + 7) & 0xFFFFFFFFFFFFFFF8;
      v799 = (*(v1705 + 80) + v798 + 8) & ~*(v1705 + 80);
      v800 = (v1706 + v799 + 7) & 0xFFFFFFFFFFFFFFF8;
      v801 = (*(v1701 + 80) + v800 + 9) & ~*(v1701 + 80);
      v1840 = (v801 + v1702);
      v1839 = (v801 + v1702) & 0xFFFFFFFFFFFFFFF8;
      v802 = (v1839 + 23) & 0xFFFFFFFFFFFFFFF8;
      v803 = swift_allocObject();
      v1838 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v794, v796 + v803, type metadata accessor for AppComposer);
      sub_1E5FAB460(v1812, v803 + v797, &unk_1ED077760, &unk_1E66011D0);
      *(v803 + v798) = v1846;
      sub_1E5FAB460(v1814, v803 + v799, &unk_1ED077750, &unk_1E66011C0);
      v804 = v803 + v800;
      *v804 = v1848;
      *(v804 + 8) = v1847;
      sub_1E5FAB460(v1813, v803 + v801, &qword_1ED072B60, &unk_1E65FA490);
      *(v1840 + v803) = v1849;
      *(v803 + v1839 + 8) = v1861;
      v805 = (v803 + v802);
      v806 = v1850;
      *v805 = v1851;
      v805[1] = v806;
      LODWORD(v797) = *(type metadata accessor for AppEnvironment() + 72);

      v807 = LocalizationService.localizedDateComponentsFormatter.getter();
      v1854 = v807();

      v808 = v1862;
      v809 = v1844;
      v810 = v1842;
      sub_1E62CC108(v1862, v1844, v1842);
      v811 = v1855;
      v1851 = swift_allocObject();
      v812 = v1853;
      sub_1E5E1E528(v809, v1853 + v1851, type metadata accessor for AppComposer);
      v813 = v1845;
      sub_1E62CC108(v808, v1845, v810);
      sub_1E5DF650C(v1873, &aBlock);
      v814 = v1710;
      sub_1E5DFD1CC(v1835, v1710, &unk_1ED077760, &unk_1E66011D0);
      v815 = (v811 + 7) & 0xFFFFFFFFFFFFFFF8;
      v816 = (v1843 + v815 + 40) & ~v1843;
      v817 = swift_allocObject();
      sub_1E5E1E528(v813, v812 + v817, v1838);
      sub_1E5DF599C(&aBlock, v817 + v815);
      sub_1E5FAB460(v814, v817 + v816, &unk_1ED077760, &unk_1E66011D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072788, &qword_1E65EBC00);
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1EE2D6500, &qword_1ED072788, &qword_1E65EBC00);
      v818 = v1736;
      sub_1E65E26F8();
      sub_1E65E5148();
      sub_1E65E5138();
      v819 = sub_1E65E4FD8();
      v820 = v1739;
      (*(*(v819 - 8) + 56))(v1739, 1, 1, v819);
      if (qword_1EE2D49E0 != -1)
      {
        swift_once();
      }

      v821 = sub_1E65E5018();
      __swift_project_value_buffer(v821, qword_1EE2D49E8);
      v822 = sub_1E65E2E78();
      v823 = v1740;
      (*(*(v822 - 8) + 56))(v1740, 1, 1, v822);
      sub_1E5FED46C(&qword_1ED077120, &unk_1ED077740, &qword_1E65F9660);
      v824 = v1743;
      v825 = v1738;
      sub_1E65E4728();

      sub_1E5DFE50C(v823, &unk_1ED077730, &unk_1E65EA310);
      sub_1E5DFE50C(v820, &qword_1ED071EF8, &unk_1E65FA470);
      (*(v1737 + 8))(v818, v825);
      v826 = v1862;
      v827 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      v828 = swift_allocObject();
      sub_1E5E1E528(v827, v1853 + v828, type metadata accessor for AppComposer);

      v829 = (v824 + *(v1735 + 36));
      *v829 = sub_1E62BB4D8;
      v829[1] = v828;
      v830 = v1742;
      sub_1E5DFD1CC(v824, v1742, &qword_1ED0770D0, &unk_1E65FA480);
      v831 = *v826;
      v832 = *(v1860 + 8);
      v833 = swift_allocObject();
      v1862 = *(v826 + v832);
      *(v833 + 16) = v1862;
      v834 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v835 = v1565;
      }

      else
      {

        swift_unknownObjectRetain();
        v835 = MEMORY[0x1E69E7CD0];
      }

      v836 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v834);
      v837 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778E0, &unk_1E65FA5C0));
      v369 = sub_1E626E800(v830, v835, MEMORY[0x1E69E7CC0], v836, 0, 0, 0, 0, 0, 0, 0, v831, sub_1E62AD21C, v833);

      sub_1E5DFE50C(v824, &qword_1ED0770D0, &unk_1E65FA480);
      sub_1E5DFE50C(v1817, &unk_1ED077750, &unk_1E66011C0);
      sub_1E5DFE50C(v1816, &qword_1ED072B60, &unk_1E65FA490);
      sub_1E5DFE50C(v1835, &unk_1ED077760, &unk_1E66011D0);
      goto LABEL_266;
    case 2u:
      v642 = *v356;
      v641 = *(v356 + 1);
      *v312 = *v356;
      *(v312 + 1) = v641;
      swift_storeEnumTagMultiPayload();

      v643 = v357;
      v644 = v1862;
      sub_1E617DC64(v312, &aBlock);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      if (v643 < 2)
      {
        *v312 = v642;
        *(v312 + 1) = v641;
        swift_storeEnumTagMultiPayload();

        sub_1E6508CD4(v1873, v312, &aBlock, v305);
        sub_1E62BC770(v312, type metadata accessor for BrowsePage);
        sub_1E6272CEC();
        v645 = v1825;
        sub_1E5FEE4C8(v305);
        sub_1E5DFE50C(v305, &unk_1ED077820, &qword_1E65F96A8);
        v646 = v1761;
        sub_1E5FEE4C8(v645);
        sub_1E5DFE50C(v645, &unk_1ED077820, &qword_1E65F96A8);
        v647 = v1626;
        sub_1E65D76E8();
        v648 = v1627;
        sub_1E65D76E8();
        v649 = v646;
        v650 = v1628;
        sub_1E5DFD1CC(v649, v1628, &unk_1ED077820, &qword_1E65F96A8);
        *&v1861 = sub_1E6388F1C(v642, v641, v648, v647, &aBlock);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v651 = swift_allocObject();
        *(v651 + 16) = xmmword_1E65F32F0;
        *(v651 + 32) = sub_1E62B2CDC(v642, v641, v648, boxed_opaque_existential_1, &aBlock, v644);
        *(v651 + 40) = [objc_opt_self() flexibleSpaceItem];
        v652 = sub_1E638AB3C(v642, v641, v647, &aBlock);

        *(v651 + 48) = v652;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
        v653 = *v644;
        v654 = *(v1860 + 8);
        v655 = swift_allocObject();
        v1862 = *(v644 + v654);
        *(v655 + 16) = v1862;
        v656 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);

        swift_unknownObjectRetain();
        *(&v1585 + 1) = sub_1E62AD21C;
        *&v1585 = v653;
        v369 = sub_1E630B390(v650, v1861, v651, v656, 0, 0, 0, 0, 1, 0, v1585, v655);

        sub_1E5DFE50C(v650, &unk_1ED077820, &qword_1E65F96A8);
        swift_unknownObjectRelease();

        v657 = *(v1852 + 1);
        v658 = v1851;
        v657(v648, v1851);
        v657(v647, v658);
        sub_1E5DFE50C(v1761, &unk_1ED077820, &qword_1E65F96A8);
        goto LABEL_266;
      }

      if (v643 != 3)
      {
        goto LABEL_331;
      }

      v1375 = v1859;
      sub_1E62CC108(v644, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &v1865);
      v1376 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1377 = (v1855 + v1376 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1378 = swift_allocObject();
      sub_1E5E1E528(v1375, v1378 + v1376, type metadata accessor for AppComposer);
      v1379 = (v1378 + v1377);
      *v1379 = v642;
      v1379[1] = v641;
      sub_1E5DF599C(&v1865, v1378 + ((v1377 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1380 = sub_1E65E4438();
      v1381 = *v644;
      v1382 = *(v1860 + 8);
      v1383 = swift_allocObject();
      v1862 = *(v644 + v1382);
      *(v1383 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1384 = v1575;
      }

      else
      {

        swift_unknownObjectRetain();
        v1384 = MEMORY[0x1E69E7CD0];
      }

      v1385 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1386 = sub_1E626CAE8(sub_1E62BBB20, v1378, v1380, v1384, MEMORY[0x1E69E7CC0], v1385, 0, 0, 0, 0, 0, 0, 0, v1381, sub_1E62AD21C, v1383);

      v1387 = v1829;
      if (v1829)
      {
        v1388 = v1829;
        v1389 = v1386;
        if ([v1388 isViewLoaded])
        {
          v1390 = [v1388 view];
          if (v1390)
          {
            v1391 = v1390;
            v1392 = [v1390 snapshotViewAfterScreenUpdates_];

            goto LABEL_264;
          }

          goto LABEL_323;
        }
      }

      else
      {
        v1553 = v1386;
      }

      v1392 = 0;
LABEL_264:
      v1554 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v369 = sub_1E630B7AC(v1386, v1392);

      swift_unknownObjectRelease();

LABEL_265:

      goto LABEL_266;
    case 3u:
      LODWORD(v1854) = v357;
      v723 = *(v356 + 1);
      v1852 = *v356;
      v724 = v1852;
      v1849 = v723;
      LODWORD(v1861) = v356[16];
      LODWORD(v1860) = v356[17];
      v725 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0);
      v726 = *(v725 + 80);
      v1851 = v725;
      v727 = v1791;
      v728 = v1842;
      v729 = v1792;
      (*(v1791 + 32))(v1842, &v356[v726], v1792);
      v730 = *(v725 + 80);
      *v312 = v724;
      v731 = v1849;
      *(v312 + 1) = v1849;
      v312[16] = v1861;
      v312[17] = v1860;
      v1850 = *(v727 + 16);
      (v1850)(&v312[v730], v728, v729);
      swift_storeEnumTagMultiPayload();

      sub_1E617DC64(v312, &aBlock);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      v732 = *(v1851 + 80);
      *v312 = v1852;
      *(v312 + 1) = v731;
      LOBYTE(v728) = v1861;
      v312[16] = v1861;
      v312[17] = v1860;
      (v1850)(&v312[v732], v1842, v729);
      swift_storeEnumTagMultiPayload();
      v733 = v1825;
      v734 = v1862;
      sub_1E6508CD4(v1873, v312, &aBlock, v1825);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      v1852 = type metadata accessor for AppComposer;
      v735 = v1859;
      sub_1E62CC108(v734, v1859, type metadata accessor for AppComposer);
      v1851 = *(v1853 + 80);
      v736 = (v1851 + 17) & ~v1851;
      v737 = swift_allocObject();
      *(v737 + 16) = v728;
      v1853 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v735, v737 + v736, type metadata accessor for AppComposer);
      v738 = sub_1E6272CEC();
      v739 = v1653;
      v740 = v1826;
      sub_1E65E4718();

      sub_1E5DFE50C(v733, &unk_1ED077820, &qword_1E65F96A8);
      *&v1865 = v740;
      *(&v1865 + 1) = v738;
      swift_getOpaqueTypeConformance2();
      v741 = v1654;
      v742 = v1833;
      sub_1E5FEE4C8(v739);
      v743 = v1657;
      v744 = (v1657 + 8);
      v745 = *(v1657 + 8);
      v745(v739, v742);
      v746 = v1793;
      sub_1E5FEE4C8(v741);
      v1860 = v744;
      v745(v741, v742);
      v747 = v745;
      (*(v743 + 16))(v1790, v746, v742);
      v748 = *v1862;
      sub_1E62CC108(v1862, v342, v1852);
      v749 = (v1851 + 16) & ~v1851;
      v750 = v1855 + v749;
      v751 = swift_allocObject();
      sub_1E5E1E528(v342, v751 + v749, v1853);
      v750[v751] = v1861;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v752 = v1563;
      }

      else
      {

        v752 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B20, &qword_1E65F9800);
      v753 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      *(&v1587 + 1) = sub_1E62BBB1C;
      *&v1587 = v748;
      v754 = v1790;
      v755 = sub_1E630B390(v1790, v752, MEMORY[0x1E69E7CC0], v753, 0, 0, 0, 0, 0, 0, v1587, v751);

      v747(v754, v1833);
      v369 = v755;
      sub_1E65D71F8();
      sub_1E62CC0C0(&qword_1ED075EA8, MEMORY[0x1E6968678]);
      sub_1E65E5E48();
      v756 = sub_1E65E5C48();

      [v369 setTitle_];

      v757 = sub_1E6307A64();
      v758 = v757;
      if (v1854 > 1)
      {
        [v757 setLargeTitleDisplayMode_];
        swift_unknownObjectRelease();
      }

      else
      {
        [v757 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        v758 = v369;
      }

      v747(v1793, v1833);
      (*(v1791 + 8))(v1842, v1792);
      goto LABEL_266;
    case 4u:
      v492 = &v356[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48)];
      v493 = *v492;
      v494 = v492[1];
      v495 = v356;
      v496 = v1656;
      sub_1E5E1E528(v495, v1656, MEMORY[0x1E699DD40]);
      v497 = v1658;
      v498 = v493;
      v499 = v1862;
      sub_1E63DB038(v496, v498, v494, v1873, v1658);

      v500 = v1655;
      sub_1E5DFD1CC(v497, v1655, &unk_1ED077810, &qword_1E65F96A0);
      v501 = *v499;
      v502 = *(v1860 + 8);
      v503 = swift_allocObject();
      v1862 = *(v499 + v502);
      *(v503 + 16) = v1862;
      v504 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v505 = v1560;
      }

      else
      {

        swift_unknownObjectRetain();
        v505 = MEMORY[0x1E69E7CD0];
      }

      v506 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v504);
      v507 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D8, &qword_1E65F97E8));
      v369 = sub_1E626CF50(v500, v505, MEMORY[0x1E69E7CC0], v506, 0, 0, 0, 0, 0, 0, 0, v501, sub_1E62AD21C, v503);

      sub_1E5DFE50C(v497, &unk_1ED077810, &qword_1E65F96A0);
      sub_1E62BC770(v496, MEMORY[0x1E699DD40]);
      goto LABEL_266;
    case 5u:
      v845 = v1664;
      v846 = v1862;
      AppComposer.libraryGalleryViewBuilder(_:currentRoutingContext:)(*v356, v1873, v1664);
      v847 = v1663;
      sub_1E5DFD1CC(v845, v1663, &qword_1ED0729A0, &unk_1E65FA520);
      v848 = *v846;
      v849 = *(v1860 + 8);
      v850 = swift_allocObject();
      v1862 = *(v846 + v849);
      *(v850 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v851 = v1566;
      }

      else
      {

        swift_unknownObjectRetain();
        v851 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C8, &qword_1E65F97D8);
      v852 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      *(&v1588 + 1) = sub_1E62AD21C;
      *&v1588 = v848;
      v853 = sub_1E630B390(v847, v851, MEMORY[0x1E69E7CC0], v852, 0, 0, 0, 0, 0, 0, v1588, v850);

      sub_1E5DFE50C(v847, &qword_1ED0729A0, &unk_1E65FA520);
      swift_getKeyPath();
      v369 = v853;
      v854 = v1838;
      sub_1E65E4EC8();

      sub_1E65DF548();
      (*(v1686 + 8))(v854, v1688);
      v855 = sub_1E65E5C48();

      [v369 setTitle_];

      v856 = sub_1E6307A64();
      [v856 setLargeTitleDisplayMode_];

      sub_1E5DFE50C(v845, &qword_1ED0729A0, &unk_1E65FA520);
      goto LABEL_266;
    case 6u:
      *&v1861 = *v356;
      v870 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
      v871 = *(v870 + 64);
      (*(v1846 + 4))(v1803, &v356[*(v870 + 48)], v1847);
      (*(v1807 + 32))(v1806, &v356[v871], v1808);
      v872 = v1860;
      v873 = v1862;
      v874 = (v1862 + *(v1860 + 9));
      v875 = *v874;
      v876 = v874[1];
      sub_1E617FDC0();
      v877 = sub_1E65DB818();
      v878 = sub_1E65DB838();
      v879 = sub_1E625B3D4(v878);

      v880 = *(v872 + 8);
      v881 = swift_allocObject();
      v882 = *(v873 + v880);
      v1860 = v881;
      *(v881 + 16) = v882;
      swift_unknownObjectRetain();
      sub_1E65DB578();
      sub_1E65E1508();
      sub_1E65E1268();
      v883 = *v1854;
      v884 = objc_allocWithZone(sub_1E65E1328());
      v885 = sub_1E65E5C48();

      v886 = sub_1E65E5C48();

      v887 = [v884 initWithServiceType:v885 placement:v886 bag:v883];

      v888 = v887;
      sub_1E65E14E8();
      if (v889)
      {
        v890 = sub_1E65E5C48();
      }

      else
      {
        v890 = 0;
      }

      v1275 = v1859;
      v1276 = v1853;
      [v888 setOfferHints_];

      v369 = v888;
      [v369 setAccount_];
      [v369 setAnonymousMetrics_];
      v1277 = sub_1E625E194(v879);
      v1278 = v1862;
      v1858 = v879;
      if (!v1277)
      {
        v1277 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      sub_1E625B10C(v1277);

      v1279 = sub_1E65E5AF8();

      [v369 setMetricsOverlay_];

      sub_1E65DB588();
      v1280 = sub_1E65E5C48();

      [v369 setMediaClientIdentifier_];

      v1281 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v1282 = sub_1E65E6348();

      [v369 setClientInfo_];

      v1283 = sub_1E65E1308();
      *&v1857 = type metadata accessor for AppComposer;
      sub_1E62CC108(v1278, v1275, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1284 = (*(v1276 + 80) + 16) & ~*(v1276 + 80);
      v1285 = (v1855 + v1284 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1286 = v1275;
      v1287 = (v1285 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1288 = swift_allocObject();
      v1856 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v1286, v1288 + v1284, type metadata accessor for AppComposer);
      v1289 = v1858;
      *(v1288 + v1285) = v1858;
      sub_1E5DF599C(&aBlock, v1288 + v1287);

      sub_1E65E13A8();

      v1290 = sub_1E65E1308();
      sub_1E62CC108(v1862, v1286, v1857);
      sub_1E5DF650C(v1873, &aBlock);
      v1291 = swift_allocObject();
      sub_1E5E1E528(v1286, v1291 + v1284, v1856);
      *(v1291 + v1285) = v1289;
      sub_1E5DF599C(&aBlock, v1291 + v1287);
      sub_1E65E13B8();

      sub_1E65E1318();
      v985 = *(v1846 + 1);
      v986 = v1847;
      v985(v1802, v1847);
      (*(v1807 + 8))(v1806, v1808);
      v987 = v1803;
      goto LABEL_148;
    case 7u:
      v759 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290);
      v760 = v1849;
      v761 = v1794;
      v762 = v1848;
      (*(v1849 + 32))(v1794, &v356[*(v759 + 48)], v1848);
      v763 = v1670;
      (*(v760 + 16))(v1670, v761, v762);
      v764 = v1862;
      v765 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      v766 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v767 = swift_allocObject();
      sub_1E5E1E528(v765, v767 + v766, type metadata accessor for AppComposer);
      v768 = (v763 + *(v1665 + 36));
      *v768 = sub_1E62BB4D8;
      v768[1] = v767;
      sub_1E5DFD1CC(v763, v1795, &unk_1ED0777F0, &qword_1E65F9690);
      v769 = *v764;
      v770 = *(v1860 + 8);
      v771 = swift_allocObject();
      v1862 = *(v764 + v770);
      *(v771 + 16) = v1862;
      v772 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v773 = v1564;
      }

      else
      {

        swift_unknownObjectRetain();
        v773 = MEMORY[0x1E69E7CD0];
      }

      v774 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v772);
      v775 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771C0, &qword_1E65F97D0));
      v369 = sub_1E626D770(v1795, v773, MEMORY[0x1E69E7CC0], v774, 0, 0, 0, 0, 0, 0, 0, v769, sub_1E62AD21C, v771);

      sub_1E5DFE50C(v763, &unk_1ED0777F0, &qword_1E65F9690);
      (*(v760 + 8))(v1794, v762);
      (*(v1846 + 1))(v356, v1847);
      goto LABEL_266;
    case 8u:
      v953 = *v356;
      v954 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v955 = *(v954 + 64);
      (*(v1846 + 4))(v1797, &v356[*(v954 + 48)], v1847);
      (*(v1849 + 32))(v1804, &v356[v955], v1848);
      v956 = v1860;
      v957 = v1862;
      v958 = (v1862 + *(v1860 + 9));
      v959 = *v958;
      v960 = v958[1];
      sub_1E617FDC0();
      v961 = sub_1E65DB818();
      v962 = sub_1E65DB838();
      v963 = sub_1E625B3D4(v962);

      v964 = *(v956 + 8);
      v965 = swift_allocObject();
      v1857 = *(v957 + v964);
      *(v965 + 16) = v1857;
      v966 = *v1854;
      v967 = objc_allocWithZone(sub_1E65E1378());
      swift_unknownObjectRetain();
      v968 = sub_1E65D7448();
      v969 = [v967 initWithBag:v966 URL:v968];

      v369 = v969;
      [v369 setAccount_];
      [v369 setAnonymousMetrics_];
      v970 = sub_1E625E194(v963);
      *&v1861 = v953;
      v1860 = v965;
      v1858 = v963;
      if (!v970)
      {
        v970 = sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v971 = v1853;
      sub_1E625B10C(v970);

      v972 = sub_1E65E5AF8();

      [v369 setMetricsOverlay_];

      sub_1E65DB588();
      v973 = sub_1E65E5C48();

      [v369 setMediaClientIdentifier_];

      v974 = [objc_opt_self() currentProcess];
      sub_1E65DB598();
      v975 = sub_1E65E6348();

      [v369 setClientInfo_];

      v976 = sub_1E65E1358();
      *&v1857 = type metadata accessor for AppComposer;
      v977 = v1859;
      sub_1E62CC108(v957, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v978 = (*(v971 + 80) + 16) & ~*(v971 + 80);
      v979 = ((v1855 + v978 + 7) & 0xFFFFFFFFFFFFFFF8);
      v1856 = v979;
      v980 = (v979 + 15) & 0xFFFFFFFFFFFFFFF8;
      v981 = swift_allocObject();
      v1855 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v977, v981 + v978, type metadata accessor for AppComposer);
      v982 = v1858;
      *(v979 + v981) = v1858;
      sub_1E5DF599C(&aBlock, v981 + v980);

      sub_1E65E13A8();

      v983 = sub_1E65E1358();
      sub_1E62CC108(v1862, v977, v1857);
      sub_1E5DF650C(v1873, &aBlock);
      v984 = swift_allocObject();
      sub_1E5E1E528(v977, v984 + v978, v1855);
      *(v1856 + v984) = v982;
      sub_1E5DF599C(&aBlock, v984 + v980);
      sub_1E65E13B8();

      sub_1E65E1368();
      v985 = *(v1846 + 1);
      v986 = v1847;
      v985(v1796, v1847);
      (*(v1849 + 8))(v1804, v1848);
      v987 = v1797;
LABEL_148:
      v985(v987, v986);
      goto LABEL_266;
    case 9u:
      v611 = *v356;
      v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
      v613 = *(v612 + 64);
      (*(v1846 + 4))(v1800, &v356[*(v612 + 48)], v1847);
      v614 = (v1849 + 32);
      v615 = v1805;
      v1856 = *(v1849 + 32);
      (v1856)(v1805, &v356[v613], v1848);
      v616 = v1860;
      v617 = v1862;
      v618 = (v1862 + *(v1860 + 9));
      v619 = *v618;
      v620 = v618[1];
      sub_1E617FDC0();
      v621 = sub_1E65DB838();
      v622 = sub_1E625B3D4(v621);

      v623 = *(v616 + 8);
      v624 = swift_allocObject();
      v1861 = *(v617 + v623);
      v1860 = v624;
      *(v624 + 16) = v1861;
      v625 = objc_opt_self();
      swift_unknownObjectRetain();
      v626 = [v625 currentProcess];
      sub_1E65DB598();
      v627 = sub_1E65E6348();

      v628 = *v1854;
      v629 = objc_allocWithZone(sub_1E65E12F8());
      *&v1861 = v611;
      *&v1857 = v627;
      v369 = [v629 initWithBag:v628 account:v611 clientInfo:v627];
      v1858 = v622;
      v630 = sub_1E625E194(v622);
      v1852 = v614;
      if (!v630)
      {
        sub_1E6215168(MEMORY[0x1E69E7CC0]);
      }

      v631 = v1744;
      v632 = sub_1E65E5AF8();

      [v369 setMetricsOverlay_];

      sub_1E63265A8(v631);
      v633 = v1849;
      v634 = *(v1849 + 48);
      v635 = v615;
      v636 = v1848;
      v637 = v634(v631, 1, v1848);
      v638 = v1856;
      if (v637 == 1)
      {
        v639 = *(v633 + 16);
        v640 = v1787;
        v639(v1787, v635, v636);
        if (v634(v631, 1, v636) != 1)
        {
          sub_1E5DFE50C(v631, &qword_1ED072340, &qword_1E65EA410);
        }
      }

      else
      {
        v640 = v1787;
        (v1856)(v1787, v631, v636);
      }

      v1222 = sub_1E65D7448();
      v1223 = [v369 loadURL_];

      v1224 = v640;
      v1225 = v1849;
      v1226 = v1836;
      (*(v1849 + 16))(v1836, v1224, v636);
      v1227 = (*(v1225 + 80) + 16) & ~*(v1225 + 80);
      v1228 = swift_allocObject();
      v638(v1228 + v1227, v1226, v636);
      *&v1870 = sub_1E62BBA9C;
      *(&v1870 + 1) = v1228;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v1869 = sub_1E625E2DC;
      *(&v1869 + 1) = &block_descriptor_10;
      v1229 = _Block_copy(&aBlock);

      [v1223 addFinishBlock_];
      _Block_release(v1229);

      v1230 = sub_1E65E12D8();
      v1231 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1232 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1233 = (v1855 + v1232 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1234 = swift_allocObject();
      sub_1E5E1E528(v1231, v1234 + v1232, type metadata accessor for AppComposer);
      *(v1234 + v1233) = v1858;
      sub_1E5DF599C(&aBlock, v1234 + ((v1233 + 15) & 0xFFFFFFFFFFFFFFF8));
      sub_1E65E1338();

      sub_1E65E12E8();
      v1235 = *(v1225 + 8);
      v1235(v1787, v636);
      v1236 = *(v1846 + 1);
      v1237 = v1847;
      v1236(v1799, v1847);
      v1235(v1805, v636);
      v1236(v1800, v1237);
      goto LABEL_266;
    case 0xAu:
      v891 = *v356;
      v892 = *(v356 + 1);
      if (v357 < 2)
      {
        v1854 = type metadata accessor for AppComposer;
        v893 = v1862;
        v894 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v895 = *(v1853 + 80);
        v1844 = (v1855 + ((v895 + 16) & ~v895));
        v896 = (v895 + 16) & ~v895;
        v1847 = v896;
        v1845 = v895 | 7;
        v897 = (v1844 + 7) & 0xFFFFFFFFFFFFFFF8;
        v898 = swift_allocObject();
        v1846 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v894, v898 + v896, type metadata accessor for AppComposer);
        v899 = (v898 + v897);
        *v899 = v891;
        v899[1] = v892;

        sub_1E61F84B0(v891, v892, sub_1E62BBA84, v898, &aBlock);

        AppComposer.modalityDetailViewBuilder(identifier:currentRoutingContext:)(v891, v892, v1873, v1785);
        v900 = v891;
        v1849 = v891;
        v901 = v1850;
        sub_1E65D76E8();
        v902 = v892;
        v903 = v1770;
        *v1770 = v900;
        *(v903 + 8) = v902;
        *&v1861 = v902;
        *(v903 + 16) = 4;
        swift_storeEnumTagMultiPayload();

        v904 = sub_1E6200DD8(v903, v901, &aBlock);
        sub_1E5DFE50C(v903, &unk_1ED0776E0, &qword_1E65EDC00);
        v1855 = *(v1852 + 2);
        (v1855)(v1820, v901, v1851);
        v905 = sub_1E65E4BA8();
        v906 = v1841;
        *v1841 = v905;
        *(v906 + 1) = v907;
        v1839 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v908 = sub_1E65E4998();
        v909 = *(v1764 + 36);
        v1843 = sub_1E604C89C();

        v910 = v1840;
        v1842 = v904;
        sub_1E65DE568();
        *v910 = v908;
        v911 = v1861;
        *v903 = v1849;
        *(v903 + 8) = v911;
        *(v903 + 16) = 4;
        swift_storeEnumTagMultiPayload();
        v912 = v893;
        v913 = v1859;
        sub_1E62CC108(v912, v1859, v1854);
        sub_1E5DFD1CC(v903, v1824, &unk_1ED0776E0, &qword_1E65EDC00);
        v914 = v1851;
        (v1855)(v1821, v901, v1851);
        p_aBlock = &aBlock;
        v1855 = aBlock;
        v1854 = *(&v1869 + 1);
        v1853 = *(&v1870 + 1);
        v1849 = *(&v1871 + 1);
        v1848 = *(&v1872[0] + 1);
        v916 = (v1844 + *(v1765 + 80)) & ~*(v1765 + 80);
        v917 = v1852;
        v918 = (v1766 + *(v1852 + 80) + v916) & ~*(v1852 + 80);
        v919 = (v313 + v918 + 7) & 0xFFFFFFFFFFFFFFF8;
        v920 = swift_allocObject();
        sub_1E5E1E528(v913, v1847 + v920, v1846);
        sub_1E5FAB460(v1824, v920 + v916, &unk_1ED0776E0, &qword_1E65EDC00);
        v917[4](v920 + v918, v1821, v914);
        v921 = (v920 + v919);
        v922 = v1871;
        v921[2] = v1870;
        v921[3] = v922;
        v921[4] = v1872[0];
        v923 = v1869;
        *v921 = aBlock;
        v921[1] = v923;

        swift_unknownObjectRetain();

        v924 = v1771;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v903, &unk_1ED0776E0, &qword_1E65EDC00);
        v925 = v1773;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
        sub_1E62CC0C0(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
        v926 = v1779;
        v927 = v1774;
        v928 = v1776;
        sub_1E65E47D8();
        (*(v1775 + 8))(v925, v928);
        (*(v1772 + 8))(v924, v927);
        v929 = sub_1E65E49C8();
        KeyPath = swift_getKeyPath();
        *&v1865 = v929;
        v931 = sub_1E65E3D08();
        v932 = (v926 + *(v1778 + 36));
        *v932 = KeyPath;
        v932[1] = v931;
        v933 = *MEMORY[0x1E697E6E8];
        v934 = sub_1E65E3DD8();
        v935 = v1780;
        (*(*(v934 - 8) + 104))(v1780, v933, v934);
        sub_1E62CC0C0(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
        if (sub_1E65E5B98())
        {
          v1859 = &v1841[v1839];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
          v936 = v1755;
          sub_1E65E4848();
          sub_1E5DFE50C(v935, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v926, &unk_1ED0776C0, &qword_1E65F9648);
          v937 = v1757;
          sub_1E5DFD1CC(v1840, v1757, &unk_1ED0776D0, &qword_1E65F9650);
          v938 = v1759;
          v939 = *(v1759 + 16);
          v940 = v1758;
          v941 = v1760;
          v939(v1758, v936, v1760);
          v942 = v1859;
          sub_1E5DFD1CC(v937, v1859, &unk_1ED0776D0, &qword_1E65F9650);
          v943 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v939((v942 + *(v943 + 48)), v940, v941);
          v944 = *(v938 + 8);
          v944(v936, v941);
          sub_1E5DFE50C(v1840, &unk_1ED0776D0, &qword_1E65F9650);
          v944(v940, v941);
          sub_1E5DFE50C(v937, &unk_1ED0776D0, &qword_1E65F9650);
          v945 = v1841;
          v946 = &v1841[*(v1754 + 36)];
          v947 = v1842;
          *v946 = sub_1E6275B64;
          v946[1] = v947;
          v948 = type metadata accessor for BarButtonItem();
          v946[2] = 0;
          v946[3] = 0;
          v949 = objc_allocWithZone(v948);

          v950 = sub_1E625BF8C(v1820, v945);

          (*(v1852 + 1))(v1850, v1851);
          sub_1E5DFD1CC(v1785, v1752, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v935 = swift_allocObject();
          *(v935 + 16) = xmmword_1E65EA660;
          *(v935 + 32) = v950;
          v951 = v950;
          v952 = sub_1E65E4B48();
          *&v1861 = v951;
          if (v952)
          {
            v927 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v934 = 0;
          }

          else
          {
            v927 = [objc_opt_self() blackColor];
            v934 = 3;
          }

          v1511 = v1862;
          v924 = *v1862;
          v1512 = *(v1860 + 8);
          p_aBlock = swift_allocObject();
          v1862 = *(v1511 + v1512);
          p_aBlock[1] = v1862;
          if (!(MEMORY[0x1E69E7CC0] >> 62))
          {
            goto LABEL_231;
          }

          goto LABEL_294;
        }

        __break(1u);
LABEL_293:
        __break(1u);
LABEL_294:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1513 = v1568;
          goto LABEL_232;
        }

LABEL_231:

        swift_unknownObjectRetain();
        v1513 = MEMORY[0x1E69E7CD0];
LABEL_232:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
        v1514 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
        *(&v1595 + 1) = sub_1E62AD21C;
        *&v1595 = v924;
        v1515 = v1752;
        v369 = sub_1E630B390(v1752, v1513, v935, v1514, 0, 0, v927, v934, 1, 0, v1595, p_aBlock);

        v370 = &qword_1ED0770C0;
        v371 = &unk_1E65FA410;
        sub_1E5DFE50C(v1515, &qword_1ED0770C0, &unk_1E65FA410);

        swift_unknownObjectRelease();
        v1416 = v1785;
LABEL_237:
        sub_1E5DFE50C(v1416, v370, v371);
        goto LABEL_266;
      }

      v1417 = v1862;
      if (v357 != 3)
      {
        goto LABEL_339;
      }

      v1418 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1419 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1420 = (v1855 + v1419 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1421 = swift_allocObject();
      sub_1E5E1E528(v1418, v1421 + v1419, type metadata accessor for AppComposer);
      v1422 = (v1421 + v1420);
      *v1422 = v891;
      v1422[1] = v892;
      sub_1E5DF599C(&aBlock, v1421 + ((v1420 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1423 = sub_1E65E4438();
      v1424 = *v1417;
      v1425 = *(v1860 + 8);
      v1426 = swift_allocObject();
      v1862 = *(v1417 + v1425);
      *(v1426 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1427 = v1577;
      }

      else
      {

        swift_unknownObjectRetain();
        v1427 = MEMORY[0x1E69E7CD0];
      }

      v1428 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1404 = sub_1E626CAE8(sub_1E62BBA6C, v1421, v1423, v1427, MEMORY[0x1E69E7CC0], v1428, 0, 0, 0, 0, 0, 0, 0, v1424, sub_1E62AD21C, v1426);

      v1405 = v1829;
      if (!v1829)
      {
        goto LABEL_221;
      }

      v1429 = v1829;
      v1430 = v1404;
      if (![v1429 isViewLoaded])
      {
        goto LABEL_222;
      }

      v1408 = [v1429 view];
      if (!v1408)
      {
LABEL_325:
        __break(1u);
        goto LABEL_326;
      }

      goto LABEL_220;
    case 0xBu:
      v409 = v1666;
      AppComposer.onboardingModalityDetailViewBuilder(modalityIdentifier:currentRoutingContext:)(*v356, *(v356 + 1), v1873, v1666);

      v381 = &qword_1ED077108;
      v382 = &unk_1E65FA510;
      sub_1E5DFD1CC(v409, v1667, &qword_1ED077108, &unk_1E65FA510);
      v410 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AB0, &unk_1E65FA790));
      v369 = sub_1E65E18F8();
      v411 = v409;
      goto LABEL_126;
    case 0xCu:
      v607 = *v356;
      v608 = *(v356 + 1);
      sub_1E5F94E00(*(v356 + 2), v356[24]);
      v609 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
      v610 = InteropService.makePrivacySplashViewController.getter();
      v369 = v610(v607, v608);

      goto LABEL_265;
    case 0xDu:
      v858 = *v356;
      v857 = *(v356 + 1);
      v859 = *v356;
      v860 = v1862;
      sub_1E637E93C(v859, v857, &aBlock);
      v861 = v1668;
      sub_1E64970E4(v858, v857, v1873, &aBlock, v1668);
      v862 = sub_1E626FB98();
      v863 = v1801;
      sub_1E6012F9C(v1669, v862);
      sub_1E5DFE50C(v861, &qword_1ED077100, &unk_1E65FA500);
      v864 = v1788;
      sub_1E65D76E8();
      v865 = v1789;
      sub_1E65D76E8();
      sub_1E5DFD1CC(v863, v1798, &unk_1ED0777E0, &qword_1E65F9688);
      v866 = sub_1E623EEE8(v858, v857, v864, v865, &aBlock);
      if (v357 >= 2)
      {
        v869 = v1852;
        if (v357 != 3)
        {
          goto LABEL_331;
        }

        v867 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
        v867 = swift_allocObject();
        *(v867 + 16) = xmmword_1E65F32F0;
        *(v867 + 32) = sub_1E623F674(v858, v857, v864, &aBlock);
        *(v867 + 40) = [objc_opt_self() flexibleSpaceItem];
        v868 = sub_1E62408B4(v858, v857, v865, &aBlock);

        *(v867 + 48) = v868;
        v869 = v1852;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771B8, &qword_1E65F9750);
      v1409 = *v860;
      v1410 = *(v1860 + 8);
      v1411 = swift_allocObject();
      v1862 = *(v860 + v1410);
      *(v1411 + 16) = v1862;
      v1412 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);

      swift_unknownObjectRetain();
      *(&v1593 + 1) = sub_1E62AD21C;
      *&v1593 = v1409;
      v1413 = v1798;
      v369 = sub_1E630B390(v1798, v866, v867, v1412, 0, 0, 0, 0, 1, 0, v1593, v1411);

      v370 = &unk_1ED0777E0;
      v371 = &qword_1E65F9688;
      sub_1E5DFE50C(v1413, &unk_1ED0777E0, &qword_1E65F9688);
      swift_unknownObjectRelease();

      v1414 = *(v869 + 1);
      v1415 = v1851;
      v1414(v1789, v1851);
      v1414(v1788, v1415);
      v1416 = v1801;
      goto LABEL_237;
    case 0xEu:
    case 0x13u:
    case 0x18u:
    case 0x26u:
    case 0x28u:
      goto LABEL_330;
    case 0xFu:
      v1027 = *v356;
      v1028 = *(v356 + 1);
      if (v357 < 2)
      {
        v1854 = type metadata accessor for AppComposer;
        v1029 = v1862;
        v1030 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1031 = *(v1853 + 80);
        v1844 = (v1855 + ((v1031 + 16) & ~v1031));
        v1032 = (v1031 + 16) & ~v1031;
        v1847 = v1032;
        v1845 = v1031 | 7;
        v1033 = (v1844 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1034 = swift_allocObject();
        v1846 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v1030, v1034 + v1032, type metadata accessor for AppComposer);
        v1035 = (v1034 + v1033);
        *v1035 = v1027;
        v1035[1] = v1028;

        sub_1E61F84B0(v1027, v1028, sub_1E62BB970, v1034, &aBlock);

        AppComposer.trainerDetailViewBuilder(identifier:currentRoutingContext:)(v1027, v1028, v1873, v1786);
        v1036 = v1027;
        v1849 = v1027;
        v1037 = v1850;
        sub_1E65D76E8();
        v1038 = v1028;
        v1039 = v1770;
        *v1770 = v1036;
        *(v1039 + 8) = v1038;
        *&v1861 = v1038;
        *(v1039 + 16) = 3;
        swift_storeEnumTagMultiPayload();

        v1040 = sub_1E6200DD8(v1039, v1037, &aBlock);
        sub_1E5DFE50C(v1039, &unk_1ED0776E0, &qword_1E65EDC00);
        v1855 = *(v1852 + 2);
        (v1855)(v1820, v1037, v1851);
        v1041 = sub_1E65E4BA8();
        v1042 = v1841;
        *v1841 = v1041;
        *(v1042 + 1) = v1043;
        v1839 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A3E0, &qword_1E65F9758) + 44);
        v1044 = sub_1E65E4998();
        v1045 = *(v1764 + 36);
        v1843 = sub_1E604C89C();

        v1046 = v1840;
        v1842 = v1040;
        sub_1E65DE568();
        *v1046 = v1044;
        v1047 = v1861;
        *v1039 = v1849;
        *(v1039 + 8) = v1047;
        *(v1039 + 16) = 3;
        swift_storeEnumTagMultiPayload();
        v1048 = v1029;
        v1049 = v1859;
        sub_1E62CC108(v1048, v1859, v1854);
        sub_1E5DFD1CC(v1039, v1824, &unk_1ED0776E0, &qword_1E65EDC00);
        v1050 = v1851;
        (v1855)(v1821, v1037, v1851);
        p_aBlock = &aBlock;
        v1855 = aBlock;
        v1854 = *(&v1869 + 1);
        v1853 = *(&v1870 + 1);
        v1849 = *(&v1871 + 1);
        v1848 = *(&v1872[0] + 1);
        v1051 = (v1844 + *(v1765 + 80)) & ~*(v1765 + 80);
        v1052 = v1852;
        v1053 = (v1766 + *(v1852 + 80) + v1051) & ~*(v1852 + 80);
        v1054 = (v313 + v1053 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1055 = swift_allocObject();
        sub_1E5E1E528(v1049, v1847 + v1055, v1846);
        sub_1E5FAB460(v1824, v1055 + v1051, &unk_1ED0776E0, &qword_1E65EDC00);
        v1052[4](v1055 + v1053, v1821, v1050);
        v1056 = (v1055 + v1054);
        v1057 = v1871;
        v1056[2] = v1870;
        v1056[3] = v1057;
        v1056[4] = v1872[0];
        v1058 = v1869;
        *v1056 = aBlock;
        v1056[1] = v1058;

        swift_unknownObjectRetain();

        v924 = v1771;
        sub_1E65DE4E8();
        sub_1E5DFE50C(v1039, &unk_1ED0776E0, &qword_1E65EDC00);
        v1059 = v1773;
        sub_1E65E3F78();
        sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280);
        sub_1E62CC0C0(&unk_1ED07A410, MEMORY[0x1E697C4E8]);
        v1060 = v1779;
        v927 = v1774;
        v1061 = v1776;
        sub_1E65E47D8();
        (*(v1775 + 8))(v1059, v1061);
        (*(v1772 + 8))(v924, v927);
        v1062 = sub_1E65E49C8();
        v1063 = swift_getKeyPath();
        *&v1865 = v1062;
        v1064 = sub_1E65E3D08();
        v1065 = (v1060 + *(v1778 + 36));
        *v1065 = v1063;
        v1065[1] = v1064;
        v1066 = *MEMORY[0x1E697E6E8];
        v934 = sub_1E65E3DD8();
        v935 = v1780;
        (*(*(v934 - 8) + 104))(v1780, v1066, v934);
        sub_1E62CC0C0(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
        if (sub_1E65E5B98())
        {
          v1859 = &v1841[v1839];
          sub_1E626FD54();
          sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
          v1067 = v1755;
          sub_1E65E4848();
          sub_1E5DFE50C(v935, &unk_1ED0776B0, &unk_1E65EDE50);
          sub_1E5DFE50C(v1060, &unk_1ED0776C0, &qword_1E65F9648);
          v1068 = v1757;
          sub_1E5DFD1CC(v1840, v1757, &unk_1ED0776D0, &qword_1E65F9650);
          v1069 = v1759;
          v1070 = *(v1759 + 16);
          v1071 = v1758;
          v1072 = v1760;
          v1070(v1758, v1067, v1760);
          v1073 = v1859;
          sub_1E5DFD1CC(v1068, v1859, &unk_1ED0776D0, &qword_1E65F9650);
          v1074 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07A440, &unk_1E65FA710);
          v1070((v1073 + *(v1074 + 48)), v1071, v1072);
          v1075 = *(v1069 + 8);
          v1075(v1067, v1072);
          sub_1E5DFE50C(v1840, &unk_1ED0776D0, &qword_1E65F9650);
          v1075(v1071, v1072);
          sub_1E5DFE50C(v1068, &unk_1ED0776D0, &qword_1E65F9650);
          v1076 = v1841;
          v1077 = &v1841[*(v1754 + 36)];
          v1078 = v1842;
          *v1077 = sub_1E626FECC;
          v1077[1] = v1078;
          v1079 = type metadata accessor for BarButtonItem();
          v1077[2] = 0;
          v1077[3] = 0;
          v1080 = objc_allocWithZone(v1079);

          v1081 = sub_1E625BF8C(v1820, v1076);

          (*(v1852 + 1))(v1850, v1851);
          sub_1E5DFD1CC(v1786, v1753, &qword_1ED0770C0, &unk_1E65FA410);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
          v1082 = swift_allocObject();
          *(v1082 + 16) = xmmword_1E65EA660;
          *(v1082 + 32) = v1081;
          v1083 = v1081;
          v1084 = sub_1E65E4B48();
          *&v1861 = v1083;
          if (v1084)
          {
            v1085 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
            v1086 = 0;
          }

          else
          {
            v1085 = [objc_opt_self() blackColor];
            v1086 = 3;
          }

          v1516 = v1862;
          v1517 = *v1862;
          v1518 = *(v1860 + 8);
          v1519 = swift_allocObject();
          v1862 = *(v1516 + v1518);
          *(v1519 + 16) = v1862;
          if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
          {

            swift_unknownObjectRetain();
            sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
            v1520 = v1569;
          }

          else
          {

            swift_unknownObjectRetain();
            v1520 = MEMORY[0x1E69E7CD0];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A80, &qword_1E65F9790);
          v1521 = v1857;
          (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
          *(&v1596 + 1) = sub_1E62AD21C;
          *&v1596 = v1517;
          v1522 = v1753;
          v369 = sub_1E630B390(v1753, v1520, v1082, v1521, 0, 0, v1085, v1086, 1, 0, v1596, v1519);

          v370 = &qword_1ED0770C0;
          v371 = &unk_1E65FA410;
          sub_1E5DFE50C(v1522, &qword_1ED0770C0, &unk_1E65FA410);

          swift_unknownObjectRelease();
          v1416 = v1786;
          goto LABEL_237;
        }

        goto LABEL_293;
      }

      v1444 = v1862;
      if (v357 != 3)
      {
LABEL_339:
        *&aBlock = 0;
        *(&aBlock + 1) = 0xE000000000000000;
        sub_1E65E68A8();
        MEMORY[0x1E694D7C0](0xD000000000000026, 0x80000001E6615040);
        LOBYTE(v1865) = 2;
        sub_1E65E69B8();
        goto LABEL_331;
      }

      v1445 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1446 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1447 = (v1855 + v1446 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1448 = swift_allocObject();
      sub_1E5E1E528(v1445, v1448 + v1446, type metadata accessor for AppComposer);
      v1449 = (v1448 + v1447);
      *v1449 = v1027;
      v1449[1] = v1028;
      sub_1E5DF599C(&aBlock, v1448 + ((v1447 + 23) & 0xFFFFFFFFFFFFFFF8));
      v1450 = sub_1E65E4438();
      v1451 = *v1444;
      v1452 = *(v1860 + 8);
      v1453 = swift_allocObject();
      v1862 = *(v1444 + v1452);
      *(v1453 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1454 = v1578;
      }

      else
      {

        swift_unknownObjectRetain();
        v1454 = MEMORY[0x1E69E7CD0];
      }

      v1455 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1404 = sub_1E626CAE8(sub_1E62BB958, v1448, v1450, v1454, MEMORY[0x1E69E7CC0], v1455, 0, 0, 0, 0, 0, 0, 0, v1451, sub_1E62AD21C, v1453);

      v1405 = v1829;
      if (!v1829)
      {
        goto LABEL_221;
      }

      v1456 = v1829;
      v1457 = v1404;
      if (![v1456 isViewLoaded])
      {
        goto LABEL_222;
      }

      v1408 = [v1456 view];
      if (!v1408)
      {
LABEL_326:
        __break(1u);
        goto LABEL_327;
      }

      goto LABEL_220;
    case 0x10u:
      v508 = *v356;
      v509 = *(v356 + 1);
      sub_1E65D76E8();
      sub_1E65D76E8();
      sub_1E65D76E8();
      v510 = v508;
      v511 = v1862;
      LODWORD(v1854) = v357;
      sub_1E632331C(v508, v509, &aBlock);
      v1843 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
      v1838 = swift_allocBox();
      v512 = *v511;
      swift_getKeyPath();
      v513 = v1671;
      sub_1E65E4EC8();

      *&v1865 = v510;
      v1847 = v510;
      *(&v1865 + 1) = v509;

      v514 = v1673;
      sub_1E65E4D78();
      (*(v1672 + 8))(v513, v514);

      v1826 = v512;
      *&v1865 = sub_1E65E4ED8();
      *&v1861 = type metadata accessor for AppComposer;
      v515 = v1859;
      sub_1E62CC108(v511, v1859, type metadata accessor for AppComposer);
      v516 = *(v1853 + 80);
      v1836 = v1855 + ((v516 + 16) & ~v516);
      v517 = (v516 + 16) & ~v516;
      v1848 = v517;
      v1855 = (v516 | 7);
      v1835 = (((v1836 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      v518 = ((v1836 + 7) & 0xFFFFFFFFFFFFFFF8);
      v1846 = v518;
      v519 = swift_allocObject();
      v1853 = type metadata accessor for AppComposer;
      sub_1E5E1E528(v515, v519 + v517, type metadata accessor for AppComposer);
      v520 = (v518 + v519);
      *v520 = v510;
      v520[1] = v509;
      v1849 = v509;
      v521 = swift_allocObject();
      *(v521 + 16) = sub_1E62BB908;
      *(v521 + 24) = v519;
      sub_1E65E3BB8();

      v522 = v1674;
      sub_1E65E3BD8();

      sub_1E5FED46C(&unk_1ED077940, &qword_1ED0770E8, &unk_1E65FA4D0);

      v523 = v1677;
      v524 = v1678;
      sub_1E65E3BE8();

      (*(v1675 + 8))(v522, v524);
      sub_1E5FED46C(&qword_1ED077138, &unk_1ED0777B0, &qword_1E65F9678);

      v525 = v1676;
      v526 = v1682;
      sub_1E65E3BD8();

      (*(v1680 + 8))(v523, v526);
      sub_1E5FED46C(&unk_1ED077950, &qword_1ED0770F0, &unk_1E65FA4E0);
      v527 = v1681;
      v1833 = sub_1E65E3BC8();
      (*(v1679 + 8))(v525, v527);
      v528 = v1862;
      v529 = v1859;
      sub_1E62CC108(v1862, v1859, v1861);
      sub_1E5DF650C(v1873, &v1865);
      v1843 = aBlock;
      v1842 = *(&v1869 + 1);
      v1841 = *(&v1870 + 1);
      v1840 = *(&v1871 + 1);
      v1834 = *(&v1872[0] + 1);
      v530 = v1846;
      v531 = (v1846 + 47) & 0xFFFFFFFFFFFFFFF8;
      v532 = swift_allocObject();
      v533 = v1848;
      sub_1E5E1E528(v529, &v1848[v532], v1853);
      sub_1E5DF599C(&v1865, v530 + v532);
      v1832 = v532;
      v534 = (v532 + v531);
      v535 = v1847;
      v536 = v1849;
      *v534 = v1847;
      v534[1] = v536;
      v537 = (v532 + ((v531 + 23) & 0xFFFFFFFFFFFFFFF8));
      v538 = v1872[0];
      v537[3] = v1871;
      v537[4] = v538;
      v539 = v1870;
      v537[1] = v1869;
      v537[2] = v539;
      *v537 = aBlock;
      v540 = v528;
      v541 = v1844;
      sub_1E62CC108(v540, v1844, v1861);
      sub_1E5DF650C(v1873, v1864);
      v542 = (v530 + 23) & 0xFFFFFFFFFFFFFFF8;
      v543 = swift_allocObject();
      sub_1E5E1E528(v541, &v533[v543], v1853);
      v544 = (v530 + v543);
      *v544 = v535;
      v544[1] = v536;
      v1829 = v543;
      sub_1E5DF599C(v1864, v543 + v542);
      v545 = (v543 + ((v542 + 47) & 0xFFFFFFFFFFFFFFF8));
      v546 = v1871;
      *(v545 + 2) = v1870;
      *(v545 + 3) = v546;
      *(v545 + 4) = v1872[0];
      v547 = v1869;
      *v545 = aBlock;
      *(v545 + 1) = v547;
      v548 = v1845;
      sub_1E62CC108(v1862, v1845, v1861);
      v549 = v1852;
      v550 = v1850;
      v551 = v1851;
      (*(v1852 + 2))(v1850, v1839, v1851);
      sub_1E5DF650C(v1873, v1863);
      v552 = &v1835[*(v549 + 80)] & ~*(v549 + 80);
      v553 = (v313 + v552 + 7) & 0xFFFFFFFFFFFFFFF8;
      v554 = swift_allocObject();
      v555 = v548;
      v556 = v1853;
      sub_1E5E1E528(v555, &v1848[v554], v1853);
      v557 = (v1846 + v554);
      v558 = v1847;
      v559 = v1849;
      *v557 = v1847;
      v557[1] = v559;
      v560 = *(v549 + 4);
      v1844 = v554;
      v560(v554 + v552, v550, v551);
      sub_1E5DF599C(v1863, v554 + v553);
      v561 = (v554 + ((v553 + 47) & 0xFFFFFFFFFFFFFFF8));
      v562 = v1871;
      v561[2] = v1870;
      v561[3] = v562;
      v561[4] = v1872[0];
      v563 = v1869;
      *v561 = aBlock;
      v561[1] = v563;
      v564 = v1862;
      v565 = v1827;
      v566 = v1861;
      sub_1E62CC108(v1862, v1827, v1861);
      v567 = swift_allocObject();
      v568 = v1848;
      v1850 = v567;
      v569 = v556;
      sub_1E5E1E528(v565, &v1848[v567], v556);
      v570 = (v1846 + v567);
      v571 = v1849;
      *v570 = v558;
      v570[1] = v571;
      v572 = v1828;
      sub_1E62CC108(v564, v1828, v566);
      v573 = swift_allocObject();
      sub_1E5E1E528(v572, &v568[v573], v569);
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v1846 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      v1845 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077960, &unk_1E65FA670);
      sub_1E65E3368();
      sub_1E5FEB2FC();
      sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970);
      sub_1E62BBB50(&qword_1ED077970, &unk_1ED077960, &unk_1E65FA670, sub_1E626F6F0);
      sub_1E62CC0C0(&qword_1ED077178, MEMORY[0x1E699EBD8]);
      v574 = v1711;
      sub_1E65E3098();
      v575 = sub_1E5FED46C(&unk_1ED0779F0, &unk_1ED077790, &qword_1E65F9668);
      v576 = v1718;
      v577 = v1717;
      sub_1E630FCD8(&aBlock, v1717, v575, v1718);
      (*(v1714 + 8))(v574, v577);
      v578 = v1859;
      sub_1E62CC108(v1862, v1859, v1861);
      v579 = swift_allocObject();
      sub_1E5E1E528(v578, &v1848[v579], v1853);
      sub_1E626F9E0();
      v580 = v1726;
      sub_1E6259D5C(sub_1E62BB4D8, v579, v1719);

      sub_1E5DFE50C(v576, &qword_1ED0770E0, &unk_1E65FA4C0);
      *&v1865 = v1833;
      v581 = swift_allocObject();
      v582 = v1871;
      v581[3] = v1870;
      v581[4] = v582;
      v581[5] = v1872[0];
      v583 = v1869;
      v581[1] = aBlock;
      v581[2] = v583;
      v584 = swift_allocObject();
      *(v584 + 16) = sub_1E626FADC;
      *(v584 + 24) = v581;
      swift_unknownObjectRetain();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A00, &qword_1E65F9738);
      sub_1E626FB0C();
      sub_1E5FED46C(&qword_1ED077190, &unk_1ED077A00, &qword_1E65F9738);
      v585 = v1712;
      sub_1E65E4958();

      v586 = v580;
      v587 = v1831;
      sub_1E5DFE50C(v586, &unk_1ED0777A0, &qword_1E65F9670);
      v588 = v1862;

      v589 = sub_1E5FED46C(&unk_1ED077A10, &qword_1ED0770F8, &unk_1E65FA4F0);
      v590 = v1713;
      v591 = v1720;
      sub_1E5FEE4C8(v585);
      sub_1E5DFE50C(v585, &qword_1ED0770F8, &unk_1E65FA4F0);
      v592 = v1716;
      sub_1E5FEE4C8(v590);
      v593 = v590;
      v594 = v1849;
      sub_1E5DFE50C(v593, &qword_1ED0770F8, &unk_1E65FA4F0);

      v374 = v1751;
      sub_1E6012F9C(v591, v589);
      v595 = v1854;
      v596 = v592;
      v597 = v1830;
      sub_1E5DFE50C(v596, &qword_1ED0770F8, &unk_1E65FA4F0);
      sub_1E5DFD1CC(v374, v1784, &unk_1ED0777D0, &qword_1E65F9680);
      v598 = v1847;
      v599 = boxed_opaque_existential_1;
      *&v1861 = sub_1E62AF3FC(v1847, v594, v1839, v597, v587, boxed_opaque_existential_1, &aBlock, v588);
      if (v595 >= 2)
      {
        if (v595 != 3)
        {
          goto LABEL_331;
        }

        v603 = MEMORY[0x1E69E7CC0];
LABEL_169:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077198, &unk_1E65FA6B0);
        sub_1E65DC308();
        v1354 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v1355 = *(v1860 + 8);
        v1356 = swift_allocObject();
        v1862 = *(v588 + v1355);
        *(v1356 + 16) = v1862;
        v1357 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
        v1358 = v1826;

        swift_unknownObjectRetain();
        *(&v1592 + 1) = sub_1E62AD21C;
        *&v1592 = v1358;
        v1359 = v1784;
        v369 = sub_1E630B390(v1784, v1861, v603, v1357, v1354, 0, 0, 0, 1, 0, v1592, v1356);

        sub_1E5DFE50C(v1359, &unk_1ED0777D0, &qword_1E65F9680);
        v1360 = sub_1E6307A64();
        [v1360 setLargeTitleDisplayMode_];

        swift_unknownObjectRelease();

        sub_1E5DFE50C(v374, &unk_1ED0777D0, &qword_1E65F9680);
        v1361 = *(v1852 + 1);
        v1362 = v1851;
        v1361(v1831, v1851);
        v1361(v1830, v1362);
        v1361(v1839, v1362);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A20, &qword_1E65F9740);
        v377 = swift_allocObject();
        v600 = sub_1E62B87E8(v598, v594, v597, v599, &aBlock, v588);
        v375 = v594;
        *(v377 + 32) = v600;
        v378 = (v377 + 32);
        *(v377 + 40) = [objc_opt_self() flexibleSpaceItem];
        v601 = sub_1E62E68EC(v598, v375, v587, &aBlock);

        v602 = 0;
        *(v377 + 48) = v601;
        v603 = MEMORY[0x1E69E7CC0];
        *&v1865 = MEMORY[0x1E69E7CC0];
        v372 = 3;
LABEL_26:
        if (v602 <= 3)
        {
          v604 = 3;
        }

        else
        {
          v604 = v602;
        }

        while (1)
        {
          if (v602 == 3)
          {
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771A0, &unk_1E65FA6C0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            goto LABEL_169;
          }

          if (v604 == v602)
          {
            break;
          }

          v605 = *(v377 + 8 * v602++ + 32);
          if (v605)
          {
            v375 = v605;
            MEMORY[0x1E694D8F0]();
            if (*((v1865 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1865 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v606 = *((v1865 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_1E65E5F68();
              v374 = v1751;
            }

            sub_1E65E5FA8();
            v603 = v1865;
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_272:
        if (sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v379 = v1558;
        }

        else
        {
LABEL_7:

          swift_unknownObjectRetain();
          v379 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AD0, &unk_1E65FA7A0);
        v380 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v378);
        *(&v1583 + 1) = sub_1E62AD21C;
        *&v1583 = v375;
        v369 = sub_1E630B390(v374, v379, MEMORY[0x1E69E7CC0], v380, 0, 0, 0, 0, 0, 0, v1583, v377);

        v381 = &unk_1ED077800;
        v382 = &qword_1E65F9698;
LABEL_125:
        sub_1E5DFE50C(v374, v381, v382);
        v1221 = sub_1E6307A64();
        [v1221 setLargeTitleDisplayMode_];

        v411 = v372;
LABEL_126:
        sub_1E5DFE50C(v411, v381, v382);
      }

LABEL_266:
      __swift_destroy_boxed_opaque_existential_1(v1873);
      return v369;
    case 0x11u:
      v1102 = *(v356 + 1);

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v1104 = [objc_opt_self() bundleForClass_];
      v1105 = v1862;
      v1106 = *v1862;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1107;
      sub_1E5F9AEA8();
      v1108 = v1810;
      sub_1E65E41C8();
      v1109 = v1781;
      (*(v1832 + 2))(v1809, v1108, v1781);
      v1110 = *(v1860 + 8);
      v1111 = swift_allocObject();
      v1862 = *(v1105 + v1110);
      *(v1111 + 16) = v1862;
      v1112 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1113 = v1567;
      }

      else
      {

        swift_unknownObjectRetain();
        v1113 = MEMORY[0x1E69E7CD0];
      }

      v1114 = v1857;
      v1115 = v1848;
      v1116 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
      (*(v1858 + 104))(v1114, *MEMORY[0x1E699CE18], v1112);
      v1117 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v369 = sub_1E626DF90(v1809, v1113, MEMORY[0x1E69E7CC0], v1114, 0, 0, 0, 0, 0, 0, 0, v1106, sub_1E62AD21C, v1111);

      (*(v1832 + 1))(v1810, v1109);
      (*(v1849 + 8))(&v356[v1116], v1115);
      goto LABEL_266;
    case 0x12u:
      v776 = *v356;
      v777 = *(v356 + 1);
      v778 = v356[16];
      v779 = sub_1E65DAE38();
      if (v779 == sub_1E65DAE38())
      {
        v780 = 30;
      }

      else
      {
        v780 = 24;
      }

      v781 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      v782 = (*(v1853 + 80) + 33) & ~*(v1853 + 80);
      v783 = swift_allocObject();
      *(v783 + 16) = v776;
      *(v783 + 24) = v777;
      *(v783 + 32) = v778;
      sub_1E5E1E528(v781, v783 + v782, type metadata accessor for AppComposer);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077130, &qword_1E65F96C8));
      sub_1E626F21C();
      v369 = sub_1E6275B68(v780, &unk_1E65FA600, v783, 0, 0);
      [v369 setModalPresentationStyle_];
      sub_1E5F94E14();
      goto LABEL_266;
    case 0x14u:
      v717 = *(v356 + 1);
      v1856 = *v356;
      v1854 = v717;
      v718 = *(v356 + 3);
      v1860 = *(v356 + 2);
      v1858 = v718;
      *&v1857 = *(v356 + 4);
      v719 = *(v356 + 6);
      v720 = *(v356 + 7);
      if (v357 > 1)
      {
        v721 = v1859;
        if (v357 != 3)
        {
          goto LABEL_331;
        }

        v722 = 24;
      }

      else
      {
        v721 = v1859;
        if (v357)
        {
          v722 = 30;
        }

        else
        {
          v722 = 24;
          if (v356[40] < 2u)
          {
            v722 = 2;
          }
        }
      }

      *&v1861 = v722;
      v1363 = v1855;
      sub_1E62CC108(v1862, v721, type metadata accessor for AppComposer);
      v1364 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1365 = (v1363 + v1364 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1366 = (v1365 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1367 = (v1366 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1368 = (v1367 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1369 = swift_allocObject();
      sub_1E5E1E528(v721, v1369 + v1364, type metadata accessor for AppComposer);
      v1370 = (v1369 + v1365);
      v1371 = v1854;
      *v1370 = v1856;
      v1370[1] = v1371;
      v1372 = (v1369 + v1366);
      v1373 = v1858;
      *v1372 = v1860;
      v1372[1] = v1373;
      *(v1369 + v1367) = v1857;
      *(v1369 + v1368) = v719;
      *(v1369 + ((v1368 + 15) & 0xFFFFFFFFFFFFFFF8)) = v720;
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077910, &qword_1E65F96C0));
      v1374 = v720;
      v369 = sub_1E6275B68(v1861, &unk_1E65FA5F0, v1369, 0, 0);
      [v369 setModalPresentationStyle_];

      goto LABEL_266;
    case 0x15u:
      v1007 = *v356;
      v1008 = *(v356 + 1);
      v1009 = *(v356 + 2);
      v1010 = *(v356 + 3);
      v1011 = *(v356 + 4);
      v1012 = v356[40];
      v1013 = *(v356 + 6);
      v1014 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0);
      sub_1E5FAB460(&v356[*(v1014 + 112)], v1834, &unk_1ED077780, &unk_1E66097F0);
      v1860 = v1009;
      v1858 = v1010;
      *&v1857 = v1011;
      v1856 = v1007;
      v1854 = v1008;
      if (v357 > 1)
      {
        v1015 = v1859;
        if (v357 != 3)
        {
          goto LABEL_331;
        }

        v1016 = 24;
      }

      else
      {
        v1015 = v1859;
        if (v357)
        {
          v1016 = 30;
        }

        else
        {
          v1016 = 24;
          if (v1012 < 2)
          {
            v1016 = 2;
          }
        }
      }

      *&v1861 = v1016;
      sub_1E62CC108(v1862, v1015, type metadata accessor for AppComposer);
      v1431 = v1685;
      sub_1E5DFD1CC(v1834, v1685, &unk_1ED077780, &unk_1E66097F0);
      v1432 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1433 = (v1855 + v1432 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1434 = (v1433 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1435 = (v1434 + 23) & 0xFFFFFFFFFFFFFFF8;
      v1436 = (v1435 + 15) & 0xFFFFFFFFFFFFFFF8;
      v1437 = (*(v1683 + 80) + v1436 + 8) & ~*(v1683 + 80);
      v1438 = swift_allocObject();
      sub_1E5E1E528(v1015, v1438 + v1432, type metadata accessor for AppComposer);
      v1439 = (v1438 + v1433);
      v1440 = v1854;
      *v1439 = v1856;
      v1439[1] = v1440;
      v1441 = (v1438 + v1434);
      v1442 = v1858;
      *v1441 = v1860;
      v1441[1] = v1442;
      *(v1438 + v1435) = v1857;
      *(v1438 + v1436) = v1013;
      sub_1E5FAB460(v1431, v1438 + v1437, &unk_1ED077780, &unk_1E66097F0);
      v1443 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077080, qword_1E65F94F8));
      v369 = sub_1E6275B68(v1861, &unk_1E65FA5E0, v1438, 0, 0);
      [v369 setModalPresentationStyle_];
      sub_1E5DFE50C(v1834, &unk_1ED077780, &unk_1E66097F0);
      goto LABEL_266;
    case 0x16u:
      v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
      v660 = v659[12];
      v661 = &v356[v659[16]];
      v663 = *v661;
      v662 = *(v661 + 1);
      *&v1862 = v663;
      *&v1861 = v662;
      v664 = v659[20];
      v665 = &v356[v659[24]];
      v666 = *(v665 + 1);
      v1860 = *v665;
      v667 = &v356[v659[28]];
      v668 = v667[1];
      v1859 = *v667;
      v669 = v659[32];
      v670 = v659[36];
      v671 = *(v356 + 1);
      aBlock = *v356;
      v1869 = v671;
      *&v1870 = *(v356 + 4);
      v672 = v1849;
      v673 = v1836;
      (*(v1849 + 32))(v1836, &v356[v660], v1848);
      v674 = v1687;
      sub_1E5FAB460(&v356[v664], v1687, &qword_1ED076220, &unk_1E65FA4A0);
      v675 = &v356[v669];
      v676 = v1690;
      sub_1E5FAB460(v675, v1690, &unk_1ED077770, &unk_1E660C190);
      v677 = &v356[v670];
      v678 = v1694;
      sub_1E5FAB460(v677, v1694, &unk_1ED07B500, &qword_1E65F0EE0);
      v679 = v1854 + *(type metadata accessor for AppEnvironment() + 88);
      v680 = PlayerService.makeStandardPlayerViewController.getter();
      v369 = v680(&aBlock, v673, v1862, v1861, v674, v1860, v666, v1859, v668, v678, v676);

      sub_1E5DFE50C(v678, &unk_1ED07B500, &qword_1E65F0EE0);
      sub_1E5DFE50C(v676, &unk_1ED077770, &unk_1E660C190);
      sub_1E5DFE50C(v674, &qword_1ED076220, &unk_1E65FA4A0);
      (*(v672 + 8))(v1836, v1848);
      sub_1E6009FC0(&aBlock);
      goto LABEL_266;
    case 0x17u:
      v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
      v682 = v681[12];
      v683 = &v356[v681[16]];
      v684 = *v683;
      v685 = v683[1];
      v686 = v1691;
      v687 = v356[v681[20]];
      v688 = v1689;
      (*(v1691 + 32))(v1689, v356, v1811);
      v689 = v1695;
      v690 = &v356[v682];
      v691 = v1693;
      v692 = v1697;
      (*(v1695 + 32))(v1693, v690, v1697);
      v693 = v1854 + *(type metadata accessor for AppEnvironment() + 88);
      v694 = PlayerService.makeTipPlayerViewController.getter();
      v369 = v694(v688, v691, v684, v685, v687);

      sub_1E61B73EC(v684, v685);
      (*(v689 + 8))(v691, v692);
      (*(v686 + 8))(v688, v1811);
      goto LABEL_266;
    case 0x19u:
      if (v357 < 2)
      {
        v838 = *v356;
        v839 = (v1862 + *(v1860 + 9));
        v840 = *v839;
        v841 = v839[1];
        sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1873, v1872);
        *&aBlock = v840;
        *(&aBlock + 1) = v841;
        LOBYTE(v1869) = v357;
        v842 = *(type metadata accessor for AppEnvironment() + 68);
        sub_1E5FA9D34(v840, v841);
        active = InteropService.makeActiveWorkoutPlanViewController.getter();
        v1866 = &type metadata for CatalogPageRoutingContextNavigator;
        v1867 = sub_1E61379FC();
        *&v1865 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1865 + 16);
        v844 = active(v838, v840, v841, &v1865);
LABEL_119:
        v369 = v844;

        sub_1E6137AAC(&aBlock);
LABEL_120:
        __swift_destroy_boxed_opaque_existential_1(&v1865);
        goto LABEL_266;
      }

      v1393 = v1862;
      if (v357 != 3)
      {
        goto LABEL_331;
      }

      v1394 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1395 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1396 = (v1855 + v1395 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1397 = swift_allocObject();
      sub_1E5E1E528(v1394, v1397 + v1395, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1397 + v1396);
      v1398 = sub_1E65E4438();
      v1399 = *v1393;
      v1400 = *(v1860 + 8);
      v1401 = swift_allocObject();
      v1862 = *(v1393 + v1400);
      *(v1401 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1402 = v1576;
      }

      else
      {

        swift_unknownObjectRetain();
        v1402 = MEMORY[0x1E69E7CD0];
      }

      v1403 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1404 = sub_1E626CAE8(sub_1E62BB4F0, v1397, v1398, v1402, MEMORY[0x1E69E7CC0], v1403, 0, 0, 0, 0, 0, 0, 0, v1399, sub_1E62AD21C, v1401);

      v1405 = v1829;
      if (!v1829)
      {
        goto LABEL_221;
      }

      v1406 = v1829;
      v1407 = v1404;
      if (![v1406 isViewLoaded])
      {
        goto LABEL_222;
      }

      v1408 = [v1406 view];
      if (!v1408)
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      goto LABEL_220;
    case 0x1Au:
      v988 = v1715;
      sub_1E5E1E528(v356, v1715, MEMORY[0x1E69CD768]);
      v989 = v1696;
      sub_1E62CC108(v988, v1696, MEMORY[0x1E69CD768]);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload != 3)
          {
            goto LABEL_330;
          }

          v1539 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
          v1540 = InteropService.makeNotificationViewController.getter();
          v369 = v1540();
        }

        else
        {
          if (EnumCaseMultiPayload)
          {
            sub_1E62BC770(v988, MEMORY[0x1E69CD768]);
            v369 = *v989;
            goto LABEL_266;
          }

          v1269 = v1849;
          v1270 = v1836;
          v1271 = v1848;
          (*(v1849 + 32))(v1836, v989, v1848);
          v1272 = v1612;
          (*(v1269 + 16))(v1612, v1270, v1271);
          (*(v1269 + 56))(v1272, 0, 1, v1271);
          v1273 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
          v1274 = InteropService.makeAccountPageViewController.getter();
          v369 = v1274(v1272);

          sub_1E5DFE50C(v1272, &qword_1ED072340, &qword_1E65EA410);
          (*(v1269 + 8))(v1270, v1271);
        }
      }

      else
      {
        if (EnumCaseMultiPayload <= 5)
        {
          if (EnumCaseMultiPayload == 4)
          {
            v991 = v357;
            v992 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
            v993 = InteropService.makePrivacyLinkListViewController.getter();
            sub_1E5DF650C(v1873, &aBlock);
            v994 = swift_allocObject();
            sub_1E5DF599C(&aBlock, v994 + 16);
            v995 = v991 >= 2;
            v996 = v991 < 2;
            *(v994 + 56) = v996;
            if (v995)
            {
              v997 = -64;
            }

            else
            {
              v997 = 0;
            }

            *(v994 + 64) = v997;
            sub_1E5FA9D20(v996, v997);
            v369 = v993(sub_1E626F154, v994);

            sub_1E5F94E00(v996, v997);
            goto LABEL_257;
          }

          v1523 = MEMORY[0x1E697BAD0];
          goto LABEL_251;
        }

        if (EnumCaseMultiPayload == 6)
        {
          v1523 = MEMORY[0x1E697BAC8];
LABEL_251:
          v1541 = *v1523;
          sub_1E65E5C78();
          v1542 = v1612;
          sub_1E65D74C8();

          v1543 = v1854 + *(type metadata accessor for AppEnvironment() + 68);
          v1544 = InteropService.makeAccountPageViewController.getter();
          v369 = v1544(v1542);

          sub_1E5DFE50C(v1542, &qword_1ED072340, &qword_1E65EA410);
          goto LABEL_257;
        }

        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_330;
        }

        v1545 = sub_1E65DAE38();
        if (v1545 == sub_1E65DAE38())
        {
          v1546 = 30;
        }

        else
        {
          v1546 = 24;
        }

        v1547 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1548 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
        v1549 = swift_allocObject();
        sub_1E5E1E528(v1547, v1549 + v1548, type metadata accessor for AppComposer);
        v1550 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077128, &unk_1E65FA5D0));
        v369 = sub_1E6275B68(v1546, &unk_1E65F96B8, v1549, 0, 0);
      }

LABEL_257:
      sub_1E62BC770(v988, MEMORY[0x1E69CD768]);
      goto LABEL_266;
    case 0x1Bu:
      v403 = v1741;
      sub_1E5E1E528(v356, v1741, type metadata accessor for PlaylistType);
      if (v357 < 2)
      {
        v404 = v1629;
        sub_1E62CC108(v403, v1629, type metadata accessor for PlaylistType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v406 = v1623;
          v405 = v1624;
          v407 = v404;
          v408 = v1625;
          (*(v1624 + 32))(v1623, v407, v1625);
          v369 = sub_1E62BA594(v406, boxed_opaque_existential_1, v1862, type metadata accessor for RouteDetourViewControllerRoutingContext, &off_1F5FC41D8, type metadata accessor for RouteDetourViewControllerRoutingContext);
          (*(v405 + 8))(v406, v408);
        }

        else
        {
          v369 = sub_1E62BA414(*v404, v404[1], boxed_opaque_existential_1, v1862, type metadata accessor for RouteDetourViewControllerRoutingContext, &off_1F5FC41D8, type metadata accessor for RouteDetourViewControllerRoutingContext);
        }

        goto LABEL_261;
      }

      if (v357 != 3)
      {
        goto LABEL_331;
      }

      v1293 = v1597;
      sub_1E62CC108(v403, v1597, type metadata accessor for PlaylistType);
      v1294 = swift_getEnumCaseMultiPayload();
      v1295 = v1862;
      if (v1294 == 1)
      {
        v1297 = v1623;
        v1296 = v1624;
        v1298 = v1625;
        (*(v1624 + 32))(v1623, v1293, v1625);
        v1299 = sub_1E62BA594(v1297, boxed_opaque_existential_1, v1295, type metadata accessor for RouteDetourViewControllerRoutingContext, &off_1F5FC41D8, type metadata accessor for RouteDetourViewControllerRoutingContext);
        (*(v1296 + 8))(v1297, v1298);
      }

      else
      {
        v1299 = sub_1E62BA414(*v1293, v1293[1], boxed_opaque_existential_1, v1862, type metadata accessor for RouteDetourViewControllerRoutingContext, &off_1F5FC41D8, type metadata accessor for RouteDetourViewControllerRoutingContext);
      }

      v1524 = swift_allocObject();
      *(v1524 + 16) = v1299;
      v1525 = v1299;
      v1526 = sub_1E65E4438();
      v1527 = *v1295;
      v1528 = *(v1860 + 8);
      v1529 = swift_allocObject();
      v1862 = *(v1295 + v1528);
      *(v1529 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1530 = v1574;
      }

      else
      {

        swift_unknownObjectRetain();
        v1530 = MEMORY[0x1E69E7CD0];
      }

      v1531 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1532 = sub_1E626CAE8(sub_1E62BB4C4, v1524, v1526, v1530, MEMORY[0x1E69E7CC0], v1531, 0, 0, 0, 0, 0, 0, 0, v1527, sub_1E62AD21C, v1529);

      v1533 = v1829;
      if (v1829)
      {
        v1534 = v1829;
        v1535 = v1532;
        if ([v1534 isViewLoaded])
        {
          v1536 = [v1534 view];
          if (!v1536)
          {
LABEL_329:
            __break(1u);
LABEL_330:
            *&aBlock = 0;
            *(&aBlock + 1) = 0xE000000000000000;
            sub_1E65E68A8();
            MEMORY[0x1E694D7C0](0xD000000000000017, 0x80000001E6614EE0);
            sub_1E65E69B8();
            MEMORY[0x1E694D7C0](0xD000000000000015, 0x80000001E6614F00);
            while (1)
            {
LABEL_331:
              sub_1E65E69D8();
              __break(1u);
            }
          }

          v1537 = v1536;
          v1538 = [v1536 snapshotViewAfterScreenUpdates_];

          goto LABEL_260;
        }
      }

      else
      {
        v1551 = v1532;
      }

      v1538 = 0;
LABEL_260:
      v1552 = objc_allocWithZone(type metadata accessor for BlurViewController());
      v369 = sub_1E630B7AC(v1532, v1538);

LABEL_261:
      sub_1E62BC770(v403, type metadata accessor for PlaylistType);
      goto LABEL_266;
    case 0x1Cu:
      v395 = v1852;
      v396 = v1850;
      v397 = v1851;
      (*(v1852 + 4))(v1850, v356, v1851);
      v398 = (v1862 + *(v1860 + 9));
      v399 = *v398;
      v400 = v398[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v399;
      *(&aBlock + 1) = v400;
      LOBYTE(v1869) = v357;
      v401 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v399, v400);
      v402 = InteropService.makeWorkoutPlanDetailViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v369 = v402(v396, v399, v400, &v1865);

      sub_1E6137AAC(&aBlock);
      v395[1](v396, v397);
      goto LABEL_120;
    case 0x1Du:
      v1087 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
      v1088 = v1783;
      v1089 = *(v1783 + 32);
      v1089(v1818, v356, v1822);
      v1090 = v1762;
      v1091 = *(v1762 + 32);
      v1092 = &v356[v1087];
      v1093 = v1782;
      v1094 = v1763;
      (v1091)(v1782, v1092, v1763);
      if (v357 >= 2)
      {
        v1854 = v1091;
        *&v1861 = v1089;
        v1458 = v1862;
        if (v357 != 3)
        {
          goto LABEL_331;
        }

        v1459 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1460 = v1783 + 16;
        (*(v1783 + 16))(v1649, v1818, v1822);
        v1461 = v1090 + 16;
        (*(v1090 + 16))(v1650, v1782, v1094);
        sub_1E5DF650C(v1873, &aBlock);
        v1462 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
        v1463 = (v1855 + *(v1460 + 64) + v1462) & ~*(v1460 + 64);
        v1464 = (v1598 + *(v1461 + 64) + v1463) & ~*(v1461 + 64);
        v1465 = v1458;
        v1466 = (v1599 + v1464 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1467 = swift_allocObject();
        sub_1E5E1E528(v1459, v1467 + v1462, type metadata accessor for AppComposer);
        v1468 = v1467 + v1463;
        v1469 = v1763;
        (v1861)(v1468, v1649, v1822);
        (v1854)(v1467 + v1464, v1650, v1469);
        sub_1E5DF599C(&aBlock, v1467 + v1466);
        v1470 = sub_1E65E4438();
        v1471 = *v1465;
        v1472 = *(v1860 + 8);
        v1473 = swift_allocObject();
        v1862 = *(v1465 + v1472);
        *(v1473 + 16) = v1862;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1474 = v1579;
        }

        else
        {

          swift_unknownObjectRetain();
          v1474 = MEMORY[0x1E69E7CD0];
        }

        v1475 = v1829;
        v1476 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
        objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

        v1477 = sub_1E626CAE8(sub_1E62AD218, v1467, v1470, v1474, MEMORY[0x1E69E7CC0], v1476, 0, 0, 0, 0, 0, 0, 0, v1471, sub_1E62AD21C, v1473);

        v1478 = v1822;
        if (v1475)
        {
          v1479 = v1475;
          v1480 = [v1479 isViewLoaded];
          v1481 = v1818;
          if (v1480)
          {
            v1482 = [v1479 view];
            if (!v1482)
            {
LABEL_327:
              __break(1u);
              goto LABEL_328;
            }

            v1483 = v1482;
            v1484 = [v1482 snapshotViewAfterScreenUpdates_];
          }

          else
          {
            v1484 = 0;
          }

          v1556 = v1783;
        }

        else
        {
          v1484 = 0;
          v1556 = v1783;
          v1481 = v1818;
        }

        v1557 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v369 = sub_1E630B7AC(v1477, v1484);

        (*(v1762 + 8))(v1782, v1469);
        (*(v1556 + 8))(v1481, v1478);
        goto LABEL_266;
      }

      v1095 = (v1862 + *(v1860 + 9));
      v1096 = v1093;
      v1097 = *v1095;
      v1098 = v1095[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1097;
      *(&aBlock + 1) = v1098;
      LOBYTE(v1869) = v357;
      v1099 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1097, v1098);
      v1100 = InteropService.makeWorkoutPlanAlternativeViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v1101 = v1818;
      v369 = v1100(v1818, v1096, v1097, v1098, &v1865);

      sub_1E6137AAC(&aBlock);
      (*(v1090 + 8))(v1096, v1094);
      (*(v1088 + 8))(v1101, v1822);
      goto LABEL_120;
    case 0x1Eu:
      v1123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
      v1124 = *&v356[*(v1123 + 48)];
      v1125 = *&v356[*(v1123 + 64)];
      v698 = v1722;
      v699 = v1721;
      v1126 = v356;
      v701 = v1725;
      (*(v1722 + 32))(v1721, v1126, v1725);
      v1127 = (v1862 + *(v1860 + 9));
      v1128 = *v1127;
      v1129 = v1127[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1128;
      *(&aBlock + 1) = v1129;
      LOBYTE(v1869) = v357;
      v1130 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1128, v1129);
      v1131 = InteropService.makeWorkoutPlanPreferenceViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v1026 = v1131(v1128, v1129, v699, v1124, v1125, &v1865);
      goto LABEL_113;
    case 0x1Fu:
      v998 = *&v356[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48)];
      v999 = v1727;
      v1000 = v1724;
      v1001 = v1728;
      (*(v1727 + 32))(v1724, v356, v1728);
      v1002 = (v1862 + *(v1860 + 9));
      v1003 = *v1002;
      v1004 = v1002[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1003;
      *(&aBlock + 1) = v1004;
      LOBYTE(v1869) = v357;
      v1005 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1003, v1004);
      v1006 = InteropService.makeWorkoutPlanReviewViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v369 = v1006(v1000, v998, v1003, v1004, &v1865);

      sub_1E6137AAC(&aBlock);
      (*(v999 + 8))(v1000, v1001);
      goto LABEL_120;
    case 0x20u:
      v1017 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
      v1018 = *&v356[*(v1017 + 48)];
      v1019 = *&v356[*(v1017 + 64)];
      v698 = v1730;
      v699 = v1729;
      v1020 = v356;
      v701 = v1732;
      (*(v1730 + 32))(v1729, v1020, v1732);
      v1021 = (v1862 + *(v1860 + 9));
      v1022 = *v1021;
      v1023 = v1021[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1022;
      *(&aBlock + 1) = v1023;
      LOBYTE(v1869) = v357;
      v1024 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1022, v1023);
      v1025 = InteropService.makeEditWorkoutPlanScheduleViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v1026 = v1025(v699, v1019, v1018, v1022, v1023, &v1865);
LABEL_113:
      v369 = v1026;

      goto LABEL_114;
    case 0x21u:
      v695 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
      v696 = v356[*(v695 + 48)];
      v697 = v356[*(v695 + 64)];
      v698 = v1733;
      v699 = v1731;
      v700 = v356;
      v701 = v1734;
      (*(v1733 + 32))(v1731, v700, v1734);
      v702 = (v1862 + *(v1860 + 9));
      v703 = *v702;
      v704 = v702[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v703;
      *(&aBlock + 1) = v704;
      LOBYTE(v1869) = v357;
      v705 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v703, v704);
      v706 = InteropService.makeWorkoutPlanSummaryViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v369 = v706(v699, v696, v697, &v1865, v703, v704);
LABEL_114:

      sub_1E6137AAC(&aBlock);
      (*(v698 + 8))(v699, v701);
      goto LABEL_120;
    case 0x22u:
      v412 = v1862;
      v413 = v1859;
      v1839 = type metadata accessor for AppComposer;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      v414 = *(v1853 + 80);
      v415 = v1855;
      v1841 = v1855 + ((v414 + 16) & ~v414);
      v1853 = ((v414 + 16) & ~v414);
      v1846 = (v414 | 7);
      v416 = swift_allocObject();
      v1842 = type metadata accessor for AppComposer;
      v417 = v416;
      boxed_opaque_existential_1 = v416;
      sub_1E5E1E528(v413, v416 + ((v414 + 16) & ~v414), type metadata accessor for AppComposer);
      sub_1E65E5148();
      LODWORD(v1854) = v357;
      *&v1861 = sub_1E65E5138();
      v418 = v1844;
      sub_1E62CC108(v412, v1844, type metadata accessor for AppComposer);
      v419 = (v414 + 32) & ~v414;
      v420 = v415 + v419;
      v1836 = v419;
      v1835 = v420;
      v421 = swift_allocObject();
      v1849 = v421;
      v1840 = &unk_1E65F9820;
      *(v421 + 16) = &unk_1E65F9820;
      *(v421 + 24) = v417;
      sub_1E5E1E528(v418, v421 + v419, v1842);
      *(v421 + v420) = 0;
      v422 = v421 + (v420 & 0xFFFFFFFFFFFFFFF8);
      v1844 = sub_1E6172524;
      *(v422 + 8) = sub_1E6172524;
      *(v422 + 16) = 0;
      v423 = (v421 + (((v420 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
      v424 = MEMORY[0x1E69AB380];
      v425 = v1861;
      *v423 = v1861;
      v423[1] = v424;
      v426 = v1862;
      v427 = v1839;
      sub_1E62CC108(v1862, v1845, v1839);
      v428 = (v414 + 48) & ~v414;
      v429 = v1855 + v428;
      v1834 = v428;
      v1855 = ((v1855 + v428) & 0xFFFFFFFFFFFFFFF8);
      v430 = swift_allocObject();
      v1848 = v430;
      v431 = boxed_opaque_existential_1;
      *(v430 + 16) = v1840;
      *(v430 + 24) = v431;
      *(v430 + 32) = v425;
      *(v430 + 40) = MEMORY[0x1E69AB380];
      sub_1E5E1E528(v1845, v430 + v428, v1842);
      v429[v430] = 0;
      v432 = v1855 + v430;
      v433 = v1844;
      *(v432 + 1) = v1844;
      *(v432 + 2) = 0;
      v434 = v426;
      v435 = v1827;
      sub_1E62CC108(v434, v1827, v427);
      v436 = (v429 + 7) & 0xFFFFFFFFFFFFFFF8;
      v437 = swift_allocObject();
      v438 = v1840;
      v437[2] = v1840;
      v437[3] = v431;
      v437[4] = v1861;
      v437[5] = MEMORY[0x1E69AB380];
      v439 = v1842;
      sub_1E5E1E528(v435, v437 + v1834, v1842);
      v440 = v437 + v436;
      *v440 = v433;
      *(v440 + 1) = 0;
      v440[16] = 0;
      v441 = v1828;
      sub_1E62CC108(v1862, v1828, v1839);
      v442 = swift_allocObject();
      v443 = boxed_opaque_existential_1;
      *(v442 + 16) = v438;
      *(v442 + 24) = v443;
      sub_1E5E1E528(v441, &v1836[v442], v439);
      swift_retain_n();
      swift_retain_n();
      sub_1E65D76E8();
      v1847 = v437;
      v1855 = v442;
      v444 = v1853;
      v445 = v1841;
      v1845 = 0x80000001E6615070;
      if (v1854 >= 2)
      {
        if (v1854 != 3)
        {
          goto LABEL_331;
        }

        v1840 = type metadata accessor for AppComposer;
        v1300 = v1862;
        v1301 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1873, &aBlock);
        v1302 = ((v1841 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1842 = v1302;
        v1834 = (v1302 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1303 = swift_allocObject();
        v1832 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v1301, v1853 + v1303, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v1302 + v1303);
        v1844 = v1303;
        v1304 = (v1303 + ((v1302 + 47) & 0xFFFFFFFFFFFFFFF8));
        v1305 = v1845;
        *v1304 = 0xD000000000000016;
        v1304[1] = v1305;
        v1306 = v1303 + ((((v1302 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
        *v1306 = v1861;
        v1839 = &unk_1E65FA800;
        *(v1306 + 1) = MEMORY[0x1E69AB380];
        *(v1306 + 2) = &unk_1E65FA800;
        boxed_opaque_existential_1 = &unk_1E65FA808;
        *(v1306 + 3) = v1849;
        *(v1306 + 4) = &unk_1E65FA808;
        v1836 = &unk_1E65FA810;
        *(v1306 + 5) = v1848;
        *(v1306 + 6) = &unk_1E65FA810;
        v1835 = &unk_1E65FA818;
        *(v1306 + 7) = v1847;
        *(v1306 + 8) = &unk_1E65FA818;
        *(v1306 + 9) = v1855;
        v1306[80] = 0;
        v1307 = v1840;
        sub_1E62CC108(v1300, v1301, v1840);
        v1845 = swift_allocObject();
        v1308 = v1853;
        sub_1E5E1E528(v1301, v1853 + v1845, type metadata accessor for AppComposer);
        sub_1E62CC108(v1300, v1301, v1307);
        sub_1E5DF650C(v1873, &aBlock);
        v1309 = v1852;
        v1833 = *(v1852 + 2);
        v1310 = v1851;
        (v1833)(v1850, v1843, v1851);
        v1311 = v1834;
        v1312 = (v1834 + *(v1309 + 80) + 80) & ~*(v1309 + 80);
        v1313 = swift_allocObject();
        sub_1E5E1E528(v1301, v1308 + v1313, v1832);
        sub_1E5DF599C(&aBlock, v1842 + v1313);
        v1314 = (v1313 + v1311);
        v1840 = v1313;
        *v1314 = v1861;
        v1315 = v1839;
        v1314[1] = MEMORY[0x1E69AB380];
        v1314[2] = v1315;
        v1316 = boxed_opaque_existential_1;
        v1314[3] = v1849;
        v1314[4] = v1316;
        v1317 = v1836;
        v1314[5] = v1848;
        v1314[6] = v1317;
        v1318 = v1835;
        v1314[7] = v1847;
        v1314[8] = v1318;
        v1314[9] = v1855;
        v1319 = v1850;
        v1309[4](v1313 + v1312, v1850, v1310);
        (v1833)(v1319, v1843, v1310);
        v1842 = type metadata accessor for ArtworkDescriptor();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1839 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        boxed_opaque_existential_1 = type metadata accessor for ItemMetrics();
        v1836 = type metadata accessor for SectionMetrics();
        type metadata accessor for ViewDescriptor();
        sub_1E62CC0C0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E62CC0C0(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E62CC0C0(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E62CC0C0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        v1320 = v1861;
        v1321 = v1602;
        sub_1E65E1EB8();
        v1322 = sub_1E65E2DA8();
        v1323 = 0;
        v1324 = 0;
        v1325 = 0;
        v1326 = 0;
        v1327 = 0;
        v1328 = 0;
        v1329 = 0;
        v1330 = 0;
        v1331 = 0;
        v1332 = 0;
        if (v1322)
        {
          v1331 = &unk_1E65FA818;
          v1329 = &unk_1E65FA810;
          v1327 = &unk_1E65FA808;
          v1325 = &unk_1E65FA800;
          v1324 = MEMORY[0x1E69AB380];
          v1323 = v1320;
          v1326 = v1849;
          v1328 = v1848;
          v1330 = v1847;
          v1332 = v1855;
        }

        *&aBlock = v1323;
        *(&aBlock + 1) = v1324;
        *&v1869 = v1325;
        *(&v1869 + 1) = v1326;
        *&v1870 = v1327;
        *(&v1870 + 1) = v1328;
        *&v1871 = v1329;
        *(&v1871 + 1) = v1330;
        *&v1872[0] = v1331;
        *(&v1872[0] + 1) = v1332;
        sub_1E5FED46C(&qword_1ED073E28, &qword_1ED073E20, &unk_1E65FA450);
        v1333 = v1606;
        v1334 = v1604;
        sub_1E630FFE8(&aBlock, v1604, v1606);
        (*(v1603 + 8))(v1321, v1334);
        v482 = v1862;
        v1335 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1336 = swift_allocObject();
        sub_1E5E1E528(v1335, v1853 + v1336, type metadata accessor for AppComposer);
        sub_1E6072124();
        v1337 = v1605;
        sub_1E6259D5C(sub_1E62BBB38, v1336, v1607);

        sub_1E5DFE50C(v1333, &unk_1ED077720, &qword_1E65EEE40);
        sub_1E6072098();
        v486 = v1608;
        v1338 = v1747;
        sub_1E5FEE4C8(v1337);
        v488 = &qword_1ED073E10;
        v489 = &unk_1E65FA460;
        sub_1E5DFE50C(v1337, &qword_1ED073E10, &unk_1E65FA460);
        v490 = v1609;
        sub_1E5FEE4C8(v486);
        sub_1E6071E58();
        v491 = v1750;
        sub_1E62DFB74(v490, v1748, v1338);
      }

      else
      {
        v1840 = type metadata accessor for AppComposer;
        v446 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        sub_1E5DF650C(v1873, &aBlock);
        v447 = (v445 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1834 = v447;
        v448 = (v445 + 55) & 0xFFFFFFFFFFFFFFF8;
        v449 = swift_allocObject();
        v1844 = type metadata accessor for AppComposer;
        sub_1E5E1E528(v446, v444 + v449, type metadata accessor for AppComposer);
        sub_1E5DF599C(&aBlock, v449 + v447);
        *(v449 + v447 + 40) = 0;
        v1842 = v449;
        v450 = (v449 + v448);
        v451 = v1845;
        *v450 = 0xD000000000000016;
        v450[1] = v451;
        v452 = (v449 + ((v448 + 23) & 0xFFFFFFFFFFFFFFF8));
        *v452 = v1861;
        v1839 = &unk_1E65FA800;
        v452[1] = MEMORY[0x1E69AB380];
        v452[2] = &unk_1E65FA800;
        boxed_opaque_existential_1 = &unk_1E65FA808;
        v452[3] = v1849;
        v452[4] = &unk_1E65FA808;
        v1836 = &unk_1E65FA810;
        v452[5] = v1848;
        v452[6] = &unk_1E65FA810;
        v1835 = &unk_1E65FA818;
        v452[7] = v1847;
        v452[8] = &unk_1E65FA818;
        v452[9] = v1855;
        v453 = v1862;
        v454 = v1840;
        sub_1E62CC108(v1862, v446, v1840);
        v1845 = swift_allocObject();
        sub_1E5E1E528(v446, v1853 + v1845, v1844);
        sub_1E62CC108(v453, v446, v454);
        sub_1E5DF650C(v1873, &aBlock);
        v455 = v1852;
        v1833 = *(v1852 + 2);
        v456 = v1851;
        (v1833)(v1850, v1843, v1851);
        v457 = v1834;
        v458 = (v1834 + 47) & 0xFFFFFFFFFFFFFFF8;
        v459 = (v458 + *(v455 + 80) + 80) & ~*(v455 + 80);
        v460 = swift_allocObject();
        sub_1E5E1E528(v1859, v1853 + v460, v1844);
        sub_1E5DF599C(&aBlock, v460 + v457);
        v461 = (v460 + v458);
        v1840 = v460;
        *v461 = v1861;
        v462 = v1839;
        v461[1] = MEMORY[0x1E69AB380];
        v461[2] = v462;
        v463 = boxed_opaque_existential_1;
        v461[3] = v1849;
        v461[4] = v463;
        v464 = v1836;
        v461[5] = v1848;
        v461[6] = v464;
        v465 = v1835;
        v461[7] = v1847;
        v461[8] = v465;
        v461[9] = v1855;
        v466 = v1850;
        v455[4](v460 + v459, v1850, v456);
        (v1833)(v466, v1843, v456);
        v1844 = type metadata accessor for ArtworkDescriptor();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        swift_retain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
        v1839 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
        boxed_opaque_existential_1 = type metadata accessor for ItemMetrics();
        v1836 = type metadata accessor for SectionMetrics();
        type metadata accessor for ViewDescriptor();
        sub_1E62CC0C0(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor);
        sub_1E5FEB2FC();
        sub_1E60728B0();
        sub_1E62CC0C0(&qword_1EE2DB650, type metadata accessor for ItemMetrics);
        sub_1E5DF11E0();
        sub_1E62CC0C0(&qword_1EE2DA950, type metadata accessor for SectionMetrics);
        sub_1E5DF1338();
        sub_1E62CC0C0(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor);
        v467 = v1861;
        v468 = v1630;
        sub_1E65E2448();
        v469 = sub_1E65E2DA8();
        v470 = 0;
        v471 = 0;
        v472 = 0;
        v473 = 0;
        v474 = 0;
        v475 = 0;
        v476 = 0;
        v477 = 0;
        v478 = 0;
        v479 = 0;
        if (v469)
        {
          v478 = MEMORY[0x1E69AB380];
          v477 = &unk_1E65FA800;
          v475 = &unk_1E65FA808;
          v473 = &unk_1E65FA810;
          v471 = &unk_1E65FA818;
          v470 = v1855;
          v472 = v1847;
          v474 = v1848;
          v476 = v1849;
          v479 = v467;
        }

        *&aBlock = v479;
        *(&aBlock + 1) = v478;
        *&v1869 = v477;
        *(&v1869 + 1) = v476;
        *&v1870 = v475;
        *(&v1870 + 1) = v474;
        *&v1871 = v473;
        *(&v1871 + 1) = v472;
        *&v1872[0] = v471;
        *(&v1872[0] + 1) = v470;
        sub_1E5FED46C(&unk_1ED077C70, &unk_1ED077700, &qword_1E65EEE38);
        v480 = v1634;
        v481 = v1632;
        sub_1E630FFE8(&aBlock, v1632, v1634);
        (*(v1631 + 8))(v468, v481);
        v482 = v1862;
        v483 = v1859;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v484 = swift_allocObject();
        sub_1E5E1E528(v483, v1853 + v484, type metadata accessor for AppComposer);
        sub_1E6071EE4();
        v485 = v1633;
        sub_1E6259D5C(sub_1E62BBB38, v484, v1635);

        sub_1E5DFE50C(v480, &qword_1ED073DF8, &unk_1E65FA440);
        sub_1E6071E58();
        v486 = v1636;
        v487 = v1748;
        sub_1E5FEE4C8(v485);
        v488 = &unk_1ED077710;
        v489 = &qword_1E65EEE28;
        sub_1E5DFE50C(v485, &unk_1ED077710, &qword_1E65EEE28);
        v490 = v1639;
        sub_1E5FEE4C8(v486);
        sub_1E6072098();
        v491 = v1750;
        sub_1E62DFC6C(v490, v487);
      }

      sub_1E6071DCC();
      v1339 = v1699;
      sub_1E62DFC6C(v491, v1749);
      sub_1E5DFE50C(v491, &qword_1ED073DE8, &unk_1E65FA430);
      sub_1E5DFE50C(v490, v488, v489);
      sub_1E5DFE50C(v486, v488, v489);
      v1340 = v1856;
      (*(v1852 + 1))(v1843, v1851);
      sub_1E62BBB50(&qword_1ED077C80, &qword_1ED073DA8, &unk_1E65FA550, sub_1E6071DCC);
      v1341 = v1708;
      sub_1E5FEE4C8(v1339);
      sub_1E5DFE50C(v1339, &qword_1ED073DA8, &unk_1E65FA550);
      v1342 = *v482;
      v1343 = *(v1860 + 8);
      v1344 = swift_allocObject();
      v1862 = *(v482 + v1343);
      *(v1344 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1345 = v1561;
      }

      else
      {

        swift_unknownObjectRetain();
        v1345 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077200, &unk_1E65FA8D0);
      v1346 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1340);
      *(&v1591 + 1) = sub_1E62AD21C;
      *&v1591 = v1342;
      v1347 = sub_1E630B390(v1341, v1345, MEMORY[0x1E69E7CC0], v1346, 0, 0, 0, 0, 0, 0, v1591, v1344);

      sub_1E5DFE50C(v1341, &qword_1ED073DA8, &unk_1E65FA550);
      v369 = v1347;
      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1348 = swift_getObjCClassFromMetadata();
      v1349 = [objc_opt_self() bundleForClass_];
      swift_getKeyPath();
      sub_1E65E4EC8();

      sub_1E65E5D48();
      v1350 = sub_1E65E5C48();

      [v369 setTitle_];

      v1351 = sub_1E6307A64();
      v1352 = v1351;
      if (v1854 > 1)
      {
        v1353 = 2;
      }

      else
      {
        v1353 = 1;
      }

      [v1351 setLargeTitleDisplayMode_];

      goto LABEL_266;
    case 0x23u:
      swift_storeEnumTagMultiPayload();
      v707 = v1862;
      sub_1E617DC64(v312, &aBlock);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      swift_storeEnumTagMultiPayload();
      sub_1E6508CD4(v1873, v312, &aBlock, v305);
      sub_1E62BC770(v312, type metadata accessor for BrowsePage);
      sub_1E6272CEC();
      v708 = v1825;
      sub_1E5FEE4C8(v305);
      sub_1E5DFE50C(v305, &unk_1ED077820, &qword_1E65F96A8);
      v383 = v1652;
      sub_1E5FEE4C8(v708);
      sub_1E5DFE50C(v708, &unk_1ED077820, &qword_1E65F96A8);
      v709 = v1651;
      sub_1E5DFD1CC(v383, v1651, &unk_1ED077820, &qword_1E65F96A8);
      v710 = *v707;
      v711 = *(v1860 + 8);
      v712 = swift_allocObject();
      v1862 = *(v707 + v711);
      *(v712 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v713 = v1562;
      }

      else
      {

        swift_unknownObjectRetain();
        v713 = MEMORY[0x1E69E7CD0];
      }

      v714 = v1856;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B30, &unk_1E65FA7D0);
      v715 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v714);
      *(&v1586 + 1) = sub_1E62AD21C;
      *&v1586 = v710;
      v369 = sub_1E630B390(v709, v713, MEMORY[0x1E69E7CC0], v715, 0, 0, 0, 0, 1, 0, v1586, v712);

      v381 = &unk_1ED077820;
      v382 = &qword_1E65F96A8;
      sub_1E5DFE50C(v709, &unk_1ED077820, &qword_1E65F96A8);
      v716 = sub_1E6307A64();
      [v716 setLargeTitleDisplayMode_];

      swift_unknownObjectRelease();

      goto LABEL_49;
    case 0x24u:
      v383 = v1660;
      v384 = v1862;
      AppComposer.forYouViewBuilder(currentRoutingContext:)(v1873, v1660);
      v385 = v1659;
      sub_1E5DFD1CC(v383, v1659, &qword_1ED072708, &unk_1E65FA530);
      v386 = sub_1E65DAE38();
      v387 = sub_1E65DAE38();
      v388 = *v384;
      v389 = *(v1860 + 8);
      v390 = swift_allocObject();
      v1862 = *(v384 + v389);
      *(v390 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v391 = v1559;
      }

      else
      {

        swift_unknownObjectRetain();
        v391 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771D0, &qword_1E65F97E0);
      v392 = v386 != v387;
      v393 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      *(&v1584 + 1) = sub_1E62AD21C;
      *&v1584 = v388;
      v369 = sub_1E630B390(v385, v391, MEMORY[0x1E69E7CC0], v393, 0, 0, 0, 0, v392, 0, v1584, v390);

      v381 = &qword_1ED072708;
      v382 = &unk_1E65FA530;
      sub_1E5DFE50C(v385, &qword_1ED072708, &unk_1E65FA530);
      v394 = sub_1E6307A64();
      [v394 setLargeTitleDisplayMode_];

LABEL_49:
      v411 = v383;
      goto LABEL_126;
    case 0x25u:
      v372 = v1662;
      v373 = v1862;
      AppComposer.libraryViewBuilder(currentRoutingContext:)(v1873, v1662);
      v374 = v1661;
      sub_1E5DFD1CC(v372, v1661, &unk_1ED077800, &qword_1E65F9698);
      v375 = *v373;
      v376 = *(v1860 + 8);
      v377 = swift_allocObject();
      v1862 = *(v373 + v376);
      *(v377 + 16) = v1862;
      v378 = v1856;
      if (!(MEMORY[0x1E69E7CC0] >> 62))
      {
        goto LABEL_7;
      }

      goto LABEL_272;
    case 0x27u:
      if (v357 < 2)
      {
        v1132 = (v1862 + *(v1860 + 8));
        v1133 = v1862;
        v1135 = *v1132;
        v1860 = v1132[1];
        v1134 = v1860;
        v1136 = swift_allocObject();
        v1850 = v1136;
        *(v1136 + 16) = v1135;
        *(v1136 + 24) = v1134;
        v1137 = *v1133;
        swift_getKeyPath();
        swift_unknownObjectRetain();
        sub_1E65E4EC8();

        v1138 = type metadata accessor for AppEnvironment();
        v1139 = Description;
        (Description[2])(v1768, v1854 + *(v1138 + 80), v1769);
        sub_1E65E5148();
        swift_unknownObjectRetain();
        *&v1861 = sub_1E65E5138();
        v1140 = type metadata accessor for SearchMetricsMonitor();
        v1141 = *(v1140 + 48);
        v1142 = *(v1140 + 52);
        v1858 = swift_allocObject();
        *&v1857 = OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_queue;
        sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
        sub_1E65E4F58();
        *&aBlock = MEMORY[0x1E69E7CC0];
        sub_1E62CC0C0(&qword_1EE2D4610, MEMORY[0x1E69E8030]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A450, &qword_1E65F8060);
        sub_1E5FED46C(&qword_1EE2D4820, &unk_1ED07A450, &qword_1E65F8060);
        sub_1E65E6738();
        (*(v1645 + 104))(v1644, *MEMORY[0x1E69E8090], v1646);
        v1143 = sub_1E65E63E8();
        v1144 = v1858;
        *(v1858 + v1857) = v1143;
        (*(v1637 + 32))(v1144 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_currentState, v1767, v1638);
        v1145 = MEMORY[0x1E69AB380];
        *(v1144 + 16) = v1861;
        *(v1144 + 24) = v1145;
        (v1139[4])(v1144 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_metricService, v1768, v1769);
        v1146 = (v1144 + OBJC_IVAR____TtC10Blackbeard20SearchMetricsMonitor_navigationTracker);
        v1147 = v1860;
        *v1146 = v1135;
        v1146[1] = v1147;
        v1148 = v1862;
        v1149 = v1859;
        v1860 = type metadata accessor for AppComposer;
        sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
        v1150 = *(v1853 + 80);
        v1848 = v1855 + ((v1150 + 16) & ~v1150);
        v1849 = (v1150 + 16) & ~v1150;
        v1151 = v1855;
        v1152 = swift_allocObject();
        *&v1857 = type metadata accessor for AppComposer;
        v1853 = v1152;
        sub_1E5E1E528(v1149, v1152 + ((v1150 + 16) & ~v1150), type metadata accessor for AppComposer);
        v1153 = v1844;
        sub_1E62CC108(v1148, v1844, type metadata accessor for AppComposer);
        v1154 = ((v1150 + 32) & ~v1150);
        v1846 = v1154;
        v1155 = (v1151 + v1154) & 0xFFFFFFFFFFFFFFF8;
        v1843 = v1151 + v1154;
        v1156 = swift_allocObject();
        v1856 = v1156;
        v1851 = &unk_1E65FA760;
        *(v1156 + 16) = &unk_1E65FA760;
        *(v1156 + 24) = v1152;
        sub_1E5E1E528(v1153, v1154 + v1156, v1857);
        *(v1151 + v1154 + v1156) = 0;
        v1157 = v1156 + v1155;
        v1852 = sub_1E6172524;
        *(v1157 + 8) = sub_1E6172524;
        *(v1157 + 16) = 0;
        v1158 = (v1156 + ((v1155 + 31) & 0xFFFFFFFFFFFFFFF8));
        v1159 = v1861;
        *v1158 = v1861;
        v1160 = MEMORY[0x1E69AB380];
        v1158[1] = MEMORY[0x1E69AB380];
        v1161 = v1862;
        v1162 = v1845;
        sub_1E62CC108(v1862, v1845, v1860);
        v1163 = (v1150 + 48) & ~v1150;
        v1164 = v1855 + v1163;
        v1165 = (v1855 + v1163) & 0xFFFFFFFFFFFFFFF8;
        v1166 = swift_allocObject();
        v1167 = v1851;
        v1168 = v1853;
        *(v1166 + 2) = v1851;
        *(v1166 + 3) = v1168;
        *(v1166 + 4) = v1159;
        *(v1166 + 5) = v1160;
        v1169 = v1166;
        v1170 = v1857;
        sub_1E5E1E528(v1162, v1166 + v1163, v1857);
        v1854 = v1169;
        v1164[v1169] = 0;
        v1171 = v1169 + v1165;
        *(v1171 + 1) = v1852;
        *(v1171 + 2) = 0;
        v1172 = v1161;
        v1173 = v1161;
        v1174 = v1827;
        v1175 = v1860;
        sub_1E62CC108(v1173, v1827, v1860);
        v1176 = swift_allocObject();
        v1177 = v1853;
        v1176[2] = v1167;
        v1176[3] = v1177;
        v1178 = v1861;
        v1176[4] = v1861;
        v1176[5] = MEMORY[0x1E69AB380];
        v1179 = v1176 + v1163;
        v1180 = v1176;
        sub_1E5E1E528(v1174, v1179, v1170);
        v1181 = v1180 + ((v1164 + 7) & 0xFFFFFFFFFFFFFFF8);
        v1847 = v1180;
        *v1181 = v1852;
        *(v1181 + 8) = 0;
        *(v1181 + 16) = 0;
        v1182 = v1828;
        sub_1E62CC108(v1172, v1828, v1175);
        v1183 = swift_allocObject();
        *(v1183 + 16) = v1851;
        *(v1183 + 24) = v1177;
        v1184 = v1183;
        v1852 = v1183;
        sub_1E5E1E528(v1182, v1846 + v1183, v1170);
        *&aBlock = v1178;
        *(&aBlock + 1) = MEMORY[0x1E69AB380];
        *&v1869 = &unk_1E65EB918;
        *(&v1869 + 1) = v1856;
        *&v1870 = &unk_1E65FA770;
        *(&v1870 + 1) = v1854;
        *&v1871 = &unk_1E65EB920;
        *(&v1871 + 1) = v1180;
        *&v1872[0] = &unk_1E65FA780;
        *(&v1872[0] + 1) = v1184;
        swift_retain_n();
        swift_retain_n();
        v1185 = v1172;
        v1851 = sub_1E62B512C(boxed_opaque_existential_1, &aBlock, v1172);
        v1186 = v1777;
        sub_1E63D53AC(v1851, v1777);
        v1187 = v1858;

        v1846 = sub_1E61C9468(v1186, v1187);
        v1188 = v1187;

        v1853 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07A460, &qword_1E65F97C8);
        v1189 = v1859;
        sub_1E62CC108(v1185, v1859, v1860);
        sub_1E5DF650C(v1873, &v1865);
        v1190 = (v1848 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1191 = (v1190 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1192 = swift_allocObject();
        sub_1E5E1E528(v1189, v1192 + v1849, v1170);
        sub_1E5DF599C(&v1865, v1192 + v1190);
        v1193 = (v1192 + v1191);
        v1194 = v1871;
        v1193[2] = v1870;
        v1193[3] = v1194;
        v1193[4] = v1872[0];
        v1195 = v1869;
        *v1193 = aBlock;
        v1193[1] = v1195;
        *(v1192 + ((v1191 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1188;
        v1196 = v1844;
        sub_1E62CC108(v1185, v1844, v1860);
        sub_1E5DF650C(v1873, v1864);
        v1197 = (v1150 + 24) & ~v1150;
        v1198 = (v1855 + v1197 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1199 = (v1198 + 15) & 0xFFFFFFFFFFFFFFF8;
        v1200 = (v1199 + 47) & 0xFFFFFFFFFFFFFFF8;
        v1201 = swift_allocObject();
        *(v1201 + 16) = v1846;
        sub_1E5E1E528(v1196, v1201 + v1197, v1857);
        *(v1201 + v1198) = v1851;
        sub_1E5DF599C(v1864, v1201 + v1199);
        v1202 = (v1201 + v1200);
        v1203 = v1871;
        v1202[2] = v1870;
        v1202[3] = v1203;
        v1202[4] = v1872[0];
        v1204 = v1869;
        *v1202 = aBlock;
        v1202[1] = v1204;
        *(v1201 + ((v1200 + 87) & 0xFFFFFFFFFFFFFFF8)) = v1858;

        v369 = sub_1E65DCC78();
        (*(v1647 + 8))(v1777, v1648);
        goto LABEL_266;
      }

      v1502 = v1862;
      if (v357 != 3)
      {
        goto LABEL_331;
      }

      v1503 = v1600;
      sub_1E62284FC(v1873, v1600);
      v1504 = sub_1E622B4E0();
      v360 = v1610;
      sub_1E6012F9C(v1601, v1504);
      sub_1E5DFE50C(v1503, &unk_1ED0776A0, &qword_1E65F8030);
      v362 = v1611;
      sub_1E5DFD1CC(v360, v1611, &qword_1ED0770A8, &unk_1E65FA3E0);
      v1505 = *v1502;
      v1506 = *(v1860 + 8);
      v1507 = swift_allocObject();
      v1862 = *(v1502 + v1506);
      *(v1507 + 16) = v1862;
      v1508 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1509 = v1581;
      }

      else
      {

        swift_unknownObjectRetain();
        v1509 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AA0, &qword_1E65F9798);
      v1510 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1508);
      *(&v1594 + 1) = sub_1E62AD21C;
      *&v1594 = v1505;
      v369 = sub_1E630B390(v362, v1509, MEMORY[0x1E69E7CC0], v1510, 0, 0, 0, 0, 0, 0, v1594, v1507);

      v370 = &qword_1ED0770A8;
      v371 = &unk_1E65FA3E0;
      goto LABEL_228;
    case 0x29u:
      v1205 = (v1862 + *(v1860 + 9));
      v1206 = v357;
      v1207 = *v1205;
      v1208 = v1205[1];
      sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
      sub_1E5DF650C(v1873, v1872);
      *&aBlock = v1207;
      *(&aBlock + 1) = v1208;
      LOBYTE(v1869) = v1206;
      v1209 = *(type metadata accessor for AppEnvironment() + 68);
      sub_1E5FA9D34(v1207, v1208);
      v1210 = InteropService.makeAccountSettingsViewController.getter();
      v1866 = &type metadata for CatalogPageRoutingContextNavigator;
      v1867 = sub_1E61379FC();
      *&v1865 = swift_allocObject();
      sub_1E6137A50(&aBlock, v1865 + 16);
      v844 = v1210(&v1865);
      goto LABEL_119;
    case 0x2Au:
      v1211 = sub_1E65DDF08();
      *(&v1869 + 1) = v1211;
      *&v1870 = sub_1E62CC0C0(&qword_1EE2D6AF0, MEMORY[0x1E69CAC00]);
      v1212 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
      (*(*(v1211 - 8) + 104))(v1212, *MEMORY[0x1E69CABE8], v1211);
      LOBYTE(v1211) = sub_1E65DAF58();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (v1211)
      {
        v1213 = v1850;
        sub_1E65D76E8();
        v372 = v1622;
        v1214 = v1862;
        sub_1E606A028(v1873, v1213, v1622);
        (*(v1852 + 1))(v1213, v1851);
        v374 = v1621;
        sub_1E5DFD1CC(v372, v1621, &qword_1ED073D90, &unk_1E65FA3D0);
        v1215 = *v1214;
        v1216 = *(v1860 + 8);
        v1217 = swift_allocObject();
        v1862 = *(v1214 + v1216);
        *(v1217 + 16) = v1862;
        v1218 = v1856;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1219 = v1572;
        }

        else
        {

          swift_unknownObjectRetain();
          v1219 = MEMORY[0x1E69E7CD0];
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077930, &qword_1E65F96F8);
        v1220 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1218);
        *(&v1589 + 1) = sub_1E62AD21C;
        *&v1589 = v1215;
        v369 = sub_1E630B390(v374, v1219, MEMORY[0x1E69E7CC0], v1220, 0, 0, 0, 0, 0, 0, v1589, v1217);

        v381 = &qword_1ED073D90;
        v382 = &unk_1E65FA3D0;
        goto LABEL_125;
      }

      sub_1E65E5BA8();
      type metadata accessor for LocalizationBundle();
      v1255 = swift_getObjCClassFromMetadata();
      v1256 = [objc_opt_self() bundleForClass_];
      v1257 = v1862;
      v1258 = *v1862;
      swift_getKeyPath();
      sub_1E65E4EC8();

      *&aBlock = sub_1E65E5D48();
      *(&aBlock + 1) = v1259;
      sub_1E5F9AEA8();
      v1260 = v1614;
      sub_1E65E41C8();
      v1261 = v1613;
      v1262 = v1781;
      (*(v1832 + 2))(v1613, v1260, v1781);
      v1263 = *(v1860 + 8);
      v1264 = swift_allocObject();
      v1862 = *(v1257 + v1263);
      *(v1264 + 16) = v1862;
      v1265 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1266 = v1573;
      }

      else
      {

        swift_unknownObjectRetain();
        v1266 = MEMORY[0x1E69E7CD0];
      }

      v1267 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1265);
      v1268 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077920, &qword_1E65FA640));
      v369 = sub_1E626DF90(v1261, v1266, MEMORY[0x1E69E7CC0], v1267, 0, 0, 0, 0, 0, 0, 0, v1258, sub_1E62AD21C, v1264);

      (*(v1832 + 1))(v1260, v1262);
      goto LABEL_266;
    case 0x2Bu:
      if (v357 < 2)
      {
        v1118 = (v1862 + *(v1860 + 9));
        v1119 = *v1118;
        v1120 = v1118[1];
        sub_1E5DFD1CC(v1862 + *(v1860 + 10), &v1869 + 8, &unk_1ED074320, &unk_1E65EA730);
        sub_1E5DF650C(v1873, v1872);
        *&aBlock = v1119;
        *(&aBlock + 1) = v1120;
        LOBYTE(v1869) = v357;
        v1121 = *(type metadata accessor for AppEnvironment() + 68);
        sub_1E5FA9D34(v1119, v1120);
        QueueView = InteropService.makeUpNextQueueViewController.getter();
        v1866 = &type metadata for CatalogPageRoutingContextNavigator;
        v1867 = sub_1E61379FC();
        *&v1865 = swift_allocObject();
        sub_1E6137A50(&aBlock, v1865 + 16);
        v844 = QueueView(&v1865, v1119, v1120);
        goto LABEL_119;
      }

      v1485 = v1862;
      if (v357 != 3)
      {
        goto LABEL_331;
      }

      v1486 = v1859;
      sub_1E62CC108(v1862, v1859, type metadata accessor for AppComposer);
      sub_1E5DF650C(v1873, &aBlock);
      v1487 = (*(v1853 + 80) + 16) & ~*(v1853 + 80);
      v1488 = (v1855 + v1487 + 7) & 0xFFFFFFFFFFFFFFF8;
      v1489 = swift_allocObject();
      sub_1E5E1E528(v1486, v1489 + v1487, type metadata accessor for AppComposer);
      sub_1E5DF599C(&aBlock, v1489 + v1488);
      v1490 = sub_1E65E4438();
      v1491 = *v1485;
      v1492 = *(v1860 + 8);
      v1493 = swift_allocObject();
      v1862 = *(v1485 + v1492);
      *(v1493 + 16) = v1862;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v1494 = v1580;
      }

      else
      {

        swift_unknownObjectRetain();
        v1494 = MEMORY[0x1E69E7CD0];
      }

      v1495 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1856);
      objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077118, &qword_1E65F96B0));

      v1404 = sub_1E626CAE8(sub_1E62BB4AC, v1489, v1490, v1494, MEMORY[0x1E69E7CC0], v1495, 0, 0, 0, 0, 0, 0, 0, v1491, sub_1E62AD21C, v1493);

      v1405 = v1829;
      if (v1829)
      {
        v1496 = v1829;
        v1497 = v1404;
        if ([v1496 isViewLoaded])
        {
          v1408 = [v1496 view];
          if (!v1408)
          {
LABEL_328:
            __break(1u);
            goto LABEL_329;
          }

LABEL_220:
          v1498 = v1408;
          v1499 = [v1408 snapshotViewAfterScreenUpdates_];

LABEL_223:
          v1501 = objc_allocWithZone(type metadata accessor for BlurViewController());
          v369 = sub_1E630B7AC(v1404, v1499);

          goto LABEL_266;
        }
      }

      else
      {
LABEL_221:
        v1500 = v1404;
      }

LABEL_222:
      v1499 = 0;
      goto LABEL_223;
    default:
      v358 = *v356;
      v359 = *(v356 + 1);
      if (v357 >= 3)
      {
        v1238 = v1615;
        v1239 = v1862;
        AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v358, *(v356 + 1), v1873, v1615);

        v1240 = sub_1E6273064();
        v1241 = v1620;
        sub_1E6012F9C(v1616, v1240);
        sub_1E5DFE50C(v1238, &qword_1ED0770C8, &unk_1E65FA420);
        v1242 = v1617;
        sub_1E5DFD1CC(v1241, v1617, &unk_1ED0776F0, &qword_1E65F9658);
        v1243 = *v1239;
        v1244 = *(v1860 + 8);
        v1245 = swift_allocObject();
        v1862 = *(v1239 + v1244);
        *(v1245 + 16) = v1862;
        v1246 = v1856;
        if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
        {

          swift_unknownObjectRetain();
          sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
          v1247 = v1571;
        }

        else
        {

          swift_unknownObjectRetain();
          v1247 = MEMORY[0x1E69E7CD0];
        }

        v1248 = v1829;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B60, &qword_1E65F9810);
        v1249 = v1857;
        (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v1246);
        *(&v1590 + 1) = sub_1E62AD21C;
        *&v1590 = v1243;
        v1250 = sub_1E630B390(v1242, v1247, MEMORY[0x1E69E7CC0], v1249, 0, 0, 0, 0, 0, 0, v1590, v1245);

        sub_1E5DFE50C(v1242, &unk_1ED0776F0, &qword_1E65F9658);
        if (v1248 && (v1251 = v1248, [v1251 isViewLoaded]))
        {
          v1252 = [v1251 view];
          if (!v1252)
          {
            __break(1u);
LABEL_323:
            __break(1u);
            goto LABEL_324;
          }

          v1253 = v1252;
          v1254 = [v1252 snapshotViewAfterScreenUpdates_];
        }

        else
        {
          v1254 = 0;
        }

        v1292 = objc_allocWithZone(type metadata accessor for BlurViewController());
        v369 = sub_1E630B7AC(v1250, v1254);

        sub_1E5DFE50C(v1241, &unk_1ED0776F0, &qword_1E65F9658);
        goto LABEL_266;
      }

      v360 = v1618;
      v361 = v1862;
      AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)(v358, *(v356 + 1), v1873, v1618);

      v362 = v1619;
      sub_1E5DFD1CC(v360, v1619, &qword_1ED0770C8, &unk_1E65FA420);
      v363 = *v361;
      v364 = *(v1860 + 8);
      v365 = swift_allocObject();
      v1862 = *(v361 + v364);
      *(v365 + 16) = v1862;
      v366 = v1856;
      if (MEMORY[0x1E69E7CC0] >> 62 && sub_1E65E67C8())
      {

        swift_unknownObjectRetain();
        sub_1E5F9AF8C(MEMORY[0x1E69E7CC0]);
        v367 = v1570;
      }

      else
      {

        swift_unknownObjectRetain();
        v367 = MEMORY[0x1E69E7CD0];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771F8, &unk_1E65FA7F0);
      v368 = v1857;
      (*(v1858 + 104))(v1857, *MEMORY[0x1E699CE18], v366);
      *(&v1582 + 1) = sub_1E62AD21C;
      *&v1582 = v363;
      v369 = sub_1E630B390(v362, v367, MEMORY[0x1E69E7CC0], v368, 0, 0, 0, 0, 0, 0, v1582, v365);

      v370 = &qword_1ED0770C8;
      v371 = &unk_1E65FA420;
LABEL_228:
      sub_1E5DFE50C(v362, v370, v371);
      v1416 = v360;
      goto LABEL_237;
  }
}