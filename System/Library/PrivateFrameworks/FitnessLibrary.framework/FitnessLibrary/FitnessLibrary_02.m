uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1E5B160BC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5B16384;

  return sub_1E5B1497C(a1, a2, v7, v6);
}

uint64_t objectdestroy_33Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 129) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 5);

  v7 = *(v0 + 7);

  v8 = *(v0 + 9);

  v9 = *(v0 + 11);

  v10 = *(v0 + 13);

  v11 = *(v0 + 15);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1E5B16270(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0321F0, &qword_1E5B428F0) - 8);
  v5 = (*(v4 + 80) + 129) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 128);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B16384;

  return sub_1E5B14E2C(a1, v6, v7, v1 + 32, v8, v1 + v5);
}

uint64_t sub_1E5B1638C(uint64_t a1)
{
  v2 = sub_1E5B171D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B163C8(uint64_t a1)
{
  v2 = sub_1E5B171D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5B16404()
{
  v1 = *v0;
  v2 = 0x6570704177656976;
  v3 = 0xD000000000000015;
  v4 = 0x4368736572666572;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6173694477656976;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000015;
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

uint64_t sub_1E5B164E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B1728C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B16508(uint64_t a1)
{
  v2 = sub_1E5B16FE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B16544(uint64_t a1)
{
  v2 = sub_1E5B16FE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B16580(uint64_t a1)
{
  v2 = sub_1E5B170DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B165BC(uint64_t a1)
{
  v2 = sub_1E5B170DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B165F8(uint64_t a1)
{
  v2 = sub_1E5B17088();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B16634(uint64_t a1)
{
  v2 = sub_1E5B17088();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B16670()
{
  if (*v0)
  {
    result = 0x746E756F63;
  }

  else
  {
    result = 1701273968;
  }

  *v0;
  return result;
}

uint64_t sub_1E5B166A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701273968 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E5B3DDA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B16778(uint64_t a1)
{
  v2 = sub_1E5B17034();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B167B4(uint64_t a1)
{
  v2 = sub_1E5B17034();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B167F0(uint64_t a1)
{
  v2 = sub_1E5B17184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1682C(uint64_t a1)
{
  v2 = sub_1E5B17184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B16868(uint64_t a1)
{
  v2 = sub_1E5B17130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B168A4(uint64_t a1)
{
  v2 = sub_1E5B17130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryPageCountAction.encode(to:)(void *a1, unint64_t a2, uint64_t a3)
{
  v54 = a3;
  v55 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032200, &qword_1E5B42940);
  v52 = *(v4 - 8);
  v53 = v4;
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032208, &qword_1E5B42948);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v47 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032210, &qword_1E5B42950);
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032218, &qword_1E5B42958);
  v45 = *(v14 - 8);
  v46 = v14;
  v15 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v44 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032220, &qword_1E5B42960);
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032228, &qword_1E5B42968);
  v41 = *(v21 - 8);
  v22 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032230, &qword_1E5B42970);
  v56 = *(v25 - 8);
  v57 = v25;
  v26 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v40 - v27;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B16FE0();
  v30 = v55;
  sub_1E5B3DE14();
  if (!(v30 >> 62))
  {
    v63 = 3;
    sub_1E5B170DC();
    v35 = v57;
    sub_1E5B3DD24();
    v62 = v30;
    sub_1E5AFBA70();
    sub_1E5B3DD74();
    (*(v50 + 8))(v13, v10);
    return (*(v56 + 8))(v28, v35);
  }

  if (v30 >> 62 != 1)
  {
    if (v30 > 0x8000000000000001)
    {
      if (v30 ^ 0x8000000000000002 | v54)
      {
        v64 = 4;
        sub_1E5B17088();
        v20 = v47;
        v37 = v57;
        sub_1E5B3DD24();
        v39 = v48;
        v38 = v49;
      }

      else
      {
        v61 = 2;
        sub_1E5B17130();
        v20 = v44;
        v37 = v57;
        sub_1E5B3DD24();
        v39 = v45;
        v38 = v46;
      }
    }

    else
    {
      if (!(v30 ^ 0x8000000000000000 | v54))
      {
        v59 = 0;
        sub_1E5B171D8();
        v37 = v57;
        sub_1E5B3DD24();
        (*(v41 + 8))(v24, v21);
        return (*(v56 + 8))(v28, v37);
      }

      v60 = 1;
      sub_1E5B17184();
      v37 = v57;
      sub_1E5B3DD24();
      v39 = v42;
      v38 = v43;
    }

    (*(v39 + 8))(v20, v38);
    return (*(v56 + 8))(v28, v37);
  }

  v68 = 5;
  sub_1E5B17034();
  v31 = v51;
  v32 = v57;
  sub_1E5B3DD24();
  v67 = v30;
  v66 = 0;
  sub_1E5AFBA70();
  v33 = v53;
  v34 = v58;
  sub_1E5B3DD74();
  if (!v34)
  {
    v65 = 1;
    sub_1E5B3DD64();
  }

  (*(v52 + 8))(v31, v33);
  return (*(v56 + 8))(v28, v32);
}

unint64_t sub_1E5B16FE0()
{
  result = qword_1ED032238;
  if (!qword_1ED032238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032238);
  }

  return result;
}

unint64_t sub_1E5B17034()
{
  result = qword_1ED032240;
  if (!qword_1ED032240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032240);
  }

  return result;
}

unint64_t sub_1E5B17088()
{
  result = qword_1ED032248;
  if (!qword_1ED032248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032248);
  }

  return result;
}

unint64_t sub_1E5B170DC()
{
  result = qword_1ED032250;
  if (!qword_1ED032250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032250);
  }

  return result;
}

unint64_t sub_1E5B17130()
{
  result = qword_1ED032258;
  if (!qword_1ED032258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032258);
  }

  return result;
}

unint64_t sub_1E5B17184()
{
  result = qword_1ED032260;
  if (!qword_1ED032260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032260);
  }

  return result;
}

unint64_t sub_1E5B171D8()
{
  result = qword_1ED032268;
  if (!qword_1ED032268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032268);
  }

  return result;
}

unint64_t sub_1E5B17244@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1E5B174A8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1E5B1728C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x80000001E5B460B0 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6173694477656976 && a2 == 0xEF64657261657070 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5B460D0 == a2 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4368736572666572 && a2 == 0xEC000000746E756FLL || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5B460F0 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1E5B174A8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0322F8, &qword_1E5B43060);
  v3 = *(v2 - 8);
  v67 = v2;
  v68 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v69 = &v56 - v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032300, &qword_1E5B43068);
  v66 = *(v61 - 8);
  v6 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v72 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032308, &qword_1E5B43070);
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032310, &qword_1E5B43078);
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032318, &qword_1E5B43080);
  v59 = *(v15 - 8);
  v60 = v15;
  v16 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v56 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032320, &qword_1E5B43088);
  v58 = *(v19 - 8);
  v20 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032328, &unk_1E5B43090);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - v26;
  v29 = a1[3];
  v28 = a1[4];
  v74 = a1;
  v30 = __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_1E5B16FE0();
  v31 = v73;
  sub_1E5B3DE04();
  if (!v31)
  {
    v32 = v22;
    v56 = v19;
    v57 = v18;
    v34 = v70;
    v33 = v71;
    v35 = v72;
    v73 = v23;
    v36 = sub_1E5B3DD04();
    v37 = (2 * *(v36 + 16)) | 1;
    v75 = v36;
    v76 = v36 + 32;
    v77 = 0;
    v78 = v37;
    v38 = sub_1E5B00354();
    if (v38 == 6 || v77 != v78 >> 1)
    {
      v42 = sub_1E5B3DC04();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
      *v44 = &type metadata for LibraryPageCountAction;
      v30 = v27;
      v46 = v73;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
      swift_willThrow();
      (*(v24 + 8))(v30, v46);
      swift_unknownObjectRelease();
    }

    else if (v38 > 2u)
    {
      if (v38 == 3)
      {
        v80 = 3;
        sub_1E5B170DC();
        v50 = v33;
        v51 = v73;
        sub_1E5B3DC94();
        sub_1E5AFBF78();
        v52 = v64;
        sub_1E5B3DCF4();
        (*(v65 + 8))(v50, v52);
        (*(v24 + 8))(v27, v51);
        swift_unknownObjectRelease();
        v30 = v80;
      }

      else
      {
        v48 = v73;
        if (v38 == 4)
        {
          v80 = 4;
          sub_1E5B17088();
          sub_1E5B3DC94();
          (*(v66 + 8))(v35, v61);
          (*(v24 + 8))(v27, v48);
          swift_unknownObjectRelease();
          v30 = 0x8000000000000003;
        }

        else
        {
          v80 = 5;
          sub_1E5B17034();
          v53 = v69;
          sub_1E5B3DC94();
          v79 = 0;
          sub_1E5AFBF78();
          v54 = v67;
          sub_1E5B3DCF4();
          v55 = v80;
          v79 = 1;
          sub_1E5B3DCE4();
          (*(v68 + 8))(v53, v54);
          (*(v24 + 8))(v27, v48);
          swift_unknownObjectRelease();
          v30 = v55 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v39 = v24;
      if (v38)
      {
        v40 = v73;
        if (v38 == 1)
        {
          v80 = 1;
          sub_1E5B17184();
          v41 = v57;
          sub_1E5B3DC94();
          (*(v59 + 8))(v41, v60);
          (*(v24 + 8))(v27, v40);
          swift_unknownObjectRelease();
          v30 = 0x8000000000000001;
        }

        else
        {
          v80 = 2;
          sub_1E5B17130();
          sub_1E5B3DC94();
          (*(v62 + 8))(v34, v63);
          (*(v24 + 8))(v27, v40);
          swift_unknownObjectRelease();
          v30 = 0x8000000000000002;
        }
      }

      else
      {
        v80 = 0;
        sub_1E5B171D8();
        v49 = v73;
        sub_1E5B3DC94();
        (*(v58 + 8))(v32, v56);
        (*(v39 + 8))(v27, v49);
        swift_unknownObjectRelease();
        v30 = 0x8000000000000000;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v74);
  return v30;
}

uint64_t getEnumTagSinglePayload for LibraryPageCountAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 3;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryPageCountAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = 8 * -a2;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5B17F74(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 7 | (8 * *(a1 + 8))) + 2;
  }
}

void *sub_1E5B17FA4(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 7 | 0x8000000000000000;
    result[1] = (a2 - 2) >> 3;
  }

  return result;
}

unint64_t sub_1E5B18058()
{
  result = qword_1ED032270;
  if (!qword_1ED032270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032270);
  }

  return result;
}

unint64_t sub_1E5B180B0()
{
  result = qword_1ED032278;
  if (!qword_1ED032278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032278);
  }

  return result;
}

unint64_t sub_1E5B18108()
{
  result = qword_1ED032280;
  if (!qword_1ED032280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032280);
  }

  return result;
}

unint64_t sub_1E5B18160()
{
  result = qword_1ED032288;
  if (!qword_1ED032288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032288);
  }

  return result;
}

unint64_t sub_1E5B181B8()
{
  result = qword_1ED032290;
  if (!qword_1ED032290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032290);
  }

  return result;
}

unint64_t sub_1E5B18210()
{
  result = qword_1ED032298;
  if (!qword_1ED032298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032298);
  }

  return result;
}

unint64_t sub_1E5B18268()
{
  result = qword_1ED0322A0;
  if (!qword_1ED0322A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322A0);
  }

  return result;
}

unint64_t sub_1E5B182C0()
{
  result = qword_1ED0322A8;
  if (!qword_1ED0322A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322A8);
  }

  return result;
}

unint64_t sub_1E5B18318()
{
  result = qword_1ED0322B0;
  if (!qword_1ED0322B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322B0);
  }

  return result;
}

unint64_t sub_1E5B18370()
{
  result = qword_1ED0322B8;
  if (!qword_1ED0322B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322B8);
  }

  return result;
}

unint64_t sub_1E5B183C8()
{
  result = qword_1ED0322C0;
  if (!qword_1ED0322C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322C0);
  }

  return result;
}

unint64_t sub_1E5B18420()
{
  result = qword_1ED0322C8;
  if (!qword_1ED0322C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322C8);
  }

  return result;
}

unint64_t sub_1E5B18478()
{
  result = qword_1ED0322D0;
  if (!qword_1ED0322D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322D0);
  }

  return result;
}

unint64_t sub_1E5B184D0()
{
  result = qword_1ED0322D8;
  if (!qword_1ED0322D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322D8);
  }

  return result;
}

unint64_t sub_1E5B18528()
{
  result = qword_1ED0322E0;
  if (!qword_1ED0322E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322E0);
  }

  return result;
}

unint64_t sub_1E5B18580()
{
  result = qword_1ED0322E8;
  if (!qword_1ED0322E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322E8);
  }

  return result;
}

unint64_t sub_1E5B185D8()
{
  result = qword_1ED0322F0;
  if (!qword_1ED0322F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0322F0);
  }

  return result;
}

__n128 LibraryCanvasContentEnvironment.init(fetchSectionDescriptors:makeArchivedSessionsUpdatedStream:makeCatalogUpdatedStream:makeItemsUpdatedStream:publishPageEnter:refreshCanvas:refreshCatalog:reloadWorkouts:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __n128 a12, uint64_t a13, uint64_t a14)
{
  result = a12;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 120) = a14;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1E5B1867C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1E5B186C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LibraryPickerView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5B3D594();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032330, &qword_1E5B43190);
  sub_1E5B3D674();
  *(a3 + 24) = v15;
  (*(v7 + 104))(v10, *MEMORY[0x1E69814D8], v6);
  v11 = sub_1E5B3D5F4();
  v12 = sub_1E5B3D5D4();
  *(a3 + 40) = xmmword_1E5B43170;
  *(a3 + 56) = 0x3FD0000000000000;
  *(a3 + 64) = v11;
  *(a3 + 72) = v12;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5AEFB94;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

double LibraryPickerView.body.getter@<D0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v12[3] = v1[3];
  v12[4] = v4;
  v5 = *v1;
  v12[1] = v1[1];
  v12[2] = v3;
  v12[0] = v5;
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v6[5] = v1[4];
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v11[10] = 0x4024000000000000;
  sub_1E5B18AC4(v12, v11);
  sub_1E5B3D674();
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2] = sub_1E5B18ABC;
  a1[3] = v6;
  return result;
}

uint64_t sub_1E5B18974@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)()@<X8>, double a3@<D0>)
{
  v6 = swift_allocObject();
  v7 = a1[3];
  *(v6 + 48) = a1[2];
  *(v6 + 64) = v7;
  *(v6 + 80) = a1[4];
  v8 = a1[1];
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  *(v6 + 96) = a3;
  sub_1E5B18AC4(a1, v19);
  v9 = sub_1E5B3D7E4();
  v11 = v10;
  v12 = swift_allocObject();
  v13 = a1[3];
  *(v12 + 3) = a1[2];
  *(v12 + 4) = v13;
  *(v12 + 5) = a1[4];
  v14 = a1[1];
  *(v12 + 1) = *a1;
  *(v12 + 2) = v14;
  v15 = swift_allocObject();
  v16 = a1[3];
  *(v15 + 3) = a1[2];
  *(v15 + 4) = v16;
  *(v15 + 5) = a1[4];
  v17 = a1[1];
  *(v15 + 1) = *a1;
  *(v15 + 2) = v17;
  *a2 = sub_1E5B1ABD8;
  a2[1] = v6;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = sub_1E5B1ABE4;
  a2[5] = v12;
  a2[6] = sub_1E5B1AC54;
  a2[7] = v15;
  sub_1E5B18AC4(a1, v19);
  return sub_1E5B18AC4(a1, v19);
}

uint64_t sub_1E5B18B18()
{
  sub_1E5B3D264();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032368, &qword_1E5B43360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032370, &qword_1E5B43368);
  sub_1E5B1AC68();
  swift_getOpaqueTypeConformance2();
  return sub_1E5B3CE04();
}

uint64_t sub_1E5B18BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032398, &qword_1E5B43378);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032388, &qword_1E5B43370);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032370, &qword_1E5B43368);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - v14;
  *v7 = sub_1E5B3D0B4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323A0, &qword_1E5B43380);
  sub_1E5B18EE8(a1, a2, &v7[*(v16 + 44)]);
  sub_1E5B3D7E4();
  sub_1E5B3CF94();
  sub_1E5B1ADAC(v7, v11, &qword_1ED032398, &qword_1E5B43378);
  v17 = &v11[*(v8 + 36)];
  v18 = v37;
  *(v17 + 4) = v36;
  *(v17 + 5) = v18;
  *(v17 + 6) = v38;
  v19 = v33;
  *v17 = v32;
  *(v17 + 1) = v19;
  v20 = v35;
  *(v17 + 2) = v34;
  *(v17 + 3) = v20;
  LOBYTE(v7) = sub_1E5B3D294();
  sub_1E5B3CD94();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_1E5B1ADAC(v11, v15, &qword_1ED032388, &qword_1E5B43370);
  v29 = &v15[*(v12 + 36)];
  *v29 = v7;
  *(v29 + 1) = v22;
  *(v29 + 2) = v24;
  *(v29 + 3) = v26;
  *(v29 + 4) = v28;
  v29[40] = 0;
  sub_1E5B1AC68();
  sub_1E5B3D4C4();
  return sub_1E5B04304(v15, &qword_1ED032370, &qword_1E5B43368);
}

uint64_t sub_1E5B18EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = a3;
  v5 = sub_1E5B3CF64();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323A8, &qword_1E5B43388);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v37 - v14;
  *v15 = sub_1E5B3D0B4();
  *(v15 + 1) = 0x4034000000000000;
  v15[16] = 0;
  v37[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323B0, &unk_1E5B43390) + 44);
  v44 = &unk_1F5F6D9C0;
  (*(v6 + 16))(v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v5);
  v16 = (*(v6 + 80) + 96) & ~*(v6 + 80);
  v17 = swift_allocObject();
  v18 = *(a1 + 48);
  *(v17 + 3) = *(a1 + 32);
  *(v17 + 4) = v18;
  *(v17 + 5) = *(a1 + 64);
  v19 = *(a1 + 16);
  *(v17 + 1) = *a1;
  *(v17 + 2) = v19;
  (*(v6 + 32))(&v17[v16], v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1E5B18AC4(a1, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323B8, &qword_1E5B433A0);
  sub_1E5AF13EC(&qword_1ED0320C0, &qword_1ED0319D0, &qword_1E5B3F2D8);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0323C0, &qword_1E5B433A8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0323C8, &qword_1E5B433B0);
  v22 = sub_1E5B1AEAC();
  v39 = v21;
  v40 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v20;
  v40 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1E5B1AF64();
  sub_1E5B3D754();
  sub_1E5B3D294();
  v24 = *(a1 + 40);
  sub_1E5B3CD94();
  v39 = v25;
  v40 = v26;
  v41 = v27;
  v42 = v28;
  v43 = 0;
  v29 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323F0, &qword_1E5B433C0) + 36)];
  sub_1E5B3D1D4();
  v30 = sub_1E5B3D6B4();
  v31 = &v15[*(v9 + 44)];
  *v31 = v30;
  v31[1] = sub_1E5B19964;
  v31[2] = 0;
  sub_1E5AEB548(v15, v13);
  v32 = v38;
  *v38 = 0;
  *(v32 + 8) = 1;
  v33 = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323F8, &qword_1E5B433C8);
  sub_1E5AEB548(v13, v33 + *(v34 + 48));
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_1E5B04304(v15, &qword_1ED0323A8, &qword_1E5B43388);
  return sub_1E5B04304(v13, &qword_1ED0323A8, &qword_1E5B43388);
}

uint64_t sub_1E5B19300@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v6 = sub_1E5B3CF64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323E0, &qword_1E5B433B8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323C8, &qword_1E5B433B0);
  v14 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v16 = &v47 - v15;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323C0, &qword_1E5B433A8);
  v50 = *(v51 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v47 - v18;
  v19 = v3[3];
  v60 = v3[2];
  v61 = v19;
  v62 = v3[4];
  v20 = v3[1];
  v58 = *v3;
  v59 = v20;
  (*(v7 + 16))(&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v21 = (*(v7 + 80) + 97) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v23 = v61;
  *(v22 + 48) = v60;
  *(v22 + 64) = v23;
  *(v22 + 80) = v62;
  v24 = v59;
  *(v22 + 16) = v58;
  *(v22 + 32) = v24;
  *(v22 + 96) = a1;
  (*(v7 + 32))(v22 + v21, &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v53 = a1;
  v54 = &v58;
  sub_1E5B18AC4(&v58, &v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032400, &qword_1E5B433D0);
  sub_1E5B1B02C();
  sub_1E5B3D6C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  LOBYTE(a2) = sub_1E5AFEB1C(v56, a1);
  KeyPath = swift_getKeyPath();
  v26 = swift_allocObject();
  *(v26 + 16) = a2 & 1;
  v27 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032430, &qword_1E5B43440) + 36)];
  *v27 = KeyPath;
  v27[1] = sub_1E5B1B110;
  v27[2] = v26;
  v13[*(v10 + 60)] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032438, &qword_1E5B43448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5B43180;
  LOBYTE(v8) = sub_1E5B3D2B4();
  *(inited + 32) = v8;
  v29 = sub_1E5B3D2C4();
  *(inited + 33) = v29;
  v30 = sub_1E5B3D2E4();
  sub_1E5B3D2E4();
  if (sub_1E5B3D2E4() != v8)
  {
    v30 = sub_1E5B3D2E4();
  }

  sub_1E5B3D2E4();
  if (sub_1E5B3D2E4() != v29)
  {
    v30 = sub_1E5B3D2E4();
  }

  sub_1E5B3CD94();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1E5B1B128(v13, v16);
  v39 = v49;
  v40 = &v16[*(v49 + 36)];
  *v40 = v30;
  *(v40 + 1) = v32;
  *(v40 + 2) = v34;
  *(v40 + 3) = v36;
  *(v40 + 4) = v38;
  v40[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032120, &qword_1E5B43450);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1E5B42210;
  v56 = 0;
  v57 = 0xE000000000000000;
  v55 = a1;
  sub_1E5B3DC24();
  v42 = v57;
  *(v41 + 32) = v56;
  *(v41 + 40) = v42;
  v43 = sub_1E5B1AEAC();
  v44 = v48;
  sub_1E5B3D3C4();

  sub_1E5B04304(v16, &qword_1ED0323C8, &qword_1E5B433B0);
  v56 = v39;
  v57 = v43;
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  sub_1E5B3D3A4();
  return (*(v50 + 8))(v44, v45);
}

uint64_t sub_1E5B1996C(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v3 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032348, &qword_1E5B43340);
  return sub_1E5B3D694();
}

uint64_t sub_1E5B199C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918);
  sub_1E5B3CE44();
  sub_1E5B3D914();

  sub_1E5B3D804();
  sub_1E5B3CEF4();
}

uint64_t sub_1E5B19AD8()
{
  sub_1E5B3D854();
  sub_1E5AF4F0C();
  return sub_1E5B3CF54();
}

__n128 sub_1E5B19B44@<Q0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E5B3D7E4();
  v8 = v7;
  sub_1E5B19C48(a1, a2, &v19);
  v15 = v21;
  v16 = v22;
  v13 = v19;
  v14 = v20;
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23;
  v18[1] = v20;
  v17 = v23;
  v18[0] = v19;
  sub_1E5B0429C(&v13, v12, &qword_1ED032440, &qword_1E5B43458);
  sub_1E5B04304(v18, &qword_1ED032440, &qword_1E5B43458);
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v19 = v13;
  v20 = v14;
  KeyPath = swift_getKeyPath();
  *a3 = v6;
  *(a3 + 8) = v8;
  v10 = v22;
  *(a3 + 48) = v21;
  *(a3 + 64) = v10;
  *(a3 + 80) = v23;
  result = v20;
  *(a3 + 16) = v19;
  *(a3 + 32) = result;
  *(a3 + 96) = KeyPath;
  *(a3 + 104) = 1;
  *(a3 + 112) = 0;
  return result;
}

