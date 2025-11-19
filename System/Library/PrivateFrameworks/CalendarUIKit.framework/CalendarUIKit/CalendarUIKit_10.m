uint64_t sub_1CAC7A068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CAC7A0C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for FakeDataReader()
{
  result = qword_1EC465C40;
  if (!qword_1EC465C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CAC7A1A4()
{
  result = sub_1CAD4BFF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV8LocationV12PredictedLOIVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_13CalendarUIKit14FakeDataReaderV5EventV11IntegrationVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1CAC7A258(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 824))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAC7A2A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 824) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 824) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy122_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1CAC7A3F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 122))
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

uint64_t sub_1CAC7A43C(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 122) = 1;
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

    *(result + 122) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy67_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1CAC7A4D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 67))
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

uint64_t sub_1CAC7A518(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 66) = 0;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 67) = 1;
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

    *(result + 67) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1CAC7A590(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656372756F73 && a2 == 0xE700000000000000;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE900000000000073 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC7A6AC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC7A9CC();
  sub_1CAD4EAE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C60);
  v9 = 0;
  sub_1CAC81780(&qword_1EC465C68, &qword_1EC465C60, &unk_1CAD61E80, sub_1CAC7AA20);
  sub_1CAD4E8C4();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C78);
  v9 = 1;
  sub_1CAC81780(&qword_1EC465C80, &qword_1EC465C78, &unk_1CAD61E88, sub_1CAC7AA74);
  sub_1CAD4E8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465C90);
  v9 = 2;
  sub_1CAC81780(&qword_1EC465C98, &qword_1EC465C90, &unk_1CAD61E90, sub_1CAC7AAC8);
  sub_1CAD4E8C4();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1CAC7A9CC()
{
  result = qword_1EC465C58;
  if (!qword_1EC465C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465C58);
  }

  return result;
}

unint64_t sub_1CAC7AA20()
{
  result = qword_1EC465C70;
  if (!qword_1EC465C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465C70);
  }

  return result;
}

unint64_t sub_1CAC7AA74()
{
  result = qword_1EC465C88;
  if (!qword_1EC465C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465C88);
  }

  return result;
}

unint64_t sub_1CAC7AAC8()
{
  result = qword_1EC465CA0;
  if (!qword_1EC465CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465CA0);
  }

  return result;
}

uint64_t sub_1CAC7AB1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7247707061 && a2 == 0xEA00000000004449 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6167656C65447369 && a2 == 0xEA00000000006574 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6261746972577369 && a2 == 0xEA0000000000656CLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD765E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1CAC7AD74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC80900();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_1CAD4E884();
  v29 = v10;
  LOBYTE(v34[0]) = 1;
  *&v28 = sub_1CAD4E884();
  *(&v28 + 1) = v11;
  LOBYTE(v34[0]) = 2;
  v27 = sub_1CAD4E824();
  v13 = v12;
  LOBYTE(v34[0]) = 3;
  v24 = sub_1CAD4E824();
  v26 = v14;
  LOBYTE(v34[0]) = 4;
  v25 = 0;
  v38 = sub_1CAD4E834();
  LOBYTE(v34[0]) = 5;
  v23 = sub_1CAD4E834();
  v39 = 6;
  v15 = sub_1CAD4E834();
  (*(v6 + 8))(v8, v5);
  v17 = *(&v28 + 1);
  v16 = v29;
  *&v30 = v9;
  *(&v30 + 1) = v29;
  v31 = v28;
  *&v32 = v27;
  *(&v32 + 1) = v13;
  v18 = v26;
  *v33 = v24;
  *&v33[8] = v26;
  v33[16] = v38;
  v33[17] = v23;
  v33[18] = v15;
  sub_1CAC79F30(&v30, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v9;
  v34[1] = v16;
  v34[2] = v28;
  v34[3] = v17;
  v34[4] = v27;
  v34[5] = v13;
  v34[6] = v24;
  v34[7] = v18;
  v35 = v38;
  v36 = v23;
  v37 = v15;
  result = sub_1CAC79F68(v34);
  v20 = *v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v20;
  *(a2 + 63) = *&v33[15];
  v21 = v31;
  *a2 = v30;
  *(a2 + 16) = v21;
  return result;
}

uint64_t sub_1CAC7B194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449656372756F73 && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEA00000000004449 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001CAD75460 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x53676E6972616873 && a2 == 0xED00007375746174 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD75480 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001CAD754C0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1CAC7B4D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D20);
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v28 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC808AC();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v8 = v5;
  v41 = a2;
  LOBYTE(v50[0]) = 0;
  v9 = sub_1CAD4E884();
  v40 = v10;
  LOBYTE(v50[0]) = 1;
  v11 = sub_1CAD4E824();
  v39 = v12;
  v36 = v11;
  LOBYTE(v50[0]) = 2;
  v35 = sub_1CAD4E884();
  v38 = v13;
  LOBYTE(v50[0]) = 3;
  v34 = sub_1CAD4E824();
  v37 = v14;
  LOBYTE(v50[0]) = 4;
  v33 = sub_1CAD4E884();
  v16 = v15;
  LOBYTE(v50[0]) = 5;
  v32 = sub_1CAD4E884();
  v18 = v17;
  LOBYTE(v50[0]) = 6;
  v56 = sub_1CAD4E834();
  LOBYTE(v50[0]) = 7;
  v30 = sub_1CAD4E824();
  v31 = v19;
  LOBYTE(v50[0]) = 8;
  v29 = sub_1CAD4E834();
  v57 = 9;
  v20 = sub_1CAD4E834();
  (*(v8 + 8))(v7, v42);
  v21 = v39;
  v22 = v40;
  *&v43 = v9;
  *(&v43 + 1) = v40;
  *&v44 = v36;
  *(&v44 + 1) = v39;
  *&v45 = v35;
  *(&v45 + 1) = v38;
  *&v46 = v34;
  *(&v46 + 1) = v37;
  *&v47 = v33;
  *(&v47 + 1) = v16;
  *&v48 = v32;
  *(&v48 + 1) = v18;
  LOBYTE(v49[0]) = v56;
  *(&v49[0] + 1) = v30;
  *&v49[1] = v31;
  BYTE8(v49[1]) = v29;
  BYTE9(v49[1]) = v20;
  sub_1CAC79F98(&v43, v50);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v50[0] = v9;
  v50[1] = v22;
  v50[2] = v36;
  v50[3] = v21;
  v50[4] = v35;
  v50[5] = v38;
  v50[6] = v34;
  v50[7] = v37;
  v50[8] = v33;
  v50[9] = v16;
  v50[10] = v32;
  v50[11] = v18;
  v51 = v56;
  v52 = v30;
  v53 = v31;
  v54 = v29;
  v55 = v20;
  result = sub_1CAC79FD0(v50);
  v24 = v48;
  v25 = v41;
  v41[4] = v47;
  v25[5] = v24;
  v25[6] = v49[0];
  *(v25 + 106) = *(v49 + 10);
  v26 = v44;
  *v25 = v43;
  v25[1] = v26;
  v27 = v46;
  v25[2] = v45;
  v25[3] = v27;
  return result;
}

uint64_t sub_1CAC7BA60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7954788 && a2 == 0xE300000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1920298856 && a2 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574756E696DLL && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC7BBC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465DC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC816A8();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v9 = sub_1CAD4E8B4();
  v25 = 1;
  v10 = sub_1CAD4E854();
  v22 = v11;
  v12 = v10;
  v24 = 2;
  v13 = sub_1CAD4E854();
  v21 = v14;
  v20 = v13;
  v23 = 3;
  v15 = sub_1CAD4E824();
  v16 = v8;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v22 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21 & 1;
  *(a2 + 40) = v15;
  *(a2 + 48) = v18;
  return result;
}

double sub_1CAC7BDEC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465F18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9[-v4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC824EC();
  sub_1CAD4EAE4();
  v9[15] = 0;
  sub_1CAD4E8A4();
  v7 = v6;
  v9[14] = 1;
  sub_1CAD4E8A4();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1CAC7BF9C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465F28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC82540();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v43[0]) = 0;
  v9 = sub_1CAD4E884();
  v36 = v10;
  LOBYTE(v43[0]) = 1;
  v11 = sub_1CAD4E824();
  v35 = v12;
  LOBYTE(v43[0]) = 2;
  *&v34 = sub_1CAD4E824();
  *(&v34 + 1) = v13;
  LOBYTE(v43[0]) = 3;
  v31 = sub_1CAD4E824();
  v32 = v11;
  v33 = v14;
  LOBYTE(v43[0]) = 4;
  v15 = sub_1CAD4E824();
  v17 = v16;
  v30 = v15;
  v44 = 5;
  v18 = sub_1CAD4E824();
  v19 = *(v6 + 8);
  v20 = v18;
  v29 = v21;
  v19(v8, v5);
  *&v37 = v9;
  *(&v37 + 1) = v36;
  *&v38 = v32;
  v22 = v35;
  *(&v38 + 1) = v35;
  v39 = v34;
  v23 = *(&v34 + 1);
  *&v40 = v31;
  *(&v40 + 1) = v33;
  *&v41 = v30;
  *(&v41 + 1) = v17;
  *&v42 = v20;
  v24 = v29;
  *(&v42 + 1) = v29;
  sub_1CAC82594(&v37, v43);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v43[0] = v9;
  v43[1] = v36;
  v43[2] = v32;
  v43[3] = v22;
  v43[4] = v34;
  v43[5] = v23;
  v43[6] = v31;
  v43[7] = v33;
  v43[8] = v30;
  v43[9] = v17;
  v43[10] = v20;
  v43[11] = v24;
  result = sub_1CAC825CC(v43);
  v26 = v40;
  a2[2] = v39;
  a2[3] = v26;
  v27 = v42;
  a2[4] = v41;
  a2[5] = v27;
  v28 = v38;
  *a2 = v37;
  a2[1] = v28;
  return result;
}

uint64_t sub_1CAC7C458(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xEB00000000736574 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x737569646172 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x636572706D497369 && a2 == 0xEB00000000657369 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6574636964657270 && a2 == 0xEC000000494F4C64)
  {

    return 5;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1CAC7C658@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465DF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CAC81888();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v64);
  }

  v10 = v6;
  LOBYTE(v39) = 0;
  v11 = v5;
  v12 = sub_1CAD4E824();
  v14 = v13;
  v33 = v12;
  LOBYTE(v39) = 1;
  *&v32 = sub_1CAD4E824();
  *(&v32 + 1) = v15;
  LOBYTE(v34) = 2;
  sub_1CAC818DC();
  sub_1CAD4E874();
  v16 = v39;
  v17 = v40;
  v63 = v41;
  LOBYTE(v39) = 3;
  v30 = sub_1CAD4E844();
  v31 = v17;
  v62 = v18 & 1;
  LOBYTE(v39) = 4;
  v29 = sub_1CAD4E834();
  v54 = 5;
  sub_1CAC81930();
  sub_1CAD4E874();
  (*(v10 + 8))(v8, v11);
  *&v61[38] = v57;
  *&v61[54] = v58;
  *&v61[70] = v59;
  *&v61[86] = v60;
  *&v61[6] = v55;
  *&v61[22] = v56;
  *&v38[50] = *&v61[48];
  *&v38[66] = *&v61[64];
  *&v38[82] = *&v61[80];
  *&v38[2] = *v61;
  *&v38[18] = *&v61[16];
  *&v34 = v33;
  *(&v34 + 1) = v14;
  v35 = v32;
  v19 = v30;
  *&v36 = v16;
  *(&v36 + 1) = v31;
  v28 = v63;
  LOBYTE(v37) = v63;
  *(&v37 + 1) = v30;
  v20 = v62;
  v38[0] = v62;
  LOBYTE(v11) = v29;
  v38[1] = v29;
  *&v38[96] = *(&v60 + 1);
  *&v38[34] = *&v61[32];
  sub_1CAC81984(&v34, &v39);
  __swift_destroy_boxed_opaque_existential_1(v64);
  v51 = *&v61[48];
  v52 = *&v61[64];
  *v53 = *&v61[80];
  v48 = *v61;
  v49 = *&v61[16];
  v39 = v33;
  v40 = v14;
  v41 = v32;
  v42 = v16;
  v43 = v31;
  v44 = v28;
  v45 = v19;
  v46 = v20;
  v47 = v11;
  *&v53[14] = *&v61[94];
  v50 = *&v61[32];
  result = sub_1CAC819BC(&v39);
  v22 = *&v38[80];
  *(a2 + 128) = *&v38[64];
  *(a2 + 144) = v22;
  *(a2 + 160) = *&v38[96];
  v23 = *&v38[16];
  *(a2 + 64) = *v38;
  *(a2 + 80) = v23;
  v24 = *&v38[48];
  *(a2 + 96) = *&v38[32];
  *(a2 + 112) = v24;
  v25 = v35;
  *a2 = v34;
  *(a2 + 16) = v25;
  v26 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v26;
  return result;
}

uint64_t sub_1CAC7CA8C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465E18);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC819EC();
  sub_1CAD4EAE4();
  v10 = 0;
  sub_1CAD4E8A4();
  v9 = 1;
  v6 = sub_1CAD4E834();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1CAC7CC38(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6364616F72427369 && a2 == 0xEB00000000747361)
  {

    return 2;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC7CD50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC82498();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_1CAD4E824();
  v11 = v10;
  v19 = v9;
  v21 = 1;
  v12 = sub_1CAD4E824();
  v14 = v13;
  v18 = v12;
  v20 = 2;
  v15 = sub_1CAD4E834();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v18;
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v17;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

uint64_t sub_1CAC7CF50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874654D6E696F6ALL && a2 == 0xEB0000000073646FLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736C6961746564 && a2 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CAD76600 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6261746972577369 && a2 == 0xEA0000000000656CLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CAD76620 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CAD76640 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

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

uint64_t sub_1CAC7D1F4@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465DD0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CAC816FC();
  sub_1CAD4EAE4();
  if (v2)
  {
    v72 = v2;
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v43 = 0;
    v12 = 0;
    v13 = 0;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v45);
    v56 = v13;
    v57 = v12;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v63 = 2;
    *v64 = *v71;
    *&v64[3] = *&v71[3];
    v65 = v43;
    v66 = v47;
    v67 = v46;
    v68 = v44;
    v69 = 0;
    v70 = 0;
    return sub_1CAC81750(&v56);
  }

  LOBYTE(v56) = 0;
  v10 = sub_1CAD4E824();
  v72 = 0;
  *&v42 = v10;
  *(&v42 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465DE0);
  LOBYTE(v48) = 1;
  sub_1CAC81780(&qword_1EC465DE8, &qword_1EC465DE0, &unk_1CAD62698, sub_1CAC817FC);
  v15 = v72;
  sub_1CAD4E874();
  if (v15)
  {
    v72 = v15;
    (*(v6 + 8))(v8, v5);
    v44 = 0;
    v46 = 0;
    v47 = 0;
    v43 = 0;
    v12 = *(&v42 + 1);
    v13 = v42;
    goto LABEL_4;
  }

  v41 = v56;
  LOBYTE(v56) = 2;
  v16 = sub_1CAD4E824();
  v40 = v17;
  LOBYTE(v56) = 3;
  v18 = sub_1CAD4E824();
  v39 = v19;
  LOBYTE(v56) = 4;
  v20 = sub_1CAD4E834();
  LOBYTE(v56) = 5;
  v43 = sub_1CAD4E824();
  v47 = v21;
  LOBYTE(v56) = 6;
  v46 = sub_1CAD4E824();
  v44 = v22;
  v55 = 7;
  v23 = sub_1CAD4E824();
  v72 = 0;
  v24 = v23;
  v26 = v25;
  (*(v6 + 8))(v8, v5);
  v27 = v42;
  v48 = v42;
  v28 = *(&v42 + 1);
  *&v49 = v41;
  *(&v49 + 1) = v16;
  v38 = v16;
  v29 = v40;
  *&v50 = v40;
  *(&v50 + 1) = v18;
  v37 = v18;
  v30 = v39;
  *&v51 = v39;
  BYTE8(v51) = v20;
  HIDWORD(v36) = v20;
  v31 = v43;
  *&v52 = v43;
  *(&v52 + 1) = v47;
  *&v53 = v46;
  v32 = v44;
  *(&v53 + 1) = v44;
  *&v54 = v24;
  *(&v54 + 1) = v26;
  sub_1CAC81850(&v48, &v56);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v56 = v27;
  v57 = v28;
  v58 = v41;
  v59 = v38;
  v60 = v29;
  v61 = v37;
  v62 = v30;
  v63 = BYTE4(v36);
  v65 = v31;
  v66 = v47;
  v67 = v46;
  v68 = v32;
  v69 = v24;
  v70 = v26;
  result = sub_1CAC81750(&v56);
  v33 = v53;
  a2[4] = v52;
  a2[5] = v33;
  a2[6] = v54;
  v34 = v49;
  *a2 = v48;
  a2[1] = v34;
  v35 = v51;
  a2[2] = v50;
  a2[3] = v35;
  return result;
}

uint64_t sub_1CAC7D950(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696E6167724F7369 && a2 == 0xEB0000000072657ALL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E65727275437369 && a2 == 0xED00007265735574 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701605234 && a2 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x746E656D6D6F63 && a2 == 0xE700000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xED0000746E656741)
  {

    return 10;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1CAC7DCDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465E38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CAC81A94();
  sub_1CAD4EAE4();
  if (v2)
  {
    v80 = v2;
    v46 = 0;
    v47 = 0;
    v38 = 0;
    v39 = 0;
    v42 = 0;
    v43 = 0;
    v40 = 0;
    v44 = 0;
    v45 = 0uLL;
    v41 = 2;
    __swift_destroy_boxed_opaque_existential_1(v37);
    v59 = 0uLL;
    v60 = 0;
    v61 = 0;
    v62 = 0uLL;
    v63 = v45;
    v64 = 2;
    v65 = v41;
    v66 = v78;
    v67 = v79;
    v68 = v43;
    v69 = v44;
    v70 = v40;
    v71 = v42;
    v72 = v38;
    v73 = v39;
    v74 = v46;
    v75 = v47;
    v76 = 0;
    v77 = 0;
    return sub_1CAC80B48(&v59);
  }

  else
  {
    LOBYTE(v59) = 0;
    *&v36 = sub_1CAD4E824();
    *(&v36 + 1) = v11;
    LOBYTE(v59) = 1;
    v12 = sub_1CAD4E824();
    v34 = v13;
    v35 = v12;
    LOBYTE(v59) = 2;
    *&v33 = sub_1CAD4E824();
    *(&v33 + 1) = v14;
    LOBYTE(v59) = 3;
    *&v45 = sub_1CAD4E824();
    *(&v45 + 1) = v15;
    LOBYTE(v59) = 4;
    HIDWORD(v32) = sub_1CAD4E834();
    LOBYTE(v59) = 5;
    v41 = sub_1CAD4E834();
    LOBYTE(v59) = 6;
    v43 = sub_1CAD4E824();
    v44 = v16;
    LOBYTE(v59) = 7;
    v40 = sub_1CAD4E824();
    v42 = v17;
    LOBYTE(v59) = 8;
    v18 = sub_1CAD4E824();
    v80 = 0;
    v38 = v18;
    v39 = v19;
    LOBYTE(v59) = 9;
    v46 = sub_1CAD4E824();
    v47 = v20;
    v80 = 0;
    v58 = 10;
    v21 = sub_1CAD4E824();
    v80 = 0;
    v22 = v21;
    v24 = v23;
    (*(v6 + 8))(v8, v5);
    v25 = v36;
    v48 = v36;
    v26 = v34;
    *&v49 = v35;
    *(&v49 + 1) = v34;
    v27 = v33;
    v50 = v33;
    v51 = v45;
    LOBYTE(v52) = BYTE4(v32);
    BYTE1(v52) = v41;
    *(&v52 + 1) = v43;
    *&v53 = v44;
    *(&v53 + 1) = v40;
    *&v54 = v42;
    *(&v54 + 1) = v38;
    *&v55 = v39;
    *(&v55 + 1) = v46;
    *&v56 = v47;
    *(&v56 + 1) = v22;
    v57 = v24;
    sub_1CAC80B10(&v48, &v59);
    __swift_destroy_boxed_opaque_existential_1(v37);
    v59 = v25;
    v60 = v35;
    v61 = v26;
    v62 = v27;
    v63 = v45;
    v64 = BYTE4(v32);
    v65 = v41;
    v68 = v43;
    v69 = v44;
    v70 = v40;
    v71 = v42;
    v72 = v38;
    v73 = v39;
    v74 = v46;
    v75 = v47;
    v76 = v22;
    v77 = v24;
    result = sub_1CAC80B48(&v59);
    v28 = v55;
    *(a2 + 96) = v54;
    *(a2 + 112) = v28;
    *(a2 + 128) = v56;
    *(a2 + 144) = v57;
    v29 = v51;
    *(a2 + 32) = v50;
    *(a2 + 48) = v29;
    v30 = v53;
    *(a2 + 64) = v52;
    *(a2 + 80) = v30;
    v31 = v49;
    *a2 = v48;
    *(a2 + 16) = v31;
  }

  return result;
}

