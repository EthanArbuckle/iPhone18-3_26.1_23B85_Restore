unint64_t sub_25272CFE4()
{
  result = qword_27F4FC340;
  if (!qword_27F4FC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC340);
  }

  return result;
}

uint64_t sub_25272D038()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v15[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-v6];
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_2528C09B0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  v15[14] = v15[15];
  sub_25272E9EC();
  sub_2528C0980();
  sub_2528C0990();
  sub_2528BEC30();
  (*(v9 + 56))(v7, 1, 1, v8);
  v13 = sub_2528BE8D0();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  return sub_2528BE900();
}

uint64_t sub_25272D2C4()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502810);
  __swift_project_value_buffer(v0, qword_27F502810);
  return sub_2528BE9D0();
}

uint64_t sub_25272D328()
{
  sub_2528BE6B0();
  sub_2528C0ED0();
  MEMORY[0x2530A80B0](8250, 0xE200000000000000);
  sub_2528BE6B0();
  v0 = MEMORY[0x2530A81A0](v4, &type metadata for PossibleValuesForAttribute);
  v2 = v1;

  MEMORY[0x2530A80B0](v0, v2);

  return 0;
}

uint64_t sub_25272D3F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25272E4C8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_25272D41C()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_25272D328();
}

unint64_t sub_25272D428()
{
  result = qword_27F4FC348;
  if (!qword_27F4FC348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC348);
  }

  return result;
}

unint64_t sub_25272D480()
{
  result = qword_27F4FC350;
  if (!qword_27F4FC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC350);
  }

  return result;
}

unint64_t sub_25272D4D8()
{
  result = qword_27F4FC358;
  if (!qword_27F4FC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC358);
  }

  return result;
}

uint64_t sub_25272D570(uint64_t a1)
{
  v2 = sub_25272EA40();

  return MEMORY[0x28210B2E8](a1, v2);
}

unint64_t sub_25272D5C0()
{
  result = qword_27F4FC370;
  if (!qword_27F4FC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC370);
  }

  return result;
}

unint64_t sub_25272D614()
{
  result = qword_27F4FC378;
  if (!qword_27F4FC378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC378);
  }

  return result;
}

unint64_t sub_25272D668()
{
  result = qword_27F4FC380;
  if (!qword_27F4FC380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC380);
  }

  return result;
}

unint64_t sub_25272D6C0()
{
  result = qword_27F4FC388;
  if (!qword_27F4FC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC388);
  }

  return result;
}

uint64_t sub_25272D714()
{
  sub_25272EA40();

  return sub_2528BE550();
}

uint64_t sub_25272D7C8(uint64_t a1)
{
  v2 = sub_25272CFE4();

  return MEMORY[0x28210B488](a1, v2);
}

unint64_t sub_25272D818()
{
  result = qword_27F4FC3A0;
  if (!qword_27F4FC3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3A0);
  }

  return result;
}

uint64_t sub_25272D874(uint64_t a1)
{
  v2 = sub_25272D6C0();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25272D8E0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DeviceEntity();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a3 + 16) && (v12 = sub_252785BD4(a2), (v13 & 1) != 0))
  {
    v14 = *(*(a3 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = sub_25278CDB8(MEMORY[0x277D84F90]);
  v65 = v15;
  v62 = *(v14 + 16);
  if (!v62)
  {
    v46 = v15;

LABEL_33:
    v47 = sub_25272C2F8(v46);
    sub_25272E7DC(a2, v11);
    v4 = sub_25272E0B0(v11, v47);
    a2 = v48;
    v11 = *a1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v55 = v11;
  v56 = v3;
  v57 = a2;
  v58 = a1;
  v16 = 0;
  v17 = (v14 + 64);
  v61 = xmmword_2528C3910;
  a1 = v14;
  v59 = v14;
  while (v16 < *(a1 + 16))
  {
    v11 = *(v17 - 4);
    v4 = *(v17 - 3);
    v20 = *(v17 - 2);
    a2 = *(v17 - 1);
    v21 = v65;
    v22 = v65[2];
    v63 = *v17;
    sub_25272E89C(v11, v4, v20, a2, v63);
    if (v22)
    {
      sub_252785BA8(45);
      if (v23)
      {
        v60 = sub_25272DD50(v64, 45);
        v25 = *v24;
        if (*v24)
        {
          v26 = v24;
          v27 = *v24;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v26 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = sub_252737A78(0, *(v25 + 2) + 1, 1, v25);
            *v26 = v25;
          }

          v30 = *(v25 + 2);
          v29 = *(v25 + 3);
          v31 = v30 + 1;
          if (v30 >= v29 >> 1)
          {
            v54 = v30 + 1;
            v45 = sub_252737A78((v29 > 1), v30 + 1, 1, v25);
            v31 = v54;
            v25 = v45;
            *v26 = v45;
          }

          *(v25 + 2) = v31;
          v32 = &v25[40 * v30];
          *(v32 + 4) = v11;
          *(v32 + 5) = v4;
          *(v32 + 6) = v20;
          *(v32 + 7) = a2;
          v32[64] = v63;
        }

        else
        {
          sub_25272E8CC(v11, v4, v20, a2, v63);
        }

        (v60)(v64, 0);
        a1 = v59;
        goto LABEL_9;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3A8, &qword_2528D3CD0);
    v33 = swift_allocObject();
    *(v33 + 16) = v61;
    *(v33 + 32) = v11;
    *(v33 + 40) = v4;
    *(v33 + 48) = v20;
    *(v33 + 56) = a2;
    *(v33 + 64) = v63;
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v21;
    v34 = sub_252785BA8(45);
    v36 = v21[2];
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_38;
    }

    v40 = v35;
    if (v21[3] < v39)
    {
      sub_2527DCFD8(v39, v4);
      v34 = sub_252785BA8(45);
      if ((v40 & 1) != (v41 & 1))
      {
        result = sub_2528C10A0();
        __break(1u);
        return result;
      }

LABEL_24:
      v42 = v64[0];
      if ((v40 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    if (v4)
    {
      goto LABEL_24;
    }

    v4 = v34;
    sub_2527E08F0();
    v34 = v4;
    v42 = v64[0];
    if ((v40 & 1) == 0)
    {
LABEL_25:
      v42[(v34 >> 6) + 8] |= 1 << v34;
      *(v42[6] + v34) = 45;
      *(v42[7] + 8 * v34) = v33;
      v43 = v42[2];
      v38 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v38)
      {
        goto LABEL_39;
      }

      v42[2] = v44;
      goto LABEL_8;
    }

LABEL_7:
    v18 = v42[7];
    v19 = *(v18 + 8 * v34);
    *(v18 + 8 * v34) = v33;

LABEL_8:
    v65 = v42;
LABEL_9:
    ++v16;
    v17 += 40;
    if (v62 == v16)
    {

      v46 = v65;
      a2 = v57;
      a1 = v58;
      v11 = v55;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  v11 = sub_252737A5C(0, *(v11 + 2) + 1, 1, v11);
LABEL_34:
  v50 = *(v11 + 2);
  v49 = *(v11 + 3);
  if (v50 >= v49 >> 1)
  {
    v11 = sub_252737A5C((v49 > 1), v50 + 1, 1, v11);
  }

  *(v11 + 2) = v50 + 1;
  v51 = &v11[16 * v50];
  *(v51 + 4) = v4;
  *(v51 + 5) = a2;

  *a1 = v11;
  return result;
}

void (*sub_25272DD50(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_25272DE14(v4, a2);
  return sub_25272DDC8;
}

void sub_25272DDC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_25272DE14(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_25272E07C(v6);
  v6[9] = sub_25272DF18((v6 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_25272DEB8;
}

void sub_25272DEB8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_25272DF18(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_252785BA8(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_2527E08F0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_2527DCFD8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_252785BA8(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_2528C10A0();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v20 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v20 = 0;
  }

  *a1 = v20;
  return sub_25272E034;
}

unint64_t sub_25272E034(unint64_t result)
{
  v1 = *result;
  v2 = *(result + 25);
  if (*result)
  {
    v3 = **(result + 8);
    if (*(result + 25))
    {
      *(v3[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_25278B5E8(*(result + 16), *(result + 24), v1, v3);
    }
  }

  else if (*(result + 25))
  {
    return sub_25284602C(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_25272E07C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25272E0A4;
}

uint64_t sub_25272E0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v15 - v9;
  v11 = sub_2528BEC40();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25272E8FC(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v13 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C0, &qword_2528C3ED8);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25272CFE4();
  sub_2528BE6F0();
  sub_25272E7DC(a1, v10);
  sub_25272E7DC(v10, v8);
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_25272E840(v10);
  v15[1] = a2;
  sub_2528BE6C0();
  sub_25272E840(a1);

  return v13;
}

uint64_t sub_25272E2C8()
{
  v0 = type metadata accessor for DeviceEntity();
  v1 = *(*(v0 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = (v11 - v5);
  v7 = sub_2528BEC40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3B0, &qword_2528C3ED0);
  sub_2528BEC20();
  sub_25272E8FC(&qword_27F4FC3B8, type metadata accessor for DeviceEntity);
  v9 = sub_2528BE6F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C0, &qword_2528C3ED8);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25272CFE4();
  sub_2528BE6F0();
  sub_2528BEA50();
  sub_252826AC0(v6);
  sub_25272E7DC(v6, v4);
  sub_2528BE6C0();
  sub_25272E840(v6);
  v11[1] = MEMORY[0x277D84F90];
  sub_2528BE6C0();

  return v9;
}

uint64_t sub_25272E4C8()
{
  v0 = sub_2528BEC40();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3C8, &qword_2528C3EE0);
  sub_2528BEC20();
  sub_25272E944();
  v2 = sub_2528BE6E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC3D0, &qword_2528C3EE8);
  sub_2528BEA50();
  sub_2528BEC20();
  sub_25272E998();
  sub_2528BE700();
  sub_2528BEA50();
  sub_2528BE6C0();
  sub_2528BE6C0();

  return v2;
}

uint64_t sub_25272E628(uint64_t a1)
{
  v2 = type metadata accessor for DeviceEntity();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x277D84F90];
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  for (i = 0; v9; i = v12)
  {
    v12 = i;
LABEL_8:
    sub_25272E7DC(*(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v9)) | (v12 << 6)), v6);
    sub_25272D8E0(&v15, v6, a1);
    v9 &= v9 - 1;
    sub_25272E840(v6);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return v15;
    }

    v9 = *(a1 + 64 + 8 * v12);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_25272E840(v6);

  __break(1u);
  return result;
}

uint64_t sub_25272E7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25272E840(uint64_t a1)
{
  v2 = type metadata accessor for DeviceEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25272E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) <= 2u)
  {
  }

  return result;
}

uint64_t sub_25272E8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if ((a5 >> 6) <= 2u)
  {
  }

  return result;
}

uint64_t sub_25272E8FC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25272E944()
{
  result = qword_27F4FC3D8;
  if (!qword_27F4FC3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3D8);
  }

  return result;
}

unint64_t sub_25272E998()
{
  result = qword_27F4FC3E0;
  if (!qword_27F4FC3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3E0);
  }

  return result;
}

unint64_t sub_25272E9EC()
{
  result = qword_27F4FC3E8;
  if (!qword_27F4FC3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3E8);
  }

  return result;
}

unint64_t sub_25272EA40()
{
  result = qword_27F4FC3F0;
  if (!qword_27F4FC3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3F0);
  }

  return result;
}

unint64_t sub_25272EA94()
{
  result = qword_27F4FC3F8;
  if (!qword_27F4FC3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC3F8);
  }

  return result;
}

