uint64_t sub_25413A364@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254140504();
  *a2 = result;
  return result;
}

void sub_25413A394(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7265776F70;
  if (v2 != 1)
  {
    v5 = 0x6E41796772656E65;
    v4 = 0xEE007265776F5064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x796772656E65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25413A3F8()
{
  v1 = 0x7265776F70;
  if (*v0 != 1)
  {
    v1 = 0x6E41796772656E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796772656E65;
  }
}

uint64_t sub_25413A458@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254140504();
  *a1 = result;
  return result;
}

uint64_t sub_25413A480(uint64_t a1)
{
  v2 = sub_25413EC48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25413A4BC(uint64_t a1)
{
  v2 = sub_25413EC48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadEvent.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A00, &qword_254252F00);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v32 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A08, &qword_254252F08);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A10, &qword_254252F10);
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A18, &qword_254252F18);
  v36 = *(v14 - 8);
  v37 = v14;
  v15 = *(v36 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = v1[1];
  v35 = *v1;
  v28 = v18;
  v19 = *(v1 + 16);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25413EC48();
  sub_25424EC78();
  if (v19)
  {
    if (v19 == 1)
    {
      LOBYTE(v40) = 1;
      sub_25413ED98();
      v21 = v37;
      sub_25424E9A8();
      v40 = v35;
      sub_25413ED44();
      v22 = v31;
      sub_25424EA18();
      v23 = *(v30 + 8);
      v24 = v9;
    }

    else
    {
      LOBYTE(v40) = 2;
      sub_25413EC9C();
      v25 = v32;
      v21 = v37;
      sub_25424E9A8();
      v40 = v35;
      v39 = 0;
      sub_25413ECF0();
      v22 = v34;
      v26 = v38;
      sub_25424EA18();
      if (!v26)
      {
        v40 = v28;
        v39 = 1;
        sub_25413ED44();
        sub_25424EA18();
      }

      v23 = *(v33 + 8);
      v24 = v25;
    }

    v23(v24, v22);
  }

  else
  {
    LOBYTE(v40) = 0;
    sub_25413EDEC();
    v21 = v37;
    sub_25424E9A8();
    v40 = v35;
    sub_25413ECF0();
    sub_25424EA18();
    (*(v29 + 8))(v13, v10);
  }

  return (*(v36 + 8))(v17, v21);
}

uint64_t EnergyKit.LoadEvent.Value.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A50, &qword_254252F20);
  v52 = *(v50 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v53 = &v45[-v4];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A58, &qword_254252F28);
  v51 = *(v48 - 8);
  v5 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v7 = &v45[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A60, &qword_254252F30);
  v49 = *(v8 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v45[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A68, &qword_254252F38);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v45[-v15];
  v17 = a1[3];
  v18 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_25413EC48();
  v19 = v54;
  sub_25424EC68();
  if (!v19)
  {
    v20 = v53;
    v54 = v13;
    v21 = v16;
    v22 = sub_25424E988();
    v23 = v22;
    v24 = *(v22 + 16);
    if (v24)
    {
      v25 = *(v22 + 32);
      if (v24 == 1 && v25 != 3)
      {
        v46 = *(v22 + 32);
        if (v25)
        {
          if (v25 == 1)
          {
            LOBYTE(v58) = 1;
            sub_25413ED98();
            v33 = v7;
            v34 = v21;
            sub_25424E8F8();
            v35 = v54;
            sub_25413EE94();
            v39 = v48;
            sub_25424E978();
            (*(v51 + 8))(v33, v39);
            (*(v35 + 8))(v34, v12);
            swift_unknownObjectRelease();
            v41 = 0;
            v42 = v58;
            v43 = v47;
LABEL_16:
            *v43 = v42;
            *(v43 + 8) = v41;
            *(v43 + 16) = v46;
            return __swift_destroy_boxed_opaque_existential_1(v55);
          }

          LOBYTE(v58) = 2;
          sub_25413EC9C();
          v36 = v20;
          v37 = v21;
          sub_25424E8F8();
          v38 = v54;
          LOBYTE(v57) = 0;
          sub_25413EE40();
          v40 = v50;
          sub_25424E978();
          v51 = v23;
          v44 = v12;
          v42 = v58;
          v56 = 1;
          sub_25413EE94();
          sub_25424E978();
          (*(v52 + 8))(v36, v40);
          (*(v38 + 8))(v37, v44);
          swift_unknownObjectRelease();
          v41 = v57;
        }

        else
        {
          v51 = v22;
          LOBYTE(v58) = 0;
          sub_25413EDEC();
          sub_25424E8F8();
          sub_25413EE40();
          sub_25424E978();
          (*(v49 + 8))(v11, v8);
          (*(v54 + 8))(v21, v12);
          swift_unknownObjectRelease();
          v41 = 0;
          v42 = v58;
        }

        v43 = v47;
        goto LABEL_16;
      }
    }

    v27 = sub_25424E6F8();
    swift_allocError();
    v28 = v12;
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40) + 48);
    *v30 = &type metadata for EnergyKit.LoadEvent.Value;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v27 - 8) + 104))(v30, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    (*(v54 + 8))(v21, v28);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v55);
}

uint64_t sub_25413B110()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
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

BOOL sub_25413B144()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_25413B170()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t sub_25413B1A4()
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

uint64_t sub_25413B1D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

uint64_t sub_25413B20C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
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

uint64_t sub_25413B288()
{
  *v0;
  *v0;
  *v0;
  *v0;
  sub_25424DD88();
}

uint64_t sub_25413B39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_254140550();
  *a2 = result;
  return result;
}

void sub_25413B3CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  v5 = 0xEB000000006E6F69;
  v6 = 0x74706D75736E6F63;
  if (v2 != 5)
  {
    v6 = 0x69746375646F7270;
    v5 = 0xEA00000000006E6FLL;
  }

  v7 = 0xE800000000000000;
  v8 = 0x65636E6164697567;
  if (v2 != 3)
  {
    v8 = 0x6E6F6973736573;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6574617473;
  if (v2 != 1)
  {
    v9 = 0x6C6576656CLL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_25413B4A8()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x74706D75736E6F63;
  if (v1 != 5)
  {
    v3 = 0x69746375646F7270;
  }

  v4 = 0x65636E6164697567;
  if (v1 != 3)
  {
    v4 = 0x6E6F6973736573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574617473;
  if (v1 != 1)
  {
    v5 = 0x6C6576656CLL;
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

uint64_t sub_25413B580@<X0>(_BYTE *a1@<X8>)
{
  result = sub_254140550();
  *a1 = result;
  return result;
}

uint64_t sub_25413B5B4(uint64_t a1)
{
  v2 = sub_25413EEE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25413B5F0(uint64_t a1)
{
  v2 = sub_25413EEE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EnergyKit.LoadEvent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A88, &qword_254252F48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25413EEE8();
  sub_25424EC78();
  LOBYTE(v20) = *v3;
  v22 = 0;
  sub_25413EF3C();
  sub_25424EA18();
  if (!v2)
  {
    LOBYTE(v20) = *(v3 + 1);
    v22 = 1;
    sub_25413EF90();
    sub_25424EA18();
    *&v20 = *(v3 + 8);
    v22 = 2;
    sub_25413EFE4();
    sub_25424EA18();
    v11 = *(v3 + 24);
    v12 = *(v3 + 32);
    *&v20 = *(v3 + 16);
    *(&v20 + 1) = v11;
    v21 = v12;
    v22 = 3;
    sub_25413E94C(v20, v11, v12);
    sub_25413F038();
    sub_25424EA18();
    sub_25413F08C(v20, *(&v20 + 1), v21);
    v13 = type metadata accessor for EnergyKit.LoadEvent.State(0);
    v14 = v13[8];
    LOBYTE(v20) = 4;
    type metadata accessor for EnergyKit.LoadEvent.Session(0);
    sub_25413EA9C(&qword_27F5B8AB8, type metadata accessor for EnergyKit.LoadEvent.Session);
    sub_25424E9C8();
    v15 = (v3 + v13[9]);
    v16 = *(v15 + 16);
    v20 = *v15;
    v21 = v16;
    v22 = 5;
    sub_25413F0A4();
    sub_25424E9C8();
    v17 = (v3 + v13[10]);
    v18 = *(v17 + 16);
    v20 = *v17;
    v21 = v18;
    v22 = 6;
    sub_25424E9C8();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t EnergyKit.LoadEvent.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8AC8, &qword_254252F50);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  v13 = *(*(v12 - 1) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_25413EEE8();
  v18 = v11;
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v31 = v7;
  v19 = v33;
  v38 = 0;
  sub_25413F0F8();
  v20 = v34;
  v21 = v18;
  sub_25424E978();
  *v15 = v36;
  v38 = 1;
  sub_25413F14C();
  sub_25424E978();
  v22 = v19;
  v15[1] = v36;
  v38 = 2;
  sub_25413F1A0();
  sub_25424E978();
  *(v15 + 1) = v36;
  v38 = 3;
  sub_25413F1F4();
  sub_25424E978();
  v23 = v37;
  *(v15 + 1) = v36;
  v15[32] = v23;
  type metadata accessor for EnergyKit.LoadEvent.Session(0);
  LOBYTE(v36) = 4;
  sub_25413EA9C(&qword_27F5B8AF0, type metadata accessor for EnergyKit.LoadEvent.Session);
  v24 = v31;
  sub_25424E928();
  sub_25413E964(v24, &v15[v12[8]]);
  v38 = 5;
  sub_25413F248();
  sub_25424E928();
  v25 = v37;
  v26 = &v15[v12[9]];
  *v26 = v36;
  v26[16] = v25;
  v38 = 6;
  sub_25424E928();
  (*(v22 + 8))(v21, v20);
  v27 = v37;
  v28 = &v15[v12[10]];
  *v28 = v36;
  v28[16] = v27;
  sub_25413EBE0(v15, v32, type metadata accessor for EnergyKit.LoadEvent.State);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_25413EA3C(v15, type metadata accessor for EnergyKit.LoadEvent.State);
}

uint64_t sub_25413BEA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CF8, &qword_254253D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8D00, &qword_254253D28);
  sub_25414081C(&qword_27F5B8D08, &qword_27F5B8D00, &qword_254253D28);
  sub_25424EC78();
  v32 = 0;
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  v8 = v24;
  v9 = v23;
  v10 = v6;
  sub_25424EA18();
  if (v8)
  {
    return (*(v3 + 8))(v6, v2);
  }

  v24 = v3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B8, &qword_254252EE8);
  v13 = v12[11];
  v31 = 1;
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
  sub_25424EA18();
  v30 = *(v9 + v12[12]);
  v29 = 2;
  sub_2541406B4();
  sub_25424EA18();
  v14 = v12[13];
  v28 = 3;
  sub_25424EA18();
  v15 = (v9 + v12[14]);
  v16 = *v15;
  v17 = v15[1];
  v27 = 4;
  sub_25424E9D8();
  v18 = v24;
  v19 = (v9 + v12[15]);
  v20 = *v19;
  v21 = v19[1];
  v26 = 5;
  sub_25424E9D8();
  v22 = v12[16];
  v25 = 6;
  type metadata accessor for EnergyKit.LoadEvent.State(0);
  sub_25413EA9C(&qword_27F5B8D10, type metadata accessor for EnergyKit.LoadEvent.State);
  sub_25424EA18();
  return (*(v18 + 8))(v10, v2);
}

uint64_t sub_25413C298(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CC0, &qword_254253D00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CC8, &qword_254253D08);
  sub_25414081C(&qword_27F5B8CD0, &qword_27F5B8CC8, &qword_254253D08);
  sub_25424EC78();
  v32 = 0;
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  v8 = v24;
  v9 = v23;
  v10 = v6;
  sub_25424EA18();
  if (v8)
  {
    return (*(v3 + 8))(v6, v2);
  }

  v24 = v3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  v13 = v12[11];
  v31 = 1;
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
  sub_25424EA18();
  v30 = *(v9 + v12[12]);
  v29 = 2;
  sub_2541406B4();
  sub_25424EA18();
  v14 = v12[13];
  v28 = 3;
  sub_25424EA18();
  v15 = (v9 + v12[14]);
  v16 = *v15;
  v17 = v15[1];
  v27 = 4;
  sub_25424E9D8();
  v18 = v24;
  v19 = (v9 + v12[15]);
  v20 = *v19;
  v21 = v19[1];
  v26 = 5;
  sub_25424E9D8();
  v22 = v12[16];
  v25 = 6;
  _s16LoadSessionEventV5StateVMa(0);
  sub_25413EA9C(&qword_27F5B8CE0, _s16LoadSessionEventV5StateVMa);
  sub_25424EA18();
  return (*(v18 + 8))(v10, v2);
}

uint64_t sub_25413C688(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C60, &qword_254253CD8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C68, &qword_254253CE0);
  sub_25414081C(&qword_27F5B8C70, &qword_27F5B8C68, &qword_254253CE0);
  sub_25424EC78();
  v32 = 0;
  sub_25424D8B8();
  sub_25413EA9C(&qword_27F5B8C78, MEMORY[0x277CC9578]);
  v8 = v24;
  v9 = v23;
  v10 = v6;
  sub_25424EA18();
  if (v8)
  {
    return (*(v3 + 8))(v6, v2);
  }

  v24 = v3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  v13 = v12[11];
  v31 = 1;
  sub_25424D948();
  sub_25413EA9C(&qword_27F5B89D8, MEMORY[0x277CC95F0]);
  sub_25424EA18();
  v30 = *(v9 + v12[12]);
  v29 = 2;
  sub_2541406B4();
  sub_25424EA18();
  v14 = v12[13];
  v28 = 3;
  sub_25424EA18();
  v15 = (v9 + v12[14]);
  v16 = *v15;
  v17 = v15[1];
  v27 = 4;
  sub_25424E9D8();
  v18 = v24;
  v19 = (v9 + v12[15]);
  v20 = *v19;
  v21 = v19[1];
  v26 = 5;
  sub_25424E9D8();
  v22 = v12[16];
  v25 = 6;
  _s20LoadDailyDigestEventV5StateVMa(0);
  sub_25413EA9C(&qword_27F5B8C90, _s20LoadDailyDigestEventV5StateVMa);
  sub_25424EA18();
  return (*(v18 + 8))(v10, v2);
}

uint64_t sub_25413CA78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25424D948();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - v9;
  v49 = sub_25424D8B8();
  v43 = *(v49 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8D18, &qword_254253D30);
  v46 = *(v51 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v51);
  v14 = &v39 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B8, &qword_254252EE8);
  v15 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v17 = &v39 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8D00, &qword_254253D28);
  sub_25414081C(&qword_27F5B8D08, &qword_27F5B8D00, &qword_254253D28);
  v19 = v52;
  sub_25424EC68();
  v20 = a1;
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v44;
  v22 = v45;
  v23 = v17;
  v24 = v47;
  v25 = v48;
  v52 = v20;
  v60 = 0;
  sub_25413EA9C(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  v26 = v49;
  sub_25424E978();
  (*(v43 + 32))(v23, v50, v26);
  v59 = 1;
  sub_25413EA9C(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  v50 = v14;
  sub_25424E978();
  v27 = *(v24 + 32);
  v27(v23 + v21[11], v22, v25);
  v57 = 2;
  sub_2541407C8();
  v45 = 0;
  sub_25424E978();
  *(v23 + v21[12]) = v58;
  v56 = 3;
  v28 = v42;
  sub_25424E978();
  v27(v23 + v21[13], v28, v25);
  v55 = 4;
  v29 = sub_25424E938();
  v30 = v52;
  v31 = v46;
  v32 = (v23 + v21[14]);
  *v32 = v29;
  v32[1] = v33;
  v54 = 5;
  v34 = sub_25424E938();
  v35 = (v23 + v21[15]);
  *v35 = v34;
  v35[1] = v36;
  v53 = 6;
  sub_25413EA9C(&qword_27F5B8D20, type metadata accessor for EnergyKit.LoadEvent.State);
  v37 = v41;
  sub_25424E978();
  (*(v31 + 8))(v50, v51);
  sub_25413E9D4(v37, v23 + v21[16], type metadata accessor for EnergyKit.LoadEvent.State);
  sub_254132DF4(v23, v39, &qword_27F5B89B8, &qword_254252EE8);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_254132E5C(v23, &qword_27F5B89B8, &qword_254252EE8);
}

uint64_t sub_25413D24C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  SessionEventV5StateVMa = _s16LoadSessionEventV5StateVMa(0);
  v3 = *(*(SessionEventV5StateVMa - 8) + 64);
  MEMORY[0x28223BE20](SessionEventV5StateVMa);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25424D948();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - v9;
  v49 = sub_25424D8B8();
  v43 = *(v49 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CE8, &qword_254253D18);
  v46 = *(v51 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v51);
  v14 = &v39 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CD8, &qword_254253D10);
  v15 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v17 = &v39 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CC8, &qword_254253D08);
  sub_25414081C(&qword_27F5B8CD0, &qword_27F5B8CC8, &qword_254253D08);
  v19 = v52;
  sub_25424EC68();
  v20 = a1;
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v44;
  v22 = v45;
  v23 = v17;
  v24 = v47;
  v25 = v48;
  v52 = v20;
  v60 = 0;
  sub_25413EA9C(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  v26 = v49;
  sub_25424E978();
  (*(v43 + 32))(v23, v50, v26);
  v59 = 1;
  sub_25413EA9C(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  v50 = v14;
  sub_25424E978();
  v27 = *(v24 + 32);
  v27(v23 + v21[11], v22, v25);
  v57 = 2;
  sub_2541407C8();
  v45 = 0;
  sub_25424E978();
  *(v23 + v21[12]) = v58;
  v56 = 3;
  v28 = v42;
  sub_25424E978();
  v27(v23 + v21[13], v28, v25);
  v55 = 4;
  v29 = sub_25424E938();
  v30 = v52;
  v31 = v46;
  v32 = (v23 + v21[14]);
  *v32 = v29;
  v32[1] = v33;
  v54 = 5;
  v34 = sub_25424E938();
  v35 = (v23 + v21[15]);
  *v35 = v34;
  v35[1] = v36;
  v53 = 6;
  sub_25413EA9C(&qword_27F5B8CF0, _s16LoadSessionEventV5StateVMa);
  v37 = v41;
  sub_25424E978();
  (*(v31 + 8))(v50, v51);
  sub_25413E9D4(v37, v23 + v21[16], _s16LoadSessionEventV5StateVMa);
  sub_254132DF4(v23, v39, &qword_27F5B8CD8, &qword_254253D10);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_254132E5C(v23, &qword_27F5B8CD8, &qword_254253D10);
}

uint64_t sub_25413DA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  DailyDigestEventV5StateVMa = _s20LoadDailyDigestEventV5StateVMa(0);
  v3 = *(*(DailyDigestEventV5StateVMa - 8) + 64);
  MEMORY[0x28223BE20](DailyDigestEventV5StateVMa);
  v41 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25424D948();
  v47 = *(v5 - 8);
  v48 = v5;
  v6 = *(v47 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - v9;
  v49 = sub_25424D8B8();
  v43 = *(v49 - 8);
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8CA0, &qword_254253CF8);
  v46 = *(v51 - 8);
  v12 = *(v46 + 64);
  MEMORY[0x28223BE20](v51);
  v14 = &v39 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C80, &qword_254253CE8);
  v15 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v17 = &v39 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C68, &qword_254253CE0);
  sub_25414081C(&qword_27F5B8C70, &qword_27F5B8C68, &qword_254253CE0);
  v19 = v52;
  sub_25424EC68();
  v20 = a1;
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v44;
  v22 = v45;
  v23 = v17;
  v24 = v47;
  v25 = v48;
  v52 = v20;
  v60 = 0;
  sub_25413EA9C(&qword_27F5B8CA8, MEMORY[0x277CC9578]);
  v26 = v49;
  sub_25424E978();
  (*(v43 + 32))(v23, v50, v26);
  v59 = 1;
  sub_25413EA9C(&qword_27F5B89F0, MEMORY[0x277CC95F0]);
  v50 = v14;
  sub_25424E978();
  v27 = *(v24 + 32);
  v27(v23 + v21[11], v22, v25);
  v57 = 2;
  sub_2541407C8();
  v45 = 0;
  sub_25424E978();
  *(v23 + v21[12]) = v58;
  v56 = 3;
  v28 = v42;
  sub_25424E978();
  v27(v23 + v21[13], v28, v25);
  v55 = 4;
  v29 = sub_25424E938();
  v30 = v52;
  v31 = v46;
  v32 = (v23 + v21[14]);
  *v32 = v29;
  v32[1] = v33;
  v54 = 5;
  v34 = sub_25424E938();
  v35 = (v23 + v21[15]);
  *v35 = v34;
  v35[1] = v36;
  v53 = 6;
  sub_25413EA9C(&qword_27F5B8CB8, _s20LoadDailyDigestEventV5StateVMa);
  v37 = v41;
  sub_25424E978();
  (*(v31 + 8))(v50, v51);
  sub_25413E9D4(v37, v23 + v21[16], _s20LoadDailyDigestEventV5StateVMa);
  sub_254132DF4(v23, v39, &qword_27F5B8C80, &qword_254253CE8);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_254132E5C(v23, &qword_27F5B8C80, &qword_254253CE8);
}