uint64_t sub_1CAC7E3A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465E48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC81AE8();
  sub_1CAD4EAE4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = 0;
  v9 = sub_1CAD4E834();
  v21 = 1;
  v10 = sub_1CAD4E824();
  v12 = v11;
  v19 = v10;
  v20 = 2;
  v13 = sub_1CAD4E884();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v19;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v16;
  return result;
}

uint64_t sub_1CAC7E5B8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465E28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CAC81A40();
  sub_1CAD4EAE4();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1CAD4E884();
    v10 = 1;
    sub_1CAD4E854();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1CAC7E79C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7472617473 && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6974616F6C467369 && a2 == 0xEA0000000000676ELL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736F706F72507369 && a2 == 0xEA00000000006465 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD76560 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CAD76580 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x69546C6576617274 && a2 == 0xEA0000000000656DLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xEA00000000004449 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4C79636176697270 && a2 == 0xEC0000006C657665 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x736D72616C61 && a2 == 0xE600000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEC0000007974696CLL || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E65727275636572 && a2 == 0xEE00656C75526563 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6565646E65747461 && a2 == 0xE900000000000073 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E697274536C7275 && a2 == 0xE900000000000067 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6361747441736168 && a2 == 0xED0000746E656D68 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001CAD765A0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001CAD765C0 == a2 || (sub_1CAD4E9E4() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7461726765746E69 && a2 == 0xEB000000006E6F69)
  {

    return 23;
  }

  else
  {
    v6 = sub_1CAD4E9E4();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

void *sub_1CAC7EF04@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465CA8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v68 - v7;
  v9 = a1[3];
  v121 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1CAC8060C();
  sub_1CAD4EAE4();
  if (v2)
  {
    v293 = v2;
    __swift_destroy_boxed_opaque_existential_1(v121);
    v129 = 0;
    v130 = 0;
    v127 = 0;
    v128 = 0;
    v125 = 0;
    v126 = 0;
    v124 = 0;
    LODWORD(v123) = 0;
    LODWORD(v122) = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 1;
    goto LABEL_4;
  }

  v122 = a2;
  v123 = v6;
  LOBYTE(v132) = 0;
  v26 = sub_1CAD4E824();
  v117 = v27;
  LOBYTE(v132) = 1;
  v28 = sub_1CAD4E884();
  v107 = v29;
  v99 = v28;
  v131[0] = 2;
  sub_1CAC80660();
  sub_1CAD4E8C4();
  v98 = v132;
  v30 = *(&v133 + 1);
  v31 = *(&v134 + 1);
  v101 = v135;
  v292 = v133;
  v290 = v134;
  v131[0] = 3;
  sub_1CAD4E8C4();
  v96 = v31;
  v97 = v30;
  v32 = *(&v132 + 1);
  v95 = v132;
  v33 = *(&v133 + 1);
  v34 = *(&v134 + 1);
  v100 = v135;
  v288 = v133;
  v286 = v134;
  LOBYTE(v132) = 4;
  v91 = sub_1CAD4E834();
  v92 = v34;
  v93 = v33;
  v94 = v32;
  LOBYTE(v132) = 5;
  v44 = sub_1CAD4E834();
  LOBYTE(v132) = 6;
  v45 = sub_1CAD4E834();
  v293 = 0;
  v46 = v45;
  v90 = 0;
  v241 = 7;
  sub_1CAC806B4();
  v47 = v293;
  sub_1CAD4E874();
  v293 = v47;
  if (v47)
  {
    (*(v123 + 8))(v8, v5);
    v115 = 0;
    v116 = 0;
    v113 = 0;
    v114 = 0;
    v118 = 0;
    v119 = 0;
    v19 = 0;
    v18 = 0;
    v17 = 0;
    v16 = 0;
    v15 = 0;
    v111 = 0;
    v112 = 0;
    v10 = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    v110 = 1;
    LODWORD(v109) = 1;
    LODWORD(v108) = 1;
    v48 = v90;
    goto LABEL_12;
  }

  v110 = v243;
  v115 = v244;
  v116 = v242;
  v18 = v248;
  v105 = v249;
  v106 = v247;
  v103 = v251;
  v104 = v250;
  v113 = v252;
  v114 = v245;
  v118 = v253;
  v119 = v246;
  v111 = v255;
  v112 = v254;
  v240[0] = xmmword_1CAD5B720;
  memset(&v240[1], 0, 96);
  sub_1CAB21B68(v240, &qword_1EC465CB8);
  v228 = 8;
  sub_1CAC80708();
  v49 = v293;
  sub_1CAD4E874();
  v293 = v49;
  if (v49)
  {
    (*(v123 + 8))(v8, v5);
    v10 = 0;
    LODWORD(v122) = 0;
    LODWORD(v123) = 0;
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
    v129 = 0;
    v130 = 0;
    LODWORD(v109) = 1;
    LODWORD(v108) = 1;
    v19 = v106;
LABEL_24:
    v16 = v104;
    v17 = v105;
    v15 = v103;
    v48 = v90;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(v121);

    if (v48)
    {
      if (v109)
      {
        goto LABEL_14;
      }
    }

    else
    {

      if (v109)
      {
LABEL_14:

        v35 = 0;
        v36 = 0;
        v22 = v115;
        v23 = v116;
        v14 = v113;
        v21 = v114;
        v13 = v118;
        v20 = v119;
        v11 = v111;
        v12 = v112;
        v24 = v110;
        if ((v108 & 1) == 0)
        {
          goto LABEL_4;
        }

        goto LABEL_18;
      }
    }

    v35 = 0;
    v36 = 0;
    v22 = v115;
    v23 = v116;
    v14 = v113;
    v21 = v114;
    v13 = v118;
    v20 = v119;
    v11 = v111;
    v12 = v112;
    v24 = v110;
    if (!v108)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v102 = v18;
  v50 = v119;
  v280 = v237;
  v281 = v238;
  v282 = v239;
  v276 = v233;
  v277 = v234;
  v278 = v235;
  v279 = v236;
  v272 = v229;
  v273 = v230;
  v274 = v231;
  v275 = v232;
  v216 = 9;
  sub_1CAD4E874();
  v293 = 0;
  v268 = v224;
  v269 = v225;
  v270 = v226;
  v264 = v220;
  v265 = v221;
  v266 = v222;
  v267 = v223;
  v261 = v217;
  v262 = v218;
  v271 = v227;
  v263 = v219;
  LOBYTE(v132) = 10;
  v89 = sub_1CAD4E844();
  v293 = 0;
  v260 = v51 & 1;
  LOBYTE(v132) = 11;
  v88 = sub_1CAD4E884();
  v120 = v52;
  v293 = 0;
  LOBYTE(v132) = 12;
  v87 = sub_1CAD4E824();
  v130 = v53;
  v293 = 0;
  LOBYTE(v132) = 13;
  v86 = sub_1CAD4E824();
  v129 = v54;
  v293 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465CE0);
  v131[0] = 14;
  sub_1CAC81780(&qword_1EC465CE8, &qword_1EC465CE0, &unk_1CAD61EB0, sub_1CAC8075C);
  v55 = v293;
  sub_1CAD4E874();
  v293 = v55;
  if (v55)
  {
    (*(v123 + 8))(v8, v5);
    v124 = 0;
    v125 = 0;
    v126 = 0;
    v127 = 0;
    v128 = 0;
LABEL_32:
    LODWORD(v109) = 1;
    LODWORD(v108) = 1;
    v10 = 1;
    LODWORD(v122) = 1;
    LODWORD(v123) = 1;
    v19 = v106;
    v18 = v102;
    goto LABEL_24;
  }

  v128 = v132;
  LOBYTE(v132) = 15;
  v85 = sub_1CAD4E824();
  v127 = v56;
  v293 = 0;
  LOBYTE(v132) = 16;
  v84 = sub_1CAD4E824();
  v126 = v57;
  v293 = 0;
  v131[0] = 17;
  sub_1CAC807B0();
  v58 = v293;
  sub_1CAD4E874();
  v293 = v58;
  if (v58)
  {
    (*(v123 + 8))(v8, v5);
    v124 = 0;
    v125 = 0;
    goto LABEL_32;
  }

  v125 = *(&v132 + 1);
  v82 = v133;
  v83 = v132;
  v81 = BYTE8(v133);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465D00);
  v131[0] = 18;
  sub_1CAC81780(&qword_1EC465D08, &qword_1EC465D00, &unk_1CAD61EB8, sub_1CAC80804);
  v59 = v293;
  sub_1CAD4E874();
  v293 = v59;
  if (v59)
  {
    (*(v123 + 8))(v8, v5);
    v124 = 0;
    goto LABEL_32;
  }

  v124 = v132;
  LOBYTE(v132) = 19;
  v80 = sub_1CAD4E824();
  v109 = v60;
  v293 = 0;
  LOBYTE(v132) = 20;
  LODWORD(v90) = sub_1CAD4E834();
  v293 = 0;
  LOBYTE(v132) = 21;
  v79 = sub_1CAD4E834();
  v293 = 0;
  LOBYTE(v132) = 22;
  v78 = sub_1CAD4E824();
  v108 = v61;
  v293 = 0;
  v210 = 23;
  sub_1CAC80858();
  v62 = v293;
  sub_1CAD4E874();
  v293 = v62;
  if (v62)
  {
    (*(v123 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(v121);

    LODWORD(v123) = 1;
    LODWORD(v122) = 1;
    v10 = 1;
    v22 = v115;
    v23 = v116;
    v14 = v113;
    v21 = v114;
    v20 = v50;
    v17 = v105;
    v19 = v106;
    v18 = v102;
    v15 = v103;
    v16 = v104;
    v13 = v118;
    v11 = v111;
    v12 = v112;
    v35 = v109;
    v24 = v110;
    v36 = v108;
LABEL_18:
    v108 = v36;
    v109 = v35;
    v118 = v13;
    v119 = v20;
    v105 = v17;
    v106 = v19;
    v102 = v18;
    v103 = v15;
    v104 = v16;
    v37 = v23;
    v38 = v22;
    v39 = v21;
    v40 = v14;
    v41 = v12;
    v42 = v11;
    v43 = v24;

    v24 = v43;
    v11 = v42;
    v12 = v41;
    v13 = v118;
    v20 = v119;
    v14 = v40;
    v21 = v39;
    v17 = v105;
    v19 = v106;
    v18 = v102;
    v15 = v103;
    v16 = v104;
    v22 = v38;
    v23 = v37;
LABEL_4:
    *v131 = v23;
    *&v131[8] = v24;
    *&v131[16] = v22;
    *&v131[24] = v21;
    *&v131[32] = v20;
    *&v131[40] = v19;
    *&v131[48] = v18;
    *&v131[56] = v17;
    *&v131[64] = v16;
    *&v131[72] = v15;
    *&v131[80] = v14;
    *&v131[88] = v13;
    *&v131[96] = v12;
    *&v131[104] = v11;
    sub_1CAB21B68(v131, &qword_1EC465CB8);
    if (v10)
    {
      v140 = v280;
      v141 = v281;
      v142 = v282;
      v136 = v276;
      v137 = v277;
      v138 = v278;
      v139 = v279;
      v132 = v272;
      v133 = v273;
      v134 = v274;
      v135 = v275;
      sub_1CAB21B68(&v132, &qword_1EC465CC0);
      if (!v122)
      {
LABEL_6:
        if (!v123)
        {
LABEL_8:
        }

LABEL_7:

        goto LABEL_8;
      }
    }

    else if (!v122)
    {
      goto LABEL_6;
    }

    v140 = v269;
    v141 = v270;
    v142 = v271;
    v136 = v265;
    v137 = v266;
    v138 = v267;
    v139 = v268;
    v132 = v261;
    v133 = v262;
    v134 = v263;
    v135 = v264;
    sub_1CAB21B68(&v132, &qword_1EC465CC0);
    if (!v123)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  (*(v123 + 8))(v8, v5);
  v74 = v212;
  v75 = v211;
  v72 = v214;
  v73 = v213;
  v71 = v215;
  v77 = v26;
  *v131 = v26;
  *&v131[8] = v117;
  *&v131[16] = v99;
  *&v131[24] = v107;
  *&v131[32] = v98;
  LODWORD(v123) = v292;
  v131[48] = v292;
  *&v131[49] = *v291;
  *&v131[52] = *&v291[3];
  *&v131[56] = v97;
  v76 = v290;
  v131[64] = v290;
  *&v131[65] = *v289;
  *&v131[68] = *&v289[3];
  *&v131[72] = v96;
  *&v131[80] = v101;
  *&v131[88] = v95;
  *&v131[96] = v94;
  *&v131[609] = *v259;
  *&v131[729] = *v258;
  *&v131[762] = v256;
  v70 = v288;
  v131[104] = v288;
  *&v131[105] = *v287;
  *&v131[108] = *&v287[3];
  *&v131[112] = v93;
  *&v131[124] = *&v285[3];
  *&v131[121] = *v285;
  v131[151] = v284;
  *&v131[147] = v283;
  HIDWORD(v68) = v44;
  v69 = v286;
  v131[120] = v286;
  *&v131[128] = v92;
  *&v131[136] = v100;
  v131[144] = v91;
  v131[145] = v44;
  v131[146] = v46;
  *&v131[152] = v116;
  *&v131[160] = v110;
  *&v131[168] = v115;
  *&v131[176] = v114;
  v63 = v50;
  *&v131[184] = v50;
  v64 = v106;
  *&v131[192] = v106;
  v65 = v102;
  *&v131[200] = v102;
  *&v131[208] = v105;
  *&v131[216] = v104;
  *&v131[224] = v103;
  *&v131[232] = v113;
  *&v131[240] = v118;
  *&v131[248] = v112;
  *&v131[256] = v111;
  *&v131[264] = v272;
  *&v131[280] = v273;
  *&v131[328] = v276;
  *&v131[344] = v277;
  *&v131[296] = v274;
  *&v131[312] = v275;
  *&v131[392] = v280;
  *&v131[408] = v281;
  *&v131[360] = v278;
  *&v131[376] = v279;
  *&v131[424] = v282;
  *&v131[560] = v269;
  *&v131[576] = v270;
  *&v131[592] = v271;
  *&v131[496] = v265;
  *&v131[512] = v266;
  *&v131[544] = v268;
  *&v131[528] = v267;
  *&v131[432] = v261;
  *&v131[448] = v262;
  *&v131[480] = v264;
  *&v131[464] = v263;
  v66 = v89;
  *&v131[600] = v89;
  *&v131[612] = *&v259[3];
  *&v131[732] = *&v258[3];
  *&v131[766] = v257;
  v67 = v260;
  v131[608] = v260;
  *&v131[616] = v88;
  *&v131[624] = v120;
  *&v131[632] = v87;
  *&v131[640] = v130;
  *&v131[648] = v86;
  *&v131[656] = v129;
  *&v131[664] = v128;
  *&v131[672] = v85;
  *&v131[680] = v127;
  *&v131[688] = v84;
  *&v131[696] = v126;
  *&v131[704] = v83;
  *&v131[712] = v125;
  *&v131[720] = v82;
  v131[728] = v81;
  *&v131[736] = v124;
  *&v131[744] = v80;
  *&v131[752] = v109;
  v131[760] = v90;
  v131[761] = v79;
  *&v131[768] = v78;
  *&v131[776] = v108;
  *&v131[784] = v211;
  *&v131[792] = v212;
  *&v131[800] = v213;
  *&v131[808] = v214;
  *&v131[816] = v215;
  sub_1CAC7A000(v131, &v132);
  __swift_destroy_boxed_opaque_existential_1(v121);
  *&v132 = v77;
  *(&v132 + 1) = v117;
  *&v133 = v99;
  *(&v133 + 1) = v107;
  v134 = v98;
  LOBYTE(v135) = v123;
  *(&v135 + 1) = v97;
  LOBYTE(v136) = v76;
  *(&v136 + 1) = v96;
  *&v137 = v101;
  *(&v137 + 1) = v95;
  *&v138 = v94;
  BYTE8(v138) = v70;
  *&v139 = v93;
  BYTE8(v139) = v69;
  *&v140 = v92;
  *(&v140 + 1) = v100;
  LOBYTE(v141) = v91;
  BYTE1(v141) = BYTE4(v68);
  BYTE2(v141) = v46;
  *(&v141 + 1) = v116;
  v142 = v110;
  v143 = v115;
  v144 = v114;
  v145 = v63;
  v146 = v64;
  v147 = v65;
  v148 = v105;
  v149 = v104;
  v150 = v103;
  v151 = v113;
  v152 = v118;
  v153 = v112;
  v154 = v111;
  v177 = v66;
  v178 = v67;
  *(&v135 + 1) = *v291;
  DWORD1(v135) = *&v291[3];
  *(&v136 + 1) = *v289;
  DWORD1(v136) = *&v289[3];
  *(&v138 + 9) = *v287;
  HIDWORD(v138) = *&v287[3];
  *(&v139 + 9) = *v285;
  HIDWORD(v139) = *&v285[3];
  *(&v141 + 3) = v283;
  BYTE7(v141) = v284;
  v155 = v272;
  v156 = v273;
  v159 = v276;
  v160 = v277;
  v157 = v274;
  v158 = v275;
  v163 = v280;
  v164 = v281;
  v161 = v278;
  v162 = v279;
  v165 = v282;
  v174 = v269;
  v175 = v270;
  v176 = v271;
  v170 = v265;
  v171 = v266;
  v172 = v267;
  v173 = v268;
  v166 = v261;
  v167 = v262;
  v168 = v263;
  v169 = v264;
  *v179 = *v259;
  *&v179[3] = *&v259[3];
  v180 = v88;
  v181 = v120;
  v182 = v87;
  v183 = v130;
  v184 = v86;
  v185 = v129;
  v186 = v128;
  v187 = v85;
  v188 = v127;
  v189 = v84;
  v190 = v126;
  v191 = v83;
  v192 = v125;
  v193 = v82;
  v194 = v81;
  *v195 = *v258;
  *&v195[3] = *&v258[3];
  v196 = v124;
  v197 = v80;
  v198 = v109;
  v199 = v90;
  v200 = v79;
  v201 = v256;
  v202 = v257;
  v203 = v78;
  v204 = v108;
  v205 = v75;
  v206 = v74;
  v207 = v73;
  v208 = v72;
  v209 = v71;
  sub_1CAC7A038(&v132);
  return memcpy(v122, v131, 0x338uLL);
}

unint64_t sub_1CAC8060C()
{
  result = qword_1EC465CB0;
  if (!qword_1EC465CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465CB0);
  }

  return result;
}

unint64_t sub_1CAC80660()
{
  result = qword_1EC465CC8;
  if (!qword_1EC465CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465CC8);
  }

  return result;
}

