unint64_t sub_1D253DBFC()
{
  result = qword_1EC6DDA98;
  if (!qword_1EC6DDA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDA98);
  }

  return result;
}

uint64_t sub_1D253DC50()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D253DCF0()
{
  sub_1D2877F38();
}

uint64_t sub_1D253DD7C()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D253DE18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D253E490();
  *a1 = result;
  return result;
}

void sub_1D253DE48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEA00000000006E75;
  v5 = 0x526E6568576B7361;
  if (v2 != 1)
  {
    v5 = 0x726576656ELL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737961776C61;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1D253DEA8()
{
  result = qword_1EC6DDAA0;
  if (!qword_1EC6DDAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAA0);
  }

  return result;
}

unint64_t sub_1D253DF00()
{
  result = qword_1EC6DDAA8;
  if (!qword_1EC6DDAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAA8);
  }

  return result;
}

unint64_t sub_1D253DF58()
{
  result = qword_1EC6DDAB0;
  if (!qword_1EC6DDAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAB0);
  }

  return result;
}

unint64_t sub_1D253DFBC()
{
  result = qword_1EC6DDAB8;
  if (!qword_1EC6DDAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAB8);
  }

  return result;
}

unint64_t sub_1D253E010()
{
  result = qword_1EC6DDAC0;
  if (!qword_1EC6DDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAC0);
  }

  return result;
}

unint64_t sub_1D253E064()
{
  result = qword_1EC6DDAC8;
  if (!qword_1EC6DDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAC8);
  }

  return result;
}

unint64_t sub_1D253E0BC()
{
  result = qword_1EC6DDAD0;
  if (!qword_1EC6DDAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAD0);
  }

  return result;
}

uint64_t sub_1D253E114@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6D8CE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2871028();
  v3 = __swift_project_value_buffer(v2, qword_1EC6E3EC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D253E20C(uint64_t a1)
{
  v2 = sub_1D253CCA4();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1D253E25C()
{
  result = qword_1EC6DDAD8;
  if (!qword_1EC6DDAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAD8);
  }

  return result;
}

unint64_t sub_1D253E2B4()
{
  result = qword_1EC6DDAE0;
  if (!qword_1EC6DDAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAE0);
  }

  return result;
}

unint64_t sub_1D253E30C()
{
  result = qword_1EC6DDAE8;
  if (!qword_1EC6DDAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAE8);
  }

  return result;
}

uint64_t sub_1D253E360()
{
  if (qword_1EC6D8CE8 != -1)
  {
    swift_once();
  }

  return sub_1D2870F68();
}

uint64_t sub_1D253E3BC(uint64_t a1)
{
  v2 = sub_1D253E0BC();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1D253E40C()
{
  result = qword_1EC6DDAF0;
  if (!qword_1EC6DDAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDAF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDAF0);
  }

  return result;
}

uint64_t sub_1D253E490()
{
  v0 = sub_1D2879488();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

void sub_1D253E518(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for GeneratedImageEntity();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (v9)
  {
    v19[0] = a2;
    v19[1] = v2;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D2879258();
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      sub_1D253E85C(v10, v8);
      v12 = *&v8[*(v5 + 20)];
      v13 = type metadata accessor for PhotoAssetItemProviderWriting();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = v12;
      v20.receiver = v14;
      v20.super_class = v13;
      sub_1D2870F78();
      v15 = objc_msgSendSuper2(&v20, sel_init);
      [objc_allocWithZone(MEMORY[0x1E696ACA0]) initWithObject_];

      sub_1D253E8C0(v8);
      sub_1D2879228();
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
      v10 += v11;
      --v9;
    }

    while (v9);
    a2 = v19[0];
  }

  v16 = objc_allocWithZone(MEMORY[0x1E69DC640]);
  sub_1D253E91C();
  v17 = sub_1D28783C8();

  v18 = [v16 initWithItemProviders_];

  *a2 = v18;
}

uint64_t sub_1D253E72C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D2878568();
  v5[2] = a1;
  result = sub_1D239E0F8(sub_1D253E840, v5, "ImagePlaygroundInternal/GeneratedImageEntity+Share.swift", 56);
  *a2 = result;
  return result;
}

id sub_1D253E7A8(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));
  v3 = type metadata accessor for PhotoAssetItemProviderWriting();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = v2;
  v9.receiver = v4;
  v9.super_class = v3;
  sub_1D2870F78();
  v5 = objc_msgSendSuper2(&v9, sel_init);
  v6 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
  v7 = [v6 initWithObject_];

  return v7;
}

uint64_t sub_1D253E85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GeneratedImageEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D253E8C0(uint64_t a1)
{
  v2 = type metadata accessor for GeneratedImageEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D253E91C()
{
  result = qword_1EC6E2970;
  if (!qword_1EC6E2970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6E2970);
  }

  return result;
}

unint64_t sub_1D253E968(uint64_t a1, uint64_t a2)
{
  result = 0xD00000000000001ELL;
  if (!a2)
  {
    return 0xD00000000000004ALL;
  }

  if (a2 != 1)
  {
    sub_1D2879168();

    MEMORY[0x1D38A0C50](a1, a2);
    MEMORY[0x1D38A0C50](46, 0xE100000000000000);
    return 0xD000000000000024;
  }

  return result;
}

void sub_1D253EA44(uint64_t a1@<X8>)
{
  v74[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1D2878068();
  v8 = [v6 fileExistsAtPath_];

  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = sub_1D2878068();
  v74[0] = 0;
  v10 = [v6 contentsOfDirectoryAtPath:v9 error:v74];

  v11 = v74[0];
  if (!v10)
  {
    v26 = v74[0];
    v27 = sub_1D28714B8();

    swift_willThrow();
LABEL_33:
    sub_1D2540B80();
    swift_allocError();
    *v61 = 0;
    v61[1] = 0;
    swift_willThrow();
    goto LABEL_34;
  }

  v69 = v5;
  v70 = 0x80000001D28B9C70;
  v71 = v3;
  v72 = v2;
  v68 = a1;
  v12 = sub_1D28783E8();
  v13 = v11;

  v14 = *(v12 + 16);
  if (!v14)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v15 = 0;
  v16 = v12 + 40;
  v66 = v14 - 1;
  v17 = MEMORY[0x1E69E7CC0];
  v67 = v12 + 40;
  do
  {
    v18 = (v16 + 16 * v15);
    v19 = v15;
    while (1)
    {
      if (v19 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_39;
      }

      v20 = *(v18 - 1);
      v21 = *v18;
      v15 = v19 + 1;
      sub_1D2870F68();
      if (sub_1D2878298())
      {
        break;
      }

      v18 += 2;
      ++v19;
      if (v14 == v15)
      {
        goto LABEL_18;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74[0] = v17;
    v65 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D23D81B8(0, *(v17 + 2) + 1, 1);
      v17 = v74[0];
    }

    v24 = *(v17 + 2);
    v23 = *(v17 + 3);
    if (v24 >= v23 >> 1)
    {
      sub_1D23D81B8((v23 > 1), v24 + 1, 1);
      v17 = v74[0];
    }

    *(v17 + 2) = v24 + 1;
    v25 = &v17[16 * v24];
    *(v25 + 4) = v20;
    *(v25 + 5) = v21;
    v6 = v65;
    v16 = v67;
  }

  while (v66 != v19);
LABEL_18:

  v74[0] = v17;
  sub_1D2870F78();
  v28 = v73;
  sub_1D253F864(v74);
  if (v28)
  {

    __break(1u);
    return;
  }

  v29 = *(v74[0] + 2);
  if (!v29)
  {

    goto LABEL_33;
  }

  v30 = qword_1EC6DDB20 + 1;
  if (__OFADD__(qword_1EC6DDB20, 1))
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v30 >= v29)
  {
    v30 = 0;
    qword_1EC6DDB20 = -1;
  }

  if (v30 >= v29)
  {
    goto LABEL_40;
  }

  v31 = &v74[0][16 * v30];
  v32 = *(v31 + 4);
  v33 = *(v31 + 5);
  sub_1D2870F68();

  v34 = v69;
  sub_1D28724E8();
  sub_1D2870F68();
  v35 = sub_1D2873CA8();
  v36 = sub_1D28789F8();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v74[0] = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_1D23D7C84(v32, v33, v74);
    _os_log_impl(&dword_1D226E000, v35, v36, "Vetted image path: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x1D38A3520](v38, -1, -1);
    MEMORY[0x1D38A3520](v37, -1, -1);
  }

  (*(v71 + 8))(v34, v72);
  v39 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1D287F550;
  *(v40 + 32) = 0xD00000000000004FLL;
  *(v40 + 40) = v70;
  *(v40 + 48) = v32;
  *(v40 + 56) = v33;
  v41 = sub_1D28783C8();

  v42 = [v39 pathWithComponents_];

  v43 = v42;
  if (!v42)
  {
    sub_1D28780A8();
    v43 = sub_1D2878068();
  }

  v44 = sub_1D28780A8();
  v46 = v45;
  v47 = v6;
  v48 = [v6 contentsAtPath_];

  if (!v48)
  {
    sub_1D2540B80();
    swift_allocError();
    *v62 = v44;
    v62[1] = v46;
    swift_willThrow();
    goto LABEL_37;
  }

  v49 = sub_1D28716E8();
  v51 = v50;

  if (__OFADD__(qword_1EC6DDB20, 1))
  {
LABEL_41:
    __break(1u);
  }

  ++qword_1EC6DDB20;
  v52 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(v49, v51);
  v53 = sub_1D28716D8();
  v54 = [v52 initWithData_];

  sub_1D22D6D60(v49, v51);
  if (v54)
  {
    v55 = sub_1D2630BC0();
    v56 = type metadata accessor for PlaygroundImage();
    v57 = v68;
    v58 = (v68 + v56[9]);
    *v58 = 0u;
    v58[1] = 0u;
    *(v57 + v56[10]) = xmmword_1D28809A0;
    v59 = v56[11];
    v60 = sub_1D2873AA8();
    (*(*(v60 - 8) + 56))(v57 + v59, 1, 1, v60);
    *v57 = v54;
    *(v57 + 8) = 2;
    [v54 imageOrientation];
    *(v57 + 24) = sub_1D2878C88();
    *(v57 + 16) = v55;
    *(v57 + 32) = 0;
    *(v57 + 40) = 0;
    *(v57 + v56[12]) = 0;
    sub_1D2871808();
    sub_1D22D6D60(v49, v51);

    return;
  }

  sub_1D23EE050();
  swift_allocError();
  *v63 = 0;
  swift_willThrow();
  sub_1D22D6D60(v49, v51);
LABEL_37:
  v6 = v47;
LABEL_34:
}

uint64_t sub_1D253F204()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC80);
  sub_1D2872008();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D287F500;
  sub_1D2871FD8();
  return v0;
}

uint64_t sub_1D253F2B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D23891A0;

  return sub_1D254029C(a1, v4);
}

uint64_t sub_1D253F378(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D2879328();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_1D2878568();
  v2[7] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v2[8] = v5;
  v2[9] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D253F46C, v5, v4);
}

uint64_t sub_1D253F46C()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1D253F548;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D253F548()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  *(*v1 + 88) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 72);
  v7 = *(v2 + 64);
  if (v0)
  {
    v8 = sub_1D253F7F8;
  }

  else
  {
    v8 = sub_1D253F6E0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D253F6E0()
{
  v1 = v0[3];

  v2 = *(v1 + *(type metadata accessor for ImageGeneration.PreviewImage(0) + 28));
  if (*(v2 + 16))
  {
    v3 = v0[2];
    v4 = *(type metadata accessor for PlaygroundImage() - 8);
    sub_1D239A330(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
  }

  else
  {
    sub_1D239AE8C();
    swift_allocError();
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D253F7F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D253F864(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D286FD78(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D253F8D0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D253F8D0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D28795B8();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D2878468();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D253FA98(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D253F9C8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D253F9C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1D2879618(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D253FA98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1D269163C(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D2540074((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1D2879618();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D2879618();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D2691650(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D2691650((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1D2540074((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D269163C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1D26915B0(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1D2879618(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1D2540074(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D2879618() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D2879618() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1D254029C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for PlaygroundImage();
  v3[11] = swift_task_alloc();
  v4 = sub_1D2879308();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_1D2879328();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  sub_1D2878568();
  v3[19] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[20] = v7;
  v3[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D254042C, v7, v6);
}

uint64_t sub_1D254042C()
{
  v1 = *(v0 + 56);
  *(v0 + 176) = 0;
  if (v1)
  {
    v1(0.0);
  }

  v2 = sub_1D2879908();
  v4 = v3;
  sub_1D2879718();
  *(v0 + 40) = v2;
  *(v0 + 48) = v4;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1D25404DC, 0, 0);
}

uint64_t sub_1D25404DC()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = sub_1D2540B38(&qword_1ED89CBF8, MEMORY[0x1E69E8820]);
  sub_1D28796F8();
  sub_1D2540B38(&qword_1ED89CC00, MEMORY[0x1E69E87E8]);
  sub_1D2879338();
  v5 = *(v2 + 8);
  v0[23] = v5;
  v0[24] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1D2540660;
  v8 = v0[15];
  v7 = v0[16];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1D2540660()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    (*(v2 + 184))(*(v2 + 120), *(v2 + 96));
    v3 = sub_1D2540A30;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);
    v8 = *(v2 + 128);
    (*(v2 + 184))(*(v2 + 120), *(v2 + 96));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);
    v3 = sub_1D25407C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D25407C0()
{
  v1 = *(v0 + 72);
  if (*(v1 + 16))
  {

LABEL_3:
    sub_1D2540B80();
    swift_allocError();
    *v2 = xmmword_1D2891EF0;
    swift_willThrow();
LABEL_4:

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 176) + 1;
  if (*(v0 + 176) == 8)
  {

    if (*(v1 + 16))
    {
      goto LABEL_3;
    }

    v6 = *(v0 + 208);
    sub_1D253EA44(*(v0 + 88));
    if (v6)
    {
      goto LABEL_4;
    }

    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D287F500;
    *(v9 + 56) = v8;
    *(v9 + 64) = &protocol witness table for PlaygroundImage;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
    sub_1D23EEBD4(v7, boxed_opaque_existential_1);

    v11 = *(v0 + 8);

    return v11(v9);
  }

  else
  {
    *(v0 + 176) = v5;
    v12 = *(v0 + 56);
    if (v12)
    {
      v12(v5 / 10.0);
    }

    v13 = sub_1D2879908();
    v15 = v14;
    sub_1D2879718();
    *(v0 + 40) = v13;
    *(v0 + 48) = v15;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1D25404DC, 0, 0);
  }
}

uint64_t sub_1D2540A30()
{
  (*(v0[17] + 8))(v0[18], v0[16]);
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D2540AA4, v1, v2);
}

uint64_t sub_1D2540AA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2540B38(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D2540B80()
{
  result = qword_1EC6DDB28;
  if (!qword_1EC6DDB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB28);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal0A10GenerationV06VettedA14GeneratorError33_27D7930C66952A6C6740CD54248B30DALLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D2540BEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2540C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D2540C9C(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D2540CD0()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872658();
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "DEMO: Bumping recipe", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  *(v1 + 32) = 0;
  v10 = *(v1 + 24);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v12;
  }

  return result;
}

uint64_t sub_1D2540E28()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872658();
  v6 = sub_1D2873CA8();
  v7 = sub_1D2878A18();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D226E000, v6, v7, "DEMO: Bumping image", v8, 2u);
    MEMORY[0x1D38A3520](v8, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 32);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v12;
  }

  return result;
}

uint64_t sub_1D2540F7C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v58 = a1;
  v59[1] = *MEMORY[0x1E69E9840];
  v57 = type metadata accessor for PlaygroundImage();
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D28716B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6D8CF0 != -1)
  {
    swift_once();
  }

  sub_1D2871588();
  v9 = sub_1D2871648();
  v10 = sub_1D2541680();
  v11 = sub_1D2878068();
  v12 = [v10 fileExistsAtPath_];

  if (!v12)
  {
LABEL_21:
    sub_1D25423F0();
    swift_allocError();
    *v50 = 0;
    v50[1] = 0;
    swift_willThrow();
    if ((v9 & 1) == 0)
    {
      return (*(v6 + 8))(v8, v5);
    }

LABEL_22:
    sub_1D2871628();
    return (*(v6 + 8))(v8, v5);
  }

  v55 = v9;
  v13 = *(v3 + 40);
  sub_1D25416F4();
  v14 = sub_1D2878068();

  v59[0] = 0;
  v15 = [v13 contentsOfDirectoryAtPath:v14 error:v59];

  v16 = v59[0];
  if (!v15)
  {
    v47 = v5;
    v48 = v59[0];
    v49 = sub_1D28714B8();

    v5 = v47;
    swift_willThrow();

LABEL_20:
    LOBYTE(v9) = v55;
    goto LABEL_21;
  }

  v17 = sub_1D28783E8();
  v18 = v16;

  v59[0] = v17;
  sub_1D2870F68();
  sub_1D253F864(v59);
  if (v2)
  {

    __break(1u);
    return result;
  }

  v19 = *(v59[0] + 2);
  if (!v19)
  {

    goto LABEL_20;
  }

  v54 = v5;
  if (*(v3 + 32) >= v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = *(v3 + 32);
  }

  if (v20 < 0)
  {
    __break(1u);
  }

  v21 = &v59[0][16 * v20];
  v23 = *(v21 + 4);
  v22 = *(v21 + 5);
  sub_1D2870F68();

  v24 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D287F550;
  *(v25 + 32) = sub_1D25416F4();
  *(v25 + 40) = v26;
  *(v25 + 48) = v23;
  *(v25 + 56) = v22;
  v27 = sub_1D28783C8();

  v28 = [v24 pathWithComponents_];

  v29 = v28;
  if (!v28)
  {
    sub_1D28780A8();
    v29 = sub_1D2878068();
  }

  v30 = sub_1D28780A8();
  v32 = v31;
  v33 = *(v3 + 40);
  v34 = [v33 contentsAtPath_];

  if (!v34)
  {
    sub_1D25423F0();
    swift_allocError();
    *v51 = v30;
    v51[1] = v32;
    swift_willThrow();
    goto LABEL_26;
  }

  v35 = sub_1D28716E8();
  v37 = v36;

  v38 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(v35, v37);
  v39 = sub_1D28716D8();
  v40 = [v38 initWithData_];

  sub_1D22D6D60(v35, v37);
  if (!v40)
  {
    sub_1D23EE050();
    swift_allocError();
    *v52 = 0;
    swift_willThrow();
    sub_1D22D6D60(v35, v37);
LABEL_26:
    v5 = v54;
    if ((v55 & 1) == 0)
    {
      return (*(v6 + 8))(v8, v5);
    }

    goto LABEL_22;
  }

  v53 = sub_1D2630BC0();
  v42 = v56;
  v41 = v57;
  v43 = &v56[*(v57 + 36)];
  *v43 = 0u;
  *(v43 + 1) = 0u;
  *(v42 + v41[10]) = xmmword_1D28809A0;
  v44 = v41[11];
  v45 = sub_1D2873AA8();
  (*(*(v45 - 8) + 56))(v42 + v44, 1, 1, v45);
  *v42 = v40;
  *(v42 + 8) = 2;
  [v40 imageOrientation];
  *(v42 + 24) = sub_1D2878C88();
  *(v42 + 16) = v53;
  *(v42 + 32) = 0;
  *(v42 + 40) = 0;
  *(v42 + v41[12]) = 0;
  sub_1D2871808();
  sub_1D22D6D60(v35, v37);
  sub_1D23EEBD4(v42, v58);
  if (v55)
  {
    sub_1D2871628();
  }

  return (*(v6 + 8))(v8, v54);
}

void sub_1D25415BC()
{
  sub_1D23B7BB8();
  v0 = sub_1D2878A58();
  v1 = sub_1D2878068();
  v2 = [v0 stringForKey_];

  if (v2)
  {
    v3 = sub_1D28780A8();
    v5 = v4;
  }

  else
  {
    v5 = 0x80000001D28B9E10;
    v3 = 0xD000000000000042;
  }

  qword_1EC6DDB30 = v3;
  *algn_1EC6DDB38 = v5;
}

id sub_1D2541680()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = [objc_opt_self() defaultManager];
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1D25416F4()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6D8CF0 != -1)
  {
    swift_once();
  }

  v17 = qword_1EC6DDB30;
  v18 = *algn_1EC6DDB38;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](47, 0xE100000000000000);
  v6 = v17;
  v5 = v18;
  v17 = *(v0 + 24);
  v7 = sub_1D28795C8();
  v9 = v8;
  v17 = v6;
  v18 = v5;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v7, v9);

  v10 = v17;
  v11 = v18;
  sub_1D2872658();
  sub_1D2870F68();
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1D23D7C84(v10, v11, &v17);
    _os_log_impl(&dword_1D226E000, v12, v13, "DEMO: Recipe path is %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v14, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return v10;
}

unint64_t sub_1D254194C(uint64_t a1, uint64_t a2)
{
  result = 0xD00000000000001ELL;
  if (!a2)
  {
    return 0xD000000000000048;
  }

  if (a2 != 1)
  {
    sub_1D2879168();

    MEMORY[0x1D38A0C50](a1, a2);
    MEMORY[0x1D38A0C50](46, 0xE100000000000000);
    return 0xD000000000000022;
  }

  return result;
}

uint64_t sub_1D2541A28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2541A84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC80);
  sub_1D2872008();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D28838F0;
  MEMORY[0x1D389AA70]();
  sub_1D2871EB8();
  sub_1D2871FD8();
  return v0;
}

uint64_t sub_1D2541B88(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D23891A0;

  return sub_1D2541C48(a1, v4);
}

uint64_t sub_1D2541C48(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v3[10] = type metadata accessor for PlaygroundImage();
  v3[11] = swift_task_alloc();
  v4 = sub_1D2879308();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_1D2879328();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  sub_1D2878568();
  v3[19] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[20] = v7;
  v3[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2541DD8, v7, v6);
}

uint64_t sub_1D2541DD8()
{
  v1 = sub_1D2540E28();
  *(v0 + 176) = 0;
  v2 = *(v0 + 56);
  if (v2)
  {
    v2(v1, 0.0);
  }

  v3 = sub_1D2879908();
  v5 = v4;
  sub_1D2879718();
  *(v0 + 40) = v3;
  *(v0 + 48) = v5;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1D2541E98, 0, 0);
}

uint64_t sub_1D2541E98()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = sub_1D2540B38(&qword_1ED89CBF8, MEMORY[0x1E69E8820]);
  sub_1D28796F8();
  sub_1D2540B38(&qword_1ED89CC00, MEMORY[0x1E69E87E8]);
  sub_1D2879338();
  v5 = *(v2 + 8);
  v0[23] = v5;
  v0[24] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1D254201C;
  v8 = v0[15];
  v7 = v0[16];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1D254201C()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    (*(v2 + 184))(*(v2 + 120), *(v2 + 96));
    v3 = sub_1D2540A30;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 136);
    v6 = *(v2 + 144);
    v8 = *(v2 + 128);
    (*(v2 + 184))(*(v2 + 120), *(v2 + 96));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);
    v3 = sub_1D254217C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D254217C()
{
  v1 = *(v0 + 72);
  if (*(v1 + 16))
  {

LABEL_3:
    sub_1D25423F0();
    swift_allocError();
    *v2 = xmmword_1D2891EF0;
    swift_willThrow();
LABEL_4:

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 176) + 1;
  if (*(v0 + 176) == 9)
  {

    if (*(v1 + 16))
    {
      goto LABEL_3;
    }

    v6 = *(v0 + 208);
    sub_1D2540F7C(*(v0 + 88));
    if (v6)
    {
      goto LABEL_4;
    }

    v8 = *(v0 + 80);
    v7 = *(v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D287F500;
    *(v9 + 56) = v8;
    *(v9 + 64) = &protocol witness table for PlaygroundImage;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 32));
    sub_1D23EEBD4(v7, boxed_opaque_existential_1);

    v11 = *(v0 + 8);

    return v11(v9);
  }

  else
  {
    *(v0 + 176) = v5;
    v12 = *(v0 + 56);
    if (v12)
    {
      v12(v5 / 10.0);
    }

    v13 = sub_1D2879908();
    v15 = v14;
    sub_1D2879718();
    *(v0 + 40) = v13;
    *(v0 + 48) = v15;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1D2541E98, 0, 0);
  }
}