BOOL _s13HomeKitEvents06EnergyB0O9LoadEventV5StateV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyKit.LoadEvent.Session(0);
  v58 = *(v4 - 8);
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8D28, &unk_254253D38);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v57 - v14;
  v16 = *a1;
  if (*a1)
  {
    if (v16 == 1)
    {
      v17 = 1667331688;
    }

    else
    {
      v17 = 0x6369727463656C65;
    }

    if (v16 == 1)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xEF656C6369686556;
    }
  }

  else
  {
    v18 = 0xE500000000000000;
    v17 = 0x726568746FLL;
  }

  v19 = 0xE400000000000000;
  v20 = 1667331688;
  if (*a2 != 1)
  {
    v20 = 0x6369727463656C65;
    v19 = 0xEF656C6369686556;
  }

  if (*a2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0x726568746FLL;
  }

  if (*a2)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  if (v17 == v21 && v18 == v22)
  {
  }

  else
  {
    v23 = sub_25424EAB8();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_2542258F4(a1[1], *(a2 + 1)) & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 8))
  {
    return 0;
  }

  v24 = *(a1 + 3);
  v25 = a1[32];
  v62 = *(a1 + 2);
  v63 = v24;
  v64 = v25;
  v27 = *(a2 + 24);
  v28 = *(a2 + 32);
  v59 = *(a2 + 16);
  v26 = v59;
  v60 = v27;
  v61 = v28;
  sub_25413E94C(v62, v24, v25);
  sub_25413E94C(v26, v27, v28);
  LOBYTE(v26) = _s13HomeKitEvents06EnergyB0O16GuidanceBehaviorO2eeoiySbAE_AEtFZ_0(&v62, &v59);
  sub_25413F08C(v59, v60, v61);
  sub_25413F08C(v62, v63, v64);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v57 = type metadata accessor for EnergyKit.LoadEvent.State(0);
  v29 = v57[8];
  v30 = *(v12 + 48);
  sub_254132DF4(&a1[v29], v15, &qword_27F5B89B0, &qword_254252EE0);
  sub_254132DF4(a2 + v29, &v15[v30], &qword_27F5B89B0, &qword_254252EE0);
  v31 = *(v58 + 48);
  if (v31(v15, 1, v4) != 1)
  {
    sub_254132DF4(v15, v11, &qword_27F5B89B0, &qword_254252EE0);
    if (v31(&v15[v30], 1, v4) == 1)
    {
      sub_25413EA3C(v11, type metadata accessor for EnergyKit.LoadEvent.Session);
      goto LABEL_29;
    }

    sub_25413E9D4(&v15[v30], v7, type metadata accessor for EnergyKit.LoadEvent.Session);
    if (sub_25424D8F8())
    {
      v34 = 0x6E69676562;
      v35 = *(v4 + 20);
      v36 = v11[v35];
      v37 = v7[v35];
      if (v36)
      {
        if (v36 == 1)
        {
          v38 = 0xE600000000000000;
          v39 = 0x657669746361;
        }

        else
        {
          v38 = 0xE300000000000000;
          v39 = 6581861;
        }
      }

      else
      {
        v38 = 0xE500000000000000;
        v39 = 0x6E69676562;
      }

      if (v37)
      {
        if (v37 == 1)
        {
          v41 = 0xE600000000000000;
          v34 = 0x657669746361;
        }

        else
        {
          v41 = 0xE300000000000000;
          v34 = 6581861;
        }
      }

      else
      {
        v41 = 0xE500000000000000;
      }

      if (v39 == v34 && v38 == v41)
      {

        sub_25413EA3C(v7, type metadata accessor for EnergyKit.LoadEvent.Session);
LABEL_50:
        sub_25413EA3C(v11, type metadata accessor for EnergyKit.LoadEvent.Session);
        goto LABEL_51;
      }

      v42 = sub_25424EAB8();

      sub_25413EA3C(v7, type metadata accessor for EnergyKit.LoadEvent.Session);
      if (v42)
      {
        goto LABEL_50;
      }
    }

    else
    {
      sub_25413EA3C(v7, type metadata accessor for EnergyKit.LoadEvent.Session);
    }

    sub_25413EA3C(v11, type metadata accessor for EnergyKit.LoadEvent.Session);
    v32 = &qword_27F5B89B0;
    v33 = &qword_254252EE0;
    goto LABEL_36;
  }

  if (v31(&v15[v30], 1, v4) != 1)
  {
LABEL_29:
    v32 = &qword_27F5B8D28;
    v33 = &unk_254253D38;
LABEL_36:
    sub_254132E5C(v15, v32, v33);
    return 0;
  }

LABEL_51:
  sub_254132E5C(v15, &qword_27F5B89B0, &qword_254252EE0);
  v43 = v57[9];
  v44 = &a1[v43];
  v45 = a1[v43 + 16];
  v46 = (a2 + v43);
  v47 = *(v46 + 16);
  if (v45 == 255)
  {
    if (v47 != 255)
    {
      return 0;
    }

LABEL_61:
    v50 = v57[10];
    v51 = &a1[v50];
    v52 = a1[v50 + 16];
    v53 = (a2 + v50);
    v54 = *(v53 + 16);
    if (v52 == 255)
    {
      return v54 == 255;
    }

    if (v54 == 255)
    {
      return 0;
    }

    v55 = *v51;
    v56 = *v53;
    if (v52)
    {
      if (v52 != 1)
      {
        return v54 == 2 && v55 == v56 && *(v51 + 1) == v53[1];
      }

      if (v54 != 1)
      {
        return 0;
      }
    }

    else if (*(v53 + 16))
    {
      return 0;
    }

    return v55 == v56;
  }

  if (v47 == 255)
  {
    return 0;
  }

  v48 = *v44;
  v49 = *v46;
  if (!v45)
  {
    result = 0;
    if (*(v46 + 16))
    {
      return result;
    }

LABEL_60:
    if (v48 == v49)
    {
      goto LABEL_61;
    }

    return result;
  }

  if (v45 == 1)
  {
    result = 0;
    if (v47 != 1)
    {
      return result;
    }

    goto LABEL_60;
  }

  if (v47 != 2)
  {
    return 0;
  }

  result = 0;
  if (v48 == v49 && *(v44 + 1) == v46[1])
  {
    goto LABEL_61;
  }

  return result;
}

BOOL _s13HomeKitEvents06EnergyB0O9LoadEventV5ValueO2eeoiySbAG_AGtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    v5 = v4 == 0;
    return v5 && v2 == v3;
  }

  if (*(a1 + 16) == 1)
  {
    v5 = v4 == 1;
    return v5 && v2 == v3;
  }

  return v4 == 2 && v2 == v3 && a1[1] == a2[1];
}

uint64_t sub_25413E914(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25413E94C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_25413E964(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B89B0, &qword_254252EE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25413E9D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25413EA3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25413EA9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25413EAE4()
{
  result = qword_27F5B89D0;
  if (!qword_27F5B89D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89D0);
  }

  return result;
}

unint64_t sub_25413EB38()
{
  result = qword_27F5B89E0;
  if (!qword_27F5B89E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89E0);
  }

  return result;
}

unint64_t sub_25413EB8C()
{
  result = qword_27F5B89F8;
  if (!qword_27F5B89F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89F8);
  }

  return result;
}

uint64_t sub_25413EBE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25413EC48()
{
  result = qword_27F5B8A20;
  if (!qword_27F5B8A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A20);
  }

  return result;
}

unint64_t sub_25413EC9C()
{
  result = qword_27F5B8A28;
  if (!qword_27F5B8A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A28);
  }

  return result;
}

unint64_t sub_25413ECF0()
{
  result = qword_27F5B8A30;
  if (!qword_27F5B8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A30);
  }

  return result;
}

unint64_t sub_25413ED44()
{
  result = qword_27F5B8A38;
  if (!qword_27F5B8A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A38);
  }

  return result;
}

unint64_t sub_25413ED98()
{
  result = qword_27F5B8A40;
  if (!qword_27F5B8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A40);
  }

  return result;
}

unint64_t sub_25413EDEC()
{
  result = qword_27F5B8A48;
  if (!qword_27F5B8A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A48);
  }

  return result;
}

unint64_t sub_25413EE40()
{
  result = qword_27F5B8A78;
  if (!qword_27F5B8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A78);
  }

  return result;
}

unint64_t sub_25413EE94()
{
  result = qword_27F5B8A80;
  if (!qword_27F5B8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A80);
  }

  return result;
}

unint64_t sub_25413EEE8()
{
  result = qword_27F5B8A90;
  if (!qword_27F5B8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A90);
  }

  return result;
}

unint64_t sub_25413EF3C()
{
  result = qword_27F5B8A98;
  if (!qword_27F5B8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8A98);
  }

  return result;
}

unint64_t sub_25413EF90()
{
  result = qword_27F5B8AA0;
  if (!qword_27F5B8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AA0);
  }

  return result;
}

unint64_t sub_25413EFE4()
{
  result = qword_27F5B8AA8;
  if (!qword_27F5B8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AA8);
  }

  return result;
}

unint64_t sub_25413F038()
{
  result = qword_27F5B8AB0;
  if (!qword_27F5B8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AB0);
  }

  return result;
}

uint64_t sub_25413F08C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_25413F0A4()
{
  result = qword_27F5B8AC0;
  if (!qword_27F5B8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AC0);
  }

  return result;
}

unint64_t sub_25413F0F8()
{
  result = qword_27F5B8AD0;
  if (!qword_27F5B8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AD0);
  }

  return result;
}

unint64_t sub_25413F14C()
{
  result = qword_27F5B8AD8;
  if (!qword_27F5B8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AD8);
  }

  return result;
}

unint64_t sub_25413F1A0()
{
  result = qword_27F5B8AE0;
  if (!qword_27F5B8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AE0);
  }

  return result;
}

unint64_t sub_25413F1F4()
{
  result = qword_27F5B8AE8;
  if (!qword_27F5B8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AE8);
  }

  return result;
}

unint64_t sub_25413F248()
{
  result = qword_27F5B8AF8;
  if (!qword_27F5B8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8AF8);
  }

  return result;
}

unint64_t sub_25413F2E4()
{
  result = qword_27F5B8B10;
  if (!qword_27F5B8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8B10);
  }

  return result;
}

unint64_t sub_25413F33C()
{
  result = qword_27F5B8B18;
  if (!qword_27F5B8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8B18);
  }

  return result;
}

unint64_t sub_25413F3D8()
{
  result = qword_27F5B8B30;
  if (!qword_27F5B8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8B30);
  }

  return result;
}

uint64_t sub_25413F4BC(void *a1)
{
  a1[1] = sub_25413EA9C(&qword_27F5B8B48, type metadata accessor for EnergyKit.LoadEvent);
  a1[2] = sub_25413EA9C(&qword_27F5B8B50, type metadata accessor for EnergyKit.LoadEvent);
  result = sub_25413EA9C(&qword_27F5B8B58, type metadata accessor for EnergyKit.LoadEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25413F5B0(uint64_t a1)
{
  *(a1 + 8) = sub_25413EA9C(&qword_27F5B8B70, type metadata accessor for EnergyKit.LoadEvent);
  result = sub_25413EA9C(&qword_27F5B8B78, type metadata accessor for EnergyKit.LoadEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25413F65C()
{
  result = type metadata accessor for EnergyKit.EventBase();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EnergyKit.LoadEvent.State(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t _s9LoadEventV9LoadStateOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s9LoadEventV9LoadStateOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t _s9LoadEventV5ValueOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s9LoadEventV5ValueOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_25413F918()
{
  result = sub_25424D948();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_25413F9C4()
{
  sub_25413FA74();
  if (v0 <= 0x3F)
  {
    sub_25413FACC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25413FA74()
{
  if (!qword_27F5B8BB0)
  {
    type metadata accessor for EnergyKit.LoadEvent.Session(255);
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B8BB0);
    }
  }
}

void sub_25413FACC()
{
  if (!qword_27F5B8BB8)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B8BB8);
    }
  }
}

uint64_t getEnumTagSinglePayload for EventCategory(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for EventCategory(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContactSensorEvent.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContactSensorEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SharedZoneLookup(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SharedZoneLookup(_WORD *result, int a2, int a3)
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

unint64_t sub_25413FED8()
{
  result = qword_27F5B8BC0;
  if (!qword_27F5B8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BC0);
  }

  return result;
}

unint64_t sub_25413FF30()
{
  result = qword_27F5B8BC8;
  if (!qword_27F5B8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BC8);
  }

  return result;
}

unint64_t sub_25413FF88()
{
  result = qword_27F5B8BD0;
  if (!qword_27F5B8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BD0);
  }

  return result;
}

unint64_t sub_25413FFE0()
{
  result = qword_27F5B8BD8;
  if (!qword_27F5B8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BD8);
  }

  return result;
}

unint64_t sub_254140038()
{
  result = qword_27F5B8BE0;
  if (!qword_27F5B8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BE0);
  }

  return result;
}

unint64_t sub_254140090()
{
  result = qword_27F5B8BE8;
  if (!qword_27F5B8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BE8);
  }

  return result;
}

unint64_t sub_2541400E8()
{
  result = qword_27F5B8BF0;
  if (!qword_27F5B8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BF0);
  }

  return result;
}

unint64_t sub_254140140()
{
  result = qword_27F5B8BF8;
  if (!qword_27F5B8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8BF8);
  }

  return result;
}

unint64_t sub_254140198()
{
  result = qword_27F5B8C00;
  if (!qword_27F5B8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C00);
  }

  return result;
}

unint64_t sub_2541401F0()
{
  result = qword_27F5B8C08;
  if (!qword_27F5B8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C08);
  }

  return result;
}

unint64_t sub_254140248()
{
  result = qword_27F5B8C10;
  if (!qword_27F5B8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C10);
  }

  return result;
}

unint64_t sub_2541402A0()
{
  result = qword_27F5B8C18;
  if (!qword_27F5B8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C18);
  }

  return result;
}

unint64_t sub_2541402F8()
{
  result = qword_27F5B8C20;
  if (!qword_27F5B8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C20);
  }

  return result;
}

unint64_t sub_254140350()
{
  result = qword_27F5B8C28;
  if (!qword_27F5B8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C28);
  }

  return result;
}

unint64_t sub_2541403A8()
{
  result = qword_27F5B8C30;
  if (!qword_27F5B8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C30);
  }

  return result;
}

unint64_t sub_254140400()
{
  result = qword_27F5B8C38;
  if (!qword_27F5B8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C38);
  }

  return result;
}

unint64_t sub_254140458()
{
  result = qword_27F5B8C40;
  if (!qword_27F5B8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C40);
  }

  return result;
}

unint64_t sub_2541404B0()
{
  result = qword_27F5B8C48;
  if (!qword_27F5B8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C48);
  }

  return result;
}

uint64_t sub_254140504()
{
  v0 = sub_25424E8E8();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_254140550()
{
  v0 = sub_25424E8E8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_25414059C()
{
  result = qword_27F5B8C50;
  if (!qword_27F5B8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C50);
  }

  return result;
}

unint64_t sub_2541405F0()
{
  result = qword_27F5B8C58;
  if (!qword_27F5B8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C58);
  }

  return result;
}

uint64_t sub_254140644(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result != 15)
  {
    return sub_254140660(a2, a3);
  }

  return result;
}

uint64_t sub_254140660(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_2541406B4()
{
  result = qword_27F5B8C88;
  if (!qword_27F5B8C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8C88);
  }

  return result;
}

uint64_t sub_254140708(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25414076C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2541407C8()
{
  result = qword_27F5B8CB0;
  if (!qword_27F5B8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8CB0);
  }

  return result;
}