unint64_t sub_1CAC806B4()
{
  result = qword_1EC465CD0;
  if (!qword_1EC465CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465CD0);
  }

  return result;
}

unint64_t sub_1CAC80708()
{
  result = qword_1EC465CD8;
  if (!qword_1EC465CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465CD8);
  }

  return result;
}

unint64_t sub_1CAC8075C()
{
  result = qword_1EC465CF0;
  if (!qword_1EC465CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465CF0);
  }

  return result;
}

unint64_t sub_1CAC807B0()
{
  result = qword_1EC465CF8;
  if (!qword_1EC465CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465CF8);
  }

  return result;
}

unint64_t sub_1CAC80804()
{
  result = qword_1EC465D10;
  if (!qword_1EC465D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D10);
  }

  return result;
}

unint64_t sub_1CAC80858()
{
  result = qword_1EC465D18;
  if (!qword_1EC465D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D18);
  }

  return result;
}

unint64_t sub_1CAC808AC()
{
  result = qword_1EC465D28;
  if (!qword_1EC465D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D28);
  }

  return result;
}

unint64_t sub_1CAC80900()
{
  result = qword_1EC465D38;
  if (!qword_1EC465D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D38);
  }

  return result;
}

uint64_t sub_1CAC80954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC809BC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 24))(a2, a1, v5);
  return a2;
}

void sub_1CAC80A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a3 != 1)
  {

    sub_1CAC3C300(a4, a5, a6, a7);
  }
}

unint64_t sub_1CAC80AAC()
{
  result = qword_1EC461F38;
  if (!qword_1EC461F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC464730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC461F38);
  }

  return result;
}

uint64_t sub_1CAC80B78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC80C7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1CAC80CC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy152_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1CAC80D50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
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

uint64_t sub_1CAC80DAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CAC80E34(uint64_t a1, int a2)
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

uint64_t sub_1CAC80E7C(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FakeDataReader.Event.Alarm(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FakeDataReader.Event.Alarm(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1CAC80FD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 168))
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

uint64_t sub_1CAC81030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 168) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1CAC810E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t sub_1CAC8113C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1CAC811BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t sub_1CAC81218(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

unint64_t sub_1CAC8128C()
{
  result = qword_1EC465D60;
  if (!qword_1EC465D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D60);
  }

  return result;
}

unint64_t sub_1CAC812E4()
{
  result = qword_1EC465D68;
  if (!qword_1EC465D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D68);
  }

  return result;
}

unint64_t sub_1CAC8133C()
{
  result = qword_1EC465D70;
  if (!qword_1EC465D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D70);
  }

  return result;
}

unint64_t sub_1CAC81394()
{
  result = qword_1EC465D78;
  if (!qword_1EC465D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D78);
  }

  return result;
}

unint64_t sub_1CAC813EC()
{
  result = qword_1EC465D80;
  if (!qword_1EC465D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D80);
  }

  return result;
}

unint64_t sub_1CAC81444()
{
  result = qword_1EC465D88;
  if (!qword_1EC465D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D88);
  }

  return result;
}

unint64_t sub_1CAC8149C()
{
  result = qword_1EC465D90;
  if (!qword_1EC465D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D90);
  }

  return result;
}

unint64_t sub_1CAC814F4()
{
  result = qword_1EC465D98;
  if (!qword_1EC465D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465D98);
  }

  return result;
}

unint64_t sub_1CAC8154C()
{
  result = qword_1EC465DA0;
  if (!qword_1EC465DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465DA0);
  }

  return result;
}

unint64_t sub_1CAC815A4()
{
  result = qword_1EC465DA8;
  if (!qword_1EC465DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465DA8);
  }

  return result;
}

unint64_t sub_1CAC815FC()
{
  result = qword_1EC465DB0;
  if (!qword_1EC465DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465DB0);
  }

  return result;
}

unint64_t sub_1CAC81654()
{
  result = qword_1EC465DB8;
  if (!qword_1EC465DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465DB8);
  }

  return result;
}

unint64_t sub_1CAC816A8()
{
  result = qword_1EC465DC8;
  if (!qword_1EC465DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465DC8);
  }

  return result;
}

unint64_t sub_1CAC816FC()
{
  result = qword_1EC465DD8;
  if (!qword_1EC465DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465DD8);
  }

  return result;
}

uint64_t sub_1CAC81780(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CAC817FC()
{
  result = qword_1EC465DF0;
  if (!qword_1EC465DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465DF0);
  }

  return result;
}

unint64_t sub_1CAC81888()
{
  result = qword_1EC465E00;
  if (!qword_1EC465E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E00);
  }

  return result;
}

unint64_t sub_1CAC818DC()
{
  result = qword_1EC465E08;
  if (!qword_1EC465E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E08);
  }

  return result;
}

unint64_t sub_1CAC81930()
{
  result = qword_1EC465E10;
  if (!qword_1EC465E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E10);
  }

  return result;
}

unint64_t sub_1CAC819EC()
{
  result = qword_1EC465E20;
  if (!qword_1EC465E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E20);
  }

  return result;
}

unint64_t sub_1CAC81A40()
{
  result = qword_1EC465E30;
  if (!qword_1EC465E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E30);
  }

  return result;
}

unint64_t sub_1CAC81A94()
{
  result = qword_1EC465E40;
  if (!qword_1EC465E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E40);
  }

  return result;
}

unint64_t sub_1CAC81AE8()
{
  result = qword_1EC465E50;
  if (!qword_1EC465E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E50);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1CAC81BC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1CAC81C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1CAC81C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_1CAC81CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1CAC81D64()
{
  result = qword_1EC465E60;
  if (!qword_1EC465E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E60);
  }

  return result;
}

unint64_t sub_1CAC81DBC()
{
  result = qword_1EC465E68;
  if (!qword_1EC465E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E68);
  }

  return result;
}

unint64_t sub_1CAC81E14()
{
  result = qword_1EC465E70;
  if (!qword_1EC465E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E70);
  }

  return result;
}

unint64_t sub_1CAC81E6C()
{
  result = qword_1EC465E78;
  if (!qword_1EC465E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E78);
  }

  return result;
}

unint64_t sub_1CAC81EC4()
{
  result = qword_1EC465E80;
  if (!qword_1EC465E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E80);
  }

  return result;
}

unint64_t sub_1CAC81F1C()
{
  result = qword_1EC465E88;
  if (!qword_1EC465E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E88);
  }

  return result;
}

unint64_t sub_1CAC81F74()
{
  result = qword_1EC465E90;
  if (!qword_1EC465E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E90);
  }

  return result;
}

unint64_t sub_1CAC81FCC()
{
  result = qword_1EC465E98;
  if (!qword_1EC465E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465E98);
  }

  return result;
}

unint64_t sub_1CAC82024()
{
  result = qword_1EC465EA0;
  if (!qword_1EC465EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EA0);
  }

  return result;
}

unint64_t sub_1CAC8207C()
{
  result = qword_1EC465EA8;
  if (!qword_1EC465EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EA8);
  }

  return result;
}

unint64_t sub_1CAC820D4()
{
  result = qword_1EC465EB0;
  if (!qword_1EC465EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EB0);
  }

  return result;
}

unint64_t sub_1CAC8212C()
{
  result = qword_1EC465EB8;
  if (!qword_1EC465EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EB8);
  }

  return result;
}

unint64_t sub_1CAC82184()
{
  result = qword_1EC465EC0;
  if (!qword_1EC465EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EC0);
  }

  return result;
}

unint64_t sub_1CAC821DC()
{
  result = qword_1EC465EC8;
  if (!qword_1EC465EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EC8);
  }

  return result;
}

unint64_t sub_1CAC82234()
{
  result = qword_1EC465ED0;
  if (!qword_1EC465ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465ED0);
  }

  return result;
}

unint64_t sub_1CAC8228C()
{
  result = qword_1EC465ED8;
  if (!qword_1EC465ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465ED8);
  }

  return result;
}

unint64_t sub_1CAC822E4()
{
  result = qword_1EC465EE0;
  if (!qword_1EC465EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EE0);
  }

  return result;
}

unint64_t sub_1CAC8233C()
{
  result = qword_1EC465EE8;
  if (!qword_1EC465EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EE8);
  }

  return result;
}

unint64_t sub_1CAC82394()
{
  result = qword_1EC465EF0;
  if (!qword_1EC465EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EF0);
  }

  return result;
}

unint64_t sub_1CAC823EC()
{
  result = qword_1EC465EF8;
  if (!qword_1EC465EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465EF8);
  }

  return result;
}

unint64_t sub_1CAC82444()
{
  result = qword_1EC465F00;
  if (!qword_1EC465F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F00);
  }

  return result;
}

unint64_t sub_1CAC82498()
{
  result = qword_1EC465F10;
  if (!qword_1EC465F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F10);
  }

  return result;
}

unint64_t sub_1CAC824EC()
{
  result = qword_1EC465F20;
  if (!qword_1EC465F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F20);
  }

  return result;
}

unint64_t sub_1CAC82540()
{
  result = qword_1EC465F30;
  if (!qword_1EC465F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F30);
  }

  return result;
}

unint64_t sub_1CAC82630()
{
  result = qword_1EC465F38;
  if (!qword_1EC465F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F38);
  }

  return result;
}

unint64_t sub_1CAC82688()
{
  result = qword_1EC465F40;
  if (!qword_1EC465F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F40);
  }

  return result;
}

unint64_t sub_1CAC826E0()
{
  result = qword_1EC465F48;
  if (!qword_1EC465F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F48);
  }

  return result;
}

unint64_t sub_1CAC82738()
{
  result = qword_1EC465F50;
  if (!qword_1EC465F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F50);
  }

  return result;
}

unint64_t sub_1CAC82790()
{
  result = qword_1EC465F58;
  if (!qword_1EC465F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F58);
  }

  return result;
}

unint64_t sub_1CAC827E8()
{
  result = qword_1EC465F60;
  if (!qword_1EC465F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F60);
  }

  return result;
}

unint64_t sub_1CAC82840()
{
  result = qword_1EC465F68;
  if (!qword_1EC465F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F68);
  }

  return result;
}

unint64_t sub_1CAC82898()
{
  result = qword_1EC465F70;
  if (!qword_1EC465F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F70);
  }

  return result;
}

unint64_t sub_1CAC828F0()
{
  result = qword_1EC465F78;
  if (!qword_1EC465F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC465F78);
  }

  return result;
}

id sub_1CAC82980(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 > 4u)
  {
LABEL_7:
    if (v1 > 6)
    {
      if (v1 != 7)
      {
        if (v1 == 8)
        {
          if (qword_1EC462D80 != -1)
          {
            swift_once();
          }

          v3 = &qword_1EC47DD38;
LABEL_29:
          v4 = *v3;

          return v4;
        }

LABEL_26:
        if (qword_1EC462D88 != -1)
        {
          swift_once();
        }

        v3 = &qword_1EC47DD48;
        goto LABEL_29;
      }

LABEL_21:
      if (qword_1EC462D78 != -1)
      {
        swift_once();
      }

      v3 = &qword_1EC47DD28;
      goto LABEL_29;
    }

    goto LABEL_16;
  }

  if (a1 > 1u)
  {
    if (a1 == 2)
    {
LABEL_19:
      result = CUIKStringForDayOfWeekNotStandalone(2u);
      if (!result)
      {
        __break(1u);
        goto LABEL_21;
      }

LABEL_33:
      v5 = result;
      v4 = sub_1CAD4DF94();

      return v4;
    }

    if (a1 != 3)
    {
      result = CUIKStringForDayOfWeekNotStandalone(4u);
      if (!result)
      {
        __break(1u);
        goto LABEL_26;
      }

      goto LABEL_33;
    }

    result = CUIKStringForDayOfWeekNotStandalone(3u);
    if (result)
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_7;
  }

  if (a1)
  {
    result = CUIKStringForDayOfWeekNotStandalone(1u);
    if (result)
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_32;
  }

  result = CUIKStringForDayOfWeekNotStandalone(0);
  if (result)
  {
    goto LABEL_33;
  }

  __break(1u);
LABEL_16:
  if (v1 == 5)
  {
    result = CUIKStringForDayOfWeekNotStandalone(5u);
    if (result)
    {
      goto LABEL_33;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_32:
  result = CUIKStringForDayOfWeekNotStandalone(6u);
  if (result)
  {
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

void (*sub_1CAC82B70(void *a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170) - 8) + 64);
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    *a1 = swift_coroFrameAlloc();
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    v5 = malloc(v3);
  }

  a1[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  a1[2] = v6;
  if (v4)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(*(v6 - 8) + 64));
  }

  a1[3] = v7;
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v7, &qword_1EC463168);
  MEMORY[0x1CCAA6D30](v6);
  return sub_1CAC82CAC;
}

void sub_1CAC82CAC(uint64_t a1, char a2)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    sub_1CAB23A9C(*(a1 + 8), v3, &qword_1EC463170);
    sub_1CAD4DAC4();
    sub_1CAB21B68(v2, &qword_1EC463168);
    v5 = v4;
    v6 = &qword_1EC463170;
  }

  else
  {
    sub_1CAD4DAC4();
    v6 = &qword_1EC463168;
    v5 = v2;
  }

  sub_1CAB21B68(v5, v6);
  free(v2);
  free(v4);

  free(v3);
}

uint64_t sub_1CAC82D84@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1CAC8A004();
  sub_1CAD4C424();

  v3 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  return sub_1CAC8A05C(v5 + v3, a1);
}

uint64_t sub_1CAC82E1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v4 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  return sub_1CAC8A05C(v3 + v4, a2);
}

uint64_t sub_1CAC82EB4(uint64_t a1)
{
  v2 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAC8A05C(a1, v4);
  return sub_1CAC82F40(v4);
}

uint64_t sub_1CAC82F40(uint64_t a1)
{
  v3 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  sub_1CAC8A05C(v1 + v6, v5);
  v7 = _s13CalendarUIKit30EventRecurrenceRuleModelObjectV2eeoiySbAC_ACtFZ_0(v5, a1);
  sub_1CABA6514(v5, type metadata accessor for EventRecurrenceRuleModelObject);
  if (v7)
  {
    sub_1CAC8A05C(a1, v5);
    swift_beginAccess();
    sub_1CAC8BB44(v5, v1 + v6);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[1] = v1;
    sub_1CAC8A004();
    sub_1CAD4C414();
  }

  return sub_1CABA6514(a1, type metadata accessor for EventRecurrenceRuleModelObject);
}

uint64_t sub_1CAC830F8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  sub_1CAC8BBA8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_1CAC83164@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v5, &qword_1EC463168);
  MEMORY[0x1CCAA6D30](v3);
  sub_1CAB21B68(v5, &qword_1EC463168);
  v12 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  if ((*(*(v12 - 8) + 48))(v8, 1, v12) || (v13 = type metadata accessor for EventRecurrenceEndModelObject(0), (*(*(v13 - 8) + 48))(v8, 1, v13)))
  {
    sub_1CAB21B68(v8, &qword_1EC463170);
    v14 = sub_1CAD4C0F4();
    (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  }

  else
  {
    sub_1CAB23A9C(v8, v11, &unk_1EC465A70);
    sub_1CAB21B68(v8, &qword_1EC463170);
    v14 = sub_1CAD4C0F4();
    v16 = *(v14 - 8);
    if ((*(v16 + 48))(v11, 1, v14) != 1)
    {
      return (*(v16 + 32))(a1, v11, v14);
    }
  }

  sub_1CAD4C0E4();
  sub_1CAD4C0F4();
  result = (*(*(v14 - 8) + 48))(v11, 1, v14);
  if (result != 1)
  {
    return sub_1CAB21B68(v11, &unk_1EC465A70);
  }

  return result;
}

uint64_t sub_1CAC834C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v18 - v6;
  v8 = sub_1CAC82B70(v18);
  v10 = v9;
  v11 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  if (!(*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    v12 = sub_1CAD4C0F4();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v4, a1, v12);
    v14 = *(v13 + 56);
    v14(v4, 0, 1, v12);
    v14(v7, 1, 1, v12);
    sub_1CABC6AC8(v4, v7, &unk_1EC465A70);
    v15 = type metadata accessor for EventRecurrenceEndModelObject(0);
    *&v7[*(v15 + 20)] = 0;
    (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
    sub_1CABC6AC8(v7, v10, &unk_1EC463290);
  }

  v8(v18, 0);
  v16 = sub_1CAD4C0F4();
  return (*(*(v16 - 8) + 8))(a1, v16);
}

uint64_t sub_1CAC8376C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1CAB23A9C(v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v3, &qword_1EC463168);
  MEMORY[0x1CCAA6D30](v1);
  sub_1CAB21B68(v3, &qword_1EC463168);
  v7 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v8 = 1;
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    v9 = type metadata accessor for EventRecurrenceEndModelObject(0);
    v8 = 1;
    if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
    {
      v8 = *&v6[*(v9 + 20)];
    }
  }

  sub_1CAB21B68(v6, &qword_1EC463170);
  return v8;
}

uint64_t sub_1CAC83930(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CAC8A004();
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CAC83A18()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v4, &qword_1EC463168);
  MEMORY[0x1CCAA6D30](v2);
  sub_1CAB21B68(v4, &qword_1EC463168);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1CAB21B68(v7, &qword_1EC463170);
    return 0;
  }

  sub_1CAC8BA38(v7, v11, type metadata accessor for EventRecurrenceRuleModelObject);
  if (!EventRecurrenceRuleModelObject.isCustom.getter() || (sub_1CAC8A0C0(0, 0), v12 = objc_opt_self(), v13 = sub_1CAD4C084(), v14 = sub_1CAD4DF54(), , v15 = [v12 humanReadableDescriptionWithStartDate:v13 ofRecurrenceRuleICSString:v14 isConcise:1], v13, v14, !v15))
  {
    sub_1CABA6514(v11, type metadata accessor for EventRecurrenceRuleModelObject);
    return 0;
  }

  v16 = sub_1CAD4DF94();
  v18 = v17;

  if (qword_1EC462CF0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1CAD58380;
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 64) = sub_1CABC6340();
  *(v19 + 32) = v16;
  *(v19 + 40) = v18;
  v20 = sub_1CAD4DF64();

  sub_1CABA6514(v11, type metadata accessor for EventRecurrenceRuleModelObject);
  return v20;
}