uint64_t sub_25272EB04(uint64_t a1)
{
  result = MEMORY[0x2530A82F0](*(a1 + 16), MEMORY[0x277D84D38], MEMORY[0x277D84D48]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_252739514(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25272EBFC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25274A948();
  result = MEMORY[0x2530A82F0](v2, &type metadata for UserSpecificity, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_25273B214(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t SceneEntity.name.getter()
{
  v1 = *v0;
  sub_2528BE6B0();
  return v3;
}

uint64_t sub_25272ED28@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25272ED64(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  v5 = a1[1];

  return sub_2528BE6C0();
}

uint64_t (*SceneEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_2528BE6A0();
  return sub_25272EE48;
}

uint64_t SceneEntity.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SceneEntity() + 20);
  v4 = sub_2528BECF0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SceneEntity()
{
  result = qword_27F4FC5A0;
  if (!qword_27F4FC5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SceneEntity.id.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SceneEntity() + 20);
  v4 = sub_2528BECF0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SceneEntity.homeName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SceneEntity() + 24));
  sub_2528BE6B0();
  return v3;
}

uint64_t sub_25272F03C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SceneEntity() + 24));
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25272F090(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for SceneEntity() + 24));

  return sub_2528BE6C0();
}

uint64_t (*SceneEntity.homeName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for SceneEntity() + 24));
  *(v4 + 32) = sub_2528BE6A0();
  return sub_25274BC38;
}

uint64_t SceneEntity.sceneType.getter()
{
  v1 = *(v0 + *(type metadata accessor for SceneEntity() + 28));
  sub_2528BE6B0();
  return v3;
}

uint64_t sub_25272F22C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SceneEntity() + 28));
  result = sub_2528BE6B0();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_25272F280(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for SceneEntity() + 28));

  return sub_2528BE6C0();
}

uint64_t (*SceneEntity.sceneType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for SceneEntity() + 28));
  *(v4 + 32) = sub_2528BE6A0();
  return sub_25274BC38;
}

uint64_t SceneEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_2528BEC40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = sub_2528C09B0();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  v14 = *v0;
  sub_2528BE6B0();
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v10 + 56))(v8, 1, 1, v9);
  v15 = sub_2528BE8D0();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  return sub_2528BE900();
}

uint64_t static SceneEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SceneEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC400);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SceneEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v0 = sub_2528BE9F0();
  __swift_project_value_buffer(v0, qword_27F4FC400);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_25272F8B0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_25272F970(uint64_t a1)
{
  if (qword_27F4FB5F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BE9F0();
  v3 = __swift_project_value_buffer(v2, qword_27F4FC400);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_25272FA38()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  swift_getKeyPath();
  result = sub_2528BE9C0();
  qword_27F4FC418 = result;
  return result;
}

uint64_t SceneEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  swift_getKeyPath();
  result = sub_2528BE9C0();
  *a1 = result;
  return result;
}

uint64_t static SceneEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F4FB5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27F4FC418;
  return sub_2528BEA50();
}

uint64_t static SceneEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27F4FB5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F4FC418 = v1;
}

uint64_t (*static SceneEntity.defaultQuery.modify())()
{
  if (qword_27F4FB5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_25272FC5C@<X0>(void *a1@<X8>)
{
  if (qword_27F4FB5F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27F4FC418;
  return sub_2528BEA50();
}

uint64_t sub_25272FCDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27F4FB5F8;
  sub_2528BEA50();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27F4FC418 = v1;
}

uint64_t SceneEntity.init(name:id:homeName:sceneType:)@<X0>(uint64_t a1@<X2>, unsigned __int8 *a2@<X5>, uint64_t *a3@<X8>)
{
  v6 = sub_2528BEC40();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a3 = sub_2528BE730();
  v9 = type metadata accessor for SceneEntity();
  v10 = v9[6];
  sub_2528BEC20();
  *(a3 + v10) = sub_2528BE730();
  v11 = v9[7];
  sub_2528BEC20();
  *(a3 + v11) = sub_2528BE730();
  v12 = v9[5];
  v13 = sub_2528BECF0();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a3 + v12, a1, v13);
  sub_2528BE6C0();
  sub_2528BE6C0();
  sub_2528BE6C0();
  return (*(v14 + 8))(a1, v13);
}

uint64_t SceneEntity.init(staticActionSet:staticHome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBBC0, &qword_2528C1800);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = sub_2528BEC40();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a3 = sub_2528BE730();
  v14 = type metadata accessor for SceneEntity();
  v15 = v14[6];
  sub_2528BEC20();
  *(a3 + v15) = sub_2528BE730();
  v16 = v14[7];
  sub_2528BEC20();
  *(a3 + v16) = sub_2528BE730();
  v17 = v30;
  v18 = a3 + v14[5];
  sub_2528BFCA0();
  v31 = sub_2528BFCB0();
  v32 = v19;
  sub_2528BE6C0();
  v31 = sub_2528BEE20();
  v32 = v20;
  sub_2528BE6C0();
  sub_2528BFC80();
  v21 = sub_2528C0CD0();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v11, 1, v21) == 1)
  {
    v23 = 1701736302;
    v24 = 0xE400000000000000;
  }

  else
  {
    sub_25272006C(v11, v9, &qword_27F4FBBC0, &qword_2528C1800);
    v25 = (*(v22 + 88))(v9, v21);
    if (v25 == *MEMORY[0x277D16EF0])
    {
      v24 = 0xEB000000006C6176;
      v23 = 0x69727241656D6F68;
    }

    else if (v25 == *MEMORY[0x277D16F10])
    {
      v24 = 0xED00006572757472;
      v23 = 0x61706544656D6F68;
    }

    else if (v25 == *MEMORY[0x277D16F38])
    {
      v24 = 0xE600000000000000;
      v23 = 0x7055656B6177;
    }

    else if (v25 == *MEMORY[0x277D16F28])
    {
      v24 = 0xE500000000000000;
      v23 = 0x7065656C73;
    }

    else if (v25 == *MEMORY[0x277D16EF8])
    {
      v24 = 0xEB0000000064656ELL;
      v23 = 0x6966654472657375;
    }

    else
    {
      (*(v22 + 8))(v9, v21);
      v24 = 0xE400000000000000;
      v23 = 1701736302;
    }
  }

  sub_2527213D8(v11, &qword_27F4FBBC0, &qword_2528C1800);
  v31 = v23;
  v32 = v24;
  sub_2528BE6C0();
  v26 = sub_2528BEE30();
  (*(*(v26 - 8) + 8))(v17, v26);
  v27 = sub_2528BFCE0();
  return (*(*(v27 - 8) + 8))(a1, v27);
}

uint64_t sub_252730460@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_2528BECF0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2527304D4(uint64_t a1)
{
  v2 = sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252730554(uint64_t a1)
{
  v2 = sub_25274ABA0(&qword_27F4FC4E8, type metadata accessor for SceneEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527305D0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEC20();
  *a1 = sub_2528BE730();
  v4 = type metadata accessor for SceneEntity();
  v5 = v4[6];
  sub_2528BEC20();
  *(a1 + v5) = sub_2528BE730();
  v6 = v4[7];
  sub_2528BEC20();
  *(a1 + v6) = sub_2528BE730();
  v7 = a1 + v4[5];
  sub_2528BE550();
  sub_2528BE6C0();
  sub_2528BE6C0();
  return sub_2528BE6C0();
}

uint64_t sub_25273074C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  __swift_allocate_value_buffer(v0, qword_27F4FC420);
  __swift_project_value_buffer(v0, qword_27F4FC420);
  type metadata accessor for SceneEntity();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity);
  return sub_2528BE990();
}

uint64_t sub_252730808()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC940, &qword_2528C4A98);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  swift_getKeyPath();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity);
  sub_25272275C(&qword_27F4FC948, &qword_27F4FC458, &unk_2528C3F40);
  sub_2528BEAD0();
  type metadata accessor for SceneEntity();
  sub_2528BEAF0();
  v8 = *(v1 + 8);
  v8(v5, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC950, &qword_2528C4AA0);
  v9 = *(v1 + 72);
  v10 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v11 + v10, v7, v0);
  v12 = sub_2528BEAE0();

  v8(v7, v0);
  return v12;
}

uint64_t static SceneEntityQuery.sortingOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC420);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SceneEntityQuery.sortingOptions.setter(uint64_t a1)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC420);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SceneEntityQuery.sortingOptions.modify())()
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  __swift_project_value_buffer(v0, qword_27F4FC420);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_252730CC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC420);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_252730D8C(uint64_t a1)
{
  if (qword_27F4FB600 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC460, &qword_2528C3F50);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC420);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_252730E60()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  __swift_allocate_value_buffer(v0, qword_27F4FC438);
  __swift_project_value_buffer(v0, qword_27F4FC438);
  type metadata accessor for SceneEntity();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC890, &qword_2528C4940);
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity);
  return sub_2528BE920();
}

uint64_t sub_252730F40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C0, &qword_2528C4960);
  swift_getKeyPath();
  sub_2528BE870();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity);
  v0 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v1 = sub_2528BEA50();

  swift_getKeyPath();
  sub_2528BEA50();
  sub_2528BE870();
  v2 = sub_2528BEA50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8C8, &qword_2528C49E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2528C3EF0;
  *(v3 + 32) = v0;
  *(v3 + 40) = v1;
  *(v3 + 48) = v2;
  type metadata accessor for SceneEntity();
  sub_2528BEA50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC890, &qword_2528C4940);
  v4 = sub_2528BEA40();

  return v4;
}

uint64_t sub_252731184()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8D0, &qword_2528C49E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8D8, &qword_2528C49F0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2528BE850();
  type metadata accessor for SceneEntity();
  sub_25274ABA0(&qword_27F4FC518, type metadata accessor for SceneEntity);
  sub_2528BEAC0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E0, &qword_2528C49F8);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2528C3910;
  (*(v1 + 16))(v10 + v9, v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC458, &unk_2528C3F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC890, &qword_2528C4940);
  sub_25274690C();
  v11 = sub_2528BEAB0();

  (*(v1 + 8))(v4, v0);
  return v11;
}

uint64_t sub_2527313F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26 = a4;
  v27 = a2;
  v28 = a3;
  v29 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8E8, &qword_2528C4A00);
  v7 = *(v6 - 8);
  v30 = v6;
  v31 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8F0, &qword_2528C4A08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC8F8, &qword_2528C4A10);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v26 - v19;
  v21 = *a1;
  sub_25272275C(&qword_27F4FC900, &qword_27F4FC8F0, &qword_2528C4A08);
  sub_2528BEB90();
  swift_getKeyPath();
  sub_2528BEB40();

  (*(v12 + 8))(v15, v11);
  v32 = v27;
  v33 = v28;
  sub_2528BEB80();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC908, &qword_2528C4A40);
  v23 = v29;
  v29[3] = v22;
  v23[4] = sub_25274AC0C();
  __swift_allocate_boxed_opaque_existential_0Tm(v23);
  sub_25272275C(&qword_27F4FC930, &qword_27F4FC8F8, &qword_2528C4A10);
  sub_25272275C(&qword_27F4FC938, &qword_27F4FC8E8, &qword_2528C4A00);
  v24 = v30;
  sub_2528BEB20();
  (*(v31 + 8))(v10, v24);
  return (*(v17 + 8))(v20, v16);
}

uint64_t sub_252731790(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for SceneEntity();
  return sub_2528BED80();
}