uint64_t sub_25414081C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t type metadata accessor for QueryBase()
{
  result = qword_27F5B8D30;
  if (!qword_27F5B8D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_254140928()
{
  result = sub_25424D948();
  if (v1 <= 0x3F)
  {
    result = sub_25424D8B8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t HomeQuery.categories.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomeQuery() + 20));
}

uint64_t type metadata accessor for HomeQuery()
{
  result = qword_27F5B8D40;
  if (!qword_27F5B8D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeQuery.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase() + 20);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomeQuery.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase() + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomeQuery.scope.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for QueryBase();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t sub_254140BF8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_254140C60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase() + 20);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254140CDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for QueryBase() + 24);
  v4 = sub_25424D8B8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254140D7C@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for QueryBase();
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t QueryController.homeQuery(homeIdentifier:startDate:endDate:categories:limit:scope:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v7 = a5;
  v41 = *MEMORY[0x277D85DE8];
  v40 = *a6;
  if (a4)
  {
    v13 = *(a4 + 32);
    v14 = v13 & 0x3F;
    v15 = ((1 << v13) + 63) >> 6;
    v16 = 8 * v15;

    if (v14 > 0xD)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v18 = v7;
      MEMORY[0x28223BE20](v17);
      v7 = &v39[-((v16 + 15) & 0x3FFFFFFFFFFFFFF0)];
      bzero(v7, v16);
      v19 = 0;
      v20 = 0;
      v21 = 1 << *(a4 + 32);
      v22 = -1;
      if (v21 < 64)
      {
        v22 = ~(-1 << v21);
      }

      v23 = v22 & *(a4 + 56);
      v24 = (v21 + 63) >> 6;
      while (v23)
      {
        v25 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v26 = v25 | (v20 << 6);
LABEL_13:
        if (*(*(a4 + 48) + v26) != 5)
        {
          *&v7[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
          if (__OFADD__(v19++, 1))
          {
            __break(1u);
LABEL_17:
            v30 = sub_2541417B4(&v39[-((v16 + 15) & 0x3FFFFFFFFFFFFFF0)], v15, v19, a4);
            goto LABEL_19;
          }
        }
      }

      v27 = v20;
      while (1)
      {
        v20 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v20 >= v24)
        {
          goto LABEL_17;
        }

        v28 = *(a4 + 56 + 8 * v20);
        ++v27;
        if (v28)
        {
          v23 = (v28 - 1) & v28;
          v26 = __clz(__rbit64(v28)) | (v20 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v18 = v7;
    v38 = swift_slowAlloc();

    v30 = sub_254141724(v38, v15, a4, sub_254140DB0);
    swift_bridgeObjectRelease_n();
    MEMORY[0x259C07330](v38, -1, -1);
  }

  else
  {
    v18 = a5;
    v30 = 0;
  }

LABEL_19:
  v31 = sub_25424D948();
  (*(*(v31 - 8) + 16))(a7, a1, v31);
  Base = type metadata accessor for QueryBase();
  v33 = Base[5];
  v34 = sub_25424D8B8();
  v35 = *(*(v34 - 8) + 16);
  v35(a7 + v33, a2, v34);
  v35(a7 + Base[6], a3, v34);
  *(a7 + Base[7]) = v18;
  *(a7 + Base[8]) = v40;
  result = type metadata accessor for HomeQuery();
  *(a7 + *(result + 20)) = v30;
  *(a7 + *(result + 24)) = 0;
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t QueryController.energyKitQuery(homeIdentifier:startDate:endDate:categories:limit:scope:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, unsigned __int8 *a5@<X5>, uint64_t a6@<X8>)
{
  v56 = a4;
  v57 = *MEMORY[0x277D85DE8];
  v11 = sub_25424D8B8();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - v17;
  v19 = sub_25424D948();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v53 = *a5;
  v50 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v22;
  v23 = *(v22 + 16);
  v52 = v24;
  v23();
  v25 = v12[2];
  v54 = v18;
  v25(v18, a1, v11);
  v55 = v16;
  v25(v16, a2, v11);
  if (a3)
  {
    v26 = *(a3 + 32);
    v27 = v26 & 0x3F;
    v28 = ((1 << v26) + 63) >> 6;
    v29 = 8 * v28;

    if (v27 > 0xD)
    {
      goto LABEL_21;
    }

    while (1)
    {
      MEMORY[0x28223BE20](v30);
      bzero(&v49 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0), v29);
      v31 = 0;
      v32 = 0;
      v33 = 1 << *(a3 + 32);
      v34 = -1;
      if (v33 < 64)
      {
        v34 = ~(-1 << v33);
      }

      v35 = v34 & *(a3 + 56);
      v36 = (v33 + 63) >> 6;
      while (v35)
      {
        v37 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
        v38 = v37 | (v32 << 6);
LABEL_13:
        if (*(*(a3 + 48) + v38) == 5)
        {
          *(&v49 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v38;
          if (__OFADD__(v31++, 1))
          {
            __break(1u);
LABEL_17:
            v42 = sub_2541417B4((&v49 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0)), v28, v31, a3);
            goto LABEL_19;
          }
        }
      }

      v39 = v32;
      while (1)
      {
        v32 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v32 >= v36)
        {
          goto LABEL_17;
        }

        v40 = *(a3 + 56 + 8 * v32);
        ++v39;
        if (v40)
        {
          v35 = (v40 - 1) & v40;
          v38 = __clz(__rbit64(v40)) | (v32 << 6);
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:

      if (!swift_stdlib_isStackAllocationSafe())
      {
        break;
      }
    }

    v48 = swift_slowAlloc();

    v42 = sub_254141724(v48, v28, a3, sub_2541415CC);
    swift_bridgeObjectRelease_n();
    MEMORY[0x259C07330](v48, -1, -1);
  }

  else
  {
    v42 = 0;
  }

LABEL_19:
  v43 = v56;
  (*(v51 + 32))(a6, v50, v52);
  Base = type metadata accessor for QueryBase();
  v45 = v12[4];
  v45(a6 + Base[5], v54, v11);
  v45(a6 + Base[6], v55, v11);
  *(a6 + Base[7]) = v43;
  *(a6 + Base[8]) = v53;
  result = type metadata accessor for HomeQuery();
  *(a6 + *(result + 20)) = v42;
  *(a6 + *(result + 24)) = 1;
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2541415DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v20 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v21 = *(*(a3 + 48) + v17);
    result = a4(&v21);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v20 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_2541417B4(v20, a2, v7, a3);
      }
    }
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
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_254141724(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2541415DC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2541417B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90A0, &qword_254253DD0);
  result = sub_25424E648();
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
    v16 = *(*(v4 + 48) + (v13 | (v11 << 6)));
    v17 = *(v9 + 40);
    sub_25424EBD8();
    MEMORY[0x259C06AA0](qword_254253DD8[v16]);
    result = sub_25424EC28();
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
    *(*(v9 + 48) + v21) = v16;
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

void sub_2541419F0()
{
  type metadata accessor for QueryBase();
  if (v0 <= 0x3F)
  {
    sub_254141A7C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254141A7C()
{
  if (!qword_27F5B8D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9060, &qword_254254410);
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B8D50);
    }
  }
}

uint64_t static QueryController.homeQuery(homeIdentifier:startDate:endDate:categories:limit:scope:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277D85DE8];

  return QueryController.homeQuery(homeIdentifier:startDate:endDate:categories:limit:scope:)(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t EncryptionKeyQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D948();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EncryptionKeyQuery.targetCloudKitZone.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EncryptionKeyQuery();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for EncryptionKeyQuery()
{
  result = qword_27F5B8D80;
  if (!qword_27F5B8D80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EncryptionKeyQuery.queryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EncryptionKeyQuery() + 24);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EncryptionKeyQuery.resultsLimit.getter()
{
  v1 = (v0 + *(type metadata accessor for EncryptionKeyQuery() + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t EncryptionKeyQuery.qualityOfService.getter()
{
  v1 = (v0 + *(type metadata accessor for EncryptionKeyQuery() + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t EncryptionKeyQuery.init(database:homeIdentifier:queryIdentifier:resultsLimit:qualityOfService:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v38 = a7;
  v37 = a6;
  v42 = a5;
  v43 = a4;
  v40 = a8;
  v41 = a3;
  v10 = type metadata accessor for EncryptionKeyQuery();
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25424D948();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *a1;
  v35 = a1[1];
  v36 = v22;
  v34 = a1[2];
  v23 = v15[2];
  v39 = a2;
  v24 = a2;
  v25 = v41;
  v23(&v34 - v20, v24, v14);
  result = (v23)(v19, v25, v14);
  v27 = v42;
  if ((v42 & 1) != 0 || v43 >= 1)
  {
    v23(v13, v21, v14);
    v13[v10[5]] = 0;
    v23(&v13[v10[6]], v19, v14);
    v28 = &v13[v10[7]];
    *v28 = v43;
    v28[8] = v27 & 1;
    v29 = &v13[v10[8]];
    *v29 = v37;
    v29[8] = v38 & 1;
    v30 = &v13[v10[9]];
    v31 = v35;
    *v30 = v36;
    *(v30 + 1) = v31;
    *(v30 + 2) = v34;
    if (qword_27F5B8468 != -1)
    {
      swift_once();
    }

    v32 = off_27F5BAFB0;
    v33 = v15[1];
    v33(v25, v14);
    v33(v39, v14);
    v33(v19, v14);
    v33(v21, v14);
    *&v13[v10[10]] = v32[2];
    sub_254148E6C(v13, v40, type metadata accessor for EncryptionKeyQuery);
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id EncryptionKeyQuery.init(homeIdentifier:queryIdentifier:resultsLimit:scope:qualityOfService:operationGroup:container:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, void *a8@<X7>, uint64_t a9@<X8>, id a10)
{
  v53 = a7;
  v59 = a4;
  v57 = a3;
  v63 = a2;
  v64 = a1;
  v14 = a10;
  v15 = type metadata accessor for EncryptionKeyQuery();
  v16 = *(*(v15 - 1) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25424D948();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v23 = MEMORY[0x28223BE20](v22);
  v24 = MEMORY[0x28223BE20](v23);
  v62 = &v49 - v25;
  MEMORY[0x28223BE20](v24);
  v60 = v27;
  v61 = &v49 - v26;
  v28 = *a5;
  v54 = a8;
  v55 = a10;
  v51 = v28;
  v52 = a6;
  v58 = v29;
  if (!a10)
  {
    if (a8)
    {
      result = [a8 defaultConfiguration];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v31 = result;
      v32 = [result container];

      v56 = v32;
      if (v32)
      {
        goto LABEL_9;
      }
    }

    if (qword_27F5B8420 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v56 = a10;
  if (a8)
  {
    goto LABEL_9;
  }

LABEL_10:
  v34 = objc_allocWithZone(MEMORY[0x277CBC4F8]);
  v35 = v14;
  v14 = [v34 init];
  v65 = v14;
  sub_2541424A0(&v65, v56);
  while (1)
  {
    a8 = v20[2];
    v36 = v61;
    (a8)(v61, v64, v19);
    v37 = v62;
    (a8)(v62, v63, v19);
    (a8)(v58, v36, v19);
    (a8)(v60, v37, v19);
    if ((v59 & 1) != 0 || v57 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_8:
    v56 = qword_27F5BA548;
    if (!a8)
    {
      goto LABEL_10;
    }

LABEL_9:
    v33 = v14;
    v14 = a8;
  }

  v50 = a9;
  v38 = v51 | 0x8000000000000000;
  v39 = v58;
  (a8)(v18, v58, v19);
  v18[v15[5]] = 0;
  v40 = v60;
  (a8)(&v18[v15[6]], v60, v19);
  v41 = &v18[v15[7]];
  *v41 = v57;
  v41[8] = v59 & 1;
  v42 = &v18[v15[8]];
  *v42 = v52;
  v42[8] = v53 & 1;
  v43 = &v18[v15[9]];
  *v43 = v56;
  *(v43 + 1) = v38;
  *(v43 + 2) = v14;
  v44 = qword_27F5B8468;
  v45 = v54;
  if (v44 != -1)
  {
    v48 = v45;
    swift_once();
    v45 = v48;
  }

  v46 = off_27F5BAFB0;

  v47 = v20[1];
  v47(v63, v19);
  v47(v64, v19);
  v47(v40, v19);
  v47(v39, v19);
  v47(v62, v19);
  v47(v61, v19);
  *&v18[v15[10]] = v46[2];
  sub_254148E6C(v18, v50, type metadata accessor for EncryptionKeyQuery);
  return swift_unknownObjectRetain();
}

void sub_2541424A0(void **a1, uint64_t a2)
{
  v3 = *a1;
  v17[3] = 0xE000000000000000;
  v17[0] = 47;
  v17[1] = 0xE100000000000000;
  v17[2] = 0;
  v16[2] = v17;
  v4 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_254148F24, v16, 0xD000000000000026, 0x8000000254250460, ": { queryIdentifier = ");
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = MEMORY[0x259C05BF0](v5, v6, v7, v8);
    v11 = v10;

    MEMORY[0x259C05CA0](v9, v11);

    MEMORY[0x259C05CA0](46, 0xE100000000000000);
    v17[0] = type metadata accessor for EncryptionKeyQuery();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D60, &qword_254253E48);
    v12 = sub_25424DD08();
    MEMORY[0x259C05CA0](v12);

    v13 = sub_25424DCA8();

    [v3 setName_];

    [v3 setExpectedReceiveSize_];
    [v3 setExpectedSendSize_];
    v14 = [v3 defaultConfiguration];
    if (v14)
    {
      v15 = v14;
      [v14 setContainer_];

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t EncryptionKeyQuery.fetchRecords()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_254142718;

  return sub_254142818();
}

uint64_t sub_254142718(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_254142818()
{
  v1[3] = v0;
  v2 = *(type metadata accessor for EncryptionKeyQuery() - 8);
  v1[4] = v2;
  v1[5] = *(v2 + 64);
  v1[6] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_25424D8B8();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v1[10] = *(v5 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254142984, 0, 0);
}

uint64_t sub_254142984()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[9];
  v21 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  sub_25424D898();
  v10 = sub_25424E128();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_254148AB4(v8, v6, type metadata accessor for EncryptionKeyQuery);
  (*(v3 + 16))(v1, v2, v5);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = (v7 + *(v3 + 80) + v11) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  sub_254148E6C(v6, v13 + v11, type metadata accessor for EncryptionKeyQuery);
  (*(v3 + 32))(v13 + v12, v1, v5);
  v14 = sub_2541A9134(0, 0, v4, &unk_254253F30, v13);
  v0[13] = v14;
  v15 = *(MEMORY[0x277D857C8] + 4);
  v16 = swift_task_alloc();
  v0[14] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DF0, &qword_254253F38);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  *v16 = v0;
  v16[1] = sub_254142BC8;
  v19 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v0 + 2, v14, v17, v18, v19);
}

uint64_t sub_254142BC8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_254142D9C;
  }

  else
  {
    v3 = sub_254142CDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_254142CDC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  (*(v5 + 8))(v2, v4);
  v8 = v0[2];

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_254142D9C()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v7 = v0[6];
  v6 = v0[7];

  (*(v5 + 8))(v2, v4);

  v8 = v0[1];
  v9 = v0[15];

  return v8();
}

uint64_t EncryptionKeyQuery.fetchKeys()()
{
  v1 = type metadata accessor for EncryptionKeyRecord();
  v0[7] = v1;
  v2 = *(v1 - 8);
  v0[8] = v2;
  v3 = *(v2 + 64) + 15;
  v0[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_254142F3C;

  return sub_254142818();
}

uint64_t sub_254142F3C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *v2;
  *(*v2 + 88) = a1;

  if (v1)
  {
    v6 = *(v3 + 72);

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25414308C, 0, 0);
  }
}

uint64_t sub_25414308C()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v16 = MEMORY[0x277D84F90];
    sub_254147FF8(0, v2, 0);
    v5 = v16;
    v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v7 = *(v3 + 72);
    do
    {
      v8 = *(v0 + 72);
      sub_254148AB4(v6, v8, type metadata accessor for EncryptionKeyRecord);
      sub_254140708(v8 + *(v4 + 20), v0 + 16);
      sub_254148DC4(v8, type metadata accessor for EncryptionKeyRecord);
      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_254147FF8((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      sub_25412DC4C((v0 + 16), v16 + 40 * v10 + 32);
      v6 += v7;
      --v2;
    }

    while (v2);
    v11 = *(v0 + 88);
  }

  else
  {
    v12 = *(v0 + 88);

    v5 = MEMORY[0x277D84F90];
  }

  v13 = *(v0 + 72);

  v14 = *(v0 + 8);

  return v14(v5);
}

uint64_t EncryptionKeyQuery.description.getter()
{
  v1 = v0;
  sub_25424E688();
  v2 = type metadata accessor for EncryptionKeyQuery();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D60, &qword_254253E48);
  v3 = sub_25424DD08();
  MEMORY[0x259C05CA0](v3);

  MEMORY[0x259C05CA0](0xD000000000000016, 0x8000000254250440);
  v4 = *(v2 + 24);
  sub_25424D948();
  sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
  v5 = sub_25424EA58();
  MEMORY[0x259C05CA0](v5);

  MEMORY[0x259C05CA0](0x3D20656D6F68202CLL, 0xE900000000000020);
  v6 = sub_25424EA58();
  MEMORY[0x259C05CA0](v6);

  MEMORY[0x259C05CA0](0x2074696D696C202CLL, 0xEA0000000000203DLL);
  v7 = (v1 + *(v2 + 28));
  v10 = *v7;
  v11 = *(v7 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8D70, &qword_254253E50);
  v8 = sub_25424DD08();
  MEMORY[0x259C05CA0](v8);

  MEMORY[0x259C05CA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_254143458@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v109 = type metadata accessor for EncryptionKeyQuery();
  v3 = *(*(v109 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v109);
  v104 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v99 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v106 = &v99 - v10;
  MEMORY[0x28223BE20](v9);
  v100 = &v99 - v11;
  v12 = sub_25424DAA8();
  v13 = *(v12 - 8);
  v111 = v12;
  v112 = v13;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v105 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v108 = &v99 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v107 = &v99 - v20;
  MEMORY[0x28223BE20](v19);
  v102 = &v99 - v21;
  v22 = type metadata accessor for EncryptionKeyRecord();
  v113 = *(v22 - 8);
  v114 = v22;
  v23 = *(v113 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v99 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v103 = &v99 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v99 - v29;
  MEMORY[0x28223BE20](v28);
  v101 = &v99 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v99 - v34;
  v36 = [a1 recordID];
  v37 = [v36 recordName];
  sub_25424DCB8();

  sub_25424D8C8();

  v38 = sub_25424D948();
  v39 = (*(*(v38 - 8) + 48))(v35, 1, v38);
  sub_254132E5C(v35, &unk_27F5B8E50, &qword_254254390);
  if (v39 == 1)
  {
    v40 = v108;
    sub_25421A334(v108);
    sub_254148AB4(v110, v8, type metadata accessor for EncryptionKeyQuery);
    v41 = v36;
    v42 = sub_25424DA88();
    v43 = sub_25424E408();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v116[0] = v45;
      *v44 = 136446722;
      v46 = *(v109 + 24);
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v47 = sub_25424EA58();
      v49 = v48;
      sub_254148DC4(v8, type metadata accessor for EncryptionKeyQuery);
      v50 = sub_2542203C4(v47, v49, v116);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2160;
      *(v44 + 14) = 1752392040;
      *(v44 + 22) = 2080;
      v51 = [v41 recordName];
      v52 = sub_25424DCB8();
      v54 = v53;

      v55 = sub_2542203C4(v52, v54, v116);

      *(v44 + 24) = v55;
      _os_log_impl(&dword_254124000, v42, v43, "[%{public}s] Ignoring record with non-UUID record name: %{mask.hash}s", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v45, -1, -1);
      MEMORY[0x259C07330](v44, -1, -1);
    }

    else
    {

      sub_254148DC4(v8, type metadata accessor for EncryptionKeyQuery);
    }

    (*(v112 + 8))(v40, v111);
LABEL_14:
    v94 = 1;
    v96 = v114;
    v95 = v115;
    return (*(v113 + 56))(v95, v94, 1, v96);
  }

  v56 = v110;
  v57 = v36;
  if ([a1 isExpired])
  {
    v58 = v107;
    sub_25421A334(v107);
    v59 = v56;
    v60 = v106;
    sub_254148AB4(v59, v106, type metadata accessor for EncryptionKeyQuery);
    v61 = v36;
    v62 = sub_25424DA88();
    v63 = sub_25424E408();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v116[0] = v66;
      *v64 = 136446466;
      v67 = *(v109 + 24);
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v68 = sub_25424EA58();
      v69 = v60;
      v71 = v70;
      sub_254148DC4(v69, type metadata accessor for EncryptionKeyQuery);
      v72 = sub_2542203C4(v68, v71, v116);

      *(v64 + 4) = v72;
      *(v64 + 12) = 2114;
      *(v64 + 14) = v61;
      *v65 = v61;
      v73 = v61;
      _os_log_impl(&dword_254124000, v62, v63, "[%{public}s] Ignoring record %{public}@ that has expired", v64, 0x16u);
      sub_254132E5C(v65, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v65, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x259C07330](v66, -1, -1);
      MEMORY[0x259C07330](v64, -1, -1);
    }

    else
    {

      sub_254148DC4(v60, type metadata accessor for EncryptionKeyQuery);
    }

    (*(v112 + 8))(v58, v111);
    goto LABEL_14;
  }

  EncryptionKeyRecord.init(from:)(a1, v30);
  v74 = v101;
  sub_254148E6C(v30, v101, type metadata accessor for EncryptionKeyRecord);
  v75 = v102;
  sub_25421A334(v102);
  v76 = v100;
  sub_254148AB4(v56, v100, type metadata accessor for EncryptionKeyQuery);
  v77 = v103;
  sub_254148AB4(v74, v103, type metadata accessor for EncryptionKeyRecord);
  v78 = sub_25424DA88();
  v79 = sub_25424E418();
  if (os_log_type_enabled(v78, v79))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v116[0] = v82;
    *v81 = 136315394;
    v83 = *(v109 + 24);
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v84 = sub_25424EA58();
    v110 = v57;
    v86 = v85;
    sub_254148DC4(v76, type metadata accessor for EncryptionKeyQuery);
    v87 = sub_2542203C4(v84, v86, v116);

    *(v81 + 4) = v87;
    *(v81 + 12) = 2080;
    v88 = v103;
    sub_254148AB4(v103, v99, type metadata accessor for EncryptionKeyRecord);
    v89 = v114;
    v90 = sub_25424DD08();
    v92 = v91;
    sub_254148DC4(v88, type metadata accessor for EncryptionKeyRecord);
    v93 = sub_2542203C4(v90, v92, v116);

    *(v81 + 14) = v93;
    _os_log_impl(&dword_254124000, v78, v79, "[%s] Successfully decoded record %s", v81, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v82, -1, -1);
    MEMORY[0x259C07330](v81, -1, -1);

    (*(v112 + 8))(v75, v111);
  }

  else
  {

    sub_254148DC4(v77, type metadata accessor for EncryptionKeyRecord);
    sub_254148DC4(v76, type metadata accessor for EncryptionKeyQuery);
    (*(v112 + 8))(v75, v111);
    v89 = v114;
  }

  v98 = v115;
  sub_254148E6C(v74, v115, type metadata accessor for EncryptionKeyRecord);
  v95 = v98;
  v94 = 0;
  v96 = v89;
  return (*(v113 + 56))(v95, v94, 1, v96);
}

uint64_t sub_2541441C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  v6 = sub_25424D8B8();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v8 = *(v7 + 64) + 15;
  v5[10] = swift_task_alloc();
  v9 = type metadata accessor for EncryptionKeyQuery();
  v5[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v11 = sub_25424DAA8();
  v5[15] = v11;
  v12 = *(v11 - 8);
  v5[16] = v12;
  v13 = *(v12 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_254144334, 0, 0);
}

uint64_t sub_254144334()
{
  v35 = v0;
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[6];
  sub_25421A334(v0[18]);
  sub_254148AB4(v3, v1, type metadata accessor for EncryptionKeyQuery);
  sub_254148AB4(v3, v2, type metadata accessor for EncryptionKeyQuery);
  v4 = sub_25424DA88();
  v5 = sub_25424E448();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[15];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  if (v6)
  {
    v12 = v0[11];
    v13 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v13 = 136446466;
    v14 = *(v12 + 24);
    sub_25424D948();
    v33 = v7;
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v15 = sub_25424EA58();
    v17 = v16;
    sub_254148DC4(v11, type metadata accessor for EncryptionKeyQuery);
    v18 = sub_2542203C4(v15, v17, &v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    v19 = EncryptionKeyQuery.description.getter();
    v21 = v20;
    sub_254148DC4(v10, type metadata accessor for EncryptionKeyQuery);
    v22 = sub_2542203C4(v19, v21, &v34);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_254124000, v4, v5, "[%{public}s] Beginning: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v32, -1, -1);
    MEMORY[0x259C07330](v13, -1, -1);

    v23 = *(v9 + 8);
    v23(v33, v8);
  }

  else
  {

    sub_254148DC4(v10, type metadata accessor for EncryptionKeyQuery);
    sub_254148DC4(v11, type metadata accessor for EncryptionKeyQuery);
    v23 = *(v9 + 8);
    v23(v7, v8);
  }

  v0[19] = v23;
  v24 = v0[6];
  v25 = (v24 + *(v0[11] + 36));
  v27 = *v25;
  v26 = v25[1];
  v28 = v25[2];
  v29 = swift_task_alloc();
  v0[20] = v29;
  *(v29 + 16) = v24;
  v30 = swift_task_alloc();
  v0[21] = v30;
  *v30 = v0;
  v30[1] = sub_254144694;

  return sub_25414CA0C(&unk_254253F50, v29, v27, v26, v28);
}

uint64_t sub_254144694(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v5 = v3[21];
  v6 = v3[20];
  v7 = *v2;

  if (v1)
  {
    v9 = v4[17];
    v8 = v4[18];
    v11 = v4[13];
    v10 = v4[14];
    v12 = v4[12];
    v13 = v4[10];

    v14 = v7[1];

    return v14();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25414483C, 0, 0);
  }
}

uint64_t sub_25414483C()
{
  v48 = v0;
  v1 = *(v0 + 96);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  sub_25421A334(*(v0 + 136));
  sub_254148AB4(v6, v1, type metadata accessor for EncryptionKeyQuery);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_25424DA88();
  v8 = sub_25424E448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 88);
    v10 = *(v0 + 96);
    v11 = *(v0 + 80);
    v12 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v47 = v46;
    *v12 = 136446466;
    v13 = *(v9 + 24);
    sub_25424D948();
    sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v14 = sub_25424EA58();
    v16 = v15;
    sub_254148DC4(v10, type metadata accessor for EncryptionKeyQuery);
    v17 = sub_2542203C4(v14, v16, &v47);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    sub_25424D868();
    v18 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v18 setMaximumFractionDigits_];
    v19 = sub_25424E288();
    v20 = [v18 stringForObjectValue_];

    if (v20)
    {
      v21 = sub_25424DCB8();
      v23 = v22;
    }

    else
    {
      v21 = sub_25424E298();
      v23 = v32;
    }

    v33 = *(v0 + 152);
    v35 = *(v0 + 128);
    v34 = *(v0 + 136);
    v36 = *(v0 + 120);
    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
    v37 = sub_2542203C4(v21, v23, &v47);

    *(v12 + 14) = v37;
    _os_log_impl(&dword_254124000, v7, v8, "[%{public}s] Finished in %{public}s seconds", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v46, -1, -1);
    MEMORY[0x259C07330](v12, -1, -1);

    v33(v34, v36);
  }

  else
  {
    v24 = *(v0 + 152);
    v26 = *(v0 + 128);
    v25 = *(v0 + 136);
    v27 = *(v0 + 120);
    v28 = *(v0 + 96);
    v30 = *(v0 + 72);
    v29 = *(v0 + 80);
    v31 = *(v0 + 64);

    (*(v30 + 8))(v29, v31);
    sub_254148DC4(v28, type metadata accessor for EncryptionKeyQuery);
    v24(v25, v27);
  }

  v39 = *(v0 + 136);
  v38 = *(v0 + 144);
  v41 = *(v0 + 104);
  v40 = *(v0 + 112);
  v42 = *(v0 + 96);
  v43 = *(v0 + 80);
  **(v0 + 40) = *(v0 + 24);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_254144C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_25424E0A8();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E00, &qword_254253F58) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E08, &qword_254253F60) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v9 = type metadata accessor for EncryptionKeyRecord();
  v3[21] = v9;
  v10 = *(v9 - 8);
  v3[22] = v10;
  v11 = *(v10 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E10, &qword_254253F68);
  v3[25] = v12;
  v13 = *(v12 - 8);
  v3[26] = v13;
  v14 = *(v13 + 64) + 15;
  v3[27] = swift_task_alloc();
  v15 = sub_25424D8B8();
  v3[28] = v15;
  v16 = *(v15 - 8);
  v3[29] = v16;
  v17 = *(v16 + 64) + 15;
  v3[30] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E18, &qword_254253F70);
  v3[31] = v18;
  v19 = *(v18 - 8);
  v3[32] = v19;
  v20 = *(v19 + 64) + 15;
  v3[33] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E20, &qword_254253F78);
  v3[34] = v21;
  v22 = *(v21 - 8);
  v3[35] = v22;
  v23 = *(v22 + 64) + 15;
  v3[36] = swift_task_alloc();
  v24 = type metadata accessor for CKQueryAsyncSequence();
  v3[37] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v3[38] = swift_task_alloc();
  v26 = type metadata accessor for EncryptionKeyQuery();
  v3[39] = v26;
  v27 = *(*(v26 - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v28 = sub_25424DAA8();
  v3[45] = v28;
  v29 = *(v28 - 8);
  v3[46] = v29;
  v30 = *(v29 + 64) + 15;
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v31 = sub_25424D948();
  v3[52] = v31;
  v32 = *(v31 - 8);
  v3[53] = v32;
  v33 = *(v32 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541450D8, 0, 0);
}

uint64_t sub_2541450D8()
{
  sub_25424E1E8();
  *(v0 + 512) = *(*(v0 + 112) + *(*(v0 + 312) + 20));
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_25414531C;
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);

  return (sub_2541A23BC)(v3, v2, v0 + 512, 1);
}

uint64_t sub_25414531C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 448);
  v7 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v5 = sub_254145B2C;
  }

  else
  {
    v5 = sub_254145430;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_254145430()
{
  v95 = v0;
  v1 = *(v0 + 464);
  sub_25424E1E8();
  if (v1)
  {

    v3 = *(v0 + 432);
    v2 = *(v0 + 440);
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v7 = *(v0 + 384);
    v6 = *(v0 + 392);
    v8 = *(v0 + 376);
    v10 = *(v0 + 344);
    v9 = *(v0 + 352);
    v62 = *(v0 + 336);
    v64 = *(v0 + 328);
    v66 = *(v0 + 320);
    v68 = *(v0 + 304);
    v70 = *(v0 + 288);
    v72 = *(v0 + 264);
    v74 = *(v0 + 240);
    v77 = *(v0 + 216);
    v80 = *(v0 + 192);
    log = *(v0 + 184);
    v86 = *(v0 + 160);
    v89 = *(v0 + 152);
    v91 = *(v0 + 144);
    v93 = *(v0 + 136);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v14 = *(v0 + 432);
    v13 = *(v0 + 440);
    v15 = *(v0 + 416);
    v16 = *(v0 + 424);
    v17 = *(v0 + 408);
    v18 = *(v0 + 352);
    v19 = *(v0 + 112);
    sub_254148D7C(0, &unk_27F5B9010, 0x277CBC578);
    v20 = [objc_opt_self() predicateWithValue_];
    v92 = sub_25424E538();
    sub_25424D938();
    sub_25421A334(v17);
    sub_254148AB4(v19, v18, type metadata accessor for EncryptionKeyQuery);
    v90 = *(v16 + 16);
    v90(v14, v13, v15);
    v21 = sub_25424DA88();
    v22 = sub_25424E408();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 424);
    v25 = *(v0 + 432);
    v27 = *(v0 + 408);
    v26 = *(v0 + 416);
    v29 = *(v0 + 360);
    v28 = *(v0 + 368);
    v30 = *(v0 + 352);
    if (v23)
    {
      loga = v21;
      v31 = *(v0 + 312);
      v87 = *(v0 + 408);
      v32 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v94[0] = v81;
      *v32 = 136446466;
      v33 = *(v31 + 24);
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v75 = v22;
      v34 = sub_25424EA58();
      v78 = v29;
      v36 = v35;
      sub_254148DC4(v30, type metadata accessor for EncryptionKeyQuery);
      v37 = sub_2542203C4(v34, v36, v94);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2082;
      v38 = sub_25424EA58();
      v40 = v39;
      v41 = *(v24 + 8);
      v41(v25, v26);
      v42 = sub_2542203C4(v38, v40, v94);

      *(v32 + 14) = v42;
      _os_log_impl(&dword_254124000, loga, v75, "[%{public}s] Beginning subquery %{public}s", v32, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v81, -1, -1);
      MEMORY[0x259C07330](v32, -1, -1);

      v43 = *(v28 + 8);
      v43(v87, v78);
    }

    else
    {

      v41 = *(v24 + 8);
      v41(v25, v26);
      sub_254148DC4(v30, type metadata accessor for EncryptionKeyQuery);
      v43 = *(v28 + 8);
      v43(v27, v29);
    }

    *(v0 + 472) = v41;
    *(v0 + 480) = v43;
    v63 = *(v0 + 440);
    v65 = *(v0 + 456);
    v44 = *(v0 + 416);
    v45 = *(v0 + 304);
    v46 = *(v0 + 312);
    v47 = *(v0 + 296);
    logb = *(v0 + 288);
    v88 = *(v0 + 256);
    v73 = *(v0 + 264);
    v76 = *(v0 + 232);
    v48 = *(v0 + 224);
    v79 = v48;
    v82 = *(v0 + 248);
    v67 = *(v0 + 240);
    v69 = *(v0 + 216);
    v49 = *(v0 + 208);
    v71 = *(v0 + 200);
    v50 = *(v0 + 104);
    v51 = *(v0 + 112);
    v90(&v45[v47[7]], v51 + *(v46 + 24), v44);
    v90(&v45[v47[8]], v63, v44);
    v52 = (v51 + *(v46 + 32));
    v53 = *v52;
    LOBYTE(v52) = *(v52 + 8);
    *v45 = v50;
    *(v45 + 1) = 0;
    *(v45 + 2) = 0;
    *(v45 + 3) = v65;
    *(v45 + 4) = v92;
    *&v45[v47[9]] = 0;
    v54 = &v45[v47[10]];
    *v54 = 0;
    v54[8] = 1;
    v55 = &v45[v47[11]];
    *v55 = v53;
    v55[8] = v52;
    *&v45[v47[12]] = 0;
    v56 = v50;
    sub_25424D898();
    v57 = swift_task_alloc();
    *(v57 + 16) = v45;
    *(v57 + 24) = v67;
    sub_254148D7C(0, &unk_27F5B8E30, 0x277CBC5A0);
    (*(v49 + 104))(v69, *MEMORY[0x277D858A0], v71);
    sub_25424E278();

    (*(v76 + 8))(v67, v79);
    sub_25424E178();
    (*(v88 + 8))(v73, v82);
    *(v0 + 488) = MEMORY[0x277D84F90];
    v58 = *(MEMORY[0x277D858B8] + 4);
    v59 = swift_task_alloc();
    *(v0 + 496) = v59;
    *v59 = v0;
    v59[1] = sub_254145CBC;
    v60 = *(v0 + 288);
    v61 = *(v0 + 272);

    return MEMORY[0x2822005A8](v0 + 24, 0, 0, v61, v0 + 32);
  }
}

uint64_t sub_254145B2C()
{
  v26 = v0[58];
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[50];
  v3 = v0[51];
  v6 = v0[48];
  v5 = v0[49];
  v7 = v0[47];
  v9 = v0[43];
  v8 = v0[44];
  v10 = v0[42];
  v13 = v0[41];
  v14 = v0[40];
  v15 = v0[38];
  v16 = v0[36];
  v17 = v0[33];
  v18 = v0[30];
  v19 = v0[27];
  v20 = v0[24];
  v21 = v0[23];
  v22 = v0[20];
  v23 = v0[19];
  v24 = v0[18];
  v25 = v0[17];

  v11 = v0[1];

  return v11();
}

uint64_t sub_254145CBC()
{
  v2 = *(*v1 + 496);
  v5 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v3 = sub_254146FA8;
  }

  else
  {
    v3 = sub_254145DD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_254145DD0()
{
  v221 = v0;
  v1 = v0 + 24;
  v2 = *(v0 + 24);
  if (!v2)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
LABEL_7:
    v31 = *(v0 + 112) + *(*(v0 + 312) + 28);
    if ((*(v31 + 8) & 1) != 0 || (v32 = *(v0 + 488), *v31 >= *(v32 + 16)))
    {
      v47 = *(v0 + 304);
      v48 = *(v0 + 424) + 8;
      (*(v0 + 472))(*(v0 + 440), *(v0 + 416));
      sub_254148DC4(v47, type metadata accessor for CKQueryAsyncSequence);
      v49 = *(v0 + 488);
LABEL_41:
      v109 = *(v0 + 432);
      v108 = *(v0 + 440);
      v110 = *(v0 + 400);
      v111 = *(v0 + 408);
      v113 = *(v0 + 384);
      v112 = *(v0 + 392);
      v114 = *(v0 + 376);
      v116 = *(v0 + 344);
      v115 = *(v0 + 352);
      v117 = *(v0 + 336);
      v180 = *(v0 + 328);
      v182 = *(v0 + 320);
      v184 = *(v0 + 304);
      v186 = *(v0 + 288);
      v188 = *(v0 + 264);
      v190 = *(v0 + 240);
      v192 = *(v0 + 216);
      v194 = *(v0 + 192);
      v197 = *(v0 + 184);
      v202 = *(v0 + 160);
      v207 = *(v0 + 152);
      v214 = *(v0 + 144);
      v219 = *(v0 + 136);
      **(v0 + 96) = v49;

      v118 = *(v0 + 8);
LABEL_53:

      return v118();
    }

    v33 = sub_2541A5378(*v31, v32);
    v1 = v34;
    v36 = v35;
    v38 = v37;
    v39 = *(v0 + 488);
    if ((v37 & 1) == 0)
    {
      v40 = *(v0 + 488);

LABEL_11:
      v41 = *(v0 + 472);
      v42 = *(v0 + 440);
      v43 = *(v0 + 416);
      v44 = *(v0 + 424);
      sub_254168B50(v33, v1, v36, v38);
      v46 = v45;
      swift_unknownObjectRelease();
      v41(v42, v43);
LABEL_40:
      v107 = *(v0 + 488);
      sub_254148DC4(*(v0 + 304), type metadata accessor for CKQueryAsyncSequence);

      v49 = v46;
      goto LABEL_41;
    }

    sub_25424EAD8();
    swift_unknownObjectRetain_n();

    v104 = swift_dynamicCastClass();
    if (!v104)
    {
      swift_unknownObjectRelease();
      v104 = MEMORY[0x277D84F90];
    }

    v105 = *(v104 + 16);

    if (!__OFSUB__(v38 >> 1, v36))
    {
      if (v105 == (v38 >> 1) - v36)
      {
        v46 = swift_dynamicCastClass();
        if (!v46)
        {
          swift_unknownObjectRelease();
          v46 = MEMORY[0x277D84F90];
        }

        v106 = *(v0 + 424) + 8;
        (*(v0 + 472))(*(v0 + 440), *(v0 + 416));
        swift_unknownObjectRelease();
        goto LABEL_40;
      }

      goto LABEL_63;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v3 = *(v0 + 504);
  sub_25424E1E8();
  v4 = v3;
  if (v3)
  {
    (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));

    v5 = *(v0 + 144);
    v6 = *(v0 + 120);
    *(v0 + 40) = v4;
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
    if (swift_dynamicCast())
    {
      v8 = *(v0 + 400);
      v9 = *(v0 + 344);
      v11 = *(v0 + 136);
      v10 = *(v0 + 144);
      v13 = *(v0 + 120);
      v12 = *(v0 + 128);
      v14 = *(v0 + 112);

      (*(v12 + 32))(v11, v10, v13);
      sub_25421A334(v8);
      sub_254148AB4(v14, v9, type metadata accessor for EncryptionKeyQuery);
      v15 = sub_25424DA88();
      v16 = sub_25424E408();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v0 + 480);
      if (v17)
      {
        v19 = *(v0 + 416);
        v217 = *(v0 + 400);
        v20 = *(v0 + 368);
        v211 = *(v0 + 360);
        v21 = *(v0 + 344);
        v22 = *(v0 + 312);
        v23 = *(v0 + 480);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v220[0] = v25;
        *v24 = 136446210;
        v26 = *(v22 + 24);
        sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v27 = sub_25424EA58();
        v29 = v28;
        sub_254148DC4(v21, type metadata accessor for EncryptionKeyQuery);
        v30 = sub_2542203C4(v27, v29, v220);

        *(v24 + 4) = v30;
        _os_log_impl(&dword_254124000, v15, v16, "[%{public}s] Canceled", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v25);
        MEMORY[0x259C07330](v25, -1, -1);
        MEMORY[0x259C07330](v24, -1, -1);

        v23(v217, v211);
      }

      else
      {
        v82 = *(v0 + 400);
        v83 = *(v0 + 360);
        v84 = *(v0 + 368);
        v85 = *(v0 + 344);

        sub_254148DC4(v85, type metadata accessor for EncryptionKeyQuery);
        v18(v82, v83);
      }

      v213 = *(v0 + 488);
      v86 = *(v0 + 472);
      v87 = *(v0 + 440);
      v88 = *(v0 + 416);
      v89 = *(v0 + 424);
      v90 = *(v0 + 304);
      v91 = *(v0 + 128);
      v92 = *(v0 + 136);
      v93 = *(v0 + 120);
      sub_254148E24(&qword_27F5B90E0, MEMORY[0x277D85678]);
      swift_allocError();
      (*(v91 + 16))(v94, v92, v93);
      swift_willThrow();
      (*(v91 + 8))(v92, v93);
      v86(v87, v88);
      sub_254148DC4(v90, type metadata accessor for CKQueryAsyncSequence);

LABEL_52:

      v168 = *(v0 + 432);
      v167 = *(v0 + 440);
      v170 = *(v0 + 400);
      v169 = *(v0 + 408);
      v172 = *(v0 + 384);
      v171 = *(v0 + 392);
      v173 = *(v0 + 376);
      v174 = *(v0 + 344);
      v175 = *(v0 + 352);
      v176 = *(v0 + 336);
      v179 = *(v0 + 328);
      v181 = *(v0 + 320);
      v183 = *(v0 + 304);
      v185 = *(v0 + 288);
      v187 = *(v0 + 264);
      v189 = *(v0 + 240);
      v191 = *(v0 + 216);
      v193 = *(v0 + 192);
      v195 = *(v0 + 184);
      v199 = *(v0 + 160);
      v205 = *(v0 + 152);
      v210 = *(v0 + 144);
      v216 = *(v0 + 136);

      v118 = *(v0 + 8);
      goto LABEL_53;
    }

    *(v0 + 48) = v4;
    v55 = v4;
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v56 = *(v0 + 56);
      *(v0 + 64) = v56;
      sub_254148E24(&unk_27F5B8E40, type metadata accessor for CKError);
      sub_25424D358();
      if (*(v0 + 72) == 28)
      {
        v57 = *(v0 + 392);
        v58 = *(v0 + 336);
        v59 = *(v0 + 112);

        sub_25421A334(v57);
        sub_254148AB4(v59, v58, type metadata accessor for EncryptionKeyQuery);
        v60 = v56;
        v61 = sub_25424DA88();
        v62 = sub_25424E408();

        v63 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 480);
        if (v63)
        {
          v200 = *(v0 + 416);
          v218 = *(v0 + 392);
          v206 = *(v0 + 368);
          v212 = *(v0 + 360);
          v65 = *(v0 + 336);
          v66 = *(v0 + 312);
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v220[0] = v196;
          *v67 = 136446466;
          v69 = *(v66 + 24);
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v70 = sub_25424EA58();
          v201 = v64;
          v72 = v71;
          sub_254148DC4(v65, type metadata accessor for EncryptionKeyQuery);
          v73 = sub_2542203C4(v70, v72, v220);

          *(v67 + 4) = v73;
          *(v67 + 12) = 2114;
          v74 = v60;
          v75 = _swift_stdlib_bridgeErrorToNSError();
          *(v67 + 14) = v75;
          *v68 = v75;
          v76 = "[%{public}s] Found user-deleted zone: %{public}@";
LABEL_45:
          _os_log_impl(&dword_254124000, v61, v62, v76, v67, 0x16u);
          sub_254132E5C(v68, &unk_27F5BBED0, &qword_254253F80);
          MEMORY[0x259C07330](v68, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v196);
          MEMORY[0x259C07330](v196, -1, -1);
          MEMORY[0x259C07330](v67, -1, -1);

          v201(v218, v212);
LABEL_58:

          goto LABEL_7;
        }

        v131 = *(v0 + 392);
        v132 = *(v0 + 360);
        v133 = *(v0 + 368);
        v134 = *(v0 + 336);
        goto LABEL_57;
      }

      *(v0 + 80) = v56;
      sub_25424D358();
      if (*(v0 + 88) == 26)
      {
        v119 = *(v0 + 384);
        v120 = *(v0 + 328);
        v121 = *(v0 + 112);

        sub_25421A334(v119);
        sub_254148AB4(v121, v120, type metadata accessor for EncryptionKeyQuery);
        v60 = v56;
        v61 = sub_25424DA88();
        v62 = sub_25424E408();

        v122 = os_log_type_enabled(v61, v62);
        v64 = *(v0 + 480);
        if (v122)
        {
          v203 = *(v0 + 416);
          v218 = *(v0 + 384);
          v208 = *(v0 + 368);
          v212 = *(v0 + 360);
          v123 = *(v0 + 328);
          v124 = *(v0 + 312);
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v220[0] = v196;
          *v67 = 136446466;
          v125 = *(v124 + 24);
          sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
          v126 = sub_25424EA58();
          v201 = v64;
          v128 = v127;
          sub_254148DC4(v123, type metadata accessor for EncryptionKeyQuery);
          v129 = sub_2542203C4(v126, v128, v220);

          *(v67 + 4) = v129;
          *(v67 + 12) = 2114;
          v74 = v60;
          v130 = _swift_stdlib_bridgeErrorToNSError();
          *(v67 + 14) = v130;
          *v68 = v130;
          v76 = "[%{public}s] Did not find zone: %{public}@";
          goto LABEL_45;
        }

        v131 = *(v0 + 384);
        v132 = *(v0 + 360);
        v177 = *(v0 + 368);
        v134 = *(v0 + 328);
LABEL_57:

        sub_254148DC4(v134, type metadata accessor for EncryptionKeyQuery);
        v64(v131, v132);
        goto LABEL_58;
      }
    }

    v135 = *(v0 + 376);
    v136 = *(v0 + 320);
    v137 = *(v0 + 112);

    sub_25421A334(v135);
    sub_254148AB4(v137, v136, type metadata accessor for EncryptionKeyQuery);
    v138 = v4;
    v139 = sub_25424DA88();
    v140 = sub_25424E428();

    v141 = os_log_type_enabled(v139, v140);
    v142 = *(v0 + 480);
    if (v141)
    {
      v143 = *(v0 + 416);
      v204 = *(v0 + 368);
      v209 = *(v0 + 360);
      v215 = *(v0 + 376);
      v144 = *(v0 + 312);
      v145 = *(v0 + 320);
      v146 = swift_slowAlloc();
      v147 = swift_slowAlloc();
      v198 = v142;
      v148 = v4;
      v149 = swift_slowAlloc();
      v220[0] = v149;
      *v146 = 136446466;
      v150 = *(v144 + 24);
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v151 = sub_25424EA58();
      v153 = v152;
      sub_254148DC4(v145, type metadata accessor for EncryptionKeyQuery);
      v154 = sub_2542203C4(v151, v153, v220);

      *(v146 + 4) = v154;
      *(v146 + 12) = 2114;
      v155 = v148;
      v156 = _swift_stdlib_bridgeErrorToNSError();
      *(v146 + 14) = v156;
      *v147 = v156;
      _os_log_impl(&dword_254124000, v139, v140, "[%{public}s] Failed: %{public}@", v146, 0x16u);
      sub_254132E5C(v147, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v147, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x259C07330](v149, -1, -1);
      MEMORY[0x259C07330](v146, -1, -1);

      v198(v215, v209);
    }

    else
    {
      v158 = *(v0 + 368);
      v157 = *(v0 + 376);
      v159 = *(v0 + 360);
      v160 = *(v0 + 320);

      sub_254148DC4(v160, type metadata accessor for EncryptionKeyQuery);
      v142(v157, v159);
    }

    v161 = *(v0 + 488);
    v162 = *(v0 + 472);
    v163 = *(v0 + 440);
    v164 = *(v0 + 416);
    v165 = *(v0 + 424);
    v166 = *(v0 + 304);
    swift_willThrow();
    v162(v163, v164);
    sub_254148DC4(v166, type metadata accessor for CKQueryAsyncSequence);
    goto LABEL_52;
  }

  v50 = *(v0 + 168);
  v51 = *(v0 + 176);
  v52 = *(v0 + 160);
  v53 = *(v0 + 112);
  sub_254143458(v2, v52);
  if ((*(v51 + 48))(v52, 1, v50) != 1)
  {
    v77 = *(v0 + 488);
    v79 = *(v0 + 184);
    v78 = *(v0 + 192);
    sub_254148E6C(*(v0 + 160), v78, type metadata accessor for EncryptionKeyRecord);
    sub_254148AB4(v78, v79, type metadata accessor for EncryptionKeyRecord);
    v80 = swift_task_alloc();
    *(v80 + 16) = v78;
    v38 = sub_254147EEC(sub_254148ED4, v80, v77);
    v33 = v81;

    v36 = *(v0 + 488);
    if (v33)
    {
      v38 = *(v36 + 16);
      goto LABEL_25;
    }

    if (*(v36 + 16) < v38)
    {
      __break(1u);
    }

    else if ((v38 & 0x8000000000000000) == 0)
    {
LABEL_25:
      sub_254148E6C(*(v0 + 184), *(v0 + 152), type metadata accessor for EncryptionKeyRecord);
      v95 = *(v36 + 16);
      if (v95 >= v38)
      {
        v96 = *(v0 + 488);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 16) = v96;
        v98 = *(v0 + 488);
        if (!isUniquelyReferenced_nonNull_native || v95 >= *(v98 + 24) >> 1)
        {
          v98 = sub_2541B0CEC(isUniquelyReferenced_nonNull_native, v95 + 1, 1, *(v0 + 488));
          *(v0 + 16) = v98;
        }

        v99 = *(v0 + 192);
        sub_2541D0890(v38, v38, 1, *(v0 + 152));

        sub_254148DC4(v99, type metadata accessor for EncryptionKeyRecord);
        *(v0 + 488) = v98;
        goto LABEL_30;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_61;
  }

  v54 = *(v0 + 160);

  sub_254132E5C(v54, &qword_27F5B8E08, &qword_254253F60);
LABEL_30:
  v100 = *(MEMORY[0x277D858B8] + 4);
  v101 = swift_task_alloc();
  *(v0 + 496) = v101;
  *v101 = v0;
  v101[1] = sub_254145CBC;
  v102 = *(v0 + 288);
  v103 = *(v0 + 272);

  return MEMORY[0x2822005A8](v0 + 24, 0, 0, v103, v0 + 32);
}

uint64_t sub_254146FA8()
{
  v200 = v0;
  (*(*(v0 + 280) + 8))(*(v0 + 288), *(v0 + 272));
  v1 = *(v0 + 32);
  *(v0 + 40) = v1;
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 400);
    v6 = *(v0 + 344);
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 120);
    v10 = *(v0 + 128);
    v11 = *(v0 + 112);

    (*(v10 + 32))(v8, v7, v9);
    sub_25421A334(v5);
    sub_254148AB4(v11, v6, type metadata accessor for EncryptionKeyQuery);
    v12 = sub_25424DA88();
    v13 = sub_25424E408();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 480);
    if (v14)
    {
      v16 = *(v0 + 416);
      v196 = *(v0 + 400);
      v17 = *(v0 + 368);
      v190 = *(v0 + 360);
      v18 = *(v0 + 344);
      v19 = *(v0 + 312);
      v20 = *(v0 + 480);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v199[0] = v22;
      *v21 = 136446210;
      v23 = *(v19 + 24);
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v24 = sub_25424EA58();
      v26 = v25;
      sub_254148DC4(v18, type metadata accessor for EncryptionKeyQuery);
      v27 = sub_2542203C4(v24, v26, v199);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_254124000, v12, v13, "[%{public}s] Canceled", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x259C07330](v22, -1, -1);
      MEMORY[0x259C07330](v21, -1, -1);

      v20(v196, v190);
    }

    else
    {
      v52 = *(v0 + 400);
      v53 = *(v0 + 360);
      v54 = *(v0 + 368);
      v55 = *(v0 + 344);

      sub_254148DC4(v55, type metadata accessor for EncryptionKeyQuery);
      v15(v52, v53);
    }

    v192 = *(v0 + 488);
    v56 = *(v0 + 472);
    v57 = *(v0 + 440);
    v58 = *(v0 + 416);
    v59 = *(v0 + 424);
    v60 = *(v0 + 304);
    v61 = *(v0 + 128);
    v62 = *(v0 + 136);
    v63 = *(v0 + 120);
    sub_254148E24(&qword_27F5B90E0, MEMORY[0x277D85678]);
    swift_allocError();
    (*(v61 + 16))(v64, v62, v63);
    swift_willThrow();
    (*(v61 + 8))(v62, v63);
    v56(v57, v58);
    sub_254148DC4(v60, type metadata accessor for CKQueryAsyncSequence);