uint64_t sub_1E5B19C48@<X0>(int a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v66 = a1;
  v60 = a3;
  v67 = sub_1E5B3CB44();
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v62 = a2[1];
  v63 = v8;
  v61 = *(a2 + 16);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031A68, qword_1E5B3F918);
  v64 = sub_1E5AF13EC(&qword_1EE2C23F8, &qword_1ED031A68, qword_1E5B3F918);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v9 = LibraryPage.title(locale:)(v7);
  v11 = v10;
  v12 = *(v4 + 8);
  v54[1] = v4 + 8;
  v55 = v12;
  v12(v7, v67);
  v71 = v9;
  v72 = v11;
  v54[0] = sub_1E5B04428();
  v13 = sub_1E5B3D394();
  v15 = v14;
  v17 = v16;
  sub_1E5B3D344();
  v18 = sub_1E5B3D364();
  v20 = v19;
  v22 = v21;
  sub_1E5B1B198(v13, v15, v17 & 1);

  v23 = a2[8];
  v73 = a2[9];
  v71 = v73;

  v59 = sub_1E5B3D374();
  v57 = v24;
  v56 = v25;
  v58 = v26;
  sub_1E5B1B198(v18, v20, v22 & 1);

  sub_1E5B1B1A8(&v73);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (sub_1E5AFEB1C(v71, v66))
  {
    v27 = 1.0;
  }

  else
  {
    v27 = 0.0;
  }

  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v28 = LibraryPage.title(locale:)(v7);
  v30 = v29;
  v55(v7, v67);
  v71 = v28;
  v72 = v30;
  v31 = sub_1E5B3D394();
  v33 = v32;
  v35 = v34;
  sub_1E5B3D334();
  v36 = sub_1E5B3D364();
  v38 = v37;
  v40 = v39;
  sub_1E5B1B198(v31, v33, v35 & 1);

  v71 = v23;
  v70 = v23;

  v41 = sub_1E5B3D374();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1E5B1B198(v36, v38, v40 & 1);

  sub_1E5B1B1A8(&v71);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  if (sub_1E5AFEB1C(v70, v66))
  {
    v48 = 0.0;
  }

  else
  {
    v48 = 1.0;
  }

  v49 = v56 & 1;
  LOBYTE(v70) = v56 & 1;
  v69 = v56 & 1;
  v68 = v45 & 1;
  v50 = v60;
  v51 = v59;
  v52 = v57;
  *v60 = v59;
  v50[1] = v52;
  *(v50 + 16) = v49;
  v50[3] = v58;
  *(v50 + 4) = v27;
  v50[5] = v41;
  v50[6] = v43;
  *(v50 + 56) = v45 & 1;
  v50[8] = v47;
  *(v50 + 9) = v48;
  sub_1E5B1B1FC(v51, v52, v49);

  sub_1E5B1B1FC(v41, v43, v45 & 1);

  sub_1E5B1B198(v41, v43, v45 & 1);

  sub_1E5B1B198(v51, v52, v70);
}

uint64_t sub_1E5B1A1D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v4.origin = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032348, &qword_1E5B43340);
  result = sub_1E5B3D684();
  if (v5)
  {
    type metadata accessor for CGRect(0);
    sub_1E5B3CEC4();
    CGRectGetMinX(v4);
  }

  return result;
}

uint64_t sub_1E5B1A2B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v4.origin = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032348, &qword_1E5B43340);
  result = sub_1E5B3D684();
  if (v5)
  {
    sub_1E5B3CEB4();
    type metadata accessor for CGRect(0);
    sub_1E5B3CEC4();
    CGRectGetMaxX(v4);
  }

  return result;
}

double sub_1E5B1A39C@<D0>(_OWORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E5B3D0B4();
  v27 = 0;
  sub_1E5B1A534(a1, &v14);
  v36 = v22;
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v32 = v18;
  v33 = v19;
  v34 = v20;
  v35 = v21;
  v28 = v14;
  v29 = v15;
  v30 = v16;
  v31 = v17;
  v40[8] = v22;
  v40[9] = v23;
  v40[10] = v24;
  v40[11] = v25;
  v40[4] = v18;
  v40[5] = v19;
  v40[6] = v20;
  v40[7] = v21;
  v40[0] = v14;
  v40[1] = v15;
  v40[2] = v16;
  v40[3] = v17;
  sub_1E5B0429C(&v28, &v13, &qword_1ED032350, &qword_1E5B43348);
  sub_1E5B04304(v40, &qword_1ED032350, &qword_1E5B43348);
  *&v26[135] = v36;
  *&v26[151] = v37;
  *&v26[167] = v38;
  *&v26[183] = v39;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[103] = v34;
  *&v26[119] = v35;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  *&v26[55] = v31;
  v5 = *&v26[128];
  *(a2 + 161) = *&v26[144];
  v6 = *&v26[176];
  *(a2 + 177) = *&v26[160];
  *(a2 + 193) = v6;
  v7 = *&v26[64];
  *(a2 + 97) = *&v26[80];
  v8 = *&v26[112];
  *(a2 + 113) = *&v26[96];
  *(a2 + 129) = v8;
  *(a2 + 145) = v5;
  v9 = *v26;
  *(a2 + 33) = *&v26[16];
  result = *&v26[32];
  v11 = *&v26[48];
  *(a2 + 49) = *&v26[32];
  *(a2 + 65) = v11;
  *(a2 + 81) = v7;
  v12 = v27;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  *(a2 + 208) = *&v26[191];
  *(a2 + 17) = v9;
  return result;
}

uint64_t sub_1E5B1A534@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032358, &qword_1E5B43350);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E5B43180;
  v5 = objc_opt_self();
  v6 = [v5 systemBackgroundColor];
  sub_1E5B3D604();
  v7 = a1[3];
  v41 = a1[2];
  v42 = v7;
  v43 = a1[4];
  v8 = a1[1];
  v39 = *a1;
  v40 = v8;
  sub_1E5B1A1D0();
  v9 = sub_1E5B3D5E4();

  *(v4 + 32) = v9;
  v10 = [v5 systemBackgroundColor];
  *(v4 + 40) = sub_1E5B3D604();
  MEMORY[0x1E6935EF0](v4);
  sub_1E5B3D864();
  sub_1E5B3D874();
  sub_1E5B3CF24();
  v11 = *(a1 + 6);
  sub_1E5B3D7E4();
  sub_1E5B3CEA4();
  v12 = sub_1E5B3D5B4();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1E5B43180;
  v14 = [v5 systemBackgroundColor];
  *(v13 + 32) = sub_1E5B3D604();
  v15 = [v5 systemBackgroundColor];
  sub_1E5B3D604();
  v16 = a1[3];
  v41 = a1[2];
  v42 = v16;
  v43 = a1[4];
  v17 = a1[1];
  v39 = *a1;
  v40 = v17;
  sub_1E5B1A2B0();
  v18 = sub_1E5B3D5E4();

  *(v13 + 40) = v18;
  MEMORY[0x1E6935EF0](v13);
  sub_1E5B3D864();
  sub_1E5B3D874();
  sub_1E5B3CF24();
  sub_1E5B3D7E4();
  sub_1E5B3CEA4();
  v33[2] = v29;
  v33[3] = v30;
  v33[4] = v31;
  v33[0] = v27;
  v33[1] = v28;
  v35[2] = v23;
  v35[3] = v24;
  v35[4] = v25;
  v35[0] = v21;
  v35[1] = v22;
  *&v20[22] = v22;
  *&v20[6] = v21;
  *&v20[86] = v26;
  *&v20[70] = v25;
  *&v20[54] = v24;
  *&v20[38] = v23;
  *(a2 + 32) = v29;
  *(a2 + 48) = v30;
  *(a2 + 64) = v31;
  *a2 = v27;
  *(a2 + 16) = v28;
  *(a2 + 114) = *&v20[16];
  *(a2 + 98) = *v20;
  *(a2 + 176) = *&v20[78];
  *(a2 + 162) = *&v20[64];
  *(a2 + 146) = *&v20[48];
  v34 = v32;
  v36 = v26;
  *(a2 + 80) = v32;
  *(a2 + 88) = v12;
  *(a2 + 96) = 256;
  *(a2 + 130) = *&v20[32];
  v37[0] = v21;
  v37[1] = v22;
  v38 = v26;
  v37[3] = v24;
  v37[4] = v25;
  v37[2] = v23;
  sub_1E5B0429C(v33, &v39, &qword_1ED032360, &qword_1E5B43358);

  sub_1E5B0429C(v35, &v39, &qword_1ED032360, &qword_1E5B43358);
  sub_1E5B04304(v37, &qword_1ED032360, &qword_1E5B43358);

  v41 = v29;
  v42 = v30;
  v43 = v31;
  v44 = v32;
  v39 = v27;
  v40 = v28;
  return sub_1E5B04304(&v39, &qword_1ED032360, &qword_1E5B43358);
}

double sub_1E5B1A928@<D0>(void *a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[4];
  v12[3] = v1[3];
  v12[4] = v4;
  v5 = *v1;
  v12[1] = v1[1];
  v12[2] = v3;
  v12[0] = v5;
  v6 = swift_allocObject();
  v7 = v1[3];
  v6[3] = v1[2];
  v6[4] = v7;
  v6[5] = v1[4];
  v8 = v1[1];
  v6[1] = *v1;
  v6[2] = v8;
  v11[10] = 0x4024000000000000;
  sub_1E5B18AC4(v12, v11);
  sub_1E5B3D674();
  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  a1[1] = v10;
  a1[2] = sub_1E5B1B22C;
  a1[3] = v6;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E5B1AA0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E5B1AA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5B1AACC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1E5B1AB14(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *sub_1E5B1AB84(uint64_t *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t))
{
  v4 = *a1;

  result = a2(&v7, v5);
  *a1 = v7;
  return result;
}

uint64_t objectdestroy_2Tm_2()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5AF0DEC();
  v4 = *(v0 + 40);

  v5 = *(v0 + 48);

  v6 = *(v0 + 80);

  v7 = *(v0 + 88);

  return swift_deallocObject();
}

unint64_t sub_1E5B1AC68()
{
  result = qword_1ED032378;
  if (!qword_1ED032378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032370, &qword_1E5B43368);
    sub_1E5B1ACF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032378);
  }

  return result;
}

unint64_t sub_1E5B1ACF4()
{
  result = qword_1ED032380;
  if (!qword_1ED032380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032388, &qword_1E5B43370);
    sub_1E5AF13EC(&qword_1ED032390, &qword_1ED032398, &qword_1E5B43378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032380);
  }

  return result;
}

uint64_t sub_1E5B1ADAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E5B1AE14@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_1E5B3CF64() - 8);
  v9 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  v7 = v2[1];
  v8 = v2[2];
  return sub_1E5B19300(*a1, v2 + ((*(v5 + 80) + 96) & ~*(v5 + 80)), a2);
}

unint64_t sub_1E5B1AEAC()
{
  result = qword_1ED0323D0;
  if (!qword_1ED0323D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0323C8, &qword_1E5B433B0);
    sub_1E5AF13EC(&qword_1ED0323D8, &qword_1ED0323E0, &qword_1E5B433B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0323D0);
  }

  return result;
}

unint64_t sub_1E5B1AF64()
{
  result = qword_1ED0323E8;
  if (!qword_1ED0323E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0323E8);
  }

  return result;
}

uint64_t sub_1E5B1AFB8()
{
  v1 = *(*(sub_1E5B3CF64() - 8) + 80);
  v2 = *(v0 + 96);

  return sub_1E5B199C8((v0 + 16));
}

unint64_t sub_1E5B1B02C()
{
  result = qword_1ED032408;
  if (!qword_1ED032408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032400, &qword_1E5B433D0);
    sub_1E5AF13EC(&qword_1ED032410, &qword_1ED032418, &qword_1E5B433D8);
    sub_1E5AF13EC(&qword_1ED032420, &qword_1ED032428, &unk_1E5B433E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032408);
  }

  return result;
}

uint64_t sub_1E5B1B128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0323E0, &qword_1E5B433B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B1B198(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5B1B1FC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E5B1B20C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1E5B19AD8();
}

uint64_t LibraryEnvironment.init(navigateToLibraryGalleryPage:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t LibraryPageCountView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for LibraryPageCountView() + 20);
  sub_1E5B1B32C();
  sub_1E5B3CE74();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5AEFB94;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for LibraryPageCountView()
{
  result = qword_1EE2C2D00;
  if (!qword_1EE2C2D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5B1B32C()
{
  result = qword_1EE2C2D90;
  if (!qword_1EE2C2D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C2D90);
  }

  return result;
}

uint64_t LibraryPageCountView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v2 = type metadata accessor for LibraryPageCountView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22[3] = v5;
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032448, &qword_1E5B43530);
  v7 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = v22 - v8;
  *v9 = sub_1E5B3D114();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v22[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032450, &qword_1E5B43538) + 44);
  v26 = &unk_1F5F6D998;
  sub_1E5B1BCE8(v1, v6);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1E5B1BD4C(v6, v11 + v10);
  v22[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319D0, &qword_1E5B3F2D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032460, &qword_1E5B43550);
  sub_1E5AF13EC(&qword_1ED0320C0, &qword_1ED0319D0, &qword_1E5B3F2D8);
  sub_1E5AF13EC(&qword_1ED032468, &qword_1ED032460, &qword_1E5B43550);
  sub_1E5B1AF64();
  sub_1E5B3D754();
  v12 = v23;
  sub_1E5B1BCE8(v23, v6);
  v13 = swift_allocObject();
  sub_1E5B1BD4C(v6, v13 + v10);
  v14 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032470, &qword_1E5B43558) + 36)];
  *v14 = sub_1E5B1C3A0;
  v14[1] = v13;
  v14[2] = 0;
  v14[3] = 0;
  sub_1E5B1BCE8(v12, v6);
  v15 = swift_allocObject();
  sub_1E5B1BD4C(v6, v15 + v10);
  v16 = &v9[*(v24 + 36)];
  *v16 = 0;
  *(v16 + 1) = 0;
  *(v16 + 2) = sub_1E5B1C468;
  *(v16 + 3) = v15;
  v17 = *v12;
  v18 = *(v12 + 8);
  v19 = *(v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v25 = v26;
  sub_1E5B1BCE8(v23, v6);
  v20 = swift_allocObject();
  sub_1E5B1BD4C(v6, v20 + v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031CE0, &qword_1E5B40C80);
  sub_1E5B1C5DC();
  sub_1E5AF13EC(&qword_1ED031D08, &qword_1ED031CE0, &qword_1E5B40C80);
  sub_1E5B3D574();

  return sub_1E5AEB758(v9);
}

uint64_t sub_1E5B1B820@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v60 = a3;
  v5 = type metadata accessor for LibraryPageCountLayout();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324A0, "vu");
  v10 = *(v9 - 8);
  v58 = v9 - 8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9 - 8);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324A8, &qword_1E5B43610);
  v56 = *(v16 - 8);
  v57 = v16;
  v17 = *(v56 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v55 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v50 - v20;
  sub_1E5B1BE30(*a1, &v50 - v20);
  sub_1E5B3D734();
  v53 = sub_1E5B3D2D4();
  v21 = a2[1];
  v52 = *a2;
  v51 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CC54();
  v22 = sub_1E5B3CC74();
  v23 = *(*(v22 - 8) + 8);
  v23(v8, v22);
  LODWORD(a1) = *(type metadata accessor for LibraryPageCountView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
  sub_1E5B3CE84();
  sub_1E5B3CD94();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324B0, &qword_1E5B43638) + 36)];
  *v32 = v53;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(a2) = sub_1E5B3D2F4();
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CC64();
  v23(v8, v22);
  sub_1E5B3CD94();
  v33 = v57;
  v34 = *(v58 + 44);
  v35 = v15;
  v50 = v15;
  v36 = &v15[v34];
  *v36 = a2;
  *(v36 + 1) = v37;
  *(v36 + 2) = v38;
  *(v36 + 3) = v39;
  *(v36 + 4) = v40;
  v36[40] = 0;
  v41 = v55;
  v42 = v56;
  v43 = *(v56 + 16);
  v44 = v54;
  v43(v55, v54, v33);
  v45 = v59;
  sub_1E5B0429C(v35, v59, &qword_1ED0324A0, "vu");
  v46 = v60;
  v43(v60, v41, v33);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324B8, &qword_1E5B43640);
  sub_1E5B0429C(v45, &v46[*(v47 + 48)], &qword_1ED0324A0, "vu");
  sub_1E5B04304(v50, &qword_1ED0324A0, "vu");
  v48 = *(v42 + 8);
  v48(v44, v33);
  sub_1E5B04304(v45, &qword_1ED0324A0, "vu");
  return (v48)(v41, v33);
}

uint64_t sub_1E5B1BCE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPageCountView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B1BD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LibraryPageCountView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B1BDB0@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v5 = *(type metadata accessor for LibraryPageCountView() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1E5B1B820(a1, v6, a2);
}

uint64_t sub_1E5B1BE30@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v39 = a1;
  v47 = a2;
  v41 = sub_1E5B3D594();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v7 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for LibraryPageCountView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324C0, &qword_1E5B43648);
  v42 = *(v40 - 8);
  v12 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v14 = &v38[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324C8, &qword_1E5B43650);
  v16 = *(v15 - 8);
  v43 = v15;
  v44 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324D0, &qword_1E5B43658);
  v21 = *(v20 - 8);
  v45 = v20;
  v46 = v21;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v38[-v23];
  sub_1E5B1BCE8(v2, v11);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = v25 + v10;
  v27 = swift_allocObject();
  sub_1E5B1BD4C(v11, v27 + v25);
  v28 = v39;
  *(v27 + v26) = v39;
  v48 = v3;
  v49 = v28;
  LOBYTE(v26) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324D8, &qword_1E5B43660);
  sub_1E5B1DDA4();
  sub_1E5B3D6C4();
  (*(v4 + 104))(v7, *MEMORY[0x1E69814D8], v41);
  v50 = sub_1E5B3D5F4();
  v29 = sub_1E5AF13EC(&qword_1ED032548, &qword_1ED0324C0, &qword_1E5B43648);
  v30 = sub_1E5B1E0B8();
  v31 = v40;
  sub_1E5B3D444();

  (*(v42 + 8))(v14, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032120, &qword_1E5B43450);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1E5B42210;
  v50 = 0;
  v51 = 0xE000000000000000;
  v54 = v26;
  sub_1E5B3DC24();
  v33 = v51;
  *(v32 + 32) = v50;
  *(v32 + 40) = v33;
  v50 = v31;
  v51 = &type metadata for PageCountButtonStyle;
  v52 = v29;
  v53 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v43;
  sub_1E5B3D3C4();

  (*(v44 + 8))(v19, v35);
  v50 = v35;
  v51 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v45;
  sub_1E5B3D3A4();
  return (*(v46 + 8))(v24, v36);
}

uint64_t sub_1E5B1C3AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560);
  sub_1E5B3CE44();
  sub_1E5B3D914();
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = (type metadata accessor for LibraryPageCountView() - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(v0 + v2);
  v5 = *(v0 + v2 + 8);
  v6 = *(v0 + v2 + 16);
  sub_1E5AF0DEC();
  v7 = v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  return swift_deallocObject();
}

unint64_t sub_1E5B1C5DC()
{
  result = qword_1ED032480;
  if (!qword_1ED032480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032448, &qword_1E5B43530);
    sub_1E5B1C668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032480);
  }

  return result;
}

unint64_t sub_1E5B1C668()
{
  result = qword_1ED032488;
  if (!qword_1ED032488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032470, &qword_1E5B43558);
    sub_1E5AF13EC(&qword_1ED032490, &qword_1ED032498, &qword_1E5B43590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032488);
  }

  return result;
}

uint64_t sub_1E5B1C73C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560);
  sub_1E5B3CE44();
  sub_1E5B3D914();
}

__n128 sub_1E5B1C800@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v59 = a3;
  v5 = type metadata accessor for LibraryPageCountLayout();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v55[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324F0, &qword_1E5B43668);
  v9 = *(*(v58 - 8) + 64);
  MEMORY[0x1EEE9AC00](v58);
  v11 = &v55[-v10];
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  v57 = sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560);
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  v15 = v60;
  if (*(v60 + 16) && (v16 = sub_1E5B1E10C(a2), (v17 & 1) != 0))
  {
    v18 = *(*(v15 + 56) + 8 * v16);
  }

  else
  {
    v18 = 0;
  }

  *v11 = sub_1E5B3D0B4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032558, &qword_1E5B436C0);
  sub_1E5B1CC9C(a2, a1, v18, &v11[*(v19 + 44)]);
  v56 = sub_1E5B3D2D4();
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CC54();
  v20 = sub_1E5B3CC74();
  v21 = *(*(v20 - 8) + 8);
  v21(v8, v20);
  sub_1E5B3CD94();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032520, &qword_1E5B43680) + 36)];
  *v30 = v56;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  v56 = sub_1E5B3D2F4();
  sub_1E5B3CE44();
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CC64();
  v21(v8, v20);
  sub_1E5B3CD94();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032510, &qword_1E5B43678) + 36)];
  *v39 = v56;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = sub_1E5B3D304();
  sub_1E5B3CD94();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032500, &qword_1E5B43670) + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v11[*(v58 + 36)] = 0;
  sub_1E5B3D7E4();
  sub_1E5B3CF94();
  v50 = v59;
  sub_1E5AEBAE0(v11, v59);
  v51 = v50 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0324D8, &qword_1E5B43660) + 36);
  v52 = v65;
  *(v51 + 64) = v64;
  *(v51 + 80) = v52;
  *(v51 + 96) = v66;
  v53 = v61;
  *v51 = v60;
  *(v51 + 16) = v53;
  result = v63;
  *(v51 + 32) = v62;
  *(v51 + 48) = result;
  return result;
}