uint64_t static SceneEntityQuery.properties.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC438);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SceneEntityQuery.properties.setter(uint64_t a1)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC438);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SceneEntityQuery.properties.modify())()
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  __swift_project_value_buffer(v0, qword_27F4FC438);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_252731A54@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC438);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_252731B20(uint64_t a1)
{
  if (qword_27F4FB608 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC468, &qword_2528C3F58);
  v3 = __swift_project_value_buffer(v2, qword_27F4FC438);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t SceneEntityQuery.entities(for:)(uint64_t a1)
{
  v2[2] = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = type metadata accessor for SceneEntity();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v11 = *v1;
  v2[10] = v10;
  v2[11] = v11;

  return MEMORY[0x2822009F8](sub_252731DA4, 0, 0);
}

uint64_t sub_252731DA4()
{
  v41 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_2528C08B0();
  v0[12] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[2];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v6 = 136315138;
    v8 = sub_2528BECF0();
    v9 = MEMORY[0x2530A81A0](v5, v8);
    v11 = sub_2527389AC(v9, v10, &v40);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_252711000, v3, v4, "Searching for scenes with identifiers: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x2530A8D80](v7, -1, -1);
    MEMORY[0x2530A8D80](v6, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v12 = v0[11];
  v13 = v0[2];
  v14 = sub_2528C0820();
  v15 = __swift_project_value_buffer(v14, qword_27F5025E0);
  v0[13] = v15;

  v16 = 1;
  v0[14] = sub_2528BAD50(1, 0, v15, v13);

  if (sub_2528BE9A0())
  {
    v17 = v0[10];
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v16 = 0;
  }

  v18 = v0[9];
  v19 = v0[10];
  v20 = v0[8];
  v21 = v0[2];
  v22 = type metadata accessor for HomeEntity(0);
  (*(*(v22 - 8) + 56))(v19, v16, 1, v22);

  v24 = sub_252743D54(v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v25 = sub_2528BF3E0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2528C17E0;
  v30 = v29 + v28;
  v31 = *(v26 + 104);
  v31(v30, *MEMORY[0x277D15A30], v25);
  *(v30 + v27) = v24;
  v31(v30 + v27, *MEMORY[0x277D15A28], v25);

  sub_252744570(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = *MEMORY[0x277D16520];
  v33 = sub_2528C00B0();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v20, v32, v33);
  (*(v34 + 56))(v20, 0, 1, v33);
  sub_2528C0590();

  v35 = sub_2528C05D0();
  (*(*(v35 - 8) + 56))(v18, 0, 1, v35);
  v36 = swift_task_alloc();
  v0[15] = v36;
  *v36 = v0;
  v36[1] = sub_2527322C8;
  v37 = v0[9];
  v38 = v0[10];

  return sub_25277ECE4(v38, 0, 1, v37);
}

uint64_t sub_2527322C8(uint64_t a1)
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v6 = *v1;
  *(*v1 + 128) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_252732424, 0, 0);
}

uint64_t sub_252732424()
{
  v43 = v0;
  v1 = *(v0[2] + 16);
  if (v1)
  {
    v41 = v0[5];
    v2 = *(sub_2528BECF0() - 8);
    v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v4 = MEMORY[0x277D84F90];
    v5 = *(v2 + 72);
    do
    {
      v7 = v0[3];
      v6 = v0[4];
      sub_252732974(v0[2] + v3, v0[16], v7);
      if ((*(v41 + 48))(v7, 1, v6) == 1)
      {
        sub_2527213D8(v0[3], &qword_27F4FC470, &unk_2528CDE00);
      }

      else
      {
        v9 = v0[6];
        v8 = v0[7];
        sub_25274AB38(v0[3], v8, type metadata accessor for SceneEntity);
        sub_25274AB38(v8, v9, type metadata accessor for SceneEntity);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2527387D0(0, v4[2] + 1, 1, v4, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
        }

        v11 = v4[2];
        v10 = v4[3];
        if (v11 >= v10 >> 1)
        {
          v4 = sub_2527387D0(v10 > 1, v11 + 1, 1, v4, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
        }

        v12 = v0[6];
        v4[2] = v11 + 1;
        sub_25274AB38(v12, v4 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v11, type metadata accessor for SceneEntity);
      }

      v3 += v5;
      --v1;
    }

    while (v1);
    v13 = v0[2];
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[12];

  sub_2528BAD54(1u, v16, v15, v4);

  v18 = sub_2528C0890();
  v19 = sub_2528C0D10();

  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[14];
  if (v20)
  {
    v22 = v0[4];
    v23 = v0[2];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v42[0] = v25;
    *v24 = 136315394;
    v26 = MEMORY[0x2530A81A0](v4, v22);
    v28 = sub_2527389AC(v26, v27, v42);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v29 = sub_2528BECF0();
    v30 = MEMORY[0x2530A81A0](v23, v29);
    v32 = sub_2527389AC(v30, v31, v42);

    *(v24 + 14) = v32;
    _os_log_impl(&dword_252711000, v18, v19, "Found sceneEntities: %s for identifiers: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530A8D80](v25, -1, -1);
    MEMORY[0x2530A8D80](v24, -1, -1);
  }

  v34 = v0[9];
  v33 = v0[10];
  v36 = v0[7];
  v35 = v0[8];
  v37 = v0[6];
  v38 = v0[3];

  v39 = v0[1];

  return v39(v4);
}

uint64_t sub_252732880(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_25272006C(a1, &v13 - v9, &qword_27F4FC488, &unk_2528C3F80);
  v11 = *a2;
  sub_25272006C(v10, v8, &qword_27F4FC488, &unk_2528C3F80);
  sub_2528BE7A0();
  return sub_2527213D8(v10, &qword_27F4FC488, &unk_2528C3F80);
}

uint64_t sub_252732974@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v47 = a3;
  v48 = a1;
  v4 = sub_2528BEE30();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_2528BFCE0();
  v44 = *(v46 - 8);
  v7 = v44[8];
  v8 = MEMORY[0x28223BE20](v46);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v41 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - v12;
  v13 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = 1 << *(a2 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(a2 + 64);
  v24 = (v21 + 63) >> 6;

  v26 = 0;
  while (v23)
  {
LABEL_10:
    sub_25274A454(*(a2 + 56) + *(v14 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v20, type metadata accessor for HomeEntity.SnapshotPair);
    sub_25274AB38(v20, v18, type metadata accessor for HomeEntity.SnapshotPair);
    v28 = sub_2528BF380();
    if (*(v28 + 16))
    {
      v29 = sub_252785C40(v48);
      if (v30)
      {
        v31 = v44;
        v32 = v44[2];
        v33 = v41;
        v34 = v46;
        v32(v41, *(v28 + 56) + v44[9] * v29, v46);

        v35 = v42;
        (v31[4])(v42, v33, v34);
        v36 = v43;
        v32(v43, v35, v34);
        v37 = v45;
        sub_2528BF2F0();
        v38 = v47;
        SceneEntity.init(staticActionSet:staticHome:)(v36, v37, v47);

        (v31[1])(v35, v34);
        sub_25274A4BC(v18, type metadata accessor for HomeEntity.SnapshotPair);
        v39 = 0;
LABEL_14:
        v40 = type metadata accessor for SceneEntity();
        return (*(*(v40 - 8) + 56))(v38, v39, 1, v40);
      }
    }

    v23 &= v23 - 1;

    result = sub_25274A4BC(v18, type metadata accessor for HomeEntity.SnapshotPair);
  }

  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v24)
    {

      v39 = 1;
      v38 = v47;
      goto LABEL_14;
    }

    v23 = *(a2 + 64 + 8 * v27);
    ++v26;
    if (v23)
    {
      v26 = v27;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t SceneEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *(*(sub_2528BEE30() - 8) + 64) + 15;
  v3[4] = swift_task_alloc();
  v5 = sub_2528BFCE0();
  v3[5] = v5;
  v6 = *(v5 - 8);
  v3[6] = v6;
  v7 = *(v6 + 64) + 15;
  v3[7] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC470, &unk_2528CDE00) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v9 = type metadata accessor for SceneEntity();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC4A8, &qword_2528C3FC0);
  v3[14] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v14 = *(type metadata accessor for HomeEntity.SnapshotPair(0) - 8);
  v3[16] = v14;
  v15 = *(v14 + 64) + 15;
  v3[17] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC478, &unk_2528C3F70) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC480, &unk_2528C7FA0) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80) - 8) + 64) + 15;
  v19 = swift_task_alloc();
  v20 = *v2;
  v3[20] = v19;
  v3[21] = v20;

  return MEMORY[0x2822009F8](sub_252733078, 0, 0);
}

uint64_t sub_252733078()
{
  v36 = v0;
  if (qword_27F4FBB40 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2528C08B0();
  v0[22] = __swift_project_value_buffer(v2, qword_27F5025C8);

  v3 = sub_2528C0890();
  v4 = sub_2528C0D10();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_2527389AC(v6, v5, &v35);
    _os_log_impl(&dword_252711000, v3, v4, "Searching for scenes with string: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x2530A8D80](v8, -1, -1);
    MEMORY[0x2530A8D80](v7, -1, -1);
  }

  if (qword_27F4FBB48 != -1)
  {
    swift_once();
  }

  v9 = v0[21];
  v11 = v0[2];
  v10 = v0[3];
  v12 = sub_2528C0820();
  v13 = __swift_project_value_buffer(v12, qword_27F5025E0);
  v0[23] = v13;

  v14 = 1;
  v0[24] = sub_2528BAD5C(1, 0, v13, v11, v10);

  if (sub_2528BE9A0())
  {
    v15 = v0[20];
    swift_getKeyPath();
    sub_252744BB0();
    sub_2528BE840();

    v14 = 0;
  }

  v16 = v0[19];
  v17 = v0[20];
  v18 = v0[18];
  v19 = type metadata accessor for HomeEntity(0);
  (*(*(v19 - 8) + 56))(v17, v14, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC490, &unk_2528C9050);
  v20 = sub_2528BF3E0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2528C17E0;
  v25 = v24 + v23;
  v26 = *(v21 + 104);
  v26(v25, *MEMORY[0x277D15A30], v20);
  *(v25 + v22) = 0;
  v26(v25 + v22, *MEMORY[0x277D15A28], v20);
  sub_252744570(v24);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v27 = *MEMORY[0x277D16520];
  v28 = sub_2528C00B0();
  v29 = *(v28 - 8);
  (*(v29 + 104))(v18, v27, v28);
  (*(v29 + 56))(v18, 0, 1, v28);
  sub_2528C0590();
  v30 = sub_2528C05D0();
  (*(*(v30 - 8) + 56))(v16, 0, 1, v30);
  v31 = swift_task_alloc();
  v0[25] = v31;
  *v31 = v0;
  v31[1] = sub_252733558;
  v32 = v0[19];
  v33 = v0[20];

  return sub_25277ECE4(v33, 0, 1, v32);
}

uint64_t sub_252733558(uint64_t a1)
{
  v2 = *(*v1 + 200);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 208) = a1;

  sub_2527213D8(v4, &qword_27F4FC480, &unk_2528C7FA0);
  sub_2527213D8(v3, &qword_27F4FC488, &unk_2528C3F80);

  return MEMORY[0x2822009F8](sub_2527336B4, 0, 0);
}