uint64_t sub_1CAC83DB0()
{
  v1 = v0;
  v2 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v17 = v0;
  sub_1CAC8A004();
  sub_1CAD4C424();

  v5 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  sub_1CAC8A05C(v1 + v5, v4);
  sub_1CAC8A0C0(0, 0);
  v6 = objc_opt_self();
  v7 = sub_1CAD4C084();
  v8 = sub_1CAD4DF54();

  v9 = [v6 humanReadableDescriptionWithStartDate:v7 ofRecurrenceRuleICSString:v8 isConcise:1];

  if (v9)
  {
    v10 = sub_1CAD4DF94();
    v12 = v11;

    sub_1CABA6514(v4, type metadata accessor for EventRecurrenceRuleModelObject);
    if (qword_1EC462CF0 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463920);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1CAD58380;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = sub_1CABC6340();
    *(v13 + 32) = v10;
    *(v13 + 40) = v12;
    v14 = sub_1CAD4DF64();
  }

  else
  {
    sub_1CABA6514(v4, type metadata accessor for EventRecurrenceRuleModelObject);
    return 0;
  }

  return v14;
}

uint64_t sub_1CAC84024()
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  return *(v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom);
}

uint64_t sub_1CAC8409C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  *a2 = *(v3 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom);
  return result;
}

uint64_t sub_1CAC8416C(int a1, uint64_t a2)
{
  v129 = a2;
  LODWORD(v126) = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v125 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v124 = &v121 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v123 = &v121 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v121 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v121 - v12;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v121 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v121 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v121 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v121 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v121 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v121 - v32;
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v121 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v121 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v121 - v41;
  result = MEMORY[0x1EEE9AC00](v40);
  v48 = v126;
  if (v126 <= 2u)
  {
    if (v126)
    {
      v126 = &v121 - v44;
      if (v48 != 1)
      {
        v125 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule;
        v65 = v128;
        sub_1CAB23A9C(v129 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v128, &qword_1EC463168);
        MEMORY[0x1CCAA6D30](v127);
        sub_1CAB21B68(v65, &qword_1EC463168);
        v66 = type metadata accessor for EventRecurrenceRuleModelObject(0);
        v124 = *(v66 - 1);
        v67 = (*(v124 + 48))(v30, 1, v66);
        v122 = v11;
        if (v67)
        {
          sub_1CAB21B68(v30, &qword_1EC463170);
          v68 = type metadata accessor for EventRecurrenceEndModelObject(0);
          (*(*(v68 - 8) + 56))(v11, 1, 1, v68);
        }

        else
        {
          sub_1CAB23A9C(v30, v11, &unk_1EC463290);
          sub_1CAB21B68(v30, &qword_1EC463170);
        }

        v85 = type metadata accessor for EventRecurrenceEndModelObject(0);
        (*(*(v85 - 8) + 56))(v33, 1, 1, v85);
        v86 = v66[8];
        v87 = &v33[v66[7]];
        v88 = v66[9];
        v89 = v66[10];
        v91 = v66[11];
        v90 = v66[12];
        v92 = v66[13];
        sub_1CABC6AC8(v122, v33, &unk_1EC463290);
        *&v33[v66[5]] = 1;
        *&v33[v66[6]] = 1;
        *v87 = 0;
        v87[8] = 1;
        *&v33[v86] = 0;
        *&v33[v88] = 0;
        *&v33[v89] = 0;
        *&v33[v91] = 0;
        *&v33[v90] = 0;
        *&v33[v92] = 0;
        (*(v124 + 56))(v33, 0, 1, v66);
        v93 = v128;
        sub_1CAB23A9C(v129 + v125, v128, &qword_1EC463168);
        sub_1CAB23A9C(v33, v126, &qword_1EC463170);
        sub_1CAD4DAC4();
        sub_1CAB21B68(v93, &qword_1EC463168);
        v84 = v33;
        return sub_1CAB21B68(v84, &qword_1EC463170);
      }

      v52 = v13;
      v125 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule;
      v53 = v128;
      sub_1CAB23A9C(v129 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v128, &qword_1EC463168);
      MEMORY[0x1CCAA6D30](v127);
      sub_1CAB21B68(v53, &qword_1EC463168);
      v54 = type metadata accessor for EventRecurrenceRuleModelObject(0);
      v124 = *(v54 - 1);
      v55 = (*(v124 + 48))(v36, 1, v54);
      v121 = v52;
      if (v55)
      {
        sub_1CAB21B68(v36, &qword_1EC463170);
        v56 = type metadata accessor for EventRecurrenceEndModelObject(0);
        (*(*(v56 - 8) + 56))(v52, 1, 1, v56);
      }

      else
      {
        sub_1CAB23A9C(v36, v52, &unk_1EC463290);
        sub_1CAB21B68(v36, &qword_1EC463170);
      }

      v75 = type metadata accessor for EventRecurrenceEndModelObject(0);
      (*(*(v75 - 8) + 56))(v39, 1, 1, v75);
      v76 = v54[8];
      v77 = &v39[v54[7]];
      v78 = v54[9];
      v79 = v54[10];
      v81 = v54[11];
      v80 = v54[12];
      v82 = v54[13];
      sub_1CABC6AC8(v121, v39, &unk_1EC463290);
      *&v39[v54[5]] = 0;
      *&v39[v54[6]] = 1;
      *v77 = 0;
      v77[8] = 1;
      *&v39[v76] = 0;
      *&v39[v78] = 0;
      *&v39[v79] = 0;
      *&v39[v81] = 0;
      *&v39[v80] = 0;
      *&v39[v82] = 0;
      (*(v124 + 56))(v39, 0, 1, v54);
      v83 = v128;
      sub_1CAB23A9C(v129 + v125, v128, &qword_1EC463168);
      sub_1CAB23A9C(v39, v126, &qword_1EC463170);
      sub_1CAD4DAC4();
      v64 = v83;
    }

    else
    {
      v39 = &v121 - v44;
      v62 = type metadata accessor for EventRecurrenceRuleModelObject(0);
      (*(*(v62 - 8) + 56))(v39, 1, 1, v62);
      v63 = v128;
      sub_1CAB23A9C(v129 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v128, &qword_1EC463168);
      sub_1CAB23A9C(v39, v42, &qword_1EC463170);
      sub_1CAD4DAC4();
      v64 = v63;
    }

    sub_1CAB21B68(v64, &qword_1EC463168);
    v84 = v39;
    return sub_1CAB21B68(v84, &qword_1EC463170);
  }

  if (v126 <= 4u)
  {
    v126 = &v121 - v44;
    if (v48 == 3)
    {
      v49 = v128;
      v125 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule;
      sub_1CAB23A9C(v129 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v128, &qword_1EC463168);
      MEMORY[0x1CCAA6D30](v127);
      sub_1CAB21B68(v49, &qword_1EC463168);
      v50 = type metadata accessor for EventRecurrenceRuleModelObject(0);
      v124 = *(v50 - 1);
      if ((*(v124 + 48))(v24, 1, v50))
      {
        sub_1CAB21B68(v24, &qword_1EC463170);
        v51 = type metadata accessor for EventRecurrenceEndModelObject(0);
        (*(*(v51 - 8) + 56))(v123, 1, 1, v51);
      }

      else
      {
        sub_1CAB23A9C(v24, v123, &unk_1EC463290);
        sub_1CAB21B68(v24, &qword_1EC463170);
      }

      v94 = type metadata accessor for EventRecurrenceEndModelObject(0);
      (*(*(v94 - 8) + 56))(v27, 1, 1, v94);
      v95 = v50[8];
      v96 = &v27[v50[7]];
      v97 = v50[9];
      v98 = v50[10];
      v100 = v50[11];
      v99 = v50[12];
      v101 = v50[13];
      sub_1CABC6AC8(v123, v27, &unk_1EC463290);
      *&v27[v50[5]] = 1;
      *&v27[v50[6]] = 2;
      *v96 = 0;
      v96[8] = 1;
      *&v27[v95] = 0;
      *&v27[v97] = 0;
      *&v27[v98] = 0;
      *&v27[v100] = 0;
      *&v27[v99] = 0;
      *&v27[v101] = 0;
      (*(v124 + 56))(v27, 0, 1, v50);
      v102 = v128;
      sub_1CAB23A9C(v129 + v125, v128, &qword_1EC463168);
      sub_1CAB23A9C(v27, v126, &qword_1EC463170);
      sub_1CAD4DAC4();
      sub_1CAB21B68(v102, &qword_1EC463168);
      v84 = v27;
    }

    else
    {
      v69 = v46;
      v70 = v128;
      v125 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule;
      sub_1CAB23A9C(v129 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v128, &qword_1EC463168);
      MEMORY[0x1CCAA6D30](v127);
      sub_1CAB21B68(v70, &qword_1EC463168);
      v71 = type metadata accessor for EventRecurrenceRuleModelObject(0);
      v123 = *(v71 - 1);
      if ((*(v123 + 48))(v20, 1, v71))
      {
        sub_1CAB21B68(v20, &qword_1EC463170);
        v72 = type metadata accessor for EventRecurrenceEndModelObject(0);
        (*(*(v72 - 8) + 56))(v124, 1, 1, v72);
      }

      else
      {
        sub_1CAB23A9C(v20, v124, &unk_1EC463290);
        sub_1CAB21B68(v20, &qword_1EC463170);
      }

      v112 = type metadata accessor for EventRecurrenceEndModelObject(0);
      (*(*(v112 - 8) + 56))(v69, 1, 1, v112);
      v113 = v71[8];
      v114 = v69 + v71[7];
      v115 = v71[9];
      v116 = v71[10];
      v118 = v71[11];
      v117 = v71[12];
      v119 = v71[13];
      sub_1CABC6AC8(v124, v69, &unk_1EC463290);
      *(v69 + v71[5]) = 2;
      *(v69 + v71[6]) = 1;
      *v114 = 0;
      *(v114 + 8) = 1;
      *(v69 + v113) = 0;
      *(v69 + v115) = 0;
      *(v69 + v116) = 0;
      *(v69 + v118) = 0;
      *(v69 + v117) = 0;
      *(v69 + v119) = 0;
      (*(v123 + 56))(v69, 0, 1, v71);
      v120 = v128;
      sub_1CAB23A9C(v129 + v125, v128, &qword_1EC463168);
      sub_1CAB23A9C(v69, v126, &qword_1EC463170);
      sub_1CAD4DAC4();
      sub_1CAB21B68(v120, &qword_1EC463168);
      v84 = v69;
    }

    return sub_1CAB21B68(v84, &qword_1EC463170);
  }

  if (v126 == 5)
  {
    v57 = v45;
    v126 = &v121 - v44;
    v58 = v128;
    v124 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule;
    v59 = v47;
    sub_1CAB23A9C(v129 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v128, &qword_1EC463168);
    MEMORY[0x1CCAA6D30](v127);
    sub_1CAB21B68(v58, &qword_1EC463168);
    v60 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v123 = *(v60 - 1);
    if ((*(v123 + 48))(v59, 1, v60))
    {
      sub_1CAB21B68(v59, &qword_1EC463170);
      v61 = type metadata accessor for EventRecurrenceEndModelObject(0);
      (*(*(v61 - 8) + 56))(v125, 1, 1, v61);
    }

    else
    {
      sub_1CAB23A9C(v59, v125, &unk_1EC463290);
      sub_1CAB21B68(v59, &qword_1EC463170);
    }

    v103 = type metadata accessor for EventRecurrenceEndModelObject(0);
    (*(*(v103 - 8) + 56))(v57, 1, 1, v103);
    v104 = v60[8];
    v105 = v57 + v60[7];
    v106 = v60[9];
    v107 = v60[10];
    v109 = v60[11];
    v108 = v60[12];
    v110 = v60[13];
    sub_1CABC6AC8(v125, v57, &unk_1EC463290);
    *(v57 + v60[5]) = 3;
    *(v57 + v60[6]) = 1;
    *v105 = 0;
    *(v105 + 8) = 1;
    *(v57 + v104) = 0;
    *(v57 + v106) = 0;
    *(v57 + v107) = 0;
    *(v57 + v109) = 0;
    *(v57 + v108) = 0;
    *(v57 + v110) = 0;
    (*(v123 + 56))(v57, 0, 1, v60);
    v111 = v128;
    sub_1CAB23A9C(v129 + v124, v128, &qword_1EC463168);
    sub_1CAB23A9C(v57, v126, &qword_1EC463170);
    sub_1CAD4DAC4();
    sub_1CAB21B68(v111, &qword_1EC463168);
    v84 = v57;
    return sub_1CAB21B68(v84, &qword_1EC463170);
  }

  v73 = v129;
  if (*(v129 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom) == 1)
  {
    *(v129 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__showCustom) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v121 - 2) = v73;
    *(&v121 - 8) = 1;
    v130 = v73;
    sub_1CAC8A004();
    sub_1CAD4C414();
  }

  return result;
}

uint64_t sub_1CAC852FC()
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v1 = v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 20));
  if (v2 >= 4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CAC853A0(unsigned __int8 a1)
{
  v2 = v1;
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAD4C354();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CAD4C404();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CAD4C374();
  v45 = *(v13 - 8);
  v46 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  if (a1 > 1u)
  {
    v40 = v8;
    v41 = v7;
    v42 = v5;
    if (a1 == 2)
    {
      v50 = v2;
      sub_1CAC8A004();
      sub_1CAD4C424();

      v50 = v2;
      v39 = v4;
      swift_getKeyPath();
      sub_1CAD4C444();

      v19 = v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
      swift_beginAccess();
      v20 = type metadata accessor for EventRecurrenceRuleModelObject(0);
      *(v19 + v20[5]) = 2;
      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C434();

      swift_getKeyPath();
      v49 = v2;
      sub_1CAD4C424();

      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C444();

      *(v19 + v20[12]) = 0;

      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C434();

      v21 = v39;
      swift_getKeyPath();
      v49 = v2;
      sub_1CAD4C424();

      if (!*(v19 + v20[13]) || (swift_getKeyPath(), v49 = v2, sub_1CAD4C424(), result = , !*(v19 + v20[9])))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE0);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_1CAD58380;
        v24 = [objc_opt_self() currentCalendar];
        sub_1CAD4C294();

        (*(v43 + 16))(v12, v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone, v44);
        sub_1CAD4C344();
        v26 = v40;
        v25 = v41;
        v27 = v47;
        (*(v40 + 104))(v47, *MEMORY[0x1E6969A48], v41);
        v28 = v48;
        sub_1CAD4C0E4();
        v29 = sub_1CAD4C364();
        (*(v42 + 8))(v28, v21);
        (*(v26 + 8))(v27, v25);
        (*(v45 + 8))(v15, v46);
        *(v23 + 32) = v29;
        return sub_1CAC885A0(v23);
      }
    }

    else
    {
      v50 = v2;
      sub_1CAC8A004();
      sub_1CAD4C424();

      v50 = v2;
      swift_getKeyPath();
      sub_1CAD4C444();

      v30 = v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
      swift_beginAccess();
      v31 = type metadata accessor for EventRecurrenceRuleModelObject(0);
      *(v30 + v31[5]) = 3;
      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C434();

      if (*(v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_prohibitsYearlyRecurrenceInterval) == 1)
      {
        swift_getKeyPath();
        v49 = v2;
        sub_1CAD4C424();

        v49 = v2;
        swift_getKeyPath();
        sub_1CAD4C444();

        *(v30 + v31[6]) = 1;
        v49 = v2;
        swift_getKeyPath();
        sub_1CAD4C434();
      }

      swift_getKeyPath();
      v49 = v2;
      sub_1CAD4C424();

      if (!*(v30 + v31[13]) || (swift_getKeyPath(), v49 = v2, sub_1CAD4C424(), result = , !*(v30 + v31[12])))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1CAD58380;
        v33 = [objc_opt_self() currentCalendar];
        sub_1CAD4C294();

        (*(v43 + 16))(v12, v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone, v44);
        sub_1CAD4C344();
        v35 = v40;
        v34 = v41;
        v36 = v47;
        (*(v40 + 104))(v47, *MEMORY[0x1E6969A78], v41);
        v37 = v48;
        sub_1CAD4C0E4();
        v38 = sub_1CAD4C364();
        (*(v42 + 8))(v37, v4);
        (*(v35 + 8))(v36, v34);
        (*(v45 + 8))(v15, v46);
        *(v32 + 32) = v38;
        return sub_1CAC89758(v32);
      }
    }
  }

  else
  {
    v50 = v2;
    sub_1CAC8A004();
    sub_1CAD4C424();

    v50 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    v16 = v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
    swift_beginAccess();
    v17 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    if (a1)
    {
      *(v16 + v17[5]) = 1;
      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C434();

      swift_getKeyPath();
      v49 = v2;
      sub_1CAD4C424();

      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C444();

      v18 = v17[13];
    }

    else
    {
      *(v16 + v17[5]) = 0;
      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C434();

      swift_getKeyPath();
      v49 = v2;
      sub_1CAD4C424();

      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C444();

      *(v16 + v17[13]) = 0;

      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C434();

      swift_getKeyPath();
      v49 = v2;
      sub_1CAD4C424();

      v49 = v2;
      swift_getKeyPath();
      sub_1CAD4C444();

      v18 = v17[8];
    }

    *(v16 + v18) = 0;

    v49 = v2;
    swift_getKeyPath();
    sub_1CAD4C434();

    swift_getKeyPath();
    v49 = v2;
    sub_1CAD4C424();

    v49 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    *(v16 + v17[12]) = 0;

    v49 = v2;
    swift_getKeyPath();
    sub_1CAD4C434();
  }

  return result;
}

uint64_t sub_1CAC85FD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1CAB23A9C(v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v3, &qword_1EC463168);
  MEMORY[0x1CCAA6D30](v1);
  sub_1CAB21B68(v3, &qword_1EC463168);
  return sub_1CAC8B498(v6);
}

uint64_t sub_1CAC860F0@<X0>(char a1@<W0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v49 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  if (!a1)
  {
    v26 = sub_1CAC82B70(v50);
    v28 = v27;
    v29 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    if ((*(*(v29 - 8) + 48))(v28, 1, v29))
    {
      result = (v26)(v50, 0);
      v25 = 1;
      goto LABEL_17;
    }

    sub_1CAB21B68(v28, &unk_1EC463290);
    v37 = type metadata accessor for EventRecurrenceEndModelObject(0);
    (*(*(v37 - 8) + 56))(v28, 1, 1, v37);
    result = (v26)(v50, 0);
LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  if (a1 != 1)
  {
    v30 = sub_1CAC82B70(v50);
    v32 = v31;
    v33 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    v48 = *(*(v33 - 8) + 48);
    if (v48(v32, 1, v33))
    {
      result = (v30)(v50, 0);
      v25 = 1;
      goto LABEL_17;
    }

    v46 = v32;
    v47 = v30;
    sub_1CAB23A9C(a2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v7, &qword_1EC463168);
    MEMORY[0x1CCAA6D30](v5);
    sub_1CAB21B68(v7, &qword_1EC463168);
    v38 = 1;
    if (v48(v10, 1, v33))
    {
      v39 = v46;
      v40 = v47;
    }

    else
    {
      v41 = type metadata accessor for EventRecurrenceEndModelObject(0);
      v38 = 1;
      v42 = (*(*(v41 - 8) + 48))(v10, 1, v41);
      v39 = v46;
      v40 = v47;
      if (!v42)
      {
        v38 = *&v10[*(v41 + 20)];
      }
    }

    sub_1CAB21B68(v10, &qword_1EC463170);
    v43 = sub_1CAD4C0F4();
    v44 = *(*(v43 - 8) + 56);
    v44(v17, 1, 1, v43);
    sub_1CAB21B68(v17, &unk_1EC465A70);
    v44(v17, 1, 1, v43);
    v45 = type metadata accessor for EventRecurrenceEndModelObject(0);
    *&v17[*(v45 + 20)] = v38;
    (*(*(v45 - 8) + 56))(v17, 0, 1, v45);
    sub_1CABC6AC8(v17, v39, &unk_1EC463290);
    result = (v40)(v50, 0);
    goto LABEL_16;
  }

  v20 = sub_1CAC82B70(v50);
  v22 = v21;
  v23 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    sub_1CAC83164(v13);
    v34 = sub_1CAD4C0F4();
    v35 = *(*(v34 - 8) + 56);
    v35(v13, 0, 1, v34);
    v35(v19, 1, 1, v34);
    sub_1CABC6AC8(v13, v19, &unk_1EC465A70);
    v36 = type metadata accessor for EventRecurrenceEndModelObject(0);
    *&v19[*(v36 + 20)] = 0;
    (*(*(v36 - 8) + 56))(v19, 0, 1, v36);
    sub_1CABC6AC8(v19, v22, &unk_1EC463290);
    result = (v20)(v50, 0);
    goto LABEL_16;
  }

  result = (v20)(v50, 0);
  v25 = 1;
LABEL_17:
  *v49 = v25;
  return result;
}