uint64_t sub_1E5B1CC9C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v115 = a3;
  v116 = a4;
  v121 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032560, &qword_1E5B436C8);
  v128 = *(v117 - 8);
  v5 = v128[8];
  v6 = MEMORY[0x1EEE9AC00](v117);
  v127 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v126 = &v107 - v8;
  v9 = sub_1E5B3D0F4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v114 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5B3CB44();
  v119 = *(v12 - 8);
  v120 = v12;
  v13 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v118 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_1E5B3D594();
  v129 = *(v124 - 8);
  v15 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032568, &qword_1E5B436D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v107 - v19);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032570, &qword_1E5B436D8);
  v21 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v23 = &v107 - v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032578, &qword_1E5B436E0);
  v24 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v26 = &v107 - v25;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032580, &qword_1E5B436E8);
  v27 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v113 = &v107 - v28;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032588, &qword_1E5B436F0);
  v29 = *(*(v112 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v112);
  v125 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v107 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v130 = &v107 - v35;
  LODWORD(v122) = a1;
  v36 = sub_1E5B3D644();
  v37 = (v20 + *(v17 + 36));
  v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032590, &qword_1E5B436F8) + 28);
  v39 = *MEMORY[0x1E69816E0];
  v40 = sub_1E5B3D654();
  (*(*(v40 - 8) + 104))(v37 + v38, v39, v40);
  *v37 = swift_getKeyPath();
  *v20 = v36;
  v41 = *(v129 + 104);
  LODWORD(v111) = *MEMORY[0x1E69814D8];
  v129 += 104;
  v42 = v41;
  v41(v123);
  v43 = sub_1E5B3D5F4();
  sub_1E5B1ADAC(v20, v23, &qword_1ED032568, &qword_1E5B436D0);
  *&v23[*(v109 + 36)] = v43;
  v44 = sub_1E5B3D314();
  KeyPath = swift_getKeyPath();
  sub_1E5B1ADAC(v23, v26, &qword_1ED032570, &qword_1E5B436D8);
  v46 = &v26[*(v108 + 36)];
  *v46 = KeyPath;
  v46[1] = v44;
  LODWORD(v44) = *(type metadata accessor for LibraryPageCountView() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032458, &unk_1E5B43540);
  v47 = v121;
  sub_1E5B3CE84();
  sub_1E5B3D7E4();
  sub_1E5B3CEA4();
  v48 = v113;
  sub_1E5B1ADAC(v26, v113, &qword_1ED032578, &qword_1E5B436E0);
  v49 = (v48 + *(v110 + 36));
  v50 = v161;
  *v49 = v160;
  v49[1] = v50;
  v49[2] = v162;
  LOBYTE(v26) = sub_1E5B3D2F4();
  v51 = sub_1E5B3D2E4();
  sub_1E5B3D2E4();
  if (sub_1E5B3D2E4() != v26)
  {
    v51 = sub_1E5B3D2E4();
  }

  sub_1E5B3CD94();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_1E5B1ADAC(v48, v34, &qword_1ED032580, &qword_1E5B436E8);
  v60 = &v34[*(v112 + 36)];
  *v60 = v51;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  sub_1E5B1ADAC(v34, v130, &qword_1ED032588, &qword_1E5B436F0);
  v61 = *v47;
  v62 = *(v47 + 8);
  v63 = *(v47 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032478, &qword_1E5B43560);
  sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560);
  sub_1E5B3CE44();
  swift_getKeyPath();
  v64 = v118;
  sub_1E5B3D904();

  v65 = LibraryPage.title(locale:)(v64);
  v67 = v66;
  (*(v119 + 8))(v64, v120);
  v136 = v65;
  v137 = v67;
  sub_1E5B04428();
  v68 = sub_1E5B3D394();
  v120 = v69;
  v121 = v68;
  LOBYTE(v65) = v70;
  v122 = v71;
  v119 = swift_getKeyPath();
  v42(v123, v111, v124);
  v129 = sub_1E5B3D5F4();
  v159 = v65 & 1;
  v157 = 0;
  v124 = swift_getKeyPath();
  LODWORD(v118) = v159;
  LODWORD(v123) = v157;
  sub_1E5B3D7F4();
  sub_1E5B3CF94();
  *&v155[53] = v166;
  *&v155[69] = v167;
  *&v155[85] = v168;
  *&v155[101] = v169;
  *&v155[5] = v163;
  *&v155[21] = v164;
  *&v155[37] = v165;
  sub_1E5B3D0E4();
  sub_1E5B3D0D4();
  v136 = v115;
  sub_1E5B3D0C4();
  sub_1E5B3D0D4();
  sub_1E5B3D104();
  v72 = sub_1E5B3D384();
  v74 = v73;
  v76 = v75;
  v136 = sub_1E5B3D5A4();
  v77 = sub_1E5B3D374();
  v112 = v78;
  v113 = v77;
  LODWORD(v114) = v79;
  v115 = v80;
  sub_1E5B1B198(v72, v74, v76 & 1);

  v81 = sub_1E5B3D634();
  v82 = sub_1E5B3D5A4();
  LODWORD(v72) = sub_1E5B3D1C4();
  v83 = sub_1E5B3D354();
  v84 = swift_getKeyPath();
  v136 = v81;
  v137 = v82;
  LODWORD(v138) = v72;
  v139 = v84;
  v140 = v83;
  sub_1E5B3D324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032598, &qword_1E5B437E0);
  sub_1E5B1E688();
  v85 = v126;
  sub_1E5B3D414();

  v86 = v125;
  sub_1E5B0429C(v130, v125, &qword_1ED032588, &qword_1E5B436F0);
  v111 = v128[2];
  v87 = v117;
  v111(v127, v85, v117);
  v88 = v116;
  sub_1E5B0429C(v86, v116, &qword_1ED032588, &qword_1E5B436F0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0325D8, &qword_1E5B43800);
  v90 = (v88 + v89[12]);
  *&v131 = v121;
  *(&v131 + 1) = v120;
  LOBYTE(v132) = v118;
  *(&v132 + 1) = *v158;
  DWORD1(v132) = *&v158[3];
  *(&v132 + 1) = v122;
  *&v133 = v119;
  *(&v133 + 1) = 2;
  LOBYTE(v134) = v123;
  *(&v134 + 1) = *v156;
  DWORD1(v134) = *&v156[3];
  *(&v134 + 1) = v129;
  *&v135[0] = v124;
  WORD4(v135[0]) = 0;
  BYTE10(v135[0]) = 1;
  *(v135 + 11) = *v155;
  *(&v135[3] + 11) = *&v155[48];
  *(&v135[2] + 11) = *&v155[32];
  *(&v135[1] + 11) = *&v155[16];
  *(&v135[7] + 1) = *&v155[109];
  *(&v135[6] + 11) = *&v155[96];
  *(&v135[5] + 11) = *&v155[80];
  *(&v135[4] + 11) = *&v155[64];
  v91 = v131;
  v92 = v132;
  v93 = v134;
  v90[2] = v133;
  v90[3] = v93;
  *v90 = v91;
  v90[1] = v92;
  v94 = v135[0];
  v95 = v135[1];
  v96 = v135[3];
  v90[6] = v135[2];
  v90[7] = v96;
  v90[4] = v94;
  v90[5] = v95;
  v97 = v135[4];
  v98 = v135[5];
  v99 = v135[7];
  v90[10] = v135[6];
  v90[11] = v99;
  v90[8] = v97;
  v90[9] = v98;
  v100 = v88 + v89[16];
  *v100 = 0x4014000000000000;
  *(v100 + 8) = 0;
  v101 = v88 + v89[20];
  v103 = v112;
  v102 = v113;
  *v101 = v113;
  *(v101 + 8) = v103;
  LOBYTE(v83) = v114 & 1;
  *(v101 + 16) = v114 & 1;
  *(v101 + 24) = v115;
  v104 = v127;
  v111((v88 + v89[24]), v127, v87);
  sub_1E5B0429C(&v131, &v136, &qword_1ED0325E0, &qword_1E5B43808);
  sub_1E5B1B1FC(v102, v103, v83);
  v105 = v128[1];

  v105(v126, v87);
  sub_1E5B04304(v130, &qword_1ED032588, &qword_1E5B436F0);
  v105(v104, v87);
  sub_1E5B1B198(v102, v103, v83);

  v152 = *&v155[64];
  v153 = *&v155[80];
  *v154 = *&v155[96];
  v148 = *v155;
  v149 = *&v155[16];
  v150 = *&v155[32];
  v136 = v121;
  v137 = v120;
  LOBYTE(v138) = v118;
  *(&v138 + 1) = *v158;
  HIDWORD(v138) = *&v158[3];
  v139 = v122;
  v140 = v119;
  v141 = 2;
  v142 = v123;
  *v143 = *v156;
  *&v143[3] = *&v156[3];
  v144 = v129;
  v145 = v124;
  v146 = 0;
  v147 = 1;
  *&v154[13] = *&v155[109];
  v151 = *&v155[48];
  sub_1E5B04304(&v136, &qword_1ED0325E0, &qword_1E5B43808);
  return sub_1E5B04304(v125, &qword_1ED032588, &qword_1E5B436F0);
}

void sub_1E5B1DB94()
{
  sub_1E5B1DC18();
  if (v0 <= 0x3F)
  {
    sub_1E5B1DCBC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B1DC18()
{
  if (!qword_1EE2C2428[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032478, &qword_1E5B43560);
    sub_1E5AF13EC(&qword_1EE2C2408, &qword_1ED032478, &qword_1E5B43560);
    v0 = sub_1E5B3CE54();
    if (!v1)
    {
      atomic_store(v0, qword_1EE2C2428);
    }
  }
}

void sub_1E5B1DCBC()
{
  if (!qword_1EE2C2410)
  {
    sub_1E5B1B32C();
    v0 = sub_1E5B3CE94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C2410);
    }
  }
}

uint64_t sub_1E5B1DD18()
{
  v1 = *(type metadata accessor for LibraryPageCountView() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = *(v2 + *(v1 + 64));

  return sub_1E5B1C73C(v2);
}

unint64_t sub_1E5B1DDA4()
{
  result = qword_1ED0324E0;
  if (!qword_1ED0324E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0324D8, &qword_1E5B43660);
    sub_1E5B1DE30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0324E0);
  }

  return result;
}

unint64_t sub_1E5B1DE30()
{
  result = qword_1ED0324E8;
  if (!qword_1ED0324E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0324F0, &qword_1E5B43668);
    sub_1E5B1DEE8();
    sub_1E5AF13EC(&qword_1ED032538, &qword_1ED032540, &unk_1E5B43690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0324E8);
  }

  return result;
}

unint64_t sub_1E5B1DEE8()
{
  result = qword_1ED0324F8;
  if (!qword_1ED0324F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032500, &qword_1E5B43670);
    sub_1E5B1DF74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0324F8);
  }

  return result;
}

unint64_t sub_1E5B1DF74()
{
  result = qword_1ED032508;
  if (!qword_1ED032508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032510, &qword_1E5B43678);
    sub_1E5B1E000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032508);
  }

  return result;
}

unint64_t sub_1E5B1E000()
{
  result = qword_1ED032518;
  if (!qword_1ED032518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032520, &qword_1E5B43680);
    sub_1E5AF13EC(&qword_1ED032528, &qword_1ED032530, &qword_1E5B43688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032518);
  }

  return result;
}

unint64_t sub_1E5B1E0B8()
{
  result = qword_1ED032550;
  if (!qword_1ED032550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032550);
  }

  return result;
}

unint64_t sub_1E5B1E10C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1E5B3DDC4();
  sub_1E5B3DA14();

  v4 = sub_1E5B3DDF4();

  return sub_1E5B1E290(a1, v4);
}

unint64_t sub_1E5B1E290(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v5 = 0xE800000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v27 + 48) + v4);
      if (v7 > 3)
      {
        if (*(*(v27 + 48) + v4) > 5u)
        {
          if (v7 == 6)
          {
            v12 = 0x796C746E65636572;
            v13 = 0xED00006465646441;
          }

          else
          {
            v13 = 0xE700000000000000;
            v12 = 0x656E696C66666FLL;
          }
        }

        else
        {
          if (v7 == 4)
          {
            v12 = 0xD000000000000014;
          }

          else
          {
            v12 = 0x64616F6C6E776F64;
          }

          if (v7 == 4)
          {
            v13 = 0x80000001E5B45B90;
          }

          else
          {
            v13 = 0xEA00000000006465;
          }
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = 0x736B63617473;
        }

        else
        {
          v8 = 0x736D6172676F7270;
        }

        if (v7 == 2)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE800000000000000;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x697461746964656DLL;
        }

        else
        {
          v10 = 0x7374756F6B726F77;
        }

        if (*(*(v27 + 48) + v4))
        {
          v11 = 0xEB00000000736E6FLL;
        }

        else
        {
          v11 = 0xE800000000000000;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v12 = v10;
        }

        else
        {
          v12 = v8;
        }

        if (*(*(v27 + 48) + v4) <= 1u)
        {
          v13 = v11;
        }

        else
        {
          v13 = v9;
        }
      }

      v14 = 0x796C746E65636572;
      if (v6 != 6)
      {
        v14 = 0x656E696C66666FLL;
      }

      v15 = 0xED00006465646441;
      if (v6 != 6)
      {
        v15 = 0xE700000000000000;
      }

      v16 = 0xD000000000000014;
      if (v6 != 4)
      {
        v16 = 0x64616F6C6E776F64;
      }

      v17 = 0xEA00000000006465;
      if (v6 == 4)
      {
        v17 = 0x80000001E5B45B90;
      }

      if (v6 <= 5)
      {
        v14 = v16;
        v15 = v17;
      }

      if (v6 == 2)
      {
        v18 = 0x736B63617473;
      }

      else
      {
        v18 = 0x736D6172676F7270;
      }

      if (v6 == 2)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v19 = 0xE800000000000000;
      }

      if (v6)
      {
        v20 = 0x697461746964656DLL;
      }

      else
      {
        v20 = 0x7374756F6B726F77;
      }

      if (v6)
      {
        v5 = 0xEB00000000736E6FLL;
      }

      if (v6 <= 1)
      {
        v18 = v20;
        v19 = v5;
      }

      v21 = v6 <= 3 ? v18 : v14;
      v22 = v6 <= 3 ? v19 : v15;
      if (v12 == v21 && v13 == v22)
      {
        break;
      }

      v23 = sub_1E5B3DDA4();

      if ((v23 & 1) == 0)
      {
        v4 = (v4 + 1) & v25;
        v5 = 0xE800000000000000;
        if ((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1E5B1E55C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E5B3D084();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E5B1E590(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_1E5B3D094();
}

uint64_t sub_1E5B1E5C0(uint64_t a1)
{
  v2 = sub_1E5B3D654();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E5B3CFB4();
}

unint64_t sub_1E5B1E688()
{
  result = qword_1ED0325A0;
  if (!qword_1ED0325A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032598, &qword_1E5B437E0);
    sub_1E5B1E740();
    sub_1E5AF13EC(&qword_1ED0325C8, &qword_1ED0325D0, &qword_1E5B437F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0325A0);
  }

  return result;
}

unint64_t sub_1E5B1E740()
{
  result = qword_1ED0325A8;
  if (!qword_1ED0325A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0325B0, &qword_1E5B437E8);
    sub_1E5AF13EC(&qword_1ED0325B8, &qword_1ED0325C0, &qword_1E5B437F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0325A8);
  }

  return result;
}

uint64_t sub_1E5B1E7FC()
{
  v1 = 1701602409;
  v2 = 0x64656863746566;
  if (*v0 != 2)
  {
    v2 = 0x6968736572666572;
  }

  if (*v0)
  {
    v1 = 0x676E696863746566;
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

uint64_t sub_1E5B1E874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B20CD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B1E89C(uint64_t a1)
{
  v2 = sub_1E5B204F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1E8D8(uint64_t a1)
{
  v2 = sub_1E5B204F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B1E914(uint64_t a1)
{
  v2 = sub_1E5B205F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1E950(uint64_t a1)
{
  v2 = sub_1E5B205F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B1E98C(uint64_t a1)
{
  v2 = sub_1E5B20648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1E9C8(uint64_t a1)
{
  v2 = sub_1E5B20648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B1EA04(uint64_t a1)
{
  v2 = sub_1E5B2069C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1EA40(uint64_t a1)
{
  v2 = sub_1E5B2069C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B1EA7C(uint64_t a1)
{
  v2 = sub_1E5B2054C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B1EAB8(uint64_t a1)
{
  v2 = sub_1E5B2054C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasContentLoadState.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0325E8, &qword_1E5B43810);
  v68 = *(v2 - 8);
  v69 = v2;
  v3 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v60 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0325F0, &qword_1E5B43818);
  v65 = *(v5 - 8);
  v66 = v5;
  v6 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v60 - v7;
  v8 = sub_1E5B3CB44();
  v9 = *(v8 - 8);
  v72 = v8;
  v73 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v71 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0325F8, &qword_1E5B43820);
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032600, &qword_1E5B43828);
  v61 = *(v18 - 8);
  v19 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v60 - v20;
  State = type metadata accessor for LibraryCanvasContentLoadState();
  v23 = *(*(State - 8) + 64);
  MEMORY[0x1EEE9AC00](State);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032608, &unk_1E5B43830);
  v27 = *(v26 - 8);
  v75 = v26;
  v76 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v60 - v29;
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B204F8();
  v78 = v30;
  sub_1E5B3DE14();
  sub_1E5B0E5E0(v74, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      LOBYTE(v80) = 0;
      sub_1E5B2069C();
      v43 = v75;
      v44 = v78;
      sub_1E5B3DD24();
      (*(v61 + 8))(v21, v18);
    }

    else
    {
      LOBYTE(v80) = 1;
      sub_1E5B20648();
      v43 = v75;
      v44 = v78;
      sub_1E5B3DD24();
      (*(v62 + 8))(v17, v63);
    }

    return (*(v76 + 8))(v44, v43);
  }

  else if (EnumCaseMultiPayload)
  {
    v45 = *v25;
    LODWORD(v70) = v25[8];
    LODWORD(v66) = v25[9];
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
    v47 = v72;
    v48 = v73;
    v49 = v71;
    (*(v73 + 32))(v71, &v25[*(v46 + 64)], v72);
    LOBYTE(v80) = 3;
    sub_1E5B2054C();
    v50 = v67;
    v51 = v75;
    v52 = v78;
    sub_1E5B3DD24();
    v74 = v45;
    v80 = v45;
    v79 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
    sub_1E5B206F0(&qword_1ED032628, sub_1E5B205A0);
    v53 = v69;
    v54 = v77;
    sub_1E5B3DD74();
    if (v54)
    {
      (*(v68 + 8))(v50, v53);
      (*(v48 + 8))(v49, v47);
      (*(v76 + 8))(v52, v51);
    }

    v57 = v47;

    LOBYTE(v80) = v70;
    BYTE1(v80) = v66;
    v79 = 1;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    LOBYTE(v80) = 2;
    sub_1E5AFBFCC(&qword_1ED031AD0);
    v59 = v71;
    sub_1E5B3DD74();
    (*(v68 + 8))(v50, v53);
    (*(v48 + 8))(v59, v57);
    return (*(v76 + 8))(v52, v51);
  }

  else
  {
    v33 = *v25;
    LODWORD(v71) = v25[8];
    LODWORD(v69) = v25[9];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90);
    v35 = v72;
    v36 = v73;
    v37 = v70;
    (*(v73 + 32))(v70, &v25[*(v34 + 64)], v72);
    LOBYTE(v80) = 2;
    sub_1E5B205F4();
    v38 = v64;
    v39 = v75;
    v40 = v78;
    sub_1E5B3DD24();
    v74 = v33;
    v80 = v33;
    v79 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
    sub_1E5B206F0(&qword_1ED032628, sub_1E5B205A0);
    v41 = v66;
    v42 = v77;
    sub_1E5B3DD74();
    if (v42)
    {
      (*(v65 + 8))(v38, v41);
      (*(v36 + 8))(v37, v35);
      (*(v76 + 8))(v40, v39);
    }

    v56 = v35;

    LOBYTE(v80) = v71;
    BYTE1(v80) = v69;
    v79 = 1;
    sub_1E5AFBAC4();
    sub_1E5B3DD74();
    LOBYTE(v80) = 2;
    sub_1E5AFBFCC(&qword_1ED031AD0);
    v58 = v70;
    sub_1E5B3DD74();
    (*(v65 + 8))(v38, v41);
    (*(v36 + 8))(v58, v56);
    return (*(v76 + 8))(v78, v39);
  }
}

uint64_t LibraryCanvasContentLoadState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032650, &qword_1E5B43848);
  v65 = *(v71 - 8);
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032658, &qword_1E5B43850);
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032660, &qword_1E5B43858);
  v61 = *(v9 - 8);
  v62 = v9;
  v10 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032668, &qword_1E5B43860);
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032670, &unk_1E5B43868);
  v68 = *(v16 - 8);
  v69 = v16;
  v17 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v18;
  State = type metadata accessor for LibraryCanvasContentLoadState();
  v21 = *(*(State - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](State);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v56 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v56 - v28;
  v31 = a1[3];
  v30 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v31);
  sub_1E5B204F8();
  v32 = v73;
  sub_1E5B3DE04();
  if (!v32)
  {
    v73 = v15;
    v33 = v70;
    v56 = v27;
    v57 = v24;
    v58 = State;
    v34 = v68;
    v35 = v69;
    v36 = v71;
    v37 = v72;
    v38 = sub_1E5B3DD04();
    v39 = (2 * *(v38 + 16)) | 1;
    v75 = v38;
    v76 = v38 + 32;
    v77 = 0;
    v78 = v39;
    v40 = sub_1E5B00350();
    v41 = v19;
    if (v40 == 4 || v77 != v78 >> 1)
    {
      v43 = sub_1E5B3DC04();
      swift_allocError();
      v45 = v44;
      v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
      *v45 = v58;
      sub_1E5B3DCA4();
      sub_1E5B3DBF4();
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
      swift_willThrow();
      (*(v34 + 8))(v19, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v40 > 1u)
      {
        v48 = v34;
        if (v40 == 2)
        {
          v79 = 2;
          sub_1E5B205F4();
          sub_1E5B3DC94();
          v73 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
          v79 = 0;
          sub_1E5B206F0(&qword_1ED032678, sub_1E5B20768);
          v49 = v56;
          v50 = v63;
          sub_1E5B3DCF4();
          v79 = 1;
          sub_1E5AFC010();
          sub_1E5B3DCF4();
          v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
          sub_1E5B3CB44();
          v79 = 2;
          sub_1E5AFBFCC(&qword_1ED031AF8);
          v53 = v66;
          sub_1E5B3DCF4();
          (*(v64 + 8))(v53, v50);
          (*(v34 + 8))(v73, v35);
        }

        else
        {
          v79 = 3;
          sub_1E5B2054C();
          sub_1E5B3DC94();
          v73 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
          v79 = 0;
          sub_1E5B206F0(&qword_1ED032678, sub_1E5B20768);
          v51 = v57;
          sub_1E5B3DCF4();
          v79 = 1;
          sub_1E5AFC010();
          sub_1E5B3DCF4();
          v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
          sub_1E5B3CB44();
          v49 = v51;
          v79 = 2;
          sub_1E5AFBFCC(&qword_1ED031AF8);
          v55 = v67;
          sub_1E5B3DCF4();
          (*(v65 + 8))(v55, v36);
          (*(v48 + 8))(v73, v35);
        }

        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        sub_1E5B04A10(v49, v29);
      }

      else
      {
        if (v40)
        {
          v79 = 1;
          sub_1E5B20648();
          sub_1E5B3DC94();
          (*(v61 + 8))(v33, v62);
        }

        else
        {
          v79 = 0;
          sub_1E5B2069C();
          v42 = v73;
          sub_1E5B3DC94();
          (*(v59 + 8))(v42, v60);
        }

        (*(v34 + 8))(v19, v35);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
      }

      sub_1E5B04A10(v29, v37);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t _s14FitnessLibrary0B22CanvasContentLoadStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B3CB44();
  v5 = *(v4 - 8);
  v61 = v4;
  v62 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v60 = v56 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v56 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v56 - v15;
  State = type metadata accessor for LibraryCanvasContentLoadState();
  v18 = *(*(State - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](State);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v56 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0326F0, &unk_1E5B43DE0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = v56 - v27;
  v29 = v56 + *(v26 + 56) - v27;
  sub_1E5B0E5E0(a1, v56 - v27);
  sub_1E5B0E5E0(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_20;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_20;
    }

    sub_1E5B20FBC(v28);
    v40 = 1;
    return v40 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1E5B0E5E0(v28, v21);
    v42 = *v21;
    v43 = v21[8];
    v44 = v21[9];
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
    v34 = &v21[v45];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v59 = v43;
      v46 = *v29;
      v47 = v29[8];
      v57 = v44;
      v58 = v47;
      v56[2] = v29[9];
      v48 = v62;
      v49 = *(v62 + 32);
      v38 = v61;
      v49(v60, &v21[v45], v61);
      v49(v9, &v29[v45], v38);
      v50 = sub_1E5B0E8D0(v42, v46);

      if (v50)
      {
        if (v59 == v58 && (sub_1E5B3CCB4() & 1) != 0)
        {
          v51 = v60;
          v40 = MEMORY[0x1E6935290](v60, v9);
          v52 = *(v62 + 8);
          v52(v9, v38);
          v52(v51, v38);
          goto LABEL_16;
        }

        v48 = v62;
      }

      v53 = *(v48 + 8);
      v53(v9, v38);
      v54 = v60;
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  sub_1E5B0E5E0(v28, v23);
  v31 = *v23;
  LODWORD(v60) = v23[8];
  v32 = v23[9];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D28, &qword_1E5B40D90) + 64);
  v34 = &v23[v33];
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_17:
    (*(v62 + 8))(v34, v61);

LABEL_20:
    sub_1E5B20F54(v28);
LABEL_25:
    v40 = 0;
    return v40 & 1;
  }

  v58 = v32;
  v35 = *v29;
  v59 = v29[8];
  v57 = v29[9];
  v36 = *(v62 + 32);
  v37 = v34;
  v38 = v61;
  v36(v16, v37, v61);
  v36(v14, &v29[v33], v38);
  v39 = sub_1E5B0E8D0(v31, v35);

  if ((v39 & 1) == 0 || v60 != v59 || (sub_1E5B3CCB4() & 1) == 0)
  {
    v53 = *(v62 + 8);
    v53(v14, v38);
    v54 = v16;
LABEL_24:
    v53(v54, v38);
    sub_1E5B20FBC(v28);
    goto LABEL_25;
  }

  v40 = MEMORY[0x1E6935290](v16, v14);
  v41 = *(v62 + 8);
  v41(v14, v38);
  v41(v16, v38);