unint64_t sub_1D25423F0()
{
  result = qword_1EC6DDB40;
  if (!qword_1EC6DDB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23ImagePlaygroundInternal0A10GenerationV04DemoA9GeneratorC0D5Error33_9586FEA6E7E297718C71F1586EE069E8LLO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1D2542484()
{
  result = qword_1EC6DDB48;
  if (!qword_1EC6DDB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB48);
  }

  return result;
}

unint64_t sub_1D25424EC()
{
  result = qword_1EC6DDB50;
  if (!qword_1EC6DDB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB50);
  }

  return result;
}

id sub_1D2542540(char a1)
{
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if ((a1 & 1) == 0)
  {
    return sub_1D23D646C(3, 0, 6u);
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D25426A4(char a1)
{
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (a1)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v4 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

unint64_t sub_1D254288C()
{
  result = qword_1EC6DDB58;
  if (!qword_1EC6DDB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB58);
  }

  return result;
}

uint64_t sub_1D25428EC(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_1D24D2DFC();
  sub_1D28719E8();

  v10 = v1;
  swift_getKeyPath();
  sub_1D2871A08();

  swift_beginAccess();
  v4 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1D27CCAC0(0, v4[2] + 1, 1, v4);
    *(v2 + 16) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1D27CCAC0((v6 > 1), v7 + 1, 1, v4);
  }

  v4[2] = v7 + 1;
  v4[v7 + 4] = a1;
  *(v2 + 16) = v4;
  swift_endAccess();
  swift_getKeyPath();
  v8 = a1;
  sub_1D28719F8();
}

uint64_t sub_1D2542A6C()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v0;
  sub_1D24D2DFC();
  sub_1D28719E8();

  swift_beginAccess();
  if (*(*(v0 + 16) + 16))
  {
    swift_getKeyPath();
    v9 = v0;
    sub_1D28719E8();

    v9 = v0;
    swift_getKeyPath();
    sub_1D2871A08();

    result = swift_beginAccess();
    if (*(*(v0 + 16) + 16))
    {
      sub_1D278DE68(0, 1);
      swift_endAccess();
      v9 = v0;
      swift_getKeyPath();
      sub_1D28719F8();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_1D2872698();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A18();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "Could not pop if errorStack is empty.", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_1D2542CE4()
{
  type metadata accessor for GPAlertStack();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  result = sub_1D2871A18();
  qword_1EC6E3B98 = v0;
  return result;
}

uint64_t sub_1D2542D3C()
{
  swift_getKeyPath();
  sub_1D24D2DFC();
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D2870F68();
}

uint64_t sub_1D2542DC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D24D2DFC();
  sub_1D28719E8();

  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_1D2870F68();
}

uint64_t sub_1D2542E54()
{
  swift_getKeyPath();
  sub_1D24D2DFC();
  sub_1D28719D8();
}

uint64_t sub_1D2542EF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D2542F58()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal12GPAlertStack___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GPAlertStack()
{
  result = qword_1EC6D8950;
  if (!qword_1EC6D8950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotoLibraryError(unsigned __int16 *a1, unsigned int a2)
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
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotoLibraryError(uint64_t result, unsigned int a2, unsigned int a3)
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
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
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
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D25431D4(unsigned __int8 a1)
{
  v1 = a1;
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (!os_variant_has_internal_ui())
  {
    if (v1 != 9)
    {
      goto LABEL_8;
    }

LABEL_6:
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v1 == 9)
  {
    goto LABEL_6;
  }

  if (v1 == 8)
  {
    return 0xD000000000000098;
  }

LABEL_8:
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_10:
    swift_once();
  }

LABEL_9:
  v5 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t getEnumTagSinglePayload for PhotoLibraryError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhotoLibraryError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D2543554()
{
  result = qword_1EC6DDB60;
  if (!qword_1EC6DDB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB60);
  }

  return result;
}

unint64_t sub_1D25435C4()
{
  result = qword_1EC6DDB68;
  if (!qword_1EC6DDB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB68);
  }

  return result;
}

unint64_t sub_1D254362C()
{
  result = qword_1EC6DDB70;
  if (!qword_1EC6DDB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB70);
  }

  return result;
}

void *sub_1D254369C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v24 - v1;
  v3 = sub_1D2872008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29[0] = sub_1D2871E78();
  v7 = sub_1D2870F68();
  sub_1D274DD90(v7);
  sub_1D2679C88(*&v29[0]);

  v8 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v9 = sub_1D28783C8();

  v10 = [v8 initWithArray_];

  v11 = [v10 array];
  v12 = sub_1D28783E8();

  v13 = *(v12 + 16);
  if (v13)
  {
    v24 = v12;
    v14 = v12 + 32;
    v15 = (v4 + 56);
    v16 = (v4 + 48);
    v27 = (v4 + 32);
    v17 = MEMORY[0x1E69E7CC0];
    v25 = v6;
    v26 = v4;
    do
    {
      sub_1D23C3EE4(v14, v29);
      sub_1D23C3FAC(v29, &v28);
      v18 = swift_dynamicCast();
      (*v15)(v2, v18 ^ 1u, 1, v3);
      if ((*v16)(v2, 1, v3) == 1)
      {
        sub_1D2544500(v2);
      }

      else
      {
        v19 = *v27;
        (*v27)(v6, v2, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D27CC780(0, v17[2] + 1, 1, v17);
        }

        v21 = v17[2];
        v20 = v17[3];
        if (v21 >= v20 >> 1)
        {
          v17 = sub_1D27CC780(v20 > 1, v21 + 1, 1, v17);
        }

        v17[2] = v21 + 1;
        v22 = v17 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21;
        v6 = v25;
        v19(v22, v25, v3);
      }

      v14 += 32;
      --v13;
    }

    while (v13);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v17;
}

uint64_t sub_1D25439F8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2543A78(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D23891A0;

  return sub_1D2543B38(a1, v4);
}

uint64_t sub_1D2543B38(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D2879308();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_1D2879328();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for PlaygroundImage();
  v3[18] = swift_task_alloc();
  sub_1D2878568();
  v3[19] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v3[20] = v7;
  v3[21] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D2543CC8, v7, v6);
}

uint64_t sub_1D2543CC8()
{
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  sub_1D262D084(0xD000000000000017, 0x80000001D28BA2B0, qword_1ED8B0058, *(v0 + 144));
  v1 = *(v0 + 56);
  *(v0 + 176) = 0;
  if (v1)
  {
    v1(0.0);
  }

  v2 = sub_1D2879908();
  v4 = v3;
  sub_1D2879718();
  *(v0 + 40) = v2;
  *(v0 + 48) = v4;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1D2543E58, 0, 0);
}

uint64_t sub_1D2543E58()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = sub_1D2540B38(&qword_1ED89CBF8, MEMORY[0x1E69E8820]);
  sub_1D28796F8();
  sub_1D2540B38(&qword_1ED89CC00, MEMORY[0x1E69E87E8]);
  sub_1D2879338();
  v5 = *(v2 + 8);
  v0[23] = v5;
  v0[24] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v1, v3);
  v6 = swift_task_alloc();
  v0[25] = v6;
  *v6 = v0;
  v6[1] = sub_1D2543FDC;
  v8 = v0[13];
  v7 = v0[14];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v7, v4);
}

uint64_t sub_1D2543FDC()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    (*(v2 + 184))(*(v2 + 104), *(v2 + 80));
    v3 = sub_1D254439C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = *(v2 + 120);
    v6 = *(v2 + 128);
    v8 = *(v2 + 112);
    (*(v2 + 184))(*(v2 + 104), *(v2 + 80));
    (*(v7 + 8))(v6, v8);
    v4 = *(v2 + 160);
    v5 = *(v2 + 168);
    v3 = sub_1D254413C;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D254413C()
{
  v1 = *(v0 + 72);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 144);

LABEL_3:
    sub_1D25444AC();
    swift_allocError();
    swift_willThrow();
    sub_1D23D4DFC(v2);

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = *(v0 + 176) + 1;
  if (*(v0 + 176) == 8)
  {

    v6 = *(v1 + 16);
    v2 = *(v0 + 144);
    if (v6)
    {
      goto LABEL_3;
    }

    v7 = *(v0 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1D0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D287F500;
    *(v8 + 56) = v7;
    *(v8 + 64) = &protocol witness table for PlaygroundImage;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v8 + 32));
    sub_1D239A330(v2, boxed_opaque_existential_1);
    sub_1D23D4DFC(v2);

    v10 = *(v0 + 8);

    return v10(v8);
  }

  else
  {
    *(v0 + 176) = v5;
    v11 = *(v0 + 56);
    if (v11)
    {
      v11(v5 / 10.0);
    }

    v12 = sub_1D2879908();
    v14 = v13;
    sub_1D2879718();
    *(v0 + 40) = v12;
    *(v0 + 48) = v14;
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;

    return MEMORY[0x1EEE6DFA0](sub_1D2543E58, 0, 0);
  }
}

uint64_t sub_1D254439C()
{
  (*(v0[15] + 8))(v0[16], v0[14]);
  v1 = v0[20];
  v2 = v0[21];

  return MEMORY[0x1EEE6DFA0](sub_1D2544410, v1, v2);
}

uint64_t sub_1D2544410()
{
  v1 = *(v0 + 144);

  sub_1D23D4DFC(v1);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1D25444AC()
{
  result = qword_1EC6DDB78;
  if (!qword_1EC6DDB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB78);
  }

  return result;
}

uint64_t sub_1D2544500(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2544580()
{
  result = qword_1EC6DDB80;
  if (!qword_1EC6DDB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDB80);
  }

  return result;
}

uint64_t type metadata accessor for GeneratedImageEntity()
{
  result = qword_1EC6D8AF0;
  if (!qword_1EC6D8AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2544708()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1D2878588();
  v3 = sub_1D28785F8();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D22AE01C(0, 0, v2, &unk_1D288A478, v4);
}

uint64_t sub_1D2544800()
{
  v0 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1D28714C8();
  result = sub_1D28780F8();
  qword_1EC6E3EE8 = result;
  unk_1EC6E3EF0 = v2;
  return result;
}

uint64_t sub_1D2544898()
{
  v0 = sub_1D2871028();
  __swift_allocate_value_buffer(v0, qword_1EC6E3EF8);
  __swift_project_value_buffer(v0, qword_1EC6E3EF8);
  return sub_1D2871018();
}

uint64_t sub_1D25448FC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDB00);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD958);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_1D28714E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = type metadata accessor for GeneratedImageEntity();
  v10 = (v0 + *(v9 + 28));
  if (v10[1])
  {
    if (qword_1EC6D8D08 != -1)
    {
      swift_once();
    }

    sub_1D2870F68();
  }

  else
  {
    v11 = *v10;
    v19[0] = 1598508361;
    v19[1] = 0xE400000000000000;
    v18[0] = v11;
    v12 = sub_1D28795C8();
    MEMORY[0x1D38A0C50](v12);
  }

  sub_1D28714C8();
  (*(v8 + 56))(v6, 1, 1, v7);
  v13 = *(v0 + *(v9 + 24));
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v18[-2] = sub_1D25463AC;
  v18[-1] = v15;
  sub_1D2870F78();
  os_unfair_lock_lock((v13 + 32));
  sub_1D25463B4((v13 + 16), v19);
  os_unfair_lock_unlock((v13 + 32));

  sub_1D2870ED8();
  v16 = sub_1D2870EE8();
  (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
  return sub_1D2870EF8();
}

uint64_t sub_1D2544C30(uint64_t a1, unint64_t a2)
{
  sub_1D22D6CE4(a1, a2);
  swift_getAtKeyPath();
  sub_1D22D6D4C(a1, a2);
  return v3;
}

uint64_t sub_1D2544C7C()
{
  if (qword_1EC6D8D00 != -1)
  {
    return swift_once();
  }

  return result;
}

uint64_t sub_1D2544D84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6D8D10 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2871028();
  v3 = __swift_project_value_buffer(v2, qword_1EC6E3EF8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D2544E70(uint64_t a1)
{
  v2 = sub_1D25463FC(&qword_1EC6E11A0, type metadata accessor for GeneratedImageEntity);

  return MEMORY[0x1EEDB2C58](a1, v2);
}

uint64_t sub_1D2544F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D22BC8FC;

  return MEMORY[0x1EEDB3F60](a1, a2, a3, a4);
}

uint64_t sub_1D2544FFC(uint64_t a1)
{
  v2 = sub_1D25463FC(&qword_1EC6DDBB0, type metadata accessor for GeneratedImageEntity);

  return MEMORY[0x1EEDB3F68](a1, v2);
}

uint64_t sub_1D2545094@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDBE0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v16 - v2;
  v16[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDBE8);
  v4 = *(v16[0] - 8);
  MEMORY[0x1EEE9AC00](v16[0]);
  v6 = v16 - v5;
  v7 = sub_1D2873AA8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDBF0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v16 - v10;
  sub_1D2873A08();
  type metadata accessor for GeneratedImageEntity();
  sub_1D25463FC(&qword_1EC6DDBF8, type metadata accessor for GeneratedImageEntity);
  sub_1D2872758();
  sub_1D2873A28();
  sub_1D2872778();
  v12 = *(v1 + 48);
  (*(v9 + 16))(v3, v11, v8);
  v13 = &v3[v12];
  v14 = v16[0];
  (*(v4 + 16))(v13, v6, v16[0]);
  sub_1D28727A8();
  (*(v4 + 8))(v6, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D25453B4(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE70);
  v1[3] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0);
  v1[4] = swift_task_alloc();
  v2 = sub_1D2873AA8();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D25454E4, 0, 0);
}

