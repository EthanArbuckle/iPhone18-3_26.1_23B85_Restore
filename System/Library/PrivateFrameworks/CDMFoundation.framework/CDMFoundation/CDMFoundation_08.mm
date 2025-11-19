uint64_t sub_1DC33C35C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1DC51784C();
  return sub_1DC51797C();
}

uint64_t sub_1DC33C3DC(uint64_t a1)
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
  a1 = sub_1DC51784C();

  return MEMORY[0x1EEE68FA8](a1);
}

uint64_t sub_1DC33C444()
{
  v0 = sub_1DC51072C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  sub_1DC2A32B0();
  sub_1DC517E1C();
  sub_1DC51070C();
  v9 = sub_1DC517E0C();
  (*(v3 + 8))(v8, v0);

  return v9;
}

size_t sub_1DC33C5A8(size_t result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
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

  v14 = *(a4 + 16);
  v15 = sub_1DC33C6B8(v14, v13, a5, a6, a7);
  v16 = *(a8(0) - 8);
  if (v11)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    sub_1DC33C7B4(a4 + v17, v14, v15 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

size_t sub_1DC33C6B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC33C7B4(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (result = (a4)(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC33C87C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC58, qword_1DC5247E8);
  result = sub_1DC517F0C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_18:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_1DC5182FC();
    sub_1DC51769C();
    result = sub_1DC51833C();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      result = *v16;
      if (*v16 == v9 && v16[1] == v8)
      {
        goto LABEL_15;
      }

      result = sub_1DC51825C();
      if (result)
      {
        goto LABEL_15;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    *(v3 + 16) = v21;

LABEL_15:
    if (v5 == v4)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DC33CA00(void *a1, SEL *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = [a1 *a2];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  sub_1DC298C74(0, a3, a4);
  v8 = sub_1DC517A1C();

  return v8;
}

uint64_t sub_1DC33CA74(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1DC51772C();

  return v4;
}

uint64_t sub_1DC33CAD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC33CB3C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F768);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F768);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000019;
  v2[3] = 0x80000001DC540230;
  v2[4] = 0x746E457465737341;
  v2[5] = 0xEB00000000797469;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v5 = *(v4 + 104);

  return v5(v1);
}

BOOL sub_1DC33CC1C(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86C70 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  __swift_project_value_buffer(v2, qword_1ECC8F768);
  v7 = sub_1DC5172DC();
  v8 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v8);
  (*(v9 + 8))(a1);
  (*(v3 + 8))(v6, v2);
  return (v7 & 1) == 0;
}

uint64_t sub_1DC33CD64@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C70 != -1)
  {
    OUTLINED_FUNCTION_0_14();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F768);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

BOOL sub_1DC33CDF8@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC33CC1C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC33CE38()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F780);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F780);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000011;
  v2[3] = 0x80000001DC540250;
  v2[4] = 0xD000000000000010;
  v2[5] = 0x80000001DC524800;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC33CF14(uint64_t a1)
{
  v2 = sub_1DC51721C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return 1;
}

uint64_t sub_1DC33CF70@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C78 != -1)
  {
    OUTLINED_FUNCTION_0_15();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F780);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC33CFFC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC33CF14(a1);
  *a2 = 1;
  return result;
}

uint64_t sub_1DC33D038()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F798);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000012;
  v4[3] = 0x80000001DC540290;
  v4[4] = 0xD000000000000011;
  v4[5] = 0x80000001DC524860;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC33D10C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v67 = sub_1DC51721C();
  OUTLINED_FUNCTION_2_3();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v66 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v62 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v22 = sub_1DC5172FC();
  OUTLINED_FUNCTION_2_3();
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86C80 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  __swift_project_value_buffer(v22, qword_1ECC8F798);
  v30 = sub_1DC5172DC();
  (*(v24 + 8))(v29, v22);
  if ((v30 & 1) == 0)
  {
    result = (*(v5 + 8))(a1, v67);
    v41 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_28;
  }

  v31 = sub_1DC5171EC();
  sub_1DC30F668(0x746E61686372656DLL, 0xEC000000656D614ELL, v31, v21);

  v32 = sub_1DC5172AC();
  OUTLINED_FUNCTION_3_0(v21);
  if (v33)
  {
    sub_1DC30F72C(v21);
LABEL_9:

    v41 = 0;
    v64 = 0xE000000000000000;
    goto LABEL_10;
  }

  sub_1DC382AC0();
  v41 = v40;
  v43 = v42;
  OUTLINED_FUNCTION_7_1(v32);
  (*(v44 + 8))(v21, v32);
  v64 = v43;
  if (!v43)
  {
    goto LABEL_9;
  }

LABEL_10:
  v45 = sub_1DC5171EC();
  sub_1DC30F668(1702125924, 0xE400000000000000, v45, v19);

  OUTLINED_FUNCTION_3_0(v19);
  if (v33)
  {
    sub_1DC30F72C(v19);
  }

  else
  {
    sub_1DC382AC0();
    v36 = v46;
    v37 = v47;
    OUTLINED_FUNCTION_7_1(v32);
    (*(v48 + 8))(v19, v32);
    if (v37)
    {
      goto LABEL_15;
    }
  }

  v36 = 0;
  v37 = 0xE000000000000000;
LABEL_15:
  v49 = sub_1DC5171EC();
  sub_1DC30F668(1936941424, 0xE400000000000000, v49, v16);

  OUTLINED_FUNCTION_3_0(v16);
  if (v33)
  {
    sub_1DC30F72C(v16);
  }

  else
  {
    v63 = v41;
    OUTLINED_FUNCTION_2_3();
    v52 = v51;
    if ((*(v50 + 88))(v16, v32) == *MEMORY[0x1E69DAE58])
    {
      (*(v52 + 96))(v16, v32);
      v53 = *v16;
      v54 = swift_projectBox();
      v55 = v67;
      (*(v5 + 16))(v66, v54, v67);

      v56 = sub_1DC5171EC();
      v57 = v65;
      sub_1DC30F668(0x6570795473736170, 0xE800000000000000, v56, v65);

      OUTLINED_FUNCTION_3_0(v57);
      if (v33)
      {
        sub_1DC30F72C(v57);
      }

      else
      {
        v38 = sub_1DC38389C();
        v58 = v57;
        v39 = v59;
        (*(v52 + 8))(v58, v32);
        if (v39)
        {
          v60 = *(v5 + 8);
          v60(a1, v55);
          result = (v60)(v66, v55);
LABEL_27:
          v41 = v63;
          v35 = v64;
          goto LABEL_28;
        }
      }

      v61 = *(v5 + 8);
      v61(a1, v55);
      v61(v66, v55);

      v38 = 0;
      v39 = 0xE000000000000000;
      goto LABEL_27;
    }

    (*(v52 + 8))(v16, v32);
    v41 = v63;
  }

  result = (*(v5 + 8))(a1, v67);
  v38 = 0;
  v39 = 0xE000000000000000;
  v35 = v64;
LABEL_28:
  *a2 = v41;
  a2[1] = v35;
  a2[2] = v36;
  a2[3] = v37;
  a2[4] = v38;
  a2[5] = v39;
  return result;
}

uint64_t sub_1DC33D718()
{
  v1 = v0;
  sub_1DC517F4C();

  strcpy(v3, "MerchantName: ");
  HIBYTE(v3[1]) = -18;
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x3A65746144207C20, 0xE900000000000020);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0xD000000000000012, 0x80000001DC540270);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  return v3[0];
}

uint64_t sub_1DC33D7E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C80 != -1)
  {
    OUTLINED_FUNCTION_0_16();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F798);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC33D87C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC33D10C(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = *&v6;
  a2[2] = v6;
  return result;
}

uint64_t sub_1DC33D8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_1DC51670C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v59 - v8;
  v66 = sub_1DC5137CC();
  v10 = OUTLINED_FUNCTION_0(v66);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1DC516F7C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v18);
  v60 = v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v64 = v59 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v28 = v59 - v27;
  v29 = sub_1DC28D414();
  v30 = *(v20 + 16);
  v62 = v29;
  v63 = v30;
  (v30)(v28);
  v31 = sub_1DC516F6C();
  v32 = sub_1DC517B9C();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v59[1] = v20 + 16;
    v34 = v2;
    v35 = v9;
    v36 = v20;
    v37 = v17;
    v38 = v33;
    *v33 = 0;
    _os_log_impl(&dword_1DC287000, v31, v32, "nluResponse.parses is empty, falling back on nlv3 server", v33, 2u);
    v39 = v38;
    v17 = v37;
    v20 = v36;
    v9 = v35;
    v2 = v34;
    MEMORY[0x1E1298840](v39, -1, -1);
  }

  v40 = *(v20 + 8);
  v40(v28, v17);
  type metadata accessor for CDMNluResponse();
  (*(v12 + 16))(v16, v2, v66);
  v41 = CDMNluResponse.__allocating_init(swiftProto:)(v16);
  v42 = (*((*MEMORY[0x1E69E7D40] & *v41) + 0x60))();
  if (!v42)
  {
    v49 = v60;
    v63(v60, v62, v17);
    v50 = sub_1DC516F6C();
    v51 = sub_1DC517B9C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v17;
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DC287000, v50, v51, "Unable to convert NLU response to Obj-C proto", v53, 2u);
      v54 = v53;
      v17 = v52;
      MEMORY[0x1E1298840](v54, -1, -1);
    }

    v40(v49, v17);
    v58 = sub_1DC511EEC();
    v56 = v65;
    v57 = 1;
    return __swift_storeEnumTagSinglePayload(v56, v57, 1, v58);
  }

  v43 = v42;
  v60 = v40;
  v44 = v9;
  v66 = v17;
  v45 = [objc_opt_self() serverDelegatedUserDialogActFromNLUResponse_];
  result = sub_1DC30EB38(v45);
  if (v47 >> 60 != 15)
  {
    v48 = sub_1DC511EEC();
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_1DC5166FC();
    sub_1DC33DEEC();
    sub_1DC51677C();

    __swift_storeEnumTagSinglePayload(v44, 0, 1, v48);
    v55 = v65;
    (*(*(v48 - 8) + 32))(v65, v44, v48);
    v56 = v55;
    v57 = 0;
    v58 = v48;
    return __swift_storeEnumTagSinglePayload(v56, v57, 1, v58);
  }

  __break(1u);
  return result;
}

unint64_t sub_1DC33DEEC()
{
  result = qword_1ECC7BDD0;
  if (!qword_1ECC7BDD0)
  {
    sub_1DC511EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BDD0);
  }

  return result;
}

uint64_t sub_1DC33DF44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D4B0, &unk_1DC528580);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC33DFAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F10;
  v1 = sub_1DC3EAB30();
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;

  v4 = sub_1DC3EAB3C();
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;
  qword_1ECC8F7B0 = v0;
}

uint64_t sub_1DC33E02C()
{
  v0 = sub_1DC33F23C(&qword_1ECC7CC60, &qword_1DC524898, &qword_1ECC7CC78, &qword_1DC5248F0);
  v1 = OUTLINED_FUNCTION_9_9(v0);
  *(v1 + 16) = xmmword_1DC522F10;
  *(v1 + 32) = sub_1DC514CCC();
  result = sub_1DC514CAC();
  *(v1 + 40) = result;
  qword_1ECC8F7B8 = v1;
  return result;
}

uint64_t *sub_1DC33E0A0()
{
  if (qword_1EDAC83B0 != -1)
  {
    OUTLINED_FUNCTION_4_11();
    swift_once();
  }

  return &qword_1ECC8F7B8;
}

uint64_t sub_1DC33E0E4()
{
  v0 = sub_1DC33F23C(&qword_1ECC7C1B8, &unk_1DC522F90, &qword_1ECC7C1C0, &unk_1DC5248E0);
  v1 = OUTLINED_FUNCTION_9_9(v0);
  *(v1 + 16) = xmmword_1DC522F10;
  *(v1 + 32) = sub_1DC5147CC();
  result = sub_1DC5147DC();
  *(v1 + 40) = result;
  qword_1ECC8F7C0 = v1;
  return result;
}

uint64_t *sub_1DC33E158()
{
  if (qword_1EDAC83B8 != -1)
  {
    OUTLINED_FUNCTION_3_11();
    swift_once();
  }

  return &qword_1ECC8F7C0;
}

void sub_1DC33E19C(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a1;
  v213 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v197 = v6;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  v198 = v8;
  OUTLINED_FUNCTION_12();
  v212 = sub_1DC5157EC();
  v9 = OUTLINED_FUNCTION_0(v212);
  v196 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v194 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v195 = v15;
  OUTLINED_FUNCTION_12();
  v204 = sub_1DC51164C();
  v16 = OUTLINED_FUNCTION_0(v204);
  v207 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_15();
  v206 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v203 = v22;
  OUTLINED_FUNCTION_12();
  v23 = sub_1DC51122C();
  v24 = OUTLINED_FUNCTION_0(v23);
  v201 = v25;
  v202 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v199 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v200 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v180 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v180 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v180 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v49);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v180 - v53;
  v55 = type metadata accessor for NLRouterNLParseResponse(0);
  v56 = OUTLINED_FUNCTION_35(v55);
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v56);
  v205 = (&v180 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_12();
  v60 = sub_1DC516F5C();
  v61 = OUTLINED_FUNCTION_0(v60);
  v209 = v62;
  v210 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v66 = &v180 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v68 = sub_1DC2BE518();
  v69 = OUTLINED_FUNCTION_130();
  v208 = v66;
  sub_1DC2A2ED0("HeuristicRules.PlannerPhotoRule", 31, 2, v68, v69 & 1, v66);

  v70 = v211;
  v71 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v70 + *(v71 + 32), v48, &qword_1ECC7C158, &unk_1DC5234A0);
  v72 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v48, 1, v72) == 1)
  {
    sub_1DC28EB30(v48, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v55);
LABEL_4:
    sub_1DC28EB30(v54, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
    goto LABEL_11;
  }

  sub_1DC28F358(v48, v54, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC33F1E0(v48, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
  {
    goto LABEL_4;
  }

  v193 = v67;
  v80 = v205;
  sub_1DC2E53A4(v54, v205);
  sub_1DC3EAD64(v36);
  v81 = type metadata accessor for QDContextState(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v81);
  v83 = v213;
  if (EnumTagSinglePayload == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v80, v84);
    v85 = &qword_1ECC7BEB8;
    v86 = &unk_1DC527150;
    v87 = v36;
LABEL_9:
    sub_1DC28EB30(v87, v85, v86);
    OUTLINED_FUNCTION_19();
    goto LABEL_10;
  }

  sub_1DC28F358(&v36[*(v81 + 24)], v42, &qword_1ECC7BEC0, &unk_1DC5221E0);
  sub_1DC33F1E0(v36, type metadata accessor for QDContextState);
  v88 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v42, 1, v88) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v80, v89);
    v85 = &qword_1ECC7BEC0;
    v86 = &unk_1DC5221E0;
    v87 = v42;
    goto LABEL_9;
  }

  v96 = sub_1DC51723C();
  v98 = v97;
  v99 = (*(*(v88 - 8) + 8))(v42, v88);
  if (_MergedGlobals_7 != -1)
  {
LABEL_85:
    v99 = OUTLINED_FUNCTION_5_15();
  }

  v216[0] = v96;
  v216[1] = v98;
  MEMORY[0x1EEE9AC00](v99);
  *(&v180 - 2) = v216;
  v101 = sub_1DC2CF098(sub_1DC2CF174, (&v180 - 4), v100);

  v102 = v203;
  if (!v101)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v80, v128);
    OUTLINED_FUNCTION_19();
    v93 = v212;
    goto LABEL_10;
  }

  v187 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v103 = sub_1DC3458D0();
  v105 = v104;
  if (v103 == sub_1DC312FB4(0) && v105 == v106)
  {

    goto LABEL_41;
  }

  v108 = OUTLINED_FUNCTION_13();

  if (v108)
  {
    goto LABEL_41;
  }

  v182 = *(*v80 + 16);
  if (!v182)
  {
    goto LABEL_41;
  }

  v109 = 0;
  OUTLINED_FUNCTION_18_10();
  v185 = v110 + v111;
  v184 = v112 + 16;
  v190 = v207 + 16;
  v189 = v207 + 8;
  v183 = v112 + 8;
  v98 = &unk_1DC5248A0;
  v181 = v110;
  while (1)
  {
    if (v109 >= *(v110 + 16))
    {
      __break(1u);
LABEL_87:
      __break(1u);
      return;
    }

    v113 = *(v201 + 72);
    v186 = v109;
    v114 = v185 + v113 * v109;
    v96 = v200;
    (*(v201 + 16))(v200, v114, v202);
    v115 = sub_1DC5111AC();
    v116 = v204;
    v192 = *(v115 + 16);
    if (v192)
    {
      break;
    }

LABEL_37:
    v109 = v186 + 1;
    v126 = OUTLINED_FUNCTION_11_11();
    v127(v126);
    v110 = v181;
    if (v109 == v182)
    {
      goto LABEL_41;
    }
  }

  OUTLINED_FUNCTION_10_12();
  v191 = (v115 + v117);
  v188 = v115;
  while (1)
  {
    if (v70 >= *(v115 + 16))
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    (*(v207 + 16))(v102, &v191[*(v207 + 72) * v70], v116);
    if (qword_1EDAC83B0 != -1)
    {
      OUTLINED_FUNCTION_4_11();
      swift_once();
    }

    v118 = qword_1ECC8F7B8;
    v80 = *(qword_1ECC8F7B8 + 16);
    if (v80)
    {
      v216[0] = MEMORY[0x1E69E7CC0];
      sub_1DC33F29C(0, v80, 0);
      v119 = v216[0];
      v120 = (v118 + 32);
      do
      {
        v214 = *v120;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC60, &qword_1DC524898);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
        OUTLINED_FUNCTION_13_9();
        v121 = v215;
        v216[0] = v119;
        v123 = *(v119 + 16);
        v122 = *(v119 + 24);
        if (v123 >= v122 >> 1)
        {
          sub_1DC33F29C((v122 > 1), v123 + 1, 1);
          v119 = v216[0];
        }

        *(v119 + 16) = v123 + 1;
        *(v119 + 8 * v123 + 32) = v121;
        ++v120;
        v80 = (v80 - 1);
      }

      while (v80);
      v83 = v213;
      v102 = v203;
      v115 = v188;
    }

    sub_1DC30AD70();
    v96 = v124;

    OUTLINED_FUNCTION_8_7();
    v116 = v204;
    v125(v102, v204);
    if (v96)
    {
      break;
    }

    if (++v70 == v192)
    {

      v80 = v205;
      goto LABEL_37;
    }
  }

  v153 = OUTLINED_FUNCTION_11_11();
  v154(v153);

  sub_1DC3458D0();
  v155 = sub_1DC312F68();
  v80 = v205;
  if (v155 == 4)
  {
    v156 = v198;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v157, v158, v159, v212);
    goto LABEL_76;
  }

  v156 = v198;
  sub_1DC312E7C(v155, v198);
  v167 = v212;
  v168 = __swift_getEnumTagSinglePayload(v156, 1, v212);
  v169 = v196;
  if (v168 == 1)
  {
LABEL_76:
    sub_1DC28EB30(v156, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_41;
  }

  v171 = *(v196 + 32);
  v172 = v195;
  v171(v195, v156, v167);
  v173 = type metadata accessor for HeuristicRoutingRequest(0);
  v174 = *(v173 + 36);
  v175 = v211 + *(v173 + 20);
  sub_1DC32FD38();
  if ((v176 & 1) == 0)
  {
    (*(v169 + 8))(v172, v167);
LABEL_41:
    v129 = sub_1DC345484();
    v131 = v130;
    if (v129 == sub_1DC312FB4(0) && v131 == v132)
    {
    }

    else
    {
      v134 = OUTLINED_FUNCTION_13();

      if ((v134 & 1) == 0)
      {
        v98 = *v80;
        v70 = *(*v80 + 16);
        v135 = v204;
        if (v70)
        {
          OUTLINED_FUNCTION_18_10();
          v191 = v98 + v137;
          v190 = v138 + 16;
          v200 = v207 + 16;
          v198 = (v207 + 8);
          v189 = v138 + 8;
          v188 = v98;
          v186 = v70;
          while (1)
          {
            if (v136 >= v98[2])
            {
              goto LABEL_87;
            }

            v139 = *(v201 + 72);
            v192 = v136;
            v96 = v199;
            (*(v201 + 16))(v199, &v191[v139 * v136], v202);
            v140 = sub_1DC5111AC();
            v211 = *(v140 + 16);
            if (v211)
            {
              break;
            }

LABEL_65:
            v149 = v192 + 1;
            OUTLINED_FUNCTION_8_7();
            v150(v199, v202);
            v136 = v149;
            if (v149 == v70)
            {
              goto LABEL_68;
            }
          }

          OUTLINED_FUNCTION_10_12();
          v203 = v140 + v141;
          v195 = v140;
          while (1)
          {
            if (v70 >= *(v140 + 16))
            {
              goto LABEL_84;
            }

            (*(v207 + 16))(v206, v203 + *(v207 + 72) * v70, v135);
            if (qword_1EDAC83B8 != -1)
            {
              OUTLINED_FUNCTION_3_11();
              swift_once();
            }

            v142 = qword_1ECC8F7C0;
            v143 = *(qword_1ECC8F7C0 + 16);
            if (v143)
            {
              v216[0] = MEMORY[0x1E69E7CC0];
              sub_1DC33F29C(0, v143, 0);
              v80 = v216[0];
              v144 = (v142 + 32);
              do
              {
                v214 = *v144;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1B8, &unk_1DC522F90);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC68, &unk_1DC5248A0);
                OUTLINED_FUNCTION_13_9();
                v145 = v215;
                v216[0] = v80;
                v147 = v80[2];
                v146 = v80[3];
                if (v147 >= v146 >> 1)
                {
                  sub_1DC33F29C((v146 > 1), v147 + 1, 1);
                  v80 = v216[0];
                }

                v80[2] = v147 + 1;
                v80[v147 + 4] = v145;
                ++v144;
                --v143;
              }

              while (v143);
              v83 = v213;
              v135 = v204;
              v140 = v195;
            }

            else
            {
              v80 = MEMORY[0x1E69E7CC0];
            }

            v98 = v206;
            sub_1DC30AD70();
            v96 = v148;

            (*v198)(v98, v135);
            if (v96)
            {
              break;
            }

            if (++v70 == v211)
            {

              v80 = v205;
              v98 = v188;
              v70 = v186;
              goto LABEL_65;
            }
          }

          OUTLINED_FUNCTION_8_7();
          v160(v199, v202);

          sub_1DC345484();
          v161 = sub_1DC312F68();
          if (v161 == 4)
          {
            OUTLINED_FUNCTION_0_17();
            sub_1DC33F1E0(v205, v162);
            v163 = v197;
            OUTLINED_FUNCTION_19();
            v152 = v212;
            __swift_storeEnumTagSinglePayload(v164, v165, v166, v212);
LABEL_78:
            sub_1DC28EB30(v163, &qword_1ECC7CA40, &unk_1DC5233A0);
            goto LABEL_69;
          }

          v163 = v197;
          sub_1DC312E7C(v161, v197);
          OUTLINED_FUNCTION_0_17();
          sub_1DC33F1E0(v205, v170);
          v152 = v212;
          if (__swift_getEnumTagSinglePayload(v163, 1, v212) == 1)
          {
            goto LABEL_78;
          }

          v178 = *(v196 + 32);
          v179 = v194;
          v178(v194, v163, v152);
          v178(v83, v179, v152);
          v90 = v83;
          v91 = 0;
LABEL_70:
          v92 = 1;
          v93 = v152;
          goto LABEL_10;
        }
      }
    }