LABEL_16:
  sub_1E5B20FBC(v28);
  return v40 & 1;
}

unint64_t sub_1E5B204F8()
{
  result = qword_1ED032610;
  if (!qword_1ED032610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032610);
  }

  return result;
}

unint64_t sub_1E5B2054C()
{
  result = qword_1ED032618;
  if (!qword_1ED032618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032618);
  }

  return result;
}

unint64_t sub_1E5B205A0()
{
  result = qword_1ED032630;
  if (!qword_1ED032630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032630);
  }

  return result;
}

unint64_t sub_1E5B205F4()
{
  result = qword_1ED032638;
  if (!qword_1ED032638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032638);
  }

  return result;
}

unint64_t sub_1E5B20648()
{
  result = qword_1ED032640;
  if (!qword_1ED032640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032640);
  }

  return result;
}

unint64_t sub_1E5B2069C()
{
  result = qword_1ED032648;
  if (!qword_1ED032648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032648);
  }

  return result;
}

uint64_t sub_1E5B206F0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032620, &qword_1E5B43840);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B20768()
{
  result = qword_1ED032680;
  if (!qword_1ED032680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032680);
  }

  return result;
}

unint64_t sub_1E5B20860()
{
  result = qword_1ED032688;
  if (!qword_1ED032688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032688);
  }

  return result;
}

unint64_t sub_1E5B208B8()
{
  result = qword_1ED032690;
  if (!qword_1ED032690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032690);
  }

  return result;
}

unint64_t sub_1E5B20910()
{
  result = qword_1ED032698;
  if (!qword_1ED032698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032698);
  }

  return result;
}

unint64_t sub_1E5B20968()
{
  result = qword_1ED0326A0;
  if (!qword_1ED0326A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326A0);
  }

  return result;
}

unint64_t sub_1E5B209C0()
{
  result = qword_1ED0326A8;
  if (!qword_1ED0326A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326A8);
  }

  return result;
}

unint64_t sub_1E5B20A18()
{
  result = qword_1ED0326B0;
  if (!qword_1ED0326B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326B0);
  }

  return result;
}

unint64_t sub_1E5B20A70()
{
  result = qword_1ED0326B8;
  if (!qword_1ED0326B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326B8);
  }

  return result;
}

unint64_t sub_1E5B20AC8()
{
  result = qword_1ED0326C0;
  if (!qword_1ED0326C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326C0);
  }

  return result;
}

unint64_t sub_1E5B20B20()
{
  result = qword_1ED0326C8;
  if (!qword_1ED0326C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326C8);
  }

  return result;
}

unint64_t sub_1E5B20B78()
{
  result = qword_1ED0326D0;
  if (!qword_1ED0326D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326D0);
  }

  return result;
}

unint64_t sub_1E5B20BD0()
{
  result = qword_1ED0326D8;
  if (!qword_1ED0326D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326D8);
  }

  return result;
}

unint64_t sub_1E5B20C28()
{
  result = qword_1ED0326E0;
  if (!qword_1ED0326E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326E0);
  }

  return result;
}

unint64_t sub_1E5B20C80()
{
  result = qword_1ED0326E8;
  if (!qword_1ED0326E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0326E8);
  }

  return result;
}

uint64_t sub_1E5B20CD4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701602409 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696863746566 && a2 == 0xE800000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656863746566 && a2 == 0xE700000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6968736572666572 && a2 == 0xEA0000000000676ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B20E40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F79616CLL && a2 == 0xE600000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B20F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0326F0, &unk_1E5B43DE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B20FBC(uint64_t a1)
{
  State = type metadata accessor for LibraryCanvasContentLoadState();
  (*(*(State - 8) + 8))(a1, State);
  return a1;
}