uint64_t sub_1D25454E4()
{
  v0[8] = type metadata accessor for GeneratedImageEntity();
  sub_1D2873A08();
  v0[9] = sub_1D2878568();
  v0[10] = sub_1D2878558();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1D25455D8;
  v2 = v0[4];

  return (sub_1D270BEC8)(v2, 1, 0);
}

uint64_t sub_1D25455D8()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D2545714, v1, v0);
}

uint64_t sub_1D2545714()
{
  v1 = v0[4];

  v2 = type metadata accessor for PlaygroundImage();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  if (v3 == 1)
  {
    (*(v5 + 8))(v0[7], v0[5]);
    sub_1D22BD238(v6, &unk_1EC6DE5A0);
    v8 = sub_1D2545A38;
  }

  else
  {
    v9 = v0[3];
    (*(v5 + 16))(v9, v0[7], v0[5]);
    (*(v5 + 56))(v9, 0, 1, v7);
    v0[12] = _s23ImagePlaygroundInternal0bA0V9imageData3for24ensureRegionalCompliance10Foundation0E0VSg22UniformTypeIdentifiers6UTTypeVSg_SbtF_0(v9);
    v0[13] = v10;
    sub_1D22BD238(v9, &qword_1EC6DAE70);
    (*(v5 + 8))(v4, v7);
    sub_1D23D4DFC(v6);
    v8 = sub_1D25458A8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D25458A8()
{
  v1 = v0[13];
  if (v1 >> 60 == 15)
  {
    sub_1D233F184();
    swift_allocError();
    *v2 = 1;
    swift_willThrow();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[12];
    v6 = *(v0[2] + *(v0[8] + 24));
    v7 = swift_task_alloc();
    *(v7 + 16) = v5;
    *(v7 + 24) = v1;
    os_unfair_lock_lock((v6 + 32));
    sub_1D2546350((v6 + 16));
    os_unfair_lock_unlock((v6 + 32));

    v8 = v0[1];
    v9 = v0[12];
    v10 = v0[13];

    return v8(v9, v10);
  }
}

uint64_t sub_1D2545A38()
{
  sub_1D233F184();
  swift_allocError();
  *v1 = 1;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2545AF4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D28716B8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2545BC0, 0, 0);
}

uint64_t sub_1D2545BC0()
{
  v1 = v0[3];
  v0[8] = *(v1 + *(type metadata accessor for GeneratedImageEntity() + 20));
  v0[9] = sub_1D2878568();
  v0[10] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v0[11] = v3;
  v0[12] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D2545C70, v3, v2);
}

uint64_t sub_1D2545C70()
{
  v1 = v0[8];
  v2 = sub_1D2878558();
  v0[13] = v2;
  v3 = swift_task_alloc();
  v0[14] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = 256;
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1D2545D7C;
  v5 = v0[7];
  v6 = v0[4];
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v5, v2, v7, 0xD00000000000003FLL, 0x80000001D28B57A0, sub_1D23F564C, v3, v6);
}

uint64_t sub_1D2545D7C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1D2545FD8;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1D2545EA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2545EA0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2545F08, 0, 0);
}

uint64_t sub_1D2545F08()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v0[6], v1, v2);
  sub_1D2872788();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2545FD8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D2546054, 0, 0);
}

uint64_t sub_1D2546054()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D25460EC()
{
  sub_1D2871818();
  if (v0 <= 0x3F)
  {
    sub_1D25461E8();
    if (v1 <= 0x3F)
    {
      sub_1D2546248(319, &qword_1EC6D7EE8, &type metadata for GeneratedImageEntity.LockedState, MEMORY[0x1E69E93F8]);
      if (v2 <= 0x3F)
      {
        sub_1D2546248(319, &qword_1ED8A6D20, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D25461E8()
{
  if (!qword_1EC6D8980[0])
  {
    sub_1D250D10C();
    v0 = type metadata accessor for _PhotoAsset();
    if (!v1)
    {
      atomic_store(v0, qword_1EC6D8980);
    }
  }
}

void sub_1D2546248(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D2546298(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D25462F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1D2546350(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = a1[1];
  sub_1D22D6CF8(v4, v3);
  result = sub_1D22D6D4C(v5, v6);
  *a1 = v4;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D25463B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D25463FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D254645C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "ays";
  }

  else
  {
    v4 = "providerIdentifier";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "providerIdentifier";
  }

  else
  {
    v7 = "ays";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D2879618();
  }

  return v9 & 1;
}

uint64_t sub_1D2546508()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2546588()
{
  sub_1D2877F38();
}

uint64_t sub_1D25465F4()
{
  sub_1D28797D8();
  sub_1D2877F38();

  return sub_1D2879828();
}

uint64_t sub_1D2546670@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2879488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1D25466D0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "providerIdentifier";
  }

  else
  {
    v3 = "ays";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1D2546710()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1D254674C@<X0>(char *a1@<X8>)
{
  v2 = sub_1D2879488();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1D25467B0(uint64_t a1)
{
  v2 = sub_1D2546A38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D25467EC(uint64_t a1)
{
  v2 = sub_1D2546A38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D2546828(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1D2546858(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }
}

double sub_1D2546858(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2546A38();
  sub_1D2879868();
  if (!v1)
  {
    v12 = 0;
    sub_1D28794E8();
    v11 = 1;
    v9 = sub_1D2879508();
    (*(v5 + 8))(v7, v4);
    v2 = v9;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

unint64_t sub_1D2546A38()
{
  result = qword_1ED8A0790;
  if (!qword_1ED8A0790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0790);
  }

  return result;
}

unint64_t sub_1D2546AA0()
{
  result = qword_1EC6DDC08;
  if (!qword_1EC6DDC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DDC08);
  }

  return result;
}

unint64_t sub_1D2546AF8()
{
  result = qword_1ED8A0780;
  if (!qword_1ED8A0780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0780);
  }

  return result;
}

unint64_t sub_1D2546B50()
{
  result = qword_1ED8A0788;
  if (!qword_1ED8A0788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0788);
  }

  return result;
}

uint64_t sub_1D2546BA4(uint64_t result)
{
  if (*(v1 + 65) == (result & 1))
  {
    *(v1 + 65) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2546CB4()
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v0 + 88, &v6, &qword_1EC6D9A70);
  if (!*(&v7 + 1))
  {
    sub_1D22BD238(&v6, &qword_1EC6D9A70);
    v3 = 0u;
    v4 = 0u;
    v5 = 0;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    goto LABEL_7;
  }

  if (!*(&v4 + 1))
  {
LABEL_7:
    sub_1D22BD238(&v3, &unk_1EC6E1D30);
    goto LABEL_8;
  }

  sub_1D227268C(&v3, &v6);
  sub_1D22D7044(&v6, &v3);
  sub_1D254A2FC(&v3);
  sub_1D22BD238(&v3, &unk_1EC6E1D30);
  __swift_destroy_boxed_opaque_existential_0(&v6);
LABEL_8:
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  *&v3 = v0;
  sub_1D28719D8();

  return sub_1D22BD238(&v6, &qword_1EC6D9A70);
}

uint64_t sub_1D2546F20(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v41 - v5;
  v47 = type metadata accessor for PhotosPersonAsset();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - v8;
  swift_getKeyPath();
  v56[0] = v1;
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v1 + 88, v56, &qword_1EC6D9A70);
  sub_1D22D7044(a1, v55);
  swift_getKeyPath();
  v49 = v1;
  v50 = v55;
  *&v52 = v1;
  sub_1D28719D8();

  sub_1D22BD238(v55, &qword_1EC6D9A70);
  swift_getKeyPath();
  v55[0] = v1;
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v1 + 80);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v1, a1, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  swift_getKeyPath();
  v55[0] = v1;
  sub_1D28719E8();

  sub_1D22BD1D0(v1 + 88, &v52, &qword_1EC6D9A70);
  if (*(&v53 + 1))
  {
    sub_1D227268C(&v52, v55);
    sub_1D22D7044(v55, &v52);
    sub_1D2353914(&v52, v9);
    sub_1D2549E7C(v9);
    __swift_destroy_boxed_opaque_existential_0(v55);
  }

  else
  {
    sub_1D22BD238(&v52, &qword_1EC6D9A70);
  }

  swift_getKeyPath();
  v51 = v1;
  sub_1D28719E8();

  sub_1D22BD1D0(v1 + 88, v55, &qword_1EC6D9A70);
  if (!v55[3])
  {
    sub_1D22BD238(v56, &qword_1EC6D9A70);
    sub_1D22BD238(v55, &qword_1EC6D9A70);
    v52 = 0u;
    v53 = 0u;
    v54 = 0;
LABEL_14:
    v17 = &qword_1EC6D9A58;
    v18 = &v52;
LABEL_15:
    result = sub_1D22BD238(v18, v17);
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    goto LABEL_13;
  }

  if (!*(&v53 + 1))
  {
LABEL_13:
    sub_1D22BD238(v56, &qword_1EC6D9A70);
    goto LABEL_14;
  }

  sub_1D227268C(&v52, v55);
  sub_1D22BD1D0(v56, &v52, &qword_1EC6D9A70);
  v12 = *(&v53 + 1);
  if (*(&v53 + 1))
  {
    v13 = v54;
    __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
    v14 = (*(v13 + 16))(v12, v13);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0(&v52);
  }

  else
  {
    sub_1D22BD238(&v52, &qword_1EC6D9A70);
    v14 = 0;
    v16 = 0;
  }

  swift_getKeyPath();
  v51 = v1;
  sub_1D28719E8();

  sub_1D22BD1D0(v1 + 88, &v52, &qword_1EC6D9A70);
  v21 = *(&v53 + 1);
  if (!*(&v53 + 1))
  {
    sub_1D22BD238(&v52, &qword_1EC6D9A70);
    if (!v16)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v42 = v14;
  v44 = 0;
  v22 = v54;
  v23 = __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  v43 = &v41;
  v24 = *(v21 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v25);
  sub_1D22BD238(&v52, &qword_1EC6D9A70);
  v28 = (*(v22 + 16))(v21, v22);
  v30 = v29;
  (*(v24 + 8))(v27, v21);
  if (!v16)
  {
    if (!v30)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  if (!v30)
  {
LABEL_30:

    goto LABEL_31;
  }

  if (v42 == v28 && v16 == v30)
  {

LABEL_39:
    swift_getKeyPath();
    *&v52 = v2;
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v39 = *(v2 + 80);
      v40 = swift_getObjectType();
      (*(v39 + 16))(v2, v55, v40, v39);
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v55);
    v17 = &qword_1EC6D9A70;
    v18 = v56;
    goto LABEL_15;
  }

  v38 = sub_1D2879618();

  if (v38)
  {
    goto LABEL_39;
  }

LABEL_31:
  sub_1D22D7044(v55, &v52);
  v31 = v48;
  v32 = v47;
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v55);
    sub_1D22BD238(v56, &qword_1EC6D9A70);
    (*(v46 + 56))(v31, 1, 1, v32);
    v17 = &unk_1EC6DDDC0;
    v18 = v31;
    goto LABEL_15;
  }

  (*(v46 + 56))(v31, 0, 1, v32);
  v33 = v45;
  sub_1D254DC9C(v31, v45, type metadata accessor for PhotosPersonAsset);
  v34 = sub_1D2613014(*(v33 + 16), *(v33 + 24));
  if (!v34 || (v35 = *(v34 + 16), , !v35))
  {
    swift_getKeyPath();
    *&v52 = v2;
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v36 = *(v2 + 80);
      v37 = swift_getObjectType();
      (*(v36 + 16))(v2, v55, v37, v36);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v55);
  sub_1D22BD238(v56, &qword_1EC6D9A70);
  result = sub_1D254DD04(v33, type metadata accessor for PhotosPersonAsset);
LABEL_16:
  if (*(v2 + 64) == 1)
  {
    *(v2 + 64) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v41 - 2) = v2;
    *(&v41 - 8) = 1;
    v56[0] = v2;
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2547984()
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  return *(v0 + 65);
}

uint64_t sub_1D2547A24(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + 40);
  if (v3 == v2)
  {
    *(v1 + 40) = v2;

    return sub_1D2549614(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2547B58(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48) == a1 && *(v2 + 56) == a2;
  if (v5 || (sub_1D2879618() & 1) != 0)
  {
    *(v2 + 48) = a1;
    *(v2 + 56) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2547CB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ImageGenerationPerson();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1D22BD1D0(a1, v9, &qword_1EC6D8F80);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D22BD238(v9, &qword_1EC6D8F80);
    (*(v11 + 56))(v7, 1, 1, v10);
    v17 = v28;
    sub_1D2549E7C(v7);
    v31 = 0;
    memset(v30, 0, sizeof(v30));
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v27 - 2) = v17;
    *(&v27 - 1) = v30;
    v29 = v17;
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();

    return sub_1D22BD238(v30, &qword_1EC6D9A70);
  }

  else
  {
    sub_1D254DC9C(v9, v16, type metadata accessor for ImageGenerationPerson);
    v20 = sub_1D28785F8();
    v21 = v27;
    (*(*(v20 - 8) + 56))(v27, 1, 1, v20);
    sub_1D254DB1C(v16, v14, type metadata accessor for ImageGenerationPerson);
    sub_1D2878568();
    v22 = v28;
    sub_1D2870F78();
    v23 = sub_1D2878558();
    v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v25 = swift_allocObject();
    v26 = MEMORY[0x1E69E85E0];
    *(v25 + 16) = v23;
    *(v25 + 24) = v26;
    sub_1D254DC9C(v14, v25 + v24, type metadata accessor for ImageGenerationPerson);
    *(v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    sub_1D22AE01C(0, 0, v21, &unk_1D2892FE8, v25);

    return sub_1D254DD04(v16, type metadata accessor for ImageGenerationPerson);
  }
}

uint64_t sub_1D2548110()
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  return *(v0 + 64);
}

uint64_t sub_1D25481B0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  return sub_1D22BD1D0(v1 + 88, a1, &qword_1EC6D9A70);
}

uint64_t sub_1D2548280(uint64_t result)
{
  if (*(v1 + 64) == (result & 1))
  {
    *(v1 + 64) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D2548390(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing) == a1 && *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing + 8) == a2;
  if (v6 || (sub_1D2879618() & 1) != 0)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }
}

void sub_1D25484FC()
{
  v89 = sub_1D28737A8();
  v1 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ImageGenerationPerson.SkinTone();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v87 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for CharacterRecipe();
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v97 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v79 - v9;
  v99 = type metadata accessor for CharacterAsset();
  v80 = *(v99 - 8);
  v11 = MEMORY[0x1EEE9AC00](v99);
  v91 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = (&v79 - v13);
  v14 = *(v0 + 41) == 1;
  v96 = v0;
  if (v14)
  {
    v15 = sub_1D23C6DDC();
    *&v108 = v15;
    v16 = off_1F4DCA918[0];
    type metadata accessor for _PeopleRetrieval();
    v19 = v16();
  }

  else
  {
    v17 = sub_1D23C6DDC();
    v18 = sub_1D2554D28();
    v19 = sub_1D2679424(v18);
  }

  v20 = *(v19 + 16);
  v95 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel___observationRegistrar;
  v94 = v20;
  if (!v20)
  {
    v23 = MEMORY[0x1E69E7CC0];
LABEL_21:

    v43 = *(v23 + 16);
    if (v43)
    {
      *&v101 = MEMORY[0x1E69E7CC0];
      sub_1D23D85A8(0, v43, 0);
      v44 = v101;
      v45 = v23 + 32;
      v46 = (v80 + 56);
      v98 = (v80 + 56);
      do
      {
        sub_1D22D7044(v45, &v105);
        sub_1D22D7044(&v105, &v108);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
        v47 = v97;
        v48 = swift_dynamicCast();
        v49 = *v46;
        if (v48)
        {
          v50 = v99;
          v49(v47, 0, 1, v99);
          v51 = v91;
          sub_1D254DC9C(v47, v91, type metadata accessor for CharacterAsset);
          v109 = v50;
          v110 = &protocol witness table for CharacterAsset;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
          sub_1D254DB1C(v51, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
          sub_1D22BD1D0(v51 + v50[5], boxed_opaque_existential_1 + v50[5], &unk_1EC6DE5A0);
          sub_1D254DB1C(v51 + v50[6], boxed_opaque_existential_1 + v50[6], type metadata accessor for CharacterRecipe);
          swift_getKeyPath();
          v53 = v96;
          v100[0] = v96;
          sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
          sub_1D28719E8();

          v54 = v51;
          v46 = v98;
          sub_1D254DD04(v54, type metadata accessor for CharacterAsset);
          __swift_destroy_boxed_opaque_existential_0(&v105);
          *(boxed_opaque_existential_1 + v50[7]) = *(v53 + 40);
        }

        else
        {
          v49(v47, 1, 1, v99);
          sub_1D22BD238(v47, &unk_1EC6DDDA0);
          sub_1D227268C(&v105, &v108);
        }

        *&v101 = v44;
        v56 = *(v44 + 16);
        v55 = *(v44 + 24);
        if (v56 >= v55 >> 1)
        {
          sub_1D23D85A8((v55 > 1), v56 + 1, 1);
        }

        v57 = v109;
        v58 = v110;
        v59 = __swift_mutable_project_boxed_opaque_existential_1(&v108, v109);
        MEMORY[0x1EEE9AC00](v59);
        v61 = &v79 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v62 + 16))(v61);
        sub_1D2564390(v56, v61, &v101, v57, v58);
        __swift_destroy_boxed_opaque_existential_0(&v108);
        v44 = v101;
        v45 += 40;
        --v43;
      }

      while (v43);

      v63 = *(v44 + 16);
      if (v63)
      {
        goto LABEL_30;
      }
    }

    else
    {

      v44 = MEMORY[0x1E69E7CC0];
      v63 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v63)
      {
LABEL_30:
        v64 = MEMORY[0x1E69E7CC0];
        v65 = v44 + 32;
        do
        {
          sub_1D22D7044(v65, &v108);
          sub_1D22D7044(&v108, v100);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
          if (swift_dynamicCast())
          {
            v67 = *(&v106 + 1);
            v66 = v107;
            v68 = __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
            *(&v102 + 1) = v67;
            v103 = *(v66 + 8);
            v69 = __swift_allocate_boxed_opaque_existential_1(&v101);
            (*(*(v67 - 8) + 16))(v69, v68, v67);
            __swift_destroy_boxed_opaque_existential_0(&v108);
            __swift_destroy_boxed_opaque_existential_0(&v105);
            if (*(&v102 + 1))
            {
              sub_1D227268C(&v101, &v105);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v104 = v64;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v64 = sub_1D27CCA74(0, v64[2] + 1, 1, v64);
                v104 = v64;
              }

              v72 = v64[2];
              v71 = v64[3];
              if (v72 >= v71 >> 1)
              {
                v64 = sub_1D27CCA74((v71 > 1), v72 + 1, 1, v64);
                v104 = v64;
              }

              v73 = *(&v106 + 1);
              v74 = v107;
              v75 = __swift_mutable_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
              MEMORY[0x1EEE9AC00](v75);
              v77 = &v79 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v78 + 16))(v77);
              sub_1D254D5D8(v72, v77, &v104, v73, v74);
              __swift_destroy_boxed_opaque_existential_0(&v105);
              goto LABEL_33;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_0(&v108);
            v107 = 0;
            v105 = 0u;
            v106 = 0u;
            sub_1D22BD238(&v105, &qword_1EC6D9A58);
            v101 = 0u;
            v102 = 0u;
            v103 = 0;
          }

          sub_1D22BD238(&v101, &unk_1EC6E1D30);
LABEL_33:
          v65 += 40;
          --v63;
        }

        while (v63);
      }
    }

    return;
  }

  v21 = 0;
  v22 = v19 + 32;
  v92 = (v80 + 56);
  v83 = *MEMORY[0x1E69E0170];
  v82 = (v1 + 104);
  v81 = (v1 + 8);
  v23 = MEMORY[0x1E69E7CC0];
  v84 = v10;
  v93 = v19;
  while (v21 < *(v19 + 16))
  {
    sub_1D22D7044(v22, &v108);
    sub_1D22D7044(&v108, &v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
    v24 = swift_dynamicCast();
    v25 = *v92;
    if (!v24)
    {
      v25(v10, 1, 1, v99);
      sub_1D22BD238(v10, &unk_1EC6DDDA0);
      goto LABEL_13;
    }

    v25(v10, 0, 1, v99);
    sub_1D254DC9C(v10, v98, type metadata accessor for CharacterAsset);
    swift_getKeyPath();
    v26 = v96;
    *&v105 = v96;
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719E8();

    if (*(v26 + 40))
    {
      sub_1D254DD04(v98, type metadata accessor for CharacterAsset);
LABEL_13:
      sub_1D227268C(&v108, &v105);
      v27 = swift_isUniquelyReferenced_nonNull_native();
      *&v101 = v23;
      if ((v27 & 1) == 0)
      {
        sub_1D23D85A8(0, *(v23 + 16) + 1, 1);
        v23 = v101;
      }

      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1D23D85A8((v28 > 1), v29 + 1, 1);
      }

      v30 = *(&v106 + 1);
      v31 = v107;
      v32 = __swift_mutable_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
      MEMORY[0x1EEE9AC00](v32);
      v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v35 + 16))(v34);
      sub_1D2564390(v29, v34, &v101, v30, v31);
      __swift_destroy_boxed_opaque_existential_0(&v105);
      v23 = v101;
      goto LABEL_7;
    }

    v36 = v85;
    sub_1D254DB1C(v98 + *(v99 + 24), v85, type metadata accessor for CharacterRecipe);
    v37 = v36 + *(v86 + 20);
    v38 = v87;
    sub_1D254DC9C(v37, v87, type metadata accessor for ImageGenerationPerson.SkinTone);
    v39 = v88;
    v40 = v89;
    (*v82)(v88, v83, v89);
    sub_1D254DC08(&qword_1EC6DDC10, MEMORY[0x1E69E01B8]);
    v90 = sub_1D2877F98();
    v41 = *v81;
    (*v81)(v39, v40);
    sub_1D254DD04(v98, type metadata accessor for CharacterAsset);
    v42 = v38;
    v10 = v84;
    v41(v42, v40);
    if ((v90 & 1) == 0)
    {
      goto LABEL_13;
    }

    __swift_destroy_boxed_opaque_existential_0(&v108);