uint64_t sub_1CAC86764()
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v1 = v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  return *(v1 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 24));
}

uint64_t sub_1CAC86800(uint64_t a1)
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  v3 = v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  *(v3 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 24)) = a1;
  swift_getKeyPath();
  sub_1CAD4C434();
}

BOOL sub_1CAC86910(uint64_t a1)
{
  v30 = sub_1CAD4C354();
  v2 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1CAD4C404();
  v5 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1CAD4C374();
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  v25 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_startDate;
  v26 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone;
  v11 = (a1 + 32);
  v24 = (v5 + 16);
  v23 = (v2 + 104);
  v22 = (v2 + 8);
  v21 = *MEMORY[0x1E6969AB0];
  v20 = (v7 + 8);
  v12 = v10 + 1;
  do
  {
    v13 = --v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = [objc_opt_self() currentCalendar];
    sub_1CAD4C294();

    (*v24)(v28, v31 + v26, v29);
    sub_1CAD4C344();
    v15 = v30;
    (*v23)(v4, v21, v30);
    v16 = sub_1CAD4C364();
    (*v22)(v4, v15);
    (*v20)(v9, v27);
    v18 = v11[3];
    v17 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v18);
    v11 += 5;
  }

  while ((*(v17 + 8))(v18, v17) != v16);
  return v13;
}

uint64_t sub_1CAC86C48(uint64_t a1)
{
  v3 = sub_1CAD4C354();
  v37 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = sub_1CAD4C404();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CAD4C374();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v35 = a1;
  v36 = v15;
  v18 = [objc_opt_self() currentCalendar];
  sub_1CAD4C294();

  (*(v10 + 16))(v12, v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone, v9);
  sub_1CAD4C344();
  v19 = v37;
  v20 = *(v37 + 104);
  v20(v8, *MEMORY[0x1E6969A48], v3);
  v20(v6, *MEMORY[0x1E6969A78], v3);
  v21 = sub_1CAD4C2E4();
  v23 = v22;
  v25 = v24;
  v26 = *(v19 + 8);
  v26(v6, v3);
  v26(v8, v3);
  (*(v14 + 8))(v17, v36);
  if (v25)
  {
    return 0;
  }

  v27 = *(v35 + 16);
  if (!v27)
  {
    return 0;
  }

  v28 = (v35 + 32);
  while (1)
  {
    v30 = *v28++;
    v29 = v30;
    if (v30 >= v21 && v29 < v23)
    {
      break;
    }

    if (v29 < 0 && v29 >= v21 && v29 < v23)
    {
      break;
    }

    if (!--v27)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1CAC86F84(uint64_t a1)
{
  v3 = sub_1CAD4C354();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CAD4C404();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CAD4C374();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v25 = v13;
  v16 = [objc_opt_self() currentCalendar];
  v24 = a1;
  v17 = v16;
  sub_1CAD4C294();

  (*(v8 + 16))(v10, v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone, v7);
  sub_1CAD4C344();
  (*(v4 + 104))(v6, *MEMORY[0x1E6969A78], v3);
  v18 = sub_1CAD4C364();
  (*(v4 + 8))(v6, v3);
  (*(v12 + 8))(v15, v25);
  v19 = *(v24 + 16);
  v20 = (v24 + 32);
  do
  {
    v21 = v19-- != 0;
    result = v21;
    if (!v21)
    {
      break;
    }

    v23 = *v20++;
  }

  while (v23 != v18);
  return result;
}

uint64_t sub_1CAC8723C()
{
  v1 = v0;
  v2 = sub_1CAD4C354();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v58 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1CAD4C404();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CAD4C374();
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463168);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC463170);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - v12;
  v14 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v15 = *(v14 - 1);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v1;
  sub_1CAB23A9C(v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, v10, &qword_1EC463168);
  MEMORY[0x1CCAA6D30](v8);
  sub_1CAB21B68(v10, &qword_1EC463168);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1CAB21B68(v13, &qword_1EC463170);
    return 0;
  }

  sub_1CAC8BA38(v13, v17, type metadata accessor for EventRecurrenceRuleModelObject);
  v19 = *&v17[v14[12]];
  v20 = *&v17[v14[8]];
  if (v20)
  {
    v21 = *(v20 + 16);
    v22 = v14[6];
    if (v19)
    {
LABEL_5:
      v23 = *(v19 + 16);
      goto LABEL_8;
    }
  }

  else
  {
    v21 = 0;
    v22 = v14[6];
    if (v19)
    {
      goto LABEL_5;
    }
  }

  v23 = 0;
LABEL_8:
  v24 = *&v17[v22];
  v25 = *&v17[v14[5]];
  if (v25 <= 1)
  {
    if (v25)
    {
      if (v25 == 1 && (v24 - 1) <= 1 && !v23)
      {
        v26 = *&v17[v14[13]];
        if (!v26 || !*(v26 + 16))
        {
          if (!v21 || v21 == 1 && (!v20 ? (v27 = 0) : (v27 = sub_1CACC3424(v20)), v50 = sub_1CAC86910(v27), , v50))
          {
            sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
            if (v24 == 1)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }

      goto LABEL_75;
    }

    if (v24 == 1 && !v21 && !v23)
    {
      v33 = *&v17[v14[9]];
      if (v33)
      {
        v34 = *(v33 + 16);
        sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
        if (v34)
        {
          return 6;
        }

        else
        {
          return 1;
        }
      }

      else
      {
        sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
        return 1;
      }
    }

LABEL_75:
    sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
    return 6;
  }

  if (v25 != 2)
  {
    if (v25 != 3 || v24 != 1 || v21 || v23 && (v23 != 1 || (sub_1CAC86F84(*&v17[v14[12]]) & 1) == 0))
    {
      goto LABEL_75;
    }

    v28 = *&v17[v14[10]];
    if (v28)
    {
      if (*(v28 + 16))
      {
        goto LABEL_75;
      }
    }

    v29 = *&v17[v14[13]];
    if (v29)
    {
      if (*(v29 + 16))
      {
        goto LABEL_75;
      }
    }

    v30 = *&v17[v14[11]];
    if (v30)
    {
      if (*(v30 + 16))
      {
        goto LABEL_75;
      }
    }

    v31 = *&v17[v14[9]];
    if (v31)
    {
      v32 = *(v31 + 16);
      if (v32 == 1)
      {
        v51 = sub_1CAC86C48(v31);
        sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
        if ((v51 & 1) == 0)
        {
          return 6;
        }

        return 5;
      }

      if (v32)
      {
        goto LABEL_75;
      }
    }

    sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
    return 5;
  }

  if (v24 != 1 || v21 || v23)
  {
    goto LABEL_75;
  }

  v35 = *&v17[v14[9]];
  if (v35)
  {
    v36 = *(v35 + 16);
  }

  else
  {
    v36 = 0;
  }

  v37 = v61;
  v38 = sub_1CAC86C48(v35);
  v39 = v38 & (v36 == 1);
  v40 = *&v17[v14[13]];
  if (!v40 || !*(v40 + 16))
  {
    if (!v36)
    {
      v39 = 1;
    }

    if ((v39 & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_62;
  }

  v41 = *(v40 + 32);
  if (v41 != -1)
  {
    if (v41)
    {
      goto LABEL_75;
    }

    v42 = !(v38 & (v36 == 1));
    if (!v36)
    {
      v42 = 0;
    }

    if (v42)
    {
      goto LABEL_75;
    }

LABEL_62:
    v43 = [objc_opt_self() currentCalendar];
    v44 = v54;
    sub_1CAD4C294();

    (*(v53 + 16))(v5, v37 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone, v55);
    sub_1CAD4C344();
    v46 = v58;
    v45 = v59;
    v47 = v60;
    (*(v59 + 104))(v58, *MEMORY[0x1E6969A48], v60);
    v48 = sub_1CAD4C364();
    (*(v45 + 8))(v46, v47);
    (*(v56 + 8))(v44, v57);
    if (v48 < 29)
    {
      sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
    }

    else
    {
      sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
      if (v48 <= 0x1F)
      {
        return 6;
      }
    }

    return 4;
  }

  v49 = v38;
  sub_1CABA6514(v17, type metadata accessor for EventRecurrenceRuleModelObject);
  if (v49)
  {
    return 4;
  }

  else
  {
    return 6;
  }
}

void *sub_1CAC879EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FF8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CAD5B6B0;
  v2 = (v1 + 16);
  *(v1 + 32) = xmmword_1CAD58380;
  *(v1 + 48) = xmmword_1CAD63270;
  *(v1 + 64) = xmmword_1CAD63280;
  *(v1 + 80) = 7;
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v3 = v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v4 = (v3 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 28));
  if ((v4[1] & 1) == 0)
  {
    v6 = *v4;
    v7 = 7;
    while (1)
    {
      v8 = *(v1 + 32);
      if (v6 == v8)
      {
        break;
      }

      result = memmove((v1 + 32), (v1 + 40), 8 * (v7 - 1));
      *v2 = v7 - 1;
      v9 = *(v1 + 24);
      if (v7 > v9 >> 1)
      {
        result = sub_1CAD34C30((v9 > 1), v7, 1, v1);
        v1 = result;
      }

      *(v1 + 16) = v7;
      v2 = (v1 + 16);
      *(v1 + 8 * (v7 - 1) + 32) = v8;
      v7 = *(v1 + 16);
      if (!v7)
      {
        __break(1u);
        return result;
      }
    }
  }

  return v1;
}

uint64_t sub_1CAC87B70()
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v1 = v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 32));
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v10 = MEMORY[0x1E69E7CC0];

    sub_1CACB9EDC(0, v3, 0);
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v2 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1CACB9EDC((v8 > 1), v5 + 1, 1);
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v7;
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1CAC87CCC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1CACB9EFC(0, v2, 0);
    v4 = a1;
    v5 = v15;
    v6 = *(v15 + 16);
    v7 = 16 * v6;
    v8 = 32;
    do
    {
      v9 = *(v4 + v8);
      v10 = *(v15 + 24);
      v11 = v6 + 1;
      if (v6 >= v10 >> 1)
      {
        sub_1CACB9EFC((v10 > 1), v6 + 1, 1);
        v4 = a1;
      }

      *(v15 + 16) = v11;
      v12 = v15 + v7;
      *(v12 + 32) = v9;
      *(v12 + 40) = 0;
      v7 += 16;
      v8 += 8;
      v6 = v11;
      --v2;
    }

    while (v2);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  v13 = v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  *(v13 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 32)) = v5;

  swift_getKeyPath();
  sub_1CAD4C434();
}

BOOL sub_1CAC87E9C()
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v1 = v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v2 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  result = 0;
  if (*(v1 + *(v2 + 20)) == 2)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_1CAD4C424();

    if (*(v1 + *(v3 + 52)))
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      if (*(v1 + *(v3 + 32)))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1CAC87FDC(char a1)
{
  v2 = v1;
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAD4C354();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CAD4C404();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CAD4C374();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  if (a1)
  {
    v40 = v2;
    sub_1CAC8A004();
    sub_1CAD4C424();

    v16 = v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
    swift_beginAccess();
    v17 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    if (!*(v16 + *(v17 + 52)) || (v18 = v17, swift_getKeyPath(), v39 = v2, sub_1CAD4C424(), result = , !*(v16 + *(v18 + 32))))
    {
      sub_1CAC88E60(0);
      return sub_1CAC889C4(7u);
    }
  }

  else
  {
    v29 = v7;
    v30 = v8;
    v31 = v5;
    v32 = v4;
    v40 = v2;
    sub_1CAC8A004();
    sub_1CAD4C424();

    v40 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    v20 = v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
    swift_beginAccess();
    v21 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    *(v20 + v21[13]) = 0;

    v39 = v2;
    swift_getKeyPath();
    sub_1CAD4C434();

    swift_getKeyPath();
    v39 = v2;
    sub_1CAD4C424();

    v39 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    *(v20 + v21[8]) = 0;

    v39 = v2;
    swift_getKeyPath();
    sub_1CAD4C434();

    swift_getKeyPath();
    v39 = v2;
    sub_1CAD4C424();

    if (!*(v20 + v21[9]))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1CAD58380;
      v23 = [objc_opt_self() currentCalendar];
      sub_1CAD4C294();

      (*(v33 + 16))(v12, v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone, v34);
      sub_1CAD4C344();
      v25 = v37;
      v24 = v38;
      v26 = v30;
      (*(v38 + 104))(v37, *MEMORY[0x1E6969A48], v30);
      v27 = v29;
      sub_1CAD4C0E4();
      v28 = sub_1CAD4C364();
      (*(v31 + 8))(v27, v32);
      (*(v24 + 8))(v25, v26);
      (*(v35 + 8))(v15, v36);
      *(v22 + 32) = v28;
      return sub_1CAC885A0(v22);
    }
  }

  return result;
}

uint64_t sub_1CAC885A0(uint64_t a1)
{
  if (v1[OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_prohibitsMultipleDaysInMonthlyRecurrence] == 1 && *(a1 + 16) > 1uLL)
  {
  }

  else
  {
    v6 = a1;

    sub_1CAC89ED0(&v6);

    v3 = v6;
    swift_getKeyPath();
    v6 = v1;
    sub_1CAC8A004();
    sub_1CAD4C424();

    v6 = v1;
    swift_getKeyPath();
    sub_1CAD4C444();

    v4 = &v1[OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule];
    swift_beginAccess();
    v5 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    *&v4[v5[9]] = v3;

    swift_getKeyPath();
    sub_1CAD4C434();

    swift_getKeyPath();
    sub_1CAD4C424();

    swift_getKeyPath();
    sub_1CAD4C444();

    *&v4[v5[13]] = 0;

    swift_getKeyPath();
    sub_1CAD4C434();

    swift_getKeyPath();
    sub_1CAD4C424();

    swift_getKeyPath();
    sub_1CAD4C444();

    *&v4[v5[8]] = 0;

    swift_getKeyPath();
    sub_1CAD4C434();
  }
}

uint64_t sub_1CAC88868()
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v1 = v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 32));
  if (!v2)
  {
    return 7;
  }

  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v10 = MEMORY[0x1E69E7CC0];

    sub_1CACB9EDC(0, v3, 0);
    v4 = v10;
    v5 = *(v10 + 16);
    v6 = 32;
    do
    {
      v7 = *(v2 + v6);
      v8 = *(v10 + 24);
      if (v5 >= v8 >> 1)
      {
        sub_1CACB9EDC((v8 > 1), v5 + 1, 1);
      }

      *(v10 + 16) = v5 + 1;
      *(v10 + 8 * v5 + 32) = v7;
      v6 += 16;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return sub_1CAC8B9C0(v4);
}

uint64_t sub_1CAC889C4(unsigned __int8 a1)
{
  v2 = sub_1CAC88B78(a1);
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  v3 = v1 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v4 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  *(v3 + *(v4 + 32)) = v2;

  swift_getKeyPath();
  sub_1CAD4C434();

  swift_getKeyPath();
  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  *(v3 + *(v4 + 36)) = 0;

  swift_getKeyPath();
  sub_1CAD4C434();
}

uint64_t sub_1CAC88B78(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE8);
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      result = swift_allocObject();
      *(result + 16) = xmmword_1CAD58380;
      if (a1)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else if (a1 == 2)
    {
      result = swift_allocObject();
      *(result + 16) = xmmword_1CAD58380;
      v3 = 3;
    }

    else
    {
      result = swift_allocObject();
      *(result + 16) = xmmword_1CAD58380;
      if (a1 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }
    }

    goto LABEL_19;
  }

  if (a1 <= 6u)
  {
    if (a1 != 5)
    {
      result = swift_allocObject();
      *(result + 16) = xmmword_1CAD58380;
      *(result + 32) = 7;
      goto LABEL_20;
    }

    result = swift_allocObject();
    *(result + 16) = xmmword_1CAD58380;
    v3 = 6;
LABEL_19:
    *(result + 32) = v3;
LABEL_20:
    v4 = (result + 40);
    goto LABEL_21;
  }

  if (a1 == 7)
  {
    result = swift_allocObject();
    *(result + 16) = xmmword_1CAD5B6B0;
    *(result + 32) = xmmword_1CAD61A90;
    *(result + 48) = xmmword_1CAD632A0;
    *(result + 64) = xmmword_1CAD632B0;
    *(result + 80) = xmmword_1CAD632C0;
    *(result + 96) = xmmword_1CAD632D0;
    *(result + 112) = xmmword_1CAD632E0;
    v4 = (result + 136);
    *(result + 128) = 7;
  }

  else
  {
    result = swift_allocObject();
    if (a1 == 8)
    {
      *(result + 16) = xmmword_1CAD63290;
      *(result + 32) = xmmword_1CAD632A0;
      *(result + 48) = xmmword_1CAD632B0;
      *(result + 64) = xmmword_1CAD632C0;
      *(result + 80) = xmmword_1CAD632D0;
      *(result + 96) = 6;
      v4 = (result + 104);
    }

    else
    {
      *(result + 16) = xmmword_1CAD5A0D0;
      *(result + 32) = xmmword_1CAD61A90;
      *(result + 48) = 7;
      v4 = (result + 56);
    }
  }

LABEL_21:
  *v4 = 0;
  return result;
}