uint64_t sub_2527336B4()
{
  v96 = v0;
  v1 = v0[26];
  v80 = v0[16];
  v88 = v0[14];
  v2 = v0[11];
  v3 = v1 + 64;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(v1 + 64);
  v7 = (63 - v4) >> 6;
  v87 = v0[6];
  v95 = MEMORY[0x277D84F90];
  v77 = v2;
  v85 = (v2 + 48);
  v86 = (v2 + 56);
  v81 = v1;

  v9 = 0;
  v78 = v7;
  v79 = v3;
LABEL_6:
  if (v6)
  {
    v11 = v9;
  }

  else
  {
    do
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_42;
      }

      if (v11 >= v7)
      {
        v49 = v0[26];
        v51 = v0[23];
        v50 = v0[24];
        v52 = v0[22];
        v53 = v0[3];

        v54 = v95;

        sub_2528BAD54(1u, v50, v51, v95);

        v55 = sub_2528C0890();
        v56 = sub_2528C0D10();

        v57 = os_log_type_enabled(v55, v56);
        v58 = v0[24];
        v94 = v95;
        if (v57)
        {
          v59 = v0[10];
          v60 = v0[2];
          v92 = v0[3];
          v61 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v95 = v62;
          *v61 = 136315394;
          v63 = MEMORY[0x2530A81A0](v54, v59);
          v65 = sub_2527389AC(v63, v64, &v95);

          *(v61 + 4) = v65;
          *(v61 + 12) = 2080;
          *(v61 + 14) = sub_2527389AC(v60, v92, &v95);
          _os_log_impl(&dword_252711000, v55, v56, "Found sceneEntities: %s for string: %s", v61, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2530A8D80](v62, -1, -1);
          MEMORY[0x2530A8D80](v61, -1, -1);
        }

        v67 = v0[19];
        v66 = v0[20];
        v69 = v0[17];
        v68 = v0[18];
        v70 = v0[15];
        v72 = v0[12];
        v71 = v0[13];
        v74 = v0[8];
        v73 = v0[9];
        v75 = v0[7];
        v93 = v0[4];

        v76 = v0[1];

        return v76(v94);
      }

      v6 = *(v3 + 8 * v11);
      ++v9;
    }

    while (!v6);
  }

  v82 = v11;
  v83 = (v6 - 1) & v6;
  sub_25274A454(*(v81 + 56) + *(v80 + 72) * (__clz(__rbit64(v6)) | (v11 << 6)), v0[17], type metadata accessor for HomeEntity.SnapshotPair);
  v12 = sub_2528BF380();
  v13 = v12 + 64;
  v14 = -1 << *(v12 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(v12 + 64);
  v17 = (63 - v14) >> 6;
  v91 = v12;

  v18 = 0;
  v84 = MEMORY[0x277D84F90];
  v89 = v17;
  v90 = v13;
LABEL_15:
  v19 = v18;
  if (!v16)
  {
    goto LABEL_17;
  }

  do
  {
    v18 = v19;
LABEL_20:
    v20 = v0[15];
    v21 = v0[5];
    v23 = v0[2];
    v22 = v0[3];
    v24 = __clz(__rbit64(v16)) | (v18 << 6);
    v25 = *(v91 + 48);
    v26 = sub_2528BECF0();
    (*(*(v26 - 8) + 16))(v20, v25 + *(*(v26 - 8) + 72) * v24, v26);
    v27 = *(v91 + 56) + *(v87 + 72) * v24;
    v28 = *(v88 + 48);
    v29 = *(v87 + 16);
    v29(v20 + v28, v27, v21);
    if (sub_2528BFCB0() == v23 && v30 == v22)
    {
    }

    else
    {
      v32 = v0[2];
      v33 = v0[3];
      v34 = sub_2528C1060();

      if ((v34 & 1) == 0)
      {
        v35 = 1;
        goto LABEL_28;
      }
    }

    v36 = v0[17];
    v38 = v0[7];
    v37 = v0[8];
    v39 = v0[4];
    v29(v38, v20 + v28, v0[5]);
    sub_2528BF2F0();
    SceneEntity.init(staticActionSet:staticHome:)(v38, v39, v37);
    v35 = 0;
LABEL_28:
    v16 &= v16 - 1;
    v40 = v0[15];
    v42 = v0[9];
    v41 = v0[10];
    v43 = v0[8];
    (*v86)(v43, v35, 1, v41);
    sub_25274AA0C(v43, v42, &qword_27F4FC470, &unk_2528CDE00);
    sub_2527213D8(v40, &qword_27F4FC4A8, &qword_2528C3FC0);
    if ((*v85)(v42, 1, v41) != 1)
    {
      v44 = v0[12];
      v45 = v0[13];
      sub_25274AB38(v0[9], v45, type metadata accessor for SceneEntity);
      sub_25274AB38(v45, v44, type metadata accessor for SceneEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v84 = sub_2527387D0(0, v84[2] + 1, 1, v84, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v47 = v84[2];
      v46 = v84[3];
      if (v47 >= v46 >> 1)
      {
        v84 = sub_2527387D0(v46 > 1, v47 + 1, 1, v84, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity);
      }

      v48 = v0[12];
      v84[2] = v47 + 1;
      result = sub_25274AB38(v48, v84 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v47, type metadata accessor for SceneEntity);
      v17 = v89;
      v13 = v90;
      goto LABEL_15;
    }

    result = sub_2527213D8(v0[9], &qword_27F4FC470, &unk_2528CDE00);
    v19 = v18;
    v17 = v89;
    v13 = v90;
  }

  while (v16);
LABEL_17:
  while (1)
  {
    v18 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v18 >= v17)
    {
      v10 = v0[17];

      sub_25274A4BC(v10, type metadata accessor for HomeEntity.SnapshotPair);
      result = sub_252735C84(v84, &qword_27F4FC8A0, &qword_2528C4950, type metadata accessor for SceneEntity, type metadata accessor for SceneEntity);
      v9 = v82;
      v6 = v83;
      v7 = v78;
      v3 = v79;
      goto LABEL_6;
    }

    v16 = *(v13 + 8 * v18);
    ++v19;
    if (v16)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t SceneEntityQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25274BC70;

  return sub_252744C64(a1, a2 & 1);
}

uint64_t sub_252733ED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - v8;
  v12 = 0;
  v13 = 0xE000000000000000;
  sub_2528C0E70();

  v12 = 0x203A656D616ELL;
  v13 = 0xE600000000000000;
  MEMORY[0x2530A80B0](a1, a2);
  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  sub_25272006C(a3, v9, &qword_27F4FC488, &unk_2528C3F80);
  v10 = sub_2528C0A10();
  MEMORY[0x2530A80B0](v10);

  return v12;
}

uint64_t sub_252734008(unsigned __int8 a1)
{
  sub_2528C0E70();

  v2 = 0xEB000000006C6176;
  v3 = 0x69727241656D6F68;
  v4 = 0xE500000000000000;
  v5 = 0x7065656C73;
  v6 = 0xEB0000000064656ELL;
  v7 = 0x6966654472657375;
  if (a1 != 4)
  {
    v7 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xED00006572757472;
  v9 = 0x61706544656D6F68;
  if (a1 != 1)
  {
    v9 = 0x7055656B6177;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  MEMORY[0x2530A80B0](v10, v11);

  MEMORY[0x2530A80B0](0x746E45656D6F6820, 0xED0000203A797469);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC488, &unk_2528C3F80);
  v12 = sub_2528C0DB0();
  MEMORY[0x2530A80B0](v12);

  return 0x203A7475706E69;
}

uint64_t sub_2527341A8(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25274BC30;

  return sub_252744C64(a2, a3 & 1);
}

uint64_t sub_252734264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_25273430C;

  return SceneEntityQuery.entities(matching:)(a2, a3);
}

uint64_t sub_25273430C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_25273441C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC450, &qword_2528C3F10);
  swift_getKeyPath();
  result = sub_2528BE9C0();
  *a1 = result;
  return result;
}

uint64_t sub_252734468(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25274BC70;

  return SceneEntityQuery.entities(for:)(a1);
}

uint64_t sub_2527344FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CB9C98] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25271F3AC;

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t sub_2527345B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277CB9CA0] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_252734670;

  return MEMORY[0x28210B610](a1, a2, a3, a4);
}

uint64_t sub_252734670(uint64_t a1)
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

uint64_t sub_252734770(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_2527460E8();
  *v6 = v2;
  v6[1] = sub_2527228B0;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_252734824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(MEMORY[0x277CBA2A8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2527228B0;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t sub_2527348DC()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v4 = 0x203A726F727265;
    v2 = sub_2528C0A10();
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_2528C0E70();

    v4 = 0xD000000000000013;
    v2 = sub_2528C1040();
LABEL_5:
    MEMORY[0x2530A80B0](v2);

    return v4;
  }

  return 0x73736563637573;
}

uint64_t sub_2527349CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = type metadata accessor for SceneEntity();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = (&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_2528C09B0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  sub_2528C09A0();
  sub_2528C0990();
  sub_2528BE6B0();
  v17 = *v14;
  sub_2528BE6B0();
  sub_25274A4BC(v14, type metadata accessor for SceneEntity);
  sub_2528C0970();

  sub_2528C0990();
  sub_2528BEC30();
  (*(v9 + 56))(v7, 1, 1, v8);
  v18 = sub_2528BE8D0();
  (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
  return sub_2528BE900();
}

uint64_t sub_252734CD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252749584();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252734CFC(uint64_t a1)
{
  v2 = sub_25274A570();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252734D48()
{
  sub_25274A570();

  return sub_2528BE550();
}

uint64_t sub_252734DB8(uint64_t a1)
{
  v2 = sub_252746464();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252734E0C(uint64_t a1)
{
  v2 = sub_252746708();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_252734E58@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_2528BEC40();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *v1;
  if (!*(v1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
    sub_2528BEC20();
    sub_252746B7C();
    v6 = sub_2528BE6E0();
    sub_2528BE6C0();
    a1[3] = &type metadata for SceneOutcome.FailureCase;
    result = sub_252746BD0();
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
    sub_2528BEC20();
    v6 = sub_2528BE760();
    sub_2528BE6C0();
    a1[3] = &type metadata for SceneOutcome.FailureWithHomeKitErrorCodeCase;
    result = sub_252746B28();
LABEL_5:
    a1[4] = result;
    *a1 = v6;
    return result;
  }

  a1[3] = &type metadata for SceneOutcome.SuccessCase;
  result = sub_252746C24();
  a1[4] = result;
  return result;
}

uint64_t sub_252734FAC@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5E8, &qword_2528C4738);
  v13 = *(v15 - 8);
  v1 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v3 = &v12 - v2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5F0, &qword_2528C4740);
  v4 = *(v12 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v12);
  v7 = &v12 - v6;
  v8 = sub_252746C78();
  MEMORY[0x2530A60E0](v8, &type metadata for SceneOutcome, &type metadata for SceneOutcome.SuccessCase.Resolver, v8);
  v9 = sub_252746CCC();
  MEMORY[0x2530A60E0](v9, &type metadata for SceneOutcome, &type metadata for SceneOutcome.FailureCase.Resolver, v9);
  v10 = sub_252746D20();
  MEMORY[0x2530A60E0](v10, &type metadata for SceneOutcome, &type metadata for SceneOutcome.FailureWithHomeKitErrorCodeCase.Resolver, v10);
  sub_252746AD4();
  sub_2528BEAA0();
  v20 = v8;
  v21 = &type metadata for SceneOutcome.SuccessCase.Resolver;
  sub_2528BEA90();
  v18 = &type metadata for SceneOutcome.SuccessCase.Resolver;
  v19 = &type metadata for SceneOutcome.FailureCase.Resolver;
  v16 = v8;
  v17 = v9;
  sub_2528BEA90();
  (*(v13 + 8))(v3, v15);
  return (*(v4 + 8))(v7, v12);
}

uint64_t sub_252735254()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  *(v1 + 8) = 2;
  return (*(v0 + 8))();
}

uint64_t sub_25273527C(uint64_t a1)
{
  v2 = sub_25274BBD8();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2527352C8()
{
  sub_25274BBD8();

  return sub_2528BE550();
}

uint64_t sub_252735354(uint64_t a1)
{
  v2 = sub_25274B258();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2527353A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC128, &unk_2528C3590);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC130, &unk_2528C6A80);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_2528BEC40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_2528BEC20();
  (*(v9 + 56))(v7, 1, 1, v8);
  v11 = sub_2528BE8D0();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  return sub_2528BE900();
}