LABEL_68:
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v80, v151);
    v152 = v212;
LABEL_69:
    v90 = v83;
    v91 = 1;
    goto LABEL_70;
  }

  OUTLINED_FUNCTION_0_17();
  sub_1DC33F1E0(v80, v177);
  v171(v83, v172, v167);
  v90 = v83;
  v91 = 0;
  v92 = 1;
  v93 = v167;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
LABEL_11:
  v94 = sub_1DC2BE518();
  v95 = v208;
  sub_1DC2B8848();

  (*(v209 + 8))(v95, v210);
}

uint64_t sub_1DC33F1E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC33F23C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  if (dynamic_cast_existential_0_class_conditional(v6))
  {
    v7 = &qword_1ECC7C1C8;
    v8 = &qword_1DC524550;
  }

  else
  {
    v7 = a3;
    v8 = a4;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
}

char *sub_1DC33F29C(char *a1, int64_t a2, char a3)
{
  result = sub_1DC33F2BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DC33F2BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC70, &qword_1DC52F250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

id sub_1DC33F3CC()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_bitVector;
  OUTLINED_FUNCTION_9_10();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1DC33F410(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_bitVector;
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1DC33F464()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC33F498(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems;
  OUTLINED_FUNCTION_5_16();
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1DC33F564()
{
  v1 = (v0 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_name);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1DC33F62C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_name);
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DC33F688@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC33F6E4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xD0);

  return v4(v2, v3);
}

uint64_t sub_1DC33F7BC()
{
  v0 = sub_1DC51808C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DC33F80C(char a1)
{
  result = 0x6F74636556746962;
  switch(a1)
  {
    case 1:
    case 2:
    case 6:
      result = 0x664F7265626D756ELL;
      break;
    case 3:
      result = 1684366707;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 1701667182;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DC33F8FC(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000072;
  v3 = 0x6F74636556746962;
  v4 = a1;
  v5 = 0x6F74636556746962;
  v6 = 0xE900000000000072;
  switch(v4)
  {
    case 1:
      v5 = 0x664F7265626D756ELL;
      v6 = 0xEC00000073746942;
      break;
    case 2:
      v5 = 0x664F7265626D756ELL;
      v6 = 0xEE00736568736148;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v5 = 1684366707;
      break;
    case 4:
      v6 = 0x80000001DC540300;
      v5 = 0xD000000000000015;
      break;
    case 5:
      v5 = 0xD000000000000011;
      v6 = 0x80000001DC540320;
      break;
    case 6:
      v5 = 0x664F7265626D756ELL;
      v6 = 0xED0000736D657449;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v5 = 1701667182;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x664F7265626D756ELL;
      v2 = 0xEC00000073746942;
      break;
    case 2:
      v3 = 0x664F7265626D756ELL;
      v2 = 0xEE00736568736148;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1684366707;
      break;
    case 4:
      v2 = 0x80000001DC540300;
      v3 = 0xD000000000000015;
      break;
    case 5:
      v3 = 0xD000000000000011;
      v2 = 0x80000001DC540320;
      break;
    case 6:
      v3 = 0x664F7265626D756ELL;
      v2 = 0xED0000736D657449;
      break;
    case 7:
      v2 = 0xE400000000000000;
      v3 = 1701667182;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC33FB40(char a1)
{
  sub_1DC5182FC();
  sub_1DC33F80C(a1);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC33FBAC()
{
  sub_1DC51769C();
}

uint64_t sub_1DC33FCCC(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC33F80C(a2);
  sub_1DC51769C();

  return sub_1DC51833C();
}

uint64_t sub_1DC33FD2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC33F7BC();
  *a2 = result;
  return result;
}

unint64_t sub_1DC33FD5C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DC33F80C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DC33FDA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DC33F808();
  *a1 = result;
  return result;
}

uint64_t sub_1DC33FDDC(uint64_t a1)
{
  v2 = sub_1DC340438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DC33FE18(uint64_t a1)
{
  v2 = sub_1DC340438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void BloomFilter.init(with:expectedNumberOfItems:falsePositiveRate:seed:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, long double a5)
{
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems] = 0;
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedItemsBuffer] = 1234;
  v6 = &v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v7 = a3 + 1234;
  if (a3 >= 0xFFFFFFFFFFFFFB2ELL)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedNumberOfItems] = v7;
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_falsePositiveRate] = a5;
  *&v5[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed] = a4;
  v9 = ceil(log(a5) * v7 / -0.480453014);
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v9 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v9 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v9;
  *&v8[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits] = v9;
  if (!v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = ceil((v10 / v7) * 0.693147181);
  if (v11 == INFINITY)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v11 <= -1.0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1.84467441e19)
  {
    *&v8[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes] = v11;
    type metadata accessor for BitVector();
    *&v8[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_bitVector] = sub_1DC3A7854(v10);
    v12.receiver = v8;
    v12.super_class = type metadata accessor for BloomFilter();
    objc_msgSendSuper2(&v12, sel_init);
    return;
  }

LABEL_17:
  __break(1u);
}

char *BloomFilter.init(from:)(uint64_t *a1)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCA0, &qword_1DC524908);
  v4 = OUTLINED_FUNCTION_0(v28);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = &v27 - v9;
  v11 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems;
  *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems] = 0;
  v12 = v1;
  *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedItemsBuffer] = 1234;
  v13 = a1[3];
  v14 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1DC340438();
  sub_1DC51834C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    type metadata accessor for BloomFilter();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v27 = v11;
    v15 = v6;
    type metadata accessor for BitVector();
    v32 = 0;
    sub_1DC340C10(&qword_1ECC7CCB0);
    v16 = v28;
    sub_1DC51814C();
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_bitVector] = v31;
    OUTLINED_FUNCTION_0_18(1);
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits] = sub_1DC51813C();
    OUTLINED_FUNCTION_0_18(2);
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes] = sub_1DC51813C();
    OUTLINED_FUNCTION_0_18(3);
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed] = sub_1DC51815C();
    OUTLINED_FUNCTION_0_18(4);
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedNumberOfItems] = sub_1DC51813C();
    OUTLINED_FUNCTION_0_18(5);
    sub_1DC51811C();
    *&v1[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_falsePositiveRate] = v18;
    OUTLINED_FUNCTION_0_18(6);
    v19 = sub_1DC51813C();
    v20 = v27;
    OUTLINED_FUNCTION_5_16();
    swift_beginAccess();
    *&v12[v20] = v19;
    v32 = 7;
    v21 = sub_1DC5180FC();
    v22 = v10;
    v24 = v23;
    (*(v15 + 8))(v22, v16);
    v25 = &v12[OBJC_IVAR____TtC13CDMFoundation11BloomFilter_name];
    *v25 = v21;
    v25[1] = v24;
    v26 = type metadata accessor for BloomFilter();
    v30.receiver = v12;
    v30.super_class = v26;
    v12 = objc_msgSendSuper2(&v30, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return v12;
}

unint64_t sub_1DC340438()
{
  result = qword_1ECC7CCA8;
  if (!qword_1ECC7CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CCA8);
  }

  return result;
}

void sub_1DC34048C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1DC2A6784(a1, a2);
  v4 = OUTLINED_FUNCTION_62_2();
  v6 = sub_1DC33360C(v4, v5);
  v7 = OUTLINED_FUNCTION_62_2();
  v8 = MEMORY[0x1E128F2D0](v7);
  v9 = sub_1DC2CF194(v6, v8, *(v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed));
  v11 = v10;

  v13 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits;
  v14 = *(v3 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes) + 1;
  v15 = MEMORY[0x1E69E7D40];
  do
  {
    if (!--v14)
    {
      break;
    }

    v16 = *(v3 + v13);
    if (!v16)
    {
      __break(1u);
      return;
    }

    v17 = v9 % v16;
    v18 = (*((*v15 & *v3) + 0x98))(v12);
    OUTLINED_FUNCTION_4_12(v18);
    LOBYTE(v17) = (*(v19 + 184))(v17);

    v9 += v11;
  }

  while ((v17 & 1) != 0);
}

uint64_t sub_1DC340624(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  sub_1DC2A6784(a1, a2);
  v4 = OUTLINED_FUNCTION_62_2();
  v6 = sub_1DC33360C(v4, v5);
  v7 = OUTLINED_FUNCTION_62_2();
  v8 = MEMORY[0x1E128F2D0](v7);
  v9 = sub_1DC2CF194(v6, v8, *(v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed));
  v11 = v10;

  v13 = *(v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes);
  if (v13)
  {
    v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x98);
    v15 = *(v2 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits);
    if (!v15)
    {
      goto LABEL_8;
    }

    v16 = (*MEMORY[0x1E69E7D40] & *v2) + 152;
    do
    {
      v17 = v14(result);
      OUTLINED_FUNCTION_4_12(v17);
      (*(v18 + 168))(v9 % v15);

      v9 += v11;
      --v13;
    }

    while (v13);
  }

  v19 = OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfItems;
  OUTLINED_FUNCTION_5_16();
  result = swift_beginAccess();
  v20 = *(v3 + v19);
  v21 = __CFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v3 + v19) = v22;
    return result;
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

id BloomFilter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BloomFilter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BloomFilter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC340870(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCB8, &qword_1DC524910);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v27[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DC340438();
  sub_1DC51835C();
  v14 = *v3;
  OUTLINED_FUNCTION_3_12();
  v16 = (*(v15 + 152))();
  v28 = v16;
  v27[7] = 0;
  type metadata accessor for BitVector();
  sub_1DC340C10(&qword_1ECC7CCC0);
  sub_1DC51820C();

  if (v2)
  {
    return (*(v8 + 8))(v12, v5);
  }

  v17 = *(v3 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfBits);
  OUTLINED_FUNCTION_1_13(1);
  sub_1DC5181FC();
  v18 = *(v3 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_numberOfHashes);
  OUTLINED_FUNCTION_1_13(2);
  sub_1DC5181FC();
  v19 = *(v3 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_seed);
  OUTLINED_FUNCTION_1_13(3);
  sub_1DC51821C();
  v20 = *(v3 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_expectedNumberOfItems);
  OUTLINED_FUNCTION_1_13(4);
  sub_1DC5181FC();
  v21 = *(v3 + OBJC_IVAR____TtC13CDMFoundation11BloomFilter_falsePositiveRate);
  LOBYTE(v28) = 5;
  sub_1DC5181DC();
  v22 = *v3;
  OUTLINED_FUNCTION_3_12();
  (*(v23 + 176))();
  OUTLINED_FUNCTION_1_13(6);
  sub_1DC5181FC();
  v25 = *v3;
  OUTLINED_FUNCTION_3_12();
  (*(v26 + 200))();
  LOBYTE(v28) = 7;
  sub_1DC5181BC();
  (*(v8 + 8))(v12, v5);
}

uint64_t sub_1DC340B78@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 232))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DC340C10(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for BitVector();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC340C58()
{
  result = qword_1ECC7CCC8;
  if (!qword_1ECC7CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CCC8);
  }

  return result;
}

unint64_t sub_1DC340CB0()
{
  result = qword_1ECC7CCD0;
  if (!qword_1ECC7CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CCD0);
  }

  return result;
}