uint64_t sub_1CAC88DA4()
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v1 = v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v2 = *(v1 + *(type metadata accessor for EventRecurrenceRuleModelObject(0) + 52));
  if (v2 && *(v2 + 16) == 1)
  {
    return sub_1CAC8B7B4(*(v2 + 32));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CAC88E60(char a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CAD58380;
  *(v4 + 32) = qword_1CAD63958[a1];
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  v5 = v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v6 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  *(v5 + *(v6 + 52)) = v4;

  swift_getKeyPath();
  sub_1CAD4C434();

  swift_getKeyPath();
  sub_1CAD4C424();

  swift_getKeyPath();
  sub_1CAD4C444();

  *(v5 + *(v6 + 36)) = 0;

  swift_getKeyPath();
  sub_1CAD4C434();
}

BOOL sub_1CAC89054()
{
  swift_getKeyPath();
  sub_1CAC8A004();
  sub_1CAD4C424();

  v1 = v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
  swift_beginAccess();
  v2 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  result = 0;
  if (*(v1 + *(v2 + 20)) == 3)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_1CAD4C424();

    if (*(v1 + *(v3 + 52)))
    {
      swift_getKeyPath();
      sub_1CAD4C424();

      if (*(v1 + *(v3 + 32)))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1CAC89194(char a1)
{
  v2 = v1;
  v4 = sub_1CAD4C0F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CAD4C354();
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CAD4C404();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CAD4C374();
  v35 = *(v13 - 8);
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  if (a1)
  {
    v40 = v2;
    sub_1CAC8A004();
    sub_1CAD4C424();

    v16 = v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
    swift_beginAccess();
    v17 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    if (!*(v16 + *(v17 + 52)) || (v18 = v17, swift_getKeyPath(), v39 = v2, sub_1CAD4C424(), result = , !*(v16 + *(v18 + 32))))
    {
      sub_1CAC88E60(0);
      return sub_1CAC889C4(7u);
    }
  }

  else
  {
    v29 = v7;
    v30 = v8;
    v31 = v5;
    v32 = v4;
    v40 = v2;
    sub_1CAC8A004();
    sub_1CAD4C424();

    v40 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    v20 = v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule;
    swift_beginAccess();
    v21 = type metadata accessor for EventRecurrenceRuleModelObject(0);
    *(v20 + v21[13]) = 0;

    v39 = v2;
    swift_getKeyPath();
    sub_1CAD4C434();

    swift_getKeyPath();
    v39 = v2;
    sub_1CAD4C424();

    v39 = v2;
    swift_getKeyPath();
    sub_1CAD4C444();

    *(v20 + v21[8]) = 0;

    v39 = v2;
    swift_getKeyPath();
    sub_1CAD4C434();

    swift_getKeyPath();
    v39 = v2;
    sub_1CAD4C424();

    if (!*(v20 + v21[12]))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FE0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1CAD58380;
      v23 = [objc_opt_self() currentCalendar];
      sub_1CAD4C294();

      (*(v33 + 16))(v12, v2 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone, v34);
      sub_1CAD4C344();
      v25 = v37;
      v24 = v38;
      v26 = v30;
      (*(v38 + 104))(v37, *MEMORY[0x1E6969A78], v30);
      v27 = v29;
      sub_1CAD4C0E4();
      v28 = sub_1CAD4C364();
      (*(v31 + 8))(v27, v32);
      (*(v24 + 8))(v25, v26);
      (*(v35 + 8))(v15, v36);
      *(v22 + 32) = v28;
      return sub_1CAC89758(v22);
    }
  }

  return result;
}

uint64_t sub_1CAC89758(uint64_t a1)
{
  if (v1[OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_prohibitsMultipleMonthsInYearlyRecurrence] == 1 && *(a1 + 16) > 1uLL)
  {
  }

  else
  {
    v5 = a1;

    sub_1CAC89ED0(&v5);

    v3 = v5;
    swift_getKeyPath();
    v5 = v1;
    sub_1CAC8A004();
    sub_1CAD4C424();

    v5 = v1;
    swift_getKeyPath();
    sub_1CAD4C444();

    v4 = &v1[OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule];
    swift_beginAccess();
    *&v4[*(type metadata accessor for EventRecurrenceRuleModelObject(0) + 48)] = v3;

    swift_getKeyPath();
    sub_1CAD4C434();
  }
}

uint64_t sub_1CAC898F4()
{
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__recurrenceRule, &qword_1EC463168);
  sub_1CABA6514(v0 + OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel__editRecurrenceRule, type metadata accessor for EventRecurrenceRuleModelObject);
  v1 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_startDate;
  v2 = sub_1CAD4C0F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel_timeZone;
  v4 = sub_1CAD4C404();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13CalendarUIKit15RepeatViewModel___observationRegistrar;
  v6 = sub_1CAD4C464();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RepeatViewModel()
{
  result = qword_1EC465FC8;
  if (!qword_1EC465FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CAC89AA8()
{
  sub_1CAC89C34();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EventRecurrenceRuleModelObject(319);
    if (v1 <= 0x3F)
    {
      sub_1CAD4C0F4();
      if (v2 <= 0x3F)
      {
        sub_1CAD4C404();
        if (v3 <= 0x3F)
        {
          sub_1CAD4C464();
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1CAC89C34()
{
  if (!qword_1EC465FD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC463170);
    v0 = sub_1CAD4DB14();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC465FD8);
    }
  }
}

uint64_t sub_1CAC89C98(char a1)
{
  v1 = CUIKStringForRepeatType(qword_1CAD63990[a1]);
  v2 = sub_1CAD4DF94();

  return v2;
}

uint64_t sub_1CAC89D0C()
{
  v1 = CUIKStringForRepeatTypeDetail(*v0);
  v2 = sub_1CAD4DF94();

  return v2;
}

uint64_t sub_1CAC89D6C()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_1EC462D18 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC47DC68;
    }

    else
    {
      if (qword_1EC462D20 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC47DC78;
    }
  }

  else
  {
    if (qword_1EC462D10 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC47DC58;
  }

  v2 = *v1;

  return v2;
}

uint64_t sub_1CAC89E84()
{
  v1 = sub_1CAC8B7D8(*v0);

  return v1;
}

uint64_t sub_1CAC89ED0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CACED4D8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1CAD4E9A4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1CAD4E244();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1CAC8AD58(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1CAC8A004()
{
  result = qword_1EC463198;
  if (!qword_1EC463198)
  {
    type metadata accessor for RepeatViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC463198);
  }

  return result;
}

uint64_t sub_1CAC8A05C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC8A0C0(int a1, int a2)
{
  v3 = v2;
  v107 = a2;
  v111 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v106 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v105 = &v105 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v105 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v105 - v12;
  v14 = sub_1CAD4C0F4();
  v15 = *(v14 - 8);
  v113 = v14;
  v114 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v105 - v18;
  v20 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v105 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = 0;
  v120 = 0xE000000000000000;
  v24 = objc_opt_self();
  v115 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  v109 = *(v2 + *(v115 + 20));
  v110 = v24;
  v25 = [v24 iCalendarValueFromRecurrenceType_];
  if (v25)
  {
    v26 = v25;
    v27 = v3;
    v28 = sub_1CAD4DF94();
    v30 = v29;

    v117 = 0x3D51455246;
    v118 = 0xE500000000000000;
    v31 = v28;
    v3 = v27;
    MEMORY[0x1CCAA7330](v31, v30);

    MEMORY[0x1CCAA7330](v117, v118);
  }

  v117 = 0x41565245544E493BLL;
  v118 = 0xEA00000000003D4CLL;
  v108 = *(v3 + *(v115 + 24));
  v116 = v108;
  v32 = sub_1CAD4E9B4();
  MEMORY[0x1CCAA7330](v32);

  MEMORY[0x1CCAA7330](v117, v118);

  sub_1CAB23A9C(v3, v19, &unk_1EC463290);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    result = sub_1CAB21B68(v19, &unk_1EC463290);
    v34 = v115;
  }

  else
  {
    v35 = v11;
    sub_1CAC8BA38(v19, v23, type metadata accessor for EventRecurrenceEndModelObject);
    sub_1CAB23A9C(v23, v13, &unk_1EC465A70);
    v37 = v113;
    v36 = v114;
    v38 = *(v114 + 48);
    if (v38(v13, 1, v113) == 1)
    {
      sub_1CAB21B68(v13, &unk_1EC465A70);
      v117 = 0x3D544E554F433BLL;
      v118 = 0xE700000000000000;
      v116 = *&v23[*(v20 + 20)];
      v39 = sub_1CAD4E9B4();
      MEMORY[0x1CCAA7330](v39);

      MEMORY[0x1CCAA7330](v117, v118);

      result = sub_1CABA6514(v23, type metadata accessor for EventRecurrenceEndModelObject);
      v34 = v115;
    }

    else
    {
      (*(v36 + 32))(v112, v13, v37);
      v40 = sub_1CAD4C084();
      v41 = v107;
      v42 = [v110 adjustDateIntoUTC:v40 dateOnly:v111 & 1 floating:v107 & 1];

      if (v42)
      {
        v43 = v105;
        sub_1CAD4C0B4();

        v44 = v43;
        v45 = 0;
        v34 = v115;
      }

      else
      {
        v45 = 1;
        v34 = v115;
        v44 = v105;
      }

      v46 = v114;
      (*(v114 + 56))(v44, v45, 1, v37);
      sub_1CAC8BAA0(v44, v35);
      v47 = v106;
      sub_1CAB23A9C(v35, v106, &unk_1EC465A70);
      if (v38(v47, 1, v37) == 1)
      {
        v48 = 0;
      }

      else
      {
        v49 = v47;
        v48 = sub_1CAD4C084();
        (*(v46 + 8))(v49, v37);
      }

      v50 = [v110 iCalendarValueFromDate:v48 isDateOnly:v111 & 1 isFloating:v41 & 1];

      v51 = v35;
      if (v50)
      {
        v52 = sub_1CAD4DF94();
        v54 = v53;

        v117 = 0x3D4C49544E553BLL;
        v118 = 0xE700000000000000;
        MEMORY[0x1CCAA7330](v52, v54);

        MEMORY[0x1CCAA7330](v117, v118);
      }

      sub_1CAB21B68(v51, &unk_1EC465A70);
      (*(v114 + 8))(v112, v37);
      result = sub_1CABA6514(v23, type metadata accessor for EventRecurrenceEndModelObject);
    }
  }

  v55 = *(v3 + v34[12]);
  if (v55)
  {
    v56 = *(v55 + 16);
    if (v56)
    {
      MEMORY[0x1CCAA7330](0x48544E4F4D59423BLL, 0xE90000000000003DLL);
      v57 = (v55 + 32);
      do
      {
        v58 = *v57++;
        v116 = v58;
        v117 = sub_1CAD4E9B4();
        v118 = v59;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v117, v118);

        --v56;
      }

      while (v56);
      sub_1CAC8ACF0(v60);
    }
  }

  v61 = *(v3 + v34[9]);
  if (v61)
  {
    v62 = *(v61 + 16);
    if (v62)
    {
      MEMORY[0x1CCAA7330](0x48544E4F4D59423BLL, 0xEC0000003D594144);
      v63 = (v61 + 32);
      do
      {
        v64 = *v63++;
        v116 = v64;
        v117 = sub_1CAD4E9B4();
        v118 = v65;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v117, v118);

        --v62;
      }

      while (v62);
      sub_1CAC8ACF0(v66);
    }
  }

  v67 = *(v3 + v34[10]);
  if (v67)
  {
    v68 = *(v67 + 16);
    if (v68)
    {
      MEMORY[0x1CCAA7330](0x445241455959423BLL, 0xEB000000003D5941);
      v69 = (v67 + 32);
      do
      {
        v70 = *v69++;
        v116 = v70;
        v117 = sub_1CAD4E9B4();
        v118 = v71;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v117, v118);

        --v68;
      }

      while (v68);
      sub_1CAC8ACF0(v72);
    }
  }

  v73 = *(v3 + v34[11]);
  if (v73)
  {
    v74 = *(v73 + 16);
    if (v74)
    {
      MEMORY[0x1CCAA7330](0x4E4B45455759423BLL, 0xEA00000000003D4FLL);
      v75 = (v73 + 32);
      do
      {
        v76 = *v75++;
        v116 = v76;
        v117 = sub_1CAD4E9B4();
        v118 = v77;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v117, v118);

        --v74;
      }

      while (v74);
      sub_1CAC8ACF0(v78);
    }
  }

  v79 = *(v3 + v34[8]);
  if (v79)
  {
    v80 = *(v79 + 16);
    if (v80)
    {

      MEMORY[0x1CCAA7330](0x3D59414459423BLL, 0xE700000000000000);
      result = objc_opt_self();
      if (v80 <= *(v79 + 16))
      {
        v81 = result;
        v113 = v79;
        v114 = v3;
        v82 = (v79 + 40);
        while (1)
        {
          v83 = *v82;
          v84 = [v81 iCalendarValueFromDayOfTheWeek_];
          if (v84)
          {
            break;
          }

          v86 = 0;
          v88 = 0xE000000000000000;
          if (v83)
          {
            goto LABEL_45;
          }

LABEL_40:
          v82 += 2;
          v117 = v86;
          v118 = v88;
          MEMORY[0x1CCAA7330](44, 0xE100000000000000);
          MEMORY[0x1CCAA7330](v117, v118);

          if (!--v80)
          {
            v79 = v113;

            sub_1CAC8ACF0(v90);

            v3 = v114;
            v34 = v115;
            goto LABEL_47;
          }
        }

        v85 = v84;
        v86 = sub_1CAD4DF94();
        v88 = v87;

        if (!v83)
        {
          goto LABEL_40;
        }

LABEL_45:
        v116 = v83;
        v117 = sub_1CAD4E9B4();
        v118 = v89;
        MEMORY[0x1CCAA7330](v86, v88);

        v86 = v117;
        v88 = v118;
        goto LABEL_40;
      }

      __break(1u);
      goto LABEL_62;
    }
  }

LABEL_47:
  v91 = *(v3 + v34[13]);
  if (v91)
  {
    v92 = *(v91 + 16);
    if (v92)
    {
      v93 = v79;
      MEMORY[0x1CCAA7330](0x4F5054455359423BLL, 0xEA00000000003D53);
      v94 = (v91 + 32);
      do
      {
        v95 = *v94++;
        v116 = v95;
        v117 = sub_1CAD4E9B4();
        v118 = v96;
        MEMORY[0x1CCAA7330](44, 0xE100000000000000);
        MEMORY[0x1CCAA7330](v117, v118);

        --v92;
      }

      while (v92);
      sub_1CAC8ACF0(v97);

      v79 = v93;
    }
  }

  v98 = v3 + v34[7];
  if ((*(v98 + 8) & 1) != 0 || v109 != 1 || v108 < 2 || !v79 || !*(v79 + 16))
  {
    return v119;
  }

  v99 = *v98;
  v100 = __OFSUB__(v99, 1);
  v101 = v99 - 1;
  if (v100)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v101 <= 6)
  {
    v102 = (&unk_1F4A9FC28 + 16 * v101);
    v103 = *v102;
    v104 = v102[1];

    swift_arrayDestroy();
    v117 = 0x3D54534B573BLL;
    v118 = 0xE600000000000000;
    MEMORY[0x1CCAA7330](v103, v104);

    MEMORY[0x1CCAA7330](v117, v118);

    return v119;
  }

LABEL_63:
  __break(1u);
  return result;
}

uint64_t sub_1CAC8ACF0(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x1EEE68FA8](a1);
  }

LABEL_5:
  a1 = sub_1CAD4E084();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t sub_1CAC8AD58(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1CACED054(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1CAC8B2A4((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1CACED068(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1CACED068((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1CAC8B2A4((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1CAC8B2A4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1CAC8B498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC463290);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for EventRecurrenceEndModelObject(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    v16 = &qword_1EC463170;
    v17 = a1;
LABEL_5:
    sub_1CAB21B68(v17, v16);
    return 0;
  }

  sub_1CAC8BA38(a1, v14, type metadata accessor for EventRecurrenceRuleModelObject);
  sub_1CAB23A9C(v14, v7, &unk_1EC463290);
  sub_1CABA6514(v14, type metadata accessor for EventRecurrenceRuleModelObject);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    v16 = &unk_1EC463290;
    v17 = v7;
    goto LABEL_5;
  }

  sub_1CAC8BA38(v7, v11, type metadata accessor for EventRecurrenceEndModelObject);
  sub_1CAC8BAA0(v11, v4);
  v19 = sub_1CAD4C0F4();
  if ((*(*(v19 - 8) + 48))(v4, 1, v19) == 1)
  {
    v20 = 2;
  }

  else
  {
    v20 = 1;
  }

  sub_1CAB21B68(v4, &unk_1EC465A70);
  return v20;
}

uint64_t sub_1CAC8B7B4(uint64_t a1)
{
  if ((a1 + 2) >= 8)
  {
    return 0;
  }

  else
  {
    return (0x403020100000605uLL >> (8 * (a1 + 2)));
  }
}

uint64_t sub_1CAC8B7D8(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_1EC462D98 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EC47DD68;
      }

      else
      {
        if (qword_1EC462DA0 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EC47DD78;
      }
    }

    else
    {
      if (qword_1EC462D90 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC47DD58;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      if (qword_1EC462DB8 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC47DDA8;
    }

    else
    {
      if (qword_1EC462DC0 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EC47DDB8;
    }
  }

  else if (a1 == 3)
  {
    if (qword_1EC462DA8 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC47DD88;
  }

  else
  {
    if (qword_1EC462DB0 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EC47DD98;
  }

  return *v1;
}

uint64_t sub_1CAC8B9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    v1 = *(a1 + 32);

    result = v1 - 1;
    if ((v1 - 1) < 7)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC465FF0);
    sub_1CAD4E9D4();
    __break(1u);
  }

  if (v1 == 5)
  {
    v3 = 8;
  }

  else
  {
    v3 = 7;
  }

  if (v1 == 2)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CAC8BA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CAC8BAA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC465A70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC8BB44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CAC8BBA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventRecurrenceRuleModelObject(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1CAC8BC30()
{
  result = qword_1EC466000;
  if (!qword_1EC466000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466000);
  }

  return result;
}

unint64_t sub_1CAC8BCE0()
{
  result = qword_1EC466018;
  if (!qword_1EC466018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466018);
  }

  return result;
}

unint64_t sub_1CAC8BD38()
{
  result = qword_1EC466020;
  if (!qword_1EC466020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466020);
  }

  return result;
}

unint64_t sub_1CAC8BD90()
{
  result = qword_1EC466028;
  if (!qword_1EC466028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466028);
  }

  return result;
}

unint64_t sub_1CAC8BE40()
{
  result = qword_1EC466040;
  if (!qword_1EC466040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466040);
  }

  return result;
}

unint64_t sub_1CAC8BE98()
{
  result = qword_1EC466048;
  if (!qword_1EC466048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466048);
  }

  return result;
}

unint64_t sub_1CAC8BF20()
{
  result = qword_1EC466050;
  if (!qword_1EC466050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466050);
  }

  return result;
}

unint64_t sub_1CAC8BFD0()
{
  result = qword_1EC466068;
  if (!qword_1EC466068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466068);
  }

  return result;
}

unint64_t sub_1CAC8C028()
{
  result = qword_1EC466070;
  if (!qword_1EC466070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466070);
  }

  return result;
}

uint64_t sub_1CAC8C108(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CAC8C188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CAC8C1D0()
{
  result = qword_1EC466088;
  if (!qword_1EC466088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466088);
  }

  return result;
}

unint64_t sub_1CAC8C228()
{
  result = qword_1EC466090;
  if (!qword_1EC466090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC466090);
  }

  return result;
}

uint64_t sub_1CAC8C2A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_1CAC8C358(v2, v3);
  return sub_1CAC8C3BC(v5, v6);
}

uint64_t sub_1CAC8C310@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  return sub_1CAC8C358(v3, v4);
}

uint64_t sub_1CAC8C358(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1CAC8C36C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return sub_1CAC8C3BC(v4, v5);
}

uint64_t sub_1CAC8C3BC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1CAC8C420(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  sub_1CAC8C358(v2, v3);
  return sub_1CAC8C3BC(v5, v6);
}

uint64_t sub_1CAC8C490@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *a1 = v3;
  a1[1] = v4;
  return sub_1CAC8C358(v3, v4);
}

uint64_t sub_1CAC8C4D8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return sub_1CAC8C3BC(v4, v5);
}

uint64_t sub_1CAC8C578@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 48);
  return result;
}

uint64_t sub_1CAC8C5BC(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_1CAC8C6E4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v17 - v12;
  sub_1CAB23A9C(a1, &v17 - v12, a5);
  v14 = *a2;
  v15 = *a7;
  swift_beginAccess();
  sub_1CABC6AC8(v13, v14 + v15, a5);
  return swift_endAccess();
}

uint64_t sub_1CAC8C7D8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  return sub_1CAB23A9C(v3 + v6, a3, a2);
}