LABEL_20:

    v115 = *(v0 + 432);
    v114 = *(v0 + 440);
    v117 = *(v0 + 400);
    v116 = *(v0 + 408);
    v119 = *(v0 + 384);
    v118 = *(v0 + 392);
    v120 = *(v0 + 376);
    v122 = *(v0 + 344);
    v121 = *(v0 + 352);
    v123 = *(v0 + 336);
    v161 = *(v0 + 328);
    v162 = *(v0 + 320);
    v164 = *(v0 + 304);
    v166 = *(v0 + 288);
    v168 = *(v0 + 264);
    v170 = *(v0 + 240);
    v172 = *(v0 + 216);
    v174 = *(v0 + 192);
    v176 = *(v0 + 184);
    v179 = *(v0 + 160);
    v183 = *(v0 + 152);
    v188 = *(v0 + 144);
    v194 = *(v0 + 136);

    v124 = *(v0 + 8);
    goto LABEL_21;
  }

  *(v0 + 48) = v1;
  v28 = v1;
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_16;
  }

  v29 = *(v0 + 56);
  *(v0 + 64) = v29;
  sub_254148E24(&unk_27F5B8E40, type metadata accessor for CKError);
  sub_25424D358();
  if (*(v0 + 72) != 28)
  {
    *(v0 + 80) = v29;
    sub_25424D358();
    if (*(v0 + 88) == 26)
    {
      v65 = *(v0 + 384);
      v66 = *(v0 + 328);
      v67 = *(v0 + 112);

      sub_25421A334(v65);
      sub_254148AB4(v67, v66, type metadata accessor for EncryptionKeyQuery);
      v33 = v29;
      v34 = sub_25424DA88();
      v35 = sub_25424E408();

      v68 = os_log_type_enabled(v34, v35);
      v37 = *(v0 + 480);
      if (v68)
      {
        v69 = *(v0 + 416);
        v197 = *(v0 + 384);
        v186 = *(v0 + 368);
        v191 = *(v0 + 360);
        v70 = *(v0 + 328);
        v71 = *(v0 + 312);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v181 = v37;
        v43 = swift_slowAlloc();
        v199[0] = v43;
        *v41 = 136446466;
        v72 = *(v71 + 24);
        sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
        v73 = sub_25424EA58();
        v75 = v74;
        sub_254148DC4(v70, type metadata accessor for EncryptionKeyQuery);
        v76 = sub_2542203C4(v73, v75, v199);

        *(v41 + 4) = v76;
        *(v41 + 12) = 2114;
        v49 = v33;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v77;
        *v42 = v77;
        v51 = "[%{public}s] Did not find zone: %{public}@";
        goto LABEL_13;
      }

      v78 = *(v0 + 384);
      v79 = *(v0 + 360);
      v126 = *(v0 + 368);
      v81 = *(v0 + 328);
LABEL_25:

      sub_254148DC4(v81, type metadata accessor for EncryptionKeyQuery);
      v37(v78, v79);
      goto LABEL_26;
    }

LABEL_16:
    v82 = *(v0 + 376);
    v83 = *(v0 + 320);
    v84 = *(v0 + 112);

    sub_25421A334(v82);
    sub_254148AB4(v84, v83, type metadata accessor for EncryptionKeyQuery);
    v85 = v1;
    v86 = sub_25424DA88();
    v87 = sub_25424E428();

    v88 = os_log_type_enabled(v86, v87);
    v89 = *(v0 + 480);
    if (v88)
    {
      v90 = *(v0 + 416);
      v182 = *(v0 + 368);
      v187 = *(v0 + 360);
      v193 = *(v0 + 376);
      v92 = *(v0 + 312);
      v91 = *(v0 + 320);
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v178 = v89;
      v95 = v1;
      v96 = swift_slowAlloc();
      v199[0] = v96;
      *v93 = 136446466;
      v97 = *(v92 + 24);
      sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v98 = sub_25424EA58();
      v100 = v99;
      sub_254148DC4(v91, type metadata accessor for EncryptionKeyQuery);
      v101 = sub_2542203C4(v98, v100, v199);

      *(v93 + 4) = v101;
      *(v93 + 12) = 2114;
      v102 = v95;
      v103 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 14) = v103;
      *v94 = v103;
      _os_log_impl(&dword_254124000, v86, v87, "[%{public}s] Failed: %{public}@", v93, 0x16u);
      sub_254132E5C(v94, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v94, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v96);
      MEMORY[0x259C07330](v96, -1, -1);
      MEMORY[0x259C07330](v93, -1, -1);

      v178(v193, v187);
    }

    else
    {
      v105 = *(v0 + 368);
      v104 = *(v0 + 376);
      v106 = *(v0 + 360);
      v107 = *(v0 + 320);

      sub_254148DC4(v107, type metadata accessor for EncryptionKeyQuery);
      v89(v104, v106);
    }

    v108 = *(v0 + 488);
    v109 = *(v0 + 472);
    v110 = *(v0 + 440);
    v111 = *(v0 + 416);
    v112 = *(v0 + 424);
    v113 = *(v0 + 304);
    swift_willThrow();
    v109(v110, v111);
    sub_254148DC4(v113, type metadata accessor for CKQueryAsyncSequence);
    goto LABEL_20;
  }

  v30 = *(v0 + 392);
  v31 = *(v0 + 336);
  v32 = *(v0 + 112);

  sub_25421A334(v30);
  sub_254148AB4(v32, v31, type metadata accessor for EncryptionKeyQuery);
  v33 = v29;
  v34 = sub_25424DA88();
  v35 = sub_25424E408();

  v36 = os_log_type_enabled(v34, v35);
  v37 = *(v0 + 480);
  if (!v36)
  {
    v78 = *(v0 + 392);
    v79 = *(v0 + 360);
    v80 = *(v0 + 368);
    v81 = *(v0 + 336);
    goto LABEL_25;
  }

  v38 = *(v0 + 416);
  v197 = *(v0 + 392);
  v185 = *(v0 + 368);
  v191 = *(v0 + 360);
  v39 = *(v0 + 336);
  v40 = *(v0 + 312);
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v181 = v37;
  v43 = swift_slowAlloc();
  v199[0] = v43;
  *v41 = 136446466;
  v44 = *(v40 + 24);
  sub_254148E24(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
  v45 = sub_25424EA58();
  v47 = v46;
  sub_254148DC4(v39, type metadata accessor for EncryptionKeyQuery);
  v48 = sub_2542203C4(v45, v47, v199);

  *(v41 + 4) = v48;
  *(v41 + 12) = 2114;
  v49 = v33;
  v50 = _swift_stdlib_bridgeErrorToNSError();
  *(v41 + 14) = v50;
  *v42 = v50;
  v51 = "[%{public}s] Found user-deleted zone: %{public}@";
LABEL_13:
  _os_log_impl(&dword_254124000, v34, v35, v51, v41, 0x16u);
  sub_254132E5C(v42, &unk_27F5BBED0, &qword_254253F80);
  MEMORY[0x259C07330](v42, -1, -1);
  __swift_destroy_boxed_opaque_existential_1(v43);
  MEMORY[0x259C07330](v43, -1, -1);
  MEMORY[0x259C07330](v41, -1, -1);

  v181(v197, v191);
LABEL_26:

  v127 = *(v0 + 112) + *(*(v0 + 312) + 28);
  if ((*(v127 + 8) & 1) == 0)
  {
    v128 = *(v0 + 488);
    if (*v127 < *(v128 + 16))
    {
      v129 = sub_2541A5378(*v127, v128);
      v131 = v130;
      v133 = v132;
      v135 = v134;
      v136 = *(v0 + 488);
      if (v134)
      {
        sub_25424EAD8();
        swift_unknownObjectRetain_n();

        v147 = swift_dynamicCastClass();
        if (!v147)
        {
          swift_unknownObjectRelease();
          v147 = MEMORY[0x277D84F90];
        }

        v148 = *(v147 + 16);

        if (__OFSUB__(v135 >> 1, v133))
        {
          __break(1u);
        }

        else if (v148 == (v135 >> 1) - v133)
        {
          v143 = swift_dynamicCastClass();
          if (!v143)
          {
            swift_unknownObjectRelease();
            v143 = MEMORY[0x277D84F90];
          }

          v149 = *(v0 + 424) + 8;
          (*(v0 + 472))(*(v0 + 440), *(v0 + 416));
          swift_unknownObjectRelease();
          goto LABEL_39;
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v137 = *(v0 + 488);
      }

      v138 = *(v0 + 472);
      v139 = *(v0 + 440);
      v140 = *(v0 + 416);
      v141 = *(v0 + 424);
      sub_254168B50(v129, v131, v133, v135);
      v143 = v142;
      swift_unknownObjectRelease();
      v138(v139, v140);
LABEL_39:
      v150 = *(v0 + 488);
      sub_254148DC4(*(v0 + 304), type metadata accessor for CKQueryAsyncSequence);

      v146 = v143;
      goto LABEL_40;
    }
  }

  v144 = *(v0 + 304);
  v145 = *(v0 + 424) + 8;
  (*(v0 + 472))(*(v0 + 440), *(v0 + 416));
  sub_254148DC4(v144, type metadata accessor for CKQueryAsyncSequence);
  v146 = *(v0 + 488);
LABEL_40:
  v152 = *(v0 + 432);
  v151 = *(v0 + 440);
  v153 = *(v0 + 400);
  v154 = *(v0 + 408);
  v156 = *(v0 + 384);
  v155 = *(v0 + 392);
  v157 = *(v0 + 376);
  v159 = *(v0 + 344);
  v158 = *(v0 + 352);
  v160 = *(v0 + 336);
  v163 = *(v0 + 328);
  v165 = *(v0 + 320);
  v167 = *(v0 + 304);
  v169 = *(v0 + 288);
  v171 = *(v0 + 264);
  v173 = *(v0 + 240);
  v175 = *(v0 + 216);
  v177 = *(v0 + 192);
  v180 = *(v0 + 184);
  v184 = *(v0 + 160);
  v189 = *(v0 + 152);
  v195 = *(v0 + 144);
  v198 = *(v0 + 136);
  **(v0 + 96) = v146;

  v124 = *(v0 + 8);
LABEL_21:

  return v124();
}

uint64_t sub_254147EEC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for EncryptionKeyRecord() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

char *sub_254147FD8(char *a1, int64_t a2, char a3)
{
  result = sub_254148278(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_254147FF8(void *a1, int64_t a2, char a3)
{
  result = sub_25414838C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_254148040()
{
  sub_25424D948();
  if (v0 <= 0x3F)
  {
    sub_25414810C();
    if (v1 <= 0x3F)
    {
      sub_25414815C();
      if (v2 <= 0x3F)
      {
        sub_2541481B4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25414810C()
{
  if (!qword_27F5B8D90)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B8D90);
    }
  }
}

void sub_25414815C()
{
  if (!qword_27F5B8D98)
  {
    type metadata accessor for QualityOfService(255);
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B8D98);
    }
  }
}

unint64_t sub_2541481B4()
{
  result = qword_27F5B8DA0;
  if (!qword_27F5B8DA0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5B8DA0);
  }

  return result;
}

size_t sub_254148218(size_t a1, int64_t a2, char a3)
{
  result = sub_2541486AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254148238(char *a1, int64_t a2, char a3)
{
  result = sub_25414889C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254148258(char *a1, int64_t a2, char a3)
{
  result = sub_2541489A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_254148278(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DA8, &qword_254253EE0);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_25414838C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD8, &unk_254253F10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DE0, &qword_2542545E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2541484D4(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DC0, &qword_254253EF8);
  v10 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for EventQuery.FetchedRecordInfo(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_2541486AC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DC8, &unk_254253F00);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8DD0, &qword_2542545A0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_25414889C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DB0, &qword_254253EE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2541489A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9270, &qword_254253EF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_254148AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_254148B1C(void *a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_254148B74(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for EncryptionKeyQuery() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_25424D8B8() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25412F818;

  return sub_2541441C0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_254148CC4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25412F724;

  return sub_254144C18(a1, a2, v6);
}

uint64_t sub_254148D7C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_254148DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_254148E24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_254148E6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_254148ED4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for EncryptionKeyRecord() + 24);
  return sub_25424D838() & 1;
}

void sub_254148F78(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  sub_25424EC68();
  if (!v1)
  {
    v9[15] = 1;
    sub_25414AD7C();
    sub_25424E978();
    (*(v4 + 8))(v7, v3);
  }
}

void sub_254149240(void *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v13[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  v12 = sub_25424EC68();
  if (!v3)
  {
    v14 = 1;
    a2(v12);
    sub_25424E978();
    (*(v7 + 8))(v10, v6);
  }
}

HomeKitEvents::LockEvent::State_optional __swiftcall LockEvent.State.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t LockEvent.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LockEvent();
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LockEvent()
{
  result = qword_27F5B8EE8;
  if (!qword_27F5B8EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LockEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LockEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_2541495AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t LockEvent.roomName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LockEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LockEvent.accessoryName.getter()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LockEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t sub_254149770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL static LockEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    return 0;
  }

  v4 = type metadata accessor for LockEvent();
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t LockEvent.hash(into:)()
{
  v1 = v0;
  v2 = sub_25424D948();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v24 - v9;
  sub_25424D8B8();
  sub_25414A784(&qword_27F5B89C0, MEMORY[0x277CC9578]);
  sub_25424DC28();
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  sub_25414A784(&qword_27F5B89A8, MEMORY[0x277CC95F0]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254254298[*(v1 + *(v11 + 24))]);
  v13 = type metadata accessor for AccessoryEventBase(0);
  v14 = v1 + v13[5];
  sub_25424DC28();
  v15 = (v1 + v13[6]);
  v16 = *v15;
  v17 = v15[1];
  sub_25424DD88();
  v18 = v1 + v13[7];
  sub_25424DC28();
  v19 = (v1 + v13[8]);
  v20 = *v19;
  v21 = v19[1];
  sub_25424DD88();
  sub_254149770(v1 + v13[9], v10);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v3 + 8))(v6, v2);
  }

  v22 = type metadata accessor for LockEvent();
  return MEMORY[0x259C06AA0](*(v1 + *(v22 + 20)));
}

uint64_t LockEvent.hashValue.getter()
{
  sub_25424EBD8();
  LockEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_254149B60@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254149BDC()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_254149C34()
{
  v1 = (v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_254149C74@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t sub_254149CE0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_254149D60()
{
  sub_25424EBD8();
  LockEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_254149DA4()
{
  sub_25424EBD8();
  LockEvent.hash(into:)();
  return sub_25424EC28();
}

uint64_t LockEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11)
{
  v30 = *a10;
  v17 = sub_25424D8B8();
  (*(*(v17 - 8) + 32))(a9, a1, v17);
  v18 = type metadata accessor for EventBase(0);
  v19 = v18[5];
  v20 = sub_25424D948();
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a2, v20);
  *(a9 + v18[6]) = 0;
  v22 = (a9 + v18[7]);
  *v22 = 15;
  v23 = type metadata accessor for AccessoryEventBase(0);
  v22[1] = 0;
  v22[2] = 0;
  v21(a9 + v23[5], a3, v20);
  v24 = (a9 + v23[6]);
  *v24 = a4;
  v24[1] = a5;
  v21(a9 + v23[7], a6, v20);
  v25 = (a9 + v23[8]);
  *v25 = a7;
  v25[1] = a8;
  sub_25414A348(a11, a9 + v23[9]);
  result = type metadata accessor for LockEvent();
  *(a9 + *(result + 20)) = v30;
  return result;
}

uint64_t LockEvent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessoryEventBaseLegacy(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v12);
  sub_254231924(v12, v8);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_254149240(a1, sub_25414A84C, v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v10 = v12[0];
  sub_25414A414(v8, a2);
  result = type metadata accessor for LockEvent();
  *(a2 + *(result + 20)) = v10;
  return result;
}

uint64_t LockEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  result = sub_254231F94(a1);
  if (!v2)
  {
    v11[15] = *(v1 + *(type metadata accessor for LockEvent() + 20));
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_25412F1C4();
    sub_25424EC78();
    v11[14] = 1;
    sub_25414A478();
    sub_25424EA18();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_25414A348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25414A3B8(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryEventBaseLegacy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25414A414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryEventBaseLegacy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25414A478()
{
  result = qword_27F5B8E68;
  if (!qword_27F5B8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8E68);
  }

  return result;
}

unint64_t sub_25414A4D0()
{
  result = qword_27F5B8E70;
  if (!qword_27F5B8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8E70);
  }

  return result;
}

unint64_t sub_25414A528()
{
  result = qword_27F5B8E78;
  if (!qword_27F5B8E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B8E80, &qword_254254028);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8E78);
  }

  return result;
}

unint64_t sub_25414A590()
{
  result = qword_27F5B8E88;
  if (!qword_27F5B8E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8E88);
  }

  return result;
}

uint64_t sub_25414A5E4(void *a1)
{
  a1[1] = sub_25414A784(&qword_27F5B8E98, type metadata accessor for LockEvent);
  a1[2] = sub_25414A784(&qword_27F5B8EA0, type metadata accessor for LockEvent);
  result = sub_25414A784(&qword_27F5B8EA8, type metadata accessor for LockEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25414A6D8(void *a1)
{
  a1[1] = sub_25414A784(&qword_27F5B8EB8, type metadata accessor for LockEvent);
  a1[2] = sub_25414A784(&qword_27F5B8EC0, type metadata accessor for LockEvent);
  result = sub_25414A784(&qword_27F5B8EC8, type metadata accessor for LockEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25414A784(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25414A814(void *a1)
{
  a1[1] = sub_25414A84C();
  a1[2] = sub_25414A478();
  result = sub_25414A8A0();
  a1[3] = result;
  return result;
}

unint64_t sub_25414A84C()
{
  result = qword_27F5B8ED0;
  if (!qword_27F5B8ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8ED0);
  }

  return result;
}

unint64_t sub_25414A8A0()
{
  result = qword_27F5B8ED8;
  if (!qword_27F5B8ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8ED8);
  }

  return result;
}

unint64_t sub_25414A8F4(uint64_t a1)
{
  result = sub_25414A91C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25414A91C()
{
  result = qword_27F5B8EE0;
  if (!qword_27F5B8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8EE0);
  }

  return result;
}

unint64_t sub_25414A970(uint64_t a1)
{
  result = sub_25414A590();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25414A9C0()
{
  result = type metadata accessor for AccessoryEventBaseLegacy(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LockEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25414AB84()
{
  result = qword_27F5B8EF8;
  if (!qword_27F5B8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8EF8);
  }

  return result;
}

unint64_t sub_25414ABD8()
{
  result = qword_27F5B8F08;
  if (!qword_27F5B8F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F08);
  }

  return result;
}

unint64_t sub_25414AC2C()
{
  result = qword_27F5B8F10;
  if (!qword_27F5B8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F10);
  }

  return result;
}

unint64_t sub_25414AC80()
{
  result = qword_27F5B8F18;
  if (!qword_27F5B8F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F18);
  }

  return result;
}

unint64_t sub_25414ACD4()
{
  result = qword_27F5B8F20;
  if (!qword_27F5B8F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F20);
  }

  return result;
}

unint64_t sub_25414AD28()
{
  result = qword_27F5B8F28;
  if (!qword_27F5B8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F28);
  }

  return result;
}

unint64_t sub_25414AD7C()
{
  result = qword_27F5B8F30;
  if (!qword_27F5B8F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F30);
  }

  return result;
}

unint64_t sub_25414ADD0()
{
  result = qword_27F5B8F38;
  if (!qword_27F5B8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B8F38);
  }

  return result;
}