LABEL_7:
    ++v21;
    v22 += 40;
    v19 = v93;
    if (v94 == v21)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
}

uint64_t sub_1D254932C()
{
  v1 = v0;
  v2 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 41) != 1)
  {
LABEL_10:
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel_inputItems) = MEMORY[0x1E69E7CC0];
  }

  swift_getKeyPath();
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel___observationRegistrar;
  *&v19[0] = v1;
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  v17[1] = v5;
  sub_1D28719E8();

  v6 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__people);
  v7 = *(v6 + 16);
  result = sub_1D2870F68();
  if (!v7)
  {
LABEL_7:

    v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel_inputItems;
    if (*(*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel_inputItems) + 16))
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC20);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1D287F500;
    swift_getKeyPath();
    *&v19[0] = v1;
    sub_1D28719E8();

    v13 = *(v1 + 40);
    CharacterPickerItem = type metadata accessor for CreateCharacterPickerItem();
    *(v12 + 56) = CharacterPickerItem;
    *(v12 + 64) = sub_1D254DC08(&qword_1ED89FA10, type metadata accessor for CreateCharacterPickerItem);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 32));
    *boxed_opaque_existential_1 = v13;
    sub_1D2871808();
    v16 = (boxed_opaque_existential_1 + *(CharacterPickerItem + 24));
    *v16 = 0;
    v16[1] = 0;
    *(v1 + v11) = v12;
  }

  v9 = 0;
  v10 = v6 + 32;
  while (v9 < *(v6 + 16))
  {
    sub_1D22D7044(v10, v19);
    sub_1D227268C(v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
    result = swift_dynamicCast();
    if (result)
    {

      sub_1D254DD04(v4, type metadata accessor for CharacterAsset);
      goto LABEL_10;
    }

    ++v9;
    v10 += 40;
    if (v7 == v9)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2549614(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  if (*(v1 + 40) != v2)
  {
    sub_1D25484FC();
    sub_1D26795F4(v4);

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D28719D8();

    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel_inputItems) = MEMORY[0x1E69E7CC0];

    return sub_1D254932C();
  }

  return result;
}

uint64_t sub_1D254979C()
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  return *(v0 + 40);
}

uint64_t sub_1D254983C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_1D254990C(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  *(a1 + 40) = a2;
  return sub_1D2549614(v3);
}

uint64_t sub_1D2549940()
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v1 = *(v0 + 48);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D25499F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D2549A9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D2547B58(v1, v2);
}

uint64_t sub_1D2549AE4()
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D2549BAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + 88, &qword_1EC6D9A70);
  return swift_endAccess();
}

uint64_t sub_1D2549C20@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__selectedGenerationPerson;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &qword_1EC6D8F80);
}

uint64_t sub_1D2549CF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__selectedGenerationPerson;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &qword_1EC6D8F80);
}

uint64_t sub_1D2549DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &qword_1EC6D8F80);
  return sub_1D2549E7C(v4);
}

uint64_t sub_1D2549E7C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__selectedGenerationPerson;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &qword_1EC6D8F80);
  v7 = sub_1D254D670(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D8F80);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D22D7384(a1, v1 + v6, &qword_1EC6D8F80);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F80);
}

uint64_t sub_1D254A078(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__selectedGenerationPerson;
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + v4, &qword_1EC6D8F80);
  return swift_endAccess();
}

uint64_t sub_1D254A0F4()
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing);
  sub_1D2870F68();
  return v1;
}

uint64_t sub_1D254A1B0()
{
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel____lazy_storage___appProtectionShieldViewModel;
  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel____lazy_storage___appProtectionShieldViewModel))
  {
    v2 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel____lazy_storage___appProtectionShieldViewModel);
  }

  else
  {
    v3 = *(v0 + 16);
    type metadata accessor for AppProtectionShieldViewModel();
    v2 = swift_allocObject();
    *(v2 + 16) = v3;
    *(v0 + v1) = v2;
    sub_1D2870F78();
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v2;
}

void sub_1D254A228()
{
  v4 = sub_1D23C6DDC();
  v0 = off_1F4DCA918[0];
  type metadata accessor for _PeopleRetrieval();
  v1 = v0();

  v2 = *(v1 + 16);

  if (!v2)
  {
    sub_1D23C7F70();
    sub_1D2610988();

    v3 = sub_1D23C6DDC();
    sub_1D255B4E8(1, 0xD000000000000038, 0x80000001D28BA430);
  }
}

uint64_t sub_1D254A2FC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  sub_1D22BD1D0(a1, &v15, &unk_1EC6E1D30);
  if (!v16)
  {
    return sub_1D22BD238(&v15, &unk_1EC6E1D30);
  }

  sub_1D227268C(&v15, v19);
  sub_1D22D7044(v19, v18);
  v6 = *(v1 + 32);
  type metadata accessor for RemoveImageConditioningRepresentationOperation();
  v7 = swift_allocObject();
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 112) = 1;
  sub_1D227268C(v18, &v15);
  v17 = v6;
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D22D3E98(&v15, v7 + 16);
  swift_endAccess();
  v8 = *(v1 + 24);
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  sub_1D2878568();
  swift_retain_n();
  sub_1D2870F78();
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = v7;
  *(v11 + 40) = &off_1EEC2DA38;
  *(v11 + 48) = 1;
  *(v11 + 56) = v8;
  *(v11 + 64) = sub_1D254CFE4;
  *(v11 + 72) = 0;
  sub_1D22AE01C(0, 0, v5, &unk_1D288CB00, v11);

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_1D254A550(uint64_t a1, uint64_t a2)
{
  sub_1D22BD1D0(a1, &v8, &qword_1EC6D9A70);
  if (!v9)
  {
    return sub_1D22BD238(&v8, &qword_1EC6D9A70);
  }

  sub_1D227268C(&v8, v10);
  if (sub_1D254A630(v10, a2))
  {
    v3 = v11;
    v4 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v5 = (*(v4 + 16))(v3, v4);
    sub_1D2548390(v5, v6);
  }

  else
  {
    sub_1D2546F20(v10);
  }

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t sub_1D254A630(void *a1, uint64_t a2)
{
  v3 = v2;
  v52 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v52);
  v51 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v49 - v8;
  v10 = type metadata accessor for PhotosPersonAsset();
  v53 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  CharacterPickerItem = type metadata accessor for CreateCharacterPickerItem();
  MEMORY[0x1EEE9AC00](CharacterPickerItem);
  v14 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v49 - v16;
  sub_1D22BD1D0(a2, v49 - v16, &qword_1EC6D9A30);
  v18 = sub_1D2872008();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    v20 = v3;
    v21 = sub_1D2871F78();
    (*(v19 + 8))(v17, v18);
    if ((v21 & 1) == 0)
    {
      return 0;
    }

    sub_1D22D7044(a1, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
    if (swift_dynamicCast())
    {
      v22 = type metadata accessor for CreateCharacterPickerItem;
      v23 = v14;
LABEL_6:
      sub_1D254DD04(v23, v22);
      return 0;
    }

    sub_1D22D7044(a1, v56);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
    if (swift_dynamicCast())
    {
      sub_1D227268C(v54, v59);
      v26 = a1[3];
      v27 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v26);
      v28 = (*(v27 + 16))(v26, v27);
      v30 = v29;
      swift_getKeyPath();
      *&v54[0] = v20;
      sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
      sub_1D28719E8();

      swift_beginAccess();
      sub_1D22BD1D0(v20 + 88, v56, &qword_1EC6D9A70);
      v31 = v57;
      if (v57)
      {
        v49[1] = v25;
        v32 = v58;
        v33 = __swift_project_boxed_opaque_existential_1(v56, v57);
        v34 = *(v31 - 8);
        v35 = MEMORY[0x1EEE9AC00](v33);
        v37 = v28;
        v38 = v49 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v34 + 16))(v38, v35);
        sub_1D22BD238(v56, &qword_1EC6D9A70);
        v39 = (*(v32 + 16))(v31, v32);
        v41 = v40;
        (*(v34 + 8))(v38, v31);
        if (v37 == v39 && v30 == v41)
        {

LABEL_18:
          __swift_destroy_boxed_opaque_existential_0(v59);
          return 0;
        }

        v42 = sub_1D2879618();

        if (v42)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_1D22BD238(v56, &qword_1EC6D9A70);
      }

      sub_1D22D7044(v59, v56);
      v43 = swift_dynamicCast();
      v44 = *(v53 + 56);
      if (v43)
      {
        v44(v9, 0, 1, v10);
        v45 = v50;
        sub_1D254DC9C(v9, v50, type metadata accessor for PhotosPersonAsset);
        v46 = sub_1D2613014(*(v45 + 16), *(v45 + 24));
        if (!v46 || (v47 = *(v46 + 16), , !v47))
        {
          __swift_destroy_boxed_opaque_existential_0(v59);
          v22 = type metadata accessor for PhotosPersonAsset;
          v23 = v45;
          goto LABEL_6;
        }

        sub_1D254DD04(v45, type metadata accessor for PhotosPersonAsset);
      }

      else
      {
        v44(v9, 1, 1, v10);
        sub_1D22BD238(v9, &unk_1EC6DDDC0);
      }

      sub_1D227268C(v59, v56);
      v48 = v51;
      if (swift_dynamicCast())
      {
        v22 = type metadata accessor for CharacterAsset;
        v23 = v48;
        goto LABEL_6;
      }
    }

    else
    {
      v55 = 0;
      memset(v54, 0, sizeof(v54));
      sub_1D22BD238(v54, &qword_1EC6D9A58);
    }

    return 1;
  }

  sub_1D22BD238(v17, &qword_1EC6D9A30);
  return 0;
}

uint64_t sub_1D254ADA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D2548390(0, 0xE000000000000000);
  ObjectType = swift_getObjectType();
  return (*(a4 + 48))(ObjectType, a4);
}

uint64_t sub_1D254AE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[23] = a4;
  v5[24] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  v5[25] = swift_task_alloc();
  sub_1D2878568();
  v5[26] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v5[27] = v7;
  v5[28] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D254AED8, v7, v6);
}

uint64_t sub_1D254AED8()
{
  v1 = sub_1D23C7314();
  v0[29] = v1;
  v0[15] = type metadata accessor for _PeopleRetrieval();
  v0[16] = &off_1F4DCA8A8;
  v0[12] = sub_1D23C6DDC();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_1D254AFB4;

  return sub_1D2353BA4((v0 + 7), v1, (v0 + 12));
}

uint64_t sub_1D254AFB4()
{
  v1 = *v0;

  __swift_destroy_boxed_opaque_existential_0(v1 + 96);
  v2 = *(v1 + 224);
  v3 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D254B0FC, v3, v2);
}

uint64_t sub_1D254B0FC()
{

  if (*(v0 + 80))
  {
    v1 = *(v0 + 192);
    v2 = *(v0 + 200);
    v3 = *(v0 + 184);
    sub_1D227268C((v0 + 56), v0 + 16);
    sub_1D254DB1C(v3, v2, type metadata accessor for ImageGenerationPerson);
    v4 = type metadata accessor for ImageGenerationPerson();
    (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
    sub_1D2549E7C(v2);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    v7 = __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    *(v0 + 160) = v5;
    *(v0 + 168) = *(v6 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 136));
    (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v7, v5);
    swift_getKeyPath();
    v9 = swift_task_alloc();
    *(v9 + 16) = v1;
    *(v9 + 24) = v0 + 136;
    *(v0 + 176) = v1;
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();

    sub_1D22BD238(v0 + 136, &qword_1EC6D9A70);
    __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  }

  else
  {
    sub_1D22BD238(v0 + 56, &unk_1EC6E1D30);
  }

  v10 = *(v0 + 8);

  return v10();
}

BOOL sub_1D254B348()
{
  if (sub_1D27D8C8C())
  {
    v6 = &type metadata for NotesFeatures;
    v7 = sub_1D22D7288();
    v5[0] = 0;
    v0 = sub_1D2871AA8();
    __swift_destroy_boxed_opaque_existential_0(v5);
    if ((v0 & 1) == 0)
    {
      return 0;
    }
  }

  else if (qword_1ED8A4928 == -1)
  {
    if ((sub_1D23CD0E4() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if ((sub_1D23CD0E4() & 1) == 0)
    {
      return 0;
    }
  }

  v2 = sub_1D23C6DDC();
  v3 = sub_1D2554D28();

  v4 = v3[2];

  return v4 == 0;
}

uint64_t sub_1D254B418()
{
  v0 = sub_1D2877B48();
  v1 = *(v0 - 8);
  v25 = v0;
  v26 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v24 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D2878AA8();
  v3 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D2877B68();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D23C6DDC();
  v11 = sub_1D2554D28();

  v12 = v11[2];

  v20 = v12 != 0;
  v19[1] = sub_1D24614C4();
  sub_1D2877B58();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D254DC08(&qword_1ED89CD60, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50);
  sub_1D249AF34(&qword_1ED89CE80, &unk_1EC6DAE50);
  sub_1D2879088();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v21);
  v13 = sub_1D2878AD8();
  v14 = swift_allocObject();
  *(v14 + 16) = v20;
  *(v14 + 24) = 200;
  aBlock[4] = sub_1D254DBE4;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);
  sub_1D2877B58();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D254DC08(&qword_1ED89CFE0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80);
  v17 = v24;
  v16 = v25;
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v9, v17, v15);
  _Block_release(v15);

  (*(v26 + 8))(v17, v16);
  (*(v22 + 8))(v9, v23);
}

id sub_1D254B8CC(char a1, uint64_t a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v8 = objc_opt_self();
  v23[0] = 0;
  if (a1)
  {
    v9 = [v8 reportFeatureCheckpoint:60 forFeature:a2 atDate:0 error:v23];
  }

  else
  {
    v9 = [v8 reportFeatureCheckpoint:10 forFeature:a2 atDate:0 error:v23];
  }

  v10 = v23[0];
  if (v9)
  {

    return v10;
  }

  else
  {
    v22 = v23[0];
    v12 = v23[0];
    v13 = sub_1D28714B8();

    swift_willThrow();
    sub_1D28726B8();
    v14 = v13;
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23[0] = v18;
      *v17 = 136315138;
      swift_getErrorValue();
      v19 = sub_1D2879748();
      v21 = sub_1D23D7C84(v19, v20, v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1D226E000, v15, v16, "Failed to report people key faces usage to Duet with error: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x1D38A3520](v18, -1, -1);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1D254BBA0()
{
  swift_getKeyPath();
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  return sub_1D2870F68();
}

uint64_t sub_1D254BC4C(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__people) = a2;
  sub_1D2870F68();
}

uint64_t sub_1D254BC90()
{
  v1 = type metadata accessor for CharacterAsset();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - v5;
  swift_getKeyPath();
  *&v25[0] = v0;
  sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v0 + 88, &v26, &qword_1EC6D9A70);
  if (!v27)
  {
    sub_1D22BD238(&v26, &qword_1EC6D9A70);
    goto LABEL_6;
  }

  sub_1D227268C(&v26, v28);
  sub_1D22D7044(v28, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
  if (!swift_dynamicCast() || (__swift_destroy_boxed_opaque_existential_0(v25), (sub_1D254C1E4() & 1) != 0))
  {
    __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_6:
    v7 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel_inputItems);
    swift_getKeyPath();
    v28[0] = v0;
    sub_1D2870F68();
    sub_1D28719E8();

    v28[0] = v7;
    v8 = sub_1D2870F68();
    sub_1D274E5E0(v8);
    return v28[0];
  }

  sub_1D22D7044(v28, &v26);
  if (swift_dynamicCast())
  {
    sub_1D254DD04(v6, type metadata accessor for CharacterAsset);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC20);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1D287F500;
    v22[0] = v10;
    sub_1D22D7044(v28, v10 + 32);
    swift_getKeyPath();
    *&v26 = v0;
    sub_1D28719E8();

    v11 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__people);
    v12 = *(v11 + 16);
    result = sub_1D2870F68();
    if (v12)
    {
      v13 = 0;
      v14 = v11 + 32;
      v15 = MEMORY[0x1E69E7CC0];
      v22[1] = v1;
      while (v13 < *(v11 + 16))
      {
        sub_1D22D7044(v14, &v26);
        sub_1D22D7044(&v26, v25);
        if (swift_dynamicCast())
        {
          sub_1D254DD04(v3, type metadata accessor for CharacterAsset);
          result = __swift_destroy_boxed_opaque_existential_0(&v26);
        }

        else
        {
          sub_1D227268C(&v26, v25);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v23 = v15;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D23D85E8(0, *(v15 + 16) + 1, 1);
            v15 = v23;
          }

          v18 = *(v15 + 16);
          v17 = *(v15 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_1D23D85E8((v17 > 1), v18 + 1, 1);
            v15 = v23;
          }

          *(v15 + 16) = v18 + 1;
          result = sub_1D227268C(v25, v15 + 40 * v18 + 32);
        }

        ++v13;
        v14 += 40;
        if (v12 == v13)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
LABEL_21:

      *&v26 = v22[0];
      sub_1D274E5E0(v15);
      __swift_destroy_boxed_opaque_existential_0(v28);
      return v26;
    }
  }

  else
  {
    v19 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel_inputItems);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D287F500;
    sub_1D22D7044(v28, inited + 32);
    v24 = v19;
    sub_1D2870F68();
    sub_1D274E5E0(inited);
    swift_getKeyPath();
    *&v26 = v0;
    sub_1D28719E8();

    v21 = sub_1D2870F68();
    sub_1D274E5E0(v21);
    __swift_destroy_boxed_opaque_existential_0(v28);
    return v24;
  }

  return result;
}