unint64_t sub_1DC340D08()
{
  result = qword_1ECC7CCD8;
  if (!qword_1ECC7CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CCD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NLRouterModelFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for BloomFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

void sub_1DC341068()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v126 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15();
  v118 = v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  v117 = &v112 - v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v112 - v11;
  v127 = sub_1DC5157EC();
  v13 = OUTLINED_FUNCTION_0(v127);
  v119 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v114 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v116 = &v112 - v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v112 - v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v121 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v25 = OUTLINED_FUNCTION_10(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v112 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v31 = OUTLINED_FUNCTION_10(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v112 - v34;
  v36 = type metadata accessor for NLRouterNLParseResponse(0);
  v37 = OUTLINED_FUNCTION_35(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v122 = (v41 - v40);
  OUTLINED_FUNCTION_12();
  v42 = sub_1DC516F5C();
  v43 = OUTLINED_FUNCTION_0(v42);
  v124 = v44;
  v125 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  v49 = v48 - v47;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v50 = sub_1DC2BE518();
  v51 = OUTLINED_FUNCTION_130();
  v123 = v49;
  sub_1DC2A2ED0("HeuristicRules.ReminderRule", 27, 2, v50, v51 & 1, v49);

  v52 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v120 = v1;
  sub_1DC28F414(v1 + v52, v29, &qword_1ECC7C158, &unk_1DC5234A0);
  v53 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v29, 1, v53) == 1)
  {
    sub_1DC28EB30(v29, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v36);
LABEL_4:
    sub_1DC28EB30(v35, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
    goto LABEL_39;
  }

  sub_1DC28F414(v29, v35, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC3427F4(v29, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC34279C(v35, v122);
  v61 = type metadata accessor for HeuristicRoutingRequest(0);
  v62 = v119;
  v63 = v121;
  v64 = v127;
  (*(v119 + 16))(v121, v120 + *(v61 + 20), v127);
  sub_1DC3419A0();
  OUTLINED_FUNCTION_19_11(v12);
  if (v69)
  {
    sub_1DC28EB30(v12, &qword_1ECC7CA40, &unk_1DC5233A0);
  }

  else
  {
    (*(v62 + 8))(v63, v64);
    (*(v62 + 32))(v63, v12, v64);
  }

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v65 = sub_1DC345114();
  v67 = v66;
  v69 = v65 == sub_1DC312FB4(0) && v67 == v68;
  if (v69)
  {

    goto LABEL_24;
  }

  v70 = OUTLINED_FUNCTION_12_10();

  if (v70)
  {
    goto LABEL_24;
  }

  sub_1DC345114();
  v71 = sub_1DC312F68();
  if (v71 == 4)
  {
    v72 = v117;
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v64);
LABEL_18:
    sub_1DC28EB30(v72, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_24;
  }

  v72 = v117;
  sub_1DC312E7C(v71, v117);
  OUTLINED_FUNCTION_19_11(v72);
  if (v69)
  {
    goto LABEL_18;
  }

  v76 = *(v62 + 32);
  v77 = v115;
  v117 = v62 + 32;
  v113 = v76;
  v76(v115, v72, v64);
  v78 = v116;
  (*(v62 + 104))(v116, *MEMORY[0x1E69D02F8], v64);
  v79 = sub_1DC5157DC();
  v80 = *(v62 + 8);
  v80(v78, v64);
  if (v79)
  {
    v81 = *v122;
    sub_1DC342154();
    if ((v82 & 1) != 0 && (OUTLINED_FUNCTION_5_17(), sub_1DC342154(), (v83 & 1) == 0))
    {
      v107 = v115;
      v108 = v116;
      v109 = v121;
      sub_1DC32DE40();
      v110 = v107;
      v111 = v127;
      v80(v110, v127);
      v80(v109, v111);
      v64 = v111;
      v113(v109, v108, v111);
    }

    else
    {
      v84 = v127;
      v80(v115, v127);
      v64 = v84;
    }
  }

  else
  {
    v80(v77, v64);
  }

LABEL_24:
  v85 = sub_1DC3451F0();
  v87 = v86;
  if (v85 == sub_1DC312FB4(0) && v87 == v88)
  {

    v91 = v121;
  }

  else
  {
    v90 = OUTLINED_FUNCTION_12_10();

    v91 = v121;
    if ((v90 & 1) == 0)
    {
      sub_1DC3451F0();
      v92 = sub_1DC312F68();
      if (v92 == 4)
      {
        v93 = v118;
        OUTLINED_FUNCTION_19();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v64);
LABEL_34:
        sub_1DC28EB30(v93, &qword_1ECC7CA40, &unk_1DC5233A0);
        goto LABEL_35;
      }

      v93 = v118;
      sub_1DC312E7C(v92, v118);
      OUTLINED_FUNCTION_19_11(v93);
      if (v69)
      {
        goto LABEL_34;
      }

      v101 = *(v62 + 32);
      v102 = v114;
      v101(v114, v93, v64);
      v103 = *v122;
      OUTLINED_FUNCTION_5_17();
      sub_1DC342154();
      if (v104)
      {
        sub_1DC32DE40();
        v105 = v102;
        v106 = *(v62 + 8);
        v106(v105, v64);
        v106(v91, v64);
        v101(v91, v116, v64);
      }

      else
      {
        (*(v62 + 8))(v102, v64);
      }
    }
  }

LABEL_35:
  if (sub_1DC5157DC())
  {
    (*(v62 + 8))(v91, v64);
    v97 = 1;
    v98 = v126;
  }

  else
  {
    v98 = v126;
    (*(v62 + 32))(v126, v91, v64);
    v97 = 0;
  }

  __swift_storeEnumTagSinglePayload(v98, v97, 1, v64);
  sub_1DC3427F4(v122, type metadata accessor for NLRouterNLParseResponse);
LABEL_39:
  v99 = sub_1DC2BE518();
  v100 = v123;
  sub_1DC2B8848();

  (*(v124 + 8))(v100, v125);
  OUTLINED_FUNCTION_34();
}

void sub_1DC3419A0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC5157EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v99 = v11 - v10;
  OUTLINED_FUNCTION_12();
  v100 = sub_1DC510FDC();
  v12 = OUTLINED_FUNCTION_0(v100);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v106 = v18 - v17;
  OUTLINED_FUNCTION_12();
  v19 = sub_1DC51179C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v112 = v21;
  v114 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v115 = sub_1DC51164C();
  v27 = OUTLINED_FUNCTION_0(v115);
  v111 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  v34 = type metadata accessor for NLRouterSiriXUSOParse(0);
  v35 = OUTLINED_FUNCTION_10(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v40 = v39 - v38;
  v94 = type metadata accessor for NLRouterSiriXParse(0);
  v41 = OUTLINED_FUNCTION_35(v94);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1();
  v93 = v45 - v44;
  v46 = OUTLINED_FUNCTION_12();
  v47 = type metadata accessor for NLRouterActionCandidate(v46);
  v48 = OUTLINED_FUNCTION_0(v47);
  v107 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1();
  v105 = v53 - v52;
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC34503C() & 1) == 0 || (v54 = *(v1 + *(type metadata accessor for NLRouterServiceRequest(0) + 28))) == 0)
  {
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_34();

    __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
    return;
  }

  v91 = v3;
  v98 = v4;
  v55 = v100;
  v56 = v93;
  v104 = *(v54 + 16);
  if (!v104)
  {
LABEL_22:
    OUTLINED_FUNCTION_19();
    v90 = v98;
LABEL_26:
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v90);
    OUTLINED_FUNCTION_34();
    return;
  }

  v57 = *(v47 + 20);
  v58 = 0;
  v59 = *(v107 + 80);
  OUTLINED_FUNCTION_24();
  v102 = v60 + v61;
  v103 = v62;
  v63 = v14;
  v64 = (v112 + 8);
  v108 = (v63 + 8);
  v97 = *MEMORY[0x1E69D02F8];
  v96 = (v7 + 104);
  v92 = (v7 + 8);
  v65 = (v111 + 8);
  v101 = v60;
  while (1)
  {
    if (v58 >= *(v60 + 16))
    {
      goto LABEL_28;
    }

    sub_1DC342744(v102 + *(v107 + 72) * v58, v105);
    sub_1DC342744(v105 + v103, v56);
    sub_1DC3427F4(v105, type metadata accessor for NLRouterActionCandidate);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    sub_1DC3427F4(v56, type metadata accessor for NLRouterSiriXParse);
LABEL_21:
    ++v58;
    v60 = v101;
    if (v58 == v104)
    {
      goto LABEL_22;
    }
  }

  v95 = v58;
  sub_1DC34279C(v56, v40);
  v113 = sub_1DC5111AC();
  v66 = v106;
  v110 = *(v113 + 16);
  if (!v110)
  {
LABEL_20:

    OUTLINED_FUNCTION_4_13();
    v40 = *(v78 - 256);
    sub_1DC3427F4(v40, v79);
    v56 = v93;
    v58 = v95;
    goto LABEL_21;
  }

  v67 = 0;
  v68 = *(v111 + 80);
  OUTLINED_FUNCTION_24();
  v109 = v113 + v69;
  while (v67 < *(v113 + 16))
  {
    (*(v111 + 16))(v33, v109 + *(v111 + 72) * v67, v115);
    sub_1DC51154C();
    v70 = sub_1DC51177C();
    v71 = *v64;
    (*v64)(v26, v114);
    if ((v70 & 1) == 0)
    {
      goto LABEL_18;
    }

    type metadata accessor for NLRouterBypassUtils();
    sub_1DC51154C();
    sub_1DC51178C();
    v71(v26, v114);
    v72 = sub_1DC307E5C();
    (*v108)(v66, v55);
    if (!v72)
    {
      goto LABEL_18;
    }

    sub_1DC51478C();

    if (!v116[3])
    {
      sub_1DC28EB30(v116, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_18:
      (*v65)(v33, v115);
      goto LABEL_19;
    }

    sub_1DC514B4C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v73 = type metadata accessor for HeuristicRoutingRequest(0);
    v74 = *(v73 + 20);
    v75 = *v96;
    (*v96)(v99, v97, v98);
    v76 = *(v73 + 36);
    sub_1DC32FD38();
    LOBYTE(v73) = v77;
    v66 = v106;
    v55 = v100;
    (*v92)(v99, v98);
    (*v65)(v33, v115);
    if (v73)
    {
      OUTLINED_FUNCTION_4_13();
      sub_1DC3427F4(*(v85 - 256), v86);

      v75(v91, v97, v98);
      v87 = v91;
      v88 = 0;
      v89 = 1;
      v90 = v98;
      goto LABEL_26;
    }

LABEL_19:
    if (v110 == ++v67)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_1DC342154()
{
  OUTLINED_FUNCTION_33();
  v88 = v1;
  OUTLINED_FUNCTION_38_2();
  v91 = sub_1DC51179C();
  v2 = OUTLINED_FUNCTION_0(v91);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v90 = v8 - v7;
  OUTLINED_FUNCTION_12();
  v81 = sub_1DC51122C();
  v9 = OUTLINED_FUNCTION_0(v81);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v80 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C170, &qword_1DC522F38);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v83 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_62();
  v82 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C178, qword_1DC523CB0);
  v24 = OUTLINED_FUNCTION_10(v23);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_62();
  v96 = v30;
  OUTLINED_FUNCTION_12();
  v31 = sub_1DC51164C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  v87 = v35;
  OUTLINED_FUNCTION_22();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v76 - v38;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_62();
  v85 = v0;
  v86 = v40;
  v76 = v11 + 16;
  v77 = v11;
  v78 = (v11 + 8);
  v79 = (v11 + 32);
  v93 = v41 + 16;
  v94 = v41;
  v95 = (v41 + 32);
  v42 = (v4 + 8);
  v92 = (v41 + 8);
  swift_bridgeObjectRetain_n();
  v43 = 0;
  v84 = 0;
  v89 = v31;
  while (1)
  {
    v44 = 0;
    if (v43)
    {
      while (1)
      {
        v45 = *(v43 + 16);
        if (v44 == v45)
        {
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v58, v59, v60, v31);
          sub_1DC28EB30(v29, &qword_1ECC7C178, qword_1DC523CB0);
          goto LABEL_13;
        }

        if (v44 >= v45)
        {
          break;
        }

        v46 = *(v94 + 80);
        OUTLINED_FUNCTION_24();
        (*(v48 + 16))(v29, v43 + v47 + *(v48 + 72) * v44, v31);
        __swift_storeEnumTagSinglePayload(v29, 0, 1, v31);
        v49 = v96;
        sub_1DC342AB0(v29, v96, &qword_1ECC7C178, qword_1DC523CB0);
        if (__swift_getEnumTagSinglePayload(v49, 1, v31) == 1)
        {
          goto LABEL_20;
        }

        v50 = *v95;
        (*v95)(v39, v96, v31);
        if ((sub_1DC5114CC() & 1) == 0)
        {
          goto LABEL_10;
        }

        v51 = v39;
        v52 = v90;
        sub_1DC51154C();
        v53 = sub_1DC51177C();
        v54 = v52;
        v39 = v51;
        v31 = v89;
        (*v42)(v54, v91);
        if (v53)
        {
          v55 = v86;
          v50(v86, v51, v31);
          v56 = v87;
          v50(v87, v55, v31);
          LOBYTE(v55) = v88(v56);
          v57 = v56;
          v39 = v51;
          (*v92)(v57, v31);
          if (v55)
          {

            goto LABEL_21;
          }
        }

        else
        {
LABEL_10:
          (*v92)(v39, v31);
        }

        ++v44;
      }

      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

LABEL_13:
    v61 = *(v85 + 16);
    if (v84 == v61)
    {
      v62 = 1;
      v63 = v81;
    }

    else
    {
      v63 = v81;
      if (v84 >= v61)
      {
        goto LABEL_23;
      }

      v64 = *(v77 + 80);
      OUTLINED_FUNCTION_24();
      v65 = v84;
      (*(v67 + 16))(v82, v85 + v66 + *(v67 + 72) * v84, v63);
      v62 = 0;
      v84 = v65 + 1;
    }

    v68 = v82;
    __swift_storeEnumTagSinglePayload(v82, v62, 1, v63);
    v69 = v68;
    v70 = v83;
    sub_1DC342AB0(v69, v83, &qword_1ECC7C170, &qword_1DC522F38);
    if (__swift_getEnumTagSinglePayload(v70, 1, v63) == 1)
    {
      break;
    }

    v71 = v80;
    (*v79)(v80, v83, v63);
    v72 = sub_1DC5111AC();
    (*v78)(v71, v63);

    v43 = v72;
  }

  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v31);
LABEL_20:
  sub_1DC28EB30(v96, &qword_1ECC7C178, qword_1DC523CB0);

LABEL_21:
  swift_bridgeObjectRelease_n();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC342744(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1DC34279C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_38_2();
  v5 = v4(v3);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1DC3427F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_35(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DC34284C()
{
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC510FDC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC51179C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  (*(v12 + 8))(v17, v9);
  v18 = sub_1DC307E5C();
  (*(v3 + 8))(v8, v0);
  if (v18)
  {

    sub_1DC51478C();

    if (v22)
    {
      sub_1DC2BAD90(&v21, v23);
      sub_1DC291F78(v23, &v21);
      sub_1DC5149FC();
      if (swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        return 1;
      }

      sub_1DC291F78(v23, &v21);
      v19 = sub_1DC342AFC(&v21);

      sub_1DC28EB30(&v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      if (v19)
      {

        return 1;
      }
    }

    else
    {

      sub_1DC28EB30(&v21, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }
  }

  return 0;
}

uint64_t sub_1DC342AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return v4;
}

uint64_t sub_1DC342AFC(uint64_t a1)
{
  sub_1DC28F414(a1, v5, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v6)
  {
    goto LABEL_11;
  }

  sub_1DC28F414(v5, v4, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514C0C();
  if (!OUTLINED_FUNCTION_21())
  {
    sub_1DC514CEC();
    if (OUTLINED_FUNCTION_21() || (sub_1DC514DDC(), OUTLINED_FUNCTION_21()))
    {

      sub_1DC5148BC();
      goto LABEL_7;
    }

    sub_1DC514B7C();
    if (OUTLINED_FUNCTION_21())
    {

      sub_1DC51392C();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_11:
    v1 = 0;
    goto LABEL_12;
  }

  sub_1DC514C8C();
LABEL_7:

  v1 = v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
LABEL_12:
  sub_1DC28EB30(v5, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v1;
}

void sub_1DC342C3C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC510FDC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC51179C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  (*(v12 + 8))(v17, v9);
  v18 = sub_1DC307E5C();
  (*(v3 + 8))(v8, v0);
  if (v18)
  {

    sub_1DC51478C();

    if (v31)
    {
      sub_1DC2BAD90(&v30, v32);
      sub_1DC291F78(v32, &v30);
      sub_1DC5149FC();
      if (swift_dynamicCast())
      {
        goto LABEL_4;
      }

      sub_1DC291F78(v32, &v30);
      v19 = sub_1DC342AFC(&v30);
      sub_1DC28EB30(&v30, &qword_1ECC7D3F0, &qword_1DC5238B0);
      if (!v19)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        goto LABEL_10;
      }

      sub_1DC5145FC();

      v20 = sub_1DC514F8C();

      v21 = sub_1DC2E5024(v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DC5221A0;
      strcpy((inited + 32), "usoQuantifier");
      *(inited + 46) = -4864;
      *(inited + 48) = 0xD000000000000012;
      *(inited + 56) = 0x80000001DC53D420;
      *(inited + 64) = 0x507473694C6F7375;
      *(inited + 72) = 0xEF6E6F697469736FLL;
      *(inited + 80) = 0xD000000000000012;
      *(inited + 88) = 0x80000001DC53D440;
      *(inited + 96) = 0x72656767697274;
      *(inited + 104) = 0xE700000000000000;
      v23 = sub_1DC2E5CA4(inited, v21);
      swift_setDeallocating();
      sub_1DC2A180C();
      v24 = *(v23 + 16);

      if (!sub_1DC5147BC())
      {
LABEL_4:
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
      }

      else
      {
        sub_1DC5145FC();
        v25 = sub_1DC514F8C();

        v26 = sub_1DC2E5024(v25);
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_1DC524AE0;
        strcpy((v27 + 32), "usoQuantifier");
        *(v27 + 46) = -4864;
        *(v27 + 48) = 0xD000000000000012;
        *(v27 + 56) = 0x80000001DC53D420;
        *(v27 + 64) = 0x507473694C6F7375;
        *(v27 + 72) = 0xEF6E6F697469736FLL;
        *(v27 + 80) = 0x656D695465746164;
        *(v27 + 88) = 0xEF72656767697254;
        *(v27 + 96) = 0xD000000000000014;
        *(v27 + 104) = 0x80000001DC540430;
        *(v27 + 112) = 0xD000000000000018;
        *(v27 + 120) = 0x80000001DC540450;
        v28 = sub_1DC2E5CA4(v27, v26);

        swift_setDeallocating();
        sub_1DC2A180C();
        __swift_destroy_boxed_opaque_existential_1Tm(v32);
        v29 = *(v28 + 16);
      }

LABEL_10:

      goto LABEL_11;
    }

    sub_1DC28EB30(&v30, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

LABEL_11:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC343144()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  result = sub_1DC346A1C(0xD000000000000012, 0x80000001DC53E160);
  if (!result)
  {
    result = sub_1DC51801C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3431F0()
{
  if (_MergedGlobals_8 != -1)
  {
    OUTLINED_FUNCTION_69_4();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC34328C()
{
  if (qword_1EDAC83C8 != -1)
  {
    OUTLINED_FUNCTION_46_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3432FC()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(28, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343364()
{
  if (qword_1EDAC83D0 != -1)
  {
    OUTLINED_FUNCTION_24_5();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3433D4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(17, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343440()
{
  if (qword_1EDAC83D8 != -1)
  {
    OUTLINED_FUNCTION_21_9();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3434B0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34351C()
{
  if (qword_1EDAC83E0 != -1)
  {
    OUTLINED_FUNCTION_19_12();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34358C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(47, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3435F8()
{
  if (qword_1EDAC83E8 != -1)
  {
    OUTLINED_FUNCTION_18_11();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343668()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(53, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3436D4()
{
  if (qword_1EDAC83F0 != -1)
  {
    OUTLINED_FUNCTION_85_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC343744()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(17, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3437AC()
{
  if (qword_1EDAC83F8 != -1)
  {
    OUTLINED_FUNCTION_83_1();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34381C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343888()
{
  if (qword_1EDAC8400 != -1)
  {
    OUTLINED_FUNCTION_81_1();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3438F8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343964()
{
  if (qword_1EDAC8408 != -1)
  {
    OUTLINED_FUNCTION_79_3();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

float sub_1DC343A00()
{
  if (qword_1EDAC8410 != -1)
  {
    OUTLINED_FUNCTION_11_12();
  }

  OUTLINED_FUNCTION_22_1();
  v3 = qword_1EDAC8668;
  v4 = unk_1EDAC8670;
  v5 = dword_1EDAC8678;
  v6 = qword_1EDAC8680;
  v7 = unk_1EDAC8688;
  v8 = unk_1EDAC8690;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE8, &unk_1DC524B20);
  sub_1DC3137AC(v0, &v2);
  return v2;
}

void sub_1DC343A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_166();
  a18 = v19;
  a19 = v20;
  a11 = 1061158912;
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  v21 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_8_8(35, 0x80000001DC540B40, &a11, v21, &qword_1EDAC8668);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343B08()
{
  if (qword_1EDAC8418 != -1)
  {
    OUTLINED_FUNCTION_64_1();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343B78()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(39, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343BE4()
{
  if (qword_1EDAC8420 != -1)
  {
    OUTLINED_FUNCTION_63_4();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343C54()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(18, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343CC0()
{
  if (qword_1EDAC8428 != -1)
  {
    OUTLINED_FUNCTION_62_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343D30()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(39, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343D9C()
{
  if (qword_1EDAC8430 != -1)
  {
    OUTLINED_FUNCTION_61_4();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343E0C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(41, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343E78()
{
  if (qword_1EDAC8438 != -1)
  {
    OUTLINED_FUNCTION_60_5();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343EE8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC343F54()
{
  if (qword_1EDAC8440 != -1)
  {
    OUTLINED_FUNCTION_59_4();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC343FC4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(31, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

double sub_1DC344030()
{
  if (qword_1EDAC8440 != -1)
  {
    OUTLINED_FUNCTION_59_4();
  }

  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_5_18();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_100_2(v0);
  *&result = OUTLINED_FUNCTION_4_14().n128_u64[0];
  return result;
}

uint64_t sub_1DC3440A4()
{
  if (qword_1EDAC8448 != -1)
  {
    OUTLINED_FUNCTION_58_6();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC344140()
{
  if (qword_1EDAC8450 != -1)
  {
    OUTLINED_FUNCTION_53_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3441B0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(29, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344218()
{
  if (qword_1EDAC8458 != -1)
  {
    OUTLINED_FUNCTION_51_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC344288()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(23, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3442F0()
{
  if (qword_1EDAC8470 != -1)
  {
    OUTLINED_FUNCTION_45_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC344360()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3443C8()
{
  if (qword_1EDAC8478 != -1)
  {
    OUTLINED_FUNCTION_44_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC344464()
{
  if (qword_1EDAC8480 != -1)
  {
    OUTLINED_FUNCTION_41_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3444D4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344540()
{
  if (qword_1EDAC8498 != -1)
  {
    OUTLINED_FUNCTION_36_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3445B0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(17, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34461C()
{
  if (qword_1EDAC84A0 != -1)
  {
    OUTLINED_FUNCTION_34_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34468C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3446F8()
{
  if (qword_1EDAC84A8 != -1)
  {
    OUTLINED_FUNCTION_32_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344768()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(47, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3447D4()
{
  if (qword_1EDAC84B0 != -1)
  {
    OUTLINED_FUNCTION_30_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344844()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(50, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3448B0()
{
  if (qword_1EDAC84C0 != -1)
  {
    OUTLINED_FUNCTION_26_6();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC344920()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(24, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344988()
{
  if (qword_1EDAC84C8 != -1)
  {
    OUTLINED_FUNCTION_25_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

uint64_t sub_1DC344A0C()
{
  if (qword_1EDAC84D0 != -1)
  {
    OUTLINED_FUNCTION_23_11();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC344A7C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344AE4()
{
  if (qword_1EDAC84D8 != -1)
  {
    OUTLINED_FUNCTION_22_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344B54()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(19, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344BC0()
{
  if (qword_1EDAC84E0 != -1)
  {
    OUTLINED_FUNCTION_20_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC344C58()
{
  if (qword_1EDAC84E8 != -1)
  {
    OUTLINED_FUNCTION_17_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344CC8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(23, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344D34()
{
  if (qword_1EDAC84F0 != -1)
  {
    OUTLINED_FUNCTION_86_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344DA4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(23, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC344E10()
{
  if (qword_1EDAC84F8 != -1)
  {
    OUTLINED_FUNCTION_84_1();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344E80()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(25, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

double sub_1DC344EEC()
{
  if (qword_1EDAC84F8 != -1)
  {
    OUTLINED_FUNCTION_84_1();
  }

  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_5_18();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_100_2(v0);
  *&result = OUTLINED_FUNCTION_4_14().n128_u64[0];
  return result;
}

uint64_t sub_1DC344F60()
{
  if (qword_1EDAC8500 != -1)
  {
    OUTLINED_FUNCTION_82_1();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC344FD0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34503C()
{
  if (qword_1EDAC8508 != -1)
  {
    OUTLINED_FUNCTION_80_3();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3450AC()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(21, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345114()
{
  if (qword_1EDAC8510 != -1)
  {
    OUTLINED_FUNCTION_78_3();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345184()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(27, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3451F0()
{
  if (qword_1EDAC8518 != -1)
  {
    OUTLINED_FUNCTION_77_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345260()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(27, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3452CC()
{
  if (qword_1EDAC8520 != -1)
  {
    OUTLINED_FUNCTION_76_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34533C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(26, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3453A8()
{
  if (qword_1EDAC8528 != -1)
  {
    OUTLINED_FUNCTION_75_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345418()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(17, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345484()
{
  if (qword_1EDAC8530 != -1)
  {
    OUTLINED_FUNCTION_74_3();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3454F4()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(18, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345560()
{
  if (qword_1EDAC8538 != -1)
  {
    OUTLINED_FUNCTION_73_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3455D0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(29, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34563C()
{
  if (qword_1EDAC8540 != -1)
  {
    OUTLINED_FUNCTION_72_4();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3456AC()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(28, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345718()
{
  if (qword_1EDAC8548 != -1)
  {
    OUTLINED_FUNCTION_71_4();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345788()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(40, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3457F4()
{
  if (qword_1EDAC8550 != -1)
  {
    OUTLINED_FUNCTION_70_3();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345864()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(31, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3458D0()
{
  if (qword_1EDAC8558 != -1)
  {
    OUTLINED_FUNCTION_68_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC34596C()
{
  if (qword_1EDAC8560 != -1)
  {
    OUTLINED_FUNCTION_67_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3459DC()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345A48()
{
  if (qword_1EDAC8568 != -1)
  {
    OUTLINED_FUNCTION_66_5();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345AB8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(22, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345B24()
{
  if (qword_1EDAC8570 != -1)
  {
    OUTLINED_FUNCTION_65_2();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC345BC0(uint64_t a1, char a2)
{
  v9[0] = sub_1DC312FB4(a2);
  v9[1] = v2;
  sub_1DC313634();
  sub_1DC313670();
  v3 = OUTLINED_FUNCTION_112_0();
  return OUTLINED_FUNCTION_94_0(v3, v4, v9, v5, v6, v7, v3);
}

uint64_t sub_1DC345C40()
{
  if (qword_1EDAC8578 != -1)
  {
    OUTLINED_FUNCTION_57_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC345CB0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(28, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345D18()
{
  if (qword_1EDAC8580 != -1)
  {
    OUTLINED_FUNCTION_56_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345D88()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_103_0();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(20, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345DF4()
{
  if (qword_1EDAC8588 != -1)
  {
    OUTLINED_FUNCTION_55_9();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345E64()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_109_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(37, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345ED0()
{
  if (qword_1EDAC8590 != -1)
  {
    OUTLINED_FUNCTION_54_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC345F40()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(25, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC345FAC()
{
  if (qword_1EDAC8598 != -1)
  {
    OUTLINED_FUNCTION_52_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34601C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(26, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346088()
{
  if (qword_1EDAC85A0 != -1)
  {
    OUTLINED_FUNCTION_50_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3460F8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(26, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346164()
{
  if (qword_1EDAC85A8 != -1)
  {
    OUTLINED_FUNCTION_48_6();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC346200()
{
  v7[0] = sub_1DC313520(1);
  v7[1] = v0;
  sub_1DC313634();
  sub_1DC313670();
  v1 = OUTLINED_FUNCTION_112_0();
  return OUTLINED_FUNCTION_94_0(v1, v2, v7, v3, v4, v5, v1);
}

uint64_t sub_1DC346280()
{
  if (qword_1EDAC85B0 != -1)
  {
    OUTLINED_FUNCTION_43_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC3462F0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(19, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC34635C()
{
  if (qword_1EDAC85B8 != -1)
  {
    OUTLINED_FUNCTION_42_9();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

uint64_t sub_1DC3463F4()
{
  if (qword_1EDAC85C0 != -1)
  {
    OUTLINED_FUNCTION_39_7();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC346464()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(21, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3464CC()
{
  if (qword_1EDAC85C8 != -1)
  {
    OUTLINED_FUNCTION_38_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_7_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C168, &qword_1DC522F30);
  OUTLINED_FUNCTION_102_2(v0, v1, v2, v3, v4, v5, v6, v7, v9);
  return v10;
}

void sub_1DC34653C()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_113_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_92_0();
  OUTLINED_FUNCTION_8_8(19, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC3465A8()
{
  if (qword_1EDAC85D0 != -1)
  {
    OUTLINED_FUNCTION_35_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC346618()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_110_1();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(31, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346680()
{
  if (qword_1EDAC85D8 != -1)
  {
    OUTLINED_FUNCTION_33_9();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3466F0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(27, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346758()
{
  if (qword_1EDAC85E0 != -1)
  {
    OUTLINED_FUNCTION_31_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3467C8()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(37, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346830()
{
  if (qword_1EDAC85E8 != -1)
  {
    OUTLINED_FUNCTION_29_4();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3468A0()
{
  OUTLINED_FUNCTION_166();
  OUTLINED_FUNCTION_16_5();
  sub_1DC313634();
  OUTLINED_FUNCTION_99();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_8_8(19, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC346908()
{
  if (qword_1EDAC85F0 != -1)
  {
    OUTLINED_FUNCTION_27_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCE0, &qword_1DC524B18);
  OUTLINED_FUNCTION_106_1(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

uint64_t sub_1DC3469A0()
{
  v6 = 1;
  sub_1DC313634();
  sub_1DC313670();
  v0 = OUTLINED_FUNCTION_112_0();
  return OUTLINED_FUNCTION_94_0(v0, v1, &v6, v2, v3, v4, v0);
}

id sub_1DC346A1C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DC5176FC();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t OUTLINED_FUNCTION_73_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_74_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_86_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_1DC3137AC(a1, &a13);
}

uint64_t OUTLINED_FUNCTION_109_1()
{

  return sub_1DC312FB4(2);
}

uint64_t OUTLINED_FUNCTION_113_1()
{

  return sub_1DC313520(1);
}

uint64_t sub_1DC346B48()
{
  type metadata accessor for NLBridgeInstrumentationUtil();
  v0 = swift_allocObject();
  v0[2] = [objc_opt_self() sharedStream];
  v1 = sub_1DC516A4C();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[3] = sub_1DC516A3C();
  v4 = type metadata accessor for FeatureChecker();
  result = sub_1DC2BA4FC();
  v0[7] = v4;
  v0[8] = &off_1F57FB688;
  v0[4] = result;
  qword_1ECC8F410 = v0;
  return result;
}

uint64_t sub_1DC346BE4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1DC28F9B0(a3, v6 + 32);
  return v6;
}

void sub_1DC346C3C()
{
  OUTLINED_FUNCTION_33();
  v93 = v0;
  v2 = v1;
  v86 = v3;
  v87 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1DC516F7C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v89 = v11;
  v90 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_15();
  v82 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  v85 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v81 - v23;
  v25 = sub_1DC510B6C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v91 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_15();
  v81 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_23_1();
  v88 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v81 - v34;
  v94 = [objc_allocWithZone(MEMORY[0x1E69CF300]) init];
  if (v94)
  {
    [v94 setExists_];
  }

  v36 = *(v93 + 24);
  v83 = v8;
  v84 = v6;
  v92 = v36;
  v37 = sub_1DC516A2C();
  if (v37)
  {
    v38 = v37;
    v39 = [objc_allocWithZone(MEMORY[0x1E69CF2E8]) init];
    if (!v39)
    {
      sub_1DC28D414();
      v45 = v89;
      v44 = v90;
      OUTLINED_FUNCTION_19_1();
      v46(v16);
      v47 = sub_1DC516F6C();
      v48 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v48))
      {
        v49 = OUTLINED_FUNCTION_35_8();
        *v49 = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DC287000, v50, v51, "Failed to create CDM bridge context message");
        MEMORY[0x1E1298840](v49, -1, -1);
      }

      else
      {
      }

      (*(v45 + 8))(v16, v44);
      goto LABEL_28;
    }

    v40 = v39;
    if (v2)
    {
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v24, 1, v25);
      if (v41)
      {
        sub_1DC348714(v24);
      }

      else
      {
        v52 = v25;
        v53 = v91;
        OUTLINED_FUNCTION_128();
        v54(v35, v24, v52);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v55 = v88;
        v56(v88, v35, v52);
        v57 = sub_1DC299428(v55);
        [v40 setTrpId_];

        v58 = v53;
        v25 = v52;
        (*(v58 + 8))(v35, v52);
      }
    }

    v59 = v40;
    [v40 setStartedOrChanged_];
    v60 = *(v93 + 56);
    v61 = *(v93 + 64);
    __swift_project_boxed_opaque_existential_1((v93 + 32), v60);
    v62 = v38;
    if ((*(v61 + 8))(v60, v61))
    {
      v63 = v85;
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v63, 1, v25);
      if (v41)
      {
        sub_1DC348714(v63);
      }

      else
      {
        v64 = v25;
        v65 = v91;
        OUTLINED_FUNCTION_128();
        v66 = v81;
        v67(v81, v63, v64);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v68 = v88;
        v69(v88, v66, v64);
        v70 = sub_1DC299428(v68);
        [v59 setSubRequestId_];

        v71 = v65;
        v25 = v64;
        (*(v71 + 8))(v66, v64);
      }
    }

    [v62 setCdmBridgeContext_];
    [*(v93 + 16) emitMessage_];
    v72 = sub_1DC516A1C();
    if (!v72 || (v73 = v72, v74 = [v72 captureSnapshot], v73, !v74))
    {
LABEL_27:

LABEL_28:
      OUTLINED_FUNCTION_34();
      return;
    }

    v75 = v25;
    v76 = [objc_opt_self() context];
    if (v76)
    {
      v77 = v76;
      v78 = v82;
      sub_1DC510B0C();
      v79 = OUTLINED_FUNCTION_39(v78, 1, v75);
      if (v41)
      {
        v80 = 0;
      }

      else
      {
        v80 = sub_1DC510B2C();
        v79 = (*(v91 + 8))(v78, v75);
      }

      OUTLINED_FUNCTION_13_10(v79, sel_logWithEventContext_requestIdentifier_);

      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC347240()
{
  OUTLINED_FUNCTION_33();
  v111 = v0;
  v2 = v1;
  v103 = v3;
  v104 = v4;
  v6 = v5;
  LODWORD(v110) = v7;
  LODWORD(v109) = v8;
  v9 = sub_1DC516F7C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v97 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_15();
  v101 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  v102 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v97 - v26;
  v28 = sub_1DC510B6C();
  v29 = OUTLINED_FUNCTION_0(v28);
  v107 = v30;
  v108 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  v100 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v105 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v97 - v37;
  v39 = [objc_allocWithZone(MEMORY[0x1E69CF2F0]) init];
  if (!v39)
  {
    sub_1DC28D414();
    v51 = OUTLINED_FUNCTION_9_12();
    v52(v51);
    v53 = sub_1DC516F6C();
    v54 = sub_1DC517BAC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v55);
      OUTLINED_FUNCTION_16_6(&dword_1DC287000, v56, v54, "Failed to create CDM finished event");
      OUTLINED_FUNCTION_40_0();
    }

    (*(v12 + 8))(v17, v9);
    goto LABEL_33;
  }

  v98 = v12;
  v99 = v9;
  v112 = v39;
  [v39 setDelegatedUserDialogAct_];
  if (v110)
  {
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  [v112 setStatus_];
  v41 = v111;
  v42 = v2;
  v110 = v111[3];
  v43 = sub_1DC516A2C();
  if (v43)
  {
    v44 = v43;
    v45 = v6;
    v46 = v41;
    v47 = [objc_allocWithZone(MEMORY[0x1E69CF2E8]) init];
    if (!v47)
    {
      v59 = v44;
      sub_1DC28D414();
      v61 = v98;
      v60 = v99;
      OUTLINED_FUNCTION_19_1();
      v62 = v106;
      v63(v106);
      v64 = sub_1DC516F6C();
      v65 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v65))
      {
        v66 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v66);
        OUTLINED_FUNCTION_16_6(&dword_1DC287000, v67, v62, "Failed to create CDM bridge context message");
        OUTLINED_FUNCTION_40_0();
      }

      else
      {
      }

      (*(v61 + 8))(v62, v60);
      goto LABEL_33;
    }

    v48 = v47;
    v109 = v44;
    v106 = v45;
    v49 = v108;
    if (v42)
    {
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v27, 1, v49);
      if (v50)
      {
        sub_1DC348714(v27);
      }

      else
      {
        v68 = v107;
        OUTLINED_FUNCTION_128();
        v69(v38, v27, v49);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v70 = v105;
        v71(v105, v38, v49);
        v72 = sub_1DC299428(v70);
        [v48 setTrpId_];

        (*(v68 + 8))(v38, v49);
      }
    }

    v73 = v48;
    [v48 setEnded_];
    v74 = v46[7];
    v75 = v46[8];
    v76 = v46;
    __swift_project_boxed_opaque_existential_1(v46 + 4, v74);
    v77 = *(v75 + 8);
    v78 = v75;
    v79 = v108;
    if (v77(v74, v78))
    {
      v80 = v102;
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v80, 1, v79);
      if (v50)
      {
        sub_1DC348714(v80);
      }

      else
      {
        v81 = v107;
        OUTLINED_FUNCTION_128();
        v82 = v100;
        v83(v100, v80, v79);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v84 = v105;
        v85(v105, v82, v79);
        v86 = sub_1DC299428(v84);
        [v73 setSubRequestId_];

        (*(v81 + 8))(v82, v79);
      }
    }

    v87 = v109;
    [v109 setCdmBridgeContext_];
    [v76[2] emitMessage_];
    v88 = sub_1DC516A1C();
    if (!v88 || (v89 = v88, v90 = [v88 captureSnapshot], v89, !v90))
    {
LABEL_32:

LABEL_33:
      OUTLINED_FUNCTION_34();
      return;
    }

    v91 = [objc_opt_self() context];
    if (v91)
    {
      v92 = v91;
      v93 = v101;
      sub_1DC510B0C();
      v94 = v108;
      v95 = OUTLINED_FUNCTION_39(v93, 1, v108);
      if (v50)
      {
        v96 = 0;
      }

      else
      {
        v96 = sub_1DC510B2C();
        v95 = (*(v107 + 8))(v93, v94);
      }

      OUTLINED_FUNCTION_13_10(v95, sel_logWithEventContext_requestIdentifier_);

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC347920()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  LODWORD(v100) = v2;
  v4 = v3;
  v93 = v5;
  v94 = v6;
  v101 = v7;
  v8 = sub_1DC516F7C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  OUTLINED_FUNCTION_15();
  v91 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  v92 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v88 - v25;
  v27 = sub_1DC510B6C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v97 = v29;
  v98 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v90 = v32;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  v95 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v88 - v36;
  v38 = [objc_allocWithZone(MEMORY[0x1E69CF2F8]) init];
  if (!v38)
  {
    sub_1DC28D414();
    v46 = OUTLINED_FUNCTION_9_12();
    v47(v46);
    v48 = sub_1DC516F6C();
    v49 = sub_1DC517BAC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v50);
      OUTLINED_FUNCTION_16_6(&dword_1DC287000, v51, v49, "Failed to create CDM failed event");
      OUTLINED_FUNCTION_40_0();
    }

    (*(v11 + 8))(v16, v8);
    goto LABEL_32;
  }

  v88 = v8;
  v99 = v38;
  [v38 setReason_];
  v100 = v1;
  v39 = v1[3];
  v40 = v4;
  v41 = sub_1DC516A2C();
  if (v41)
  {
    v42 = v41;
    v89 = [objc_allocWithZone(MEMORY[0x1E69CF2E8]) init];
    if (!v89)
    {
      v54 = sub_1DC28D414();
      v55 = v11;
      v56 = v96;
      v57 = v88;
      (*(v11 + 16))(v96, v54, v88);
      v58 = sub_1DC516F6C();
      v59 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v59))
      {
        v60 = v42;
        v61 = OUTLINED_FUNCTION_35_8();
        *v61 = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DC287000, v62, v63, "Failed to create CDM bridge context message");
        MEMORY[0x1E1298840](v61, -1, -1);
      }

      else
      {
      }

      (*(v55 + 8))(v56, v57);
      goto LABEL_32;
    }

    v96 = v42;
    v43 = v98;
    v44 = v89;
    if (v40)
    {
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v26, 1, v43);
      if (v45)
      {
        sub_1DC348714(v26);
      }

      else
      {
        v64 = v97;
        OUTLINED_FUNCTION_128();
        v65(v37, v26, v43);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v66 = v95;
        v67(v95, v37, v43);
        v68 = sub_1DC299428(v66);
        [v44 setTrpId_];

        (*(v64 + 8))(v37, v43);
      }
    }

    [v44 setFailed_];
    v69 = v100;
    v70 = v100[7];
    v71 = v100[8];
    __swift_project_boxed_opaque_existential_1(v100 + 4, v70);
    v72 = (*(v71 + 8))(v70, v71);
    v73 = v96;
    if (v72)
    {
      v74 = v92;
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v74, 1, v43);
      if (v45)
      {
        sub_1DC348714(v74);
      }

      else
      {
        v75 = v97;
        v76 = v90;
        (*(v97 + 32))(v90, v74, v43);
        sub_1DC34877C();
        v77 = v95;
        (*(v75 + 16))(v95, v76, v43);
        v78 = sub_1DC299428(v77);
        [v89 setSubRequestId_];

        v79 = v75;
        v44 = v89;
        (*(v79 + 8))(v76, v43);
      }
    }

    [v73 setCdmBridgeContext_];
    [v69[2] emitMessage_];
    v80 = sub_1DC516A1C();
    if (!v80 || (v81 = v80, v82 = [v80 captureSnapshot], v81, !v82))
    {

LABEL_31:
LABEL_32:
      OUTLINED_FUNCTION_34();
      return;
    }

    v83 = [objc_opt_self() context];
    if (v83)
    {
      v84 = v83;
      v85 = v91;
      sub_1DC510B0C();
      v86 = OUTLINED_FUNCTION_39(v85, 1, v43);
      if (v45)
      {
        v87 = 0;
      }

      else
      {
        v87 = sub_1DC510B2C();
        v86 = (*(v97 + 8))(v85, v43);
      }

      OUTLINED_FUNCTION_13_10(v86, sel_logWithEventContext_requestIdentifier_);

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC347FF0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v30 = v2;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  v15 = *(v0 + 24);
  v16 = sub_1DC516A2C();
  if (!v16)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v22(v11);
    v23 = sub_1DC516F6C();
    v24 = sub_1DC517BAC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v25);
      _os_log_impl(&dword_1DC287000, v23, v24, "Failed to create wrapper event for logNLV3ServerFallbackDeprecated", v14, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    (*(v6 + 8))(v11, v3);
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E69CF3A8]) init];
  if (!v18)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v26(v14);
    v27 = sub_1DC516F6C();
    v28 = sub_1DC517BAC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_35_8();
      *v29 = 0;
      _os_log_impl(&dword_1DC287000, v27, v28, "Failed to create nlV3ServerFallbackDeprecated event", v29, 2u);
      MEMORY[0x1E1298840](v29, -1, -1);
    }

    else
    {
    }

    (*(v6 + 8))(v14, v3);
LABEL_13:
    OUTLINED_FUNCTION_34();
    return;
  }

  v31 = v18;
  v19 = sub_1DC3482AC(v30);
  [v31 setFallbackReason_];
  [v17 setNlv3ServerFallbackDeprecated_];
  [*(v1 + 16) emitMessage_];

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3482AC(uint64_t a1)
{
  v2 = sub_1DC5161DC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = OUTLINED_FUNCTION_9_12();
  v12(v11, a1, v2);
  v13 = (*(v5 + 88))(v10, v2);
  if (v13 == *MEMORY[0x1E69D0768])
  {
    return 5;
  }

  if (v13 == *MEMORY[0x1E69D0770])
  {
    return 4;
  }

  if (v13 == *MEMORY[0x1E69D0758])
  {
    return 2;
  }

  if (v13 == *MEMORY[0x1E69D0780])
  {
    return 3;
  }

  if (v13 == *MEMORY[0x1E69D0760])
  {
    return 1;
  }

  if (v13 == *MEMORY[0x1E69D0778])
  {
    return 6;
  }

  if (v13 != *MEMORY[0x1E69D0788])
  {
    (*(v5 + 8))(v10, v2);
  }

  return 0;
}

void sub_1DC348448()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1DC510B6C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = [objc_allocWithZone(MEMORY[0x1E69CF2A8]) init];
  if (!v15)
  {
    goto LABEL_6;
  }

  v27 = v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E69CF2A0]) init];
  if (v16)
  {
    v26 = v16;
    v17 = [objc_allocWithZone(MEMORY[0x1E69CF180]) init];
    if (v17)
    {
      v25 = v17;
      v18 = [objc_allocWithZone(MEMORY[0x1E69CF190]) init];
      if (v18)
      {
        v19 = v18;
        sub_1DC34877C();
        v20 = *(v9 + 16);
        v20(v14, v3, v6);
        v21 = sub_1DC299428(v14);
        [v27 setNlId_];

        sub_1DC3487C0(48, 0xE100000000000000, v27);
        v20(v14, v5, v6);
        v22 = sub_1DC299428(v14);
        [v19 setRequestId_];

        [v25 setSiriClientSetupLink_];
        [v26 setEventMetadata_];
        [v26 setCdmSetupLink_];
        [*(v1 + 16) emitMessage_];

LABEL_6:
        OUTLINED_FUNCTION_34();
        return;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_34();
}

void *sub_1DC3486B0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  return v0;
}

uint64_t sub_1DC3486E0()
{
  sub_1DC3486B0();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1DC348714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DC34877C()
{
  result = qword_1ECC7B9C8;
  if (!qword_1ECC7B9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC7B9C8);
  }

  return result;
}

void sub_1DC3487C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();

  [a3 setResultCandidateId_];
}

uint64_t sub_1DC348848()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F7C8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F7C8);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD00000000000001BLL;
  v2[5] = 0x80000001DC524BB0;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC348924(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DC51721C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v10);
  if (qword_1ECC7FC10 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v18 = __swift_project_value_buffer(v2, qword_1ECC8F7C8);
  (*(v5 + 16))(v9, v18, v2);
  v19 = sub_1DC303854(v17, v9, &unk_1F57F7CF8);
  (*(v13 + 8))(a1, v10);
  return v19;
}

uint64_t sub_1DC348ADC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC7FC10 != -1)
  {
    OUTLINED_FUNCTION_0_19();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F7C8);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC348B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC348924(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC348BA8()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F7E0);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC524C20;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC348C7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v57 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v57 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v57 - v15;
  v17 = sub_1DC5172FC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC82CE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  __swift_project_value_buffer(v17, qword_1ECC8F7E0);
  v22 = sub_1DC5172DC();
  (*(v18 + 8))(v21, v17);
  if (v22)
  {
    v23 = sub_1DC5171EC();
    sub_1DC30F668(0x656D614E64726163, 0xE800000000000000, v23, v16);

    v24 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v16);
    if (v25)
    {
      sub_1DC30F72C(v16);
    }

    else
    {
      sub_1DC382AC0();
      v58 = v37;
      v39 = v38;
      OUTLINED_FUNCTION_7_1(v24);
      (*(v40 + 8))(v16, v24);
      v57 = v39;
      if (v39)
      {
LABEL_10:
        v41 = sub_1DC5171EC();
        sub_1DC30F668(0x614E6E6F73726570, 0xEA0000000000656DLL, v41, v14);

        OUTLINED_FUNCTION_3_3(v14);
        if (v25)
        {
          sub_1DC30F72C(v14);
        }

        else
        {
          sub_1DC382AC0();
          v31 = v42;
          v32 = v43;
          OUTLINED_FUNCTION_7_1(v24);
          (*(v44 + 8))(v14, v24);
          if (v32)
          {
LABEL_15:
            v45 = sub_1DC5171EC();
            sub_1DC30F668(0x42676E6975737369, 0xEF7373656E697375, v45, v11);

            OUTLINED_FUNCTION_3_3(v11);
            if (v25)
            {
              sub_1DC30F72C(v11);
            }

            else
            {
              sub_1DC382AC0();
              v33 = v46;
              v34 = v47;
              OUTLINED_FUNCTION_7_1(v24);
              (*(v48 + 8))(v11, v24);
              if (v34)
              {
LABEL_20:
                v49 = sub_1DC5171EC();
                sub_1DC30F668(0x5462755364726163, 0xEB00000000657079, v49, v8);

                OUTLINED_FUNCTION_3_3(v8);
                if (v25)
                {
                  sub_1DC30F72C(v8);
                }

                else
                {
                  sub_1DC382AC0();
                  v35 = v50;
                  v36 = v51;
                  OUTLINED_FUNCTION_7_1(v24);
                  (*(v52 + 8))(v8, v24);
                  if (v36)
                  {
                    v53 = sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1(v53);
                    result = (*(v54 + 8))(a1);
LABEL_26:
                    v30 = v57;
                    v29 = v58;
                    goto LABEL_27;
                  }
                }

                v55 = sub_1DC51721C();
                OUTLINED_FUNCTION_7_1(v55);
                (*(v56 + 8))(a1);

                v35 = 0;
                v36 = 0xE000000000000000;
                goto LABEL_26;
              }
            }

            v33 = 0;
            v34 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v31 = 0;
        v32 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v57 = 0xE000000000000000;
    v58 = 0;
    goto LABEL_10;
  }

  v26 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v26);
  result = (*(v27 + 8))(a1);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
LABEL_27:
  *a2 = v29;
  a2[1] = v30;
  a2[2] = v31;
  a2[3] = v32;
  a2[4] = v33;
  a2[5] = v34;
  a2[6] = v35;
  a2[7] = v36;
  return result;
}

uint64_t sub_1DC3491C8()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x656D614E64726143, 0xEA0000000000203ALL);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x6F73726550207C20, 0xEF203A656D614E6ELL);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0xD000000000000014, 0x80000001DC540D10);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0xD000000000000010, 0x80000001DC540D30);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  return 0;
}

uint64_t sub_1DC3492CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC82CE8 != -1)
  {
    OUTLINED_FUNCTION_0_20();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F7E0);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC349360@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC348C7C(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1DC3493A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DC3493E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DC349444()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F7F8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F7F8);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD000000000000018;
  v2[5] = 0x80000001DC524C70;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC349520(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DC51721C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v17, a1, v10);
  if (qword_1ECC7FF90 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v18 = __swift_project_value_buffer(v2, qword_1ECC8F7F8);
  (*(v5 + 16))(v9, v18, v2);
  v19 = sub_1DC303854(v17, v9, &unk_1F57F7E88);
  (*(v13 + 8))(a1, v10);
  return v19;
}

uint64_t sub_1DC3496D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC7FF90 != -1)
  {
    OUTLINED_FUNCTION_0_21();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F7F8);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC349760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC349520(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC349798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v117 = &v107 - v5;
  v126 = sub_1DC5157EC();
  v6 = OUTLINED_FUNCTION_0(v126);
  v115 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v114 = v11 - v10;
  v12 = sub_1DC51164C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v120 = sub_1DC51122C();
  v21 = OUTLINED_FUNCTION_0(v120);
  v118 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v119 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v107 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v107 - v33;
  v35 = type metadata accessor for NLRouterNLParseResponse(0);
  v36 = OUTLINED_FUNCTION_35(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v122 = v40 - v39;
  v41 = sub_1DC516F5C();
  v42 = OUTLINED_FUNCTION_0(v41);
  v124 = v43;
  v125 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_1();
  v48 = v47 - v46;
  v49 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v50 = sub_1DC2BE518();
  v51 = OUTLINED_FUNCTION_130();
  v123 = v48;
  v127 = v49;
  sub_1DC2A2ED0("HeuristicRules.StopRecordingRule", 32, 2, v50, v51 & 1, v48);

  v52 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v116 = a1;
  sub_1DC28F358(a1 + v52, v30, &qword_1ECC7C158, &unk_1DC5234A0);
  v53 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v53) == 1)
  {
    sub_1DC28EB30(v30, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v35);
LABEL_4:
    sub_1DC28EB30(v34, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v126);
    v61 = v124;
    v60 = v125;
    v62 = v123;
LABEL_24:
    v88 = sub_1DC2BE518();
    sub_1DC2B8848();

    return (*(v61 + 8))(v62, v60);
  }

  sub_1DC28F358(v30, v34, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v30, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    goto LABEL_4;
  }

  v63 = v122;
  sub_1DC2E53A4(v34, v122);
  v64 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v65 = sub_1DC345A48();
  v67 = v66;
  if (v65 == sub_1DC312FB4(0) && v67 == v68)
  {

    goto LABEL_21;
  }

  v70 = sub_1DC51825C();

  if (v70)
  {
LABEL_21:
    OUTLINED_FUNCTION_4();
    v83 = v63;
    goto LABEL_22;
  }

  v72 = *v63;
  v73 = *(*v63 + 16);
  v110 = v64;
  v111 = v73;
  if (!v73)
  {
LABEL_19:
    OUTLINED_FUNCTION_4();
    v83 = v122;
LABEL_22:
    sub_1DC2E5408(v83, v82);
    v60 = v125;
    v84 = v126;
    v62 = v123;
    v61 = v124;
LABEL_23:
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
    goto LABEL_24;
  }

  v74 = 0;
  v75 = v72 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
  v113 = (v118 + 8);
  v121 = xmmword_1DC522F20;
  v109 = v72;
  v108 = v75;
  v107 = v118 + 16;
LABEL_12:
  if (v74 < *(v72 + 16))
  {
    (*(v118 + 16))(v119, v75 + *(v118 + 72) * v74, v120);
    v112 = v74 + 1;
    result = sub_1DC5111AC();
    v76 = result;
    v77 = 0;
    v78 = *(result + 16);
    do
    {
      if (v78 == v77)
      {
        (*v113)(v119, v120);

        v74 = v112;
        v72 = v109;
        v75 = v108;
        if (v112 != v111)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      if (v77 >= *(v76 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      (*(v15 + 16))(v20, v76 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v77++, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC70, &qword_1DC52F250);
      v79 = swift_allocObject();
      *(v79 + 16) = v121;
      *(v79 + 32) = sub_1DC51393C();
      sub_1DC30AD70();
      v81 = v80;

      result = (*(v15 + 8))(v20, v12);
    }

    while ((v81 & 1) == 0);
    (*v113)(v119, v120);

    sub_1DC345A48();
    v89 = sub_1DC312F68();
    if (v89 == 4)
    {
      OUTLINED_FUNCTION_4();
      sub_1DC2E5408(v122, v90);
      v91 = v117;
      OUTLINED_FUNCTION_19();
      v84 = v126;
      __swift_storeEnumTagSinglePayload(v92, v93, v94, v126);
      v61 = v124;
      v60 = v125;
      v62 = v123;
LABEL_29:
      sub_1DC28EB30(v91, &qword_1ECC7CA40, &unk_1DC5233A0);
      goto LABEL_23;
    }

    v91 = v117;
    sub_1DC312E7C(v89, v117);
    v84 = v126;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v91, 1, v126);
    v61 = v124;
    v60 = v125;
    v62 = v123;
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_4();
      sub_1DC2E5408(v122, v96);
      goto LABEL_29;
    }

    v98 = v114;
    v97 = v115;
    v99 = *(v115 + 32);
    v99(v114, v91, v84);
    v100 = type metadata accessor for HeuristicRoutingRequest(0);
    v101 = *(v100 + 36);
    v102 = v116 + *(v100 + 20);
    sub_1DC32FD38();
    v104 = v103;
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v122, v105);
    if (v104)
    {
      v106 = v128;
      v99(v128, v98, v84);
      __swift_storeEnumTagSinglePayload(v106, 0, 1, v84);
      goto LABEL_24;
    }

    (*(v97 + 8))(v98, v84);
    goto LABEL_23;
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1DC34A028()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v54 = v5;
  v55 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v53 = v8;
  OUTLINED_FUNCTION_12();
  v66 = sub_1DC5119DC();
  v9 = *(v66 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v66 - 8);
  OUTLINED_FUNCTION_8();
  v60 = v11 - v12;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v59 = &v53 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v53 - v16;
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC51620C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = v2[4];
  v27 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  (*(v20 + 104))(v25, *MEMORY[0x1E69D07F0], v17);
  sub_1DC5162AC();
  (*(v20 + 8))(v25, v17);
  if (!v68[3])
  {
    sub_1DC31405C(v68);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCF0, &unk_1DC5253B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v62 = 0;
    v28 = MEMORY[0x1E69E7CC0];
    v68[0] = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v28 = v67;
  v68[0] = v67;
  v62 = *(v67 + 16);
LABEL_6:
  v29 = 0;
  v65 = v9 + 16;
  v63 = v9 + 8;
  while (1)
  {
    v30 = *(v28 + 16);
    if (v62 == v29)
    {
      v29 = *(v28 + 16);
      goto LABEL_29;
    }

    if (v29 >= v30)
    {
      break;
    }

    v31 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v32 = *(v9 + 72);
    v33 = *(v9 + 16);
    v34 = OUTLINED_FUNCTION_6_13();
    v33(v34);
    sub_1DC34A5EC();
    v36 = v35;
    v37 = *(v9 + 8);
    v37(v27, v0);
    ++v29;
    if (v36)
    {
      v38 = *(v28 + 16);
      v30 = v29 - 1;
      if (v38 != v29)
      {
        v56 = (v9 + 40);
        v39 = v31 + v32 * v29;
        while (v29 < v38)
        {
          v61 = v28;
          v40 = OUTLINED_FUNCTION_6_13();
          v33(v40);
          sub_1DC34A5EC();
          v42 = v41;
          v37(v27, v0);
          if (v42)
          {
            v28 = v61;
          }

          else
          {
            if (v29 == v30)
            {
              v28 = v61;
            }

            else
            {
              v28 = v61;
              if ((v30 & 0x8000000000000000) != 0)
              {
                goto LABEL_36;
              }

              if (v30 >= *(v61 + 16))
              {
                goto LABEL_37;
              }

              v58 = *(v61 + 16);
              v57 = v30 * v32;
              v43 = v66;
              (v33)(v59, v61 + v31 + v30 * v32, v66);
              if (v29 >= v58)
              {
                goto LABEL_38;
              }

              (v33)(v60, v28 + v39, v43);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v28 = sub_1DC34B7DC(v28);
              }

              v27 = v56;
              v0 = v66;
              v61 = *v56;
              (v61)(v28 + v31 + v57, v60, v66);
              if (v29 >= *(v28 + 16))
              {
                goto LABEL_39;
              }

              (v61)(v28 + v39, v59, v0);
              v68[0] = v28;
            }

            ++v30;
          }

          ++v29;
          v38 = *(v28 + 16);
          v39 += v32;
          if (v29 == v38)
          {
            if (v29 < v30)
            {
              goto LABEL_40;
            }

            goto LABEL_29;
          }
        }

        goto LABEL_35;
      }

LABEL_29:
      sub_1DC34B644(v30, v29);
      v44 = *(v68[0] + 16);
      v45 = v62 - v44;
      if (v62 > v44)
      {

        v46 = sub_1DC28D414();
        v48 = v53;
        v47 = v54;
        v49 = v55;
        (*(v54 + 16))(v53, v46, v55);
        v50 = sub_1DC516F6C();
        v51 = sub_1DC517B9C();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 134217984;
          *(v52 + 4) = v45;

          _os_log_impl(&dword_1DC287000, v50, v51, "Ignoring %ld SDAs due to app id", v52, 0xCu);
          MEMORY[0x1E1298840](v52, -1, -1);

          (*(v47 + 8))(v48, v49);
        }

        else
        {

          (*(v47 + 8))(v48, v49);
        }
      }

      OUTLINED_FUNCTION_34();
      return;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1DC34A5EC()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC511E7C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v82 = v2;
  v83 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v81 = v5;
  OUTLINED_FUNCTION_12();
  v6 = sub_1DC511E9C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v85 = v8;
  v86 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v84 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC51174C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v88 = v14;
  v89 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v87 = v17;
  OUTLINED_FUNCTION_12();
  v18 = sub_1DC511B7C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v91 = v20;
  v92 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v90 = v23;
  OUTLINED_FUNCTION_12();
  v97 = sub_1DC51164C();
  v24 = OUTLINED_FUNCTION_0(v97);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_8();
  v31 = v29 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v96 = &v80 - v33;
  OUTLINED_FUNCTION_12();
  v34 = sub_1DC51149C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v94 = v36;
  v95 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_1();
  v93 = v39;
  OUTLINED_FUNCTION_12();
  v40 = sub_1DC510FDC();
  v41 = OUTLINED_FUNCTION_0(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  v48 = v46 - v47;
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v80 - v50;
  v52 = sub_1DC51176C();
  v53 = OUTLINED_FUNCTION_0(v52);
  v55 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_1();
  v60 = v59 - v58;
  if (sub_1DC51194C())
  {
    sub_1DC5119CC();
    sub_1DC51175C();
    (*(v55 + 8))(v60, v52);
    sub_1DC34AC38();
    (*(v43 + 8))(v51, v40);
  }

  else
  {
    v61 = v51;
    if (sub_1DC51191C())
    {
      v62 = v93;
      sub_1DC5119AC();
      v63 = v96;
      sub_1DC51148C();
      (*(v94 + 8))(v62, v95);
      sub_1DC34ADEC();
      (*(v26 + 8))(v63, v97);
    }

    else
    {
      if (sub_1DC51195C())
      {
        v64 = v90;
        sub_1DC51192C();
        v65 = sub_1DC5111AC();
        (*(v91 + 8))(v64, v92);
        v66 = 0;
        v67 = *(v65 + 16);
        v68 = v97;
        while (v67 != v66)
        {
          if (v66 >= *(v65 + 16))
          {
            __break(1u);
            goto LABEL_24;
          }

          (*(v26 + 16))(v31, v65 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v66++, v68);
          sub_1DC34ADEC();
          v70 = v69;
          (*(v26 + 8))(v31, v68);
          if (v70)
          {
            break;
          }
        }
      }

      else
      {
        if ((sub_1DC51193C() & 1) == 0)
        {
          if (sub_1DC51199C())
          {
            v77 = v84;
            sub_1DC51197C();
            sub_1DC511E8C();
            v79 = v85;
            v78 = v86;
          }

          else
          {
            if ((sub_1DC51198C() & 1) == 0)
            {
              goto LABEL_17;
            }

            v77 = v81;
            sub_1DC51196C();
            sub_1DC511E6C();
            v79 = v82;
            v78 = v83;
          }

          (*(v79 + 8))(v77, v78);
          sub_1DC34AC38();
          (*(v43 + 8))(v61, v40);
          goto LABEL_17;
        }

        v71 = v87;
        sub_1DC5119BC();
        v72 = sub_1DC5111AC();
        (*(v88 + 8))(v71, v89);
        v73 = 0;
        v74 = *(v72 + 16);
        while (v74 != v73)
        {
          if (v73 >= *(v72 + 16))
          {
LABEL_24:
            __break(1u);
            return;
          }

          (*(v43 + 16))(v48, v72 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v73++, v40);
          sub_1DC34AC38();
          v76 = v75;
          (*(v43 + 8))(v48, v40);
          if (v76)
          {
            break;
          }
        }
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_34();
}

void sub_1DC34AC38()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC511E1C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC510FBC();
  v10 = 0;
  v15 = *(v9 + 16);
  v11 = (v3 + 8);
  while (1)
  {
    if (v15 == v10)
    {
      goto LABEL_11;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    (*(v3 + 16))(v8, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v0);
    if (sub_1DC511DBC() == 0xD000000000000016 && 0x80000001DC540DA0 == v12)
    {

      (*v11)(v8, v0);
LABEL_11:

      OUTLINED_FUNCTION_34();
      return;
    }

    ++v10;
    v14 = sub_1DC51825C();

    (*v11)(v8, v0);
    if (v14)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DC34ADEC()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC511A2C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v74 = v2;
  v75 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_1();
  v73 = v5;
  OUTLINED_FUNCTION_12();
  v6 = sub_1DC51179C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v77 = v8;
  v78 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v76 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC511B9C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v80 = v14;
  v81 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v79 = v17;
  OUTLINED_FUNCTION_12();
  v18 = sub_1DC511D7C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v83 = v20;
  v84 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v82 = v23;
  OUTLINED_FUNCTION_12();
  v24 = sub_1DC511A0C();
  v25 = OUTLINED_FUNCTION_0(v24);
  v86 = v26;
  v87 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  v85 = v29;
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC511BFC();
  v31 = OUTLINED_FUNCTION_0(v30);
  v89 = v32;
  v90 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v88 = v35;
  OUTLINED_FUNCTION_12();
  v36 = sub_1DC5114BC();
  v37 = OUTLINED_FUNCTION_0(v36);
  v91 = v38;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  v44 = sub_1DC51139C();
  v45 = OUTLINED_FUNCTION_0(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_1();
  v52 = v51 - v50;
  v53 = sub_1DC510FDC();
  v54 = OUTLINED_FUNCTION_0(v53);
  v92 = v55;
  v93 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_1();
  v60 = v59 - v58;
  v61 = sub_1DC51136C();
  v62 = OUTLINED_FUNCTION_0(v61);
  v64 = v63;
  v66 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_1();
  v69 = v68 - v67;
  if (sub_1DC5114DC())
  {
    sub_1DC5115CC();
    sub_1DC51134C();
    (*(v64 + 8))(v69, v61);
  }

  else if (sub_1DC5114EC())
  {
    sub_1DC5115EC();
    OUTLINED_FUNCTION_144();
    sub_1DC51137C();
    (*(v47 + 8))(v52, v44);
  }

  else if (sub_1DC51150C())
  {
    sub_1DC51160C();
    sub_1DC5114AC();
    (*(v91 + 8))(v43, v36);
  }

  else
  {
    if (sub_1DC5115AC())
    {
      v70 = v88;
      sub_1DC51155C();
      OUTLINED_FUNCTION_144();
      sub_1DC511BEC();
      v72 = v89;
      v71 = v90;
    }

    else if (sub_1DC51156C())
    {
      v70 = v85;
      sub_1DC5114FC();
      OUTLINED_FUNCTION_144();
      sub_1DC5119FC();
      v72 = v86;
      v71 = v87;
    }

    else if (sub_1DC5115BC())
    {
      v70 = v82;
      sub_1DC51158C();
      OUTLINED_FUNCTION_144();
      sub_1DC511D6C();
      v72 = v83;
      v71 = v84;
    }

    else if (sub_1DC51159C())
    {
      v70 = v79;
      sub_1DC51153C();
      OUTLINED_FUNCTION_144();
      sub_1DC511B8C();
      v72 = v80;
      v71 = v81;
    }

    else if (sub_1DC5114CC())
    {
      v70 = v76;
      sub_1DC51154C();
      OUTLINED_FUNCTION_144();
      sub_1DC51178C();
      v72 = v77;
      v71 = v78;
    }

    else
    {
      if ((sub_1DC51157C() & 1) == 0)
      {
        goto LABEL_21;
      }

      v70 = v73;
      sub_1DC51152C();
      OUTLINED_FUNCTION_144();
      sub_1DC511A1C();
      v72 = v74;
      v71 = v75;
    }

    (*(v72 + 8))(v70, v71);
  }

  sub_1DC34AC38();
  (*(v92 + 8))(v60, v93);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

size_t sub_1DC34B388(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1DC34B474(v8, v7);
  v10 = *(sub_1DC5119DC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC34B570(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_1DC34B474(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCF8, &qword_1DC524CD8);
  v4 = *(sub_1DC5119DC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC34B570(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC5119DC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC5119DC();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

int64_t sub_1DC34B644(int64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DC34B774(result, 1);
  v8 = *v2;
  v9 = *(sub_1DC5119DC() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1DC34B570(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

size_t sub_1DC34B774(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1DC34B388(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void sub_1DC34B7F0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC516F7C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3();
  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v10 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = v10;
  v12 = sub_1DC5176FC();
  v13 = [v11 integerForKey_];

  if (!v13)
  {

LABEL_7:
    v15 = 1300;
    goto LABEL_8;
  }

  v14 = sub_1DC5176FC();
  v15 = [v11 integerForKey_];

  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  v16(v0);
  v17 = sub_1DC516F6C();
  v18 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v18))
  {
    v19 = OUTLINED_FUNCTION_63();
    *v19 = 134217984;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_1DC287000, v17, v18, "cdmClient timeout changed from default to : %ld ms", v19, 0xCu);
    OUTLINED_FUNCTION_102();
  }

  (*(v6 + 8))(v0, v3);
LABEL_8:
  *v2 = v15;
  v20 = *MEMORY[0x1E69E7F38];
  v21 = sub_1DC51735C();
  OUTLINED_FUNCTION_35(v21);
  (*(v22 + 104))(v2, v20);
  OUTLINED_FUNCTION_34();
}

double sub_1DC34BA0C()
{
  v1 = sub_1DC516F7C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v8 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
  v9 = 360.0;
  if (v8)
  {
    v10 = v8;
    v11 = sub_1DC5176FC();
    v12 = [v10 integerForKey_];

    if (v12)
    {
      v13 = sub_1DC5176FC();
      v14 = [v10 integerForKey_];

      sub_1DC28D414();
      OUTLINED_FUNCTION_56_3();
      v15(v0);
      v16 = sub_1DC516F6C();
      v17 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v17))
      {
        v18 = OUTLINED_FUNCTION_63();
        *v18 = 134217984;
        *(v18 + 4) = v14;
        _os_log_impl(&dword_1DC287000, v16, v17, "cdmClient decouple expiration changed from default to : %ld seconds", v18, 0xCu);
        OUTLINED_FUNCTION_66();
      }

      (*(v4 + 8))(v0, v1);
      return v14;
    }

    else
    {
    }
  }

  return v9;
}

uint64_t sub_1DC34BCEC()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupSucceeded;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC34BD6C()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeout;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC34BDEC()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmDaemonKilled;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC34BFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  OUTLINED_FUNCTION_54_11();
  v5 = sub_1DC510AFC();
  OUTLINED_FUNCTION_35(v5);
  return (*(v6 + 16))(a2, v2 + v4);
}

uint64_t sub_1DC34C070()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_assetsChanged;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC34C0F0()
{
  v1 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupRetried;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t sub_1DC34C188(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_10();
  v3 = *(v1 + v2);
}

uint64_t sub_1DC34C254()
{
  v2 = sub_1DC51735C();
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  v6 = *sub_1DC2C98E0();

  sub_1DC34B7F0();
  v7 = sub_1DC34BA0C();
  v8 = [objc_allocWithZone(type metadata accessor for CDMClientNotification()) init];
  return (*(v1 + 752))(v6, v0, 0, 1, v8, v7);
}

uint64_t sub_1DC34C318()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_16();
  sub_1DC34C394();
  return v3;
}

void sub_1DC34C394()
{
  OUTLINED_FUNCTION_102_0();
  v1 = v0;
  v59 = v2;
  v57 = v3;
  v58 = v4;
  v6 = v5;
  v55 = v7;
  v56 = v8;
  v54 = sub_1DC517BCC();
  v9 = OUTLINED_FUNCTION_35(v54);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v51 = sub_1DC517BEC();
  v12 = *(v51 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_1();
  v53 = v14;
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC5173CC();
  v16 = OUTLINED_FUNCTION_10(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v0[2] = 0;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = (v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmActiveServiceGraph);
  *v23 = 0;
  v23[1] = 0;
  *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupSucceeded) = 2;
  *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeout) = 2;
  *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmDaemonKilled) = 2;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = sub_1DC510B6C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v28);
  sub_1DC510AEC();
  sub_1DC510AEC();
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_assetsChanged) = 0;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupRetried) = 0;
  v35 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_startRequestIdToProcessor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD18, &unk_1DC524D10);
  OUTLINED_FUNCTION_32_1();
  *(v1 + v35) = sub_1DC51764C();
  v36 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_nluRequestIdToStartRequestId;
  OUTLINED_FUNCTION_32_1();
  *(v1 + v36) = sub_1DC51764C();
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverSuccessFromSetup) = 0;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverErrorFromSetup) = 0;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverDaemonKilled) = 0;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_setupSemaphore) = 0;
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  sub_1DC5173AC();
  v50 = *MEMORY[0x1E69E8098];
  v52 = *(v12 + 104);
  v52(v53);
  OUTLINED_FUNCTION_75_3();
  sub_1DC293BE4(v37, v38);
  v39 = OUTLINED_FUNCTION_56_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
  OUTLINED_FUNCTION_26_1();
  sub_1DC2C4B5C(v41, v42, v43);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_206();
  v1[4] = sub_1DC517C1C();
  sub_1DC5173AC();
  (v52)(v53, v50, v51);
  OUTLINED_FUNCTION_170();
  OUTLINED_FUNCTION_206();
  v1[5] = sub_1DC517C1C();
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_instrumentationUtil) = v55;
  v44 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeoutMillis;
  v45 = sub_1DC51735C();
  v46 = *(v45 - 8);
  (*(v46 + 16))(v1 + v44, v56, v45);
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmProxyExpirationInSeconds) = v6;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_isDecoupleFromSession) = v57;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_shouldAssetsTimeout) = v58;
  v1[3] = v59;
  v47 = *((*MEMORY[0x1E69E7D40] & *v59) + 0x70);

  v48 = v59;
  OUTLINED_FUNCTION_23_2();

  v47(v49);

  (*(v46 + 8))(v56, v45);
  OUTLINED_FUNCTION_101();
}

void sub_1DC34C8A0()
{
  OUTLINED_FUNCTION_33();
  v56 = v1;
  v57 = v0;
  v55 = v2;
  v4 = v3;
  v52 = v5;
  v54 = sub_1DC51623C();
  v6 = OUTLINED_FUNCTION_0(v54);
  v51 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v53 = v10;
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC510C8C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v49 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_158_0();
  v18 = v16 - v17;
  OUTLINED_FUNCTION_12();
  v19 = sub_1DC516F7C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  v25(v0);
  v26 = sub_1DC516F6C();
  v27 = sub_1DC517B9C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = OUTLINED_FUNCTION_35_8();
    v50 = v11;
    OUTLINED_FUNCTION_52_1(v28);
    OUTLINED_FUNCTION_56_4(&dword_1DC287000, v26, v27, "CDMProxy warmUp");
    v11 = v50;
    OUTLINED_FUNCTION_66();
  }

  v29 = *(v22 + 8);
  v30 = OUTLINED_FUNCTION_56_0();
  v31(v30);
  v32 = v57;
  v50 = *(v57 + 32);
  v33 = v49;
  v34 = OUTLINED_FUNCTION_89_0(v49);
  v35 = v11;
  v36(v34, v52, v11);
  v37 = v51;
  OUTLINED_FUNCTION_82_2();
  v38 = v54;
  v39(v58, v4, v54);
  v40 = (*(v33 + 80) + 24) & ~*(v33 + 80);
  v41 = (v15 + *(v37 + 80) + v40) & ~*(v37 + 80);
  v42 = (v53 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v32;
  (*(v33 + 32))(v43 + v40, v18, v35);
  (*(v37 + 32))(v43 + v41, v58, v38);
  v44 = (v43 + v42);
  v45 = v56;
  *v44 = v55;
  v44[1] = v45;
  OUTLINED_FUNCTION_27_5();
  v46 = swift_allocObject();
  *(v46 + 16) = sub_1DC357890;
  *(v46 + 24) = v43;
  v59[4] = sub_1DC2929F4;
  v59[5] = v46;
  OUTLINED_FUNCTION_5_4();
  v59[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v59[2] = v47;
  v59[3] = &block_descriptor_3;
  v48 = _Block_copy(v59);

  dispatch_sync(v50, v48);
  _Block_release(v48);
  LOBYTE(v48) = OUTLINED_FUNCTION_173();

  if (v48)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC34CE38()
{
  OUTLINED_FUNCTION_1_0();
  v0[18] = v1;
  v2 = sub_1DC516F7C();
  v0[19] = v2;
  OUTLINED_FUNCTION_52(v2);
  v0[20] = v3;
  v5 = *(v4 + 64) + 15;
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC34CEEC, 0, 0);
}

uint64_t sub_1DC34CEEC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_1DC28D414();
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1DC516F6C();
  v8 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v8))
  {
    v9 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_81_2(v9);
    _os_log_impl(&dword_1DC287000, v7, v8, "CDMProxy calling CdmClient warmup", v5, 2u);
    OUTLINED_FUNCTION_31();
  }

  v11 = v0[20];
  v10 = v0[21];
  v13 = v0[18];
  v12 = v0[19];

  v14 = *(v11 + 8);
  v15 = OUTLINED_FUNCTION_63_0();
  v17 = v16(v15);
  v18 = (*(*v13 + 296))(v17);
  v0[22] = v18;
  if (v18)
  {
    v19 = v18;
    v0[2] = v0;
    v0[3] = sub_1DC34D114;
    v20 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE70, &qword_1DC523630);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1DC30DF70;
    v0[13] = &block_descriptor_209;
    v0[14] = v20;
    [v19 warmupWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v21 = v0[21];

    OUTLINED_FUNCTION_2_2();

    return v22();
  }
}

uint64_t sub_1DC34D114()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v2 = v1;
  v3 = *v0;
  v4 = *(v1 + 48);
  *(v2 + 184) = v4;
  if (v4)
  {
    v5 = sub_1DC34D27C;
  }

  else
  {
    v5 = sub_1DC34D21C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DC34D21C()
{
  OUTLINED_FUNCTION_1_0();

  v1 = *(v0 + 168);

  OUTLINED_FUNCTION_2_2();

  return v2();
}

uint64_t sub_1DC34D27C()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[21];

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC34D2F8()
{
  v2 = sub_1DC51623C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v3);
  v16 = OUTLINED_FUNCTION_74_4(v8, v9, v10, v11, v12, v13, v14, v15, aBlock[0]);
  v17(v16);
  v18 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v1;
  v20 = OUTLINED_FUNCTION_224(v19);
  v21(v20);
  OUTLINED_FUNCTION_27_5();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1DC357970;
  *(v22 + 24) = v19;
  aBlock[4] = sub_1DC292A1C;
  aBlock[5] = v22;
  OUTLINED_FUNCTION_69_5();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  aBlock[2] = v23;
  aBlock[3] = &block_descriptor_18;
  v24 = _Block_copy(aBlock);

  dispatch_sync(v0, v24);
  _Block_release(v24);
  v25 = OUTLINED_FUNCTION_173();

  if (v25)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC34D4A4()
{
  OUTLINED_FUNCTION_12_0();
  (*(v0 + 368))();
  OUTLINED_FUNCTION_79_4();
  if (v2 || (v1 & 1) != 0)
  {
    OUTLINED_FUNCTION_12_0();
    v4 = (*(v3 + 392))();
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

id sub_1DC34D520@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 successFromSetup];
  *a2 = result;
  return result;
}

id sub_1DC34D554@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 errorFromSetup];
  *a2 = result;
  return result;
}

void sub_1DC34D590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v105 = v23;
  v104 = v24;
  v103 = v25;
  v112 = v26;
  v27 = sub_1DC51737C();
  v28 = OUTLINED_FUNCTION_0(v27);
  v110 = v29;
  v111 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v108 = v32;
  OUTLINED_FUNCTION_12();
  v109 = sub_1DC5173CC();
  v33 = OUTLINED_FUNCTION_0(v109);
  v107 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v37);
  v102 = sub_1DC510C8C();
  v38 = OUTLINED_FUNCTION_0(v102);
  v40 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_158_0();
  v45 = v43 - v44;
  v46 = sub_1DC516F7C();
  v47 = OUTLINED_FUNCTION_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v98 - v54;
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  v57 = sub_1DC28D414();
  v58 = v49;
  v59 = *(v49 + 16);
  if (Strong)
  {
    v60 = Strong;
    v98 = v57;
    v99 = v59;
    (v59)(v20);
    v61 = sub_1DC516F6C();
    v62 = sub_1DC517B9C();
    v63 = OUTLINED_FUNCTION_25_0(v62);
    v101 = v46;
    if (v63)
    {
      v64 = OUTLINED_FUNCTION_35_8();
      v113 = v58;
      *v64 = 0;
      _os_log_impl(&dword_1DC287000, v61, v62, "Received errorFromSetup from CDM", v64, 2u);
      v58 = v113;
      OUTLINED_FUNCTION_66();
    }

    v65 = *(v58 + 8);
    v66 = OUTLINED_FUNCTION_42_2();
    v113 = v58 + 8;
    v100 = v67;
    v67(v66);
    v68 = *(v60 + 32);
    v69 = v102;
    (*(v40 + 16))(v45, v103, v102);
    v70 = (*(v40 + 80) + 24) & ~*(v40 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v60;
    (*(v40 + 32))(v71 + v70, v45, v69);
    v72 = (v71 + ((v42 + v70 + 7) & 0xFFFFFFFFFFFFFFF8));
    v73 = v105;
    *v72 = v104;
    v72[1] = v73;
    v116[4] = sub_1DC358928;
    v116[5] = v71;
    OUTLINED_FUNCTION_19_13();
    v116[1] = 1107296256;
    OUTLINED_FUNCTION_3_14();
    v116[2] = v74;
    v116[3] = &block_descriptor_186;
    v75 = _Block_copy(v116);

    v76 = v106;
    sub_1DC51739C();
    v115 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v77, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
    OUTLINED_FUNCTION_119_1();
    sub_1DC2C4B5C(v79, v80, v81);
    v82 = v108;
    v83 = v111;
    sub_1DC517E9C();
    MEMORY[0x1E12964B0](0, v76, v82, v75);
    _Block_release(v75);
    (*(v110 + 8))(v82, v83);
    (*(v107 + 8))(v76, v109);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE68, &unk_1DC524EF8);
    sub_1DC51089C();
    v84 = v116[0];
    if (v116[0])
    {
      v85 = OUTLINED_FUNCTION_191(&a13);
      v99(v85, v98, v101);
      v86 = v84;
      v87 = sub_1DC516F6C();
      v88 = sub_1DC517B8C();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = OUTLINED_FUNCTION_63();
        v90 = OUTLINED_FUNCTION_82();
        v116[0] = v90;
        *v89 = 136315138;
        swift_getErrorValue();
        v91 = v114;
        v92 = sub_1DC5182AC();
        sub_1DC291244(v92, v93, v116);
        OUTLINED_FUNCTION_23_2();

        *(v89 + 4) = v91;
        _os_log_impl(&dword_1DC287000, v87, v88, "cdmClient setup result, cdmSetupSucceeded: false, error: %s", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_66();
      }

      else
      {
      }

      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_216();
      v97();
    }

    else
    {
    }
  }

  else
  {
    v59(v55, v57, v46);
    v94 = sub_1DC516F6C();
    v95 = sub_1DC517B9C();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v96);
      OUTLINED_FUNCTION_145_1(&dword_1DC287000, v94, v95, "Received errorFromSetup from CDM, but the proxy instance was removed");
      OUTLINED_FUNCTION_40_0();
    }

    (*(v49 + 8))(v55, v46);
  }

  OUTLINED_FUNCTION_34();
}

id sub_1DC34DC58@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daemonKilled];
  *a2 = result;
  return result;
}

void sub_1DC34DC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v92 = OUTLINED_FUNCTION_245(v24, v25, v26, v27, v28);
  v29 = OUTLINED_FUNCTION_0(v92);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v91 = sub_1DC5173CC();
  v32 = OUTLINED_FUNCTION_0(v91);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE60, &qword_1DC524EF0);
  OUTLINED_FUNCTION_0(v90);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v89 = sub_1DC510C8C();
  v38 = OUTLINED_FUNCTION_0(v89);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = OUTLINED_FUNCTION_169_1();
  v42 = OUTLINED_FUNCTION_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  if (Strong)
  {
    v50 = OUTLINED_FUNCTION_215();
    v51(v50);
    v52 = sub_1DC516F6C();
    v53 = sub_1DC517B9C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_181(v54);
      OUTLINED_FUNCTION_246(&dword_1DC287000, v55, v56, "Received daemonKilled value update from CDM");
      OUTLINED_FUNCTION_66();
    }

    (*(v44 + 8))(v20, v41);
    v57 = OUTLINED_FUNCTION_85_3();
    v58(v57);
    OUTLINED_FUNCTION_115_1();
    v59 = OUTLINED_FUNCTION_225();
    v60(v59);
    OUTLINED_FUNCTION_78_4();
    v61 = OUTLINED_FUNCTION_244();
    v62 = OUTLINED_FUNCTION_135_0(v61);
    v63(v62);
    v64 = OUTLINED_FUNCTION_130_1();
    v65(v64);
    v93[4] = sub_1DC3587E8;
    v93[5] = v20;
    OUTLINED_FUNCTION_19_13();
    v93[1] = 1107296256;
    OUTLINED_FUNCTION_3_14();
    v93[2] = v66;
    v93[3] = &block_descriptor_180;
    v67 = _Block_copy(v93);

    sub_1DC51739C();
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v68, v69);
    v70 = OUTLINED_FUNCTION_74();
    __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
    OUTLINED_FUNCTION_62_3();
    sub_1DC2C4B5C(v72, v73, v74);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_171();
    _Block_release(v67);
    OUTLINED_FUNCTION_62_0(&a16);
    v75 = OUTLINED_FUNCTION_55();
    v76(v75);
    v77 = OUTLINED_FUNCTION_222();
    v78(v77);
  }

  else
  {
    v49(v21);
    v79 = sub_1DC516F6C();
    v80 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v80))
    {
      v81 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v81);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v82, v83, v84, v85, v86, 2u);
      OUTLINED_FUNCTION_31();
    }

    v87 = OUTLINED_FUNCTION_150_0();
    v88(v87, v41);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC34E790()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v5 = v4;
  v32 = v6;
  v8 = v7;
  v9 = sub_1DC510B6C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v0 + 32);
  v16 = *(v12 + 16);
  v17 = OUTLINED_FUNCTION_153_0();
  v18(v17);
  sub_1DC28FB9C(v5, v37);
  v19 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v20 = (v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v1;
  (*(v12 + 32))(v22 + v19, v15, v9);
  v23 = (v22 + v20);
  v25 = v32;
  v24 = v33;
  *v23 = v8;
  v23[1] = v25;
  v26 = (v22 + v21);
  v27 = v34;
  *v26 = v24;
  v26[1] = v27;
  sub_1DC28F9B0(v37, v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  OUTLINED_FUNCTION_27_5();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1DC357AC0;
  *(v28 + 24) = v22;
  v36[4] = sub_1DC292A1C;
  v36[5] = v28;
  OUTLINED_FUNCTION_10_13();
  v36[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v36[2] = v29;
  v36[3] = &block_descriptor_51;
  v30 = _Block_copy(v36);

  dispatch_sync(v35, v30);
  _Block_release(v30);
  LOBYTE(v27) = OUTLINED_FUNCTION_173();

  if (v27)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC34E9D8()
{
  OUTLINED_FUNCTION_33();
  v112 = v4;
  v113 = v5;
  v111 = v6;
  v117 = v7;
  v118 = v8;
  v115 = v9;
  OUTLINED_FUNCTION_38_2();
  v10 = sub_1DC516F7C();
  v11 = OUTLINED_FUNCTION_0(v10);
  v116 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v114 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_62();
  v110 = v17;
  OUTLINED_FUNCTION_12();
  v18 = sub_1DC510B6C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_1();
  v24 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8);
  v25 = *(*v24 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_30_1();
  v27 = OUTLINED_FUNCTION_146_1();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v27, v28);
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_38_1();
  (*(v35 + 464))(v36);
  (*(v21 + 16))(v0, v115, v18);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v18);
  v40 = v24[14];
  OUTLINED_FUNCTION_251(v2, v3);
  OUTLINED_FUNCTION_251(v0, v3 + v40);
  OUTLINED_FUNCTION_2_0(v3);
  if (v50)
  {
    v1 = &qword_1DC522A00;
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v41, v42, v43);
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v44, v45, v46);
    OUTLINED_FUNCTION_2_0(v3 + v40);
    if (v50)
    {
      sub_1DC28EB30(v3, &unk_1ECC7CA30, &qword_1DC522A00);
      v48 = v117;
      v47 = v118;
      v49 = v116;
LABEL_14:
      sub_1DC28D414();
      OUTLINED_FUNCTION_56_3();
      v92(v110);

      v93 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v94 = OUTLINED_FUNCTION_111();
        OUTLINED_FUNCTION_188(v94);
        OUTLINED_FUNCTION_180(4.8149e-34);
        v95 = OUTLINED_FUNCTION_16();
        *(v1 + 4) = sub_1DC291244(v95, v96, v97);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v2);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
      }

      v103 = *(v49 + 8);
      v104 = OUTLINED_FUNCTION_45_0();
      v105(v104);
      OUTLINED_FUNCTION_12_0();
      (*(v106 + 968))(v111, v112);
      sub_1DC28FB9C(v113, v120);
      OUTLINED_FUNCTION_38_1();
      v108 = *(v107 + 624);

      v109 = v108(v119);
      sub_1DC34EFF8(v120, v48, v47);
      v109(v119, 0);
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  sub_1DC28F308(v3, v1, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_0(v3 + v40);
  if (v50)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v51, v52, v53);
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v54, v55, v56);
    v57 = *(v21 + 8);
    v58 = OUTLINED_FUNCTION_187();
    v59(v58);
LABEL_9:
    sub_1DC28EB30(v3, &qword_1ECC7CE20, &unk_1DC523AC8);
    v49 = v116;
    goto LABEL_10;
  }

  v74 = *(v21 + 32);
  v75 = OUTLINED_FUNCTION_235();
  v76(v75);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v77, v78);
  v79 = sub_1DC5176CC();
  v80 = *(v21 + 8);
  v81 = OUTLINED_FUNCTION_42_2();
  v80(v81);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v82, v83, v84);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v85, v86, v87);
  v88 = OUTLINED_FUNCTION_187();
  v80(v88);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v89, v90, v91);
  v48 = v117;
  v47 = v118;
  v49 = v116;
  if (v79)
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_1DC28D414();
  OUTLINED_FUNCTION_56_3();
  v60(v114);

  v61 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v62 = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_188(v62);
    OUTLINED_FUNCTION_180(4.8149e-34);
    v63 = OUTLINED_FUNCTION_16();
    *(v1 + 4) = sub_1DC291244(v63, v64, v65);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v66, v67, v68, v69, v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_31();
  }

  v71 = *(v49 + 8);
  v72 = OUTLINED_FUNCTION_45_0();
  v73(v72);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC34EFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DC28F9B0(a1, v9);
    v6 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1DC3581E8(v9, a2, a3);

    *v3 = v8;
  }

  else
  {
    sub_1DC28EB30(a1, &qword_1ECC7CE28, &unk_1DC524E10);
    sub_1DC2BFB38(a2, a3, v9);

    return sub_1DC28EB30(v9, &qword_1ECC7CE28, &unk_1DC524E10);
  }

  return result;
}

void sub_1DC34F0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102_0();
  a21 = v24;
  a22 = v25;
  v252 = v22;
  v27 = v26;
  v244 = v28;
  v243 = v29;
  v31 = v30;
  v260 = v32;
  v263 = v33;
  v225 = sub_1DC5173EC();
  v34 = OUTLINED_FUNCTION_0(v225);
  v224 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v39);
  v223 = sub_1DC516F5C();
  v40 = OUTLINED_FUNCTION_0(v223);
  v222 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v44);
  v265 = sub_1DC510B6C();
  v45 = OUTLINED_FUNCTION_0(v265);
  v262 = v46;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_14(v49);
  v255 = sub_1DC5168FC();
  v50 = OUTLINED_FUNCTION_0(v255);
  v254 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v54);
  v238 = sub_1DC51110C();
  v55 = OUTLINED_FUNCTION_0(v238);
  v239 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v59 = sub_1DC51373C();
  v60 = OUTLINED_FUNCTION_0(v59);
  v62 = v61;
  v64 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_20_0(v65);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v67);
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v69);
  v241 = v70;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v217 - v72;
  v74 = sub_1DC516F7C();
  v75 = OUTLINED_FUNCTION_0(v74);
  v77 = v76;
  v79 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v217 - v82;
  sub_1DC28D414();
  v250 = v77;
  OUTLINED_FUNCTION_44_8();
  v234 = v84;
  v256 = v74;
  v236 = v85;
  v235 = v86;
  v86(v83);
  v87 = v62;
  OUTLINED_FUNCTION_90();
  v258 = v88;
  v259 = v27;
  v257 = v89;
  v89(v73, v27, v59);

  v90 = sub_1DC516F6C();
  v91 = sub_1DC517B9C();

  v92 = os_log_type_enabled(v90, v91);
  v261 = v31;
  v264 = v59;
  v251 = v87;
  v233 = v23;
  if (v92)
  {
    v93 = OUTLINED_FUNCTION_140();
    v266 = OUTLINED_FUNCTION_143();
    *v93 = 136315394;
    *(v93 + 4) = sub_1DC291244(v260, v261, &v266);
    *(v93 + 12) = 2080;
    sub_1DC51370C();
    sub_1DC5110DC();
    OUTLINED_FUNCTION_238();
    (*(v239 + 8))(v23, v238);
    (*(v87 + 8))(v73, v264);
    v94 = OUTLINED_FUNCTION_80_4();
    sub_1DC291244(v94, &off_1DC522000, v95);
    OUTLINED_FUNCTION_228();

    *(v93 + 14) = v73;
    _os_log_impl(&dword_1DC287000, v90, v91, "CDMProxy received nluRequest for startRequestId: %s nluRequestId: %s", v93, 0x16u);
    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_40_0();
    v59 = v264;
    OUTLINED_FUNCTION_66();
  }

  else
  {

    (*(v87 + 8))(v73, v59);
  }

  (*(v250 + 8))(v83, v256);
  v96 = sub_1DC2A0AE0();
  (v254[2].isa)(v253, v96, v255);
  v97 = v262;
  v98 = *(v262 + 16);
  v246 = v262 + 16;
  v245 = v98;
  v99 = v249;
  v98(v249, v263, v265);
  v100 = v242;
  v257(v242, v259, v59);
  v101 = *(v97 + 80);
  v102 = (v101 + 16) & ~v101;
  v248 = v101 | 7;
  v240 = v247 + 7;
  v103 = &v247[v102 + 7] & 0xFFFFFFFFFFFFFFF8;
  v104 = (v103 + 23) & 0xFFFFFFFFFFFFFFF8;
  v105 = v251;
  v106 = *(v251 + 80);
  v228 = v106 + 16;
  v107 = (v106 + 16 + v104) & ~v106;
  v231 = v106;
  v108 = swift_allocObject();
  v247 = *(v97 + 32);
  v217 = v102;
  (v247)(v108 + v102, v99, v265);
  v218 = v103;
  v109 = (v108 + v103);
  v110 = v261;
  *v109 = v260;
  v109[1] = v110;
  v111 = (v108 + v104);
  v112 = v244;
  *v111 = v243;
  v111[1] = v112;
  v113 = *(v105 + 4);
  v230 = v105 + 32;
  v229 = v113;
  v113(v108 + v107, v100, v264);

  v114 = v253;
  sub_1DC5168CC();

  OUTLINED_FUNCTION_62_0(&a20);
  v115(v114, v255);
  v274 = 1;
  v273 = 2;
  v272 = 0;
  v116 = v252;
  v117 = *(v252 + 32);
  v118 = v265;
  OUTLINED_FUNCTION_97_2();
  v119();
  v255 = v101;
  v120 = (v101 + 32) & ~v101;
  v121 = &v240[v120] & 0xFFFFFFFFFFFFFFF8;
  v122 = swift_allocObject();
  *(v122 + 16) = &v274;
  *(v122 + 24) = v116;
  v262 = v97 + 32;
  (v247)(v122 + v120, v99, v118);
  *(v122 + v121) = &v273;
  *(v122 + ((v121 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v272;
  OUTLINED_FUNCTION_27_5();
  v123 = swift_allocObject();
  *(v123 + 16) = sub_1DC357B64;
  *(v123 + 24) = v122;
  v270 = sub_1DC292A1C;
  v271 = v123;
  OUTLINED_FUNCTION_10_13();
  v267 = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v268 = v124;
  v269 = &block_descriptor_74;
  v125 = _Block_copy(&v266);
  v126 = v271;

  dispatch_sync(v117, v125);
  _Block_release(v125);
  OUTLINED_FUNCTION_230();
  swift_isEscapingClosureAtFileLocation();
  OUTLINED_FUNCTION_23_2();

  if (v125)
  {
    __break(1u);
  }

  else
  {
    if ((v274 & 1) == 0)
    {
      OUTLINED_FUNCTION_184(&v269);
      OUTLINED_FUNCTION_211();
      v135();
      v136 = v232;
      v137 = v264;
      v257(v232, v259, v264);
      v138 = v261;

      v139 = sub_1DC516F6C();
      v140 = sub_1DC517BAC();

      if (os_log_type_enabled(v139, v140))
      {
        OUTLINED_FUNCTION_140();
        v266 = OUTLINED_FUNCTION_60_6();
        *v126 = 136315394;
        sub_1DC51370C();
        v141 = sub_1DC5110DC();
        v142 = v137;
        v144 = v143;
        OUTLINED_FUNCTION_62_0(&v271);
        v145();
        OUTLINED_FUNCTION_62_0(&a17);
        v146(v136, v142);
        v147 = OUTLINED_FUNCTION_80_4();
        sub_1DC291244(v147, v144, v148);
        OUTLINED_FUNCTION_155_0();

        *(v126 + 4) = v141;
        *(v126 + 12) = 2080;
        *(v126 + 14) = sub_1DC291244(v260, v138, &v266);
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v149, v150, v151, v152, v153, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_31();

        OUTLINED_FUNCTION_62_0(&a16);
        v155 = v237;
        v156 = v256;
      }

      else
      {

        OUTLINED_FUNCTION_62_0(&a17);
        v157 = OUTLINED_FUNCTION_42_2();
        v158(v157);
        OUTLINED_FUNCTION_62_0(&a16);
        v155 = OUTLINED_FUNCTION_12_3();
      }

      v154(v155, v156);
      v159 = 0;
      v256 = 0;
      goto LABEL_23;
    }

    v254 = v117;
    v253 = v122;
    if (v273 != 2)
    {
      goto LABEL_7;
    }

    if (v272)
    {
      v127 = v272;
      v128 = sub_1DC378228();
      v129 = v220;
      static SignpostLogger.begin(_:enableTelemetry:)(*v128, v128[1], *(v128 + 16), 1, &unk_1F57F9698, &off_1F57F95E8, v220);
      v130 = v219;
      sub_1DC5173DC();
      v131 = v221;
      MEMORY[0x1E1295CB0](v130, v252 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeoutMillis);
      v132 = *(v224 + 8);
      v133 = v225;
      v132(v130, v225);
      sub_1DC517D0C();
      v132(v131, v133);
      static SignpostLogger.end(_:_:)(v129, *v128, v128[1], *(v128 + 16), &unk_1F57F9698, &off_1F57F95E8);

      OUTLINED_FUNCTION_62_0(&v254);
      v134(v129, v223);
    }

    v160 = v251;
    v161 = v239;
    v118 = v227;
    v162 = v259;
    if (sub_1DC51736C())
    {
      v163 = v226;
      OUTLINED_FUNCTION_211();
      v164();
      v257(v118, v162, v264);
      v165 = v261;

      v166 = sub_1DC516F6C();
      v167 = sub_1DC517BAC();

      LODWORD(v239) = v167;
      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_140();
        v168 = OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_218(v168, &v269);
        *v163 = 136315394;
        v169 = OUTLINED_FUNCTION_80_4();
        v171 = sub_1DC291244(v169, v165, v170);
        OUTLINED_FUNCTION_26_7(v171);
        v172 = v233;
        sub_1DC51370C();
        sub_1DC5110DC();
        OUTLINED_FUNCTION_193();
        (*(v161 + 8))(v172, v238);
        v173 = *(v160 + 1);
        v174 = OUTLINED_FUNCTION_50_0();
        v175(v174);
        v176 = OUTLINED_FUNCTION_80_4();
        sub_1DC291244(v176, v165, v177);
        OUTLINED_FUNCTION_121();

        *(v163 + 14) = v172;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v178, v179, v180, v181, v182, 0x16u);
        OUTLINED_FUNCTION_184(&v269);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_31();

        OUTLINED_FUNCTION_62_0(&a16);
        v184 = v226;
        v185 = v256;
      }

      else
      {

        v186 = *(v160 + 1);
        v187 = OUTLINED_FUNCTION_50_0();
        v188(v187);
        OUTLINED_FUNCTION_62_0(&a16);
        v184 = OUTLINED_FUNCTION_187();
      }

      v183(v184, v185);
      OUTLINED_FUNCTION_96_0();
      v118();
      v189 = v218;
      v190 = swift_allocObject();
      OUTLINED_FUNCTION_216();
      v191();
      *(v190 + v189) = v252;
      OUTLINED_FUNCTION_27_5();
      v192 = swift_allocObject();
      *(v192 + 16) = sub_1DC357CDC;
      *(v192 + 24) = v190;
      v256 = v190;
      v270 = sub_1DC292A1C;
      v271 = v192;
      OUTLINED_FUNCTION_10_13();
      v267 = 1107296256;
      OUTLINED_FUNCTION_5_0();
      v268 = v193;
      v269 = &block_descriptor_94;
      v194 = _Block_copy(&v266);

      v195 = OUTLINED_FUNCTION_35_0();
      dispatch_sync(v195, v196);
      _Block_release(v194);
      OUTLINED_FUNCTION_230();
      LOBYTE(v194) = swift_isEscapingClosureAtFileLocation();

      if (v194)
      {
        goto LABEL_26;
      }

      v251 = sub_1DC357CDC;
    }

    else
    {
LABEL_7:
      v251 = 0;
      v256 = 0;
      OUTLINED_FUNCTION_96_0();
    }

    v197 = v255;
    v198 = v231;
    v199 = OUTLINED_FUNCTION_191(&a15);
    (v118)(v199, v263, v265);
    v200 = v242;
    v201 = OUTLINED_FUNCTION_32_1();
    v202 = v264;
    (v257)(v201);
    v203 = &v240[(v197 + 24) & ~v197] & 0xFFFFFFFFFFFFFFF8;
    v204 = (v203 + 23) & 0xFFFFFFFFFFFFFFF8;
    v205 = (v228 + v204) & ~v198;
    v206 = swift_allocObject();
    *(v206 + 16) = v252;
    OUTLINED_FUNCTION_216();
    v207();
    v208 = (v206 + v203);
    v209 = v261;
    *v208 = v260;
    v208[1] = v209;
    v210 = (v206 + v204);
    v211 = v244;
    *v210 = v243;
    v210[1] = v211;
    v229(v206 + v205, v200, v202);
    OUTLINED_FUNCTION_27_5();
    v212 = swift_allocObject();
    *(v212 + 16) = sub_1DC357BFC;
    *(v212 + 24) = v206;
    v270 = sub_1DC292A1C;
    v271 = v212;
    OUTLINED_FUNCTION_10_13();
    v267 = 1107296256;
    OUTLINED_FUNCTION_5_0();
    v268 = v213;
    v269 = &block_descriptor_84;
    v214 = _Block_copy(&v266);

    dispatch_sync(v254, v214);
    _Block_release(v214);
    LOBYTE(v214) = OUTLINED_FUNCTION_173();

    if ((v214 & 1) == 0)
    {
      v159 = v251;
LABEL_23:
      v215 = v272;

      sub_1DC357BEC(v159);
      v216 = OUTLINED_FUNCTION_30_6();
      sub_1DC357BEC(v216);
      OUTLINED_FUNCTION_101();
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1DC3502C4()
{
  OUTLINED_FUNCTION_33();
  v77 = v2;
  v78 = v3;
  v75 = v5;
  v76 = v4;
  v7 = v6;
  v8 = sub_1DC510B6C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v73 = v14;
  v15 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8);
  v16 = *(*v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_30_1();
  v18 = OUTLINED_FUNCTION_50_0();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
  v21 = OUTLINED_FUNCTION_10(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  v74 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v73 - v27;
  OUTLINED_FUNCTION_183();
  (*(v29 + 464))(v30);
  v31 = v11;
  OUTLINED_FUNCTION_90();
  v32(v0, v75, v8);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v8);
  v36 = v15[14];
  sub_1DC28F308(v28, v1, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F308(v0, v1 + v36, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_0(v1);
  if (!v45)
  {
    v44 = v74;
    sub_1DC28F308(v1, v74, &unk_1ECC7CA30, &qword_1DC522A00);
    OUTLINED_FUNCTION_2_0(v1 + v36);
    if (!v45)
    {
      v50 = v31;
      v51 = *(v31 + 32);
      v52 = OUTLINED_FUNCTION_235();
      v53(v52);
      OUTLINED_FUNCTION_2_11();
      sub_1DC293BE4(v54, v55);
      OUTLINED_FUNCTION_50_0();
      v43 = sub_1DC5176CC();
      v56 = *(v50 + 8);
      v57 = OUTLINED_FUNCTION_42_2();
      v56(v57);
      v58 = OUTLINED_FUNCTION_153_0();
      sub_1DC28EB30(v58, v59, &qword_1DC522A00);
      v60 = OUTLINED_FUNCTION_176();
      sub_1DC28EB30(v60, v61, &qword_1DC522A00);
      (v56)(v74, v8);
      v62 = OUTLINED_FUNCTION_47_6();
      sub_1DC28EB30(v62, v63, &qword_1DC522A00);
      goto LABEL_10;
    }

    v46 = OUTLINED_FUNCTION_55();
    sub_1DC28EB30(v46, v47, &qword_1DC522A00);
    v48 = OUTLINED_FUNCTION_146_1();
    sub_1DC28EB30(v48, v49, &qword_1DC522A00);
    (*(v31 + 8))(v44, v8);
LABEL_9:
    sub_1DC28EB30(v1, &qword_1ECC7CE20, &unk_1DC523AC8);
    v43 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v37, v38, v39);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v40, v41, v42);
  OUTLINED_FUNCTION_2_0(v1 + v36);
  if (!v45)
  {
    goto LABEL_9;
  }

  sub_1DC28EB30(v1, &unk_1ECC7CA30, &qword_1DC522A00);
  v43 = 1;
LABEL_10:
  *v76 = v43 & 1;
  OUTLINED_FUNCTION_147();
  v66 = (*(v64 + 368))(v65);
  *v77 = v66;
  v67 = (*(*v7 + 728))(v66);
  v68 = *v78;
  *v78 = v67;

  OUTLINED_FUNCTION_183();
  (*(v69 + 392))(v70);
  OUTLINED_FUNCTION_79_4();
  if (!v45 && (v71 & 1) != 0)
  {
    OUTLINED_FUNCTION_147();
    (*(v72 + 400))(0);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC350760()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v2 = sub_1DC510B6C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v62 = v8;
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8);
  v10 = *(*v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v61 - v12;
  v14 = OUTLINED_FUNCTION_146_1();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  v63 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_42_3();
  v64 = v5;
  v23 = *(v5 + 16);
  v24 = OUTLINED_FUNCTION_32_1();
  v25(v24);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v2);
  OUTLINED_FUNCTION_183();
  (*(v29 + 464))();
  v30 = v9[14];
  OUTLINED_FUNCTION_251(v0, v13);
  OUTLINED_FUNCTION_251(v1, &v13[v30]);
  OUTLINED_FUNCTION_2_6(v13);
  if (v38)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v31, v32, v33);
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v34, v35, v36);
    OUTLINED_FUNCTION_2_6(&v13[v30]);
    if (v38)
    {
      sub_1DC28EB30(v13, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_11:
      OUTLINED_FUNCTION_147();
      (*(v60 + 400))(1);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v37 = v63;
  sub_1DC28F308(v13, v63, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_6(&v13[v30]);
  if (v38)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v39, v40, v41);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v42, v43, v44);
    (*(v64 + 8))(v37, v2);
LABEL_9:
    sub_1DC28EB30(v13, &qword_1ECC7CE20, &unk_1DC523AC8);
    goto LABEL_12;
  }

  v45 = v64;
  v46 = v62;
  (*(v64 + 32))(v62, &v13[v30], v2);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v47, v48);
  OUTLINED_FUNCTION_146_1();
  HIDWORD(v61) = sub_1DC5176CC();
  v49 = *(v45 + 8);
  v49(v46, v2);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v50, v51, v52);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v53, v54, v55);
  v56 = OUTLINED_FUNCTION_56_0();
  (v49)(v56);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v57, v58, v59);
  if ((v61 & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_34();
}

void sub_1DC350B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v386 = v21;
  v27 = v26;
  v363 = v28;
  v362 = v29;
  v383 = v30;
  v384 = v31;
  v379 = v32;
  v357 = sub_1DC517BEC();
  v33 = OUTLINED_FUNCTION_0(v357);
  v356 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v37);
  v354 = sub_1DC517BCC();
  v38 = OUTLINED_FUNCTION_35(v354);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v41);
  v42 = sub_1DC5173CC();
  v43 = OUTLINED_FUNCTION_10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v46);
  v359 = sub_1DC5168FC();
  v47 = OUTLINED_FUNCTION_0(v359);
  v353 = v48;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v51);
  v52 = sub_1DC510AFC();
  v53 = OUTLINED_FUNCTION_10(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v56);
  v373 = sub_1DC51373C();
  v57 = OUTLINED_FUNCTION_0(v373);
  v372 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_20_0(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v63);
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v65);
  v360 = v66;
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v68);
  v382 = sub_1DC516F7C();
  v69 = OUTLINED_FUNCTION_0(v382);
  v385 = v70;
  v72 = *(v71 + 64);
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_15();
  v378 = v73;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v80);
  v81 = sub_1DC510B6C();
  v82 = OUTLINED_FUNCTION_0(v81);
  v84 = v83;
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_20_0(v87);
  v88 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8);
  v89 = *(*v88 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v90);
  v92 = &v345 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v94 = OUTLINED_FUNCTION_10(v93);
  v96 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_15();
  v380 = v97;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x1EEE9AC00](v99);
  OUTLINED_FUNCTION_56_1();
  v100 = sub_1DC51110C();
  v101 = OUTLINED_FUNCTION_0(v100);
  v103 = v102;
  v105 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  v375 = v27;
  sub_1DC51370C();
  v376 = sub_1DC5110DC();
  v381 = v106;
  v108 = *(v103 + 8);
  v107 = v103 + 8;
  v369 = v20;
  v109 = v20;
  v110 = v108;
  v370 = v100;
  v108(v109, v100);
  v377 = v84;
  v112 = *(v84 + 16);
  v111 = v84 + 16;
  v350 = v112;
  v112(v22, v383, v81);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v81);
  OUTLINED_FUNCTION_38_1();
  (*(v116 + 464))();
  v117 = v88[14];
  v118 = OUTLINED_FUNCTION_30();
  sub_1DC28F308(v118, v119, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F308(v23, &v92[v117], &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_6(v92);
  if (v129)
  {
    v348 = v110;
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v120, v121, v122);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v123, v124, v125);
    OUTLINED_FUNCTION_2_6(&v92[v117]);
    if (v129)
    {
      v346 = v111;
      v380 = v81;
      sub_1DC28EB30(v92, &unk_1ECC7CA30, &qword_1DC522A00);
      v126 = v382;
      v127 = v384;
      v128 = v385;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1DC28F308(v92, v380, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_6(&v92[v117]);
  if (v129)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v130, v131, v132);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v133, v134, v135);
    (*(v377 + 8))(v380, v81);
LABEL_9:
    sub_1DC28EB30(v92, &qword_1ECC7CE20, &unk_1DC523AC8);
    v127 = v384;
    v128 = v385;
    goto LABEL_10;
  }

  v346 = v111;
  v348 = v110;
  v147 = v377;
  v148 = v374;
  (*(v377 + 32))(v374, &v92[v117], v81);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v149, v150);
  v151 = v380;
  OUTLINED_FUNCTION_229();
  LODWORD(v345) = sub_1DC5176CC();
  v347 = v107;
  v152 = *(v147 + 8);
  v152(v148, v81);
  OUTLINED_FUNCTION_119_1();
  sub_1DC28EB30(v153, v154, v155);
  OUTLINED_FUNCTION_119_1();
  sub_1DC28EB30(v156, v157, v158);
  v380 = v81;
  v152(v151, v81);
  v107 = v347;
  OUTLINED_FUNCTION_119_1();
  sub_1DC28EB30(v159, v160, v161);
  v126 = v382;
  v127 = v384;
  v128 = v385;
  if ((v345 & 1) == 0)
  {
LABEL_10:
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v136(v378);

    v137 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_220();

    if (!OUTLINED_FUNCTION_172())
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_11:
    OUTLINED_FUNCTION_140();
    v138 = OUTLINED_FUNCTION_60_6();
    OUTLINED_FUNCTION_188(v138);
    OUTLINED_FUNCTION_180(4.8151e-34);
    v140 = sub_1DC291244(v379, v127, v139);
    OUTLINED_FUNCTION_26_7(v140);
    v141 = OUTLINED_FUNCTION_138_0();

    *(v81 + 14) = v141;
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v142, v143, v144, v145, v146, 0x16u);
    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_31();
LABEL_12:

LABEL_22:
    v192 = *(v128 + 8);
    v193 = OUTLINED_FUNCTION_45_0();
    v194(v193);
    goto LABEL_23;
  }

LABEL_14:
  OUTLINED_FUNCTION_12_0();
  v163 = (*(v162 + 296))();
  if (!v163)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v191(v371);

    v137 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_220();

    if (!OUTLINED_FUNCTION_172())
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v164 = v163;
  OUTLINED_FUNCTION_12_0();
  v166 = (*(v165 + 608))();
  v167 = OUTLINED_FUNCTION_55();
  sub_1DC352664(v167, v168, v166, v169);

  if (!v389)
  {
    sub_1DC28EB30(&v388, &qword_1ECC7CE28, &unk_1DC524E10);
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v195(v366);

    v137 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_220();

    if (OUTLINED_FUNCTION_172())
    {
      OUTLINED_FUNCTION_140();
      v196 = OUTLINED_FUNCTION_60_6();
      OUTLINED_FUNCTION_188(v196);
      OUTLINED_FUNCTION_180(4.8151e-34);
      v199 = sub_1DC291244(v198, v127, v197);
      OUTLINED_FUNCTION_26_7(v199);
      v200 = OUTLINED_FUNCTION_138_0();

      *(v81 + 14) = v200;
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v201, v202, v203, v204, v205, 0x16u);
      OUTLINED_FUNCTION_196();
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_31();

      goto LABEL_12;
    }

LABEL_21:

    goto LABEL_22;
  }

  sub_1DC28F9B0(&v388, v390);
  v170 = v391;
  v171 = v392;
  __swift_project_boxed_opaque_existential_1(v390, v391);
  v172 = *(v171 + 32);
  v173 = OUTLINED_FUNCTION_63_0();
  if (v174(v173))
  {
    v378 = v164;

    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v175 = OUTLINED_FUNCTION_161_1();
    v176(v175);
    v177 = v372;
    OUTLINED_FUNCTION_82_2();
    v178 = OUTLINED_FUNCTION_214();
    v179 = v373;
    v180(v178);

    v181 = sub_1DC516F6C();
    v182 = sub_1DC517BAC();

    LODWORD(v383) = v182;
    if (os_log_type_enabled(v181, v182))
    {
      OUTLINED_FUNCTION_140();
      v382 = OUTLINED_FUNCTION_60_6();
      *&v388 = v382;
      v183 = OUTLINED_FUNCTION_242(4.8151e-34);
      OUTLINED_FUNCTION_26_7(v183);
      OUTLINED_FUNCTION_20_3(&a11);
      sub_1DC51370C();
      v184 = sub_1DC5110DC();
      v186 = v185;
      v348(v170, v370);
      (*(v177 + 8))(v170, v373);
      v187 = OUTLINED_FUNCTION_80_4();
      sub_1DC291244(v187, v186, v188);
      OUTLINED_FUNCTION_155_0();

      *(v179 + 14) = v184;
      _os_log_impl(&dword_1DC287000, v181, v383, "Dropping CDM request as Request is cancelled for startRequestId: %s nluRequestId: %s", v179, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_31();

      v189 = v126;
      v190 = v348;
      (*(v385 + 8))(v367, v189);
    }

    else
    {

      v232 = *(v177 + 8);
      v233 = OUTLINED_FUNCTION_63_0();
      v234(v233);
      v235 = *(v128 + 8);
      v236 = OUTLINED_FUNCTION_12_3();
      v237(v236);
      v190 = v348;
    }

    v238 = v378;
    sub_1DC51370C();
    sub_1DC5110DC();
    v239 = OUTLINED_FUNCTION_55();
    v190(v239);
    OUTLINED_FUNCTION_38_1();
    v241 = (*(v240 + 648))(&v388);
    v242 = OUTLINED_FUNCTION_63_0();
    sub_1DC358108(v242, v243);

    v244 = OUTLINED_FUNCTION_223();
    v241(v244);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    v206 += 46;
    v207 = *v206;
    v371 = v206;
    v207();
    OUTLINED_FUNCTION_79_4();
    v209 = v373;
    v210 = v372;
    if (!v129 && (v208 & 1) != 0 && ((OUTLINED_FUNCTION_12_0(), (*(v211 + 392))(), OUTLINED_FUNCTION_79_4(), v129) || (v212 & 1) == 0))
    {
      v345 = v207;
      v378 = v164;
      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v366 = v256;
      v365 = v257;
      v364 = v258;
      (v258)(v358);
      OUTLINED_FUNCTION_82_2();
      v259 = v349;
      OUTLINED_FUNCTION_236(v260);
      v261();

      v262 = sub_1DC516F6C();
      v263 = v127;
      v264 = sub_1DC517B9C();

      if (os_log_type_enabled(v262, v264))
      {
        OUTLINED_FUNCTION_140();
        v265 = OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_218(v265, &v375);
        *v209 = 136315394;
        v266 = sub_1DC291244(v379, v263, &v388);
        OUTLINED_FUNCTION_26_7(v266);
        sub_1DC51370C();
        sub_1DC5110DC();
        OUTLINED_FUNCTION_238();
        OUTLINED_FUNCTION_203();
        (v348)();
        v267 = v259;
        v268 = v373;
        (*(v372 + 8))(v267, v373);
        v269 = OUTLINED_FUNCTION_80_4();
        v271 = sub_1DC291244(v269, v126, v270);
        v126 = v382;

        *(v209 + 14) = v271;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v272, v273, v274, v275, v276, 0x16u);
        OUTLINED_FUNCTION_184(&v375);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_31();

        v277 = *(v385 + 8);
        v277(v358, v126);
      }

      else
      {

        (*(v210 + 8))(v259, v209);
        v277 = *(v128 + 8);
        v278 = OUTLINED_FUNCTION_45_0();
        (v277)(v278);
        v268 = v209;
      }

      v347 = v107;
      v279 = *(v386 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_instrumentationUtil);
      v280 = v392;
      __swift_project_boxed_opaque_existential_1(v390, v391);
      v281 = *(v280 + 48);
      v282 = OUTLINED_FUNCTION_162();
      v283(v282, v280);
      OUTLINED_FUNCTION_147();
      (*(v284 + 120))();

      OUTLINED_FUNCTION_127_0();
      v286 = (*(v285 + 648))(&v388);
      v288 = v287;

      v289 = *v288;
      swift_isUniquelyReferenced_nonNull_native();
      v387 = *v288;
      v290 = OUTLINED_FUNCTION_205();
      sub_1DC358334(v290, v291, v376, v381);
      *v288 = v387;

      v292 = OUTLINED_FUNCTION_223();
      v286(v292);
      OUTLINED_FUNCTION_20_3(&v381);
      sub_1DC510AEC();
      OUTLINED_FUNCTION_127_0();
      v294 = *(v293 + 544);
      v295 = OUTLINED_FUNCTION_231();
      v296(v295);
      type metadata accessor for CDMNluRequest();
      OUTLINED_FUNCTION_83(v390);
      OUTLINED_FUNCTION_210();
      v297();
      v382 = CDMNluRequest.__allocating_init(swiftProto:)(v286);
      v298 = OUTLINED_FUNCTION_83(&v380);
      v364(v298, v366, v126);
      v299 = sub_1DC516F6C();
      v300 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_15_4(v300))
      {
        v301 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v301);
        OUTLINED_FUNCTION_33_10(&dword_1DC287000, v302, v303, "Created a wrapper CDMNluRequest with native Siri_Nlu_External_Cdm_NluRequest");
        OUTLINED_FUNCTION_40_0();
      }

      v277(v286, v126);
      sub_1DC2A0AE0();
      v304 = v353;
      OUTLINED_FUNCTION_90();
      v305 = v352;
      v306(v352);
      v307 = OUTLINED_FUNCTION_191(&a16);
      v308 = v380;
      v350(v307, v383, v380);
      OUTLINED_FUNCTION_97_2();
      v309();
      v310 = v377;
      v311 = (*(v377 + 80) + 16) & ~*(v377 + 80);
      v312 = (v351 + v311 + 7) & 0xFFFFFFFFFFFFFFF8;
      v313 = (v312 + 23) & 0xFFFFFFFFFFFFFFF8;
      v383 = *(v372 + 80);
      v314 = (v383 + v313 + 16) & ~v383;
      v385 = v383 | 7;
      v315 = swift_allocObject();
      (*(v310 + 32))(v315 + v311, v268, v308);
      v316 = (v315 + v312);
      v317 = v384;
      *v316 = v379;
      v316[1] = v317;
      v318 = (v315 + v313);
      v319 = v363;
      *v318 = v362;
      v318[1] = v319;
      v320 = *(v372 + 32);
      v372 += 32;
      v381 = v320;
      (v320)(v315 + v314, v361, v373);

      sub_1DC5168CC();

      (*(v304 + 8))(v305, v359);
      [v378 processCDMNluRequest_];
      sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
      sub_1DC51738C();
      *&v388 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_75_3();
      sub_1DC293BE4(v321, v322);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
      OUTLINED_FUNCTION_119_1();
      sub_1DC2C4B5C(v323, v324, v325);
      sub_1DC517E9C();
      (*(v356 + 104))(v355, *MEMORY[0x1E69E8090], v357);
      v326 = sub_1DC517C1C();
      OUTLINED_FUNCTION_195();
      v327 = swift_allocObject();
      v328 = v386;
      swift_weakInit();
      sub_1DC28FB9C(v390, &v388);
      OUTLINED_FUNCTION_97_2();
      v329();
      v330 = swift_allocObject();
      v330[2] = v327;
      sub_1DC28F9B0(&v388, (v330 + 3));
      v331 = v384;
      v330[8] = v379;
      v330[9] = v331;
      v332 = v363;
      v330[10] = v362;
      v330[11] = v332;
      OUTLINED_FUNCTION_76_3();
      v381();
      v333 = objc_allocWithZone(MEMORY[0x1E698D278]);

      v255 = sub_1DC3577A4(v326, sub_1DC3586A8, v330, 5.0);
      v334 = v392;
      __swift_project_boxed_opaque_existential_1(v390, v391);
      v335 = *(v334 + 40);
      v336 = OUTLINED_FUNCTION_55();
      v338 = v337(v336);
      OUTLINED_FUNCTION_20_3(&a11);
      sub_1DC51370C();
      sub_1DC5110DC();
      OUTLINED_FUNCTION_203();
      (v348)();
      v339 = *(*v338 + 128);
      OUTLINED_FUNCTION_70_4();
      v340();

      OUTLINED_FUNCTION_91_0();
      if ((*(v341 + 584))())
      {
        v342 = v382;
        v345();
        OUTLINED_FUNCTION_79_4();
        if (v129)
        {
        }

        else
        {
          v344 = v378;
          if (v343)
          {
            (*(*v328 + 592))(0);
          }
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v213 = OUTLINED_FUNCTION_161_1();
      v214(v213);
      OUTLINED_FUNCTION_82_2();
      v215 = OUTLINED_FUNCTION_214();
      v216(v215);

      v217 = sub_1DC516F6C();
      v218 = sub_1DC517BAC();

      LODWORD(v383) = v218;
      if (os_log_type_enabled(v217, v218))
      {
        OUTLINED_FUNCTION_140();
        *&v388 = OUTLINED_FUNCTION_60_6();
        v219 = OUTLINED_FUNCTION_242(4.8151e-34);
        OUTLINED_FUNCTION_26_7(v219);
        v384 = v217;
        sub_1DC51370C();
        v220 = sub_1DC5110DC();
        v378 = v164;
        v221 = v128;
        v223 = v222;
        OUTLINED_FUNCTION_203();
        (v348)();
        (*(v210 + 8))(v207, v373);
        v224 = OUTLINED_FUNCTION_80_4();
        sub_1DC291244(v224, v223, v225);
        OUTLINED_FUNCTION_155_0();

        *(v218 + 14) = v220;
        v226 = v384;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v227, v228, v229, v230, v231, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_31();

        (*(v221 + 8))(v368, v126);
        v164 = v378;
      }

      else
      {

        v245 = *(v210 + 8);
        v246 = OUTLINED_FUNCTION_85_0();
        v247(v246);
        (*(v128 + 8))(v368, v126);
      }

      OUTLINED_FUNCTION_12_0();
      v248 += 49;
      v249 = *v248;
      (*v248)();
      OUTLINED_FUNCTION_79_4();
      if (!v129 && (v250 & 1) != 0)
      {
        v251 = sub_1DC378234();
        static SignpostLogger.event(_:)(*v251, v251[1], *(v251 + 16), &unk_1F57F9698, &off_1F57F95E8);
      }

      v252 = v391;
      v253 = v392;
      __swift_project_boxed_opaque_existential_1(v390, v391);
      v254 = v249();
      (*(v253 + 24))(v375, v254, v252, v253);
      v255 = v164;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v390);
LABEL_23:
  OUTLINED_FUNCTION_34();
}

double sub_1DC352664@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_1DC28FB9C(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}