void sub_25414AE28(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher);
  *(v1 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FD0, &qword_254254308);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2542542D0;
  *(v4 + 32) = type metadata accessor for CloudKitQueryLogEvent();
  *(v4 + 40) = type metadata accessor for EventsAsyncSequenceLogEvent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FD8, &qword_254254310);
  v5 = sub_25424DF88();

  [a1 addObserver:v1 forEventClasses:v5];
}

void sub_25414AFD8(char *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (*(v4 + 16))
  {
    v5 = sub_2542209D4(&a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_queryIdentifier]);
    if (v6)
    {
      v29 = *(*(v4 + 56) + 8 * v5);
      os_unfair_lock_unlock((v3 + 24));
      if (!v29)
      {
        return;
      }

      v7 = [a1 error];
      if (v7)
      {

        v8 = v29;
        v9 = [a1 error];
        if (v9)
        {
          v10 = v9;
          v11 = sub_25424D398();
        }

        else
        {
          v11 = 0;
        }

        [v8 setError_];
      }

      v12 = *&a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_numFetchedRecords];
      v13 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords];
      v14 = __OFADD__(v13, v12);
      v15 = v13 + v12;
      if (v14)
      {
        __break(1u);
      }

      else
      {
        *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numFetchedCKRecords] = v15;
        v16 = *&a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_totalRecordSize];
        v17 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize];
        v14 = __OFADD__(v17, v16);
        v18 = v17 + v16;
        if (!v14)
        {
          *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_totalCKRecordSize] = v18;
          [a1 startTime];
          v19 = v29;
          v21 = &v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionEndTime];
          *v21 = v20;
          *(v21 + 8) = 0;
          LODWORD(v21) = a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state];
          if (v21 > 4)
          {
            if (a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] > 6u)
            {
              if (v21 != 7)
              {
                if (v21 == 8)
                {
                  v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultProcessingEncounteredError;
                }

                else
                {
                  v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryEncounteredError;
                }

                goto LABEL_39;
              }

              goto LABEL_33;
            }