uint64_t sub_1D254C1E4()
{
  v1 = v0;
  swift_getKeyPath();
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel___observationRegistrar;
  v35[0] = v1;
  v26 = sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  v27 = v2;
  sub_1D28719E8();

  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__people);
  v25 = *(v3 + 16);
  if (v25)
  {
    v4 = v3 + 32;
    sub_1D2870F68();
    result = swift_beginAccess();
    v6 = 0;
    v24 = v3;
    while (v6 < *(v3 + 16))
    {
      sub_1D22D7044(v4, v35);
      v7 = v36;
      v8 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v29 = (*(v8 + 16))(v7, v8);
      v30 = v9;
      swift_getKeyPath();
      v31 = v1;
      sub_1D28719E8();

      sub_1D22BD1D0(v1 + 88, v32, &qword_1EC6D9A70);
      v10 = v33;
      if (v33)
      {
        v11 = v1;
        v12 = v34;
        v13 = __swift_project_boxed_opaque_existential_1(v32, v33);
        v28 = &v24;
        v14 = *(v10 - 8);
        v15 = MEMORY[0x1EEE9AC00](v13);
        v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v14 + 16))(v17, v15);
        sub_1D22BD238(v32, &qword_1EC6D9A70);
        v18 = (*(v12 + 16))(v10, v12);
        v20 = v19;
        (*(v14 + 8))(v17, v10);
        if (v29 == v18 && v30 == v20)
        {

          __swift_destroy_boxed_opaque_existential_0(v35);
          v23 = 1;
          goto LABEL_16;
        }

        v22 = sub_1D2879618();

        result = __swift_destroy_boxed_opaque_existential_0(v35);
        v1 = v11;
        v3 = v24;
        if (v22)
        {
          v23 = 1;
LABEL_16:

          return v23;
        }
      }

      else
      {
        sub_1D22BD238(v32, &qword_1EC6D9A70);

        result = __swift_destroy_boxed_opaque_existential_0(v35);
      }

      ++v6;
      v4 += 40;
      if (v25 == v6)
      {
        v23 = 0;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D254C550()
{
  v2 = sub_1D23C6DDC();
  v0 = off_1F4DCA918[0];
  type metadata accessor for _PeopleRetrieval();
  v0();
}

uint64_t (*sub_1D254C5D0())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D254D9C4;
}

uint64_t sub_1D254C62C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  v5 = sub_1D28785F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_1D2878568();
  sub_1D2870F78();
  v6 = sub_1D2878558();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E85E0];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = a1;
  sub_1D22AE01C(0, 0, v4, &unk_1D28930A8, v7);
}

uint64_t sub_1D254C750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_1D2878568();
  *(v4 + 56) = sub_1D2878558();
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D254C7E8, v6, v5);
}

uint64_t sub_1D254C7E8()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D25484FC();
    v4 = sub_1D26795F4(v3);

    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v2;
    *(v5 + 24) = v4;
    *(v0 + 40) = v2;
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();

    sub_1D254932C();
    sub_1D254C9A4();
    sub_1D28719C8();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D254C9A4()
{
  v1 = *(*(v0 + 32) + 32);
  v2 = *(v1 + 16);
  result = sub_1D2870F68();
  if (v2)
  {
    v4 = 0;
    v5 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      sub_1D22D7044(v5, v29);
      sub_1D22D7044(v29, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28);
      if (swift_dynamicCast())
      {

        __swift_destroy_boxed_opaque_existential_0(&v27);
        sub_1D227268C(v29, v30);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
          goto LABEL_7;
        }

        v6 = v26;
        if (!*(&v34 + 1))
        {
          goto LABEL_8;
        }

        sub_1D227268C(&v33, &v36);
        swift_getKeyPath();
        *&v29[0] = v26;
        sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
        sub_1D28719E8();

        swift_beginAccess();
        sub_1D22BD1D0(v26 + 88, v30, &qword_1EC6D9A70);
        if (v31)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48);
          if ((swift_dynamicCast() & 1) == 0)
          {
            v35 = 0;
            v33 = 0u;
            v34 = 0u;
          }
        }

        else
        {
          sub_1D22BD238(v30, &qword_1EC6D9A70);
          v33 = 0u;
          v34 = 0u;
          v35 = 0;
        }

        v11 = *(&v37 + 1);
        v10 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        v12 = (*(*(*(v10 + 8) + 8) + 16))(v11);
        v14 = v13;
        sub_1D22BD1D0(&v33, v30, &qword_1EC6D9A58);
        v15 = v31;
        if (v31)
        {
          v16 = v32;
          __swift_project_boxed_opaque_existential_1(v30, v31);
          v17 = (*(*(*(v16 + 8) + 8) + 16))(v15);
          v19 = v18;
          __swift_destroy_boxed_opaque_existential_0(v30);
          if (v12 == v17 && v14 == v19)
          {

LABEL_25:
            sub_1D22BD238(&v33, &qword_1EC6D9A58);
            return __swift_destroy_boxed_opaque_existential_0(&v36);
          }

          v20 = sub_1D2879618();

          if (v20)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_1D22BD238(v30, &qword_1EC6D9A58);
        }

        v21 = *(&v37 + 1);
        v22 = v38;
        v23 = __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        v31 = v21;
        v32 = *(*(v22 + 8) + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
        (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v23, v21);
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v28[0] = v26;
        sub_1D28719D8();

        sub_1D22BD238(v30, &qword_1EC6D9A70);
        goto LABEL_25;
      }

      ++v4;
      result = __swift_destroy_boxed_opaque_existential_0(v29);
      v5 += 40;
      if (v2 == v4)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v33 = 0u;
    v34 = 0u;
    v35 = 0;
LABEL_7:
    v6 = v26;
LABEL_8:
    sub_1D22BD238(&v33, &qword_1EC6D9A58);
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v7 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v7);
    *&v33 = v6;
    sub_1D254DC08(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
    sub_1D28719D8();

    sub_1D22BD238(&v36, &qword_1EC6D9A70);
    swift_getKeyPath();
    *&v36 = v6;
    sub_1D28719E8();

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = *(v6 + 80);
      ObjectType = swift_getObjectType();
      (*(v8 + 24))(v6, ObjectType, v8);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1D254CFE4(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28725B8();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot deselect representation with error: %@", v10, 0xCu);
      sub_1D22BD238(v11, qword_1EC6DA930);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

uint64_t sub_1D254D1E0()
{

  sub_1D22729C0(v0 + 72);
  sub_1D22BD238(v0 + 88, &qword_1EC6D9A70);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__selectedGenerationPerson, &qword_1EC6D8F80);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1D254D2E4()
{
  sub_1D254D1E0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PeoplePickerViewModel()
{
  result = qword_1ED8A1390;
  if (!qword_1ED8A1390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D254D390()
{
  sub_1D2349D6C();
  if (v0 <= 0x3F)
  {
    sub_1D2871A28();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D254D4B8(uint64_t a1)
{
  v4 = *(type metadata accessor for ImageGenerationPerson() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D254AE08(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D254D5D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1D227268C(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1D254D670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageGenerationPerson();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA348);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D22BD1D0(a1, &v20 - v13, &qword_1EC6D8F80);
  sub_1D22BD1D0(a2, &v14[v15], &qword_1EC6D8F80);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D22BD1D0(v14, v10, &qword_1EC6D8F80);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D254DC9C(&v14[v15], v7, type metadata accessor for ImageGenerationPerson);
      v18 = _s23ImagePlaygroundInternal0A16GenerationPersonV2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_1D254DD04(v7, type metadata accessor for ImageGenerationPerson);
      sub_1D254DD04(v10, type metadata accessor for ImageGenerationPerson);
      sub_1D22BD238(v14, &qword_1EC6D8F80);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D254DD04(v10, type metadata accessor for ImageGenerationPerson);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v14, &qword_1EC6DA348);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v14, &qword_1EC6D8F80);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D254D970()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
  return sub_1D2549614(v2);
}

uint64_t sub_1D254D9CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D254C750(a1, v4, v5, v6);
}

uint64_t sub_1D254DA80()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__people) = *(v0 + 24);
  sub_1D2870F68();
}

uint64_t (*sub_1D254DAC4())()
{
  swift_allocObject();
  swift_weakInit();
  return sub_1D254D9C4;
}

uint64_t sub_1D254DB1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D254DB84()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 48) = v0[3];
  *(v1 + 56) = v2;
  sub_1D2870F68();
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D254DC08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D254DC50()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

uint64_t sub_1D254DC9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D254DD04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for PeopleUnavailabilityView()
{
  result = qword_1EC6D8368;
  if (!qword_1EC6D8368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D254DE08()
{
  sub_1D22BFB5C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1D254DEA8()
{
  v0 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D28720D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720C8();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E696E3E8] || v5 == *MEMORY[0x1E696E3D8] || v5 == *MEMORY[0x1E696E3D0] || v5 == *MEMORY[0x1E696E3F0] || v5 == *MEMORY[0x1E696E3E0])
  {
    sub_1D2875778();
    sub_1D2875768();
    sub_1D2875758();
    sub_1D2875768();
    return sub_1D28757A8();
  }

  else
  {
    v7 = sub_1D2875798();
    (*(v2 + 8))(v4, v1);
    return v7;
  }
}

uint64_t sub_1D254E1C0()
{
  v0 = sub_1D2875788();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D28720D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720C8();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x1E696E3E8] || v5 == *MEMORY[0x1E696E3D8] || v5 == *MEMORY[0x1E696E3D0] || v5 == *MEMORY[0x1E696E3F0] || v5 == *MEMORY[0x1E696E3E0])
  {
    sub_1D2875778();
    sub_1D2875768();
    sub_1D2875758();
    sub_1D2875768();
    return sub_1D28757A8();
  }

  else
  {
    v7 = sub_1D2875798();
    (*(v2 + 8))(v4, v1);
    return v7;
  }
}

uint64_t sub_1D254E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v111 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v93[-v3];
  v5 = sub_1D28764E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v93[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED8B0058;
  v10 = qword_1ED8B0058;
  v105 = v9;
  v11 = sub_1D2876668();
  v13 = v12;
  v15 = v14;
  v16 = *(v6 + 104);
  v103 = *MEMORY[0x1E6980F30];
  v104 = v6 + 104;
  v102 = v16;
  v16(v8);
  v17 = sub_1D28763F8();
  v18 = *(v17 - 8);
  v100 = *(v18 + 56);
  v101 = v17;
  v99 = v18 + 56;
  v100(v4, 1, 1);
  sub_1D2876458();
  v109 = v4;
  sub_1D22BD238(v4, &qword_1EC6D9D40);
  v19 = *(v6 + 8);
  v106 = v8;
  v107 = v6 + 8;
  v108 = v5;
  v98 = v19;
  v19(v8, v5);
  v20 = sub_1D2876658();
  v22 = v21;
  v24 = v23;

  sub_1D22ED6E0(v11, v13, v15 & 1);

  sub_1D2876418();
  KeyPath = sub_1D2876568();
  v27 = v26;
  v29 = v28;
  sub_1D22ED6E0(v20, v22, v24 & 1);

  if (qword_1ED89D268 != -1)
  {
    swift_once();
  }

  v123[0] = qword_1ED8B0020;
  sub_1D2870F78();
  v30 = sub_1D2876648();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_1D22ED6E0(KeyPath, v27, v29 & 1);

  v37 = MobileGestalt_get_current_device();
  if (v37)
  {
    v38 = v37;
    wapiCapability = MobileGestalt_get_wapiCapability();

    v96 = v30;
    v97 = v36;
    v95 = v32;
    v94 = v34;
    if (wapiCapability)
    {
      sub_1D254E1C0();
    }

    else
    {
      sub_1D254DEA8();
    }

    v40 = sub_1D2876668();
    v42 = v41;
    v44 = v43;
    v45 = v106;
    v46 = v108;
    v102(v106, v103, v108);
    v47 = v109;
    (v100)(v109, 1, 1, v101);
    sub_1D2876458();
    sub_1D22BD238(v47, &qword_1EC6D9D40);
    v98(v45, v46);
    v48 = sub_1D2876658();
    v50 = v49;
    v52 = v51;

    sub_1D22ED6E0(v40, v42, v44 & 1);

    sub_1D2876418();
    v53 = sub_1D2876568();
    v55 = v54;
    v57 = v56;
    sub_1D22ED6E0(v48, v50, v52 & 1);

    if (qword_1EC6D7770 != -1)
    {
      swift_once();
    }

    v32 = &v136;
    v34 = v116;
    v30 = v113;
    v123[0] = qword_1EC6E3AE8;
    sub_1D2870F78();
    v58 = sub_1D2876648();
    v107 = v59;
    v108 = v58;
    LOBYTE(v27) = v60;
    v109 = v61;
    sub_1D22ED6E0(v53, v55, v57 & 1);

    KeyPath = swift_getKeyPath();
    type metadata accessor for PeopleUnavailabilityView();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
    sub_1D2874768();
    sub_1D2877848();
  }

  else
  {
    __break(1u);
    sub_1D2878A28();
    v92 = sub_1D28762E8();
    sub_1D2873BE8();
  }

  sub_1D2875208();
  v62 = v144;
  *(v139 + 7) = v145;
  *(&v139[1] + 7) = v146;
  *(v32 + 87) = v147;
  *(v32 + 103) = v148;
  v63 = v143;
  *(v32 + 7) = v142;
  *(v32 + 23) = v63;
  *(v32 + 39) = v62;
  v65 = v107;
  v64 = v108;
  v116[0] = v108;
  v116[1] = v107;
  v117 = v27 & 1;
  v66 = *(v32 + 121);
  v118 = *(v32 + 31);
  *(v30 + 201) = v66;
  v67 = v109;
  v119 = v109;
  v120 = KeyPath;
  v121 = 1;
  v68 = v139[0];
  *(v34 + 89) = v139[0];
  v69 = v138;
  *(v34 + 73) = v138;
  v70 = v137;
  *(v34 + 57) = v137;
  v71 = v136;
  *(v34 + 41) = v136;
  v122 = *(v32 + 111);
  v72 = v140;
  *(v34 + 137) = v140;
  v73 = v139[2];
  *(v34 + 121) = v139[2];
  v74 = v139[1];
  *(v34 + 105) = v139[1];
  v75 = *v34;
  *(v30 + 23) = *(v34 + 1);
  *(v30 + 7) = v75;
  v76 = *(v34 + 2);
  v77 = *(v34 + 3);
  v78 = *(v34 + 4);
  *(v30 + 87) = *(v34 + 5);
  *(v30 + 71) = v78;
  *(v30 + 55) = v77;
  *(v30 + 39) = v76;
  v79 = *(v34 + 6);
  v80 = *(v34 + 7);
  v81 = *(v34 + 8);
  *(v30 + 151) = *(v34 + 9);
  *(v30 + 135) = v81;
  *(v30 + 119) = v80;
  *(v30 + 103) = v79;
  v82 = v113[6];
  v83 = v110;
  *(v110 + 153) = v113[7];
  v84 = v113[9];
  *(v83 + 169) = v113[8];
  *(v83 + 185) = v84;
  v85 = v113[2];
  *(v83 + 89) = v113[3];
  v86 = v113[5];
  *(v83 + 105) = v113[4];
  *(v83 + 121) = v86;
  *(v83 + 137) = v82;
  v87 = v113[1];
  *(v83 + 41) = v113[0];
  *(v83 + 57) = v87;
  *(v83 + 73) = v85;
  v133 = v74;
  v134 = v73;
  v135[0] = v72;
  v141 = v27 & 1;
  v88 = v94 & 1;
  v115 = v94 & 1;
  v114 = 1;
  v90 = v95;
  v89 = v96;
  *v83 = v96;
  *(v83 + 8) = v90;
  *(v83 + 16) = v88;
  *(v83 + 24) = v97;
  *(v83 + 32) = 0;
  *(v83 + 40) = 1;
  *(v83 + 200) = *(v30 + 159);
  v123[0] = v64;
  v123[1] = v65;
  v124 = v27 & 1;
  *(v34 + 177) = *(v32 + 121);
  v125 = *(v32 + 31);
  v126 = v67;
  v127 = KeyPath;
  v128 = 1;
  *(v135 + 15) = *(v32 + 111);
  v129 = v71;
  v130 = v70;
  v131 = v69;
  v132 = v68;
  sub_1D22BBFAC(v89, v90, v88);
  sub_1D2870F68();
  sub_1D22BD1D0(v116, &v112, &qword_1EC6DDC20);
  sub_1D22BD238(v123, &qword_1EC6DDC20);
  sub_1D22ED6E0(v89, v90, v88);
}

double sub_1D254EE98@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2875918();
  v28 = 1;
  sub_1D254E4D8(v2, &v14);
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v31 = v16;
  v32 = v17;
  v33 = v18;
  v34 = v19;
  v29 = v14;
  v30 = v15;
  v42[10] = v24;
  v42[11] = v25;
  v42[12] = v26;
  v42[6] = v20;
  v42[7] = v21;
  v42[8] = v22;
  v42[9] = v23;
  v42[2] = v16;
  v42[3] = v17;
  v42[4] = v18;
  v42[5] = v19;
  v42[0] = v14;
  v42[1] = v15;
  sub_1D22BD1D0(&v29, &v13, &qword_1EC6DDC18);
  sub_1D22BD238(v42, &qword_1EC6DDC18);
  *&v27[151] = v38;
  *&v27[167] = v39;
  *&v27[183] = v40;
  *&v27[199] = v41;
  *&v27[87] = v34;
  *&v27[103] = v35;
  *&v27[119] = v36;
  *&v27[135] = v37;
  *&v27[23] = v30;
  *&v27[39] = v31;
  *&v27[55] = v32;
  *&v27[71] = v33;
  *&v27[7] = v29;
  v5 = *&v27[176];
  *(a1 + 177) = *&v27[160];
  *(a1 + 193) = v5;
  *(a1 + 209) = *&v27[192];
  v6 = *&v27[112];
  *(a1 + 113) = *&v27[96];
  *(a1 + 129) = v6;
  v7 = *&v27[144];
  *(a1 + 145) = *&v27[128];
  *(a1 + 161) = v7;
  v8 = *&v27[48];
  *(a1 + 49) = *&v27[32];
  *(a1 + 65) = v8;
  v9 = *&v27[80];
  *(a1 + 81) = *&v27[64];
  *(a1 + 97) = v9;
  result = *v27;
  v11 = *&v27[16];
  *(a1 + 17) = *v27;
  v12 = v28;
  *a1 = v4;
  *(a1 + 8) = 0;
  *(a1 + 16) = v12;
  *(a1 + 224) = *&v27[207];
  *(a1 + 33) = v11;
  return result;
}

unint64_t sub_1D254F04C()
{
  result = qword_1EC6D7660;
  if (!qword_1EC6D7660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7660);
  }

  return result;
}