uint64_t sub_1CAC8C860(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  swift_beginAccess();
  sub_1CABC6AC8(a1, v3 + v6, a3);
  return swift_endAccess();
}

uint64_t sub_1CAC8CB98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1CAC8C358(v4, v5);
}

uint64_t sub_1CAC8CBF0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1CAC8C358(v2, v3);
  return sub_1CAC8C3BC(v5, v6);
}

uint64_t sub_1CAC8CC6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;
  return sub_1CAC8C358(v4, v5);
}

uint64_t sub_1CAC8CCC0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  return sub_1CAC8C3BC(v5, v6);
}

uint64_t sub_1CAC8CD7C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  sub_1CAC8CE3C(v2);
  return sub_1CAC8CEA4(v5);
}

uint64_t sub_1CAC8CDE4@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_1CAC8CE3C(v4);
}

uint64_t sub_1CAC8CE3C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1CAC8CE4C(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  return sub_1CAC8CEA4(v4);
}

uint64_t sub_1CAC8CEA4(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t UpdatedEventProperties.__allocating_init(title:location:allDay:startDate:startTime:endDate:endTime:startTimeZone:endTimeZone:recurrenceRule:participants:)(_OWORD *a1, __int128 *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v18 = swift_allocObject();
  v19 = *a3;
  v20 = a10[1];
  v25 = *a10;
  v21 = *a11;
  v22 = *a2;
  *(v18 + 16) = *a1;
  *(v18 + 32) = v22;
  *(v18 + 48) = v19;
  sub_1CABA62E4(a4, v18 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate, &qword_1EC466098);
  sub_1CABA62E4(a5, v18 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime, &qword_1EC466098);
  sub_1CABA62E4(a6, v18 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate, &qword_1EC466098);
  sub_1CABA62E4(a7, v18 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime, &qword_1EC466098);
  sub_1CABA62E4(a8, v18 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone, &qword_1EC4660A0);
  sub_1CABA62E4(a9, v18 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone, &qword_1EC4660A0);
  v23 = (v18 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  *v23 = v25;
  v23[1] = v20;
  *(v18 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants) = v21;
  return v18;
}

uint64_t UpdatedEventProperties.init(title:location:allDay:startDate:startTime:endDate:endTime:startTimeZone:endTimeZone:recurrenceRule:participants:)(_OWORD *a1, __int128 *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v16 = *a3;
  v18 = *a10;
  v17 = a10[1];
  v22 = *a11;
  v19 = *a2;
  *(v11 + 16) = *a1;
  *(v11 + 32) = v19;
  *(v11 + 48) = v16;
  sub_1CABA62E4(a4, v11 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate, &qword_1EC466098);
  sub_1CABA62E4(a5, v11 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime, &qword_1EC466098);
  sub_1CABA62E4(a6, v11 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate, &qword_1EC466098);
  sub_1CABA62E4(a7, v11 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime, &qword_1EC466098);
  sub_1CABA62E4(a8, v11 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone, &qword_1EC4660A0);
  sub_1CABA62E4(a9, v11 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone, &qword_1EC4660A0);
  v20 = (v11 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  *v20 = v18;
  v20[1] = v17;
  *(v11 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants) = v22;
  return v11;
}

uint64_t sub_1CAC8D214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (a2 != 1)
  {
    if (a4 == 1)
    {
      goto LABEL_5;
    }

    if (a2)
    {
      if (a4)
      {
        if (a1 == a3 && a2 == a4)
        {
          sub_1CAC8C358(a1, a2);
          sub_1CAC8C358(a1, a2);
          v13 = a1;
          v14 = a2;
          sub_1CAC8C3BC(a1, a2);
LABEL_19:
          sub_1CAC8C3BC(v13, v14);
          return 1;
        }

        v17 = sub_1CAD4E9E4();
        v13 = a1;
        v18 = a1;
        v14 = a2;
        sub_1CAC8C358(v18, a2);
        sub_1CAC8C358(a3, v4);
        sub_1CAC8C3BC(a3, v4);
        if (v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v13 = a1;
        v14 = a2;
        sub_1CAC8C358(a1, a2);
        sub_1CAC8C358(a3, 0);
      }
    }

    else
    {
      v14 = 0;
      v13 = a1;
      sub_1CAC8C358(a1, 0);
      if (!v4)
      {
        sub_1CAC8C358(a3, 0);
        goto LABEL_19;
      }

      sub_1CAC8C358(a3, v4);
      sub_1CAC8C3BC(a3, v4);
    }

    v9 = v13;
    v10 = v14;
    goto LABEL_16;
  }

  if (a4 != 1)
  {
LABEL_5:
    sub_1CAC8C358(a1, a2);
    sub_1CAC8C358(a3, v4);
    sub_1CAC8C3BC(a1, a2);
    v9 = a3;
    v10 = v4;
LABEL_16:
    sub_1CAC8C3BC(v9, v10);
    return 0;
  }

  sub_1CAC8C358(a1, 1);
  sub_1CAC8C358(a3, 1);
  sub_1CAC8C3BC(a1, 1);
  return v4;
}

uint64_t sub_1CAC8D3C8(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_1CAD4BDC4();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466180);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466098);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466188);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - v16;
  v18 = *(v15 + 56);
  sub_1CAB23A9C(a1, &v30 - v16, &qword_1EC466098);
  sub_1CAB23A9C(v35, &v17[v18], &qword_1EC466098);
  v19 = *(v6 + 48);
  if (v19(v17, 1, v5) == 1)
  {
    if (v19(&v17[v18], 1, v5) == 1)
    {
LABEL_3:
      sub_1CAB21B68(v17, &qword_1EC466098);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1CAB23A9C(v17, v13, &qword_1EC466098);
  if (v19(&v17[v18], 1, v5) != 1)
  {
    v22 = *(v8 + 48);
    sub_1CAB23A9C(v13, v10, &qword_1EC4660A8);
    sub_1CABA62E4(&v17[v18], &v10[v22], &qword_1EC4660A8);
    v24 = v33;
    v23 = v34;
    v25 = *(v33 + 48);
    if (v25(v10, 1, v34) == 1)
    {
      if (v25(&v10[v22], 1, v23) == 1)
      {
        sub_1CAB21B68(v10, &qword_1EC4660A8);
        sub_1CAB21B68(v13, &qword_1EC4660A8);
        goto LABEL_3;
      }
    }

    else
    {
      v26 = v32;
      sub_1CAB23A9C(v10, v32, &qword_1EC4660A8);
      if (v25(&v10[v22], 1, v23) != 1)
      {
        v27 = v31;
        (*(v24 + 32))(v31, &v10[v22], v23);
        sub_1CAC938C4(&qword_1EC465A40, MEMORY[0x1E6968278]);
        v28 = sub_1CAD4DED4();
        v29 = *(v24 + 8);
        v29(v27, v23);
        v29(v26, v23);
        sub_1CAB21B68(v10, &qword_1EC4660A8);
        sub_1CAB21B68(v13, &qword_1EC4660A8);
        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      (*(v24 + 8))(v26, v23);
    }

    sub_1CAB21B68(v10, &qword_1EC466180);
    sub_1CAB21B68(v13, &qword_1EC4660A8);
LABEL_13:
    v21 = &qword_1EC466098;
    goto LABEL_14;
  }

  sub_1CAB21B68(v13, &qword_1EC4660A8);
LABEL_6:
  v21 = &qword_1EC466188;
LABEL_14:
  sub_1CAB21B68(v17, v21);
  return 0;
}

uint64_t sub_1CAC8D934(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_1CAD4C404();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v30 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4679E0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466178);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v30 - v16;
  v18 = *(v15 + 56);
  sub_1CAB23A9C(a1, &v30 - v16, &qword_1EC4660A0);
  sub_1CAB23A9C(v35, &v17[v18], &qword_1EC4660A0);
  v19 = *(v6 + 48);
  if (v19(v17, 1, v5) == 1)
  {
    if (v19(&v17[v18], 1, v5) == 1)
    {
LABEL_3:
      sub_1CAB21B68(v17, &qword_1EC4660A0);
      return 1;
    }

    goto LABEL_6;
  }

  sub_1CAB23A9C(v17, v13, &qword_1EC4660A0);
  if (v19(&v17[v18], 1, v5) != 1)
  {
    v22 = *(v8 + 48);
    sub_1CAB23A9C(v13, v10, &qword_1EC4635D0);
    sub_1CABA62E4(&v17[v18], &v10[v22], &qword_1EC4635D0);
    v24 = v33;
    v23 = v34;
    v25 = *(v33 + 48);
    if (v25(v10, 1, v34) == 1)
    {
      if (v25(&v10[v22], 1, v23) == 1)
      {
        sub_1CAB21B68(v10, &qword_1EC4635D0);
        sub_1CAB21B68(v13, &qword_1EC4635D0);
        goto LABEL_3;
      }
    }

    else
    {
      v26 = v32;
      sub_1CAB23A9C(v10, v32, &qword_1EC4635D0);
      if (v25(&v10[v22], 1, v23) != 1)
      {
        v27 = v31;
        (*(v24 + 32))(v31, &v10[v22], v23);
        sub_1CAC938C4(&qword_1EC464E68, MEMORY[0x1E6969BC0]);
        v28 = sub_1CAD4DED4();
        v29 = *(v24 + 8);
        v29(v27, v23);
        v29(v26, v23);
        sub_1CAB21B68(v10, &qword_1EC4635D0);
        sub_1CAB21B68(v13, &qword_1EC4635D0);
        if (v28)
        {
          goto LABEL_3;
        }

        goto LABEL_13;
      }

      (*(v24 + 8))(v26, v23);
    }

    sub_1CAB21B68(v10, &unk_1EC4679E0);
    sub_1CAB21B68(v13, &qword_1EC4635D0);
LABEL_13:
    v21 = &qword_1EC4660A0;
    goto LABEL_14;
  }

  sub_1CAB21B68(v13, &qword_1EC4635D0);
LABEL_6:
  v21 = &qword_1EC466178;
LABEL_14:
  sub_1CAB21B68(v17, v21);
  return 0;
}

uint64_t sub_1CAC8DEA0(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
    if (a2 == 1)
    {
      goto LABEL_5;
    }

    if (a1)
    {
      if (a2)
      {
        v7 = sub_1CACA7BB4(a1, a2);
        v8 = a1;
        sub_1CAC8CE3C(a1);
        sub_1CAC8CE3C(a2);
        sub_1CAC8CEA4(a2);
        if (v7)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v8 = a1;
        sub_1CAC8CE3C(a1);
        sub_1CAC8CE3C(0);
      }
    }

    else
    {
      v8 = 0;
      sub_1CAC8CE3C(0);
      if (!a2)
      {
        sub_1CAC8CE3C(0);
LABEL_15:
        v4 = 1;
        goto LABEL_16;
      }

      sub_1CAC8CE3C(a2);
      sub_1CAC8CEA4(a2);
    }

    v4 = 0;
LABEL_16:
    v3 = v8;
    goto LABEL_17;
  }

  if (a2 != 1)
  {
LABEL_5:
    sub_1CAC8CE3C(a1);
    sub_1CAC8CE3C(a2);
    sub_1CAC8CEA4(a1);
    v4 = 0;
    v3 = a2;
    goto LABEL_17;
  }

  sub_1CAC8CE3C(1);
  sub_1CAC8CE3C(1);
  v3 = 1;
  v4 = 1;
LABEL_17:
  sub_1CAC8CEA4(v3);
  return v4;
}

uint64_t static UpdatedEventProperties.PropertyStatus.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v26 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v7;
  v8 = type metadata accessor for UpdatedEventProperties.PropertyStatus();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v30 = &v25 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v15 = &v25 - v14;
  v16 = *(v13 + 48);
  v28 = v9;
  v17 = *(v9 + 16);
  v17(&v25 - v14, v29, v8);
  v17(&v15[v16], a2, v8);
  v29 = v5;
  v18 = *(v5 + 48);
  if (v18(v15, 1, a3) == 1)
  {
    v19 = 1;
    if (v18(&v15[v16], 1, a3) == 1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v17(v30, v15, v8);
    if (v18(&v15[v16], 1, a3) != 1)
    {
      v20 = v29;
      v21 = v26;
      (*(v29 + 32))(v26, &v15[v16], a3);
      v22 = v30;
      v19 = sub_1CAD4DED4();
      v23 = *(v20 + 8);
      v23(v21, a3);
      v23(v22, a3);
LABEL_8:
      v12 = v28;
      goto LABEL_9;
    }

    (*(v29 + 8))(v30, a3);
  }

  v19 = 0;
  v8 = TupleTypeMetadata2;
LABEL_9:
  (*(v12 + 8))(v15, v8);
  return v19 & 1;
}

uint64_t sub_1CAC8E30C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466098);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v39 - v11;
  swift_beginAccess();
  v13 = *(v0 + 32);
  v14 = *(v0 + 40);
  sub_1CAC8C358(v13, v14);
  v15 = 1;
  v16 = sub_1CAC8D214(v13, v14, 0, 1);
  sub_1CAC8C3BC(v13, v14);
  if (v16)
  {
    swift_beginAccess();
    if (*(v0 + 48) == 2)
    {
      v17 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate;
      swift_beginAccess();
      sub_1CAB23A9C(v0 + v17, v12, &qword_1EC466098);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A8);
      v19 = *(v18 - 8);
      v15 = 1;
      v40 = *(v19 + 56);
      v39[1] = v19 + 56;
      v40(v10, 1, 1, v18);
      v20 = sub_1CAC8D3C8(v12, v10);
      sub_1CAB21B68(v10, &qword_1EC466098);
      sub_1CAB21B68(v12, &qword_1EC466098);
      if (v20)
      {
        v21 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime;
        swift_beginAccess();
        sub_1CAB23A9C(v0 + v21, v12, &qword_1EC466098);
        v15 = 1;
        v40(v10, 1, 1, v18);
        LOBYTE(v21) = sub_1CAC8D3C8(v12, v10);
        sub_1CAB21B68(v10, &qword_1EC466098);
        sub_1CAB21B68(v12, &qword_1EC466098);
        if (v21)
        {
          v22 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate;
          swift_beginAccess();
          sub_1CAB23A9C(v0 + v22, v12, &qword_1EC466098);
          v15 = 1;
          v40(v10, 1, 1, v18);
          LOBYTE(v22) = sub_1CAC8D3C8(v12, v10);
          sub_1CAB21B68(v10, &qword_1EC466098);
          sub_1CAB21B68(v12, &qword_1EC466098);
          if (v22)
          {
            v23 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime;
            swift_beginAccess();
            sub_1CAB23A9C(v0 + v23, v12, &qword_1EC466098);
            v15 = 1;
            v40(v10, 1, 1, v18);
            v24 = sub_1CAC8D3C8(v12, v10);
            sub_1CAB21B68(v10, &qword_1EC466098);
            sub_1CAB21B68(v12, &qword_1EC466098);
            if (v24)
            {
              v25 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone;
              swift_beginAccess();
              sub_1CAB23A9C(v0 + v25, v6, &qword_1EC4660A0);
              v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
              v27 = *(*(v26 - 8) + 56);
              v15 = 1;
              v27(v4, 1, 1, v26);
              v28 = sub_1CAC8D934(v6, v4);
              sub_1CAB21B68(v4, &qword_1EC4660A0);
              sub_1CAB21B68(v6, &qword_1EC4660A0);
              if (v28)
              {
                v29 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone;
                swift_beginAccess();
                sub_1CAB23A9C(v0 + v29, v6, &qword_1EC4660A0);
                v15 = 1;
                v27(v4, 1, 1, v26);
                v30 = sub_1CAC8D934(v6, v4);
                sub_1CAB21B68(v4, &qword_1EC4660A0);
                sub_1CAB21B68(v6, &qword_1EC4660A0);
                if (v30)
                {
                  v31 = (v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
                  swift_beginAccess();
                  v33 = *v31;
                  v32 = v31[1];
                  sub_1CAC8C358(v33, v32);
                  v15 = 1;
                  v34 = sub_1CAC8D214(v33, v32, 0, 1);
                  sub_1CAC8C3BC(v33, v32);
                  if (v34)
                  {
                    v35 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
                    swift_beginAccess();
                    v36 = *(v0 + v35);
                    sub_1CAC8CE3C(v36);
                    v37 = sub_1CAC8DEA0(v36, 1);
                    sub_1CAC8CEA4(v36);
                    v15 = v37 ^ 1;
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  return v15 & 1;
}

uint64_t sub_1CAC8E92C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v79 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466098);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v77 - v10;
  swift_beginAccess();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  sub_1CAC8C358(v12, v13);
  v14 = sub_1CAC8D214(v12, v13, 0, 1);
  sub_1CAC8C3BC(v12, v13);
  if ((v14 & 1) == 0)
  {
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v17 = v81;
    swift_beginAccess();
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    sub_1CAC8C358(v15, v16);
    sub_1CAC8C3BC(v19, v18);
  }

  swift_beginAccess();
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  sub_1CAC8C358(v20, v21);
  v22 = sub_1CAC8D214(v20, v21, 0, 1);
  sub_1CAC8C3BC(v20, v21);
  if ((v22 & 1) == 0)
  {
    v23 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = v81;
    swift_beginAccess();
    v26 = *(v25 + 32);
    v27 = *(v25 + 40);
    *(v25 + 32) = v23;
    *(v25 + 40) = v24;
    sub_1CAC8C358(v23, v24);
    sub_1CAC8C3BC(v26, v27);
  }

  swift_beginAccess();
  v28 = *(a1 + 48);
  if (v28 != 2)
  {
    v29 = v81;
    swift_beginAccess();
    *(v29 + 48) = v28;
  }

  v30 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v30, v11, &qword_1EC466098);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A8);
  v80 = *(*(v31 - 8) + 56);
  v80(v9, 1, 1, v31);
  v32 = sub_1CAC8D3C8(v11, v9);
  sub_1CAB21B68(v9, &qword_1EC466098);
  sub_1CAB21B68(v11, &qword_1EC466098);
  if ((v32 & 1) == 0)
  {
    sub_1CAB23A9C(a1 + v30, v11, &qword_1EC466098);
    v33 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate;
    v34 = v81;
    swift_beginAccess();
    sub_1CABC6AC8(v11, v34 + v33, &qword_1EC466098);
    swift_endAccess();
  }

  v35 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v35, v11, &qword_1EC466098);
  v80(v9, 1, 1, v31);
  v36 = sub_1CAC8D3C8(v11, v9);
  sub_1CAB21B68(v9, &qword_1EC466098);
  sub_1CAB21B68(v11, &qword_1EC466098);
  if ((v36 & 1) == 0)
  {
    sub_1CAB23A9C(a1 + v35, v11, &qword_1EC466098);
    v37 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime;
    v38 = v81;
    swift_beginAccess();
    sub_1CABC6AC8(v11, v38 + v37, &qword_1EC466098);
    swift_endAccess();
  }

  v39 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v39, v11, &qword_1EC466098);
  v80(v9, 1, 1, v31);
  v40 = sub_1CAC8D3C8(v11, v9);
  sub_1CAB21B68(v9, &qword_1EC466098);
  sub_1CAB21B68(v11, &qword_1EC466098);
  if ((v40 & 1) == 0)
  {
    sub_1CAB23A9C(a1 + v39, v11, &qword_1EC466098);
    v41 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate;
    v42 = v81;
    swift_beginAccess();
    sub_1CABC6AC8(v11, v42 + v41, &qword_1EC466098);
    swift_endAccess();
  }

  v43 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v43, v11, &qword_1EC466098);
  v80(v9, 1, 1, v31);
  v44 = sub_1CAC8D3C8(v11, v9);
  sub_1CAB21B68(v9, &qword_1EC466098);
  sub_1CAB21B68(v11, &qword_1EC466098);
  if ((v44 & 1) == 0)
  {
    sub_1CAB23A9C(a1 + v43, v11, &qword_1EC466098);
    v45 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime;
    v46 = v81;
    swift_beginAccess();
    sub_1CABC6AC8(v11, v46 + v45, &qword_1EC466098);
    swift_endAccess();
  }

  v47 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone;
  swift_beginAccess();
  v48 = v78;
  sub_1CAB23A9C(a1 + v47, v78, &qword_1EC4660A0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v50 = v79;
  v80 = *(*(v49 - 8) + 56);
  v80(v79, 1, 1, v49);
  v51 = sub_1CAC8D934(v48, v50);
  sub_1CAB21B68(v50, &qword_1EC4660A0);
  sub_1CAB21B68(v48, &qword_1EC4660A0);
  if ((v51 & 1) == 0)
  {
    sub_1CAB23A9C(a1 + v47, v48, &qword_1EC4660A0);
    v52 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone;
    v53 = v81;
    swift_beginAccess();
    sub_1CABC6AC8(v48, v53 + v52, &qword_1EC4660A0);
    swift_endAccess();
  }

  v54 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone;
  swift_beginAccess();
  sub_1CAB23A9C(a1 + v54, v48, &qword_1EC4660A0);
  v55 = v79;
  v80(v79, 1, 1, v49);
  v56 = sub_1CAC8D934(v48, v55);
  sub_1CAB21B68(v55, &qword_1EC4660A0);
  sub_1CAB21B68(v48, &qword_1EC4660A0);
  if ((v56 & 1) == 0)
  {
    v57 = v48;
    sub_1CAB23A9C(a1 + v54, v48, &qword_1EC4660A0);
    v58 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone;
    v59 = v81;
    swift_beginAccess();
    sub_1CABC6AC8(v57, v59 + v58, &qword_1EC4660A0);
    swift_endAccess();
  }

  v60 = (a1 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  sub_1CAC8C358(*v60, v62);
  v63 = sub_1CAC8D214(v61, v62, 0, 1);
  sub_1CAC8C3BC(v61, v62);
  if ((v63 & 1) == 0)
  {
    v65 = *v60;
    v64 = v60[1];
    v66 = (v81 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
    swift_beginAccess();
    v67 = *v66;
    v68 = v66[1];
    *v66 = v65;
    v66[1] = v64;
    sub_1CAC8C358(v65, v64);
    sub_1CAC8C3BC(v67, v68);
  }

  v69 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v70 = *(a1 + v69);
  sub_1CAC8CE3C(v70);
  v71 = sub_1CAC8DEA0(v70, 1);
  result = sub_1CAC8CEA4(v70);
  if ((v71 & 1) == 0)
  {
    v73 = *(a1 + v69);
    v74 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
    v75 = v81;
    swift_beginAccess();
    v76 = *(v75 + v74);
    *(v75 + v74) = v73;
    sub_1CAC8CE3C(v73);
    return sub_1CAC8CEA4(v76);
  }

  return result;
}

unint64_t sub_1CAC8F260()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v118 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v114 = &v107 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v116 = *(v6 - 8);
  v117 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v111 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v119 = &v107 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v110 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v107 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466098);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v113 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v112 = &v107 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v107 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v107 - v22;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A8);
  v24 = *(v121 - 8);
  v25 = MEMORY[0x1EEE9AC00](v121);
  v109 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v108 = &v107 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v107 = &v107 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v107 - v31;
  v142 = 0xD000000000000017;
  v143 = 0x80000001CAD766E0;
  v120 = 0x80000001CAD766E0;
  swift_beginAccess();
  v33 = *(v0 + 24);
  if (v33 != 1)
  {
    v34 = *(v0 + 16);
    v140 = 0x3D656C746974;
    v141 = 0xE600000000000000;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      sub_1CAC8C3BC(v34, 0);
      v35 = 0xE500000000000000;
      v34 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1CCAA7330](v34, v35);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v140, v141);
  }

  swift_beginAccess();
  v36 = *(v0 + 40);
  if (v36 != 1)
  {
    v37 = *(v0 + 32);
    v138 = 0x6E6F697461636F6CLL;
    v139 = 0xE90000000000003DLL;
    if (v36)
    {
      v38 = v36;
    }

    else
    {
      sub_1CAC8C3BC(v37, 0);
      v38 = 0xE500000000000000;
      v37 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1CCAA7330](v37, v38);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v138, v139);
  }

  swift_beginAccess();
  v39 = *(v0 + 48);
  if (v39 != 2)
  {
    v136 = 0x3D7961446C6C61;
    v137 = 0xE700000000000000;
    if (v39)
    {
      v40 = 1702195828;
    }

    else
    {
      v40 = 0x65736C6166;
    }

    if (v39)
    {
      v41 = 0xE400000000000000;
    }

    else
    {
      v41 = 0xE500000000000000;
    }

    MEMORY[0x1CCAA7330](v40, v41);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v136, v137);
  }

  v42 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v42, v23, &qword_1EC466098);
  v43 = *(v24 + 48);
  v44 = v121;
  if (v43(v23, 1, v121) == 1)
  {
    v45 = &qword_1EC466098;
    v46 = v23;
  }

  else
  {
    sub_1CABA62E4(v23, v32, &qword_1EC4660A8);
    v134 = 0x7461447472617473;
    v135 = 0xEA00000000003D65;
    v47 = sub_1CAC92B50(v32);
    MEMORY[0x1CCAA7330](v47);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v134, v135);

    v46 = v32;
    v45 = &qword_1EC4660A8;
    v44 = v121;
  }

  sub_1CAB21B68(v46, v45);
  v48 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime;
  swift_beginAccess();
  sub_1CAB23A9C(v1 + v48, v21, &qword_1EC466098);
  if (v43(v21, 1, v44) == 1)
  {
    v49 = &qword_1EC466098;
    v50 = v21;
  }

  else
  {
    v51 = v107;
    sub_1CABA62E4(v21, v107, &qword_1EC4660A8);
    v132 = 0x6D69547472617473;
    v133 = 0xEA00000000003D65;
    v52 = sub_1CAC92B50(v51);
    MEMORY[0x1CCAA7330](v52);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v132, v133);

    v50 = v51;
    v49 = &qword_1EC4660A8;
  }

  sub_1CAB21B68(v50, v49);
  v53 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate;
  swift_beginAccess();
  v54 = v1 + v53;
  v55 = v112;
  sub_1CAB23A9C(v54, v112, &qword_1EC466098);
  if (v43(v55, 1, v44) == 1)
  {
    v56 = &qword_1EC466098;
    v57 = v55;
  }

  else
  {
    v58 = v108;
    sub_1CABA62E4(v55, v108, &qword_1EC4660A8);
    v130 = 0x3D65746144646E65;
    v131 = 0xE800000000000000;
    v59 = sub_1CAC92B50(v58);
    MEMORY[0x1CCAA7330](v59);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v130, v131);
    v44 = v121;

    v57 = v58;
    v56 = &qword_1EC4660A8;
  }

  sub_1CAB21B68(v57, v56);
  v60 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime;
  swift_beginAccess();
  v61 = v1 + v60;
  v62 = v113;
  sub_1CAB23A9C(v61, v113, &qword_1EC466098);
  if (v43(v62, 1, v44) == 1)
  {
    v63 = &qword_1EC466098;
    v64 = v62;
  }

  else
  {
    v65 = v109;
    sub_1CABA62E4(v62, v109, &qword_1EC4660A8);
    v128 = 0x3D656D6954646E65;
    v129 = 0xE800000000000000;
    v66 = sub_1CAC92B50(v65);
    MEMORY[0x1CCAA7330](v66);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v128, v129);

    v64 = v65;
    v63 = &qword_1EC4660A8;
  }

  sub_1CAB21B68(v64, v63);
  v68 = v116;
  v67 = v117;
  v69 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone;
  swift_beginAccess();
  v70 = v1 + v69;
  v71 = v114;
  sub_1CAB23A9C(v70, v114, &qword_1EC4660A0);
  v72 = *(v68 + 48);
  if (v72(v71, 1, v67) == 1)
  {
    v73 = &qword_1EC4660A0;
    v74 = v71;
  }

  else
  {
    v75 = v115;
    sub_1CABA62E4(v71, v115, &qword_1EC4635D0);
    v127[0] = 0;
    v127[1] = 0xE000000000000000;
    sub_1CAD4E694();

    strcpy(v127, "startTimeZone=");
    HIBYTE(v127[1]) = -18;
    v76 = v110;
    sub_1CAB23A9C(v75, v110, &qword_1EC4635D0);
    v77 = sub_1CAD4C404();
    v78 = *(v77 - 8);
    if ((*(v78 + 48))(v76, 1, v77) == 1)
    {
      sub_1CAB21B68(v76, &qword_1EC4635D0);
      v79 = 0xE500000000000000;
      v80 = 0x3E6C696E3CLL;
    }

    else
    {
      v81 = sub_1CAD4C394();
      v79 = v82;
      (*(v78 + 8))(v76, v77);
      v80 = v81;
    }

    MEMORY[0x1CCAA7330](v80, v79);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v127[0], v127[1]);

    v73 = &qword_1EC4635D0;
    v74 = v115;
  }

  sub_1CAB21B68(v74, v73);
  v83 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone;
  swift_beginAccess();
  v84 = v1 + v83;
  v85 = v118;
  sub_1CAB23A9C(v84, v118, &qword_1EC4660A0);
  if (v72(v85, 1, v67) == 1)
  {
    v86 = &qword_1EC4660A0;
    v87 = v85;
  }

  else
  {
    v88 = v119;
    sub_1CABA62E4(v85, v119, &qword_1EC4635D0);
    v126[0] = 0;
    v126[1] = 0xE000000000000000;
    sub_1CAD4E694();

    strcpy(v126, "endTimeZone=");
    BYTE5(v126[1]) = 0;
    HIWORD(v126[1]) = -5120;
    v89 = v111;
    sub_1CAB23A9C(v88, v111, &qword_1EC4635D0);
    v90 = sub_1CAD4C404();
    v91 = *(v90 - 8);
    if ((*(v91 + 48))(v89, 1, v90) == 1)
    {
      sub_1CAB21B68(v89, &qword_1EC4635D0);
      v92 = 0xE500000000000000;
      v93 = 0x3E6C696E3CLL;
    }

    else
    {
      v94 = sub_1CAD4C394();
      v92 = v95;
      (*(v91 + 8))(v89, v90);
      v93 = v94;
    }

    MEMORY[0x1CCAA7330](v93, v92);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v126[0], v126[1]);

    v86 = &qword_1EC4635D0;
    v87 = v119;
  }

  sub_1CAB21B68(v87, v86);
  v96 = (v1 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule);
  swift_beginAccess();
  v97 = v96[1];
  if (v97 != 1)
  {
    v98 = *v96;
    v124 = 0;
    v125 = 0xE000000000000000;

    sub_1CAD4E694();

    v124 = 0x6E65727275636572;
    v125 = 0xEF3D656C75526563;
    v99 = v98;
    if (!v97)
    {
      sub_1CAC8C3BC(v98, 0);
      v97 = 0xE500000000000000;
      v99 = 0x3E6C696E3CLL;
    }

    MEMORY[0x1CCAA7330](v99, v97);

    MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
    MEMORY[0x1CCAA7330](v124, v125);
  }

  v100 = OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants;
  swift_beginAccess();
  v101 = *(v1 + v100);
  if (v101)
  {
    if (v101 != 1)
    {
      v123[0] = 0;
      v123[1] = 0xE000000000000000;

      sub_1CAD4E694();

      strcpy(v123, "participants=");
      HIWORD(v123[1]) = -4864;
      v122 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464730);
      sub_1CAC80AAC();
      v102 = sub_1CAD4DEC4();
      v104 = v103;
      sub_1CAC8CEA4(v101);
      MEMORY[0x1CCAA7330](v102, v104);

      MEMORY[0x1CCAA7330](8236, 0xE200000000000000);
      MEMORY[0x1CCAA7330](v123[0], v123[1]);
    }
  }

  else
  {
    MEMORY[0x1CCAA7330](0xD000000000000012, 0x80000001CAD76700);
  }

  v105 = sub_1CAD4E064();
  if (sub_1CAD4E064() < v105)
  {
    sub_1CAC9021C(2);
  }

  MEMORY[0x1CCAA7330](41, 0xE100000000000000);
  return v142;
}