LABEL_28:
            if (v21 == 5)
            {
              v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryDroppedEvents;
            }

            else
            {
              v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryTerminatedStream;
            }

            goto LABEL_39;
          }

          if (a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state] > 1u)
          {
            if (v21 != 2)
            {
              if (v21 == 3)
              {
                v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryCancelled;
              }

              else
              {
                v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryReachedLimit;
              }

              goto LABEL_39;
            }

            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded;
            v27 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueriesSucceeded];
            v14 = __OFADD__(v27, 1);
            v26 = v27 + 1;
            if (!v14)
            {
LABEL_37:
              *&v19[v21] = v26;
LABEL_40:

              return;
            }

            __break(1u);
LABEL_33:
            v22 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryResultNotHandled;
LABEL_39:
            v19[*v22] = 1;
            goto LABEL_40;
          }

          if (!a1[OBJC_IVAR____TtC13HomeKitEvents21CloudKitQueryLogEvent_state])
          {
            [a1 startTime];
            v19 = v29;
            v23 = &v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_ckQueryExecutionStartTime];
            *v23 = v24;
            v23[8] = 0;
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries;
            v25 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries];
            v14 = __OFADD__(v25, 1);
            v26 = v25 + 1;
            if (!v14)
            {
              goto LABEL_37;
            }

            __break(1u);
            goto LABEL_28;
          }

          v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries;
          v28 = *&v29[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numCKQueries];
          v14 = __OFADD__(v28, 1);
          v26 = v28 + 1;
          if (!v14)
          {
            goto LABEL_37;
          }

LABEL_45:
          __break(1u);
          return;
        }
      }

      __break(1u);
      goto LABEL_45;
    }
  }

  os_unfair_lock_unlock((v3 + 24));
}

void sub_25414B2E8(char *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  if (*(v5 + 16) && (v6 = sub_2542209D4(&a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier]), (v7 & 1) != 0))
  {
    v34 = *(*(v5 + 56) + 8 * v6);
    os_unfair_lock_unlock((v4 + 24));
    if (v34)
    {
      v8 = *&a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents];
      v9 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents];
      v10 = __OFADD__(v9, v8);
      v11 = v9 + v8;
      if (v10)
      {
        __break(1u);
LABEL_51:
        __break(1u);
      }

      else
      {
        *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEmittedEvents] = v11;
        v12 = [a1 error];
        if (v12)
        {

          v13 = v34;
          v14 = [a1 error];
          if (v14)
          {
            v15 = v14;
            v16 = sub_25424D398();
          }

          else
          {
            v16 = 0;
          }

          [v13 setError_];
        }

        v17 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_succeeded;
        v18 = v34;
        switch(a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state])
        {
          case 1:
            goto LABEL_33;
          case 2:
            goto LABEL_25;
          case 3:
            goto LABEL_38;
          case 4:
            goto LABEL_42;
          case 5:
            v30 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingTerminatedStream;
            goto LABEL_46;
          case 6:
            v30 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingResultNotHandled;
            goto LABEL_46;
          case 7:
            goto LABEL_29;
          case 8:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords;
            v33 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords];
            v10 = __OFADD__(v33, 1);
            v23 = v33 + 1;
            if (v10)
            {
              goto LABEL_51;
            }

            goto LABEL_44;
          case 9:
            goto LABEL_22;
          case 10:
            v27 = *&a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords];
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents;
            v28 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numProcessedEvents];
            v10 = __OFADD__(v28, v27);
            v23 = v28 + v27;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_29:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords;
            v29 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords];
            v10 = __OFADD__(v29, 1);
            v23 = v29 + 1;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_32:
            v17 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingEncounteredError;
            goto LABEL_33;
          case 11:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords;
            v32 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords];
            v10 = __OFADD__(v32, 1);
            v23 = v32 + 1;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_42:
            v30 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingDroppedEvents;
            goto LABEL_46;
          case 12:
          case 17:
            goto LABEL_47;
          case 13:
            goto LABEL_19;
          case 14:
            goto LABEL_32;
          case 15:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords;
            v22 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNoCreationDateRecords];
            v10 = __OFADD__(v22, 1);
            v23 = v22 + 1;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_19:
            v24 = *&a1[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents];
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache;
            v25 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numEventsSavedToCache];
            v10 = __OFADD__(v25, v24);
            v23 = v25 + v24;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_22:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords;
            v26 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredNonUUIDNameRecords];
            v10 = __OFADD__(v26, 1);
            v23 = v26 + 1;
            if (v10)
            {
              __break(1u);
LABEL_25:
              v17 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_cancelled;
LABEL_33:
              v34[*v17] = 1;
              [*(v2 + OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logSubmitter) submitLogEvent_];
              os_unfair_lock_lock((v4 + 24));
              sub_25414B69C((v4 + 16), a1);
              os_unfair_lock_unlock((v4 + 24));
              v18 = v35;
            }

            else
            {
LABEL_44:
              *&v34[v21] = v23;
            }

LABEL_47:

            break;
          case 16:
            v21 = OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords;
            v31 = *&v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_numIgnoredExpiredRecords];
            v10 = __OFADD__(v31, 1);
            v23 = v31 + 1;
            if (!v10)
            {
              goto LABEL_44;
            }

            __break(1u);
LABEL_38:
            v30 = &OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_processingReachedLimit;
LABEL_46:
            v34[*v30] = 1;
            goto LABEL_47;
          default:
            [a1 startTime];
            v18 = v34;
            v19 = &v34[OBJC_IVAR____TtC13HomeKitEvents13QueryLogEvent_queryStartTime];
            *v19 = v20;
            v19[8] = 0;
            goto LABEL_47;
        }
      }
    }
  }

  else
  {

    os_unfair_lock_unlock((v4 + 24));
  }
}

unint64_t sub_25414B69C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = sub_2542209D4(a2 + OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier);
  if (v5)
  {
    v6 = result;
    v7 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_254222CC4();
      v9 = v12;
    }

    v10 = *(v9 + 48);
    v11 = sub_25424D948();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v6, v11);

    result = sub_25414BB1C(v6, v9);
    *a1 = v9;
  }

  return result;
}