uint64_t type metadata accessor for PeoplePickerView()
{
  result = qword_1ED8A3368;
  if (!qword_1ED8A3368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D254F124()
{
  sub_1D254F2A0(319, &qword_1ED89D1B8, type metadata accessor for PeoplePickerViewModel, MEMORY[0x1E6981790]);
  if (v0 <= 0x3F)
  {
    sub_1D22F3CC0(319, &qword_1ED89DFA8, &qword_1EC6DAA58);
    if (v1 <= 0x3F)
    {
      sub_1D22F3CC0(319, &unk_1ED89E050, &qword_1EC6D9A30);
      if (v2 <= 0x3F)
      {
        sub_1D254F2A0(319, &qword_1ED89E028, type metadata accessor for ObservableDebugSettings, MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1D254F304();
          if (v4 <= 0x3F)
          {
            sub_1D22BFB5C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D254F2A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1D254F304()
{
  if (!qword_1ED89D030)
  {
    v0 = sub_1D2878F18();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED89D030);
    }
  }
}

void sub_1D254F370(unsigned __int8 *a1@<X8>)
{
  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v2 = sub_1D2878A58();
  v3 = sub_1D2878068();
  v4 = [v2 BOOLForKey_];

  *a1 = v4;
}

void sub_1D254F400()
{
  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  v0 = sub_1D2878A58();
  v1 = sub_1D28784E8();
  v2 = sub_1D2878068();
  [v0 setValue:v1 forKey:v2];
}

uint64_t sub_1D254F4AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D255226C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal21PeoplePickerViewModel__itemIdToConfirmBeforeSharing);
  a2[1] = v4;
  return sub_1D2870F68();
}

uint64_t sub_1D254F564(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1D2870F68();
  return sub_1D2548390(v1, v2);
}

uint64_t sub_1D254F5A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = type metadata accessor for PeoplePickerView();
  v45 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v48 = v4;
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D2875628();
  v40 = *(v5 - 1);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC30);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC38);
  v46 = *(v10 - 8);
  v47 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v51 = v1;
  v13 = sub_1D2551554(sub_1D2551FAC, v50, v9);
  v14 = MEMORY[0x1D38A0390](v13, 0.5, 1.0, 0.0);
  v15 = *(v1 + 8);
  v53 = *v1;
  v54 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
  v16 = v52;
  swift_getKeyPath();
  v53 = v16;
  sub_1D255226C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v17 = v16[65];

  v18 = &v9[*(v7 + 36)];
  *v18 = v14;
  v18[8] = v17;
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v19 = qword_1ED8B0058;
  v20 = sub_1D2876668();
  v22 = v21;
  v24 = v23;
  v42 = sub_1D2551FB4();
  sub_1D28769F8();
  sub_1D22ED6E0(v20, v22, v24 & 1);

  sub_1D22BD238(v9, &qword_1EC6DDC30);
  v25 = *(v2 + 16);
  v26 = *(v2 + 24);
  v43 = v12;
  if (v26 == 1)
  {
    v41 = v25;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v27 = sub_1D28762E8();
    sub_1D2873BE8();

    v28 = v39;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D23C6A84(v25, 0);
    (*(v40 + 8))(v28, v41);
    v25 = v53;
    v41 = v53;
  }

  v52 = v25;
  v29 = v44;
  sub_1D255250C(v2, v44);
  v30 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v45 = v2;
  v31 = swift_allocObject();
  sub_1D25526F4(v29, v31 + v30, type metadata accessor for PeoplePickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAA58);
  v53 = v7;
  v54 = v42;
  swift_getOpaqueTypeConformance2();
  sub_1D2552588();
  v32 = v49;
  v33 = v47;
  v34 = v43;
  sub_1D2876F58();

  (*(v46 + 8))(v34, v33);
  sub_1D255250C(v45, v29);
  v35 = swift_allocObject();
  sub_1D25526F4(v29, v35 + v30, type metadata accessor for PeoplePickerView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC80);
  v37 = (v32 + *(result + 36));
  *v37 = sub_1D2552674;
  v37[1] = v35;
  v37[2] = 0;
  v37[3] = 0;
  return result;
}

uint64_t sub_1D254FBE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC90);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v55 - v3;
  v65 = sub_1D2875FB8();
  v59 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v58 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC98);
  v61 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v60 = &v55 - v5;
  v57 = sub_1D2875628();
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28758D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC78);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v55 - v13;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC70);
  MEMORY[0x1EEE9AC00](v63);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC68);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v62 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v68 = &v55 - v20;
  *v14 = sub_1D2875918();
  *(v14 + 1) = 0x402E000000000000;
  v14[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDCA0);
  sub_1D2550588(a1, &v14[*(v21 + 44)]);
  sub_1D28758A8();
  sub_1D22BB9D8(&qword_1EC6D7670, &qword_1EC6DDC78);
  sub_1D2876918();
  (*(v9 + 8))(v11, v8);
  sub_1D22BD238(v14, &qword_1EC6DDC78);
  v22 = type metadata accessor for PeoplePickerView();
  v23 = *(v22 + 28);
  v24 = *(a1 + *(v22 + 32) + 8);
  v64 = a1;
  if (*(a1 + v23 + 8) == 1)
  {
    v71 = *(a1 + v23);
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v25 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v56 + 8))(v7, v57);
  }

  swift_getKeyPath();
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v71 = off_1ED8A4930;
  sub_1D255226C(&qword_1ED8A4920, type metadata accessor for DebugSettings);
  sub_1D28719E8();
  sub_1D22BCFD0(0, &qword_1ED89CDA0);
  sub_1D2870F78();
  v26 = sub_1D2878A58();
  v27 = sub_1D2878068();
  v28 = [v26 BOOLForKey_];

  if (v24 & 1 | ((v28 & 1) == 0))
  {
    sub_1D22BD1D0(v16, v69, &qword_1EC6DDC70);
    swift_storeEnumTagMultiPayload();
    v29 = sub_1D2552424();
    v71 = v63;
    v72 = v65;
    v73 = v29;
    v74 = MEMORY[0x1E697C950];
    swift_getOpaqueTypeConformance2();
    v30 = v62;
    sub_1D2875AF8();
  }

  else
  {
    v71 = 1836019578;
    v72 = 0xE400000000000000;
    v31 = v58;
    sub_1D2875B58();
    v32 = sub_1D2552424();
    v33 = MEMORY[0x1E697C950];
    v34 = v60;
    v35 = v63;
    v36 = v65;
    sub_1D2876C18();
    (*(v59 + 8))(v31, v36);
    v37 = v61;
    v38 = v67;
    (*(v61 + 16))(v69, v34, v67);
    swift_storeEnumTagMultiPayload();
    v71 = v35;
    v72 = v36;
    v73 = v32;
    v74 = v33;
    swift_getOpaqueTypeConformance2();
    v30 = v62;
    sub_1D2875AF8();
    (*(v37 + 8))(v34, v38);
  }

  v39 = v68;
  sub_1D22BD238(v16, &qword_1EC6DDC70);
  sub_1D228B218(v30, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD498);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D287F550;
  v41 = sub_1D2876328();
  *(inited + 32) = v41;
  v42 = sub_1D2876358();
  *(inited + 33) = v42;
  v43 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v41)
  {
    v43 = sub_1D2876378();
  }

  sub_1D2876378();
  if (sub_1D2876378() != v42)
  {
    v43 = sub_1D2876378();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  sub_1D2874768();
  sub_1D2874298();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = v70;
  sub_1D228B218(v39, v70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC60);
  v54 = v52 + *(result + 36);
  *v54 = v43;
  *(v54 + 8) = v45;
  *(v54 + 16) = v47;
  *(v54 + 24) = v49;
  *(v54 + 32) = v51;
  *(v54 + 40) = 0;
  return result;
}

uint64_t sub_1D2550588@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v73 = a2;
  v60 = sub_1D28764E8();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PeopleUnavailabilityView();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDCA8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v72 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDCB0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v71 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v56 - v13;
  v14 = type metadata accessor for PeoplePickerView();
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = type metadata accessor for PickerSubtitleView();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDCB8);
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v75 = &v56 - v22;
  v23 = a1[1];
  v63 = *a1;
  v64 = a1;
  v77 = v63;
  v78 = v23;
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
  v24 = v76;
  swift_getKeyPath();
  v77 = v24;
  v56 = sub_1D255226C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v25 = sub_1D2875798();
  v27 = v26;
  v29 = v28;
  v31 = v30 & 1 | 0x8000000000000000;
  v32 = *(v16 + 28);
  *&v18[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690);
  swift_storeEnumTagMultiPayload();
  *v18 = v25;
  *(v18 + 1) = v27;
  *(v18 + 2) = v31;
  *(v18 + 3) = v29;
  *(v18 + 4) = 3;
  v18[40] = 0;
  *(v18 + 6) = sub_1D28764C8();
  LOBYTE(v29) = sub_1D28762F8();
  sub_1D2876308();
  sub_1D2876308();
  if (sub_1D2876308() != v29)
  {
    sub_1D2876308();
  }

  sub_1D255250C(v64, &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v34 = swift_allocObject();
  sub_1D25526F4(&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33, type metadata accessor for PeoplePickerView);
  sub_1D2877848();
  sub_1D255226C(&qword_1EC6D8670, type metadata accessor for PickerSubtitleView);
  sub_1D2876C88();

  sub_1D2552A3C(v18, type metadata accessor for PickerSubtitleView);
  sub_1D2550E70(v74);
  v36 = v62;
  v35 = v63;
  v77 = v63;
  v78 = v62;
  sub_1D2877308();
  v37 = sub_1D254B348();

  if (v37)
  {
    v77 = v35;
    v78 = v36;
    sub_1D2877308();
    v38 = v76;
    swift_getKeyPath();
    v77 = v38;
    sub_1D28719E8();

    v40 = *(v38 + 48);
    v39 = *(v38 + 56);
    sub_1D2870F68();

    v41 = v69;
    v77 = 0x4074A00000000000;
    (*(v58 + 104))(v59, *MEMORY[0x1E6980EF8], v60);
    sub_1D22BFBB8();
    v42 = v57;
    sub_1D2874748();
    *(v42 + *(v41 + 24)) = 0;
    *v42 = v40;
    v42[1] = v39;
    v43 = v70;
    sub_1D25526F4(v42, v70, type metadata accessor for PeopleUnavailabilityView);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v41 = v69;
    v43 = v70;
  }

  (*(v68 + 56))(v43, v44, 1, v41);
  v46 = v65;
  v45 = v66;
  v47 = *(v66 + 16);
  v48 = v67;
  v47(v65, v75, v67);
  v49 = v74;
  v50 = v71;
  sub_1D22BD1D0(v74, v71, &qword_1EC6DDCB0);
  v51 = v72;
  sub_1D22BD1D0(v43, v72, &qword_1EC6DDCA8);
  v52 = v73;
  v47(v73, v46, v48);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDCC0);
  sub_1D22BD1D0(v50, &v52[*(v53 + 48)], &qword_1EC6DDCB0);
  sub_1D22BD1D0(v51, &v52[*(v53 + 64)], &qword_1EC6DDCA8);
  sub_1D22BD238(v43, &qword_1EC6DDCA8);
  sub_1D22BD238(v49, &qword_1EC6DDCB0);
  v54 = *(v45 + 8);
  v54(v75, v48);
  sub_1D22BD238(v51, &qword_1EC6DDCA8);
  sub_1D22BD238(v50, &qword_1EC6DDCB0);
  return (v54)(v46, v48);
}

uint64_t sub_1D2550E70@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v2 = type metadata accessor for PeoplePickerView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v52 = type metadata accessor for GridPickerView(0);
  MEMORY[0x1EEE9AC00](v52);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDCC8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = v43 - v8;
  v45 = *v1;
  v44 = v1[1];
  *&v68 = v45;
  *(&v68 + 1) = v44;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
  v49 = sub_1D254BC90();

  sub_1D255250C(v1, v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D2878568();
  v9 = sub_1D2878558();
  v10 = *(v3 + 80);
  v50 = ~v10;
  v11 = (v10 + 32) & ~v10;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v9;
  *(v12 + 24) = v13;
  sub_1D25526F4(v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PeoplePickerView);
  v56 = v1;
  sub_1D255250C(v1, v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_1D2878558();
  v54 = v4;
  v51 = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  v55 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D25526F4(v55, v15 + v11, type metadata accessor for PeoplePickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A70);
  sub_1D2877528();
  v16 = v45;
  v17 = v44;
  v65 = v45;
  v66 = v44;
  sub_1D2877328();
  v18 = v61;
  v19 = v62;
  v20 = v63;
  swift_getKeyPath();
  v65 = v18;
  v66 = v19;
  v67 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDCD0);
  sub_1D2877508();

  v21 = v61;
  v48 = v62;
  v47 = v63;
  v46 = v64;

  v59 = v16;
  v60 = v17;
  sub_1D2877308();
  v22 = v58;
  v59 = v16;
  v60 = v17;
  sub_1D2877308();
  v23 = v58;
  swift_getKeyPath();
  v59 = v23;
  sub_1D255226C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v25 = Strong;
  v26 = *(v23 + 80);
  ObjectType = swift_getObjectType();
  if (((*(v26 + 40))(ObjectType, v26) & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:

    v29 = 0;
    v28 = 0;
    goto LABEL_6;
  }

  v28 = swift_allocObject();
  v28[2] = v23;
  v28[3] = v25;
  v28[4] = v26;
  v29 = sub_1D2552D80;
LABEL_6:
  *(v6 + 17) = swift_getKeyPath();
  v6[144] = 0;
  v30 = v52;
  v31 = *(v52 + 44);
  *&v6[v31] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  swift_storeEnumTagMultiPayload();
  v32 = &v6[*(v30 + 48)];
  *v32 = xmmword_1D2893210;
  *(v32 + 2) = 0x3FB999999999999ALL;
  v33 = v69;
  *(v6 + 5) = v68;
  *(v6 + 6) = v33;
  *(v6 + 7) = v70;
  *(v6 + 16) = v71;
  *v6 = v49;
  *(v6 + 1) = 3;
  v34 = v48;
  *(v6 + 2) = v21;
  *(v6 + 3) = v34;
  v35 = v46;
  *(v6 + 4) = v47;
  *(v6 + 5) = v35;
  *(v6 + 6) = sub_1D2552A34;
  *(v6 + 7) = v22;
  *(v6 + 8) = v29;
  *(v6 + 9) = v28;
  sub_1D2875798();
  sub_1D255226C(qword_1ED8A4398, type metadata accessor for GridPickerView);
  v36 = v53;
  sub_1D2876AA8();

  sub_1D2552A3C(v6, type metadata accessor for GridPickerView);
  v37 = v55;
  sub_1D255250C(v56, v55);
  v38 = (v51 + 16) & v50;
  v39 = swift_allocObject();
  sub_1D25526F4(v37, v39 + v38, type metadata accessor for PeoplePickerView);
  v40 = v57;
  sub_1D2552D10(v36, v57);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDCB0);
  v42 = (v40 + *(result + 36));
  *v42 = sub_1D2552C84;
  v42[1] = v39;
  v42[2] = 0;
  v42[3] = 0;
  return result;
}

uint64_t sub_1D2551554@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a2;
  v33 = a1;
  v43 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC60);
  MEMORY[0x1EEE9AC00](v42);
  v5 = v32 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC88);
  MEMORY[0x1EEE9AC00](v40);
  v41 = v32 - v6;
  v38 = sub_1D2875678();
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D88);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v32 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC50);
  MEMORY[0x1EEE9AC00](v39);
  v15 = (v32 - v14);
  v17 = *v3;
  v16 = v3[1];
  v45 = *v3;
  v46 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
  v18 = v44;
  swift_getKeyPath();
  v45 = v18;
  sub_1D255226C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  v19 = *(v18 + 65);

  if (v19 == 1)
  {
    v45 = v17;
    v46 = v16;
    sub_1D2877308();
    v21 = sub_1D254A1B0();

    *v15 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AB0);
    swift_storeEnumTagMultiPayload();
    *(v15 + *(type metadata accessor for AppProtectionShieldView() + 20)) = v21;
    v22 = sub_1D2874F98();
    v23 = sub_1D2876338();
    v24 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC58) + 36);
    *v24 = v22;
    v24[8] = v23;
    v25 = sub_1D2875668();
    MEMORY[0x1D38A0390](v25, 0.5, 1.0, 0.0);
    v26 = sub_1D255226C(&qword_1ED89D6C8, MEMORY[0x1E697F260]);
    v27 = v38;
    sub_1D28743E8();

    (*(v35 + 8))(v8, v27);
    v29 = v36;
    v28 = v37;
    (*(v36 + 16))(v34, v13, v37);
    v45 = v27;
    v46 = v26;
    swift_getOpaqueTypeConformance2();
    v30 = sub_1D2874988();
    (*(v29 + 8))(v13, v28);
    *(v15 + *(v39 + 36)) = v30;
    sub_1D22BD1D0(v15, v41, &qword_1EC6DDC50);
    swift_storeEnumTagMultiPayload();
    sub_1D25520F8();
    sub_1D25522B4();
    sub_1D2875AF8();
    return sub_1D22BD238(v15, &qword_1EC6DDC50);
  }

  else
  {
    v33(v20);
    sub_1D22BD1D0(v5, v41, &qword_1EC6DDC60);
    swift_storeEnumTagMultiPayload();
    sub_1D25520F8();
    sub_1D25522B4();
    sub_1D2875AF8();
    return sub_1D22BD238(v5, &qword_1EC6DDC60);
  }
}