uint64_t sub_1CAC9021C(uint64_t result)
{
  if (result)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v2 = v1[1];
      if ((v2 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v2) & 0xF;
      }

      else
      {
        v3 = *v1 & 0xFFFFFFFFFFFFLL;
      }

      v4 = sub_1CAD4E094();
      if (v5)
      {
        goto LABEL_14;
      }

      if (4 * v3 >= v4 >> 14)
      {

        return MEMORY[0x1EEE68E00]();
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return MEMORY[0x1EEE68E00]();
  }

  return result;
}

uint64_t *UpdatedEventProperties.deinit()
{
  sub_1CAC8C3BC(v0[2], v0[3]);
  sub_1CAC8C3BC(v0[4], v0[5]);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate, &qword_1EC466098);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime, &qword_1EC466098);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate, &qword_1EC466098);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime, &qword_1EC466098);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone, &qword_1EC4660A0);
  sub_1CAB21B68(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone, &qword_1EC4660A0);
  sub_1CAC8C3BC(*(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule), *(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule + 8));
  sub_1CAC8CEA4(*(v0 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants));
  return v0;
}

uint64_t UpdatedEventProperties.__deallocating_deinit()
{
  UpdatedEventProperties.deinit();

  return swift_deallocClassInstance();
}

void __swiftcall CUIKUpdatedEventProperties.init()(CUIKUpdatedEventProperties *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id CUIKUpdatedEventProperties.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466098);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v26 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A8);
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 1, 1, v18);
  v19(v15, 1, 1, v18);
  v19(v12, 1, 1, v18);
  v19(v9, 1, 1, v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4635D0);
  v21 = *(*(v20 - 8) + 56);
  v21(v5, 1, 1, v20);
  v21(v3, 1, 1, v20);
  type metadata accessor for UpdatedEventProperties();
  v22 = swift_allocObject();
  v25 = xmmword_1CAD5B720;
  *(v22 + 16) = xmmword_1CAD5B720;
  *(v22 + 32) = xmmword_1CAD5B720;
  *(v22 + 48) = 2;
  sub_1CABA62E4(v17, v22 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startDate, &qword_1EC466098);
  sub_1CABA62E4(v15, v22 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTime, &qword_1EC466098);
  sub_1CABA62E4(v12, v22 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endDate, &qword_1EC466098);
  sub_1CABA62E4(v9, v22 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTime, &qword_1EC466098);
  sub_1CABA62E4(v5, v22 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_startTimeZone, &qword_1EC4660A0);
  sub_1CABA62E4(v3, v22 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_endTimeZone, &qword_1EC4660A0);
  *(v22 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_recurrenceRule) = v25;
  *(v22 + OBJC_IVAR____TtC13CalendarUIKit22UpdatedEventProperties_participants) = 1;
  v23 = v27;
  *&v27[v26] = v22;
  v28.receiver = v23;
  v28.super_class = CUIKUpdatedEventProperties;
  return objc_msgSendSuper2(&v28, sel_init);
}

char *CUIKUpdatedEventProperties.init(updatedEventProperties:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  *&v2[v3] = a1;
  v4 = v2;

  return v4;
}

Swift::Void __swiftcall CUIKUpdatedEventProperties.setTitle(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v5 = *(v1 + v4);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v5 + 16) = countAndFlagsBits;
  *(v5 + 24) = object;

  sub_1CAC8C3BC(v6, v7);
}

Swift::Void __swiftcall CUIKUpdatedEventProperties.setLocation(_:)(Swift::String_optional a1)
{
  object = a1.value._object;
  countAndFlagsBits = a1.value._countAndFlagsBits;
  v4 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v5 = *(v1 + v4);
  swift_beginAccess();
  v6 = *(v5 + 32);
  v7 = *(v5 + 40);
  *(v5 + 32) = countAndFlagsBits;
  *(v5 + 40) = object;

  sub_1CAC8C3BC(v6, v7);
}

Swift::Void __swiftcall CUIKUpdatedEventProperties.setAllDay(_:)(Swift::Bool a1)
{
  v3 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  swift_beginAccess();
  v4 = *(v1 + v3);
  swift_beginAccess();
  *(v4 + 48) = a1;
}

uint64_t sub_1CAC90CF4(void (*a1)(char *, char *, uint64_t), int a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v43 = a5;
  v51 = a4;
  v52 = a2;
  v57 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC466098);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v43 - v7;
  v8 = sub_1CAD4C404();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CAD4C1E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CAD4C374();
  v48 = *(v16 - 8);
  v49 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1CAD4BDC4();
  v53 = *(v58 - 8);
  v19 = MEMORY[0x1EEE9AC00](v58);
  v56 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v43 - v21;
  (*(v13 + 104))(v15, *MEMORY[0x1E6969868], v12);
  sub_1CAD4C1F4();
  (*(v13 + 8))(v15, v12);
  (*(v9 + 16))(v11, a3, v8);
  sub_1CAD4C344();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC464230);
  v22 = sub_1CAD4C354();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v46 = 3 * v24;
  v44 = 2 * v24;
  v26 = swift_allocObject();
  v45 = xmmword_1CAD5A590;
  *(v26 + 16) = xmmword_1CAD5A590;
  v27 = *(v23 + 104);
  v27(v26 + v25, *MEMORY[0x1E6969A68], v22);
  v27(v26 + v25 + v24, *MEMORY[0x1E6969A78], v22);
  v27(v26 + v25 + 2 * v24, *MEMORY[0x1E6969A48], v22);
  sub_1CAC926C8(v26);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CAD4C244();

  v28 = swift_allocObject();
  *(v28 + 16) = v45;
  v27(v28 + v25, *MEMORY[0x1E6969A58], v22);
  v27(v28 + v25 + v24, *MEMORY[0x1E6969A88], v22);
  v27(v28 + v25 + v44, *MEMORY[0x1E6969A98], v22);
  sub_1CAC926C8(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1CAD4C244();

  (*(v48 + 8))(v18, v49);
  v29 = OBJC_IVAR___CUIKUpdatedEventProperties_updatedEventProperties;
  v30 = v54;
  swift_beginAccess();
  v31 = *(v30 + v29);
  v32 = v53;
  v33 = v50;
  v34 = v58;
  v57 = *(v53 + 32);
  v57(v50, v55, v58);
  v35 = *(v32 + 56);
  v35(v33, 0, 1, v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4660A8);
  v37 = *(*(v36 - 8) + 56);
  v37(v33, 0, 1, v36);
  v38 = *v51;
  swift_beginAccess();

  sub_1CABC6AC8(v33, v31 + v38, &qword_1EC466098);
  swift_endAccess();

  if (v52)
  {
    return (*(v53 + 8))(v56, v58);
  }

  v40 = *(v54 + v29);
  v41 = v58;
  v57(v33, v56, v58);
  v35(v33, 0, 1, v41);
  v37(v33, 0, 1, v36);
  v42 = *v43;
  swift_beginAccess();

  sub_1CABC6AC8(v33, v40 + v42, &qword_1EC466098);
  swift_endAccess();
}