uint64_t sub_252735568(uint64_t a1)
{
  v2 = sub_25274B008();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2527355D4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_2527355F8, 0, 0);
}

uint64_t sub_2527355F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_2528BE6B0();
  *v1 = *(v0 + 32);
  *(v1 + 8) = 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25273566C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5C8, &qword_2528C4728);
  sub_2528BEC20();
  sub_252746B7C();
  result = sub_2528BE6E0();
  *a1 = result;
  return result;
}

uint64_t sub_25273571C(uint64_t a1)
{
  v2 = sub_25274BB84();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252735768()
{
  sub_25274BB84();

  return sub_2528BE550();
}

uint64_t sub_2527357F4(uint64_t a1)
{
  v2 = sub_25274B5B0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252735840(uint64_t a1)
{
  v2 = sub_25274B360();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_25273588C()
{
  v0 = sub_2528BE9F0();
  __swift_allocate_value_buffer(v0, qword_27F502870);
  __swift_project_value_buffer(v0, qword_27F502870);
  return sub_2528BE9D0();
}

uint64_t sub_2527358F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 24) = a1;
  *(v2 + 32) = v3;
  return MEMORY[0x2822009F8](sub_252735914, 0, 0);
}

uint64_t sub_252735914()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_2528BE6B0();
  *v1 = v0[2];
  *(v1 + 8) = 1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25273598C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2528BEC40();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC5B8, &qword_2528C4720);
  sub_2528BEC20();
  result = sub_2528BE760();
  *a1 = result;
  return result;
}