void sub_1D2551B10(uint64_t a1)
{
  v2 = sub_1D2875628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = *(a1 + 8);
  v18 = *a1;
  v19 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
  v8 = *(*(v17 + 24) + 16);

  if (!v8)
  {
    v18 = v6;
    v19 = v7;
    sub_1D2877308();
    v9 = v17;
    v10 = *(a1 + 16);
    if (*(a1 + 24) == 1)
    {
      v11 = v10;
    }

    else
    {
      sub_1D2870F78();
      sub_1D2878A28();
      v12 = sub_1D28762E8();
      sub_1D2873BE8();

      sub_1D2875618();
      swift_getAtKeyPath();
      sub_1D23C6A84(v10, 0);
      (*(v3 + 8))(v5, v2);
      v10 = v18;
    }

    v13 = *(v9 + 24);
    v14 = *(v13 + 16);
    if (v14)
    {
      [v14 removeAllActions];
      v15 = *(v13 + 16);
    }

    else
    {
      v15 = 0;
    }

    *(v13 + 16) = v10;
  }
}

uint64_t sub_1D2551CF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
  sub_1D254B418();
}

uint64_t sub_1D2551D50@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D255226C(&qword_1ED8A13A0, type metadata accessor for PeoplePickerViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D22BD1D0(v3 + 88, a1, &qword_1EC6D9A70);
}

uint64_t sub_1D2551E50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v11 - v7;
  v9 = a4[1];
  v11[2] = *a4;
  v11[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
  type metadata accessor for PeoplePickerView();
  sub_1D24CC4AC(v8);
  sub_1D254A550(a1, v8);

  return sub_1D22BD238(v8, &qword_1EC6D9A30);
}

uint64_t sub_1D2551F54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDC40);
  sub_1D2877308();
}

unint64_t sub_1D2551FB4()
{
  result = qword_1EC6D7DB8;
  if (!qword_1EC6D7DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC30);
    sub_1D255206C();
    sub_1D22BB9D8(&qword_1ED89D680, &qword_1EC6DA080);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DB8);
  }

  return result;
}

unint64_t sub_1D255206C()
{
  result = qword_1EC6D7888;
  if (!qword_1EC6D7888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC48);
    sub_1D25520F8();
    sub_1D25522B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7888);
  }

  return result;
}

unint64_t sub_1D25520F8()
{
  result = qword_1EC6D7BE0;
  if (!qword_1EC6D7BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC50);
    sub_1D25521B0();
    sub_1D22BB9D8(&qword_1ED89D4A0, &qword_1EC6DB918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7BE0);
  }

  return result;
}

unint64_t sub_1D25521B0()
{
  result = qword_1EC6D7DD0;
  if (!qword_1EC6D7DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC58);
    sub_1D255226C(qword_1EC6D83E0, type metadata accessor for AppProtectionShieldView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DD0);
  }

  return result;
}

uint64_t sub_1D255226C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D25522B4()
{
  result = qword_1EC6D7DC0;
  if (!qword_1EC6D7DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC60);
    sub_1D2552340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7DC0);
  }

  return result;
}

unint64_t sub_1D2552340()
{
  result = qword_1EC6D7870;
  if (!qword_1EC6D7870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC70);
    sub_1D2875FB8();
    sub_1D2552424();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7870);
  }

  return result;
}

unint64_t sub_1D2552424()
{
  result = qword_1EC6D7C38;
  if (!qword_1EC6D7C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC70);
    sub_1D22BB9D8(&qword_1EC6D7670, &qword_1EC6DDC78);
    sub_1D255226C(&qword_1ED89D2B0, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C38);
  }

  return result;
}

uint64_t sub_1D255250C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeoplePickerView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2552588()
{
  result = qword_1EC6D7540;
  if (!qword_1EC6D7540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAA58);
    sub_1D255260C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7540);
  }

  return result;
}

unint64_t sub_1D255260C()
{
  result = qword_1EC6D7538;
  if (!qword_1EC6D7538)
  {
    sub_1D22BCFD0(255, &qword_1EC6D7548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7538);
  }

  return result;
}

uint64_t sub_1D25526F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D255275C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PeoplePickerView();

  return sub_1D2551D50(a1);
}

uint64_t objectdestroy_31Tm_0()
{
  v1 = type metadata accessor for PeoplePickerView();
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_1D23C6A84(*(v3 + 16), *(v3 + 24));
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1D2872008();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  v7 = *(v1 + 36);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  (*(*(v8 - 8) + 8))(v3 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1D25529C0(uint64_t a1)
{
  v3 = *(type metadata accessor for PeoplePickerView() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1D2551E50(a1, v4, v5, v6);
}

uint64_t sub_1D2552A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_17()
{
  v1 = type metadata accessor for PeoplePickerView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_1D23C6A84(*(v2 + 16), *(v2 + 24));
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1D2872008();
    v5 = *(v4 - 8);
    if (!(*(v5 + 48))(v2 + v3, 1, v4))
    {
      (*(v5 + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v6 = *(v1 + 36);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99C0);
  (*(*(v7 - 8) + 8))(v2 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1D2552C9C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PeoplePickerView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1D2552D10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDCC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2552D8C()
{
  result = qword_1EC6D7C90;
  if (!qword_1EC6D7C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAA58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DDC30);
    sub_1D2551FB4();
    swift_getOpaqueTypeConformance2();
    sub_1D2552588();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C90);
  }

  return result;
}

uint64_t dispatch thunk of PeopleSuggestionsRetrieving.loadAllPeople(forceReload:caller:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D22BDFF8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PeopleSuggestionsRetrieving.reset()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 96) + **(a2 + 96));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D22BDFF8;

  return v7(a1, a2);
}

uint64_t dispatch thunk of PeopleSuggestionsRetrieving.fetchMostRecentPersonAsync()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 160) + **(a3 + 160));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D22BDFF8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of PeopleSuggestionsRetrieving.fetchPhotosPersonAsync(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 168) + **(a5 + 168));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D22BDFF8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PeopleSuggestionsRetrieving.updatedPersonAsset(usingImportedAssetWithIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 184) + **(a5 + 184));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D22BDFF8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of PeopleSuggestionsRetrieving.updatedPersonAsset(usingImportedFaceIdentifier:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 192) + **(a6 + 192));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D22BDFF8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of PeopleSuggestionsRetrieving.isMe(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 200) + **(a4 + 200));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D2553898;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1D2553898(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D2553994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[23] = a3;
  v4[24] = v3;
  v4[21] = a1;
  v4[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60);
  v4[25] = swift_task_alloc();
  v5 = type metadata accessor for PhotosPersonImage();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v6 = sub_1D2871818();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();
  sub_1D2878568();
  v4[35] = sub_1D2878558();
  v8 = sub_1D28784F8();
  v4[36] = v8;
  v4[37] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D2553B70, v8, v7);
}

void sub_1D2553B70()
{
  v45 = v0;
  v1 = sub_1D2554D28()[2];

  if (v1)
  {
    v2 = *(v0 + 184);
    v4 = *(v0 + 168);
    v3 = *(v0 + 176);

    sub_1D2559398(v3, v2, v4);
LABEL_12:

    v14 = *(v0 + 8);

    v14();
    return;
  }

  v5 = *(v0 + 192);
  swift_getKeyPath();
  *(v0 + 144) = v5;
  sub_1D2564338();
  sub_1D28719E8();

  if (!swift_weakLoadStrong())
  {
    goto LABEL_10;
  }

  *(v0 + 304) = sub_1D23C7B7C();

  if (sub_1D22BF738() || (v6 = *(v0 + 192), swift_getKeyPath(), *(v0 + 152) = v6, sub_1D28719E8(), , !swift_weakLoadStrong()) || (sub_1D23C6CA0(), , v7 = _SystemPhotoLibrary.photoLibrary.getter(), *(v0 + 312) = v7, , !v7))
  {

LABEL_10:

    goto LABEL_11;
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 264);
  v10 = *(v0 + 248);
  sub_1D28717A8();
  if ((*(v9 + 48))(v10, 1, v8) == 1)
  {
    v11 = *(v0 + 248);

    sub_1D22BD238(v11, &qword_1EC6D8F70);
LABEL_11:
    v12 = *(v0 + 168);
    v13 = type metadata accessor for PhotosPersonAsset();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    goto LABEL_12;
  }

  v15 = *(v0 + 272);
  (*(*(v0 + 264) + 32))(v15, *(v0 + 248), *(v0 + 256));
  v16 = sub_1D286641C(v15, v7);
  *(v0 + 320) = v16;
  if (!v16)
  {
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));

    goto LABEL_10;
  }

  v17 = v16;
  v18 = *(v0 + 192);
  swift_getKeyPath();
  *(v0 + 160) = v18;
  sub_1D28719E8();

  if (!swift_weakLoadStrong())
  {
    v37 = *(v0 + 272);
    v38 = *(v0 + 256);
    v39 = *(v0 + 264);
    v40 = *(v0 + 168);

    (*(v39 + 8))(v37, v38);
    v41 = type metadata accessor for PhotosPersonAsset();
    (*(*(v41 - 8) + 56))(v40, 1, 1, v41);
    goto LABEL_12;
  }

  *(v0 + 328) = sub_1D23C7F70();

  v19 = v17;
  v20 = [v19 localIdentifier];
  if (!v20)
  {
    sub_1D28780A8();
    v20 = sub_1D2878068();
  }

  v21 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (v21)
  {
    v22 = *(v0 + 240);
    sub_1D28780A8();

    sub_1D28717A8();

    v23 = v19;
    sub_1D2610058(v22, 0, &v43);
    v42 = v43;
    v24 = v44;
    v25 = [v23 localIdentifier];

    v26 = sub_1D28780A8();
    v28 = v27;

    v29 = [v23 px_localizedName];
    v30 = sub_1D28780A8();
    v32 = v31;

    sub_1D238D058(0);
    *(v0 + 16) = v30;
    *(v0 + 24) = v32;
    *(v0 + 32) = v26;
    *(v0 + 40) = v28;
    *(v0 + 48) = v42;
    *(v0 + 64) = v24;
    *(v0 + 72) = v17;
    v33 = *(v0 + 32);
    *(v0 + 80) = *(v0 + 16);
    *(v0 + 96) = v33;
    v34 = *(v0 + 64);
    *(v0 + 112) = *(v0 + 48);
    *(v0 + 128) = v34;
    v35 = swift_task_alloc();
    *(v0 + 336) = v35;
    *v35 = v0;
    v35[1] = sub_1D255410C;
    v36 = *(v0 + 200);

    sub_1D255983C(v36, (v0 + 80));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D255410C()
{
  v1 = *v0;

  v2 = *(v1 + 296);
  v3 = *(v1 + 288);

  return MEMORY[0x1EEE6DFA0](sub_1D255422C, v3, v2);
}

uint64_t sub_1D255422C()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 312);
  v3 = *(v0 + 272);
  v4 = *(v0 + 256);
  v5 = *(v0 + 264);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v20 = *(v0 + 200);
  v21 = *(v0 + 208);

  sub_1D22BD238(v6, &qword_1EC6D8F70);
  (*(v5 + 8))(v3, v4);
  if ((*(v7 + 48))(v20, 1, v21) == 1)
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 168);
    sub_1D22D640C(v0 + 16);
    sub_1D22BD238(v8, &qword_1EC6DDD60);
    v10 = type metadata accessor for PhotosPersonAsset();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  else
  {
    v11 = *(v0 + 224);
    v12 = *(v0 + 232);
    v13 = *(v0 + 168);
    sub_1D25650EC(*(v0 + 200), v12, type metadata accessor for PhotosPersonImage);
    sub_1D25650EC(v12, v11, type metadata accessor for PhotosPersonImage);
    v14 = *(v0 + 64);
    v16 = *(v0 + 16);
    v15 = *(v0 + 32);
    v13[2] = *(v0 + 48);
    v13[3] = v14;
    *v13 = v16;
    v13[1] = v15;
    v17 = type metadata accessor for PhotosPersonAsset();
    sub_1D25650EC(v11, v13 + v17[5], type metadata accessor for PhotosPersonImage);
    *(v13 + v17[6]) = 1;
    *(v13 + v17[7]) = 0;
    (*(*(v17 - 1) + 56))(v13, 0, 1, v17);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D2554484(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for PhotosPersonAsset();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0);
  v2[12] = swift_task_alloc();
  v4 = type metadata accessor for CharacterAsset();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  sub_1D2878568();
  v2[16] = sub_1D2878558();
  v6 = sub_1D28784F8();
  v2[17] = v6;
  v2[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D2554644, v6, v5);
}

void *sub_1D2554644()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D2564338();
  sub_1D28719E8();

  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {
    v3 = v0[6];

    sub_1D2558B94(0, v3);
LABEL_3:

    v4 = v0[1];

    return v4();
  }

  result = sub_1D2612D44();
  v0[19] = result;
  v6 = result[2];
  v0[20] = v6;
  if (!v6)
  {
    v14 = v0[6];

    *(v14 + 32) = 0;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    goto LABEL_3;
  }

  v7 = v0[14];
  v0[21] = 0;
  if (!result[2])
  {
    __break(1u);
    return result;
  }

  v9 = v0[12];
  v8 = v0[13];
  v11 = result[4];
  v10 = result[5];
  v0[22] = v10;
  sub_1D2870F68();
  sub_1D2559014(v11, v10, 1, v9);
  if ((*(v7 + 48))(v9, 1, v8) != 1)
  {
    v15 = v0[15];
    v16 = v0[12];
    v17 = v0[13];
    v18 = v0[6];

    sub_1D25650EC(v16, v15, type metadata accessor for CharacterAsset);
    v18[3] = v17;
    v18[4] = &protocol witness table for CharacterAsset;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    sub_1D25650EC(v15, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
    goto LABEL_3;
  }

  sub_1D22BD238(v0[12], &unk_1EC6DDDA0);
  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_1D25548FC;
  v13 = v0[8];

  return sub_1D2553994(v13, v11, v10);
}

uint64_t sub_1D25548FC()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D2554A40, v3, v2);
}

uint64_t sub_1D2554A40()
{
  v1 = v0[9];
  v2 = v0[8];
  if ((*(v0[10] + 48))(v2, 1, v1) != 1)
  {
    v7 = v0[11];
    v8 = v0[6];

    sub_1D25650EC(v2, v7, type metadata accessor for PhotosPersonAsset);
    v8[3] = v1;
    v8[4] = &protocol witness table for PhotosPersonAsset;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
    v10 = v7;
    v11 = type metadata accessor for PhotosPersonAsset;
LABEL_5:
    sub_1D25650EC(v10, boxed_opaque_existential_1, v11);
    goto LABEL_6;
  }

  v3 = v0[20];
  v4 = v0[21] + 1;
  result = sub_1D22BD238(v2, &unk_1EC6DDDC0);
  if (v4 == v3)
  {
    v6 = v0[6];

    *(v6 + 32) = 0;
    *v6 = 0u;
    *(v6 + 16) = 0u;
LABEL_6:

    v12 = v0[1];

    return v12();
  }

  v13 = v0[21] + 1;
  v0[21] = v13;
  v14 = v0[19];
  if (v13 >= *(v14 + 16))
  {
    __break(1u);
    return result;
  }

  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[12];
  v18 = v14 + 16 * v13;
  v20 = *(v18 + 32);
  v19 = *(v18 + 40);
  v0[22] = v19;
  sub_1D2870F68();
  sub_1D2559014(v20, v19, 1, v17);
  if ((*(v16 + 48))(v17, 1, v15) != 1)
  {
    v23 = v0[15];
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[6];

    sub_1D25650EC(v24, v23, type metadata accessor for CharacterAsset);
    v26[3] = v25;
    v26[4] = &protocol witness table for CharacterAsset;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    v10 = v23;
    v11 = type metadata accessor for CharacterAsset;
    goto LABEL_5;
  }

  sub_1D22BD238(v0[12], &unk_1EC6DDDA0);
  v21 = swift_task_alloc();
  v0[23] = v21;
  *v21 = v0;
  v21[1] = sub_1D25548FC;
  v22 = v0[8];

  return sub_1D2553994(v22, v20, v19);
}

void *sub_1D2554D28()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v20 - v3;
  v5 = type metadata accessor for PhotosPersonAsset();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  *&v23[0] = v0;
  sub_1D2564338();
  sub_1D28719E8();

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal16_PeopleRetrieval__allPeople;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = *(v10 + 16);
  if (!v11)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = (v6 + 56);
  v14 = (v6 + 48);
  v20[1] = v10;
  sub_1D2870F68();
  v15 = MEMORY[0x1E69E7CC0];
  v21 = v6;
  do
  {
    sub_1D22D7044(v12, v23);
    sub_1D227268C(v23, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08);
    v16 = swift_dynamicCast();
    (*v13)(v4, v16 ^ 1u, 1, v5);
    if ((*v14)(v4, 1, v5) == 1)
    {
      sub_1D22BD238(v4, &unk_1EC6DDDC0);
    }

    else
    {
      sub_1D25650EC(v4, v8, type metadata accessor for PhotosPersonAsset);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1D27CC868(0, v15[2] + 1, 1, v15);
      }

      v18 = v15[2];
      v17 = v15[3];
      if (v18 >= v17 >> 1)
      {
        v15 = sub_1D27CC868(v17 > 1, v18 + 1, 1, v15);
      }

      v15[2] = v18 + 1;
      sub_1D25650EC(v8, v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for PhotosPersonAsset);
    }

    v12 += 40;
    --v11;
  }

  while (v11);

  return v15;
}