uint64_t LibraryPageCountLayout.init(contentMargins:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5B3CC74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t LibraryPageCountLayout.contentMargins.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5B3CC74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1E5B21120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B211B0(uint64_t a1)
{
  v2 = sub_1E5B2138C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B211EC(uint64_t a1)
{
  v2 = sub_1E5B2138C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryPageCountLayout.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0326F8, &qword_1E5B43DF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B2138C();
  sub_1E5B3DE14();
  sub_1E5B3CC74();
  sub_1E5B21698(&qword_1ED032708);
  sub_1E5B3DD74();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E5B2138C()
{
  result = qword_1ED032700;
  if (!qword_1ED032700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032700);
  }

  return result;
}

uint64_t LibraryPageCountLayout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1E5B3CC74();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032710, &qword_1E5B43DF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for LibraryPageCountLayout();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B2138C();
  v16 = v23;
  sub_1E5B3DE04();
  if (!v16)
  {
    v17 = v21;
    sub_1E5B21698(&qword_1ED032718);
    sub_1E5B3DCF4();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_1E5B10060(v14, v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for LibraryPageCountLayout()
{
  result = qword_1ED032720;
  if (!qword_1ED032720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B21698(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5B3CC74();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B216F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0326F8, &qword_1E5B43DF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B2138C();
  sub_1E5B3DE14();
  sub_1E5B3CC74();
  sub_1E5B21698(&qword_1ED032708);
  sub_1E5B3DD74();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E5B21884()
{
  result = sub_1E5B3CC74();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E5B21904()
{
  result = qword_1ED032730;
  if (!qword_1ED032730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032730);
  }

  return result;
}

unint64_t sub_1E5B2195C()
{
  result = qword_1ED032738;
  if (!qword_1ED032738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032738);
  }

  return result;
}

unint64_t sub_1E5B219B4()
{
  result = qword_1ED032740;
  if (!qword_1ED032740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032740);
  }

  return result;
}

uint64_t GalleryState.init(activeLocale:contentMargins:densityFactor:items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = sub_1E5B3CB44();
  (*(*(v7 - 8) + 32))(a5, a1, v7);
  v8 = type metadata accessor for GalleryState();
  v9 = v8[21];
  v10 = sub_1E5B3CC74();
  (*(*(v10 - 8) + 32))(a5 + v9, a2, v10);
  v11 = v8[22];
  v12 = sub_1E5B3CBC4();
  (*(*(v12 - 8) + 32))(a5 + v11, a3, v12);
  v13 = v8[23];
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  sub_1E5B3CCF4();
  sub_1E5B3DA74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = sub_1E5B3D8C4();
  return (*(*(v14 - 8) + 32))(a5 + v13, a4, v14);
}

uint64_t static GalleryState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E6935290]() & 1) != 0 && (v4 = type metadata accessor for GalleryState(), (MEMORY[0x1E69353B0](a1 + v4[21], a2 + v4[21])) && (v5 = v4[22], (sub_1E5B3CBA4()))
  {
    v6 = v4[23];
    type metadata accessor for LibraryDataItem();
    swift_getWitnessTable();
    sub_1E5B3CCF4();
    sub_1E5B3DA74();
    swift_getWitnessTable();
    swift_getWitnessTable();
    v7 = sub_1E5B3D8A4();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1E5B21DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F4C657669746361 && a2 == 0xEC000000656C6163;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4D746E65746E6F63 && a2 == 0xEE00736E69677261 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46797469736E6564 && a2 == 0xED0000726F746361 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B21F84(unsigned __int8 a1)
{
  sub_1E5B3DDC4();
  MEMORY[0x1E6936540](a1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B21FCC(unsigned __int8 a1)
{
  v1 = 0x6F4C657669746361;
  v2 = 0x46797469736E6564;
  if (a1 != 2)
  {
    v2 = 0x736D657469;
  }

  if (a1)
  {
    v1 = 0x4D746E65746E6F63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

BOOL sub_1E5B22064(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  v11 = a3[9];
  return sub_1E5B21F4C(*a1, *a2);
}

uint64_t sub_1E5B220A8(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_1E5B21F84(*v1);
}

uint64_t sub_1E5B220E0(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  return sub_1E5B21F5C(a1, *v2);
}

uint64_t sub_1E5B22118(uint64_t a1, void *a2)
{
  sub_1E5B3DDC4();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  v11 = a2[8];
  v12 = a2[9];
  sub_1E5B21F5C(v13, *v2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B22170(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  v8 = a1[8];
  v10 = a1[9];
  return sub_1E5B21FCC(*v1);
}

uint64_t sub_1E5B221A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = a3[7];
  v12 = a3[8];
  v13 = a3[9];
  result = sub_1E5B21DD8(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1E5B221F0@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = a1[8];
  v10 = a1[9];
  result = sub_1E5B2376C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B2222C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B22280(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GalleryState.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  v10 = *(a2 + 72);
  v33 = *(a2 + 16);
  v42 = v33;
  v43 = v4;
  v30 = v4;
  v29 = v5;
  v44 = v5;
  v45 = v6;
  v28 = v6;
  v27 = v7;
  v46 = v7;
  v47 = v8;
  v31 = v8;
  v32 = v9;
  v48 = v9;
  v49 = v10;
  v26 = v10;
  type metadata accessor for GalleryState.CodingKeys();
  swift_getWitnessTable();
  v11 = sub_1E5B3DD84();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v25 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B3DE14();
  LOBYTE(v42) = 0;
  sub_1E5B3CB44();
  sub_1E5B234E4(&qword_1ED031AD0, MEMORY[0x1E6969770]);
  v17 = v34;
  sub_1E5B3DD74();
  if (!v17)
  {
    v18 = v33;
    v19 = *(a2 + 84);
    LOBYTE(v42) = 1;
    sub_1E5B3CC74();
    sub_1E5B234E4(&qword_1ED032708, MEMORY[0x1E699D930]);
    sub_1E5B3DD74();
    v21 = *(a2 + 88);
    LOBYTE(v42) = 2;
    sub_1E5B3CBC4();
    sub_1E5B234E4(&qword_1ED032748, MEMORY[0x1E699D880]);
    sub_1E5B3DD74();
    v25[1] = *(a2 + 92);
    v50 = 3;
    v42 = v18;
    v43 = v30;
    v44 = v29;
    v45 = v28;
    v22 = v31;
    v46 = v27;
    v47 = v31;
    v48 = v32;
    v49 = v26;
    type metadata accessor for LibraryDataItem();
    swift_getWitnessTable();
    sub_1E5B3CCF4();
    v34 = v15;
    sub_1E5B3DA74();
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1E5B3D8C4();
    v40 = v22;
    v39 = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    v38 = v32;
    v15 = v34;
    v37 = swift_getWitnessTable();
    v24 = swift_getWitnessTable();
    v35 = v23;
    v36 = v24;
    swift_getWitnessTable();
    sub_1E5B3DD74();
  }

  return (*(v12 + 8))(v15, v11);
}

uint64_t GalleryState.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E5B3CB44();
  sub_1E5B234E4(&qword_1ED032750, MEMORY[0x1E6969770]);
  sub_1E5B3D964();
  v3 = *(a2 + 84);
  sub_1E5B3CC74();
  sub_1E5B234E4(&qword_1ED032758, MEMORY[0x1E699D930]);
  sub_1E5B3D964();
  v4 = *(a2 + 88);
  sub_1E5B3CBC4();
  sub_1E5B234E4(&qword_1ED032760, MEMORY[0x1E699D880]);
  sub_1E5B3D964();
  v5 = *(a2 + 92);
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 64);
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  sub_1E5B3CCF4();
  sub_1E5B3DA74();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E5B3D8C4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1E5B3D8B4();
}

uint64_t GalleryState.hashValue.getter(uint64_t a1)
{
  sub_1E5B3DDC4();
  GalleryState.hash(into:)(v3, a1);
  return sub_1E5B3DDF4();
}

uint64_t GalleryState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v79 = a7;
  v81 = a1;
  v60 = a9;
  v77 = a10;
  v88 = a2;
  v89 = a3;
  v90 = a4;
  v91 = a5;
  v92 = a6;
  v93 = a7;
  v94 = a8;
  v95 = a10;
  v80 = a8;
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  v16 = sub_1E5B3CCF4();
  v17 = sub_1E5B3DA74();
  v61 = v16;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v62 = v17;
  v64 = sub_1E5B3D8C4();
  v59 = *(v64 - 8);
  v18 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v59 - v19;
  v71 = sub_1E5B3CBC4();
  v70 = *(v71 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1E5B3CC74();
  v65 = *(v66 - 8);
  v22 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1E5B3CB44();
  v67 = *(v74 - 8);
  v24 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = a2;
  v89 = a3;
  v26 = a3;
  v27 = a4;
  v90 = a4;
  v91 = a5;
  v28 = a5;
  v29 = a6;
  v30 = v79;
  v92 = a6;
  v93 = v79;
  v94 = a8;
  v31 = v77;
  v95 = v77;
  type metadata accessor for GalleryState.CodingKeys();
  v76 = swift_getWitnessTable();
  v73 = sub_1E5B3DD14();
  v72 = *(v73 - 8);
  v32 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v73);
  v34 = &v59 - v33;
  v88 = a2;
  v89 = v26;
  v90 = v27;
  v91 = v28;
  v92 = v29;
  v93 = v30;
  v35 = v81;
  v94 = v80;
  v95 = v31;
  v36 = type metadata accessor for GalleryState();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v59 - v39;
  v41 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  v77 = v34;
  v42 = v78;
  sub_1E5B3DE04();
  if (v42)
  {
    return __swift_destroy_boxed_opaque_existential_1(v81);
  }

  v43 = v68;
  v44 = v69;
  v76 = v37;
  v78 = v40;
  v45 = v70;
  v46 = v71;
  LOBYTE(v88) = 0;
  sub_1E5B234E4(&qword_1ED031AF8, MEMORY[0x1E6969770]);
  v47 = v74;
  v48 = v73;
  sub_1E5B3DCF4();
  (*(v67 + 32))(v78, v75, v47);
  LOBYTE(v88) = 1;
  sub_1E5B234E4(&qword_1ED032718, MEMORY[0x1E699D930]);
  v49 = v43;
  v50 = v66;
  sub_1E5B3DCF4();
  v75 = v36;
  (*(v65 + 32))(&v78[*(v36 + 84)], v49, v50);
  LOBYTE(v88) = 2;
  sub_1E5B234E4(qword_1ED032768, MEMORY[0x1E699D880]);
  sub_1E5B3DCF4();
  (*(v45 + 32))(&v78[*(v75 + 22)], v44, v46);
  LOBYTE(v88) = 3;
  v87 = v79;
  v86 = swift_getWitnessTable();
  v51 = swift_getWitnessTable();
  v85 = v80;
  v84 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v82 = v51;
  v83 = v52;
  v53 = v64;
  swift_getWitnessTable();
  v54 = v63;
  sub_1E5B3DCF4();
  (*(v72 + 8))(v77, v48);
  v55 = v75;
  v56 = v78;
  (*(v59 + 32))(&v78[*(v75 + 23)], v54, v53);
  v57 = v76;
  (*(v76 + 16))(v60, v56, v55);
  __swift_destroy_boxed_opaque_existential_1(v81);
  return (*(v57 + 8))(v56, v55);
}

uint64_t sub_1E5B234A0(uint64_t a1, uint64_t a2)
{
  sub_1E5B3DDC4();
  GalleryState.hash(into:)(v4, a2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B234E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B23548(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  v7 = a3[6];
  v8 = a3[7];
  v10 = a3[8];
  v11 = a3[9];
  return static GalleryState.== infix(_:_:)(a1, a2) & 1;
}

uint64_t sub_1E5B23584(_OWORD *a1)
{
  result = sub_1E5B3CB44();
  if (v3 <= 0x3F)
  {
    result = sub_1E5B3CC74();
    if (v4 <= 0x3F)
    {
      result = sub_1E5B3CBC4();
      if (v5 <= 0x3F)
      {
        v7 = a1[1];
        v8 = a1[2];
        v9 = a1[3];
        v10 = a1[4];
        type metadata accessor for LibraryDataItem();
        swift_getWitnessTable();
        sub_1E5B3CCF4();
        sub_1E5B3DA74();
        swift_getWitnessTable();
        swift_getWitnessTable();
        result = sub_1E5B3D8C4();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t static GalleryAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v10 = type metadata accessor for GalleryAction();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(*(TupleTypeMetadata2 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v15 = v21 - v14;
  v16 = *(v13 + 56);
  v17 = *(*(v10 - 8) + 16);
  v17(v21 - v14, a1, v10);
  v17(&v15[v16], a2, v10);
  v18 = *(v6 + 8);
  LOBYTE(v6) = sub_1E5B3D974();
  v19 = *(*(a3 - 8) + 8);
  v19(&v15[v16], a3);
  v19(v15, a3);
  return v6 & 1;
}

uint64_t sub_1E5B238F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x707061546D657469 && a2 == 0xEA00000000006465)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5B3DDA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5B23978(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1E5B3DDA4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1E5B23A34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B23A88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1E5B23AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result & 1;
  return result;
}

uint64_t sub_1E5B23B34@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1E5B23B74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B23BC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t GalleryAction.encode(to:)(void *a1, void *a2)
{
  v31 = a1;
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v34 = a2[2];
  v35 = v3;
  v6 = v34;
  v24 = v34;
  v36 = v4;
  v37 = v5;
  v7 = v4;
  v26 = v4;
  v29 = type metadata accessor for GalleryAction.ItemTappedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v27 = sub_1E5B3DD84();
  v33 = *(v27 - 8);
  v8 = *(v33 + 64);
  v9 = MEMORY[0x1EEE9AC00](v27);
  v25 = &v24 - v10;
  v11 = *(a2 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v6;
  v35 = v3;
  v36 = v7;
  v37 = v5;
  type metadata accessor for GalleryAction.CodingKeys();
  swift_getWitnessTable();
  v15 = sub_1E5B3DD84();
  v28 = *(v15 - 8);
  v16 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  v19 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v20 = v24;
  v21 = v25;
  v22 = v27;
  sub_1E5B3DE14();
  (*(v11 + 16))(v14, v32, a2);
  sub_1E5B3DD24();
  sub_1E5B3DD74();
  (*(*(v20 - 8) + 8))(v14, v20);
  (*(v33 + 8))(v21, v22);
  return (*(v28 + 8))(v18, v15);
}

uint64_t GalleryAction.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, a2);
  MEMORY[0x1E6936540](0);
  v8 = *(a2 + 16);
  v9 = *(a2 + 40);
  sub_1E5B3D964();
  return (*(*(v8 - 8) + 8))(v6, v8);
}

uint64_t GalleryAction.hashValue.getter(uint64_t a1)
{
  sub_1E5B3DDC4();
  GalleryAction.hash(into:)(v3, a1);
  return sub_1E5B3DDF4();
}

uint64_t GalleryAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a6;
  *&v59 = a2;
  *(&v59 + 1) = a3;
  *&v60 = a4;
  *(&v60 + 1) = a5;
  v56 = type metadata accessor for GalleryAction();
  v47 = *(v56 - 8);
  v11 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v42 - v12;
  *&v59 = a2;
  *(&v59 + 1) = a3;
  *&v60 = a4;
  *(&v60 + 1) = a5;
  v13 = type metadata accessor for GalleryAction.ItemTappedCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1E5B3DD14();
  v49 = *(v14 - 8);
  v50 = v14;
  v15 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v42 - v16;
  *&v59 = a2;
  *(&v59 + 1) = a3;
  v51 = a3;
  *&v60 = a4;
  *(&v60 + 1) = a5;
  type metadata accessor for GalleryAction.CodingKeys();
  swift_getWitnessTable();
  v54 = sub_1E5B3DD14();
  v17 = *(v54 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v20 = &v42 - v19;
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v61;
  sub_1E5B3DE04();
  if (v22)
  {
    goto LABEL_9;
  }

  v44 = v13;
  v43 = a2;
  v45 = 0;
  v46 = v17;
  v23 = v55;
  v24 = v56;
  v61 = a1;
  v25 = v54;
  v26 = v20;
  *&v57 = sub_1E5B3DD04();
  sub_1E5B3DA74();
  swift_getWitnessTable();
  *&v59 = sub_1E5B3DBB4();
  *(&v59 + 1) = v27;
  *&v60 = v28;
  *(&v60 + 1) = v29;
  sub_1E5B3DBA4();
  swift_getWitnessTable();
  sub_1E5B3DB54();
  if ((v57 & 1) != 0 || (v42 = v59, v57 = v59, v58 = v60, (sub_1E5B3DB64() & 1) == 0))
  {
    v33 = sub_1E5B3DC04();
    swift_allocError();
    v35 = v34;
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319C0, &qword_1E5B402F0) + 48);
    *v35 = v24;
    sub_1E5B3DCA4();
    sub_1E5B3DBF4();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    (*(v46 + 8))(v20, v25);
    goto LABEL_8;
  }

  v30 = v53;
  v31 = v26;
  v32 = v45;
  sub_1E5B3DC94();
  if (v32)
  {
    (*(v46 + 8))(v26, v25);
LABEL_8:
    swift_unknownObjectRelease();
    a1 = v61;
LABEL_9:
    v41 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v37 = v23;
  v38 = v50;
  sub_1E5B3DCF4();
  v39 = v46;
  (*(v49 + 8))(v30, v38);
  (*(v39 + 8))(v31, v25);
  swift_unknownObjectRelease();
  (*(v47 + 32))(v48, v37, v24);
  v41 = v61;
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_1E5B246C8(uint64_t a1, uint64_t a2)
{
  sub_1E5B3DDC4();
  GalleryAction.hash(into:)(v4, a2);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B24738(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_1E5B248E4(_OWORD *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v6 = a1[1];
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  type metadata accessor for GalleryFeature();
  swift_getWitnessTable();
  sub_1E5B3D934();
  swift_getWitnessTable();
  return sub_1E5B3CE44();
}

uint64_t sub_1E5B249A4(uint64_t *a1)
{
  sub_1E5B29D84(a1, v3);
  type metadata accessor for LibraryDataItem();
  swift_getExtendedExistentialTypeMetadata();
  sub_1E5B3D674();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5B24A6C(_OWORD *a1)
{
  v2 = a1[1];
  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  v5 = *(a1 + 88);
  type metadata accessor for LibraryDataItem();
  swift_getExtendedExistentialTypeMetadata();
  sub_1E5B3D6A4();
  return sub_1E5B3D684();
}

uint64_t sub_1E5B24AF0(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_1E5B3CB74();
  sub_1E5B3CB64();
  return v5;
}

uint64_t sub_1E5B24B48()
{
  type metadata accessor for LibraryDataItem();
  swift_getFunctionTypeMetadata1();
  return sub_1E5B3CB54();
}

uint64_t sub_1E5B24BC4(uint64_t a1)
{
  v1 = *(a1 + 140);
  v2 = *(a1 + 48);
  v4 = *(a1 + 16);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  v7 = *(a1 + 88);
  type metadata accessor for LibraryDataItem();
  swift_getFunctionTypeMetadata1();
  sub_1E5B3CB74();
  sub_1E5B3CB64();
  return v4;
}

uint64_t GalleryGridView.init(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31[1] = a10;
  v31[2] = a14;
  v31[3] = a15;
  v31[4] = a16;
  v31[5] = a17;
  v31[6] = a18;
  v31[7] = a19;
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  v22 = sub_1E5B3CCD4();

  v31[0] = sub_1E5B3CCC4();
  WitnessTable = swift_getWitnessTable();
  GalleryGridView.init<A>(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)(a1, a2, v31, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, v22, a14, a15, a16, a17, a18, a20, a21, a22, WitnessTable);
}

uint64_t GalleryGridView.init<A>(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23 = swift_allocObject();
  v23[2] = a9;
  v23[3] = a10;
  v23[4] = a11;
  v23[5] = a12;
  v23[6] = a13;
  v23[7] = a14;
  v23[8] = a15;
  v23[9] = a16;
  v23[10] = a17;
  v23[11] = a18;
  v23[12] = a19;
  v23[13] = a20;
  v23[14] = a21;
  v23[15] = a22;
  v23[16] = a23;
  v23[17] = a1;
  v23[18] = a2;
  swift_getAssociatedTypeWitness();
  v24 = *(swift_getAssociatedConformanceWitness() + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = a9;
  v44 = a10;
  v45 = a15;
  v48 = a18;
  v49 = a19;
  v50 = AssociatedConformanceWitness;
  type metadata accessor for GalleryFeature();
  swift_getWitnessTable();
  sub_1E5B3D934();
  swift_getWitnessTable();
  *a7 = sub_1E5B3CE34();
  *(a7 + 8) = v26;
  *(a7 + 16) = v27 & 1;
  v46 = a14;
  v47 = a23;
  v28 = __swift_allocate_boxed_opaque_existential_1(&v43);
  v40 = *(a14 - 8);
  (*(v40 + 16))(v28, a3, a14);
  sub_1E5B249A4(&v43);
  v43 = a9;
  v44 = a10;
  v45 = a11;
  v46 = a12;
  v47 = a13;
  v48 = a15;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v53 = AssociatedConformanceWitness;
  v54 = a20;
  v55 = a21;
  v56 = a22;
  v29 = type metadata accessor for GalleryGridView();
  v30 = v29[34];

  v43 = a4;
  v44 = a5;
  swift_getFunctionTypeMetadata1();
  v31 = sub_1E5B3CB54();
  v32 = a7 + v29[36];
  a6(v31);
  v33 = v29[35];
  sub_1E5B24B48();

  return (*(v40 + 8))(a3, a14);
}

uint64_t sub_1E5B25180()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);
  return v1();
}

uint64_t sub_1E5B251A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v4 = sub_1E5B260B8();
  v53 = v24;
  v54 = MEMORY[0x1E6981148];
  v55 = *(a1 + 40);
  v5 = v55;
  v56 = v4;
  v6 = *(a1 + 112);
  v57 = MEMORY[0x1E6981138];
  v58 = v6;
  v7 = sub_1E5B3D1B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - v13);
  v15 = *(a1 + 32);
  v16 = *(a1 + 96);
  v48 = *(a1 + 80);
  v49 = v16;
  v17 = *(a1 + 120);
  v50 = v6;
  v51 = v17;
  v52 = v2;
  *&v18 = v15;
  *(&v18 + 1) = v5;
  v44 = *(a1 + 16);
  v45 = v18;
  v39 = v48;
  v40 = v16;
  v41 = v6;
  v42 = v17;
  v43 = v2;
  v26 = v44;
  v27 = v15;
  v28 = v5;
  v19 = *(a1 + 64);
  v46 = *(a1 + 48);
  v47 = v19;
  v35 = v44;
  v36 = v18;
  v37 = v46;
  v38 = v19;
  *&v20 = v6;
  *(&v20 + 1) = v17;
  v32 = v16;
  v33 = v20;
  v29 = v46;
  v30 = v19;
  v31 = v48;
  v34 = v2;
  sub_1E5B3D1A4();
  WitnessTable = swift_getWitnessTable();
  sub_1E5AF144C(v14, v11, v7, WitnessTable);
  v22 = *(v8 + 8);
  v22(v11, v7);
  sub_1E5AF144C(v25, v14, v7, WitnessTable);
  return (v22)(v14, v7);
}

uint64_t sub_1E5B254F4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for GalleryGridView();
  sub_1E5B248E4(v2);
  swift_getKeyPath();
  sub_1E5B3D8F4();

  result = sub_1E5B3D644();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B256B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(char *, uint64_t))
{
  v49 = a8;
  v48 = a7;
  v39 = a4;
  v38 = a3;
  v37 = a2;
  v41 = a1;
  v44 = a9;
  v46 = a17;
  v47 = a16;
  v35[1] = a12;
  v40 = a11;
  v36 = a10;
  v45 = sub_1E5B3CB44();
  v43 = *(v45 - 8);
  v22 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v69 = v48;
  v70 = v49;
  v71 = a10;
  v72 = a11;
  v73 = a12;
  v74 = a13;
  v75 = a14;
  v76 = a15;
  v77 = a16;
  v24 = type metadata accessor for GalleryGridView();
  sub_1E5B248E4(v24);
  swift_getKeyPath();
  sub_1E5B3D8F4();

  v25 = v64;
  sub_1E5B248E4(v24);
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v53 = a5;
  v54 = a6;
  v55 = v48;
  v56 = v49;
  v57 = v36;
  v58 = v40;
  v59 = a12;
  v60 = a13;
  v61 = a14;
  v62 = a15;
  v63 = v47;
  swift_getKeyPath();
  v26 = v42;
  sub_1E5B3D904();

  v27 = v46(v26, v25);
  v29 = v28;
  (*(v43 + 8))(v26, v45);
  v64 = v27;
  v65 = v29;
  sub_1E5B04428();
  result = sub_1E5B3D394();
  v31 = v44;
  *v44 = result;
  v31[1] = v32;
  *(v31 + 16) = v33 & 1;
  v31[3] = v34;
  return result;
}

uint64_t sub_1E5B259DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  *&v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[0] = v17;
  v29[1] = v18;
  v29[2] = v19;
  v29[3] = v20;
  v29[4] = v21;
  v29[5] = v22;
  v29[6] = v23;
  v30 = v24;
  v31 = v14;
  v32 = v25;
  v33 = a9;
  v34 = v26;
  v27 = type metadata accessor for GalleryGridView();
  sub_1E5AF144C(v16, a1 + *(v27 + 144), a2, a9);
  sub_1E5AF144C(a3, v16, a2, a9);
  return (*(v12 + 8))(v16, a2);
}

uint64_t GalleryGridView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v43 = *(a1 + 40);
  v4 = sub_1E5B260B8();
  v44 = *(a1 + 112);
  *&v73 = v3;
  *(&v73 + 1) = MEMORY[0x1E6981148];
  *&v74 = v43;
  *(&v74 + 1) = v4;
  v75 = MEMORY[0x1E6981138];
  v76 = v44;
  sub_1E5B3D1B4();
  v5 = *(a1 + 72);
  v41 = *(a1 + 80);
  v42 = v5;
  v6 = *(a1 + 88);
  v39 = *(a1 + 96);
  v40 = v6;
  v75 = v5;
  v76 = v41;
  v77 = v6;
  v78 = v39;
  v7 = *(a1 + 56);
  v37 = *(a1 + 16);
  v38 = v7;
  v74 = v7;
  v73 = v37;
  type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  v36 = *(a1 + 48);
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  sub_1E5B3D164();
  swift_getWitnessTable();
  v8 = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v9 = *(a1 + 120);
  v71 = v8;
  v72 = v9;
  v33 = v9;
  v34 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v70 = sub_1E5B2611C();
  v35 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  sub_1E5B3CC34();
  sub_1E5B3CD44();
  v10 = swift_getWitnessTable();
  v11 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8]);
  swift_getOpaqueTypeMetadata2();
  *&v74 = v10;
  *(&v74 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  sub_1E5B3D824();
  swift_getWitnessTable();
  v12 = sub_1E5B3CDF4();
  v31 = swift_getWitnessTable();
  *&v73 = v12;
  *(&v73 + 1) = v31;
  v30[0] = MEMORY[0x1E697D298];
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CF34();
  v30[1] = sub_1E5B3CF34();
  v32 = sub_1E5B3D164();
  sub_1E5B3D164();
  v13 = sub_1E5B3D624();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v30 - v19);
  v47 = v37;
  v48 = *(a1 + 32);
  v49 = v43;
  v50 = v36;
  v51 = v38;
  v52 = v42;
  v53 = v41;
  v54 = v40;
  v55 = v39;
  v56 = *(a1 + 104);
  v57 = v44;
  v58 = v33;
  v59 = v45;
  v21 = swift_getWitnessTable();
  *&v73 = v12;
  *(&v73 + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = MEMORY[0x1E697E5D8];
  v67 = OpaqueTypeConformance2;
  v68 = MEMORY[0x1E697E5D8];
  v65 = swift_getWitnessTable();
  v66 = v23;
  v24 = swift_getWitnessTable();
  v63 = v21;
  v64 = v24;
  v25 = swift_getWitnessTable();
  v61 = v21;
  v62 = v25;
  v26 = swift_getWitnessTable();
  sub_1E5B3D614();
  v60 = v26;
  v27 = swift_getWitnessTable();
  sub_1E5AF144C(v20, v17, v13, v27);
  v28 = *(v14 + 8);
  v28(v17, v13);
  sub_1E5AF144C(v46, v20, v13, v27);
  return (v28)(v20, v13);
}

unint64_t sub_1E5B260B8()
{
  result = qword_1ED031D48;
  if (!qword_1ED031D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED031D48);
  }

  return result;
}

unint64_t sub_1E5B2611C()
{
  result = qword_1ED032A00;
  if (!qword_1ED032A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
    sub_1E5B3CCA4();
    sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032A00);
  }

  return result;
}

uint64_t sub_1E5B26200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(void, void))
{
  v210 = a8;
  v211 = a4;
  v215 = a7;
  v213 = a5;
  v224 = a3;
  v222 = a2;
  v217 = a1;
  v208 = a9;
  v226 = a16;
  v214 = a15;
  v212 = a14;
  v225 = a13;
  v223 = a12;
  v221 = a11;
  v220 = a10;
  v193 = sub_1E5B3CC74();
  v188 = *(v193 - 8);
  v21 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v187 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E5B3D184();
  v185 = *(v23 - 8);
  v186 = v23;
  v24 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v184 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = a2;
  v270 = a3;
  v271 = a7;
  v272 = a8;
  v273 = a10;
  v274 = a11;
  v275 = a12;
  v276 = a13;
  v26 = type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v27 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable();
  v286 = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v287 = v226;
  v29 = swift_getWitnessTable();
  v30 = sub_1E5B2611C();
  v284 = v29;
  v285 = v30;
  v31 = swift_getWitnessTable();
  v269 = v26;
  v270 = v27;
  v271 = WitnessTable;
  v272 = v31;
  v32 = sub_1E5B3CC34();
  v33 = sub_1E5B3CD44();
  v34 = swift_getWitnessTable();
  v35 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8]);
  v269 = v32;
  v270 = v33;
  v271 = v34;
  v272 = v35;
  swift_getOpaqueTypeMetadata2();
  v269 = v32;
  v270 = v33;
  v271 = v34;
  v272 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = sub_1E5B3D824();
  v173 = swift_getWitnessTable();
  v174 = v36;
  v37 = sub_1E5B3CDF4();
  v175 = *(v37 - 8);
  v38 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v191 = &v171 - v39;
  v40 = swift_getWitnessTable();
  v216 = v37;
  v269 = v37;
  v270 = v40;
  v218 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v177 = *(OpaqueTypeMetadata2 - 8);
  v42 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v176 = &v171 - v43;
  v178 = v44;
  v45 = sub_1E5B3CF34();
  v180 = *(v45 - 8);
  v46 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v192 = &v171 - v47;
  v207 = v48;
  v49 = sub_1E5B3CF34();
  v183 = *(v49 - 8);
  v50 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v182 = &v171 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v179 = &v171 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v181 = (&v171 - v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v57 = sub_1E5B260B8();
  v269 = v56;
  v270 = MEMORY[0x1E6981148];
  v59 = v213;
  v58 = v214;
  v271 = v213;
  v272 = v57;
  v273 = MEMORY[0x1E6981138];
  v274 = v214;
  v60 = sub_1E5B3D1B4();
  v206 = v49;
  v61 = sub_1E5B3D164();
  v190 = *(v61 - 8);
  v62 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v189 = (&v171 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v64);
  v198 = &v171 - v65;
  v197 = *(v60 - 8);
  v66 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v196 = (&v171 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v69);
  v209 = (&v171 - v70);
  sub_1E5B3CCF4();
  v71 = sub_1E5B3DA74();
  v283 = swift_getWitnessTable();
  swift_getWitnessTable();
  v194 = v71;
  v200 = sub_1E5B3D8C4();
  v172 = *(v200 - 8);
  v72 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v199 = &v171 - v73;
  v219 = v60;
  v205 = v61;
  v74 = sub_1E5B3D164();
  v203 = *(v74 - 8);
  v204 = v74;
  v75 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v202 = &v171 - v76;
  v269 = v222;
  v270 = v224;
  v78 = v210;
  v77 = v211;
  v271 = v211;
  v272 = v59;
  v79 = v59;
  v80 = v215;
  v273 = a6;
  v274 = v215;
  v275 = v210;
  v276 = v220;
  v277 = v221;
  v278 = v223;
  v81 = v226;
  v82 = v212;
  v279 = v225;
  v280 = v212;
  v281 = v58;
  v282 = v226;
  v201 = type metadata accessor for GalleryGridView();
  sub_1E5B248E4(v201);
  v227 = v222;
  v228 = v224;
  v83 = v79;
  v84 = v199;
  v229 = v77;
  v230 = v83;
  v195 = a6;
  v231 = a6;
  v232 = v80;
  v233 = v78;
  v234 = v220;
  v235 = v221;
  v236 = v223;
  v237 = v225;
  v238 = v82;
  v239 = v58;
  v240 = v81;
  swift_getKeyPath();
  sub_1E5B3D904();
  v85 = v200;

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v87 = *v84;
    v90 = v219;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v172 + 8))(v84, v85);
LABEL_13:
    v159 = v196;
    sub_1E5B251A8(v201, v196);
    v160 = v219;
    v161 = swift_getWitnessTable();
    v162 = v209;
    sub_1E5AF144C(v209, v159, v160, v161);
    v226 = *(v197 + 8);
    v226(v159, v160);
    sub_1E5AF144C(v159, v162, v160, v161);
    v269 = v216;
    v270 = v218;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v158 = MEMORY[0x1E697E5D8];
    v246 = MEMORY[0x1E697E5D8];
    v243 = swift_getWitnessTable();
    v244 = v158;
    v163 = swift_getWitnessTable();
    v241 = v161;
    v242 = v163;
    swift_getWitnessTable();
    v155 = v202;
    sub_1E5AF7058(v159, v160);
    v164 = v226;
    v226(v159, v160);
    v164(v209, v160);
    v148 = v216;
    goto LABEL_14;
  }

  v87 = *v84;
  v88 = sub_1E5B3CAF4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v88 - 8) + 8))(&v84[*(TupleTypeMetadata2 + 48)], v88);
  v90 = v219;
LABEL_6:
  v269 = v87;
  swift_getWitnessTable();
  v91 = sub_1E5B3DB64();
  v92 = v218;
  if (v91)
  {

    v93 = v196;
    sub_1E5B251A8(v201, v196);
    v94 = swift_getWitnessTable();
    v95 = v209;
    sub_1E5AF144C(v209, v93, v90, v94);
    v96 = *(v197 + 8);
    v96(v93, v90);
    sub_1E5AF144C(v93, v95, v90, v94);
    v269 = v216;
    v270 = v92;
    v249 = swift_getOpaqueTypeConformance2();
    v97 = MEMORY[0x1E697E5D8];
    v250 = MEMORY[0x1E697E5D8];
    v98 = v92;
    v247 = swift_getWitnessTable();
    v248 = v97;
    swift_getWitnessTable();
    sub_1E5AF7058(v93, v219);
    v99 = v219;
    v96(v93, v219);
    v96(v95, v99);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v91);
    v100 = v224;
    *(&v171 - 16) = v222;
    *(&v171 - 15) = v100;
    v101 = v213;
    *(&v171 - 14) = v211;
    *(&v171 - 13) = v101;
    v102 = v215;
    *(&v171 - 12) = v195;
    *(&v171 - 11) = v102;
    v104 = v220;
    v103 = v221;
    *(&v171 - 10) = v210;
    *(&v171 - 9) = v104;
    *(&v171 - 8) = v103;
    v105 = v225;
    *(&v171 - 7) = v223;
    *(&v171 - 6) = v105;
    v106 = v214;
    *(&v171 - 5) = v212;
    *(&v171 - 4) = v106;
    v107 = v217;
    *(&v171 - 3) = v226;
    *(&v171 - 2) = v107;
    *(&v171 - 1) = v87;
    sub_1E5B3D284();
    sub_1E5AF0C6C();

    v108 = v184;
    sub_1E5B3D174();
    v109 = sub_1E5B3D284();
    sub_1E5B3D274();
    sub_1E5B3D274();
    if (sub_1E5B3D274() != v109)
    {
      sub_1E5B3D274();
    }

    v110 = v176;
    v111 = v216;
    v112 = v191;
    sub_1E5B3D4E4();
    (*(v185 + 8))(v108, v186);
    (*(v175 + 8))(v112, v111);
    sub_1E5B3D2D4();
    v113 = v201;
    v114 = sub_1E5B248E4(v201);
    MEMORY[0x1EEE9AC00](v114);
    v115 = v224;
    *(&v171 - 14) = v222;
    *(&v171 - 13) = v115;
    v116 = v210;
    v117 = v213;
    *(&v171 - 12) = v211;
    *(&v171 - 11) = v117;
    v118 = v215;
    *(&v171 - 10) = v195;
    *(&v171 - 9) = v118;
    v119 = v220;
    v120 = v221;
    *(&v171 - 8) = v116;
    *(&v171 - 7) = v119;
    v121 = v223;
    *(&v171 - 6) = v120;
    *(&v171 - 5) = v121;
    v122 = v212;
    *(&v171 - 4) = v225;
    *(&v171 - 3) = v122;
    v123 = v226;
    *(&v171 - 2) = v214;
    *(&v171 - 1) = v123;
    swift_getKeyPath();
    v124 = v187;
    sub_1E5B3D904();

    sub_1E5B3CC54();
    v209 = *(v188 + 8);
    (v209)(v124, v193);
    v269 = v111;
    v270 = v218;
    v125 = swift_getOpaqueTypeConformance2();
    v126 = v178;
    sub_1E5B3D534();
    (*(v177 + 8))(v110, v126);
    LODWORD(v200) = sub_1E5B3D2F4();
    v127 = sub_1E5B248E4(v113);
    MEMORY[0x1EEE9AC00](v127);
    v128 = v224;
    *(&v171 - 14) = v222;
    *(&v171 - 13) = v128;
    v129 = v213;
    *(&v171 - 12) = v211;
    *(&v171 - 11) = v129;
    v130 = v215;
    *(&v171 - 10) = v195;
    *(&v171 - 9) = v130;
    v131 = v220;
    v132 = v221;
    *(&v171 - 8) = v116;
    *(&v171 - 7) = v131;
    v133 = v223;
    *(&v171 - 6) = v132;
    *(&v171 - 5) = v133;
    v134 = v212;
    *(&v171 - 4) = v225;
    *(&v171 - 3) = v134;
    v135 = v226;
    *(&v171 - 2) = v214;
    *(&v171 - 1) = v135;
    swift_getKeyPath();
    sub_1E5B3D904();

    sub_1E5B3CC64();
    (v209)(v124, v193);
    v267 = v125;
    v97 = MEMORY[0x1E697E5D8];
    v268 = MEMORY[0x1E697E5D8];
    v136 = v207;
    v137 = swift_getWitnessTable();
    v138 = v179;
    v139 = v192;
    sub_1E5B3D534();
    (*(v180 + 8))(v139, v136);
    v265 = v137;
    v266 = v97;
    v140 = v206;
    v141 = swift_getWitnessTable();
    v142 = v181;
    sub_1E5AF144C(v181, v138, v140, v141);
    v143 = *(v183 + 8);
    v143(v138, v140);
    v144 = v182;
    sub_1E5AF144C(v182, v142, v140, v141);
    v145 = v219;
    swift_getWitnessTable();
    sub_1E5AF7150(v144, v145, v140);
    v143(v144, v140);
    v146 = v142;
    v98 = v218;
    v143(v146, v140);
  }

  v147 = swift_getWitnessTable();
  v226 = v147;
  v148 = v216;
  v269 = v216;
  v270 = v98;
  v263 = swift_getOpaqueTypeConformance2();
  v264 = v97;
  v261 = swift_getWitnessTable();
  v262 = v97;
  v149 = swift_getWitnessTable();
  v259 = v147;
  v260 = v149;
  v150 = v205;
  v151 = swift_getWitnessTable();
  v152 = v189;
  v153 = v198;
  sub_1E5AF144C(v189, v198, v150, v151);
  v154 = v153;
  v155 = v202;
  sub_1E5AF7150(v152, v219, v150);
  v156 = *(v190 + 8);
  v157 = v152;
  v158 = MEMORY[0x1E697E5D8];
  v156(v157, v150);
  v156(v154, v150);
LABEL_14:
  v165 = swift_getWitnessTable();
  v269 = v148;
  v270 = v218;
  v257 = swift_getOpaqueTypeConformance2();
  v258 = v158;
  v255 = swift_getWitnessTable();
  v256 = v158;
  v166 = swift_getWitnessTable();
  v253 = v165;
  v254 = v166;
  v167 = swift_getWitnessTable();
  v251 = v165;
  v252 = v167;
  v168 = v204;
  v169 = swift_getWitnessTable();
  sub_1E5AF144C(v208, v155, v168, v169);
  return (*(v203 + 8))(v155, v168);
}