id sub_25414B7A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for QueryMetricsObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25414B868(int64_t a1, uint64_t a2)
{
  v4 = sub_25424E848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_25424E608();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_25424DC18();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25414BB1C(int64_t a1, uint64_t a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_25424E608();
    v15 = v13;
    v39 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = *(v16 + 56);
    v37 = (v16 - 8);
    v38 = v17;
    do
    {
      v18 = v10;
      v19 = v40 * v12;
      v20 = v15;
      v21 = v16;
      v38(v9, *(a2 + 48) + v40 * v12, v4);
      v22 = *(a2 + 40);
      sub_25414BDD4();
      v23 = sub_25424DC18();
      result = (*v37)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v39)
      {
        if (v24 >= v39 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v40 * a1;
          v28 = v27 + v19 + v40;
          v29 = v40 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v40 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v12);
          if (a1 != v12 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v39 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25414BDD4()
{
  result = qword_27F5B89A8;
  if (!qword_27F5B89A8)
  {
    sub_25424D948();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B89A8);
  }

  return result;
}

id sub_25414BE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  (*(v10 + 32))(&v20 - v15);
  v17 = objc_allocWithZone(type metadata accessor for QueryMetricsObserver());
  (*(v10 + 16))(v14, v16, a4);
  v18 = sub_25414BF88(v14, a2, v17, a4, a5, a6);
  (*(v10 + 8))(v16, a4);
  return v18;
}

id sub_25414BF88(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[3] = a4;
  v16[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v11 = OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_pendingQueryLogEvents;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5B8FE0, &qword_254254318);
  v12 = swift_allocObject();
  *(v12 + 24) = 0;
  *(v12 + 16) = MEMORY[0x277D84F98];
  *&a3[v11] = v12;
  *&a3[OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logEventDispatcher] = 0;
  sub_254140708(v16, &a3[OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_features]);
  *&a3[OBJC_IVAR____TtC13HomeKitEvents20QueryMetricsObserver_logSubmitter] = a2;
  v15.receiver = a3;
  v15.super_class = type metadata accessor for QueryMetricsObserver();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t static HMVCommands.createFakeEvents(date:homeIdentifier:count:scope:uploadOnly:saveOnly:skipZoneCreation:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5, char a6, char a7)
{
  *(v7 + 66) = a7;
  *(v7 + 65) = a6;
  *(v7 + 64) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  *(v7 + 67) = *a4;
  return MEMORY[0x2822009F8](sub_25414C0C8, 0, 0);
}

uint64_t sub_25414C0C8()
{
  v1 = *(v0 + 67);
  v2 = *(v0 + 66);
  v3 = *(v0 + 65);
  v4 = *(v0 + 64);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *(v6 + 16) = *(v0 + 16);
  *(v6 + 32) = v5;
  *(v6 + 40) = v1;
  *(v6 + 41) = v4;
  *(v6 + 42) = v3;
  *(v6 + 43) = v2;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_25414C1D4;

  return sub_25412FDA0();
}

uint64_t sub_25414C1D4()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_25414C2F0;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25414C2F0()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

void sub_25414C354(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, char a9)
{
  v14 = sub_25424D818();
  v15 = sub_25424D8E8();
  aBlock[4] = sub_25414C6C4;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2541ED26C;
  aBlock[3] = &block_descriptor_1;
  v16 = _Block_copy(aBlock);

  LOBYTE(v17) = a9;
  [a1 hmvutilCreateFakeEventsWithDate:v14 homeIdentifier:v15 count:a5 scope:(a6 & 1u) + 1 uploadOnly:a7 & 1 saveOnly:a8 & 1 skipZoneCreation:v17 reply:v16];

  _Block_release(v16);
}

uint64_t sub_25414C4CC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  if (a1)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v9 = sub_25424E128();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = a2;
    v10[5] = sub_25412F60C;
    v10[6] = v8;

    v11 = a1;
    v12 = &unk_254254328;
    v13 = v7;
    v14 = v10;
  }

  else
  {
    v15 = sub_25424E128();
    (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = a2;
    v16[5] = sub_25412F540;
    v16[6] = 0;

    v12 = &unk_254252CB0;
    v13 = v7;
    v14 = v16;
  }

  sub_25419CC1C(0, 0, v13, v12, v14);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_25414C6E4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = type metadata accessor for EventQuery(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v30 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[6];
  if (v15 < 0)
  {
    goto LABEL_5;
  }

  v29 = a2;
  v16 = a1[5];
  v17 = a1[7];
  v18 = v16;
  if ([v18 scope] == 2)
  {
    sub_254148B1C(v16, v15, v17);
    a2 = v29;
    goto LABEL_5;
  }

  v19 = [v18 scope];
  sub_254148B1C(v16, v15, v17);
  a2 = v29;
  if (v19 == 3)
  {
LABEL_5:
    v20 = type metadata accessor for EventQuery.Configuration(0);
    v21 = v20[8];
    sub_25424D1F8();
    sub_25424D578();
    v23 = v22;
    v24 = *(v5 + 8);
    v24(v11, v4);
    if (v23 < 0.0)
    {
      __break(1u);
    }

    else
    {
      sub_25424D1D8();
      sub_25424D1F8();
      sub_25417BFB4(&qword_27F5B9210, MEMORY[0x277CC9578]);
      v25 = sub_25424DC78();
      v24(v9, v4);
      v24(v11, v4);
      if (v25)
      {
        v26 = *(a1 + v20[9]);
        if (!v26 || *(v26 + 16))
        {
          v27 = (a1 + v20[12]);
          if ((v27[1] & 1) != 0 || *v27 > 0)
          {
            v28 = v30;
            sub_25417C110(a1, v30, type metadata accessor for EventQuery.Configuration);
            sub_25417C178(v28, a2, type metadata accessor for EventQuery);
            sub_25417C0B0(a1, type metadata accessor for EventQuery.Configuration);
            return;
          }

          goto LABEL_15;
        }

LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_16:
  __break(1u);
}

uint64_t sub_25414CA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_25414CA34, 0, 0);
}

uint64_t sub_25414CA34()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    v7 = *(v0 + 56);
    if (v1)
    {
      v8 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v8 = &selRef_privateCloudDatabase;
    }

    *(v0 + 80) = [*(v0 + 40) *v8];
    v9 = *(v0 + 56);
    if (v7)
    {
      v10 = *(v0 + 56);
    }

    else
    {
      v10 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
    }

    *(v0 + 88) = v10;
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *(v11 + 16) = *(v0 + 24);
    v12 = *(MEMORY[0x277CBBE68] + 4);
    v13 = v9;
    v14 = v10;
    v15 = swift_task_alloc();
    *(v0 + 104) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8DF0, &qword_254253F38);
    *v15 = v0;
    v15[1] = sub_25414CDB8;

    return MEMORY[0x28210DEC0](v0 + 16, 0, v10, &unk_254254600, v11, v16);
  }

  else
  {
    v17 = (*(v0 + 24) + **(v0 + 24));
    v3 = *(*(v0 + 24) + 4);
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_25414CC70;
    v5 = *(v0 + 32);

    return v17(v0 + 16, v2);
  }
}

uint64_t sub_25414CC70()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_25414CDA0;
  }

  else
  {
    v3 = sub_25414CD84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25414CDB8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_25414CF48;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_25414CEDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25414CEDC()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 16);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_25414CF48()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  v4 = v0[14];
  v5 = v0[1];

  return v5();
}

uint64_t sub_25414CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25414CFF0, 0, 0);
}

uint64_t sub_25414CFF0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    v8 = *(v0 + 56);
    if (v1)
    {
      v9 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v9 = &selRef_privateCloudDatabase;
    }

    *(v0 + 72) = [*(v0 + 40) *v9];
    v10 = *(v0 + 56);
    if (v8)
    {
      v11 = *(v0 + 56);
    }

    else
    {
      v11 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
    }

    *(v0 + 80) = v11;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *(v12 + 16) = *(v0 + 24);
    v13 = *(MEMORY[0x277CBBE68] + 4);
    v14 = v10;
    v15 = v11;
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    *v16 = v0;
    v16[1] = sub_25414D220;
    v17 = *(v0 + 16);
    v18 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x28210DEC0](v17, 0, v11, &unk_254254478, v12, v18);
  }

  else
  {
    v19 = (*(v0 + 24) + **(v0 + 24));
    v3 = *(*(v0 + 24) + 4);
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_25417E908;
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    return v19(v6, v2);
  }
}

uint64_t sub_25414D220()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_25417E91C;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_25417E914;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25414D344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_25414D36C, 0, 0);
}

uint64_t sub_25414D36C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  if (v1 < 0)
  {
    v8 = *(v0 + 56);
    if (v1)
    {
      v9 = &selRef_sharedCloudDatabase;
    }

    else
    {
      v9 = &selRef_privateCloudDatabase;
    }

    *(v0 + 72) = [*(v0 + 40) *v9];
    v10 = *(v0 + 56);
    if (v8)
    {
      v11 = *(v0 + 56);
    }

    else
    {
      v11 = _s13HomeKitEvents21DatabaseConfigurationO21defaultOperationGroup9containerSo011CKOperationH0CSo11CKContainerC_tFZ_0(v2);
    }

    *(v0 + 80) = v11;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *(v12 + 16) = *(v0 + 24);
    v13 = *(MEMORY[0x277CBBE68] + 4);
    v14 = v10;
    v15 = v11;
    v16 = swift_task_alloc();
    *(v0 + 96) = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
    *v16 = v0;
    v16[1] = sub_25414D69C;
    v18 = *(v0 + 16);

    return MEMORY[0x28210DEC0](v18, 0, v11, &unk_254254498, v12, v17);
  }

  else
  {
    v19 = (*(v0 + 24) + **(v0 + 24));
    v3 = *(*(v0 + 24) + 4);
    v4 = swift_task_alloc();
    *(v0 + 64) = v4;
    *v4 = v0;
    v4[1] = sub_25414D5A8;
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);

    return v19(v6, v2);
  }
}

uint64_t sub_25414D5A8()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25414D69C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_25414D828;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_25414D7C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25414D7C0()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25414D828()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[13];
  v5 = v0[1];

  return v5();
}