uint64_t sub_1D2555048(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v2 + 56) + 8 * v11);
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D25D0410(v13, v14);
    v17 = v16;

    if ((v17 & 1) == 0)
    {

      return 0;
    }

    v18 = sub_1D2870F68();
    v19 = sub_1D25551B0(v18, v15);

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v2 + 64 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v6 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D25551B0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];
    sub_1D2870F68();
    sub_1D2870F68();
    v20 = sub_1D25D0410(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1D2879618();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_1D2555354(uint64_t a1, uint64_t a2)
{
  v61 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v66 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v55 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v60 = &v55 - v10;
  v11 = type metadata accessor for GeneratedPreviewOptions(0);
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v62 = (&v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v58 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DCCD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v55 - v19;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v21 = 0;
    v55 = v8;
    v56 = a1;
    v24 = *(a1 + 64);
    v23 = a1 + 64;
    v22 = v24;
    v25 = 1 << *(v23 - 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v22;
    v28 = (v25 + 63) >> 6;
    v65 = v5;
    v63 = v17;
    v57 = v20;
    while (v27)
    {
      v64 = (v27 - 1) & v27;
      v29 = __clz(__rbit64(v27)) | (v21 << 6);
LABEL_18:
      v34 = v56;
      v35 = v58;
      sub_1D2565084(*(v56 + 48) + *(v59 + 72) * v29, v58, type metadata accessor for GeneratedPreviewOptions);
      v36 = v60;
      sub_1D2565084(*(v34 + 56) + *(v66 + 72) * v29, v60, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20);
      v38 = *(v37 + 48);
      v39 = v35;
      v17 = v63;
      sub_1D25650EC(v39, v63, type metadata accessor for GeneratedPreviewOptions);
      sub_1D25650EC(v36, &v17[v38], type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
      (*(*(v37 - 8) + 56))(v17, 0, 1, v37);
      v8 = v55;
LABEL_19:
      v40 = v57;
      sub_1D22EC9BC(v17, v57, &qword_1EC6DCCD8);
      v41 = v40;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20);
      if ((*(*(v42 - 8) + 48))(v40, 1, v42) == 1)
      {
        return;
      }

      v43 = *(v42 + 48);
      v44 = v62;
      sub_1D25650EC(v41, v62, type metadata accessor for GeneratedPreviewOptions);
      sub_1D25650EC(v41 + v43, v8, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
      v45 = sub_1D25D0488(v44);
      v47 = v46;
      sub_1D2565154(v44, type metadata accessor for GeneratedPreviewOptions);
      if ((v47 & 1) == 0)
      {
        v49 = v8;
LABEL_33:
        sub_1D2565154(v49, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
        return;
      }

      v48 = *(a2 + 56) + *(v66 + 72) * v45;
      v49 = v65;
      sub_1D2565084(v48, v65, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
      type metadata accessor for PlaygroundImage();
      if ((_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        sub_1D2565154(v8, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
        goto LABEL_33;
      }

      v50 = *(v61 + 20);
      v51 = *(v49 + v50);
      v52 = *&v8[v50];
      if (v51)
      {
        v17 = v63;
        if (!v52)
        {
          sub_1D2565154(v8, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
LABEL_32:
          v49 = v65;
          goto LABEL_33;
        }

        sub_1D2870F68();
        v53 = sub_1D2555048(v51, v52);

        sub_1D2565154(v8, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
        if ((v53 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        sub_1D2870F68();
        sub_1D2565154(v8, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
        v17 = v63;
        if (v52)
        {

          goto LABEL_32;
        }
      }

      sub_1D2565154(v65, type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
      v27 = v64;
    }

    if (v28 <= v21 + 1)
    {
      v30 = v21 + 1;
    }

    else
    {
      v30 = v28;
    }

    v31 = v30 - 1;
    while (1)
    {
      v32 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v32 >= v28)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE20);
        (*(*(v54 - 8) + 56))(v17, 1, 1, v54);
        v64 = 0;
        v21 = v31;
        goto LABEL_19;
      }

      v33 = *(v23 + 8 * v32);
      ++v21;
      if (v33)
      {
        v64 = (v33 - 1) & v33;
        v29 = __clz(__rbit64(v33)) | (v32 << 6);
        v21 = v32;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D25559F4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v32 = result;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v33 = (v7 - 1) & v7;
LABEL_14:
    v12 = v9 | (v3 << 6);
    v13 = *(*(result + 48) + v12);
    v14 = (*(result + 56) + 32 * v12);
    v16 = *v14;
    v15 = v14[1];
    v18 = v14[2];
    v17 = v14[3];
    v19 = v15 == 0;
    sub_1D2870F68();
    sub_1D2870F68();
    if (!v15)
    {
      return v19;
    }

    v20 = v13;
    v21 = v2;
    v22 = sub_1D25DB1BC(v20);
    if ((v23 & 1) == 0 || ((v24 = (*(v2 + 56) + 32 * v22), v25 = v24[2], v26 = v24[3], *v24 == v16) ? (v27 = v15 == v24[1]) : (v27 = 0), !v27 && (v28 = v24[2], v29 = sub_1D2879618(), v25 = v28, (v29 & 1) == 0)))
    {

      return 0;
    }

    if (v25 == v18 && v17 == v26)
    {

      v2 = v21;
      result = v32;
      v7 = v33;
    }

    else
    {
      v31 = sub_1D2879618();

      v2 = v21;
      result = v32;
      v7 = v33;
      if ((v31 & 1) == 0)
      {
        return v19;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v33 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2555BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v50 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v51 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDDF8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v48 = &v43 - v12;
  v13 = 0;
  v46 = a1;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v44 = v15;
  v45 = v50 + 16;
  v53 = (v50 + 32);
  v47 = (v50 + 8);
  while (v19)
  {
    v54 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
LABEL_16:
    v26 = v46;
    v28 = v49;
    v27 = v50;
    (*(v50 + 16))(v49, *(v46 + 48) + *(v50 + 72) * v21, v4);
    v29 = *(*(v26 + 56) + 8 * v21);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE00);
    v31 = *(v30 + 48);
    v32 = *(v27 + 32);
    v33 = v52;
    v32(v52, v28, v4);
    *(v33 + v31) = v29;
    (*(*(v30 - 8) + 56))(v33, 0, 1, v30);
    sub_1D2870F78();
LABEL_17:
    v34 = v48;
    sub_1D22EC9BC(v33, v48, &qword_1EC6DDDF8);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE00);
    v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
    v37 = v36 == 1;
    if (v36 == 1)
    {
      return v37;
    }

    v38 = v51;
    (*v53)(v51, v34, v4);
    sub_1D25D064C(v38);
    v40 = v39;
    (*v47)(v38, v4);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    sub_1D2870F78();
    v41 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();

    v19 = v54;
    if ((v41 & 1) == 0)
    {
      return v37;
    }
  }

  if (v20 <= v13 + 1)
  {
    v22 = v13 + 1;
  }

  else
  {
    v22 = v20;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v24 >= v20)
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE00);
      v33 = v52;
      (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
      v54 = 0;
      v13 = v23;
      goto LABEL_17;
    }

    v25 = *(v44 + 8 * v24);
    ++v13;
    if (v25)
    {
      v54 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v13 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2556098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage();
  v5 = *(v4 - 8);
  v99 = v4;
  v100 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v98 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v77 - v8;
  v95 = sub_1D2871818();
  v91 = *(v95 - 8);
  v10 = MEMORY[0x1EEE9AC00](v95);
  v87 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v77 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDDE8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v14);
  v88 = &v77 - v18;
  v97 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v97 + 16))
  {
    return 0;
  }

  v19 = 0;
  v20 = *(a1 + 64);
  v79 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v78 = (v21 + 63) >> 6;
  v89 = (v91 + 32);
  v81 = v91 + 16;
  v82 = (v91 + 8);
  v101 = v9;
  v96 = v16;
  v80 = a1;
  if (v23)
  {
    while (1)
    {
      v84 = (v23 - 1) & v23;
      v24 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_15:
      v29 = v91;
      v30 = v86;
      v31 = v95;
      (*(v91 + 16))(v86, *(a1 + 48) + *(v91 + 72) * v24, v95);
      v32 = (*(a1 + 56) + 56 * v24);
      v33 = *v32;
      v34 = v32[1];
      v35 = v32[3];
      v93 = v32[2];
      v94 = v33;
      v36 = v32[5];
      v92 = v32[4];
      v37 = v32[6];
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDDF0);
      v39 = &v96[*(v38 + 48)];
      (*(v29 + 32))(v96, v30, v31);
      v40 = v93;
      *v39 = v94;
      *(v39 + 1) = v34;
      *(v39 + 2) = v40;
      *(v39 + 3) = v35;
      *(v39 + 4) = v92;
      *(v39 + 5) = v36;
      *(v39 + 6) = v37;
      v16 = v96;
      (*(*(v38 - 8) + 56))(v96, 0, 1, v38);
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
      sub_1D2870F68();
LABEL_16:
      v41 = v88;
      sub_1D22EC9BC(v16, v88, &qword_1EC6DDDE8);
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDDF0);
      v43 = 1;
      if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
      {
        return v43;
      }

      v44 = (v41 + *(v42 + 48));
      v45 = v87;
      v46 = v95;
      (*v89)(v87, v41, v95);
      v48 = *v44;
      v47 = v44[1];
      v50 = v44[2];
      v49 = v44[3];
      v51 = v44[4];
      v92 = v44[5];
      v93 = v49;
      v52 = v44[6];
      v53 = sub_1D25D064C(v45);
      v55 = v54;
      (*v82)(v45, v46);
      if ((v55 & 1) == 0 || ((v56 = (*(v97 + 56) + 56 * v53), v57 = *v56, v58 = v56[1], v60 = v56[2], v59 = v56[3], v61 = v56[4], v90 = v56[5], v62 = v56[6], v57 == v48) ? (v63 = v58 == v47) : (v63 = 0), (v94 = v59, !v63) && (v64 = sub_1D2879618(), v59 = v94, (v64 & 1) == 0)))
      {
LABEL_49:

LABEL_50:

        goto LABEL_51;
      }

      v83 = v58;
      v85 = v47;
      if (v59)
      {
        v65 = v101;
        v66 = v92;
        if (!v93 || (v60 != v50 || v59 != v93) && (sub_1D2879618() & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v65 = v101;
        v66 = v92;
        if (v93)
        {
          goto LABEL_48;
        }
      }

      if ((v61 != v51 || v90 != v66) && (sub_1D2879618() & 1) == 0 || (v67 = *(v62 + 16), v67 != *(v52 + 16)))
      {
LABEL_48:

LABEL_51:

        return 0;
      }

      if (v67 && v62 != v52)
      {
        break;
      }

LABEL_43:

      a1 = v80;
      v16 = v96;
      v23 = v84;
      if (!v84)
      {
        goto LABEL_7;
      }
    }

    v68 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v69 = v62 + v68;
    v70 = v52 + v68;
    sub_1D2870F68();
    sub_1D2870F68();
    sub_1D2870F68();
    result = sub_1D2870F68();
    v71 = 0;
    while (v71 < *(v62 + 16))
    {
      v72 = *(v100 + 72) * v71;
      result = sub_1D2565084(v69 + v72, v65, type metadata accessor for PlaygroundImage);
      if (v71 >= *(v52 + 16))
      {
        goto LABEL_57;
      }

      v73 = v98;
      sub_1D2565084(v70 + v72, v98, type metadata accessor for PlaygroundImage);
      v74 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      v75 = v73;
      v65 = v101;
      sub_1D2565154(v75, type metadata accessor for PlaygroundImage);
      result = sub_1D2565154(v65, type metadata accessor for PlaygroundImage);
      if ((v74 & 1) == 0)
      {

        goto LABEL_50;
      }

      if (v67 == ++v71)
      {

        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_7:
    if (v78 <= v19 + 1)
    {
      v25 = v19 + 1;
    }

    else
    {
      v25 = v78;
    }

    v26 = v25 - 1;
    while (1)
    {
      v27 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v27 >= v78)
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDDF0);
        (*(*(v76 - 8) + 56))(v16, 1, 1, v76);
        v84 = 0;
        v19 = v26;
        goto LABEL_16;
      }

      v28 = *(v79 + 8 * v27);
      ++v19;
      if (v28)
      {
        v84 = (v28 - 1) & v28;
        v24 = __clz(__rbit64(v28)) | (v27 << 6);
        v19 = v27;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_57:
  __break(1u);
  return result;
}

unint64_t sub_1D255692C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_1D25D0574(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2556A34(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for PhotosPersonImage();
  v70 = *(v66 - 8);
  v4 = MEMORY[0x1EEE9AC00](v66);
  v6 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v61 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD50);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = (&v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v12);
  v67 = (&v61 - v16);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v64 = v9;
  v63 = v6;
  v17 = 0;
  v62 = a1;
  v18 = *(a1 + 64);
  v61 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v23 = &unk_1EC6DDD58;
  v24 = &unk_1D2893768;
  while (v21)
  {
    v26 = __clz(__rbit64(v21));
    v27 = (v21 - 1) & v21;
    v28 = v26 | (v17 << 6);
    v29 = v64;
LABEL_18:
    v35 = *(v62 + 56);
    v36 = (*(v62 + 48) + (v28 << 6));
    v37 = v36[3];
    v39 = *v36;
    v38 = v36[1];
    v74 = v36[2];
    v75 = v37;
    v72 = v39;
    v73 = v38;
    v40 = v65;
    sub_1D2565084(v35 + *(v70 + 72) * v28, v65, type metadata accessor for PhotosPersonImage);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
    v42 = *(v41 + 48);
    v43 = v73;
    *v14 = v72;
    v14[1] = v43;
    v44 = v75;
    v14[2] = v74;
    v14[3] = v44;
    sub_1D25650EC(v40, v14 + v42, type metadata accessor for PhotosPersonImage);
    (*(*(v41 - 8) + 56))(v14, 0, 1, v41);
    sub_1D22D63B0(&v72, v71);
    v32 = v67;
LABEL_19:
    sub_1D22EC9BC(v14, v32, &qword_1EC6DDD50);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
    v46 = (*(*(v45 - 8) + 48))(v32, 1, v45);
    v68 = v46 == 1;
    if (v46 == 1)
    {
      return v68;
    }

    v69 = v27;
    v47 = v24;
    v48 = v22;
    v49 = v14;
    v50 = v23;
    v51 = *(v45 + 48);
    v52 = v32[1];
    v76[0] = *v32;
    v76[1] = v52;
    v53 = v32[3];
    v76[2] = v32[2];
    v76[3] = v53;
    sub_1D25650EC(v32 + v51, v29, type metadata accessor for PhotosPersonImage);
    v54 = sub_1D25D0770(v76);
    v56 = v55;
    sub_1D22D640C(v76);
    if ((v56 & 1) == 0)
    {
      goto LABEL_32;
    }

    v57 = *(a2 + 56) + *(v70 + 72) * v54;
    v58 = v63;
    sub_1D2565084(v57, v63, type metadata accessor for PhotosPersonImage);
    if ((*v58 != *v29 || *(v58 + 8) != *(v29 + 8)) && (sub_1D2879618() & 1) == 0)
    {
LABEL_31:
      sub_1D2565154(v58, type metadata accessor for PhotosPersonImage);
LABEL_32:
      sub_1D2565154(v29, type metadata accessor for PhotosPersonImage);
      return 0;
    }

    v59 = *(v29 + 24);
    if (*(v58 + 24))
    {
      if (!*(v29 + 24))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (*(v58 + 16) != *(v29 + 16))
      {
        v59 = 1;
      }

      if (v59)
      {
        goto LABEL_31;
      }
    }

    type metadata accessor for PlaygroundImage();
    v25 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D2565154(v58, type metadata accessor for PhotosPersonImage);
    result = sub_1D2565154(v29, type metadata accessor for PhotosPersonImage);
    v23 = v50;
    v14 = v49;
    v22 = v48;
    v24 = v47;
    v21 = v69;
    if ((v25 & 1) == 0)
    {
      return v68;
    }
  }

  if (v22 <= v17 + 1)
  {
    v30 = v17 + 1;
  }

  else
  {
    v30 = v22;
  }

  v31 = v30 - 1;
  v29 = v64;
  v32 = v67;
  while (1)
  {
    v33 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v33 >= v22)
    {
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
      (*(*(v60 - 8) + 56))(v14, 1, 1, v60);
      v27 = 0;
      v17 = v31;
      goto LABEL_19;
    }

    v34 = *(v61 + 8 * v33);
    ++v17;
    if (v34)
    {
      v27 = (v34 - 1) & v34;
      v28 = __clz(__rbit64(v34)) | (v33 << 6);
      v17 = v33;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2557024(uint64_t a1, uint64_t a2)
{
  v58 = type metadata accessor for PhotosPersonImage();
  v4 = *(v58 - 8);
  v5 = MEMORY[0x1EEE9AC00](v58);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD40);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  result = MEMORY[0x1EEE9AC00](v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v54 = a2;
  v55 = (&v51 - v15);
  v56 = v16;
  v17 = 0;
  v52 = a1;
  v18 = *(a1 + 64);
  v51 = a1 + 64;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v23 = &unk_1EC6DDD48;
  v53 = v22;
  while (v21)
  {
    v60 = (v21 - 1) & v21;
    v25 = __clz(__rbit64(v21)) | (v17 << 6);
    v26 = v56;
LABEL_18:
    v31 = *(*(v52 + 48) + 8 * v25);
    v32 = v57;
    sub_1D2565084(*(v52 + 56) + *(v4 + 72) * v25, v57, type metadata accessor for PhotosPersonImage);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
    v34 = *(v33 + 48);
    *v26 = v31;
    sub_1D25650EC(v32, v26 + v34, type metadata accessor for PhotosPersonImage);
    (*(*(v33 - 8) + 56))(v26, 0, 1, v33);
    v35 = v31;
LABEL_19:
    v36 = v23;
    v37 = v55;
    sub_1D22EC9BC(v26, v55, &qword_1EC6DDD40);
    v38 = v36;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(v36);
    v40 = (*(*(v39 - 8) + 48))(v37, 1, v39);
    v59 = v40 == 1;
    if (v40 == 1)
    {
      return v59;
    }

    v41 = v7;
    v42 = v4;
    v43 = *v37;
    sub_1D25650EC(v37 + *(v39 + 48), v10, type metadata accessor for PhotosPersonImage);
    v44 = v54;
    v45 = sub_1D25D0720(v43);
    v47 = v46;

    if ((v47 & 1) == 0)
    {
      goto LABEL_32;
    }

    v48 = *(v44 + 56);
    v4 = v42;
    v7 = v41;
    sub_1D2565084(v48 + *(v42 + 72) * v45, v41, type metadata accessor for PhotosPersonImage);
    v23 = v38;
    if ((*v41 != *v10 || *(v41 + 8) != *(v10 + 1)) && (sub_1D2879618() & 1) == 0)
    {
LABEL_31:
      sub_1D2565154(v41, type metadata accessor for PhotosPersonImage);
LABEL_32:
      sub_1D2565154(v10, type metadata accessor for PhotosPersonImage);
      return 0;
    }

    v49 = v10[24];
    if (*(v41 + 24))
    {
      if (!v10[24])
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (*(v41 + 16) != *(v10 + 2))
      {
        v49 = 1;
      }

      if (v49)
      {
        goto LABEL_31;
      }
    }

    type metadata accessor for PlaygroundImage();
    v24 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D2565154(v41, type metadata accessor for PhotosPersonImage);
    result = sub_1D2565154(v10, type metadata accessor for PhotosPersonImage);
    v22 = v53;
    v21 = v60;
    if ((v24 & 1) == 0)
    {
      return v59;
    }
  }

  if (v22 <= v17 + 1)
  {
    v27 = v17 + 1;
  }

  else
  {
    v27 = v22;
  }

  v28 = v27 - 1;
  v26 = v56;
  while (1)
  {
    v29 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v29 >= v22)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(v23);
      (*(*(v50 - 8) + 56))(v26, 1, 1, v50);
      v60 = 0;
      v17 = v28;
      goto LABEL_19;
    }

    v30 = *(v51 + 8 * v29);
    ++v17;
    if (v30)
    {
      v60 = (v30 - 1) & v30;
      v25 = __clz(__rbit64(v30)) | (v29 << 6);
      v17 = v29;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}