uint64_t sub_1E5B2770C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v110 = a8;
  v105 = a5;
  v106 = a6;
  v112 = a3;
  v113 = a4;
  v96 = a2;
  v97 = a9;
  v107 = a1;
  v108 = a17;
  v99 = a16;
  v102 = a15;
  v111 = a12;
  v115 = a11;
  v114 = a10;
  v21 = sub_1E5B3D194();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v95 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1E5B3CBC4();
  v109 = *(v101 - 8);
  v24 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a3;
  v131 = a4;
  v132 = a8;
  v133 = a10;
  v134 = a11;
  v135 = a12;
  v136 = a13;
  v137 = a14;
  v104 = a13;
  v26 = type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v27 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable();
  v146 = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v147 = v108;
  v29 = swift_getWitnessTable();
  v30 = sub_1E5B2611C();
  v144 = v29;
  v145 = v30;
  v31 = swift_getWitnessTable();
  v130 = v26;
  v131 = v27;
  v132 = WitnessTable;
  v133 = v31;
  v32 = sub_1E5B3CC34();
  v33 = sub_1E5B3CD44();
  v34 = swift_getWitnessTable();
  v35 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8]);
  v130 = v32;
  v131 = v33;
  v132 = v34;
  v133 = v35;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v130 = v32;
  v131 = v33;
  v132 = v34;
  v133 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = OpaqueTypeMetadata2;
  v89 = OpaqueTypeConformance2;
  v92 = sub_1E5B3D824();
  v94 = *(v92 - 8);
  v38 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v90 = &v84 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v91 = (&v84 - v41);
  v130 = v112;
  v131 = v113;
  v42 = v105;
  v43 = v106;
  v132 = v105;
  v133 = v106;
  v44 = a7;
  v45 = v110;
  v134 = a7;
  v135 = v110;
  v136 = v114;
  v137 = v115;
  v138 = v111;
  v139 = a13;
  v46 = v102;
  v140 = a14;
  v141 = v102;
  v47 = v99;
  v48 = v108;
  v142 = v99;
  v143 = v108;
  v88 = type metadata accessor for GalleryGridView();
  sub_1E5B248E4(v88);
  v116 = v112;
  v117 = v113;
  v118 = v42;
  v119 = v43;
  v103 = v44;
  v120 = v44;
  v121 = v45;
  v122 = v114;
  v123 = v115;
  v124 = v111;
  v125 = v104;
  v98 = a14;
  v126 = a14;
  v127 = v46;
  v49 = v47;
  v128 = v47;
  v129 = v48;
  swift_getKeyPath();
  v50 = v100;
  sub_1E5B3D904();

  v51 = sub_1E5B3CB94();
  v52 = *(v109 + 8);
  v109 += 8;
  result = v52(v50, v101);
  if (v51 < 0)
  {
    __break(1u);
  }

  else
  {
    v86 = &v84;
    MEMORY[0x1EEE9AC00](result);
    v55 = v112;
    v54 = v113;
    *(&v84 - 16) = v112;
    *(&v84 - 15) = v54;
    v56 = v105;
    v57 = v106;
    *(&v84 - 14) = v105;
    *(&v84 - 13) = v57;
    v58 = v102;
    v59 = v110;
    *(&v84 - 12) = v103;
    *(&v84 - 11) = v59;
    v60 = v115;
    *(&v84 - 10) = v114;
    *(&v84 - 9) = v60;
    v61 = v104;
    *(&v84 - 8) = v111;
    *(&v84 - 7) = v61;
    *(&v84 - 6) = v98;
    *(&v84 - 5) = v58;
    *(&v84 - 4) = v49;
    v62 = v108;
    *(&v84 - 3) = v108;
    v85 = v52;
    v87 = sub_1E5B28250(sub_1E5B29674, (&v84 - 18), 0, v63);
    v86 = sub_1E5B3D124();
    v64 = sub_1E5B248E4(v88);
    MEMORY[0x1EEE9AC00](v64);
    *(&v84 - 14) = v55;
    *(&v84 - 13) = v54;
    *(&v84 - 12) = v56;
    *(&v84 - 11) = v57;
    v65 = v104;
    v66 = v110;
    v67 = v111;
    *(&v84 - 10) = v103;
    *(&v84 - 9) = v66;
    v68 = v115;
    *(&v84 - 8) = v114;
    *(&v84 - 7) = v68;
    *(&v84 - 6) = v67;
    *(&v84 - 5) = v65;
    v69 = v98;
    *(&v84 - 4) = v98;
    *(&v84 - 3) = v58;
    swift_getKeyPath();
    v70 = v100;
    sub_1E5B3D904();

    sub_1E5B3CBB4();
    v71 = v85(v70, v101);
    MEMORY[0x1EEE9AC00](v71);
    v72 = v113;
    *(&v84 - 16) = v112;
    *(&v84 - 15) = v72;
    v73 = v106;
    *(&v84 - 14) = v105;
    *(&v84 - 13) = v73;
    v74 = v110;
    *(&v84 - 12) = v103;
    *(&v84 - 11) = v74;
    v75 = v115;
    *(&v84 - 10) = v114;
    *(&v84 - 9) = v75;
    *(&v84 - 8) = v67;
    *(&v84 - 7) = v65;
    *(&v84 - 6) = v69;
    *(&v84 - 5) = v58;
    *(&v84 - 4) = v99;
    *(&v84 - 3) = v62;
    v83 = v96;
    v76 = v89;
    sub_1E5B29404();
    v82 = v76;
    v77 = v90;
    sub_1E5B3D814();
    v78 = v92;
    v79 = swift_getWitnessTable();
    v80 = v91;
    sub_1E5AF144C(v91, v77, v78, v79);
    v81 = *(v94 + 8);
    v81(v77, v78);
    sub_1E5AF144C(v97, v80, v78, v79);
    return (v81)(v80, v78);
  }

  return result;
}

uint64_t sub_1E5B27EA8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v42 = a6;
  v40 = a4;
  v38 = a3;
  v48 = a1;
  v51 = a8;
  v46 = a16;
  v53 = a15;
  v52 = a14;
  v39 = a13;
  v45 = a12;
  v44 = a11;
  v41 = a10;
  v43 = a9;
  v50 = sub_1E5B3CBC4();
  v49 = *(v50 - 8);
  v22 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E5B3D794();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v27 = xmmword_1E5B44510;
  (*(v28 + 104))(v27, *MEMORY[0x1E697D748]);
  v68 = a2;
  v69 = a3;
  v70 = a4;
  v71 = a5;
  v72 = a6;
  v73 = a7;
  v29 = a7;
  v30 = v43;
  v74 = v43;
  v75 = a10;
  v31 = v44;
  v32 = v45;
  v76 = v44;
  v77 = v45;
  v78 = a13;
  v79 = v52;
  v33 = v46;
  v80 = v53;
  v81 = v46;
  v34 = type metadata accessor for GalleryGridView();
  sub_1E5B248E4(v34);
  v54 = a2;
  v55 = v38;
  v56 = v40;
  v57 = a5;
  v58 = v42;
  v59 = v29;
  v60 = v30;
  v61 = v41;
  v62 = v31;
  v63 = v32;
  v64 = v39;
  v65 = v52;
  v66 = v53;
  v67 = v33;
  swift_getKeyPath();
  v35 = v47;
  sub_1E5B3D904();

  sub_1E5B3CBB4();
  (*(v49 + 8))(v35, v50);
  sub_1E5B3D7C4();
  return sub_1E5B3D7B4();
}

uint64_t sub_1E5B28250(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v26 = a2;
  v24 = sub_1E5B3D7A4();
  v27 = *(v24 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1E5B29B8C(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v29 = v4;
    v12 = 0;
    v11 = v31;
    v13 = v28;
    if (v28 <= a3)
    {
      v13 = a3;
    }

    v22 = v13 - a3 + 1;
    v23 = v27 + 32;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_17;
      }

      v30 = a3 + v12;
      v15 = v9;
      v16 = v29;
      v25(&v30);
      v29 = v16;
      if (v16)
      {
        goto LABEL_22;
      }

      v31 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1E5B29B8C(v17 > 1, v18 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v18;
      v9 = v15;
      (*(v27 + 32))(v19, v15, v24);
      if (v28 < a3)
      {
        goto LABEL_18;
      }

      if (v22 == ++v12)
      {
        goto LABEL_19;
      }

      if (v14 == v10)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
LABEL_22:

  __break(1u);
  return result;
}

uint64_t sub_1E5B28488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v103 = a7;
  v92 = a6;
  v90 = a5;
  v95 = a2;
  v89 = a1;
  v97 = a9;
  v98 = a17;
  v93 = a16;
  v91 = a15;
  v102 = a14;
  v101 = a13;
  v100 = a12;
  v99 = a10;
  v104 = sub_1E5B3CD44();
  v96 = *(v104 - 8);
  v23 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v94 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a3;
  v109 = a3;
  v110 = a4;
  v85 = a4;
  v111 = a5;
  v112 = a6;
  v113 = a7;
  v114 = a8;
  v87 = a8;
  v115 = a10;
  v116 = a11;
  v88 = a11;
  v117 = a12;
  v118 = a13;
  v119 = a14;
  v120 = a15;
  v121 = a16;
  v122 = a17;
  v81 = type metadata accessor for GalleryGridView();
  v83 = *(v81 - 1);
  v84 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v70 - v25;
  v109 = a3;
  v110 = a4;
  v111 = a8;
  v112 = a10;
  v113 = a11;
  v114 = a12;
  v115 = a13;
  v116 = a14;
  v26 = type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v27 = sub_1E5B3D164();
  v28 = v26;
  v78 = v26;
  WitnessTable = swift_getWitnessTable();
  v107 = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v108 = a17;
  v30 = swift_getWitnessTable();
  v31 = sub_1E5B2611C();
  v105 = v30;
  v106 = v31;
  v79 = v27;
  v77 = swift_getWitnessTable();
  v109 = v28;
  v110 = v27;
  v111 = WitnessTable;
  v112 = v77;
  v32 = sub_1E5B3CC34();
  v80 = *(v32 - 8);
  v33 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v74 = &v70 - v34;
  v35 = swift_getWitnessTable();
  v73 = v35;
  v72 = sub_1E5B2972C(&qword_1ED032A08, MEMORY[0x1E699DAD8]);
  v109 = v32;
  v110 = v104;
  v111 = v35;
  v112 = v72;
  v75 = MEMORY[0x1E699DB40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = *(OpaqueTypeMetadata2 - 8);
  v37 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v71 = (&v70 - v41);
  v42 = v81;
  v43 = v89;
  sub_1E5B24A6C(v81);
  v44 = v112;
  v70 = v113;
  v45 = __swift_project_boxed_opaque_existential_1(&v109, v112);
  v46 = *(*(v44 - 8) + 64);
  v47 = MEMORY[0x1EEE9AC00](v45);
  (*(v49 + 16))(&v70 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0), v47);
  v50 = v83;
  v51 = v82;
  (*(v83 + 16))(v82, v43, v42);
  v52 = (*(v50 + 80) + 128) & ~*(v50 + 80);
  v53 = swift_allocObject();
  v54 = v85;
  *(v53 + 2) = v86;
  *(v53 + 3) = v54;
  v55 = v92;
  *(v53 + 4) = v90;
  *(v53 + 5) = v55;
  v56 = v87;
  *(v53 + 6) = v103;
  *(v53 + 7) = v56;
  v57 = v88;
  *(v53 + 8) = v99;
  *(v53 + 9) = v57;
  v58 = v101;
  *(v53 + 10) = v100;
  *(v53 + 11) = v58;
  v59 = v91;
  *(v53 + 12) = v102;
  *(v53 + 13) = v59;
  v60 = v98;
  *(v53 + 14) = v93;
  *(v53 + 15) = v60;
  (*(v50 + 32))(&v53[v52], v51, v42);

  v61 = v74;
  sub_1E5B3CC24();
  v62 = v94;
  sub_1E5B3CD24();
  v63 = v104;
  v64 = v73;
  v65 = v72;
  sub_1E5B3D3D4();
  (*(v96 + 8))(v62, v63);
  (*(v80 + 8))(v61, v32);
  __swift_destroy_boxed_opaque_existential_1(&v109);
  v109 = v32;
  v110 = v63;
  v111 = v64;
  v112 = v65;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = v71;
  sub_1E5AF144C(v71, v39, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v68 = *(v76 + 8);
  v68(v39, OpaqueTypeMetadata2);
  sub_1E5AF144C(v97, v67, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v68)(v67, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B28CF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v77 = a5;
  v64 = a4;
  v63 = a3;
  v73 = a1;
  v74 = a8;
  v75 = a17;
  v68 = a16;
  v76 = a15;
  v67 = a14;
  v66 = a12;
  v62 = a11;
  v65 = a9;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v86 = a7;
  v87 = a9;
  v88 = a10;
  v89 = a11;
  v53 = a10;
  v90 = a12;
  v91 = a13;
  v92 = a14;
  v93 = a15;
  v94 = a16;
  v95 = a17;
  v20 = type metadata accessor for GalleryGridView();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - v23;
  v55 = &v53 - v23;
  sub_1E5B3CCA4();
  v25 = a7;
  v56 = a7;
  v71 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v69 = sub_1E5B3D164();
  v72 = *(v69 - 8);
  v26 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v61 = (&v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v70 = (&v53 - v29);
  v60 = sub_1E5B24AF0(v20);
  v59 = v30;
  v54 = v20;
  v58 = sub_1E5B24BC4(v20);
  v57 = v31;
  v32 = v21;
  (*(v21 + 16))(v24, a2, v20);
  v33 = (*(v21 + 80) + 128) & ~*(v21 + 80);
  v34 = swift_allocObject();
  v35 = v63;
  v36 = v64;
  *(v34 + 2) = v63;
  *(v34 + 3) = v36;
  *(v34 + 4) = v77;
  *(v34 + 5) = a6;
  *(v34 + 6) = v25;
  v37 = v65;
  *(v34 + 7) = v65;
  *(v34 + 8) = a10;
  v38 = v62;
  v39 = v66;
  *(v34 + 9) = v62;
  *(v34 + 10) = v39;
  *(v34 + 11) = a13;
  v40 = v67;
  v41 = v76;
  *(v34 + 12) = v67;
  *(v34 + 13) = v41;
  v42 = v75;
  *(v34 + 14) = v68;
  *(v34 + 15) = v42;
  (*(v32 + 32))(&v34[v33], v55, v54);
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v53;
  v86 = v38;
  v87 = v39;
  v88 = a13;
  v89 = v40;
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  v43 = sub_1E5B3CCF4();
  v44 = v75;
  v45 = v61;
  sub_1E5B3B498(v60, v59, v58, v57, sub_1E5B29AA0, v34, v43, v77, v61, v56, v76, v75);

  v80 = sub_1E5B2972C(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v81 = v44;
  WitnessTable = swift_getWitnessTable();
  v47 = sub_1E5B2611C();
  v78 = WitnessTable;
  v79 = v47;
  v48 = v69;
  v49 = swift_getWitnessTable();
  v50 = v70;
  sub_1E5AF144C(v70, v45, v48, v49);
  v51 = *(v72 + 8);
  v51(v45, v48);
  sub_1E5AF144C(v74, v50, v48, v49);
  return (v51)(v50, v48);
}

uint64_t sub_1E5B29250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  v29 = a8;
  v27 = a7;
  v25 = a6;
  v24 = a5;
  v30 = a2;
  v31 = a1;
  v28 = a15;
  v26 = a14;
  v32 = a4;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v17 = type metadata accessor for GalleryAction();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  v32 = a3;
  v33 = a4;
  v34 = v24;
  v35 = v25;
  v36 = v27;
  v37 = v29;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v22 = type metadata accessor for GalleryGridView();
  sub_1E5B248E4(v22);
  (*(*(a4 - 8) + 16))(v21, v31, a4);
  sub_1E5B3D914();

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1E5B29404()
{
  sub_1E5B3D194();
  sub_1E5B2972C(&qword_1ED032A10, MEMORY[0x1E697FCB0]);
  return sub_1E5B3DE44();
}

uint64_t sub_1E5B29484(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B29628@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 128);
  v14 = *(v1 + 120);
  v12 = *(v1 + 88);
  v13 = *(v1 + 104);
  v11 = *(v1 + 72);
  return sub_1E5B254F4(a1);
}

uint64_t sub_1E5B2972C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B29774@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v17 = v2[3];
  v18 = v2[2];
  v15 = v2[5];
  v16 = v2[4];
  v3 = v2[7];
  v14 = v2[6];
  v4 = v2[8];
  v5 = v2[9];
  v7 = v2[10];
  v6 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];
  v11 = v2[15];
  v12 = *(type metadata accessor for GalleryGridView() - 8);
  return sub_1E5B28CF4(a1, v2 + ((*(v12 + 80) + 128) & ~*(v12 + 80)), v18, v17, v16, v15, v14, a2, v3, v4, v5, v7, v6, v8, v9, v10, v11);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(v0 + 40);
  v19 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 16);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);
  v21 = *(v0 + 32);
  v16 = *(v0 + 96);
  v22 = *(v0 + 112);
  v5 = (type metadata accessor for GalleryGridView() - 8);
  v20 = *(*v5 + 64);
  v6 = (v0 + ((*(*v5 + 80) + 128) & ~*(*v5 + 80)));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  sub_1E5AF0DEC();
  __swift_destroy_boxed_opaque_existential_1(v6 + 3);
  v10 = v6[8];

  v11 = v5[36];
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5B3CB74();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = v5[37];
  type metadata accessor for LibraryDataItem();
  swift_getFunctionTypeMetadata1();
  v14 = sub_1E5B3CB74();
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  (*(*(v1 - 8) + 8))(v6 + v5[38], v1);
  return swift_deallocObject();
}

uint64_t sub_1E5B29AA0(uint64_t a1)
{
  v2 = v1[2];
  v18 = v1[3];
  v16 = v1[5];
  v17 = v1[4];
  v14 = v1[7];
  v15 = v1[6];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = v1[15];
  v11 = *(type metadata accessor for GalleryGridView() - 8);
  *(&v13 + 1) = v9;
  *&v13 = v8;
  return sub_1E5B29250(a1, v1 + ((*(v11 + 80) + 128) & ~*(v11 + 80)), v2, v18, v17, v16, v15, v14, v3, v4, v5, v6, v7, v13, v10);
}

size_t sub_1E5B29B8C(size_t a1, int64_t a2, char a3)
{
  result = sub_1E5B29BAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1E5B29BAC(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032A18, &qword_1E5B44648);
  v10 = *(sub_1E5B3D7A4() - 8);
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
  v15 = *(sub_1E5B3D7A4() - 8);
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

uint64_t sub_1E5B29D84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_1E5B29DE8(_OWORD *a1)
{
  v2 = sub_1E5B3CBC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5B248E4(a1);
  v7 = a1[2];
  v13[0] = a1[1];
  v13[1] = v7;
  v8 = a1[4];
  v13[2] = a1[3];
  v13[3] = v8;
  v9 = a1[6];
  v13[4] = a1[5];
  v13[5] = v9;
  v13[6] = a1[7];
  swift_getKeyPath();
  sub_1E5B3D904();

  sub_1E5B3CBB4();
  v11 = v10;
  (*(v3 + 8))(v6, v2);
  return v11;
}

uint64_t GalleryView.init(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, void (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v31[1] = a10;
  v31[2] = a14;
  v31[3] = a15;
  v31[4] = a16;
  v31[5] = a17;
  v31[6] = a18;
  v31[7] = a19;
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  v22 = sub_1E5B3CCD4();

  v31[0] = sub_1E5B3CCC4();
  WitnessTable = swift_getWitnessTable();
  GalleryView.init<A>(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)(a1, a2, v31, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, v22, a14, a15, a16, a17, a18, a20, a21, a22, WitnessTable);
}

uint64_t GalleryView.init<A>(store:itemResolver:artworkViewBuilder:contentUnavailableActionViewBuilder:contextMenuBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t)@<X5>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23 = swift_allocObject();
  v23[2] = a9;
  v23[3] = a10;
  v23[4] = a11;
  v23[5] = a12;
  v23[6] = a13;
  v23[7] = a14;
  v23[8] = a15;
  v23[9] = a16;
  v23[10] = a17;
  v23[11] = a18;
  v23[12] = a19;
  v23[13] = a20;
  v23[14] = a21;
  v23[15] = a22;
  v23[16] = a23;
  v23[17] = a1;
  v23[18] = a2;
  swift_getAssociatedTypeWitness();
  v24 = *(swift_getAssociatedConformanceWitness() + 32);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v43 = a9;
  v44 = a10;
  v45 = a15;
  v48 = a18;
  v49 = a19;
  v50 = AssociatedConformanceWitness;
  type metadata accessor for GalleryFeature();
  swift_getWitnessTable();
  sub_1E5B3D934();
  swift_getWitnessTable();
  *a7 = sub_1E5B3CE34();
  *(a7 + 8) = v26;
  *(a7 + 16) = v27 & 1;
  v46 = a14;
  v47 = a23;
  v28 = __swift_allocate_boxed_opaque_existential_1(&v43);
  v40 = *(a14 - 8);
  (*(v40 + 16))(v28, a3, a14);
  sub_1E5B249A4(&v43);
  v43 = a9;
  v44 = a10;
  v45 = a11;
  v46 = a12;
  v47 = a13;
  v48 = a15;
  v49 = a16;
  v50 = a17;
  v51 = a18;
  v52 = a19;
  v53 = AssociatedConformanceWitness;
  v54 = a20;
  v55 = a21;
  v56 = a22;
  v29 = type metadata accessor for GalleryView();
  v30 = v29[34];

  v43 = a4;
  v44 = a5;
  swift_getFunctionTypeMetadata1();
  v31 = sub_1E5B3CB54();
  v32 = a7 + v29[36];
  a6(v31);
  v33 = v29[35];
  sub_1E5B24B48();

  return (*(v40 + 8))(a3, a14);
}

uint64_t sub_1E5B2A454@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v25 = a2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v4 = sub_1E5B260B8();
  v53 = v24;
  v54 = MEMORY[0x1E6981148];
  v55 = *(a1 + 40);
  v5 = v55;
  v56 = v4;
  v6 = *(a1 + 112);
  v57 = MEMORY[0x1E6981138];
  v58 = v6;
  v7 = sub_1E5B3D1B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v24 - v13);
  v15 = *(a1 + 32);
  v16 = *(a1 + 96);
  v48 = *(a1 + 80);
  v49 = v16;
  v17 = *(a1 + 120);
  v50 = v6;
  v51 = v17;
  v52 = v2;
  *&v18 = v15;
  *(&v18 + 1) = v5;
  v44 = *(a1 + 16);
  v45 = v18;
  v39 = v48;
  v40 = v16;
  v41 = v6;
  v42 = v17;
  v43 = v2;
  v26 = v44;
  v27 = v15;
  v28 = v5;
  v19 = *(a1 + 64);
  v46 = *(a1 + 48);
  v47 = v19;
  v35 = v44;
  v36 = v18;
  v37 = v46;
  v38 = v19;
  *&v20 = v6;
  *(&v20 + 1) = v17;
  v32 = v16;
  v33 = v20;
  v29 = v46;
  v30 = v19;
  v31 = v48;
  v34 = v2;
  sub_1E5B3D1A4();
  WitnessTable = swift_getWitnessTable();
  sub_1E5AF144C(v14, v11, v7, WitnessTable);
  v22 = *(v8 + 8);
  v22(v11, v7);
  sub_1E5AF144C(v25, v14, v7, WitnessTable);
  return (v22)(v14, v7);
}

uint64_t sub_1E5B2A7A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for GalleryView();
  sub_1E5B248E4(v2);
  swift_getKeyPath();
  sub_1E5B3D8F4();

  result = sub_1E5B3D644();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B2A95C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(char *, uint64_t))
{
  v49 = a8;
  v48 = a7;
  v39 = a4;
  v38 = a3;
  v37 = a2;
  v41 = a1;
  v44 = a9;
  v46 = a17;
  v47 = a16;
  v35[1] = a12;
  v40 = a11;
  v36 = a10;
  v45 = sub_1E5B3CB44();
  v43 = *(v45 - 8);
  v22 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  v65 = a3;
  v66 = a4;
  v67 = a5;
  v68 = a6;
  v69 = v48;
  v70 = v49;
  v71 = a10;
  v72 = a11;
  v73 = a12;
  v74 = a13;
  v75 = a14;
  v76 = a15;
  v77 = a16;
  v24 = type metadata accessor for GalleryView();
  sub_1E5B248E4(v24);
  swift_getKeyPath();
  sub_1E5B3D8F4();

  v25 = v64;
  sub_1E5B248E4(v24);
  v50 = v37;
  v51 = v38;
  v52 = v39;
  v53 = a5;
  v54 = a6;
  v55 = v48;
  v56 = v49;
  v57 = v36;
  v58 = v40;
  v59 = a12;
  v60 = a13;
  v61 = a14;
  v62 = a15;
  v63 = v47;
  swift_getKeyPath();
  v26 = v42;
  sub_1E5B3D904();

  v27 = v46(v26, v25);
  v29 = v28;
  (*(v43 + 8))(v26, v45);
  v64 = v27;
  v65 = v29;
  sub_1E5B04428();
  result = sub_1E5B3D394();
  v31 = v44;
  *v44 = result;
  v31[1] = v32;
  *(v31 + 16) = v33 & 1;
  v31[3] = v34;
  return result;
}

uint64_t sub_1E5B2AC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, void *a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  *&v14 = MEMORY[0x1EEE9AC00](a1);
  v16 = (v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29[0] = v17;
  v29[1] = v18;
  v29[2] = v19;
  v29[3] = v20;
  v29[4] = v21;
  v29[5] = v22;
  v29[6] = v23;
  v30 = v24;
  v31 = v14;
  v32 = v25;
  v33 = a9;
  v34 = v26;
  v27 = type metadata accessor for GalleryView();
  sub_1E5AF144C(v16, a1 + *(v27 + 144), a2, a9);
  sub_1E5AF144C(a3, v16, a2, a9);
  return (*(v12 + 8))(v16, a2);
}