uint64_t sub_252735A34(uint64_t a1)
{
  v2 = sub_25274BB30();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_252735A80()
{
  sub_25274BB30();

  return sub_2528BE550();
}

uint64_t sub_252735B0C(uint64_t a1)
{
  v2 = sub_25274B908();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_252735B58(uint64_t a1)
{
  v2 = sub_25274B6B8();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_252735BA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FBE28, &qword_2528C4730);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2528C17D0;
  v1 = sub_252746C24();
  *(v0 + 32) = &type metadata for SceneOutcome.SuccessCase;
  *(v0 + 40) = v1;
  v2 = sub_252746BD0();
  *(v0 + 48) = &type metadata for SceneOutcome.FailureCase;
  *(v0 + 56) = v2;
  v3 = sub_252746B28();
  *(v0 + 64) = &type metadata for SceneOutcome.FailureWithHomeKitErrorCodeCase;
  *(v0 + 72) = v3;
  return v0;
}

uint64_t sub_252735C84(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v24 = v8 + v6;
  }

  else
  {
    v24 = v8;
  }

  v7 = sub_2527387D0(isUniquelyReferenced_nonNull_native, v24, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v17 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  v18 = *(result - 8);
  if (v17 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = *(v18 + 72);
  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v21 = v7[2];
  v22 = __OFADD__(v21, v6);
  v23 = v21 + v6;
  if (!v22)
  {
    v7[2] = v23;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_252735DFC(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= *(v5 + 24) >> 1)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  result = sub_252737C20(result, v15, 1, v5, a2, a3);
  v5 = result;
  if (!*(v10 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v12 = *(v5 + 16);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 16) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_252735FC4(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  v7 = v6 + v4;
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = result;
  v11 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 <= *(v5 + 24) >> 1)
  {
    if (*(v10 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v6 <= v7)
  {
    v15 = v6 + v4;
  }

  else
  {
    v15 = v6;
  }

  result = sub_252737E90(result, v15, 1, v5, a2, a3);
  v5 = result;
  if (!*(v10 + 16))
  {
LABEL_13:

    if (!v4)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_14:
    *v3 = v5;
    return result;
  }

  v12 = *(v5 + 16);
  v13 = __OFADD__(v12, v4);
  v14 = v12 + v4;
  if (!v13)
  {
    *(v5 + 16) = v14;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2527360E0(uint64_t a1)
{
  v79 = sub_2528BFDE0();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7A8, &unk_2528C4860);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_2527387D0(isUniquelyReferenced_nonNull_native, v23, 1, v18, &qword_27F4FC7B0, &qword_2528D5550, MEMORY[0x277D16348]);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_252868CB8(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_25271A648();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_25272006C(v16, v77, &qword_27F4FC7A8, &unk_2528C4860);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_2527213D8(v39, &qword_27F4FC7A8, &unk_2528C4860);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_2527387D0(v41 > 1, v76 + 1, 1, v18, &qword_27F4FC7B0, &qword_2528D5550, MEMORY[0x277D16348]);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_25272006C(v16, v78, &qword_27F4FC7A8, &unk_2528C4860);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_2527213D8(v45, &qword_27F4FC7A8, &unk_2528C4860);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_25272006C(v16, v77, &qword_27F4FC7A8, &unk_2528C4860);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_2527213D8(v16, &qword_27F4FC7A8, &unk_2528C4860);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_25272006C(v16, v78, &qword_27F4FC7A8, &unk_2528C4860);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_2527213D8(v16, &qword_27F4FC7A8, &unk_2528C4860);
    sub_25271A648();
    result = sub_2527213D8(v39, &qword_27F4FC7A8, &unk_2528C4860);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527368C0(uint64_t a1)
{
  v79 = sub_2528BFCF0();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC650, &qword_2528C4768);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_2527387D0(isUniquelyReferenced_nonNull_native, v23, 1, v18, &qword_27F4FC658, &qword_2528C4770, MEMORY[0x277D15F48]);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_252868CD0(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_25271A648();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_25272006C(v16, v77, &qword_27F4FC650, &qword_2528C4768);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_2527213D8(v39, &qword_27F4FC650, &qword_2528C4768);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_2527387D0(v41 > 1, v76 + 1, 1, v18, &qword_27F4FC658, &qword_2528C4770, MEMORY[0x277D15F48]);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_25272006C(v16, v78, &qword_27F4FC650, &qword_2528C4768);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_2527213D8(v45, &qword_27F4FC650, &qword_2528C4768);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_25272006C(v16, v77, &qword_27F4FC650, &qword_2528C4768);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_2527213D8(v16, &qword_27F4FC650, &qword_2528C4768);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_25272006C(v16, v78, &qword_27F4FC650, &qword_2528C4768);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_2527213D8(v16, &qword_27F4FC650, &qword_2528C4768);
    sub_25271A648();
    result = sub_2527213D8(v39, &qword_27F4FC650, &qword_2528C4768);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252737064(uint64_t a1)
{
  v79 = sub_2528BECF0();
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v61 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v61 - v15;
  v17 = *(a1 + 16);
  v18 = *v1;
  v19 = *(*v1 + 2);
  v20 = v19 + v17;
  if (__OFADD__(v19, v17))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v78 = v14;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v12;
  if (!isUniquelyReferenced_nonNull_native || (v22 = *(v18 + 3) >> 1, v22 < v20))
  {
    if (v19 <= v20)
    {
      v23 = v19 + v17;
    }

    else
    {
      v23 = v19;
    }

    v18 = sub_2527387D0(isUniquelyReferenced_nonNull_native, v23, 1, v18, &qword_27F4FC828, &qword_2528C48D8, MEMORY[0x277CC95F0]);
    v22 = *(v18 + 3) >> 1;
  }

  v24 = *(v18 + 2);
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v19 = *(v4 + 72);
  v25 = v22 - v24;
  result = sub_252868D00(&v81, &v18[v20 + v19 * v24], v22 - v24, a1);
  if (result < v17)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v28 = *(v18 + 2);
    v29 = __OFADD__(v28, result);
    v30 = v28 + result;
    if (v29)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v18 + 2) = v30;
  }

  if (result != v25)
  {
    result = sub_25271A648();
LABEL_14:
    *v1 = v18;
    return result;
  }

LABEL_17:
  v76 = *(v18 + 2);
  v27 = v82;
  v67 = v81;
  v30 = v84;
  v26 = &v86;
  v62 = v83;
  v31 = v85;
  v65 = v82;
  if (v85)
  {
    v32 = v84;
LABEL_27:
    v74 = (v31 - 1) & v31;
    v36 = v79;
    (*(v2 + 16))(v16, *(v67 + 48) + (__clz(__rbit64(v31)) | (v32 << 6)) * v19, v79);
    v69 = *(v2 + 56);
    v69(v16, 0, 1, v36);
    v35 = v32;
    while (1)
    {
      v37 = v77;
      sub_25272006C(v16, v77, &qword_27F4FC628, &qword_2528C4750);
      v38 = *(v2 + 48);
      v2 += 48;
      v73 = v38;
      if (v38(v37, 1, v36) == 1)
      {
        break;
      }

      v40 = (v4 + 32);
      v64 = (v62 + 64) >> 6;
      v68 = v4 + 56;
      v66 = (v4 + 16);
      v63 = (v4 + 8);
      v39 = v77;
      v75 = v40;
      while (1)
      {
        sub_2527213D8(v39, &qword_27F4FC628, &qword_2528C4750);
        v41 = *(v18 + 3);
        v42 = v41 >> 1;
        if ((v41 >> 1) < v76 + 1)
        {
          v18 = sub_2527387D0(v41 > 1, v76 + 1, 1, v18, &qword_27F4FC828, &qword_2528C48D8, MEMORY[0x277CC95F0]);
          v42 = *(v18 + 3) >> 1;
        }

        v43 = v78;
        sub_25272006C(v16, v78, &qword_27F4FC628, &qword_2528C4750);
        if (v73(v43, 1, v79) != 1)
        {
          break;
        }

        v44 = v35;
        v45 = v78;
        v4 = v76;
LABEL_38:
        v35 = v44;
        sub_2527213D8(v45, &qword_27F4FC628, &qword_2528C4750);
        v76 = v4;
LABEL_33:
        *(v18 + 2) = v4;
        v39 = v77;
        sub_25272006C(v16, v77, &qword_27F4FC628, &qword_2528C4750);
        if (v73(v39, 1, v79) == 1)
        {
          goto LABEL_30;
        }
      }

      v71 = &v18[v20];
      v4 = v76;
      v46 = *v75;
      if (v76 <= v42)
      {
        v47 = v42;
      }

      else
      {
        v47 = v76;
      }

      v72 = v47;
      v45 = v78;
      v48 = v79;
      v49 = v80;
      v70 = v46;
      while (1)
      {
        v53 = v49;
        v54 = v45;
        v55 = v48;
        v56 = v46;
        v46(v53, v54, v48);
        if (v4 == v72)
        {
          (*v63)(v80, v55);
          v4 = v72;
          v76 = v72;
          goto LABEL_33;
        }

        sub_2527213D8(v16, &qword_27F4FC628, &qword_2528C4750);
        v76 = v4;
        v56(&v71[v4 * v19], v80, v55);
        v57 = v74;
        if (!v74)
        {
          break;
        }

        v58 = v35;
LABEL_55:
        v74 = (v57 - 1) & v57;
        v51 = v79;
        (*v66)(v16, *(v67 + 48) + (__clz(__rbit64(v57)) | (v58 << 6)) * v19, v79);
        v50 = 0;
        v60 = v58;
LABEL_44:
        v4 = v76 + 1;
        v69(v16, v50, 1, v51);
        v45 = v78;
        sub_25272006C(v16, v78, &qword_27F4FC628, &qword_2528C4750);
        v52 = v73(v45, 1, v51);
        v48 = v51;
        v35 = v60;
        v44 = v60;
        v49 = v80;
        v46 = v70;
        if (v52 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v64 <= v35 + 1)
      {
        v59 = v35 + 1;
      }

      else
      {
        v59 = v64;
      }

      v60 = v59 - 1;
      while (1)
      {
        v58 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v58 >= v64)
        {
          v74 = 0;
          v50 = 1;
          v51 = v79;
          goto LABEL_44;
        }

        v57 = *(v65 + 8 * v58);
        ++v35;
        if (v57)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v36 = v79;
      v69 = *(v2 + 56);
      v69(v16, 1, 1, v79);
      v74 = 0;
    }

    v39 = v77;
LABEL_30:
    sub_2527213D8(v16, &qword_27F4FC628, &qword_2528C4750);
    sub_25271A648();
    result = sub_2527213D8(v39, &qword_27F4FC628, &qword_2528C4750);
    goto LABEL_14;
  }

LABEL_20:
  v33 = (*(v26 - 32) + 64) >> 6;
  if (v33 <= v30 + 1)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v33;
  }

  v35 = v34 - 1;
  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v33)
    {
      goto LABEL_57;
    }

    v31 = *(v27 + 8 * v32);
    ++v30;
    if (v31)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2527377CC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_252737D40(result, v11, 1, v3);
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

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2527378C0(void *result)
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
  v7 = *v1;
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_252738660(result, v11, 1, v3, &qword_27F4FC818, &qword_2528C48C8, &qword_27F4FC810, &qword_2528C48C0);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC810, &qword_2528C48C0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2527379E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_2528BE7B0();
  *a2 = result;
  return result;
}

char *sub_252737ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC730, &unk_2528D3CC0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_252737C20(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_252737D40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC858, &qword_2528C4910);
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

char *sub_252737E90(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[40 * v10])
    {
      memmove(v14, v15, 40 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_25273805C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2527381B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_252738394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC698, &unk_2528C4790);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_252738510(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC720, &qword_2528D5530);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_252738660(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_2527387D0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_2527389AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252738A78(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_25272BF98(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_252738A78(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_252738B84(a5, a6);
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
    result = sub_2528C0EB0();
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

uint64_t sub_252738B84(uint64_t a1, unint64_t a2)
{
  v4 = sub_252738BD0(a1, a2);
  sub_252738D00(&unk_286493A70);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_252738BD0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_252738DEC(v5, 0);
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

  result = sub_2528C0EB0();
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
        v10 = sub_2528C0A60();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_252738DEC(v10, 0);
        result = sub_2528C0E60();
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

uint64_t sub_252738D00(uint64_t result)
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

  result = sub_252738E60(result, v12, 1, v3);
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

void *sub_252738DEC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC898, &qword_2528C4948);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_252738E60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC898, &qword_2528C4948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_252738F54(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528C0570();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25274ABA0(&qword_27F4FC6D0, MEMORY[0x277D16AB0]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25273DA54(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_252739234(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25274ABA0(&qword_27F4FC680, MEMORY[0x277CC95F0]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25273DD1C(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_252739514(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = sub_2528C1120();
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
    sub_25273DFE4(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2527395F4(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2528C1130();
  AttributeKind.rawValue.getter();
  sub_2528C0A40();

  v7 = sub_2528C1180();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v20 = *(*(v5 + 48) + v9);
      v11 = AttributeKind.rawValue.getter();
      v13 = v12;
      if (v11 == AttributeKind.rawValue.getter() && v13 == v14)
      {
        break;
      }

      v16 = sub_2528C1060();

      if (v16)
      {
        goto LABEL_11;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_9:
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_25273E104(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v21;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25273978C(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_2528C1130();
  DeviceType.SingleDeviceType.rawValue.getter();
  sub_2528C0A40();

  v6 = sub_2528C1180();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_106:
    v23 = *v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v26;
    sub_25273E344(a2, v8, isUniquelyReferenced_nonNull_native);
    *v26 = v28;
    result = 1;
    goto LABEL_109;
  }

  v9 = ~v7;
  while (2)
  {
    v10 = 0xEB00000000726569;
    v11 = 0x6669727550726961;
    switch(*(*(v4 + 48) + v8))
    {
      case 1:
        v11 = 0xD000000000000010;
        v10 = 0x80000002528E4FF0;
        break;
      case 2:
        v10 = 0xE700000000000000;
        v11 = 0x5654656C707061;
        break;
      case 3:
        v10 = 0xE600000000000000;
        v11 = 0x6172656D6163;
        break;
      case 4:
        v11 = 0xD000000000000013;
        v10 = 0x80000002528E5010;
        break;
      case 5:
        v11 = 0xD000000000000014;
        v10 = 0x80000002528E5030;
        break;
      case 6:
        v11 = 0x53746361746E6F63;
        v10 = 0xED0000726F736E65;
        break;
      case 7:
        v10 = 0xE400000000000000;
        v11 = 1919905636;
        break;
      case 8:
        v10 = 0xE300000000000000;
        v11 = 7233894;
        break;
      case 9:
        v10 = 0xE600000000000000;
        v11 = 0x746563756166;
        break;
      case 0xA:
        v11 = 0x6F44656761726167;
        goto LABEL_28;
      case 0xB:
        v11 = 0x6F43726574616568;
        v10 = 0xEC00000072656C6FLL;
        break;
      case 0xC:
        v11 = 0xD000000000000016;
        v10 = 0x80000002528E5080;
        break;
      case 0xD:
        v11 = 0x79746964696D7568;
        v10 = 0xEE00726F736E6553;
        break;
      case 0xE:
        v11 = 0x736E65536B61656CLL;
LABEL_28:
        v10 = 0xEA0000000000726FLL;
        break;
      case 0xF:
        v11 = 0x6C7562746867696CLL;
        v10 = 0xE900000000000062;
        break;
      case 0x10:
        v12 = 0x53746867696CLL;
        goto LABEL_14;
      case 0x11:
        v10 = 0xE400000000000000;
        v11 = 1801678700;
        break;
      case 0x12:
        v11 = 0x65536E6F69746F6DLL;
        v10 = 0xEC000000726F736ELL;
        break;
      case 0x13:
        v11 = 0x636E61707563636FLL;
        v10 = 0xEF726F736E655379;
        break;
      case 0x14:
        v10 = 0xE600000000000000;
        v11 = 0x74656C74756FLL;
        break;
      case 0x15:
        v11 = 0xD000000000000012;
        v10 = 0x80000002528E50F0;
        break;
      case 0x16:
        v11 = 0x7974697275636573;
        v10 = 0xEE006D6574737953;
        break;
      case 0x17:
        v10 = 0xE600000000000000;
        v11 = 0x7265776F6873;
        break;
      case 0x18:
        v12 = 0x53656B6F6D73;
LABEL_14:
        v11 = v12 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
        v10 = 0xEB00000000726F73;
        break;
      case 0x19:
        v11 = 0x656C6B6E69727073;
        v10 = 0xE900000000000072;
        break;
      case 0x1A:
        v10 = 0xE600000000000000;
        v11 = 0x686374697773;
        break;
      case 0x1B:
        v11 = 0x69736976656C6574;
        v10 = 0xEA00000000006E6FLL;
        break;
      case 0x1C:
        v11 = 0xD000000000000011;
        v10 = 0x80000002528E5150;
        break;
      case 0x1D:
        v11 = 0x74736F6D72656874;
        v10 = 0xEA00000000007461;
        break;
      case 0x1E:
        v10 = 0xE500000000000000;
        v11 = 0x65766C6176;
        break;
      case 0x1F:
        v10 = 0xE600000000000000;
        v11 = 0x776F646E6977;
        break;
      case 0x20:
        v11 = 0x6F43776F646E6977;
        v10 = 0xEE00676E69726576;
        break;
      default:
        break;
    }

    v13 = 0x6669727550726961;
    v14 = 0xEB00000000726569;
    switch(a2)
    {
      case 1:
        v14 = 0x80000002528E4FF0;
        if (v11 == 0xD000000000000010)
        {
          goto LABEL_100;
        }

        goto LABEL_101;
      case 2:
        v14 = 0xE700000000000000;
        if (v11 != 0x5654656C707061)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 3:
        v14 = 0xE600000000000000;
        if (v11 != 0x6172656D6163)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 4:
        v14 = 0x80000002528E5010;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 5:
        v14 = 0x80000002528E5030;
        if (v11 != 0xD000000000000014)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 6:
        v14 = 0xED0000726F736E65;
        if (v11 != 0x53746361746E6F63)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 7:
        v14 = 0xE400000000000000;
        if (v11 != 1919905636)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 8:
        v14 = 0xE300000000000000;
        if (v11 != 7233894)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 9:
        v14 = 0xE600000000000000;
        v19 = 1668637030;
        goto LABEL_69;
      case 10:
        v16 = 0x6F44656761726167;
        goto LABEL_82;
      case 11:
        v17 = 0x6F43726574616568;
        v18 = 1919249519;
        goto LABEL_79;
      case 12:
        v14 = 0x80000002528E5080;
        if (v11 != 0xD000000000000016)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 13:
        v20 = 0x79746964696D7568;
        v21 = 0x726F736E6553;
        goto LABEL_90;
      case 14:
        v16 = 0x736E65536B61656CLL;
LABEL_82:
        v14 = 0xEA0000000000726FLL;
        if (v11 != v16)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 15:
        v14 = 0xE900000000000062;
        if (v11 != 0x6C7562746867696CLL)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 16:
        v15 = 0x53746867696CLL;
        goto LABEL_54;
      case 17:
        v14 = 0xE400000000000000;
        if (v11 != 1801678700)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 18:
        v17 = 0x65536E6F69746F6DLL;
        v18 = 1919906670;
LABEL_79:
        v14 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        if (v11 != v17)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 19:
        v14 = 0xEF726F736E655379;
        if (v11 != 0x636E61707563636FLL)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 20:
        v14 = 0xE600000000000000;
        v19 = 1819571567;
LABEL_69:
        if (v11 != (v19 & 0xFFFF0000FFFFFFFFLL | 0x746500000000))
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 21:
        v14 = 0x80000002528E50F0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 22:
        v20 = 0x7974697275636573;
        v21 = 0x6D6574737953;
        goto LABEL_90;
      case 23:
        v14 = 0xE600000000000000;
        if (v11 != 0x7265776F6873)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 24:
        v15 = 0x53656B6F6D73;
LABEL_54:
        v14 = 0xEB00000000726F73;
        if (v11 != (v15 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 25:
        v14 = 0xE900000000000072;
        if (v11 != 0x656C6B6E69727073)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 26:
        v14 = 0xE600000000000000;
        if (v11 != 0x686374697773)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 27:
        v14 = 0xEA00000000006E6FLL;
        if (v11 != 0x69736976656C6574)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 28:
        v14 = 0x80000002528E5150;
        if (v11 != 0xD000000000000011)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 29:
        v13 = 0x74736F6D72656874;
        v14 = 0xEA00000000007461;
        goto LABEL_99;
      case 30:
        v14 = 0xE500000000000000;
        if (v11 != 0x65766C6176)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 31:
        v14 = 0xE600000000000000;
        if (v11 != 0x776F646E6977)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      case 32:
        v20 = 0x6F43776F646E6977;
        v21 = 0x676E69726576;
LABEL_90:
        v14 = v21 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
        if (v11 != v20)
        {
          goto LABEL_101;
        }

        goto LABEL_100;
      default:
LABEL_99:
        if (v11 != v13)
        {
          goto LABEL_101;
        }

LABEL_100:
        if (v10 != v14)
        {
LABEL_101:
          v22 = sub_2528C1060();

          if (v22)
          {
            goto LABEL_108;
          }

          v8 = (v8 + 1) & v9;
          if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_106;
          }

          continue;
        }

LABEL_108:
        result = 0;
        LOBYTE(a2) = *(*(v4 + 48) + v8);
LABEL_109:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_25273A0C4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2528C1130();
  sub_2528C0A40();
  v9 = sub_2528C1180();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2528C1060() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25273ED04(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25273A214(_WORD *a1, uint64_t a2)
{
  v3 = a2;
  v16 = a2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v15 = a2;
  sub_2528C1130();
  DeviceType.hash(into:)();
  v7 = sub_2528C1180();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v14[0] = *(*(v5 + 48) + 2 * v9);
      if (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v14, &v16))
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        v3 = v16;
        goto LABEL_6;
      }
    }

    result = 0;
    LOWORD(v3) = *(*(v5 + 48) + 2 * v9);
  }

  else
  {
LABEL_6:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v14 = *v2;
    sub_25273EE84(v3, v9, isUniquelyReferenced_nonNull_native);
    *v2 = *v14;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_25273A32C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BFDE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25274ABA0(&qword_27F4FC7A0, MEMORY[0x277D16348]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25273EFEC(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25273A60C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528C07B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25274ABA0(&qword_27F4FC6A8, MEMORY[0x277D16EC8]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25274ABA0(&qword_27F4FC6B0, MEMORY[0x277D16EC8]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25273F2B4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25273A8EC(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2528C1130();
  MEMORY[0x2530A87A0](a2);
  v7 = sub_2528C1180();
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
    sub_25273F57C(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25273A9E4(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x2530A8770](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_25273F6D8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25273AACC(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_2528C1130();
  RobotVacuumCleanerCleanMode.rawValue.getter();
  sub_2528C0A40();

  v7 = sub_2528C1180();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_48:
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_25273F7FC(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    result = 1;
    goto LABEL_51;
  }

  v10 = ~v8;
  while (2)
  {
    v11 = 0xE600000000000000;
    v12 = 0x6D7575636176;
    switch(*(*(v5 + 48) + v9))
    {
      case 1:
        v11 = 0xE300000000000000;
        v12 = 7368557;
        break;
      case 2:
        v12 = 0x68546D7575636176;
        v11 = 0xED0000706F4D6E65;
        break;
      case 3:
        v12 = 0x61656C4370656564;
        v11 = 0xE90000000000006ELL;
        break;
      case 4:
        v11 = 0xE400000000000000;
        v12 = 1869903201;
        break;
      case 5:
        v11 = 0xE500000000000000;
        v12 = 0x7465697571;
        break;
      case 6:
        v11 = 0xE500000000000000;
        v12 = 0x6B63697571;
        break;
      case 7:
        v11 = 0xE800000000000000;
        v12 = 0x6573696F4E776F6CLL;
        break;
      case 8:
        v11 = 0xE900000000000079;
        v12 = 0x6772656E45776F6CLL;
        break;
      case 9:
        v11 = 0xE800000000000000;
        v12 = 0x6E6F697461636176;
        break;
      case 0xA:
        v11 = 0xE500000000000000;
        v12 = 0x746867696ELL;
        break;
      case 0xB:
        v11 = 0xE300000000000000;
        v12 = 7954788;
        break;
      case 0xC:
        v11 = 0xE300000000000000;
        v12 = 7235949;
        break;
      case 0xD:
        v11 = 0xE300000000000000;
        v12 = 7889261;
        break;
      default:
        break;
    }

    v13 = 0xE600000000000000;
    v14 = 0x6D7575636176;
    switch(a2)
    {
      case 1:
        v13 = 0xE300000000000000;
        if (v12 == 7368557)
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 2:
        v13 = 0xED0000706F4D6E65;
        if (v12 != 0x68546D7575636176)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 3:
        v13 = 0xE90000000000006ELL;
        if (v12 != 0x61656C4370656564)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 4:
        v13 = 0xE400000000000000;
        if (v12 != 1869903201)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 5:
        v13 = 0xE500000000000000;
        if (v12 != 0x7465697571)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 6:
        v13 = 0xE500000000000000;
        if (v12 != 0x6B63697571)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 7:
        v13 = 0xE800000000000000;
        if (v12 != 0x6573696F4E776F6CLL)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 8:
        v13 = 0xE900000000000079;
        if (v12 != 0x6772656E45776F6CLL)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 9:
        v13 = 0xE800000000000000;
        if (v12 != 0x6E6F697461636176)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 10:
        v13 = 0xE500000000000000;
        v14 = 0x746867696ELL;
        goto LABEL_41;
      case 11:
        v13 = 0xE300000000000000;
        if (v12 != 7954788)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 12:
        v13 = 0xE300000000000000;
        if (v12 != 7235949)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      case 13:
        v13 = 0xE300000000000000;
        if (v12 != 7889261)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      default:
LABEL_41:
        if (v12 != v14)
        {
          goto LABEL_43;
        }

LABEL_42:
        if (v11 != v13)
        {
LABEL_43:
          v15 = sub_2528C1060();

          if (v15)
          {
            goto LABEL_50;
          }

          v9 = (v9 + 1) & v10;
          if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_48;
          }

          continue;
        }

LABEL_50:
        result = 0;
        LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_51:
        *a1 = a2;
        return result;
    }
  }
}

uint64_t sub_25273AF34(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_2528BFCF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48]);
  v36 = a2;
  v13 = sub_2528C0900();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_25274ABA0(&qword_27F4FC640, MEMORY[0x277D15F48]);
      v23 = sub_2528C0930();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_25273FCC0(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_25273B214(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_2528C1130();
  sub_2528C0A40();

  v6 = sub_2528C1180();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v4 + 48) + v8);
      if (v10 > 2)
      {
        if (v10 == 3)
        {
          v12 = 0xE400000000000000;
          v11 = 1701670760;
        }

        else
        {
          if (v10 == 4)
          {
            v11 = 1836019570;
          }

          else
          {
            v11 = 1701736314;
          }

          v12 = 0xE400000000000000;
        }
      }

      else if (*(*(v4 + 48) + v8))
      {
        if (v10 == 1)
        {
          v11 = 0x7954656369766564;
        }

        else
        {
          v11 = 0x70756F7267;
        }

        if (v10 == 1)
        {
          v12 = 0xEA00000000006570;
        }

        else
        {
          v12 = 0xE500000000000000;
        }
      }

      else
      {
        v11 = 0x614E656369766564;
        v12 = 0xEA0000000000656DLL;
      }

      v13 = 1836019570;
      if (a2 != 4)
      {
        v13 = 1701736314;
      }

      if (a2 == 3)
      {
        v13 = 1701670760;
      }

      v14 = 0xEA00000000006570;
      v15 = 0x7954656369766564;
      if (a2 != 1)
      {
        v15 = 0x70756F7267;
        v14 = 0xE500000000000000;
      }

      if (!a2)
      {
        v15 = 0x614E656369766564;
        v14 = 0xEA0000000000656DLL;
      }

      v16 = a2 <= 2u ? v15 : v13;
      v17 = a2 <= 2u ? v14 : 0xE400000000000000;
      if (v11 == v16 && v12 == v17)
      {
        break;
      }

      v18 = sub_2528C1060();

      if (v18)
      {
        goto LABEL_38;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_36:
    v19 = *v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    sub_25273FF88(a2, v8, isUniquelyReferenced_nonNull_native);
    *v22 = v24;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_25273B530(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528C0570();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6D8, &qword_2528C47B0);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25273B88C(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528BECF0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC678, &qword_2528C4780);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25273BBE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC728, &unk_2528C47F0);
  result = sub_2528C0E40();
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
      result = sub_2528C1120();
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

uint64_t sub_25273BE0C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t))
{
  v5 = v4;
  v6 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v7 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2528C0E40();
  v9 = result;
  if (*(v6 + 16))
  {
    v32 = v5;
    v10 = 0;
    v11 = (v6 + 56);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(*(v6 + 48) + (v18 | (v10 << 6)));
      v22 = *(v9 + 40);
      v23 = sub_2528C1130();
      a4(v23);
      sub_2528C0A40();

      result = sub_2528C1180();
      v24 = -1 << *(v9 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v16 + 8 * v26);
          if (v30 != -1)
          {
            v17 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v6 + 32);
    if (v31 >= 64)
    {
      bzero((v6 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v31;
    }

    v5 = v32;
    *(v6 + 16) = 0;
  }

  *v5 = v9;
  return result;
}

uint64_t sub_25273C080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC850, &unk_2528D3C30);
  result = sub_2528C0E40();
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
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_2528C1130();
      sub_2528C0A40();
      result = sub_2528C1180();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_25273C2E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC630, &qword_2528C4758);
  result = sub_2528C0E40();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 2 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2528C1130();
      DeviceType.hash(into:)();
      result = sub_2528C1180();
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
      *(*(v6 + 48) + 2 * v14) = v18;
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25273C534(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528BFDE0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC790, &qword_2528C4858);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25273C890(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528C07B0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6B8, &qword_2528C47A0);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25274ABA0(&qword_27F4FC6A8, MEMORY[0x277D16EC8]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25273CBEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC690, &qword_2528C4788);
  result = sub_2528C0E40();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_2528C1130();
      MEMORY[0x2530A87A0](v18);
      result = sub_2528C1180();
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25273CE3C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6C0, &qword_2528C47A8);
  result = sub_2528C0E40();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x2530A8770](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
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

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25273D064(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC6F8, &unk_2528D3CA0);
  result = sub_2528C0E40();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25273D408(uint64_t a1)
{
  v2 = v1;
  v41 = sub_2528BFCF0();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC648, &qword_2528C4760);
  result = sub_2528C0E40();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_25274ABA0(&qword_27F4FC638, MEMORY[0x277D15F48]);
      result = sub_2528C0900();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_25273D764(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC800, &qword_2528C48B8);
  result = sub_2528C0E40();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
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
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_25273DA54(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2528C0570();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25273B530(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_252740984(MEMORY[0x277D16AB0], &qword_27F4FC6D8, &qword_2528C47B0);
      goto LABEL_12;
    }

    sub_252740D00(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25274ABA0(&qword_27F4FC6C8, MEMORY[0x277D16AB0]);
  v15 = sub_2528C0900();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25274ABA0(&qword_27F4FC6D0, MEMORY[0x277D16AB0]);
      v23 = sub_2528C0930();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273DD1C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2528BECF0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25273B88C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_252740984(MEMORY[0x277CC95F0], &qword_27F4FC678, &qword_2528C4780);
      goto LABEL_12;
    }

    sub_25274101C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25274ABA0(&qword_27F4FBD88, MEMORY[0x277CC95F0]);
  v15 = sub_2528C0900();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25274ABA0(&qword_27F4FC680, MEMORY[0x277CC95F0]);
      v23 = sub_2528C0930();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273DFE4(uint64_t result, unint64_t a2, char a3)
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
    sub_25273BBE8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_252740328();
      a2 = v7;
      goto LABEL_12;
    }

    sub_252741338(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_2528C1120();
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
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273E104(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_25273BE0C(v6 + 1, &qword_27F4FC778, &unk_2528C4840, AttributeKind.rawValue.getter);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_252740BD0(&qword_27F4FC778, &unk_2528C4840);
      goto LABEL_16;
    }

    sub_252741528(v6 + 1, &qword_27F4FC778, &unk_2528C4840, AttributeKind.rawValue.getter);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2528C1130();
  AttributeKind.rawValue.getter();
  sub_2528C0A40();

  result = sub_2528C1180();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v22 = *(*(v8 + 48) + a2);
      v12 = AttributeKind.rawValue.getter();
      v14 = v13;
      if (v12 == AttributeKind.rawValue.getter() && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = sub_2528C1060();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273E344(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25273BE0C(v6 + 1, &qword_27F4FC880, &qword_2528C4930, DeviceType.SingleDeviceType.rawValue.getter);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_252740BD0(&qword_27F4FC880, &qword_2528C4930);
        goto LABEL_113;
      }

      sub_252741528(v6 + 1, &qword_27F4FC880, &qword_2528C4930, DeviceType.SingleDeviceType.rawValue.getter);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_2528C1130();
    DeviceType.SingleDeviceType.rawValue.getter();
    sub_2528C0A40();

    result = sub_2528C1180();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xEB00000000726569;
        v13 = 0xEB00000000726569;
        v14 = 0x6669727550726961;
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v14 = 0xD000000000000010;
            v13 = 0x80000002528E4FF0;
            break;
          case 2:
            v13 = 0xE700000000000000;
            v14 = 0x5654656C707061;
            break;
          case 3:
            v13 = 0xE600000000000000;
            v14 = 0x6172656D6163;
            break;
          case 4:
            v14 = 0xD000000000000013;
            v13 = 0x80000002528E5010;
            break;
          case 5:
            v14 = 0xD000000000000014;
            v13 = 0x80000002528E5030;
            break;
          case 6:
            v14 = 0x53746361746E6F63;
            v13 = 0xED0000726F736E65;
            break;
          case 7:
            v13 = 0xE400000000000000;
            v14 = 1919905636;
            break;
          case 8:
            v13 = 0xE300000000000000;
            v14 = 7233894;
            break;
          case 9:
            v13 = 0xE600000000000000;
            v14 = 0x746563756166;
            break;
          case 0xA:
            v14 = 0x6F44656761726167;
            goto LABEL_35;
          case 0xB:
            v14 = 0x6F43726574616568;
            v13 = 0xEC00000072656C6FLL;
            break;
          case 0xC:
            v14 = 0xD000000000000016;
            v13 = 0x80000002528E5080;
            break;
          case 0xD:
            v14 = 0x79746964696D7568;
            v13 = 0xEE00726F736E6553;
            break;
          case 0xE:
            v14 = 0x736E65536B61656CLL;
LABEL_35:
            v13 = 0xEA0000000000726FLL;
            break;
          case 0xF:
            v14 = 0x6C7562746867696CLL;
            v13 = 0xE900000000000062;
            break;
          case 0x10:
            v15 = 0x53746867696CLL;
            goto LABEL_21;
          case 0x11:
            v13 = 0xE400000000000000;
            v14 = 1801678700;
            break;
          case 0x12:
            v14 = 0x65536E6F69746F6DLL;
            v13 = 0xEC000000726F736ELL;
            break;
          case 0x13:
            v14 = 0x636E61707563636FLL;
            v13 = 0xEF726F736E655379;
            break;
          case 0x14:
            v13 = 0xE600000000000000;
            v14 = 0x74656C74756FLL;
            break;
          case 0x15:
            v14 = 0xD000000000000012;
            v13 = 0x80000002528E50F0;
            break;
          case 0x16:
            v14 = 0x7974697275636573;
            v13 = 0xEE006D6574737953;
            break;
          case 0x17:
            v13 = 0xE600000000000000;
            v14 = 0x7265776F6873;
            break;
          case 0x18:
            v15 = 0x53656B6F6D73;
LABEL_21:
            v14 = v15 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
            v13 = 0xEB00000000726F73;
            break;
          case 0x19:
            v13 = 0xE900000000000072;
            v14 = 0x656C6B6E69727073;
            break;
          case 0x1A:
            v13 = 0xE600000000000000;
            v14 = 0x686374697773;
            break;
          case 0x1B:
            v13 = 0xEA00000000006E6FLL;
            v14 = 0x69736976656C6574;
            break;
          case 0x1C:
            v14 = 0xD000000000000011;
            v13 = 0x80000002528E5150;
            break;
          case 0x1D:
            v13 = 0xEA00000000007461;
            v14 = 0x74736F6D72656874;
            break;
          case 0x1E:
            v13 = 0xE500000000000000;
            v14 = 0x65766C6176;
            break;
          case 0x1F:
            v13 = 0xE600000000000000;
            v14 = 0x776F646E6977;
            break;
          case 0x20:
            v14 = 0x6F43776F646E6977;
            v13 = 0xEE00676E69726576;
            break;
          default:
            break;
        }

        v16 = 0x6669727550726961;
        switch(v5)
        {
          case 1:
            v12 = 0x80000002528E4FF0;
            if (v14 == 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_108;
          case 2:
            v12 = 0xE700000000000000;
            if (v14 != 0x5654656C707061)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 3:
            v12 = 0xE600000000000000;
            if (v14 != 0x6172656D6163)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 4:
            v12 = 0x80000002528E5010;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 5:
            v12 = 0x80000002528E5030;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 6:
            v12 = 0xED0000726F736E65;
            if (v14 != 0x53746361746E6F63)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 7:
            v12 = 0xE400000000000000;
            if (v14 != 1919905636)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 8:
            v12 = 0xE300000000000000;
            if (v14 != 7233894)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 9:
            v12 = 0xE600000000000000;
            v21 = 1668637030;
            goto LABEL_76;
          case 10:
            v18 = 0x6F44656761726167;
            goto LABEL_89;
          case 11:
            v19 = 0x6F43726574616568;
            v20 = 1919249519;
            goto LABEL_86;
          case 12:
            v12 = 0x80000002528E5080;
            if (v14 != 0xD000000000000016)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 13:
            v22 = 0x79746964696D7568;
            v23 = 0x726F736E6553;
            goto LABEL_97;
          case 14:
            v18 = 0x736E65536B61656CLL;
LABEL_89:
            v12 = 0xEA0000000000726FLL;
            if (v14 != v18)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 15:
            v12 = 0xE900000000000062;
            if (v14 != 0x6C7562746867696CLL)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 16:
            v17 = 0x53746867696CLL;
            goto LABEL_61;
          case 17:
            v12 = 0xE400000000000000;
            if (v14 != 1801678700)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 18:
            v19 = 0x65536E6F69746F6DLL;
            v20 = 1919906670;
LABEL_86:
            v12 = v20 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v19)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 19:
            v12 = 0xEF726F736E655379;
            if (v14 != 0x636E61707563636FLL)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 20:
            v12 = 0xE600000000000000;
            v21 = 1819571567;
LABEL_76:
            if (v14 != (v21 & 0xFFFF0000FFFFFFFFLL | 0x746500000000))
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 21:
            v12 = 0x80000002528E50F0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 22:
            v22 = 0x7974697275636573;
            v23 = 0x6D6574737953;
            goto LABEL_97;
          case 23:
            v12 = 0xE600000000000000;
            if (v14 != 0x7265776F6873)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 24:
            v17 = 0x53656B6F6D73;
LABEL_61:
            v12 = 0xEB00000000726F73;
            if (v14 != (v17 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 25:
            v12 = 0xE900000000000072;
            if (v14 != 0x656C6B6E69727073)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 26:
            v12 = 0xE600000000000000;
            if (v14 != 0x686374697773)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 27:
            v12 = 0xEA00000000006E6FLL;
            if (v14 != 0x69736976656C6574)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 28:
            v12 = 0x80000002528E5150;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 29:
            v12 = 0xEA00000000007461;
            v16 = 0x74736F6D72656874;
            goto LABEL_106;
          case 30:
            v12 = 0xE500000000000000;
            if (v14 != 0x65766C6176)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 31:
            v12 = 0xE600000000000000;
            if (v14 != 0x776F646E6977)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          case 32:
            v22 = 0x6F43776F646E6977;
            v23 = 0x676E69726576;
LABEL_97:
            v12 = v23 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v14 != v22)
            {
              goto LABEL_108;
            }

            goto LABEL_107;
          default:
LABEL_106:
            if (v14 != v16)
            {
              goto LABEL_108;
            }

LABEL_107:
            if (v13 == v12)
            {
              goto LABEL_116;
            }

LABEL_108:
            v24 = sub_2528C1060();

            if (v24)
            {
              goto LABEL_117;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_113:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = v5;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
LABEL_116:

LABEL_117:
    result = sub_2528C1090();
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v28;
  }

  return result;
}

uint64_t sub_25273ED04(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_25273C080(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_252740468();
      goto LABEL_16;
    }

    sub_25274176C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2528C1130();
  sub_2528C0A40();
  result = sub_2528C1180();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2528C1060();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273EE84(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v17 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_25273C2E0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2527405C4();
      goto LABEL_13;
    }

    sub_2527419A4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v16[38] = v5;
  sub_2528C1130();
  DeviceType.hash(into:)();
  result = sub_2528C1180();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (1)
    {
      v16[0] = *(*(v8 + 48) + 2 * a2);
      result = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v16, &v17);
      if (result)
      {
        goto LABEL_16;
      }

      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        v5 = v17;
        break;
      }
    }
  }

LABEL_13:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 2 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_16:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273EFEC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2528BFDE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25273C534(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_252740984(MEMORY[0x277D16348], &qword_27F4FC790, &qword_2528C4858);
      goto LABEL_12;
    }

    sub_252741BC8(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25274ABA0(&qword_27F4FC798, MEMORY[0x277D16348]);
  v15 = sub_2528C0900();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25274ABA0(&qword_27F4FC7A0, MEMORY[0x277D16348]);
      v23 = sub_2528C0930();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

uint64_t sub_25273F2B4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_2528C07B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25273C890(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_252740984(MEMORY[0x277D16EC8], &qword_27F4FC6B8, &qword_2528C47A0);
      goto LABEL_12;
    }

    sub_252741EE4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_25274ABA0(&qword_27F4FC6A8, MEMORY[0x277D16EC8]);
  v15 = sub_2528C0900();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_25274ABA0(&qword_27F4FC6B0, MEMORY[0x277D16EC8]);
      v23 = sub_2528C0930();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2528C1090();
  __break(1u);
  return result;
}

void sub_25273F57C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25273CBEC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_252740704();
      a2 = v7;
      goto LABEL_12;
    }

    sub_252742200(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_2528C1130();
  MEMORY[0x2530A87A0](a1);
  v10 = sub_2528C1180();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for HMCharacteristicValueHeatingCooling(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_2528C1090();
  __break(1u);
}

uint64_t sub_25273F6D8(uint64_t result, unint64_t a2, char a3)
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
    sub_25273CE3C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_252740844();
      a2 = v7;
      goto LABEL_12;
    }

    sub_252742420(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x2530A8770](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2528C1090();
  __break(1u);
  return result;
}