id EventQuery.init(features:homeIdentifier:dateInterval:categories:accessoryIdentifier:resultsLimit:maxRecordsPerQuery:dateIntervalStartOpen:dateIntervalEndOpen:scope:targetCloudKitZone:qualityOfService:operationGroup:retainEncodedEvent:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, char a11, unsigned __int8 a12, unsigned __int8 *a13, unsigned __int8 *a14, uint64_t a15, void *a16, unsigned __int8 a17)
{
  v91 = a8;
  v87 = a7;
  v86 = a6;
  v97 = a5;
  v93 = a4;
  v74 = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v95 = &v72[-v23];
  v99 = sub_25424D218();
  v96 = *(v99 - 8);
  v24 = *(v96 + 64);
  MEMORY[0x28223BE20](v99);
  v94 = &v72[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v100 = sub_25424D948();
  v102 = *(v100 - 8);
  v26 = v102[8];
  v27 = MEMORY[0x28223BE20](v100);
  v98 = &v72[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v101 = &v72[-v29];
  v30 = type metadata accessor for EventQuery.Configuration(0);
  v31 = *(*(v30 - 1) + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v89 = &v72[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v72[-v35];
  MEMORY[0x28223BE20](v34);
  v90 = &v72[-v37];
  v85 = *a13;
  v38 = *a14;
  v92 = a9;
  v88 = v38;
  if (!a16)
  {
    goto LABEL_5;
  }

  result = [a16 defaultConfiguration];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v40 = result;
  v41 = [result container];

  if (v41)
  {
    v42 = a16;
    v43 = v100;
    v44 = v98;
  }

  else
  {
LABEL_5:
    if (qword_27F5B8420 != -1)
    {
      swift_once();
    }

    v41 = qword_27F5BA548;
    v43 = v100;
    v44 = v98;
    if (a16)
    {
      v42 = a16;
    }

    else
    {
      v42 = [objc_allocWithZone(MEMORY[0x277CBC4F8]) init];
      v110 = v42;
      v45 = v74;
      sub_25414E2BC(&v110, v41);
      v74 = v45;
      v44 = v98;
    }
  }

  sub_254140708(a1, &v110);
  v79 = v41;
  v75 = v41;
  v78 = v42;
  v81 = v42;
  v80 = a16;
  v46 = v101;
  sub_25424D938();
  v47 = v102 + 2;
  v77 = v102[2];
  v77(v44, a2, v43);
  v48 = (v96 + 16);
  v76 = *(v96 + 16);
  v76(v94, a3, v99);
  sub_254132DF4(v97, v95, &unk_27F5B8E50, &qword_254254390);
  v109 = 0;
  v107 = 0u;
  v108 = 0u;
  v49 = v93;
  v84 = a1;
  v83 = a2;
  v82 = a3;
  if (v93 && sub_2541538B4(6, v93))
  {
    *&v104 = MEMORY[0x277D84FA0];
    v50 = (v49 + 56);
    v51 = 1 << *(v49 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v49 + 56);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    while (v53)
    {
      v56 = v55;
LABEL_21:
      v57 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      v58 = *(*(v49 + 48) + (v57 | (v56 << 6)));
      if (v58 >= 6)
      {
        sub_254168D1C(&v103, 0);
        sub_254168D1C(&v103, 1);
        v58 = 2;
      }

      sub_254168D1C(&v103, v58);
      v55 = v56;
      v46 = v101;
    }

    while (1)
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v56 >= v54)
      {

        v59 = v104;
        goto LABEL_25;
      }

      v53 = *&v50[8 * v56];
      ++v55;
      if (v53)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v59 = 0;
LABEL_25:
    v74 = a15;
    v73 = a12;
    v60 = v85 | 0x8000000000000000;
    sub_254140708(&v110, v36);
    *(v36 + 5) = v79;
    *(v36 + 6) = v60;
    *(v36 + 7) = v78;
    v54 = v100;
    v61 = v77;
    v77(&v36[v30[6]], v46, v100);
    v50 = v98;
    v61(&v36[v30[7]], v98, v54);
    v46 = v94;
    v47 = v99;
    v76(&v36[v30[8]], v94, v99);
    *&v36[v30[9]] = v93;
    *&v36[v30[10]] = v59;
    v48 = v95;
    sub_254132DF4(v95, &v36[v30[11]], &unk_27F5B8E50, &qword_254254390);
    v62 = &v36[v30[12]];
    *v62 = v86;
    v62[8] = v87 & 1;
    v36[v30[13]] = a11 & 1;
    v36[v30[14]] = v73 & 1;
    v63 = &v36[v30[15]];
    *v63 = v74;
    v63[8] = 0;
    if (qword_27F5B8468 == -1)
    {
      goto LABEL_26;
    }
  }

  swift_once();
LABEL_26:
  LODWORD(v93) = a17;
  v87 = a10;
  v64 = off_27F5BAFB0;
  sub_254132E5C(v48, &unk_27F5B8E50, &qword_254254390);
  v96 = *(v96 + 8);
  (v96)(v46, v47);
  v66 = v102 + 1;
  v65 = v102[1];
  v65(v50, v54);
  v102 = v66;
  v65(v101, v54);
  __swift_destroy_boxed_opaque_existential_1(&v110);
  *&v36[v30[16]] = v64[2];
  *&v36[v30[17]] = 24;
  v67 = v97;
  if (*(&v108 + 1))
  {
    sub_25412DC4C(&v107, &v104);
  }

  else
  {
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FF8, &qword_254254398);
    v47 = v99;
    v106 = sub_25414081C(&unk_27F5B9000, &qword_27F5B8FF8, &qword_254254398);
  }

  v68 = v75;
  swift_unknownObjectRetain();
  sub_25412DC4C(&v104, &v36[v30[18]]);
  v69 = 3000;
  if (!(v87 & 1 | (v91 < 1)))
  {
    v69 = v91;
  }

  *&v36[v30[19]] = v69;
  *&v36[v30[20]] = 5;
  v36[v30[21]] = v93 & 1;
  v36[v30[22]] = v88;
  v70 = v90;
  sub_25417C178(v36, v90, type metadata accessor for EventQuery.Configuration);
  v71 = v89;
  sub_25417C110(v70, v89, type metadata accessor for EventQuery.Configuration);
  sub_25414C6E4(v71, v92);

  sub_254132E5C(v67, &unk_27F5B8E50, &qword_254254390);
  (v96)(v82, v47);
  v65(v83, v100);
  __swift_destroy_boxed_opaque_existential_1(v84);
  return sub_25417C0B0(v70, type metadata accessor for EventQuery.Configuration);
}

void sub_25414E2BC(void **a1, uint64_t a2)
{
  v3 = *a1;
  v17[3] = 0xE000000000000000;
  v17[0] = 47;
  v17[1] = 0xE100000000000000;
  v17[2] = 0;
  v16[2] = v17;
  v4 = sub_2541D870C(0x7FFFFFFFFFFFFFFFLL, 1, sub_254148F24, v16, 0xD00000000000001ELL, 0x80000002542505B0, "Unhandled CKDatabase.Scope: ");
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = MEMORY[0x259C05BF0](v5, v6, v7, v8);
    v11 = v10;

    MEMORY[0x259C05CA0](v9, v11);

    MEMORY[0x259C05CA0](46, 0xE100000000000000);
    v17[0] = type metadata accessor for EventQuery(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B9290, &qword_2542545E8);
    v12 = sub_25424DD08();
    MEMORY[0x259C05CA0](v12);

    v13 = sub_25424DCA8();

    [v3 setName_];

    [v3 setExpectedSendSize_];
    v14 = [v3 defaultConfiguration];
    if (v14)
    {
      v15 = v14;
      [v14 setContainer_];

      return;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
}

uint64_t EventQuery.init(features:database:homeIdentifier:dateInterval:categories:accessoryIdentifier:resultsLimit:maxRecordsPerQuery:dateIntervalStartOpen:dateIntervalEndOpen:scope:targetCloudKitZone:qualityOfService:retainEncodedEvent:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, char a12, unsigned __int8 a13, uint64_t a14, void (*a15)(void), uint64_t a16, unsigned __int8 a17)
{
  v82 = a8;
  v81 = a7;
  v94 = a6;
  v88 = a5;
  v95 = a4;
  v96 = a3;
  v97 = a1;
  v87 = a9;
  v92 = a15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v71[-v20];
  v22 = sub_25424D218();
  v93 = *(v22 - 8);
  v23 = *(v93 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v71[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = sub_25424D948();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v71[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v33 = &v71[-v32];
  v34 = type metadata accessor for EventQuery.Configuration(0);
  v35 = *(*(v34 - 1) + 64);
  v36 = MEMORY[0x28223BE20](v34);
  v85 = &v71[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v71[-v39];
  MEMORY[0x28223BE20](v38);
  v74 = &v71[-v41];
  v42 = a2[1];
  v79 = *a2;
  v78 = v42;
  v77 = a2[2];
  v80 = v31;
  v84 = *v92;
  sub_254140708(v97, &v105);
  sub_25424D938();
  v86 = v27;
  v44 = *(v27 + 16);
  v43 = v27 + 16;
  v92 = v26;
  v75 = v44;
  v44(v31, v96, v26);
  v45 = v25;
  v46 = *(v93 + 16);
  v91 = v45;
  v90 = v22;
  v76 = v93 + 16;
  v46();
  v83 = v21;
  v47 = v21;
  v48 = v88;
  sub_254132DF4(v94, v47, &unk_27F5B8E50, &qword_254254390);
  v104 = 0;
  v102 = 0u;
  v103 = 0u;
  v89 = v33;
  if (v48 && sub_2541538B4(6, v48))
  {
    *&v99 = MEMORY[0x277D84FA0];
    v49 = v48 + 56;
    v50 = 1 << *(v48 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(v48 + 56);
    v53 = (v50 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v54 = 0;
    while (v52)
    {
      v55 = v54;
LABEL_12:
      v56 = __clz(__rbit64(v52));
      v52 &= v52 - 1;
      v57 = *(*(v48 + 48) + (v56 | (v55 << 6)));
      if (v57 >= 6)
      {
        sub_254168D1C(&v98, 0);
        sub_254168D1C(&v98, 1);
        v57 = 2;
      }

      sub_254168D1C(&v98, v57);
      v54 = v55;
    }

    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v55 >= v53)
      {
        v58 = v46;

        v59 = v99;
        v60 = v92;
        v33 = v89;
        goto LABEL_16;
      }

      v52 = *(v49 + 8 * v55);
      ++v54;
      if (v52)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  v58 = v46;
  v59 = 0;
  v60 = v92;
LABEL_16:
  v73 = a16;
  v72 = a13;
  sub_254140708(&v105, v40);
  v61 = v78;
  *(v40 + 5) = v79;
  *(v40 + 6) = v61;
  *(v40 + 7) = v77;
  v62 = v75;
  v75(&v40[v34[6]], v33, v60);
  v52 = v80;
  v62(&v40[v34[7]], v80, v60);
  v46 = v60;
  v49 = v90;
  (v58)(&v40[v34[8]], v91, v90);
  *&v40[v34[9]] = v48;
  *&v40[v34[10]] = v59;
  v43 = v83;
  sub_254132DF4(v83, &v40[v34[11]], &unk_27F5B8E50, &qword_254254390);
  v63 = &v40[v34[12]];
  *v63 = v81;
  v63[8] = v82 & 1;
  v40[v34[13]] = a12 & 1;
  v40[v34[14]] = v72 & 1;
  v64 = &v40[v34[15]];
  *v64 = v73;
  v64[8] = 0;
  if (qword_27F5B8468 != -1)
  {
LABEL_24:
    swift_once();
  }

  LODWORD(v88) = a17;
  v82 = a11;
  v65 = off_27F5BAFB0;
  sub_254132E5C(v43, &unk_27F5B8E50, &qword_254254390);
  v93 = *(v93 + 8);
  (v93)(v91, v49);
  v66 = *(v86 + 8);
  v66(v52, v46);
  v66(v89, v46);
  __swift_destroy_boxed_opaque_existential_1(&v105);
  *&v40[v34[16]] = v65[2];
  *&v40[v34[17]] = 24;
  if (*(&v103 + 1))
  {
    sub_25412DC4C(&v102, &v99);
  }

  else
  {
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8FF8, &qword_254254398);
    v49 = v90;
    v101 = sub_25414081C(&unk_27F5B9000, &qword_27F5B8FF8, &qword_254254398);
  }

  v67 = v74;
  swift_unknownObjectRetain();
  sub_25412DC4C(&v99, &v40[v34[18]]);
  v68 = 3000;
  if (!(v82 & 1 | (a10 < 1)))
  {
    v68 = a10;
  }

  *&v40[v34[19]] = v68;
  *&v40[v34[20]] = 5;
  v40[v34[21]] = v88 & 1;
  v40[v34[22]] = v84;
  sub_25417C178(v40, v67, type metadata accessor for EventQuery.Configuration);
  v69 = v85;
  sub_25417C110(v67, v85, type metadata accessor for EventQuery.Configuration);
  sub_25414C6E4(v69, v87);
  sub_254132E5C(v94, &unk_27F5B8E50, &qword_254254390);
  (v93)(v95, v49);
  v66(v96, v92);
  __swift_destroy_boxed_opaque_existential_1(v97);
  return sub_25417C0B0(v67, type metadata accessor for EventQuery.Configuration);
}

uint64_t EventQuery.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventQuery.Configuration(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventQuery.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventQuery.Configuration(0) + 32);
  v4 = sub_25424D218();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventQuery.queryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventQuery.Configuration(0) + 24);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t EventQuery.categories.getter()
{
  v1 = *(v0 + *(type metadata accessor for EventQuery.Configuration(0) + 36));
}

uint64_t EventQuery.resultsLimit.getter()
{
  v1 = (v0 + *(type metadata accessor for EventQuery.Configuration(0) + 48));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

void EventQuery.scope.getter(char *a1@<X8>)
{
  v3 = *(v1 + 48);
  if (v3 < 0)
  {
    v6 = v3 & 1;
    goto LABEL_7;
  }

  v4 = *(v1 + 40);
  v5 = [v4 scope];
  if (v5 == 2)
  {
    v6 = 0;
LABEL_7:
    *a1 = v6;
    return;
  }

  if (v5 == 3)
  {
    v6 = 1;
    goto LABEL_7;
  }

  sub_25424E688();

  [v4 0x279771478];
  v7 = sub_25424E468();
  MEMORY[0x259C05CA0](v7);

  sub_25424E858();
  __break(1u);
}

uint64_t EventQuery.start()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BA190, &qword_2542543A0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-v4];
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25424D898();
  v13 = v0;
  v14 = v10;
  type metadata accessor for SomeEvent();
  (*(v2 + 104))(v5, *MEMORY[0x277D858A0], v1);
  sub_25424E278();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_25414F254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a3;
  v31 = a2;
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v30);
  v9 = &v26 - v8;
  v27 = &v26 - v8;
  v10 = type metadata accessor for EventQuery(0);
  v29 = *(v10 - 8);
  v11 = *(v29 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v26 - v15;
  v17 = sub_25424E128();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_25417C110(v31, v12, type metadata accessor for EventQuery);
  v18 = v9;
  v19 = v30;
  (*(v6 + 16))(v18, v32, v30);
  v20 = v3;
  (*(v4 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v3);
  v21 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v22 = (v11 + *(v6 + 80) + v21) & ~*(v6 + 80);
  v23 = (v7 + *(v4 + 80) + v22) & ~*(v4 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_25417C178(v12, v24 + v21, type metadata accessor for EventQuery);
  (*(v6 + 32))(v24 + v22, v27, v19);
  (*(v4 + 32))(v24 + v23, v28, v20);
  sub_25419CC1C(0, 0, v16, &unk_2542544D8, v24);
}

uint64_t sub_25414F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = sub_25424E0A8();
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v9 = *(v8 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v10 = sub_25424D8B8();
  v6[21] = v10;
  v11 = *(v10 - 8);
  v6[22] = v11;
  v12 = *(v11 + 64) + 15;
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v13 = type metadata accessor for EventQuery.Configuration(0);
  v6[26] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v6[27] = swift_task_alloc();
  v15 = *(*(type metadata accessor for EventQuery(0) - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v16 = sub_25424DAA8();
  v6[33] = v16;
  v17 = *(v16 - 8);
  v6[34] = v17;
  v18 = *(v17 + 64) + 15;
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v19 = sub_25424D948();
  v6[39] = v19;
  v20 = *(v19 - 8);
  v6[40] = v20;
  v21 = *(v20 + 64) + 15;
  v6[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25414F88C, 0, 0);
}

uint64_t sub_25414F88C()
{
  v54 = v0;
  v1 = v0;
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v4 = *(v0 + 312);
  v47 = *(v0 + 304);
  v49 = *(v0 + 256);
  v51 = *(v0 + 248);
  v5 = *(v0 + 208);
  v6 = *(v0 + 112);
  v7 = *(v6 + *(v5 + 64));
  *(v0 + 336) = v7;
  v46 = v5;
  v8 = *(v5 + 24);
  *(v0 + 416) = v8;
  v9 = *(v2 + 16);
  *(v0 + 344) = v9;
  *(v0 + 352) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v6 + v8, v4);
  v10 = type metadata accessor for EventsAsyncSequenceLogEvent();
  *(v0 + 360) = v10;
  v11 = objc_allocWithZone(v10);
  v9(&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v3, v4);
  v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v11[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v0 + 16) = v11;
  *(v0 + 24) = v10;
  v12 = objc_msgSendSuper2((v0 + 16), sel_init);
  v13 = *(v2 + 8);
  *(v0 + 368) = v13;
  *(v0 + 376) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v4);
  [v7 submitLogEvent_];

  sub_25421ACE8(v47);
  sub_25417C110(v6, v49, type metadata accessor for EventQuery);
  sub_25417C110(v6, v51, type metadata accessor for EventQuery);
  v14 = sub_25424DA88();
  v15 = sub_25424E448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 312);
    v48 = *(v1 + 272);
    v50 = *(v1 + 264);
    v52 = *(v1 + 304);
    v17 = *(v1 + 248);
    v18 = *(v1 + 256);
    v44 = *(v1 + 216);
    v45 = *(v1 + 208);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v53 = v20;
    *v19 = 136446466;
    v21 = *(v46 + 24);
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v22 = sub_25424EA58();
    v24 = v23;
    sub_25417C0B0(v18, type metadata accessor for EventQuery);
    v25 = sub_2542203C4(v22, v24, &v53);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    sub_25417C110(v17, v44, type metadata accessor for EventQuery.Configuration);
    v26 = sub_25424DD08();
    v28 = v27;
    sub_25417C0B0(v17, type metadata accessor for EventQuery);
    v29 = sub_2542203C4(v26, v28, &v53);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_254124000, v14, v15, "[%{public}s] Beginning query: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v20, -1, -1);
    MEMORY[0x259C07330](v19, -1, -1);

    v30 = *(v48 + 8);
    v30(v52, v50);
  }

  else
  {
    v31 = *(v0 + 304);
    v32 = *(v0 + 264);
    v33 = *(v1 + 272);
    v35 = *(v1 + 248);
    v34 = *(v1 + 256);

    sub_25417C0B0(v35, type metadata accessor for EventQuery);
    sub_25417C0B0(v34, type metadata accessor for EventQuery);
    v30 = *(v33 + 8);
    v30(v31, v32);
  }

  *(v1 + 384) = v30;
  v36 = swift_task_alloc();
  v37 = *(v1 + 112);
  v38 = *(v1 + 112);
  v39 = v38[5];
  v40 = v38[6];
  v41 = v38[7];
  *(v1 + 392) = v36;
  *(v36 + 16) = v37;
  v42 = swift_task_alloc();
  *(v1 + 400) = v42;
  *v42 = v1;
  v42[1] = sub_25414FD4C;

  return sub_25414CFC8(sub_25414CFC8, &unk_2542544E8, v36, v39, v40, v41);
}

uint64_t sub_25414FD4C()
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 392);
  v6 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_2541503BC;
  }

  else
  {
    v4 = sub_25414FE7C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25414FE7C()
{
  v70 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 176);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  sub_25421ACE8(*(v0 + 296));
  sub_25417C110(v6, v1, type metadata accessor for EventQuery);
  (*(v4 + 16))(v2, v5, v3);
  v7 = sub_25424DA88();
  v8 = sub_25424E448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 312);
    v10 = *(v0 + 240);
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v69 = v66;
    *v13 = 136446466;
    v14 = *(v11 + 24);
    sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
    v15 = sub_25424EA58();
    v17 = v16;
    sub_25417C0B0(v10, type metadata accessor for EventQuery);
    v18 = sub_2542203C4(v15, v17, &v69);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    sub_25424D868();
    v19 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
    [v19 setMaximumFractionDigits_];
    v20 = sub_25424E288();
    v21 = [v19 stringForObjectValue_];

    if (v21)
    {
      v22 = sub_25424DCB8();
      v24 = v23;
    }

    else
    {
      v22 = sub_25424E298();
      v24 = v33;
    }

    v34 = *(v0 + 384);
    v35 = *(v0 + 296);
    v37 = *(v0 + 264);
    v36 = *(v0 + 272);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
    v38 = sub_2542203C4(v22, v24, &v69);

    *(v13 + 14) = v38;
    _os_log_impl(&dword_254124000, v7, v8, "[%{public}s] Finished after %{public}s seconds", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C07330](v66, -1, -1);
    MEMORY[0x259C07330](v13, -1, -1);

    v34(v35, v37);
  }

  else
  {
    v25 = *(v0 + 384);
    v26 = *(v0 + 296);
    v27 = *(v0 + 264);
    v28 = *(v0 + 272);
    v29 = *(v0 + 240);
    v30 = *(v0 + 200);
    v31 = *(v0 + 168);
    v32 = *(v0 + 176);

    (*(v32 + 8))(v30, v31);
    sub_25417C0B0(v29, type metadata accessor for EventQuery);
    v25(v26, v27);
  }

  v40 = *(v0 + 368);
  v39 = *(v0 + 376);
  v42 = *(v0 + 352);
  v41 = *(v0 + 360);
  v43 = *(v0 + 336);
  v44 = *(v0 + 344);
  v45 = *(v0 + 328);
  v46 = *(v0 + 312);
  v67 = *(v0 + 120);
  v44(v45, (*(v0 + 112) + *(v0 + 416)), v46);
  v47 = objc_allocWithZone(v41);
  v44(&v47[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v45, v46);
  v47[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 1;
  *&v47[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
  *&v47[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
  *&v47[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
  *(v0 + 64) = v47;
  *(v0 + 72) = v41;
  v48 = objc_msgSendSuper2((v0 + 64), sel_init);
  v40(v45, v46);
  [v43 submitLogEvent_];

  *(v0 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
  sub_25424E238();
  v49 = *(v0 + 328);
  v51 = *(v0 + 296);
  v50 = *(v0 + 304);
  v53 = *(v0 + 280);
  v52 = *(v0 + 288);
  v55 = *(v0 + 248);
  v54 = *(v0 + 256);
  v56 = *(v0 + 232);
  v57 = *(v0 + 240);
  v58 = *(v0 + 224);
  v61 = *(v0 + 216);
  v62 = *(v0 + 200);
  v63 = *(v0 + 192);
  v64 = *(v0 + 184);
  v65 = *(v0 + 160);
  v68 = *(v0 + 152);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_2541503BC()
{
  v145 = v0;
  v1 = *(v0 + 408);
  *(v0 + 80) = v1;
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 408);
  v8 = *(v0 + 168);
  v7 = *(v0 + 176);
  if (v5)
  {
    v136 = *(v0 + 168);
    v9 = *(v0 + 288);
    v10 = *(v0 + 232);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v14 = *(v0 + 136);
    v13 = *(v0 + 144);
    v126 = *(v0 + 128);
    v130 = *(v0 + 192);
    v15 = *(v0 + 112);

    (*(v13 + 32))(v11, v12, v14);
    sub_25421ACE8(v9);
    sub_25417C110(v15, v10, type metadata accessor for EventQuery);
    (*(v7 + 16))(v130, v126, v136);
    v16 = sub_25424DA88();
    v17 = sub_25424E448();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = *(v0 + 312);
      v19 = *(v0 + 232);
      v20 = *(v0 + 208);
      v21 = *(v0 + 192);
      v22 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v144 = v137;
      *v22 = 136446466;
      v23 = *(v20 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v24 = sub_25424EA58();
      v26 = v25;
      sub_25417C0B0(v19, type metadata accessor for EventQuery);
      v27 = sub_2542203C4(v24, v26, &v144);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2082;
      sub_25424D868();
      v28 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v28 setMaximumFractionDigits_];
      v29 = sub_25424E288();
      v30 = [v28 stringForObjectValue_];

      if (v30)
      {
        v31 = sub_25424DCB8();
        v33 = v32;
      }

      else
      {
        v31 = sub_25424E298();
        v33 = v74;
      }

      v132 = *(v0 + 384);
      v75 = *(v0 + 288);
      v77 = *(v0 + 264);
      v76 = *(v0 + 272);
      (*(*(v0 + 176) + 8))(*(v0 + 192), *(v0 + 168));
      v78 = sub_2542203C4(v31, v33, &v144);

      *(v22 + 14) = v78;
      _os_log_impl(&dword_254124000, v16, v17, "[%{public}s] Canceled after %{public}s seconds", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v137, -1, -1);
      MEMORY[0x259C07330](v22, -1, -1);

      v132(v75, v77);
    }

    else
    {
      v58 = *(v0 + 384);
      v59 = *(v0 + 288);
      v60 = *(v0 + 264);
      v61 = *(v0 + 272);
      v62 = *(v0 + 232);
      v63 = *(v0 + 192);
      v64 = *(v0 + 168);
      v65 = *(v0 + 176);

      (*(v65 + 8))(v63, v64);
      sub_25417C0B0(v62, type metadata accessor for EventQuery);
      v58(v59, v60);
    }

    v124 = *(v0 + 368);
    v127 = *(v0 + 376);
    v80 = *(v0 + 352);
    v79 = *(v0 + 360);
    v82 = *(v0 + 336);
    v81 = *(v0 + 344);
    v83 = *(v0 + 328);
    v84 = *(v0 + 312);
    v85 = *(v0 + 160);
    v86 = *(v0 + 136);
    v87 = *(v0 + 144);
    v133 = v85;
    v139 = *(v0 + 120);
    v81(v83, (*(v0 + 112) + *(v0 + 416)), v84);
    v88 = objc_allocWithZone(v79);
    v81(&v88[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v83, v84);
    v88[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 2;
    *&v88[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
    *&v88[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
    *&v88[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
    *(v0 + 48) = v88;
    *(v0 + 56) = v79;
    v89 = objc_msgSendSuper2((v0 + 48), sel_init);
    v124(v83, v84);
    [v82 submitLogEvent_];

    sub_25417BFB4(&qword_27F5B90E0, MEMORY[0x277D85678]);
    v90 = swift_allocError();
    (*(v87 + 16))(v91, v133, v86);
    *(v0 + 96) = v90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E238();
    (*(v87 + 8))(v133, v86);
  }

  else
  {
    v34 = *(v0 + 280);
    v35 = *(v0 + 224);
    v36 = *(v0 + 184);
    v37 = *(v0 + 128);
    v38 = *(v0 + 112);

    sub_25421ACE8(v34);
    sub_25417C110(v38, v35, type metadata accessor for EventQuery);
    (*(v7 + 16))(v36, v37, v8);
    v39 = v6;
    v40 = sub_25424DA88();
    v41 = sub_25424E428();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 312);
      v43 = *(v0 + 224);
      v44 = *(v0 + 208);
      v45 = *(v0 + 184);
      v46 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v144 = v138;
      *v46 = 136446722;
      v47 = *(v44 + 24);
      sub_25417BFB4(&unk_27F5B90D0, MEMORY[0x277CC95F0]);
      v48 = sub_25424EA58();
      v50 = v49;
      sub_25417C0B0(v43, type metadata accessor for EventQuery);
      v51 = sub_2542203C4(v48, v50, &v144);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2082;
      sub_25424D868();
      v52 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
      [v52 setMaximumFractionDigits_];
      v53 = sub_25424E288();
      v54 = [v52 stringForObjectValue_];

      if (v54)
      {
        v55 = sub_25424DCB8();
        v57 = v56;
      }

      else
      {
        v55 = sub_25424E298();
        v57 = v92;
      }

      v93 = *(v0 + 408);
      v128 = *(v0 + 384);
      v95 = *(v0 + 272);
      v94 = *(v0 + 280);
      v96 = *(v0 + 264);
      (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
      v97 = sub_2542203C4(v55, v57, &v144);

      *(v46 + 14) = v97;
      *(v46 + 22) = 2114;
      v98 = v93;
      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 24) = v99;
      *v131 = v99;
      _os_log_impl(&dword_254124000, v40, v41, "[%{public}s] Failed after %{public}s seconds: %{public}@", v46, 0x20u);
      sub_254132E5C(v131, &unk_27F5BBED0, &qword_254253F80);
      MEMORY[0x259C07330](v131, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x259C07330](v138, -1, -1);
      MEMORY[0x259C07330](v46, -1, -1);

      v128(v94, v96);
    }

    else
    {
      v66 = *(v0 + 384);
      v68 = *(v0 + 272);
      v67 = *(v0 + 280);
      v69 = *(v0 + 264);
      v70 = *(v0 + 224);
      v72 = *(v0 + 176);
      v71 = *(v0 + 184);
      v73 = *(v0 + 168);

      (*(v72 + 8))(v71, v73);
      sub_25417C0B0(v70, type metadata accessor for EventQuery);
      v66(v67, v69);
    }

    v100 = *(v0 + 408);
    v102 = *(v0 + 368);
    v101 = *(v0 + 376);
    v104 = *(v0 + 352);
    v103 = *(v0 + 360);
    v105 = *(v0 + 336);
    v106 = *(v0 + 344);
    v107 = *(v0 + 328);
    v108 = *(v0 + 312);
    v134 = v105;
    v140 = *(v0 + 120);
    v106(v107, (*(v0 + 112) + *(v0 + 416)), v108);
    v109 = objc_allocWithZone(v103);
    v106(&v109[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_queryIdentifier], v107, v108);
    v109[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_state] = 14;
    *&v109[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_emittedEvents] = 0;
    *&v109[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_processedRecords] = 0;
    *&v109[OBJC_IVAR____TtC13HomeKitEvents27EventsAsyncSequenceLogEvent_cachedEvents] = 0;
    *(v0 + 32) = v109;
    *(v0 + 40) = v103;
    v110 = objc_msgSendSuper2((v0 + 32), sel_init);
    v102(v107, v108);
    v111 = sub_25424D398();
    [v134 submitLogEvent:v110 error:v111];

    *(v0 + 88) = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1D0, &unk_2542544C0);
    sub_25424E238();
  }

  v112 = *(v0 + 328);
  v114 = *(v0 + 296);
  v113 = *(v0 + 304);
  v116 = *(v0 + 280);
  v115 = *(v0 + 288);
  v118 = *(v0 + 248);
  v117 = *(v0 + 256);
  v119 = *(v0 + 232);
  v120 = *(v0 + 240);
  v121 = *(v0 + 224);
  v125 = *(v0 + 216);
  v129 = *(v0 + 200);
  v135 = *(v0 + 192);
  v141 = *(v0 + 184);
  v142 = *(v0 + 160);
  v143 = *(v0 + 152);

  v122 = *(v0 + 8);

  return v122();
}

uint64_t sub_254150EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25412F724;

  return sub_254150F98(a2, a4);
}