uint64_t GalleryView.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v43 = *(a1 + 40);
  v4 = sub_1E5B260B8();
  v44 = *(a1 + 112);
  *&v73 = v3;
  *(&v73 + 1) = MEMORY[0x1E6981148];
  *&v74 = v43;
  *(&v74 + 1) = v4;
  v75 = MEMORY[0x1E6981138];
  v76 = v44;
  sub_1E5B3D1B4();
  v5 = *(a1 + 72);
  v41 = *(a1 + 80);
  v42 = v5;
  v6 = *(a1 + 88);
  v39 = *(a1 + 96);
  v40 = v6;
  v75 = v5;
  v76 = v41;
  v77 = v6;
  v78 = v39;
  v7 = *(a1 + 56);
  v37 = *(a1 + 16);
  v38 = v7;
  v74 = v7;
  v73 = v37;
  type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  v36 = *(a1 + 48);
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  sub_1E5B3D164();
  swift_getWitnessTable();
  v8 = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v9 = *(a1 + 120);
  v71 = v8;
  v72 = v9;
  v33 = v9;
  v34 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v70 = sub_1E5B2611C();
  v35 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  sub_1E5B3CC34();
  sub_1E5B3CD34();
  v10 = swift_getWitnessTable();
  v11 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68]);
  swift_getOpaqueTypeMetadata2();
  *&v74 = v10;
  *(&v74 + 1) = v11;
  swift_getOpaqueTypeConformance2();
  sub_1E5B3CDE4();
  swift_getWitnessTable();
  v12 = sub_1E5B3CDF4();
  v31 = swift_getWitnessTable();
  *&v73 = v12;
  *(&v73 + 1) = v31;
  v30[0] = MEMORY[0x1E697D298];
  swift_getOpaqueTypeMetadata2();
  sub_1E5B3CF34();
  v30[1] = sub_1E5B3CF34();
  v32 = sub_1E5B3D164();
  sub_1E5B3D164();
  v13 = sub_1E5B3D624();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (v30 - v19);
  v47 = v37;
  v48 = *(a1 + 32);
  v49 = v43;
  v50 = v36;
  v51 = v38;
  v52 = v42;
  v53 = v41;
  v54 = v40;
  v55 = v39;
  v56 = *(a1 + 104);
  v57 = v44;
  v58 = v33;
  v59 = v45;
  v21 = swift_getWitnessTable();
  *&v73 = v12;
  *(&v73 + 1) = v31;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = MEMORY[0x1E697E5D8];
  v67 = OpaqueTypeConformance2;
  v68 = MEMORY[0x1E697E5D8];
  v65 = swift_getWitnessTable();
  v66 = v23;
  v24 = swift_getWitnessTable();
  v63 = v21;
  v64 = v24;
  v25 = swift_getWitnessTable();
  v61 = v21;
  v62 = v25;
  v26 = swift_getWitnessTable();
  sub_1E5B3D614();
  v60 = v26;
  v27 = swift_getWitnessTable();
  sub_1E5AF144C(v20, v17, v13, v27);
  v28 = *(v14 + 8);
  v28(v17, v13);
  sub_1E5AF144C(v46, v20, v13, v27);
  return (v28)(v20, v13);
}

uint64_t sub_1E5B2B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void (*a16)(void, void))
{
  v210 = a8;
  v211 = a4;
  v215 = a7;
  v213 = a5;
  v224 = a3;
  v222 = a2;
  v217 = a1;
  v208 = a9;
  v226 = a16;
  v214 = a15;
  v212 = a14;
  v225 = a13;
  v223 = a12;
  v221 = a11;
  v220 = a10;
  v193 = sub_1E5B3CC74();
  v188 = *(v193 - 8);
  v21 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v187 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E5B3D184();
  v185 = *(v23 - 8);
  v186 = v23;
  v24 = *(v185 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v184 = &v171 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = a2;
  v270 = a3;
  v271 = a7;
  v272 = a8;
  v273 = a10;
  v274 = a11;
  v275 = a12;
  v276 = a13;
  v26 = type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v27 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable();
  v286 = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v287 = v226;
  v29 = swift_getWitnessTable();
  v30 = sub_1E5B2611C();
  v284 = v29;
  v285 = v30;
  v31 = swift_getWitnessTable();
  v269 = v26;
  v270 = v27;
  v271 = WitnessTable;
  v272 = v31;
  v32 = sub_1E5B3CC34();
  v33 = sub_1E5B3CD34();
  v34 = swift_getWitnessTable();
  v35 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68]);
  v269 = v32;
  v270 = v33;
  v271 = v34;
  v272 = v35;
  swift_getOpaqueTypeMetadata2();
  v269 = v32;
  v270 = v33;
  v271 = v34;
  v272 = v35;
  swift_getOpaqueTypeConformance2();
  v36 = sub_1E5B3CDE4();
  v173 = swift_getWitnessTable();
  v174 = v36;
  v37 = sub_1E5B3CDF4();
  v175 = *(v37 - 8);
  v38 = *(v175 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v191 = &v171 - v39;
  v40 = swift_getWitnessTable();
  v216 = v37;
  v269 = v37;
  v270 = v40;
  v218 = v40;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v177 = *(OpaqueTypeMetadata2 - 8);
  v42 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v176 = &v171 - v43;
  v178 = v44;
  v45 = sub_1E5B3CF34();
  v180 = *(v45 - 8);
  v46 = *(v180 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v192 = &v171 - v47;
  v207 = v48;
  v49 = sub_1E5B3CF34();
  v183 = *(v49 - 8);
  v50 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v182 = &v171 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v179 = &v171 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v181 = (&v171 - v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v57 = sub_1E5B260B8();
  v269 = v56;
  v270 = MEMORY[0x1E6981148];
  v59 = v213;
  v58 = v214;
  v271 = v213;
  v272 = v57;
  v273 = MEMORY[0x1E6981138];
  v274 = v214;
  v60 = sub_1E5B3D1B4();
  v206 = v49;
  v61 = sub_1E5B3D164();
  v190 = *(v61 - 8);
  v62 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v189 = (&v171 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v64);
  v198 = &v171 - v65;
  v197 = *(v60 - 8);
  v66 = *(v197 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v196 = (&v171 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v69);
  v209 = (&v171 - v70);
  sub_1E5B3CCF4();
  v71 = sub_1E5B3DA74();
  v283 = swift_getWitnessTable();
  swift_getWitnessTable();
  v194 = v71;
  v200 = sub_1E5B3D8C4();
  v172 = *(v200 - 8);
  v72 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v199 = &v171 - v73;
  v219 = v60;
  v205 = v61;
  v74 = sub_1E5B3D164();
  v203 = *(v74 - 8);
  v204 = v74;
  v75 = *(v203 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v202 = &v171 - v76;
  v269 = v222;
  v270 = v224;
  v78 = v210;
  v77 = v211;
  v271 = v211;
  v272 = v59;
  v79 = v59;
  v80 = v215;
  v273 = a6;
  v274 = v215;
  v275 = v210;
  v276 = v220;
  v277 = v221;
  v278 = v223;
  v81 = v226;
  v82 = v212;
  v279 = v225;
  v280 = v212;
  v281 = v58;
  v282 = v226;
  v201 = type metadata accessor for GalleryView();
  sub_1E5B248E4(v201);
  v227 = v222;
  v228 = v224;
  v83 = v79;
  v84 = v199;
  v229 = v77;
  v230 = v83;
  v195 = a6;
  v231 = a6;
  v232 = v80;
  v233 = v78;
  v234 = v220;
  v235 = v221;
  v236 = v223;
  v237 = v225;
  v238 = v82;
  v239 = v58;
  v240 = v81;
  swift_getKeyPath();
  sub_1E5B3D904();
  v85 = v200;

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v87 = *v84;
    v90 = v219;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v172 + 8))(v84, v85);
LABEL_13:
    v159 = v196;
    sub_1E5B2A454(v201, v196);
    v160 = v219;
    v161 = swift_getWitnessTable();
    v162 = v209;
    sub_1E5AF144C(v209, v159, v160, v161);
    v226 = *(v197 + 8);
    v226(v159, v160);
    sub_1E5AF144C(v159, v162, v160, v161);
    v269 = v216;
    v270 = v218;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v158 = MEMORY[0x1E697E5D8];
    v246 = MEMORY[0x1E697E5D8];
    v243 = swift_getWitnessTable();
    v244 = v158;
    v163 = swift_getWitnessTable();
    v241 = v161;
    v242 = v163;
    swift_getWitnessTable();
    v155 = v202;
    sub_1E5AF7058(v159, v160);
    v164 = v226;
    v226(v159, v160);
    v164(v209, v160);
    v148 = v216;
    goto LABEL_14;
  }

  v87 = *v84;
  v88 = sub_1E5B3CAF4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(v88 - 8) + 8))(&v84[*(TupleTypeMetadata2 + 48)], v88);
  v90 = v219;
LABEL_6:
  v269 = v87;
  swift_getWitnessTable();
  v91 = sub_1E5B3DB64();
  v92 = v218;
  if (v91)
  {

    v93 = v196;
    sub_1E5B2A454(v201, v196);
    v94 = swift_getWitnessTable();
    v95 = v209;
    sub_1E5AF144C(v209, v93, v90, v94);
    v96 = *(v197 + 8);
    v96(v93, v90);
    sub_1E5AF144C(v93, v95, v90, v94);
    v269 = v216;
    v270 = v92;
    v249 = swift_getOpaqueTypeConformance2();
    v97 = MEMORY[0x1E697E5D8];
    v250 = MEMORY[0x1E697E5D8];
    v98 = v92;
    v247 = swift_getWitnessTable();
    v248 = v97;
    swift_getWitnessTable();
    sub_1E5AF7058(v93, v219);
    v99 = v219;
    v96(v93, v219);
    v96(v95, v99);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v91);
    v100 = v224;
    *(&v171 - 16) = v222;
    *(&v171 - 15) = v100;
    v101 = v213;
    *(&v171 - 14) = v211;
    *(&v171 - 13) = v101;
    v102 = v215;
    *(&v171 - 12) = v195;
    *(&v171 - 11) = v102;
    v104 = v220;
    v103 = v221;
    *(&v171 - 10) = v210;
    *(&v171 - 9) = v104;
    *(&v171 - 8) = v103;
    v105 = v225;
    *(&v171 - 7) = v223;
    *(&v171 - 6) = v105;
    v106 = v214;
    *(&v171 - 5) = v212;
    *(&v171 - 4) = v106;
    v107 = v217;
    *(&v171 - 3) = v226;
    *(&v171 - 2) = v107;
    *(&v171 - 1) = v87;
    sub_1E5B3D284();
    sub_1E5AF0C6C();

    v108 = v184;
    sub_1E5B3D174();
    v109 = sub_1E5B3D284();
    sub_1E5B3D274();
    sub_1E5B3D274();
    if (sub_1E5B3D274() != v109)
    {
      sub_1E5B3D274();
    }

    v110 = v176;
    v111 = v216;
    v112 = v191;
    sub_1E5B3D4E4();
    (*(v185 + 8))(v108, v186);
    (*(v175 + 8))(v112, v111);
    sub_1E5B3D2D4();
    v113 = v201;
    v114 = sub_1E5B248E4(v201);
    MEMORY[0x1EEE9AC00](v114);
    v115 = v224;
    *(&v171 - 14) = v222;
    *(&v171 - 13) = v115;
    v116 = v210;
    v117 = v213;
    *(&v171 - 12) = v211;
    *(&v171 - 11) = v117;
    v118 = v215;
    *(&v171 - 10) = v195;
    *(&v171 - 9) = v118;
    v119 = v220;
    v120 = v221;
    *(&v171 - 8) = v116;
    *(&v171 - 7) = v119;
    v121 = v223;
    *(&v171 - 6) = v120;
    *(&v171 - 5) = v121;
    v122 = v212;
    *(&v171 - 4) = v225;
    *(&v171 - 3) = v122;
    v123 = v226;
    *(&v171 - 2) = v214;
    *(&v171 - 1) = v123;
    swift_getKeyPath();
    v124 = v187;
    sub_1E5B3D904();

    sub_1E5B3CC54();
    v209 = *(v188 + 8);
    (v209)(v124, v193);
    v269 = v111;
    v270 = v218;
    v125 = swift_getOpaqueTypeConformance2();
    v126 = v178;
    sub_1E5B3D534();
    (*(v177 + 8))(v110, v126);
    LODWORD(v200) = sub_1E5B3D2F4();
    v127 = sub_1E5B248E4(v113);
    MEMORY[0x1EEE9AC00](v127);
    v128 = v224;
    *(&v171 - 14) = v222;
    *(&v171 - 13) = v128;
    v129 = v213;
    *(&v171 - 12) = v211;
    *(&v171 - 11) = v129;
    v130 = v215;
    *(&v171 - 10) = v195;
    *(&v171 - 9) = v130;
    v131 = v220;
    v132 = v221;
    *(&v171 - 8) = v116;
    *(&v171 - 7) = v131;
    v133 = v223;
    *(&v171 - 6) = v132;
    *(&v171 - 5) = v133;
    v134 = v212;
    *(&v171 - 4) = v225;
    *(&v171 - 3) = v134;
    v135 = v226;
    *(&v171 - 2) = v214;
    *(&v171 - 1) = v135;
    swift_getKeyPath();
    sub_1E5B3D904();

    sub_1E5B3CC64();
    (v209)(v124, v193);
    v267 = v125;
    v97 = MEMORY[0x1E697E5D8];
    v268 = MEMORY[0x1E697E5D8];
    v136 = v207;
    v137 = swift_getWitnessTable();
    v138 = v179;
    v139 = v192;
    sub_1E5B3D534();
    (*(v180 + 8))(v139, v136);
    v265 = v137;
    v266 = v97;
    v140 = v206;
    v141 = swift_getWitnessTable();
    v142 = v181;
    sub_1E5AF144C(v181, v138, v140, v141);
    v143 = *(v183 + 8);
    v143(v138, v140);
    v144 = v182;
    sub_1E5AF144C(v182, v142, v140, v141);
    v145 = v219;
    swift_getWitnessTable();
    sub_1E5AF7150(v144, v145, v140);
    v143(v144, v140);
    v146 = v142;
    v98 = v218;
    v143(v146, v140);
  }

  v147 = swift_getWitnessTable();
  v226 = v147;
  v148 = v216;
  v269 = v216;
  v270 = v98;
  v263 = swift_getOpaqueTypeConformance2();
  v264 = v97;
  v261 = swift_getWitnessTable();
  v262 = v97;
  v149 = swift_getWitnessTable();
  v259 = v147;
  v260 = v149;
  v150 = v205;
  v151 = swift_getWitnessTable();
  v152 = v189;
  v153 = v198;
  sub_1E5AF144C(v189, v198, v150, v151);
  v154 = v153;
  v155 = v202;
  sub_1E5AF7150(v152, v219, v150);
  v156 = *(v190 + 8);
  v157 = v152;
  v158 = MEMORY[0x1E697E5D8];
  v156(v157, v150);
  v156(v154, v150);
LABEL_14:
  v165 = swift_getWitnessTable();
  v269 = v148;
  v270 = v218;
  v257 = swift_getOpaqueTypeConformance2();
  v258 = v158;
  v255 = swift_getWitnessTable();
  v256 = v158;
  v166 = swift_getWitnessTable();
  v253 = v165;
  v254 = v166;
  v167 = swift_getWitnessTable();
  v251 = v165;
  v252 = v167;
  v168 = v204;
  v169 = swift_getWitnessTable();
  sub_1E5AF144C(v208, v155, v168, v169);
  return (*(v203 + 8))(v155, v168);
}

uint64_t sub_1E5B2C870(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E5B2C8CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v87 = a5;
  v88 = a6;
  v81 = a4;
  v90 = a1;
  v91 = a3;
  v78 = a2;
  v79 = a9;
  v89 = a16;
  v86 = a17;
  v74 = a15;
  v84 = a13;
  v83 = a12;
  v82 = a11;
  v85 = a10;
  v21 = sub_1E5B3D194();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v77 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E5B3CBC4();
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v73 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = a3;
  v123 = a4;
  v124 = a8;
  v125 = a10;
  v27 = a8;
  v126 = a11;
  v127 = a12;
  v128 = a13;
  v129 = a14;
  v80 = a14;
  v28 = type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  v29 = a7;
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v30 = sub_1E5B3D164();
  WitnessTable = swift_getWitnessTable();
  v138 = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v139 = v86;
  v32 = swift_getWitnessTable();
  v33 = sub_1E5B2611C();
  v136 = v32;
  v137 = v33;
  v34 = swift_getWitnessTable();
  v122 = v28;
  v123 = v30;
  v124 = WitnessTable;
  v125 = v34;
  v35 = sub_1E5B3CC34();
  v36 = sub_1E5B3CD34();
  v37 = swift_getWitnessTable();
  v38 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68]);
  v122 = v35;
  v123 = v36;
  v124 = v37;
  v125 = v38;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v122 = v35;
  v123 = v36;
  v124 = v37;
  v125 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = sub_1E5B3CDE4();
  v40 = *(v39 - 8);
  v71 = v39;
  v72 = v40;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v67 = &v64 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v70 = (&v64 - v44);
  v45 = sub_1E5B3D124();
  v65 = v27;
  v66 = v45;
  v46 = v81;
  v122 = v91;
  v123 = v81;
  v48 = v87;
  v47 = v88;
  v124 = v87;
  v125 = v88;
  v64 = a7;
  v126 = a7;
  v127 = v27;
  v128 = v85;
  v129 = v82;
  v130 = v83;
  v131 = v84;
  v132 = a14;
  v49 = v74;
  v50 = v89;
  v133 = v74;
  v134 = v89;
  v51 = v86;
  v135 = v86;
  v52 = type metadata accessor for GalleryView();
  sub_1E5B248E4(v52);
  v108 = v91;
  v109 = v46;
  v110 = v48;
  v111 = v47;
  v112 = v29;
  v113 = v27;
  v54 = v84;
  v53 = v85;
  v55 = v82;
  v56 = v83;
  v114 = v85;
  v115 = v82;
  v116 = v83;
  v117 = v84;
  v118 = v80;
  v119 = v49;
  v120 = v50;
  v121 = v51;
  swift_getKeyPath();
  v57 = v73;
  sub_1E5B3D904();

  sub_1E5B3CBB4();
  (*(v75 + 8))(v57, v76);
  v92 = v91;
  v93 = v81;
  v94 = v87;
  v95 = v88;
  v96 = v64;
  v97 = v65;
  v98 = v53;
  v99 = v55;
  v100 = v56;
  v101 = v54;
  v102 = v80;
  v103 = v49;
  v104 = v89;
  v105 = v51;
  v106 = v90;
  v107 = v78;
  sub_1E5B2DE3C();
  v58 = v67;
  sub_1E5B3CDD4();
  v59 = v71;
  v60 = swift_getWitnessTable();
  v61 = v70;
  sub_1E5AF144C(v70, v58, v59, v60);
  v62 = *(v72 + 8);
  v62(v58, v59);
  sub_1E5AF144C(v79, v61, v59, v60);
  return (v62)(v61, v59);
}

uint64_t sub_1E5B2CEB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v101 = a7;
  v89 = a6;
  v87 = a5;
  v92 = a2;
  v100 = a1;
  v94 = a9;
  v95 = a17;
  v90 = a16;
  v88 = a15;
  v99 = a14;
  v98 = a13;
  v97 = a12;
  v96 = a11;
  v102 = sub_1E5B3CD34();
  v93 = *(v102 - 8);
  v23 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v91 = v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a3;
  v107 = a3;
  v108 = a4;
  v83 = a4;
  v109 = a5;
  v110 = a6;
  v111 = a7;
  v112 = a8;
  v85 = a8;
  v86 = a10;
  v113 = a10;
  v114 = a11;
  v115 = a12;
  v116 = a13;
  v117 = a14;
  v118 = a15;
  v119 = a16;
  v120 = a17;
  v25 = type metadata accessor for GalleryView();
  v81 = *(v25 - 1);
  v82 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v80 = v69 - v26;
  v107 = a3;
  v108 = a4;
  v109 = a8;
  v110 = a10;
  v111 = a11;
  v112 = a12;
  v113 = a13;
  v114 = a14;
  v27 = type metadata accessor for LibraryDataItem();
  sub_1E5B3CCA4();
  sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v28 = sub_1E5B3D164();
  v77 = v27;
  WitnessTable = swift_getWitnessTable();
  v105 = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v106 = a17;
  v30 = swift_getWitnessTable();
  v31 = sub_1E5B2611C();
  v103 = v30;
  v104 = v31;
  v78 = v28;
  v76 = swift_getWitnessTable();
  v107 = v27;
  v108 = v28;
  v109 = WitnessTable;
  v110 = v76;
  v32 = sub_1E5B3CC34();
  v79 = *(v32 - 8);
  v33 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v73 = v69 - v34;
  v35 = swift_getWitnessTable();
  v72 = v35;
  v71 = sub_1E5B2E0B8(&qword_1ED032A20, MEMORY[0x1E699DA68]);
  v107 = v32;
  v108 = v102;
  v109 = v35;
  v110 = v71;
  v74 = MEMORY[0x1E699DB40];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v75 = *(OpaqueTypeMetadata2 - 8);
  v37 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v39 = v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v70 = (v69 - v41);
  v42 = v100;
  sub_1E5B24A6C(v25);
  v43 = v110;
  v69[1] = v111;
  v44 = __swift_project_boxed_opaque_existential_1(&v107, v110);
  v45 = *(*(v43 - 8) + 64);
  v46 = MEMORY[0x1EEE9AC00](v44);
  (*(v48 + 16))(v69 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v46);
  v49 = v81;
  v50 = v80;
  (*(v81 + 16))(v80, v42, v25);
  v51 = (*(v49 + 80) + 128) & ~*(v49 + 80);
  v52 = swift_allocObject();
  v53 = v83;
  *(v52 + 2) = v84;
  *(v52 + 3) = v53;
  v54 = v89;
  *(v52 + 4) = v87;
  *(v52 + 5) = v54;
  v55 = v85;
  *(v52 + 6) = v101;
  *(v52 + 7) = v55;
  v56 = v96;
  *(v52 + 8) = v86;
  *(v52 + 9) = v56;
  v57 = v98;
  *(v52 + 10) = v97;
  *(v52 + 11) = v57;
  v58 = v88;
  *(v52 + 12) = v99;
  *(v52 + 13) = v58;
  v59 = v95;
  *(v52 + 14) = v90;
  *(v52 + 15) = v59;
  (*(v49 + 32))(&v52[v51], v50, v25);

  v60 = v73;
  sub_1E5B3CC24();
  sub_1E5B29DE8(v25);
  v61 = v91;
  sub_1E5B3CD14();
  v62 = v102;
  v63 = v72;
  v64 = v71;
  sub_1E5B3D3D4();
  (*(v93 + 8))(v61, v62);
  (*(v79 + 8))(v60, v32);
  __swift_destroy_boxed_opaque_existential_1(&v107);
  v107 = v32;
  v108 = v62;
  v109 = v63;
  v110 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v66 = v70;
  sub_1E5AF144C(v70, v39, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v67 = *(v75 + 8);
  v67(v39, OpaqueTypeMetadata2);
  sub_1E5AF144C(v94, v66, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  return (v67)(v66, OpaqueTypeMetadata2);
}

uint64_t sub_1E5B2D72C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v77 = a5;
  v64 = a4;
  v63 = a3;
  v73 = a1;
  v74 = a8;
  v75 = a17;
  v68 = a16;
  v76 = a15;
  v67 = a14;
  v66 = a12;
  v62 = a11;
  v65 = a9;
  v82 = a3;
  v83 = a4;
  v84 = a5;
  v85 = a6;
  v86 = a7;
  v87 = a9;
  v88 = a10;
  v89 = a11;
  v53 = a10;
  v90 = a12;
  v91 = a13;
  v92 = a14;
  v93 = a15;
  v94 = a16;
  v95 = a17;
  v20 = type metadata accessor for GalleryView();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - v23;
  v55 = &v53 - v23;
  sub_1E5B3CCA4();
  v25 = a7;
  v56 = a7;
  v71 = sub_1E5B3CF34();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0329F0, &qword_1E5B44520);
  v69 = sub_1E5B3D164();
  v72 = *(v69 - 8);
  v26 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v69);
  v61 = (&v53 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28);
  v70 = (&v53 - v29);
  v60 = sub_1E5B24AF0(v20);
  v59 = v30;
  v54 = v20;
  v58 = sub_1E5B24BC4(v20);
  v57 = v31;
  v32 = v21;
  (*(v21 + 16))(v24, a2, v20);
  v33 = (*(v21 + 80) + 128) & ~*(v21 + 80);
  v34 = swift_allocObject();
  v35 = v63;
  v36 = v64;
  *(v34 + 2) = v63;
  *(v34 + 3) = v36;
  *(v34 + 4) = v77;
  *(v34 + 5) = a6;
  *(v34 + 6) = v25;
  v37 = v65;
  *(v34 + 7) = v65;
  *(v34 + 8) = a10;
  v38 = v62;
  v39 = v66;
  *(v34 + 9) = v62;
  *(v34 + 10) = v39;
  *(v34 + 11) = a13;
  v40 = v67;
  v41 = v76;
  *(v34 + 12) = v67;
  *(v34 + 13) = v41;
  v42 = v75;
  *(v34 + 14) = v68;
  *(v34 + 15) = v42;
  (*(v32 + 32))(&v34[v33], v55, v54);
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v53;
  v86 = v38;
  v87 = v39;
  v88 = a13;
  v89 = v40;
  type metadata accessor for LibraryDataItem();
  swift_getWitnessTable();
  v43 = sub_1E5B3CCF4();
  v44 = v75;
  v45 = v61;
  sub_1E5B3B498(v60, v59, v58, v57, sub_1E5B2E42C, v34, v43, v77, v61, v56, v76, v75);

  v80 = sub_1E5B2E0B8(&qword_1ED0329F8, MEMORY[0x1E699D958]);
  v81 = v44;
  WitnessTable = swift_getWitnessTable();
  v47 = sub_1E5B2611C();
  v78 = WitnessTable;
  v79 = v47;
  v48 = v69;
  v49 = swift_getWitnessTable();
  v50 = v70;
  sub_1E5AF144C(v70, v45, v48, v49);
  v51 = *(v72 + 8);
  v51(v45, v48);
  sub_1E5AF144C(v74, v50, v48, v49);
  return (v51)(v50, v48);
}

uint64_t sub_1E5B2DC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15)
{
  v29 = a8;
  v27 = a7;
  v25 = a6;
  v24 = a5;
  v30 = a2;
  v31 = a1;
  v28 = a15;
  v26 = a14;
  v32 = a4;
  v33 = a11;
  v34 = a12;
  v35 = a13;
  v17 = type metadata accessor for GalleryAction();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v24 - v20;
  v32 = a3;
  v33 = a4;
  v34 = v24;
  v35 = v25;
  v36 = v27;
  v37 = v29;
  v38 = a9;
  v39 = a10;
  v40 = a11;
  v41 = a12;
  v42 = a13;
  v43 = a14;
  v44 = a15;
  v22 = type metadata accessor for GalleryView();
  sub_1E5B248E4(v22);
  (*(*(a4 - 8) + 16))(v21, v31, a4);
  sub_1E5B3D914();

  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_1E5B2DE3C()
{
  sub_1E5B3D194();
  sub_1E5B2E0B8(&qword_1ED032A10, MEMORY[0x1E697FCB0]);
  return sub_1E5B3DE44();
}

uint64_t sub_1E5B2E004@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 128);
  v14 = *(v1 + 120);
  v12 = *(v1 + 88);
  v13 = *(v1 + 104);
  v11 = *(v1 + 72);
  return sub_1E5B2A7A0(a1);
}

uint64_t sub_1E5B2E0B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5B2E100@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v17 = v2[3];
  v18 = v2[2];
  v15 = v2[5];
  v16 = v2[4];
  v3 = v2[7];
  v14 = v2[6];
  v4 = v2[8];
  v5 = v2[9];
  v7 = v2[10];
  v6 = v2[11];
  v8 = v2[12];
  v9 = v2[13];
  v10 = v2[14];
  v11 = v2[15];
  v12 = *(type metadata accessor for GalleryView() - 8);
  return sub_1E5B2D72C(a1, v2 + ((*(v12 + 80) + 128) & ~*(v12 + 80)), v18, v17, v16, v15, v14, a2, v3, v4, v5, v7, v6, v8, v9, v10, v11);
}

uint64_t objectdestroy_10Tm_0()
{
  v1 = *(v0 + 40);
  v19 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 16);
  v3 = *(v0 + 72);
  v2 = *(v0 + 80);
  v4 = *(v0 + 88);
  v21 = *(v0 + 32);
  v16 = *(v0 + 96);
  v22 = *(v0 + 112);
  v5 = (type metadata accessor for GalleryView() - 8);
  v20 = *(*v5 + 64);
  v6 = (v0 + ((*(*v5 + 80) + 128) & ~*(*v5 + 80)));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  sub_1E5AF0DEC();
  __swift_destroy_boxed_opaque_existential_1(v6 + 3);
  v10 = v6[8];

  v11 = v5[36];
  swift_getFunctionTypeMetadata1();
  v12 = sub_1E5B3CB74();
  (*(*(v12 - 8) + 8))(v6 + v11, v12);
  v13 = v5[37];
  type metadata accessor for LibraryDataItem();
  swift_getFunctionTypeMetadata1();
  v14 = sub_1E5B3CB74();
  (*(*(v14 - 8) + 8))(v6 + v13, v14);
  (*(*(v1 - 8) + 8))(v6 + v5[38], v1);
  return swift_deallocObject();
}

uint64_t sub_1E5B2E42C(uint64_t a1)
{
  v2 = v1[2];
  v18 = v1[3];
  v16 = v1[5];
  v17 = v1[4];
  v14 = v1[7];
  v15 = v1[6];
  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = v1[15];
  v11 = *(type metadata accessor for GalleryView() - 8);
  *(&v13 + 1) = v9;
  *&v13 = v8;
  return sub_1E5B2DC88(a1, v1 + ((*(v11 + 80) + 128) & ~*(v11 + 80)), v2, v18, v17, v16, v15, v14, v3, v4, v5, v6, v7, v13, v10);
}

__n128 GalleryFeature.init(environment:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1E5B2E524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a7;
  v25[5] = a8;
  v25[6] = a9;
  v25[7] = a10;
  v13 = type metadata accessor for GalleryFeature.TaskIdentifier();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(*(TupleTypeMetadata2 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v18 = v25 - v17;
  v20 = *(v19 + 56);
  v21 = *(*(v13 - 8) + 16);
  v21(v25 - v17, a1, v13, v16);
  (v21)(&v18[v20], a2, v13);
  v22 = *(a10 + 8);
  LOBYTE(a2) = sub_1E5B3D974();
  v23 = *(*(a4 - 8) + 8);
  v23(&v18[v20], a4);
  v23(v18, a4);
  return a2 & 1;
}

uint64_t sub_1E5B2E698(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, a2, v5);
  MEMORY[0x1E6936540](0);
  v9 = *(a2 + 24);
  v10 = *(a2 + 72);
  sub_1E5B3D964();
  return (*(*(v9 - 8) + 8))(v7, v9);
}

uint64_t sub_1E5B2E7AC(uint64_t a1)
{
  sub_1E5B3DDC4();
  sub_1E5B2E698(v3, a1);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B2E7FC(uint64_t a1, uint64_t a2)
{
  sub_1E5B3DDC4();
  sub_1E5B2E698(v4, a2);
  return sub_1E5B3DDF4();
}

uint64_t GalleryFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a5[3];
  v79 = a5[2];
  v80 = a3;
  v9 = a5[4];
  v77 = a5[5];
  v78 = v9;
  v10 = a5[7];
  v76 = a5[6];
  v11 = a5[8];
  v12 = a5[9];
  v81 = v79;
  v82 = v8;
  v83 = v9;
  v84 = v77;
  v85 = v76;
  v86 = v10;
  v13 = v10;
  v72 = v11;
  v73 = v10;
  v87 = v11;
  v88 = v12;
  v14 = v11;
  v15 = v12;
  v71 = v12;
  v16 = type metadata accessor for GalleryFeature.TaskIdentifier();
  v17 = *(v16 - 8);
  v69 = v16;
  v70 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v60 - v19;
  v81 = v8;
  v82 = v13;
  v83 = v14;
  v84 = v15;
  v21 = type metadata accessor for GalleryAction();
  v22 = sub_1E5B3D884();
  v74 = *(v22 - 8);
  v75 = v22;
  v23 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v60 - v24;
  v26 = *(v8 - 8);
  v27 = v26[8];
  MEMORY[0x1EEE9AC00](v28);
  v66 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v60 - v30;
  v32 = *(*(v21 - 8) + 64);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v60 - v35;
  v37 = v6[1];
  v67 = *v6;
  v65 = v37;
  (*(v38 + 16))(v36, a4, v21, v34);
  v61 = v26;
  v63 = v26[4];
  v39 = v31;
  v63(v31, v36, v8);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0319E8, &qword_1E5B3F448);
  v64 = v40[12];
  v60 = v40[16];
  v68 = v40[20];
  v62 = &v25[v40[24]];
  v41 = v26[2];
  v41(v20, v31, v8);
  v42 = v69;
  swift_getWitnessTable();
  sub_1E5B3DC64();
  (*(v70 + 8))(v20, v42);
  v43 = *MEMORY[0x1E6999B50];
  v44 = sub_1E5B3D8E4();
  (*(*(v44 - 8) + 104))(&v25[v60], v43, v44);
  v45 = v66;
  v41(v66, v39, v8);
  v46 = v61;
  v47 = (*(v61 + 80) + 96) & ~*(v61 + 80);
  v48 = swift_allocObject();
  v49 = v78;
  *(v48 + 2) = v79;
  *(v48 + 3) = v8;
  v51 = v76;
  v50 = v77;
  *(v48 + 4) = v49;
  *(v48 + 5) = v50;
  v53 = v72;
  v52 = v73;
  *(v48 + 6) = v51;
  *(v48 + 7) = v52;
  v54 = v71;
  *(v48 + 8) = v53;
  *(v48 + 9) = v54;
  v55 = v65;
  *(v48 + 10) = v67;
  *(v48 + 11) = v55;
  v63(&v48[v47], v45, v8);
  v56 = v62;
  *v62 = &unk_1E5B447A8;
  *(v56 + 1) = v48;

  sub_1E5B3DAC4();
  v57 = *MEMORY[0x1E6999B48];
  v58 = sub_1E5B3D8D4();
  (*(*(v58 - 8) + 104))(&v25[v68], v57, v58);
  (*(v74 + 104))(v25, *MEMORY[0x1E6999AD8], v75);
  sub_1E5B3DA74();
  sub_1E5B3DA64();
  return (v46[1])(v39, v8);
}

uint64_t sub_1E5B2EE00(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5B3DAB4();
  v4[3] = sub_1E5B3DAA4();
  v10 = (a2 + *a2);
  v7 = a2[1];
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E5AF6058;

  return v10(a4);
}

uint64_t sub_1E5B2EF20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v13 = *(v1 + 40);
  v14 = *(v1 + 32);
  v12 = *(v1 + 48);
  v6 = *(v1 + 64);
  v5 = *(v1 + 72);
  v7 = (*(*(*(v1 + 24) - 8) + 80) + 96) & ~*(*(*(v1 + 24) - 8) + 80);
  v8 = *(v1 + 80);
  v9 = *(v1 + 88);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5AF632C;

  return sub_1E5B2EE00(a1, v8, v9, v1 + v7);
}

uint64_t GalleryFeature.dispose(localState:sharedState:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[5];
  v4 = a3[6];
  v5 = a3[7];
  v7 = a3[8];
  v8 = a3[9];
  return nullsub_1(a1, a2, a3[2], a3[3], a3[4]);
}

uint64_t sub_1E5B2F084(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[5];
  v4 = a3[6];
  v5 = a3[7];
  v7 = a3[8];
  v8 = a3[9];
  return nullsub_1(a1, a2, a3[2], a3[3], a3[4]);
}

unint64_t sub_1E5B2F0F8()
{
  result = qword_1ED032A28[0];
  if (!qword_1ED032A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED032A28);
  }

  return result;
}

uint64_t sub_1E5B2F168(uint64_t a1)
{
  v2 = *(a1 + 24);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t GalleryEnvironment.init(navigateToIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1E5B2F28C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for TVLibraryItemCell()
{
  result = qword_1ED032B30;
  if (!qword_1ED032B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5B2F354()
{
  result = sub_1E5B3CB44();
  if (v1 <= 0x3F)
  {
    result = sub_1E5B2F3E0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E5B2F3E0()
{
  result = qword_1EE2C23D0;
  if (!qword_1EE2C23D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EE2C23D0);
  }

  return result;
}

uint64_t sub_1E5B2F44C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v22[1] = a1;
  v3 = type metadata accessor for LibrarySidebarButtonStyle();
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TVLibraryItemCell();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B40, &qword_1E5B449C8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  sub_1E5B2FB2C(v2, v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  sub_1E5B2FB90(v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v22[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B48, &unk_1E5B449D0);
  sub_1E5B2FC68();
  sub_1E5B3D6C4();
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(v6 + 2) = swift_getKeyPath();
  v6[24] = 0;
  v17 = v3[6];
  *&v6[v17] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B58, &qword_1E5B44A70);
  swift_storeEnumTagMultiPayload();
  v18 = &v6[v3[7]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &v6[v3[8]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = &v6[v3[9]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v6[v3[10]] = 0;
  sub_1E5AF13EC(&qword_1ED032B60, &qword_1ED032B40, &qword_1E5B449C8);
  sub_1E5B2FDE8();
  sub_1E5B3D444();
  sub_1E5B2FE40(v6);
  return (*(v11 + 8))(v14, v10);
}

__n128 sub_1E5B2F7A4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED031D40, &qword_1E5B40DE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v15 = a1;
  v14 = a1;
  sub_1E5B3D664();
  sub_1E5B3D7E4();
  sub_1E5B3CF94();
  (*(v5 + 32))(a2, v8, v4);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B48, &unk_1E5B449D0) + 36);
  v10 = v21;
  *(v9 + 64) = v20;
  *(v9 + 80) = v10;
  *(v9 + 96) = v22;
  v11 = v17;
  *v9 = v16;
  *(v9 + 16) = v11;
  result = v19;
  *(v9 + 32) = v18;
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_1E5B2F964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for TVLibraryItemCell() + 20));
  LibraryPage.title(locale:)(a1);
  sub_1E5B04428();
  result = sub_1E5B3D394();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1E5B2F9D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *(a1 + *(type metadata accessor for TVLibraryItemCell() + 20));
  result = sub_1E5B3D644();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B2FB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVLibraryItemCell();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B2FB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TVLibraryItemCell();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B2FBF4()
{
  v1 = type metadata accessor for TVLibraryItemCell();
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_1E5B2FC68()
{
  result = qword_1ED032B50;
  if (!qword_1ED032B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032B48, &unk_1E5B449D0);
    sub_1E5AF13EC(&qword_1ED031D48, &qword_1ED031D40, &qword_1E5B40DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032B50);
  }

  return result;
}

uint64_t sub_1E5B2FD20(uint64_t a1)
{
  v2 = sub_1E5B3CE14();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_1E5B3CFE4();
}

unint64_t sub_1E5B2FDE8()
{
  result = qword_1ED032B68;
  if (!qword_1ED032B68)
  {
    type metadata accessor for LibrarySidebarButtonStyle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032B68);
  }

  return result;
}

uint64_t sub_1E5B2FE40(uint64_t a1)
{
  v2 = type metadata accessor for LibrarySidebarButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t LibraryCanvasSectionDescriptor.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t LibraryCanvasSectionDescriptor.title.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t LibraryCanvasSectionDescriptor.subtitle.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall LibraryCanvasSectionDescriptor.init(identifier:title:subtitle:items:)(FitnessLibrary::LibraryCanvasSectionDescriptor *__return_ptr retstr, Swift::String identifier, Swift::String_optional title, Swift::String_optional subtitle, Swift::OpaquePointer items)
{
  retstr->identifier = identifier;
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->items = items;
}

uint64_t sub_1E5B2FF58()
{
  v1 = 0x696669746E656469;
  v2 = 0x656C746974627573;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_1E5B2FFCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B30EC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B2FFF4(uint64_t a1)
{
  v2 = sub_1E5B302DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B30030(uint64_t a1)
{
  v2 = sub_1E5B302DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasSectionDescriptor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B70, &qword_1E5B44B10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v20 = v1[3];
  v21 = v10;
  v11 = v1[4];
  v18 = v1[5];
  v19 = v11;
  v17 = v1[6];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B302DC();
  sub_1E5B3DE14();
  v27 = 0;
  v13 = v22;
  sub_1E5B3DD44();
  if (!v13)
  {
    v14 = v17;
    v26 = 1;
    sub_1E5B3DD34();
    v25 = 2;
    sub_1E5B3DD34();
    v23 = v14;
    v24 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B80, &qword_1E5B44B18);
    sub_1E5B306C4(&qword_1ED032B88, sub_1E5B30330);
    sub_1E5B3DD74();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E5B302DC()
{
  result = qword_1ED032B78;
  if (!qword_1ED032B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032B78);
  }

  return result;
}

unint64_t sub_1E5B30330()
{
  result = qword_1ED032B90;
  if (!qword_1ED032B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032B90);
  }

  return result;
}

uint64_t LibraryCanvasSectionDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B98, &qword_1E5B44B20);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B302DC();
  sub_1E5B3DE04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = 0;
  v11 = sub_1E5B3DCC4();
  v26 = v12;
  v30 = 1;
  v13 = sub_1E5B3DCB4();
  v25 = v14;
  v23 = v13;
  v29 = 2;
  v22 = sub_1E5B3DCB4();
  v24 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032B80, &qword_1E5B44B18);
  v28 = 3;
  sub_1E5B306C4(&qword_1ED032BA0, sub_1E5B3073C);
  sub_1E5B3DCF4();
  (*(v6 + 8))(v9, v5);
  v18 = v26;
  v17 = v27;
  *a2 = v11;
  a2[1] = v18;
  v19 = v22;
  v21 = v24;
  v20 = v25;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v21;
  a2[6] = v17;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5B306C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED032B80, &qword_1E5B44B18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5B3073C()
{
  result = qword_1ED032BA8;
  if (!qword_1ED032BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032BA8);
  }

  return result;
}

uint64_t LibraryCanvasSectionDescriptor.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  sub_1E5B3DA14();
  if (v6)
  {
    sub_1E5B3DDE4();
    sub_1E5B3DA14();
    if (v8)
    {
LABEL_3:
      sub_1E5B3DDE4();
      sub_1E5B3DA14();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E5B3DDE4();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  sub_1E5B3DDE4();
LABEL_6:

  return sub_1E5B30A40(a1, v9);
}

uint64_t LibraryCanvasSectionDescriptor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E5B3DDC4();
  sub_1E5B3DA14();
  if (!v4)
  {
    sub_1E5B3DDE4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E5B3DDE4();
    goto LABEL_6;
  }

  sub_1E5B3DDE4();
  sub_1E5B3DA14();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E5B3DDE4();
  sub_1E5B3DA14();
LABEL_6:
  sub_1E5B30A40(v9, v7);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B30968()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  sub_1E5B3DDC4();
  sub_1E5B3DA14();
  if (!v4)
  {
    sub_1E5B3DDE4();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1E5B3DDE4();
    goto LABEL_6;
  }

  sub_1E5B3DDE4();
  sub_1E5B3DA14();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E5B3DDE4();
  sub_1E5B3DA14();
LABEL_6:
  sub_1E5B30A40(v9, v7);
  return sub_1E5B3DDF4();
}

uint64_t sub_1E5B30A40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1E6936540](v3);
  if (v3)
  {
    v5 = (a2 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      v9 = *(v5 - 2);
      v8 = *(v5 - 1);
      v10 = *v5;

      sub_1E5B3DA14();
      sub_1E5B3DDE4();
      if (v8)
      {
        sub_1E5B3DA14();
      }

      v5 += 40;
      sub_1E5B3DA14();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s14FitnessLibrary0B23CanvasSectionDescriptorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v8 = a2[2];
  v7 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1E5B3DDA4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v7 || (v2 != v8 || v4 != v7) && (sub_1E5B3DDA4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (sub_1E5B3DDA4() & 1) != 0))
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_16:

  return sub_1E5B0E644(v5, v11);
}

unint64_t sub_1E5B30CC0()
{
  result = qword_1ED032BB0;
  if (!qword_1ED032BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032BB0);
  }

  return result;
}

uint64_t sub_1E5B30D14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1E5B30D5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5B30DBC()
{
  result = qword_1ED032BB8;
  if (!qword_1ED032BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032BB8);
  }

  return result;
}

unint64_t sub_1E5B30E14()
{
  result = qword_1ED032BC0;
  if (!qword_1ED032BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032BC0);
  }

  return result;
}

unint64_t sub_1E5B30E6C()
{
  result = qword_1ED032BC8;
  if (!qword_1ED032BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED032BC8);
  }

  return result;
}

uint64_t sub_1E5B30EC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5B3DDA4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5B3DDA4();

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

uint64_t sub_1E5B31054()
{
  v1 = *v0;
  v2 = 0x6843656C61636F6CLL;
  v3 = 0x6570704177656976;
  v4 = 0x6173694477656976;
  if (v1 != 3)
  {
    v4 = 0x4968736572666572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x647055736D657469;
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

uint64_t sub_1E5B31118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B32B30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B31140(uint64_t a1)
{
  v2 = sub_1E5B31AA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B3117C(uint64_t a1)
{
  v2 = sub_1E5B31AA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B311D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7470697263736564 && a2 == 0xEB0000000073726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5B3DDA4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B31264(uint64_t a1)
{
  v2 = sub_1E5B31BF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B312A0(uint64_t a1)
{
  v2 = sub_1E5B31BF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B312DC(uint64_t a1)
{
  v2 = sub_1E5B31C44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B31318(uint64_t a1)
{
  v2 = sub_1E5B31C44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B31354(uint64_t a1)
{
  v2 = sub_1E5B31AF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B31390(uint64_t a1)
{
  v2 = sub_1E5B31AF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B313CC(uint64_t a1)
{
  v2 = sub_1E5B31B9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B31408(uint64_t a1)
{
  v2 = sub_1E5B31B9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B31444(uint64_t a1)
{
  v2 = sub_1E5B31B48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B31480(uint64_t a1)
{
  v2 = sub_1E5B31B48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibraryCanvasContentAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BD0, &qword_1E5B44DD0);
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v30 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BD8, &qword_1E5B44DD8);
  v36 = *(v38 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v30 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BE0, &qword_1E5B44DE0);
  v31 = *(v33 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v10 = &v30 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BE8, &qword_1E5B44DE8);
  v35 = *(v37 - 8);
  v11 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v32 = &v30 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BF0, &qword_1E5B44DF0);
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032BF8, &unk_1E5B44DF8);
  v42 = *(v17 - 8);
  v43 = v17;
  v18 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B31AA0();
  sub_1E5B3DE14();
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v48 = 3;
      sub_1E5B31B48();
      v29 = v34;
      v23 = v43;
      sub_1E5B3DD24();
      (*(v36 + 8))(v29, v38);
      return (*(v42 + 8))(v20, v23);
    }

    if (v21 == 3)
    {
      v49 = 4;
      sub_1E5B31AF4();
      v24 = v39;
      v23 = v43;
      sub_1E5B3DD24();
      (*(v40 + 8))(v24, v41);
      return (*(v42 + 8))(v20, v23);
    }

LABEL_8:
    v46 = 1;
    sub_1E5B31BF0();
    v25 = v32;
    v26 = v43;
    sub_1E5B3DD24();
    v44 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED032620, &qword_1E5B43840);
    sub_1E5B206F0(&qword_1ED032628, sub_1E5B205A0);
    v27 = v37;
    sub_1E5B3DD74();
    (*(v35 + 8))(v25, v27);
    return (*(v42 + 8))(v20, v26);
  }

  if (!v21)
  {
    v45 = 0;
    sub_1E5B31C44();
    v23 = v43;
    sub_1E5B3DD24();
    (*(v30 + 8))(v16, v13);
    return (*(v42 + 8))(v20, v23);
  }

  if (v21 != 1)
  {
    goto LABEL_8;
  }

  v47 = 2;
  sub_1E5B31B9C();
  v23 = v43;
  sub_1E5B3DD24();
  (*(v31 + 8))(v10, v33);
  return (*(v42 + 8))(v20, v23);
}