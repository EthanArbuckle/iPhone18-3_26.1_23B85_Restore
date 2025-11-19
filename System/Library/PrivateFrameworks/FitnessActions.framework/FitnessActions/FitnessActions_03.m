__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E5BA3A08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5BA3A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5BA3A94(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1E5BA3AD0()
{
  result = qword_1ED03F878;
  if (!qword_1ED03F878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F878);
  }

  return result;
}

uint64_t sub_1E5BA3B24(uint64_t a1, uint64_t a2)
{
  sub_1E5BA0F18(a1, v13);
  sub_1E5BA0F18(a2, &v15);
  if (!v14)
  {
    sub_1E5BA0F18(v13, v11);
    if (!v19)
    {
LABEL_6:
      v8 = v15;
      v9 = v16;
      v10 = v17;
      v3 = MEMORY[0x1E6937980](v11, &v8);
      sub_1E5B6E230(&v8);
      sub_1E5B6E230(v11);
      goto LABEL_10;
    }

LABEL_11:
    sub_1E5B6E230(v11);
    sub_1E5B5F804(v13, &qword_1ED03F880, &qword_1E5BFE3F0);
LABEL_12:
    v3 = 0;
    return v3 & 1;
  }

  if (v14 == 1)
  {
    sub_1E5BA0F18(v13, v11);
    if (v19 != 1)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1E5BA0F18(v13, v11);
  if (v19 != 2)
  {
    goto LABEL_11;
  }

  v4 = v12;
  v5 = v18;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v6 = MEMORY[0x1E6937980](v11, &v8);
  sub_1E5B6E230(&v8);
  sub_1E5B6E230(v11);
  if ((v6 & 1) == 0)
  {
    sub_1E5BA0FA4(v13);
    goto LABEL_12;
  }

  v3 = v4 == v5;
LABEL_10:
  sub_1E5BA0FA4(v13);
  return v3 & 1;
}

__n128 ViewStackButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t ViewStackButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, void **a3, char a4)
{
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E8E0, &qword_1E5BF9580);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - v12;
  v15 = *v4;
  v14 = v4[1];
  v16 = v4[3];
  v41 = v4[2];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
  v18 = v17[16];
  v19 = v17[20];
  v42 = v17[12];
  v43 = v19;
  v20 = v17[24];
  if (a4)
  {
    v21 = &v11[v20];
    v46 = 1;
    sub_1E5BA4130();
    sub_1E5BF7254();
    v22 = *MEMORY[0x1E6999B50];
    v23 = sub_1E5BF6E24();
    (*(*(v23 - 8) + 104))(&v11[v18], v22, v23);
    v24 = swift_allocObject();
    v24[2] = v15;
    v24[3] = v14;
    v24[4] = v41;
    v24[5] = v16;
    *v21 = &unk_1E5BFE418;
    *(v21 + 1) = v24;

    sub_1E5BF7094();
    v25 = *MEMORY[0x1E6999B48];
    v26 = sub_1E5BF6E14();
    (*(*(v26 - 8) + 104))(&v11[v43], v25, v26);
    (*(v7 + 104))(v11, *MEMORY[0x1E6999AD8], v6);
    v27 = v44;
    v28 = *v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1E5B71730(0, v28[2] + 1, 1, v28);
    }

    v30 = v28[2];
    v29 = v28[3];
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v28 = sub_1E5B71730(v29 > 1, v30 + 1, 1, v28);
    }

    v13 = v11;
  }

  else
  {
    v32 = &v13[v20];
    v45 = 0;
    sub_1E5BA4130();
    sub_1E5BF7254();
    v33 = *MEMORY[0x1E6999B50];
    v34 = sub_1E5BF6E24();
    (*(*(v34 - 8) + 104))(&v13[v18], v33, v34);
    v35 = swift_allocObject();
    v35[2] = v15;
    v35[3] = v14;
    v35[4] = v41;
    v35[5] = v16;
    *v32 = &unk_1E5BFE428;
    *(v32 + 1) = v35;

    sub_1E5BF7094();
    v36 = *MEMORY[0x1E6999B48];
    v37 = sub_1E5BF6E14();
    (*(*(v37 - 8) + 104))(&v13[v43], v36, v37);
    (*(v7 + 104))(v13, *MEMORY[0x1E6999AD8], v6);
    v27 = v44;
    v28 = *v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1E5B71730(0, v28[2] + 1, 1, v28);
    }

    v30 = v28[2];
    v38 = v28[3];
    v31 = v30 + 1;
    if (v30 >= v38 >> 1)
    {
      v28 = sub_1E5B71730(v38 > 1, v30 + 1, 1, v28);
    }
  }

  v28[2] = v31;
  result = (*(v7 + 32))(v28 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v13, v6);
  *v27 = v28;
  return result;
}

unint64_t sub_1E5BA4130()
{
  result = qword_1ED03F898;
  if (!qword_1ED03F898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F898);
  }

  return result;
}

uint64_t sub_1E5BA4184(uint64_t a1, int *a2)
{
  v2[2] = sub_1E5BF7084();
  v2[3] = sub_1E5BF7074();
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6F688;

  return v7();
}

uint64_t sub_1E5BA4294(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1E5BF7084();
  v4[3] = sub_1E5BF7074();
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1E5B79670;

  return v9();
}

uint64_t sub_1E5BA43A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5B6D9A0;

  return sub_1E5BA4294(a1, v4, v5, v7);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1E5BA44AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5B6E314;

  return sub_1E5BA4184(a1, v4);
}

unint64_t sub_1E5BA456C()
{
  result = qword_1ED03F8A0;
  if (!qword_1ED03F8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8A0);
  }

  return result;
}

unint64_t sub_1E5BA45C4()
{
  result = qword_1ED03F8A8;
  if (!qword_1ED03F8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8A8);
  }

  return result;
}

unint64_t sub_1E5BA461C()
{
  result = qword_1ED03F1C8;
  if (!qword_1ED03F1C8)
  {
    type metadata accessor for ViewStackButtonState();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F1C8);
  }

  return result;
}

unint64_t sub_1E5BA4698()
{
  result = qword_1ED03F8B0;
  if (!qword_1ED03F8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8B0);
  }

  return result;
}

uint64_t StartWorkoutButtonContent.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

__n128 StartWorkoutButton.init(store:labelContent:layout:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  result = *a4;
  v12 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *a5 = sub_1E5B62F34;
  *(a5 + 8) = v10;
  *(a5 + 16) = 0;
  *(a5 + 17) = v9;
  *(a5 + 40) = v12;
  *(a5 + 56) = *(a4 + 32);
  return result;
}

uint64_t sub_1E5BA4800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E5BF64B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 17);
  v9 = *a1;
  v10 = a1[1];
  v11 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v12 = sub_1E5B99EA8(&v17, v8);
  v14 = v13;
  result = (*(v5 + 8))(v8, v4);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1E5BA49A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5BA49E4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v59 = a3;
  v62 = a2;
  v66 = a1;
  v73 = a4;
  v74 = sub_1E5BF6EE4();
  v72 = *(v74 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5BF6E84();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E5BF6EA4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6D8, &qword_1E5BFD4B8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v17 = *(v16 - 8);
  v63 = v16;
  v64 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v51 - v19;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F920, &qword_1E5BFE5D0);
  v70 = *(v68 - 8);
  v20 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v68);
  v61 = &v51 - v21;
  v22 = sub_1E5BF64B4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v4;
  LOBYTE(v78[0]) = *(v4 + 17);
  v27 = *v4;
  v57 = *(v4 + 8);
  v58 = v27;
  v56 = *(v4 + 16);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  v54 = sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v28 = v59;
  v29 = v62;
  v30 = WorkoutMediaType.localizedTitle(labelContent:rawActivityType:locale:)(v78, v59, v26, v62);
  v32 = v31;
  v53 = v31;
  (*(v23 + 8))(v26, v22);
  sub_1E5BA6B74(v52, v78);
  v33 = swift_allocObject();
  v34 = v78[1];
  *(v33 + 16) = v78[0];
  *(v33 + 32) = v34;
  v35 = v78[3];
  *(v33 + 48) = v78[2];
  *(v33 + 64) = v35;
  *(v33 + 80) = v28;
  v75 = v30;
  v76 = v32;
  v77 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
  v36 = v60;
  sub_1E5BF6C84();
  v37 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
  v38 = v61;
  v39 = v63;
  sub_1E5BF69F4();
  v40 = v39;
  (*(v64 + 8))(v36, v39);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v41 = v66;
  sub_1E5BF6E94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6E0, &qword_1E5BFD4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E5BFE550;
  *(inited + 32) = 1701667182;
  v43 = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v30;
  *(inited + 56) = v53;
  *(inited + 72) = v43;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = 0x6E6F74747562;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = v43;
  *(inited + 128) = 0x6973736572706D69;
  v44 = MEMORY[0x1E69E6530];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = v41;
  *(inited + 168) = v44;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v43;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = 0x64695F737469;
  *(inited + 200) = 0xE600000000000000;
  sub_1E5BA717C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6E8, &qword_1E5BFD4E8);
  swift_arrayDestroy();
  sub_1E5BF6E74();
  v45 = MEMORY[0x1E69E7CC0];
  sub_1E5BA717C(MEMORY[0x1E69E7CC0]);
  sub_1E5BA717C(v45);
  v46 = v67;
  sub_1E5BF6EB4();
  v47 = sub_1E5BF6EC4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v48 = v71;
  sub_1E5BF6ED4();
  *&v78[0] = v40;
  *(&v78[0] + 1) = v37;
  swift_getOpaqueTypeConformance2();
  v49 = v68;
  sub_1E5BF6A04();
  (*(v72 + 8))(v48, v74);
  sub_1E5B5F804(v46, &qword_1ED03F6D8, &qword_1E5BFD4B8);
  return (*(v70 + 8))(v38, v49);
}

uint64_t sub_1E5BA51EC(uint64_t *a1, uint64_t a2)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v5 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v7 = (&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  *v7 = a2;
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5B9D664(v7);
}

uint64_t StartWorkoutButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8B8, &qword_1E5BFE560);
  v3 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v20 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8C0, &unk_1E5BFE568);
  v6 = *(v22 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v9 = &v20 - v8;
  sub_1E5BA55F8(v1, v5);
  v10 = *v1;
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (v24[0])
  {
    v13 = 0;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v13 = sub_1E5BF6B94();
  }

  *&v24[0] = v13;
  sub_1E5BA6738();
  sub_1E5B9898C();
  sub_1E5BF6A44();

  sub_1E5B5F804(v5, &qword_1ED03F8B8, &qword_1E5BFE560);
  sub_1E5BA6B74(v2, v24);
  v14 = swift_allocObject();
  v15 = v24[1];
  *(v14 + 1) = v24[0];
  *(v14 + 2) = v15;
  v16 = v24[3];
  *(v14 + 3) = v24[2];
  *(v14 + 4) = v16;
  v17 = v23;
  (*(v6 + 32))(v23, v9, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F928, &qword_1E5BFE5D8);
  v19 = (v17 + *(result + 36));
  *v19 = sub_1E5BA6BAC;
  v19[1] = v14;
  v19[2] = 0;
  v19[3] = 0;
  return result;
}

uint64_t sub_1E5BA55F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F918, &qword_1E5BFE5C8);
  v79 = *(v85 - 8);
  v3 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v78 = &v74 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F940, &qword_1E5BFE778);
  v5 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v74 - v6;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F908, &unk_1E5BFE5B8);
  v7 = *(*(v86 - 8) + 64);
  MEMORY[0x1EEE9AC00](v86);
  v80 = (&v74 - v8);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8F8, &qword_1E5BFE5B0);
  v88 = *(v89 - 8);
  v9 = *(v88 + 64);
  v10 = MEMORY[0x1EEE9AC00](v89);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v84 = &v74 - v12;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F8E8, &qword_1E5BFE5A8);
  v13 = *(*(v94 - 8) + 64);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v74 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F948, &unk_1E5BFE780);
  v15 = *(*(v92 - 8) + 64);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v74 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v17 = *(v96 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v20 = &v74 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v74 - v23;
  v26 = *a1;
  v25 = *(a1 + 8);
  v91 = a1;
  v27 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  KeyPath = v25;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v29 = *(v24 + 1);
    v76 = *v24;
    v35 = *(v24 + 3);
    v75 = *(v24 + 2);
    v77 = v35;
    v31 = *(v24 + 4);
    v32 = v24[40];
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    EnumCaseMultiPayload = sub_1E5B5F804(v24, &qword_1ED03E950, &unk_1E5BF95F0);
LABEL_11:
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
    sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810);
    sub_1E5BF6C84();
    v60 = v96;
    (*(v17 + 16))(v93, v20, v96);
    swift_storeEnumTagMultiPayload();
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    sub_1E5BA6874();
    sub_1E5BF6864();
    return (*(v17 + 8))(v20, v60);
  }

  v29 = *(v24 + 1);
  v76 = *v24;
  v30 = *(v24 + 3);
  v75 = *(v24 + 2);
  v77 = v30;
  v31 = *(v24 + 4);
  v32 = v24[40];
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
  v34 = sub_1E5BF6464();
  (*(*(v34 - 8) + 8))(&v24[v33], v34);
LABEL_6:
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v36 = sub_1E5BEF624(v32, v105);

  if (v36)
  {
    v37 = v91;
    sub_1E5BA6B74(v91, &v105);
    sub_1E5BA6B74(v37, v104);
    sub_1E5B5F864(v37 + 24, &v98, &qword_1ED03F6A8, &qword_1E5BFD410);
    v38 = v96;
    if (*(&v99 + 1))
    {
      sub_1E5B98CE4(&v98, &v102);
      v39 = v103;
      v40 = __swift_project_boxed_opaque_existential_1(&v102, v103);
      v41 = *(*(v39 - 8) + 64);
      MEMORY[0x1EEE9AC00](v40);
      (*(v43 + 16))(&v74 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
      v44 = sub_1E5BF6D94();
      v45 = v80;
      *v80 = v44;
      v91 = *(v86 + 44);

      v97 = sub_1E5BA6E58(v31);
      KeyPath = swift_getKeyPath();
      sub_1E5BA6B74(v104, &v98);
      v46 = swift_allocObject();
      v47 = v99;
      *(v46 + 16) = v98;
      *(v46 + 32) = v47;
      v48 = v101;
      *(v46 + 48) = v100;
      *(v46 + 64) = v48;
      *(v46 + 80) = v76;
      *(v46 + 88) = v29;
      v74 = v29;
      v49 = v77;
      *(v46 + 96) = v75;
      *(v46 + 104) = v49;
      *(v46 + 112) = v31;
      *(v46 + 120) = v32;
      v50 = swift_allocObject();
      *(v50 + 16) = sub_1E5BA7344;
      *(v50 + 24) = v46;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B0, &qword_1E5BFD438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F950, &unk_1E5BFE800);
      sub_1E5B5FC8C(&qword_1EE2C6228, &qword_1ED03F6B0, &qword_1E5BFD438);
      v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F920, &qword_1E5BFE5D0);
      v52 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
      *&v98 = v38;
      *(&v98 + 1) = v52;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      *&v98 = v51;
      *(&v98 + 1) = OpaqueTypeConformance2;
      swift_getOpaqueTypeConformance2();
      sub_1E5BF6D44();

      sub_1E5B5F864(v45, v82, &qword_1ED03F908, &unk_1E5BFE5B8);
      swift_storeEnumTagMultiPayload();
      sub_1E5BA6984();
      sub_1E5BA6A3C();
      v54 = v83;
      sub_1E5BF6864();

      sub_1E5BA6FDC(v104);
      sub_1E5B5F804(v45, &qword_1ED03F908, &unk_1E5BFE5B8);
      __swift_destroy_boxed_opaque_existential_1(&v102);
    }

    else
    {
      v62 = v77;

      sub_1E5B5F804(&v98, &qword_1ED03F6A8, &qword_1E5BFD410);
      v102 = sub_1E5BA6E58(v31);
      swift_getKeyPath();
      sub_1E5BA6B74(&v105, &v98);
      v63 = swift_allocObject();
      v64 = v99;
      *(v63 + 16) = v98;
      *(v63 + 32) = v64;
      v65 = v101;
      *(v63 + 48) = v100;
      *(v63 + 64) = v65;
      *(v63 + 80) = v76;
      *(v63 + 88) = v29;
      *(v63 + 96) = v75;
      *(v63 + 104) = v62;
      *(v63 + 112) = v31;
      *(v63 + 120) = v32;
      v66 = swift_allocObject();
      *(v66 + 16) = sub_1E5BA6FB0;
      *(v66 + 24) = v63;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F6B0, &qword_1E5BFD438);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F950, &unk_1E5BFE800);
      sub_1E5B5FC8C(&qword_1EE2C6228, &qword_1ED03F6B0, &qword_1E5BFD438);
      v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F920, &qword_1E5BFE5D0);
      v68 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
      *&v98 = v38;
      *(&v98 + 1) = v68;
      v69 = swift_getOpaqueTypeConformance2();
      *&v98 = v67;
      *(&v98 + 1) = v69;
      swift_getOpaqueTypeConformance2();
      v70 = v78;
      sub_1E5BF6D44();
      v71 = v79;
      v72 = v85;
      (*(v79 + 16))(v82, v70, v85);
      swift_storeEnumTagMultiPayload();
      sub_1E5BA6984();
      sub_1E5BA6A3C();
      v54 = v83;
      sub_1E5BF6864();

      sub_1E5BA6FDC(v104);
      (*(v71 + 8))(v70, v72);
    }

    v73 = v84;
    sub_1E5B59378(v54, v84);
    sub_1E5BA6FDC(&v105);
    v57 = v90;
    sub_1E5B59378(v73, v90);
    v55 = 0;
    v56 = v93;
    v58 = v89;
    v59 = v88;
  }

  else
  {

    v55 = 1;
    v56 = v93;
    v57 = v90;
    v58 = v89;
    v59 = v88;
  }

  (*(v59 + 56))(v57, v55, 1, v58);
  sub_1E5B5F864(v57, v56, &qword_1ED03F8E8, &qword_1E5BFE5A8);
  swift_storeEnumTagMultiPayload();
  sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
  sub_1E5BA6874();
  sub_1E5BF6864();
  return sub_1E5B5F804(v57, &qword_1ED03F8E8, &qword_1E5BFE5A8);
}

uint64_t sub_1E5BA6614(uint64_t *a1)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v3 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5B9D664(v5);
}

unint64_t sub_1E5BA6738()
{
  result = qword_1ED03F8C8;
  if (!qword_1ED03F8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8B8, &qword_1E5BFE560);
    sub_1E5BA67BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8C8);
  }

  return result;
}

unint64_t sub_1E5BA67BC()
{
  result = qword_1ED03F8D0;
  if (!qword_1ED03F8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8D8, &unk_1E5BFE598);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    sub_1E5BA6874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8D0);
  }

  return result;
}

unint64_t sub_1E5BA6874()
{
  result = qword_1ED03F8E0;
  if (!qword_1ED03F8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8E8, &qword_1E5BFE5A8);
    sub_1E5BA68F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8E0);
  }

  return result;
}

unint64_t sub_1E5BA68F8()
{
  result = qword_1ED03F8F0;
  if (!qword_1ED03F8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8F8, &qword_1E5BFE5B0);
    sub_1E5BA6984();
    sub_1E5BA6A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F8F0);
  }

  return result;
}

unint64_t sub_1E5BA6984()
{
  result = qword_1ED03F900;
  if (!qword_1ED03F900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F908, &unk_1E5BFE5B8);
    sub_1E5B5FC8C(&qword_1EE2C63C8, &qword_1ED03F658, &qword_1E5BFD270);
    sub_1E5BA6A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F900);
  }

  return result;
}

unint64_t sub_1E5BA6A3C()
{
  result = qword_1ED03F910;
  if (!qword_1ED03F910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F918, &qword_1E5BFE5C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F920, &qword_1E5BFE5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ");
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F910);
  }

  return result;
}

unint64_t sub_1E5BA6BB8()
{
  result = qword_1ED03F930;
  if (!qword_1ED03F930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F930);
  }

  return result;
}

unint64_t sub_1E5BA6C38()
{
  result = qword_1ED03F938;
  if (!qword_1ED03F938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F928, &qword_1E5BFE5D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F8B8, &qword_1E5BFE560);
    sub_1E5BA6738();
    sub_1E5B9898C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F938);
  }

  return result;
}

unint64_t sub_1E5BA6D1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E5BF7444())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E5BA6DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(v3 + 40);
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  v7 = sub_1E5BF7504();

  return a3(a1, a2, v7);
}

uint64_t sub_1E5BA6E58(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F960, &qword_1E5BFE868);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[2 * v16 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v16);
          }

          v2[2] = 0;
        }

        v5 = (v15 + 16 * v16);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v18 = __OFSUB__(v3--, 1);
      if (v18)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v19 = v2[3];
  if (v19 < 2)
  {
    return v2;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v3);
  v21 = v20 - v3;
  if (!v18)
  {
    v2[2] = v21;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t objectdestroy_19Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1E5B5C0A8();
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  }

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_1E5BA70FC()
{
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v2 = *(v0 + 32);
  return sub_1E5BF6C24();
}

unint64_t sub_1E5BA717C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F958, &qword_1E5BFE860);
    v3 = sub_1E5BF72A4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5B5F864(v4, &v13, &qword_1ED03F6E8, &qword_1E5BFD4E8);
      v5 = v13;
      v6 = v14;
      result = sub_1E5BA6DD4(v13, v14, sub_1E5BA6D1C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E5BA72C0(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_1E5BA72C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1E5BA72D0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16) >= 3u;
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

unint64_t sub_1E5BA734C(char a1)
{
  result = 0x7369447472656C61;
  switch(a1)
  {
    case 1:
      result = 0x6570704177656976;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      v3 = 5;
      goto LABEL_11;
    case 4:
      result = 0xD000000000000023;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000020;
      break;
    case 7:
      result = 0xD00000000000001ELL;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      v3 = 9;
LABEL_11:
      result = v3 | 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x65764F7472617473;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0x726F577472617473;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E5BA7570(uint64_t a1)
{
  v2 = sub_1E5BAC7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA75AC(uint64_t a1)
{
  v2 = sub_1E5BAC7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA75E8(uint64_t a1)
{
  v2 = sub_1E5BAC468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7624(uint64_t a1)
{
  v2 = sub_1E5BAC468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7660(uint64_t a1)
{
  v2 = sub_1E5BAC564();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA769C(uint64_t a1)
{
  v2 = sub_1E5BAC564();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA76D8(uint64_t a1)
{
  v2 = sub_1E5BAC318();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7714(uint64_t a1)
{
  v2 = sub_1E5BAC318();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BADD98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BA778C(uint64_t a1)
{
  v2 = sub_1E5BAC270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA77C8(uint64_t a1)
{
  v2 = sub_1E5BAC270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7804(uint64_t a1)
{
  v2 = sub_1E5BAC4BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7840(uint64_t a1)
{
  v2 = sub_1E5BAC4BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5BA787C()
{
  v1 = 0x6954656D75736572;
  if (*v0 != 1)
  {
    v1 = 0x7669746341776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_1E5BA78EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BAE288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BA7914(uint64_t a1)
{
  v2 = sub_1E5BAC5B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7950(uint64_t a1)
{
  v2 = sub_1E5BAC5B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA798C(uint64_t a1)
{
  v2 = sub_1E5BAC3C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA79C8(uint64_t a1)
{
  v2 = sub_1E5BAC3C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7A04(uint64_t a1)
{
  v2 = sub_1E5BAC660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7A40(uint64_t a1)
{
  v2 = sub_1E5BAC660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E5BA7A7C()
{
  v1 = 0x6954656D75736572;
  if (*v0 != 1)
  {
    v1 = 0x7669746341776172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E5BA7AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BAE3BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BA7B14(uint64_t a1)
{
  v2 = sub_1E5BAC510();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7B50(uint64_t a1)
{
  v2 = sub_1E5BAC510();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7B8C(uint64_t a1)
{
  v2 = sub_1E5BAC6B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7BC8(uint64_t a1)
{
  v2 = sub_1E5BAC6B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7C04()
{
  v1 = 0x696669746E656469;
  v2 = 0x6954656D75736572;
  if (*v0 != 2)
  {
    v2 = 0x7669746341776172;
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

uint64_t sub_1E5BA7C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BAE4F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BA7CB4(uint64_t a1)
{
  v2 = sub_1E5BAC60C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7CF0(uint64_t a1)
{
  v2 = sub_1E5BAC60C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7D2C(uint64_t a1)
{
  v2 = sub_1E5BAC414();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7D68(uint64_t a1)
{
  v2 = sub_1E5BAC414();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7DA4(uint64_t a1)
{
  v2 = sub_1E5BAC36C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7DE0(uint64_t a1)
{
  v2 = sub_1E5BAC36C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7E1C(uint64_t a1)
{
  v2 = sub_1E5BAC708();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7E58(uint64_t a1)
{
  v2 = sub_1E5BAC708();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6954656D75736572 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BA7F80(uint64_t a1)
{
  v2 = sub_1E5BAC2C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA7FBC(uint64_t a1)
{
  v2 = sub_1E5BAC2C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BA7FF8(uint64_t a1)
{
  v2 = sub_1E5BAC75C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BA8034(uint64_t a1)
{
  v2 = sub_1E5BAC75C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StartWorkoutButtonAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F968, &qword_1E5BFE870);
  v155 = *(v2 - 8);
  v156 = v2;
  v3 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v154 = &v108 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F970, &qword_1E5BFE878);
  v152 = *(v5 - 8);
  v153 = v5;
  v6 = *(v152 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v147 = &v108 - v7;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F978, &qword_1E5BFE880);
  v148 = *(v150 - 8);
  v8 = *(v148 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v145 = &v108 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F980, &qword_1E5BFE888);
  v149 = *(v151 - 8);
  v10 = *(v149 + 64);
  MEMORY[0x1EEE9AC00](v151);
  v146 = &v108 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F988, &qword_1E5BFE890);
  v143 = *(v12 - 8);
  v144 = v12;
  v13 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v142 = &v108 - v14;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F990, &qword_1E5BFE898);
  v131 = *(v132 - 8);
  v15 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v108 - v16;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F998, &qword_1E5BFE8A0);
  v134 = *(v135 - 8);
  v17 = *(v134 + 64);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v108 - v18;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9A0, &qword_1E5BFE8A8);
  v138 = *(v140 - 8);
  v19 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v140);
  v137 = &v108 - v20;
  v141 = sub_1E5BF6464();
  v139 = *(v141 - 8);
  v21 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v136 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9A8, &qword_1E5BFE8B0);
  v122 = *(v123 - 8);
  v23 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v108 - v24;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9B0, &qword_1E5BFE8B8);
  v126 = *(v127 - 8);
  v25 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v124 = &v108 - v26;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9B8, &qword_1E5BFE8C0);
  v128 = *(v129 - 8);
  v27 = *(v128 + 64);
  MEMORY[0x1EEE9AC00](v129);
  v125 = &v108 - v28;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9C0, &qword_1E5BFE8C8);
  v119 = *(v120 - 8);
  v29 = *(v119 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v108 - v30;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9C8, &qword_1E5BFE8D0);
  v116 = *(v117 - 8);
  v31 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v117);
  v114 = &v108 - v32;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9D0, &qword_1E5BFE8D8);
  v113 = *(v115 - 8);
  v33 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v112 = &v108 - v34;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9D8, &qword_1E5BFE8E0);
  v110 = *(v111 - 8);
  v35 = *(v110 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v37 = &v108 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9E0, &qword_1E5BFE8E8);
  v109 = *(v38 - 8);
  v39 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v108 - v40;
  started = type metadata accessor for StartWorkoutButtonAction();
  v43 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v45 = (&v108 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F9E8, &unk_1E5BFE8F0);
  v47 = *(v46 - 8);
  v159 = v46;
  v160 = v47;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v108 - v49;
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BAC270();
  v158 = v50;
  sub_1E5BF7524();
  sub_1E5BA0EB4(v157, v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v89 = *v45;
      v88 = v45[1];
      v90 = v45[3];
      v157 = v45[2];
      v91 = v45[4];
      v92 = v45[5];
      v162 = 5;
      sub_1E5BAC60C();
      v93 = v125;
      v95 = v158;
      v94 = v159;
      sub_1E5BF7394();
      v162 = 0;
      v96 = v129;
      v97 = v161;
      sub_1E5BF73E4();
      if (v97)
      {
      }

      else
      {
        v161 = v92;

        v162 = 1;
        sub_1E5BF73E4();

        v162 = 2;
        sub_1E5BF7404();
        v162 = 3;
        sub_1E5BF7414();
      }

      (*(v128 + 8))(v93, v96);
      return (*(v160 + 8))(v95, v94);
    case 2u:
      v68 = *v45;
      v67 = v45[1];
      v69 = v45[2];
      v70 = v45[3];
      v162 = 6;
      sub_1E5BAC5B8();
      v71 = v124;
      v73 = v158;
      v72 = v159;
      sub_1E5BF7394();
      v162 = 0;
      v74 = v127;
      v75 = v161;
      sub_1E5BF73E4();

      if (!v75)
      {
        v162 = 1;
        sub_1E5BF7404();
        v162 = 2;
        sub_1E5BF7414();
      }

      (*(v126 + 8))(v71, v74);
      return (*(v160 + 8))(v73, v72);
    case 3u:
      v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F868, &unk_1E5BFE1B0);
      v79 = *(v45 + *(v78 + 48));
      v80 = *(v45 + *(v78 + 64));
      v81 = v139;
      v82 = v136;
      v83 = v141;
      (*(v139 + 32))();
      v162 = 8;
      sub_1E5BAC510();
      v84 = v137;
      v55 = v158;
      v54 = v159;
      sub_1E5BF7394();
      v162 = 0;
      sub_1E5BAC8B0(&qword_1EE2C7B00, MEMORY[0x1E6969530]);
      v85 = v140;
      v86 = v161;
      sub_1E5BF7424();
      if (!v86)
      {
        v162 = 1;
        sub_1E5BF7404();
        v162 = 2;
        sub_1E5BF7414();
      }

      (*(v138 + 8))(v84, v85);
      (*(v81 + 8))(v82, v83);
      return (*(v160 + 8))(v55, v54);
    case 4u:
      v62 = *v45;
      v63 = v45[1];
      v162 = 9;
      sub_1E5BAC4BC();
      v53 = v133;
      v55 = v158;
      v54 = v159;
      sub_1E5BF7394();
      v162 = 0;
      v56 = v135;
      v64 = v161;
      sub_1E5BF7404();
      if (v64)
      {
        v65 = v134;
      }

      else
      {
        v162 = 1;
        sub_1E5BF7414();
        v57 = &v163;
LABEL_33:
        v65 = *(v57 - 32);
      }

LABEL_35:
      (*(v65 + 8))(v53, v56);
      return (*(v160 + 8))(v55, v54);
    case 5u:
      v98 = *v45;
      v99 = v45[1];
      v162 = 11;
      sub_1E5BAC414();
      v53 = v142;
      v55 = v158;
      v54 = v159;
      sub_1E5BF7394();
      v162 = 0;
      v56 = v144;
      v100 = v161;
      sub_1E5BF7404();
      if (!v100)
      {
        v162 = 1;
        sub_1E5BF7414();
      }

      v65 = v143;
      goto LABEL_35;
    case 6u:
      v102 = *v45;
      v103 = v45[1];
      v162 = 12;
      sub_1E5BAC3C0();
      v53 = v146;
      v55 = v158;
      v54 = v159;
      sub_1E5BF7394();
      v162 = 0;
      v56 = v151;
      v104 = v161;
      sub_1E5BF7404();
      if (!v104)
      {
        v162 = 1;
        sub_1E5BF7414();
      }

      v65 = v149;
      goto LABEL_35;
    case 7u:
      v87 = *v45;
      v162 = 13;
      sub_1E5BAC36C();
      v53 = v145;
      v55 = v158;
      v54 = v159;
      sub_1E5BF7394();
      v56 = v150;
      sub_1E5BF7414();
      v65 = v148;
      goto LABEL_35;
    case 8u:
      v105 = *v45;
      v106 = v45[1];
      v162 = 15;
      sub_1E5BAC2C4();
      v53 = v154;
      v55 = v158;
      v54 = v159;
      sub_1E5BF7394();
      v162 = 0;
      v56 = v156;
      v107 = v161;
      sub_1E5BF7404();
      if (!v107)
      {
        v162 = 1;
        sub_1E5BF7414();
      }

      v65 = v155;
      goto LABEL_35;
    case 9u:
      v162 = 0;
      sub_1E5BAC7B0();
      v60 = v158;
      v59 = v159;
      sub_1E5BF7394();
      (*(v109 + 8))(v41, v38);
      return (*(v160 + 8))(v60, v59);
    case 0xAu:
      v162 = 1;
      sub_1E5BAC75C();
      v60 = v158;
      v59 = v159;
      sub_1E5BF7394();
      (*(v110 + 8))(v37, v111);
      return (*(v160 + 8))(v60, v59);
    case 0xBu:
      v162 = 3;
      sub_1E5BAC6B4();
      v61 = v114;
      v60 = v158;
      v59 = v159;
      sub_1E5BF7394();
      (*(v116 + 8))(v61, v117);
      return (*(v160 + 8))(v60, v59);
    case 0xCu:
      v162 = 4;
      sub_1E5BAC660();
      v66 = v118;
      v60 = v158;
      v59 = v159;
      sub_1E5BF7394();
      (*(v119 + 8))(v66, v120);
      return (*(v160 + 8))(v60, v59);
    case 0xDu:
      v162 = 7;
      sub_1E5BAC564();
      v101 = v121;
      v60 = v158;
      v59 = v159;
      sub_1E5BF7394();
      (*(v122 + 8))(v101, v123);
      return (*(v160 + 8))(v60, v59);
    case 0xEu:
      v162 = 10;
      sub_1E5BAC468();
      v58 = v130;
      v60 = v158;
      v59 = v159;
      sub_1E5BF7394();
      (*(v131 + 8))(v58, v132);
      return (*(v160 + 8))(v60, v59);
    case 0xFu:
      v162 = 14;
      sub_1E5BAC318();
      v77 = v147;
      v60 = v158;
      v59 = v159;
      sub_1E5BF7394();
      (*(v152 + 8))(v77, v153);
      return (*(v160 + 8))(v60, v59);
    default:
      v52 = *v45;
      v162 = 2;
      sub_1E5BAC708();
      v53 = v112;
      v55 = v158;
      v54 = v159;
      sub_1E5BF7394();
      v56 = v115;
      sub_1E5BF7414();
      v57 = &v145;
      goto LABEL_33;
  }
}

uint64_t StartWorkoutButtonAction.hash(into:)()
{
  v1 = sub_1E5BF6464();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutButtonAction();
  v7 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5BA0EB4(v0, v9);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v23 = *v9;
      v24 = *(v9 + 1);
      v25 = *(v9 + 2);
      v26 = *(v9 + 3);
      v16 = *(v9 + 4);
      v17 = *(v9 + 5);
      MEMORY[0x1E6937C10](5);
      sub_1E5BF6FE4();

      sub_1E5BF6FE4();
      goto LABEL_15;
    case 2u:
      v14 = *v9;
      v15 = *(v9 + 1);
      v16 = *(v9 + 2);
      v17 = *(v9 + 3);
      MEMORY[0x1E6937C10](6);
      sub_1E5BF6FE4();
LABEL_15:

      v27 = 0.0;
      if (v16 != 0.0)
      {
        v27 = v16;
      }

      MEMORY[0x1E6937C40](*&v27);
      v11 = v17;
      return MEMORY[0x1E6937C10](v11);
    case 3u:
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F868, &unk_1E5BFE1B0);
      v19 = *&v9[*(v18 + 48)];
      v20 = *&v9[*(v18 + 64)];
      (*(v2 + 32))(v5, v9, v1);
      MEMORY[0x1E6937C10](8);
      sub_1E5BAC8B0(&qword_1EE2C7AF8, MEMORY[0x1E6969530]);
      sub_1E5BF6EF4();
      v21 = 0.0;
      if (v19 != 0.0)
      {
        v21 = v19;
      }

      MEMORY[0x1E6937C40](*&v21);
      MEMORY[0x1E6937C10](v20);
      return (*(v2 + 8))(v5, v1);
    case 4u:
      v12 = *v9;
      v10 = *(v9 + 1);
      v13 = 9;
      goto LABEL_23;
    case 5u:
      v12 = *v9;
      v10 = *(v9 + 1);
      v13 = 11;
      goto LABEL_23;
    case 6u:
      v12 = *v9;
      v10 = *(v9 + 1);
      v13 = 12;
      goto LABEL_23;
    case 7u:
      v10 = *v9;
      MEMORY[0x1E6937C10](13);
      goto LABEL_26;
    case 8u:
      v12 = *v9;
      v10 = *(v9 + 1);
      v13 = 15;
LABEL_23:
      MEMORY[0x1E6937C10](v13);
      v28 = 0.0;
      if (v12 != 0.0)
      {
        v28 = v12;
      }

      MEMORY[0x1E6937C40](*&v28);
      goto LABEL_26;
    case 9u:
      v11 = 0;
      return MEMORY[0x1E6937C10](v11);
    case 0xAu:
      v11 = 1;
      return MEMORY[0x1E6937C10](v11);
    case 0xBu:
      v11 = 3;
      return MEMORY[0x1E6937C10](v11);
    case 0xCu:
      v11 = 4;
      return MEMORY[0x1E6937C10](v11);
    case 0xDu:
      v11 = 7;
      return MEMORY[0x1E6937C10](v11);
    case 0xEu:
      v11 = 10;
      return MEMORY[0x1E6937C10](v11);
    case 0xFu:
      v11 = 14;
      return MEMORY[0x1E6937C10](v11);
    default:
      v10 = *v9;
      MEMORY[0x1E6937C10](2);
LABEL_26:
      v11 = v10;
      return MEMORY[0x1E6937C10](v11);
  }
}

uint64_t StartWorkoutButtonAction.hashValue.getter()
{
  sub_1E5BF74B4();
  StartWorkoutButtonAction.hash(into:)();
  return sub_1E5BF7504();
}

uint64_t StartWorkoutButtonAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v243 = a2;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FA68, &qword_1E5BFE900);
  v228 = *(v227 - 8);
  v3 = *(v228 + 64);
  MEMORY[0x1EEE9AC00](v227);
  v250 = &v188 - v4;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FA70, &qword_1E5BFE908);
  v225 = *(v249 - 8);
  v5 = *(v225 + 64);
  MEMORY[0x1EEE9AC00](v249);
  v242 = &v188 - v6;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FA78, &qword_1E5BFE910);
  v222 = *(v224 - 8);
  v7 = *(v222 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v240 = &v188 - v8;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FA80, &qword_1E5BFE918);
  v223 = *(v226 - 8);
  v9 = *(v223 + 64);
  MEMORY[0x1EEE9AC00](v226);
  v241 = &v188 - v10;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FA88, &qword_1E5BFE920);
  v220 = *(v221 - 8);
  v11 = *(v220 + 64);
  MEMORY[0x1EEE9AC00](v221);
  v239 = &v188 - v12;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FA90, &qword_1E5BFE928);
  v214 = *(v215 - 8);
  v13 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v236 = &v188 - v14;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FA98, &qword_1E5BFE930);
  v216 = *(v217 - 8);
  v15 = *(v216 + 64);
  MEMORY[0x1EEE9AC00](v217);
  v237 = &v188 - v16;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAA0, &qword_1E5BFE938);
  v218 = *(v219 - 8);
  v17 = *(v218 + 64);
  MEMORY[0x1EEE9AC00](v219);
  v238 = &v188 - v18;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAA8, &qword_1E5BFE940);
  v209 = *(v210 - 8);
  v19 = *(v209 + 64);
  MEMORY[0x1EEE9AC00](v210);
  v233 = &v188 - v20;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAB0, &qword_1E5BFE948);
  v211 = *(v212 - 8);
  v21 = *(v211 + 64);
  MEMORY[0x1EEE9AC00](v212);
  v234 = &v188 - v22;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAB8, &qword_1E5BFE950);
  v229 = *(v213 - 8);
  v23 = *(v229 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v235 = &v188 - v24;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAC0, &qword_1E5BFE958);
  v207 = *(v208 - 8);
  v25 = *(v207 + 64);
  MEMORY[0x1EEE9AC00](v208);
  v248 = &v188 - v26;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAC8, &qword_1E5BFE960);
  v205 = *(v206 - 8);
  v27 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v206);
  v232 = &v188 - v28;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAD0, &qword_1E5BFE968);
  v204 = *(v203 - 8);
  v29 = *(v204 + 64);
  MEMORY[0x1EEE9AC00](v203);
  v231 = &v188 - v30;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAD8, &qword_1E5BFE970);
  v201 = *(v202 - 8);
  v31 = *(v201 + 64);
  MEMORY[0x1EEE9AC00](v202);
  v246 = &v188 - v32;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAE0, &qword_1E5BFE978);
  v199 = *(v200 - 8);
  v33 = *(v199 + 64);
  MEMORY[0x1EEE9AC00](v200);
  v230 = &v188 - v34;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FAE8, &unk_1E5BFE980);
  v245 = *(v247 - 8);
  v35 = *(v245 + 64);
  MEMORY[0x1EEE9AC00](v247);
  v37 = &v188 - v36;
  started = type metadata accessor for StartWorkoutButtonAction();
  v38 = *(*(started - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](started);
  v197 = (&v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = MEMORY[0x1EEE9AC00](v39);
  v198 = (&v188 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v196 = (&v188 - v44);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v195 = (&v188 - v46);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v194 = (&v188 - v48);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v188 - v50;
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = (&v188 - v53);
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = (&v188 - v56);
  v58 = MEMORY[0x1EEE9AC00](v55);
  v60 = (&v188 - v59);
  MEMORY[0x1EEE9AC00](v58);
  v62 = &v188 - v61;
  v63 = a1[3];
  v64 = a1[4];
  v253 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v63);
  sub_1E5BAC270();
  v251 = v37;
  v65 = v252;
  sub_1E5BF7514();
  if (v65)
  {
    goto LABEL_8;
  }

  v191 = v60;
  v190 = v54;
  v189 = v57;
  v66 = v246;
  v192 = v51;
  v67 = v248;
  v68 = v249;
  v69 = v250;
  v252 = 0;
  v193 = v62;
  v70 = v245;
  v71 = v247;
  v72 = v251;
  v73 = sub_1E5BF7374();
  v74 = (2 * *(v73 + 16)) | 1;
  v255 = v73;
  v256 = v73 + 32;
  v257 = 0;
  v258 = v74;
  v75 = sub_1E5B7E668();
  if (v257 != v258 >> 1)
  {
LABEL_6:
    v80 = v71;
    v81 = sub_1E5BF7284();
    swift_allocError();
    v82 = v72;
    v84 = v83;
    v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v84 = started;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v81 - 8) + 104))(v84, *MEMORY[0x1E69E6AF8], v81);
    swift_willThrow();
    v86 = *(v70 + 8);
    v87 = v82;
    v88 = v80;
LABEL_7:
    v86(v87, v88);
    swift_unknownObjectRelease();
LABEL_8:
    v89 = v253;
    return __swift_destroy_boxed_opaque_existential_1(v89);
  }

  switch(v75)
  {
    case 0:
      v254 = 0;
      sub_1E5BAC7B0();
      v76 = v230;
      v77 = v72;
      v78 = v252;
      sub_1E5BF72C4();
      if (v78)
      {
        goto LABEL_37;
      }

      (*(v199 + 8))(v76, v200);
      (*(v70 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v79 = v193;
      goto LABEL_42;
    case 1:
      v254 = 1;
      sub_1E5BAC75C();
      v115 = v66;
      v77 = v72;
      v116 = v252;
      sub_1E5BF72C4();
      if (v116)
      {
        goto LABEL_37;
      }

      (*(v201 + 8))(v115, v202);
      (*(v70 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v79 = v193;
      goto LABEL_42;
    case 2:
      v254 = 2;
      sub_1E5BAC708();
      v105 = v231;
      v102 = v72;
      v106 = v252;
      sub_1E5BF72C4();
      if (v106)
      {
        goto LABEL_46;
      }

      v107 = v71;
      v108 = v203;
      v150 = sub_1E5BF7354();
      (*(v204 + 8))(v105, v108);
      (*(v70 + 8))(v102, v107);
      swift_unknownObjectRelease();
      v143 = v191;
      *v191 = v150;
      goto LABEL_48;
    case 3:
      v254 = 3;
      sub_1E5BAC6B4();
      v111 = v232;
      v77 = v72;
      v112 = v252;
      sub_1E5BF72C4();
      if (v112)
      {
        goto LABEL_37;
      }

      (*(v205 + 8))(v111, v206);
      (*(v70 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v79 = v193;
      goto LABEL_42;
    case 4:
      v254 = 4;
      sub_1E5BAC660();
      v77 = v72;
      v97 = v252;
      sub_1E5BF72C4();
      if (v97)
      {
        goto LABEL_37;
      }

      (*(v207 + 8))(v67, v208);
      (*(v70 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v79 = v193;
      goto LABEL_42;
    case 5:
      v254 = 5;
      sub_1E5BAC60C();
      v117 = v235;
      v94 = v72;
      v118 = v252;
      sub_1E5BF72C4();
      if (v118)
      {
        goto LABEL_39;
      }

      v254 = 0;
      v119 = v213;
      v120 = v70;
      v155 = v71;
      v156 = sub_1E5BF7324();
      v158 = v157;
      v254 = 1;
      v173 = v117;
      v174 = v94;
      v252 = sub_1E5BF7324();
      v176 = v175;
      v254 = 2;
      sub_1E5BF7344();
      v250 = v184;
      v254 = 3;
      v249 = sub_1E5BF7354();
      (*(v229 + 8))(v173, v119);
      (*(v120 + 8))(v174, v155);
      swift_unknownObjectRelease();
      v143 = v189;
      *v189 = v156;
      v143[1] = v158;
      v143[2] = v252;
      v143[3] = v176;
      v143[4] = v250;
      v143[5] = v249;
      goto LABEL_48;
    case 6:
      v254 = 6;
      sub_1E5BAC5B8();
      v125 = v234;
      v77 = v72;
      v126 = v252;
      sub_1E5BF72C4();
      if (v126)
      {
        goto LABEL_37;
      }

      v254 = 0;
      v127 = v212;
      v128 = v70;
      v160 = v71;
      v161 = sub_1E5BF7324();
      v163 = v162;
      v254 = 1;
      sub_1E5BF7344();
      v164 = v211;
      v178 = v177;
      v254 = 2;
      v179 = sub_1E5BF7354();
      v185 = *(v164 + 8);
      v252 = v179;
      v185(v125, v127);
      (*(v128 + 8))(v77, v160);
      swift_unknownObjectRelease();
      v143 = v190;
      *v190 = v161;
      v143[1] = v163;
      v143[2] = v178;
      v143[3] = v252;
      goto LABEL_48;
    case 7:
      v254 = 7;
      sub_1E5BAC564();
      v113 = v233;
      v77 = v72;
      v114 = v252;
      sub_1E5BF72C4();
      if (v114)
      {
        goto LABEL_37;
      }

      (*(v209 + 8))(v113, v210);
      (*(v70 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v79 = v193;
      goto LABEL_42;
    case 8:
      v254 = 8;
      sub_1E5BAC510();
      v131 = v238;
      v94 = v72;
      v132 = v252;
      sub_1E5BF72C4();
      if (v132)
      {
        goto LABEL_39;
      }

      v135 = v71;
      sub_1E5BF6464();
      v254 = 0;
      sub_1E5BAC8B0(&qword_1ED03FAF0, MEMORY[0x1E6969530]);
      v136 = v192;
      v137 = v219;
      sub_1E5BF7364();
      v138 = v70;
      v254 = 1;
      sub_1E5BF7344();
      v165 = v218;
      v181 = v180;
      v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F868, &unk_1E5BFE1B0);
      *(v136 + *(v182 + 48)) = v181;
      v254 = 2;
      v183 = sub_1E5BF7354();
      v186 = *(v182 + 64);
      (*(v165 + 8))(v131, v137);
      (*(v138 + 8))(v251, v135);
      swift_unknownObjectRelease();
      *(v136 + v186) = v183;
      swift_storeEnumTagMultiPayload();
      v187 = v136;
      goto LABEL_49;
    case 9:
      v254 = 9;
      sub_1E5BAC4BC();
      v101 = v237;
      v102 = v72;
      v103 = v252;
      sub_1E5BF72C4();
      if (!v103)
      {
        v254 = 0;
        v104 = v217;
        sub_1E5BF7344();
        v149 = v148;
        v254 = 1;
        v166 = v71;
        v167 = sub_1E5BF7354();
        (*(v216 + 8))(v101, v104);
        (*(v70 + 8))(v72, v166);
        swift_unknownObjectRelease();
        v143 = v194;
        *v194 = v149;
        v143[1] = v167;
        goto LABEL_48;
      }

LABEL_46:
      v86 = *(v70 + 8);
      v87 = v102;
      goto LABEL_47;
    case 10:
      v254 = 10;
      sub_1E5BAC468();
      v129 = v236;
      v77 = v72;
      v130 = v252;
      sub_1E5BF72C4();
      if (v130)
      {
        goto LABEL_37;
      }

      (*(v214 + 8))(v129, v215);
      (*(v70 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v79 = v193;
      goto LABEL_42;
    case 11:
      v254 = 11;
      sub_1E5BAC414();
      v93 = v239;
      v94 = v72;
      v95 = v252;
      sub_1E5BF72C4();
      if (v95)
      {
        goto LABEL_39;
      }

      v254 = 0;
      v96 = v221;
      sub_1E5BF7344();
      v140 = v139;
      v254 = 1;
      v141 = v71;
      v142 = sub_1E5BF7354();
      (*(v220 + 8))(v93, v96);
      (*(v70 + 8))(v72, v141);
      swift_unknownObjectRelease();
      v143 = v195;
      *v195 = v140;
      v143[1] = v142;
      goto LABEL_48;
    case 12:
      v254 = 12;
      sub_1E5BAC3C0();
      v98 = v241;
      v94 = v72;
      v99 = v252;
      sub_1E5BF72C4();
      if (v99)
      {
        goto LABEL_39;
      }

      v254 = 0;
      v100 = v226;
      sub_1E5BF7344();
      v145 = v144;
      v254 = 1;
      v146 = v71;
      v147 = sub_1E5BF7354();
      (*(v223 + 8))(v98, v100);
      (*(v70 + 8))(v72, v146);
      swift_unknownObjectRelease();
      v143 = v196;
      *v196 = v145;
      v143[1] = v147;
      goto LABEL_48;
    case 13:
      v254 = 13;
      sub_1E5BAC36C();
      v121 = v240;
      v94 = v72;
      v122 = v252;
      sub_1E5BF72C4();
      if (v122)
      {
LABEL_39:
        v86 = *(v70 + 8);
        v87 = v94;
        goto LABEL_47;
      }

      v123 = v71;
      v124 = v224;
      v159 = sub_1E5BF7354();
      (*(v222 + 8))(v121, v124);
      (*(v70 + 8))(v94, v123);
      swift_unknownObjectRelease();
      v143 = v198;
      *v198 = v159;
LABEL_48:
      swift_storeEnumTagMultiPayload();
      v187 = v143;
LABEL_49:
      v79 = v193;
      sub_1E5BAC804(v187, v193);
      goto LABEL_43;
    case 14:
      v254 = 14;
      sub_1E5BAC318();
      v91 = v242;
      v77 = v72;
      v92 = v252;
      sub_1E5BF72C4();
      if (v92)
      {
LABEL_37:
        v86 = *(v70 + 8);
        v87 = v77;
LABEL_47:
        v88 = v71;
        goto LABEL_7;
      }

      (*(v225 + 8))(v91, v68);
      (*(v70 + 8))(v72, v71);
      swift_unknownObjectRelease();
      v79 = v193;
LABEL_42:
      swift_storeEnumTagMultiPayload();
LABEL_43:
      v171 = v253;
      v172 = v243;
      goto LABEL_44;
    case 15:
      v254 = 15;
      sub_1E5BAC2C4();
      v109 = v72;
      v110 = v252;
      sub_1E5BF72C4();
      if (v110)
      {
        (*(v70 + 8))(v72, v71);
        swift_unknownObjectRelease();
        v89 = v253;
        return __swift_destroy_boxed_opaque_existential_1(v89);
      }

      v254 = 0;
      v133 = v227;
      sub_1E5BF7344();
      v134 = v70;
      v151 = v133;
      v152 = v71;
      v154 = v153;
      v254 = 1;
      v168 = sub_1E5BF7354();
      (*(v228 + 8))(v69, v151);
      (*(v134 + 8))(v109, v152);
      swift_unknownObjectRelease();
      v169 = v197;
      *v197 = v154;
      v169[1] = v168;
      swift_storeEnumTagMultiPayload();
      v170 = v169;
      v79 = v193;
      sub_1E5BAC804(v170, v193);
      v171 = v253;
      v172 = v243;
LABEL_44:
      sub_1E5BAC804(v79, v172);
      result = __swift_destroy_boxed_opaque_existential_1(v171);
      break;
    default:
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_1E5BAB9C4()
{
  sub_1E5BF74B4();
  StartWorkoutButtonAction.hash(into:)();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BABA08()
{
  sub_1E5BF74B4();
  StartWorkoutButtonAction.hash(into:)();
  return sub_1E5BF7504();
}

uint64_t _s14FitnessActions24StartWorkoutButtonActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v104 = a1;
  v105 = a2;
  v2 = sub_1E5BF6464();
  v102 = *(v2 - 8);
  v103 = v2;
  v3 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v99 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for StartWorkoutButtonAction();
  v6 = *(*(started - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](started);
  v101 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v100 = (&v98 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v98 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v98 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v98 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v98 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v98 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v98 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = (&v98 - v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB60, &qword_1E5BFFBC8);
  v32 = *(*(v31 - 8) + 64);
  v33 = MEMORY[0x1EEE9AC00](v31 - 8);
  v35 = &v98 - v34;
  v36 = &v98 + *(v33 + 56) - v34;
  sub_1E5BA0EB4(v104, &v98 - v34);
  v104 = v36;
  sub_1E5BA0EB4(v105, v36);
  v105 = v35;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1E5BA0EB4(v105, v28);
      v73 = *v28;
      v72 = *(v28 + 1);
      v75 = *(v28 + 2);
      v74 = *(v28 + 3);
      v76 = *(v28 + 4);
      v77 = *(v28 + 5);
      v78 = v104;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        v37 = v105;
        goto LABEL_52;
      }

      v79 = *v78;
      v80 = *(v78 + 8);
      v82 = *(v78 + 16);
      v81 = *(v78 + 24);
      v83 = *(v78 + 32);
      v84 = *(v78 + 40);
      if (v73 == v79 && v72 == v80)
      {
      }

      else
      {
        v86 = sub_1E5BF7444();

        if ((v86 & 1) == 0)
        {

          sub_1E5B9D664(v105);
          return 0;
        }
      }

      v95 = v75 == v82 && v74 == v81;
      v96 = v105;
      if (v95)
      {
      }

      else
      {
        v97 = sub_1E5BF7444();

        if ((v97 & 1) == 0)
        {
LABEL_73:
          sub_1E5B9D664(v96);
          return 0;
        }
      }

      if (v76 == v83)
      {
        v93 = v77 == v84;
        v94 = v96;
        goto LABEL_61;
      }

      goto LABEL_73;
    case 2u:
      v37 = v105;
      sub_1E5BA0EB4(v105, v25);
      v47 = *v25;
      v46 = *(v25 + 1);
      v48 = *(v25 + 2);
      v49 = *(v25 + 3);
      v50 = v104;
      if (swift_getEnumCaseMultiPayload() != 2)
      {

        goto LABEL_52;
      }

      v51 = *v50;
      v52 = *(v50 + 8);
      v53 = *(v50 + 16);
      v54 = *(v50 + 24);
      if (v47 == v51 && v46 == v52)
      {
      }

      else
      {
        v56 = sub_1E5BF7444();

        if ((v56 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      if (v48 != v53)
      {
        goto LABEL_62;
      }

      v43 = v49 == v54;
      goto LABEL_57;
    case 3u:
      v37 = v105;
      sub_1E5BA0EB4(v105, v22);
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F868, &unk_1E5BFE1B0);
      v59 = *(v58 + 48);
      v60 = *&v22[v59];
      v61 = *(v58 + 64);
      v62 = *&v22[v61];
      v63 = v104;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        (*(v102 + 8))(v22, v103);
LABEL_52:
        sub_1E5BAE668(v37);
        return 0;
      }

      v64 = *(v63 + v59);
      v65 = *(v63 + v61);
      v66 = v102;
      v67 = v99;
      v68 = v63;
      v69 = v103;
      (*(v102 + 32))(v99, v68, v103);
      v70 = sub_1E5BF6434();
      v71 = *(v66 + 8);
      v71(v67, v69);
      v71(v22, v69);
      if ((v70 & 1) == 0 || v60 != v64)
      {
LABEL_62:
        sub_1E5B9D664(v37);
        return 0;
      }

      v43 = v62 == v65;
LABEL_57:
      v93 = v43;
      v94 = v37;
LABEL_61:
      sub_1E5B9D664(v94);
      return v93;
    case 4u:
      v37 = v105;
      sub_1E5BA0EB4(v105, v19);
      v41 = *(v19 + 1);
      v42 = v104;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_52;
      }

      if (*v19 != *v42)
      {
        goto LABEL_62;
      }

      v43 = v41 == *(v42 + 8);
      goto LABEL_57;
    case 5u:
      v37 = v105;
      sub_1E5BA0EB4(v105, v16);
      v87 = *(v16 + 1);
      v88 = v104;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_52;
      }

      v89 = *v16;
      goto LABEL_47;
    case 6u:
      v37 = v105;
      sub_1E5BA0EB4(v105, v13);
      v87 = *(v13 + 1);
      v88 = v104;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_52;
      }

      goto LABEL_46;
    case 7u:
      v37 = v105;
      v30 = v100;
      sub_1E5BA0EB4(v105, v100);
      v38 = v104;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_29;
      }

      goto LABEL_52;
    case 8u:
      v37 = v105;
      v13 = v101;
      sub_1E5BA0EB4(v105, v101);
      v87 = *(v13 + 1);
      v88 = v104;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_52;
      }

LABEL_46:
      v89 = *v13;
LABEL_47:
      if (v89 != *v88)
      {
        goto LABEL_62;
      }

      v43 = v87 == *(v88 + 8);
      goto LABEL_57;
    case 9u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v37 = v105;
      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    case 0xAu:
      v91 = swift_getEnumCaseMultiPayload();
      v37 = v105;
      if (v91 == 10)
      {
        goto LABEL_44;
      }

      goto LABEL_52;
    case 0xBu:
      v40 = swift_getEnumCaseMultiPayload();
      v37 = v105;
      if (v40 != 11)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    case 0xCu:
      v44 = swift_getEnumCaseMultiPayload();
      v37 = v105;
      if (v44 != 12)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    case 0xDu:
      v90 = swift_getEnumCaseMultiPayload();
      v37 = v105;
      if (v90 != 13)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    case 0xEu:
      v39 = swift_getEnumCaseMultiPayload();
      v37 = v105;
      if (v39 != 14)
      {
        goto LABEL_52;
      }

      goto LABEL_44;
    case 0xFu:
      v57 = swift_getEnumCaseMultiPayload();
      v37 = v105;
      if (v57 != 15)
      {
        goto LABEL_52;
      }

LABEL_44:
      sub_1E5B9D664(v37);
      return 1;
    default:
      v37 = v105;
      sub_1E5BA0EB4(v105, v30);
      v38 = v104;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_52;
      }

LABEL_29:
      v43 = *v30 == *v38;
      goto LABEL_57;
  }
}

uint64_t type metadata accessor for StartWorkoutButtonAction()
{
  result = qword_1EE2C6B08;
  if (!qword_1EE2C6B08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E5BAC270()
{
  result = qword_1EE2C6B80;
  if (!qword_1EE2C6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B80);
  }

  return result;
}

unint64_t sub_1E5BAC2C4()
{
  result = qword_1ED03F9F0;
  if (!qword_1ED03F9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F9F0);
  }

  return result;
}

unint64_t sub_1E5BAC318()
{
  result = qword_1ED03F9F8;
  if (!qword_1ED03F9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F9F8);
  }

  return result;
}

unint64_t sub_1E5BAC36C()
{
  result = qword_1ED03FA00;
  if (!qword_1ED03FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA00);
  }

  return result;
}

unint64_t sub_1E5BAC3C0()
{
  result = qword_1ED03FA08;
  if (!qword_1ED03FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA08);
  }

  return result;
}

unint64_t sub_1E5BAC414()
{
  result = qword_1ED03FA10;
  if (!qword_1ED03FA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA10);
  }

  return result;
}

unint64_t sub_1E5BAC468()
{
  result = qword_1ED03FA18;
  if (!qword_1ED03FA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA18);
  }

  return result;
}

unint64_t sub_1E5BAC4BC()
{
  result = qword_1ED03FA20;
  if (!qword_1ED03FA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA20);
  }

  return result;
}

unint64_t sub_1E5BAC510()
{
  result = qword_1ED03FA28;
  if (!qword_1ED03FA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA28);
  }

  return result;
}

unint64_t sub_1E5BAC564()
{
  result = qword_1ED03FA30;
  if (!qword_1ED03FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA30);
  }

  return result;
}

unint64_t sub_1E5BAC5B8()
{
  result = qword_1ED03FA38;
  if (!qword_1ED03FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA38);
  }

  return result;
}

unint64_t sub_1E5BAC60C()
{
  result = qword_1ED03FA40;
  if (!qword_1ED03FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA40);
  }

  return result;
}

unint64_t sub_1E5BAC660()
{
  result = qword_1ED03FA48;
  if (!qword_1ED03FA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA48);
  }

  return result;
}

unint64_t sub_1E5BAC6B4()
{
  result = qword_1ED03FA50;
  if (!qword_1ED03FA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA50);
  }

  return result;
}

unint64_t sub_1E5BAC708()
{
  result = qword_1ED03FA58;
  if (!qword_1ED03FA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA58);
  }

  return result;
}

unint64_t sub_1E5BAC75C()
{
  result = qword_1EE2C6B68;
  if (!qword_1EE2C6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B68);
  }

  return result;
}

unint64_t sub_1E5BAC7B0()
{
  result = qword_1ED03FA60;
  if (!qword_1ED03FA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FA60);
  }

  return result;
}

uint64_t sub_1E5BAC804(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1E5BAC8B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1E5BAC8F8()
{
  sub_1E5BAC9B4();
  if (v0 <= 0x3F)
  {
    sub_1E5BAC9E4(319);
    if (v1 <= 0x3F)
    {
      sub_1E5BACAE4();
      if (v2 <= 0x3F)
      {
        sub_1E5BACB50();
        if (v3 <= 0x3F)
        {
          sub_1E5BACBC4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E5BAC9B4()
{
  result = qword_1EE2C61F8;
  if (!qword_1EE2C61F8)
  {
    result = MEMORY[0x1E69E6810];
    atomic_store(MEMORY[0x1E69E6810], &qword_1EE2C61F8);
  }

  return result;
}

void sub_1E5BAC9E4(uint64_t a1)
{
  if (!qword_1EE2C6240)
  {
    MEMORY[0x1EEE9AC00](a1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EE2C6240);
    }
  }
}

void sub_1E5BACAE4()
{
  if (!qword_1EE2C6238)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2C6238);
    }
  }
}

void sub_1E5BACB50()
{
  if (!qword_1EE2C7B08)
  {
    sub_1E5BF6464();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2C7B08);
    }
  }
}

void sub_1E5BACBC4()
{
  if (!qword_1EE2C6218)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2C6218);
    }
  }
}

uint64_t getEnumTagSinglePayload for StartWorkoutButtonAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StartWorkoutButtonAction.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5BACE7C()
{
  result = qword_1ED03FB00;
  if (!qword_1ED03FB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB00);
  }

  return result;
}

unint64_t sub_1E5BACED4()
{
  result = qword_1ED03FB08;
  if (!qword_1ED03FB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB08);
  }

  return result;
}

unint64_t sub_1E5BACF2C()
{
  result = qword_1ED03FB10;
  if (!qword_1ED03FB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB10);
  }

  return result;
}

unint64_t sub_1E5BACF84()
{
  result = qword_1ED03FB18;
  if (!qword_1ED03FB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB18);
  }

  return result;
}

unint64_t sub_1E5BACFDC()
{
  result = qword_1ED03FB20;
  if (!qword_1ED03FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB20);
  }

  return result;
}

unint64_t sub_1E5BAD034()
{
  result = qword_1ED03FB28;
  if (!qword_1ED03FB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB28);
  }

  return result;
}

unint64_t sub_1E5BAD08C()
{
  result = qword_1ED03FB30;
  if (!qword_1ED03FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB30);
  }

  return result;
}

unint64_t sub_1E5BAD0E4()
{
  result = qword_1ED03FB38;
  if (!qword_1ED03FB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB38);
  }

  return result;
}

unint64_t sub_1E5BAD13C()
{
  result = qword_1ED03FB40;
  if (!qword_1ED03FB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB40);
  }

  return result;
}

unint64_t sub_1E5BAD194()
{
  result = qword_1ED03FB48;
  if (!qword_1ED03FB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB48);
  }

  return result;
}

unint64_t sub_1E5BAD1EC()
{
  result = qword_1ED03FB50;
  if (!qword_1ED03FB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB50);
  }

  return result;
}

unint64_t sub_1E5BAD244()
{
  result = qword_1ED03FB58;
  if (!qword_1ED03FB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FB58);
  }

  return result;
}

unint64_t sub_1E5BAD29C()
{
  result = qword_1EE2C6B58;
  if (!qword_1EE2C6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B58);
  }

  return result;
}

unint64_t sub_1E5BAD2F4()
{
  result = qword_1EE2C6B60;
  if (!qword_1EE2C6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B60);
  }

  return result;
}

unint64_t sub_1E5BAD34C()
{
  result = qword_1EE2C6B88;
  if (!qword_1EE2C6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B88);
  }

  return result;
}

unint64_t sub_1E5BAD3A4()
{
  result = qword_1EE2C6B90;
  if (!qword_1EE2C6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B90);
  }

  return result;
}

unint64_t sub_1E5BAD3FC()
{
  result = qword_1EE2C6C18;
  if (!qword_1EE2C6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6C18);
  }

  return result;
}

unint64_t sub_1E5BAD454()
{
  result = qword_1EE2C6C20;
  if (!qword_1EE2C6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6C20);
  }

  return result;
}

unint64_t sub_1E5BAD4AC()
{
  result = qword_1EE2C6BD8;
  if (!qword_1EE2C6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BD8);
  }

  return result;
}

unint64_t sub_1E5BAD504()
{
  result = qword_1EE2C6BE0;
  if (!qword_1EE2C6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BE0);
  }

  return result;
}

unint64_t sub_1E5BAD55C()
{
  result = qword_1EE2C6C08;
  if (!qword_1EE2C6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6C08);
  }

  return result;
}

unint64_t sub_1E5BAD5B4()
{
  result = qword_1EE2C6C10;
  if (!qword_1EE2C6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6C10);
  }

  return result;
}

unint64_t sub_1E5BAD60C()
{
  result = qword_1EE2C6BC8;
  if (!qword_1EE2C6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BC8);
  }

  return result;
}

unint64_t sub_1E5BAD664()
{
  result = qword_1EE2C6BD0;
  if (!qword_1EE2C6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BD0);
  }

  return result;
}

unint64_t sub_1E5BAD6BC()
{
  result = qword_1EE2C6BF8;
  if (!qword_1EE2C6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BF8);
  }

  return result;
}

unint64_t sub_1E5BAD714()
{
  result = qword_1EE2C6C00;
  if (!qword_1EE2C6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6C00);
  }

  return result;
}

unint64_t sub_1E5BAD76C()
{
  result = qword_1EE2C6C28;
  if (!qword_1EE2C6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6C28);
  }

  return result;
}

unint64_t sub_1E5BAD7C4()
{
  result = qword_1EE2C6C30[0];
  if (!qword_1EE2C6C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6C30);
  }

  return result;
}

unint64_t sub_1E5BAD81C()
{
  result = qword_1EE2C6BE8;
  if (!qword_1EE2C6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BE8);
  }

  return result;
}

unint64_t sub_1E5BAD874()
{
  result = qword_1EE2C6BF0;
  if (!qword_1EE2C6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BF0);
  }

  return result;
}

unint64_t sub_1E5BAD8CC()
{
  result = qword_1EE2C6BB8;
  if (!qword_1EE2C6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BB8);
  }

  return result;
}

unint64_t sub_1E5BAD924()
{
  result = qword_1EE2C6BC0;
  if (!qword_1EE2C6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BC0);
  }

  return result;
}

unint64_t sub_1E5BAD97C()
{
  result = qword_1EE2C6B28;
  if (!qword_1EE2C6B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B28);
  }

  return result;
}

unint64_t sub_1E5BAD9D4()
{
  result = qword_1EE2C6B30;
  if (!qword_1EE2C6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B30);
  }

  return result;
}

unint64_t sub_1E5BADA2C()
{
  result = qword_1EE2C6B38;
  if (!qword_1EE2C6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B38);
  }

  return result;
}

unint64_t sub_1E5BADA84()
{
  result = qword_1EE2C6B40;
  if (!qword_1EE2C6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B40);
  }

  return result;
}

unint64_t sub_1E5BADADC()
{
  result = qword_1EE2C6BA8;
  if (!qword_1EE2C6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BA8);
  }

  return result;
}

unint64_t sub_1E5BADB34()
{
  result = qword_1EE2C6BB0;
  if (!qword_1EE2C6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BB0);
  }

  return result;
}

unint64_t sub_1E5BADB8C()
{
  result = qword_1EE2C6B48;
  if (!qword_1EE2C6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B48);
  }

  return result;
}

unint64_t sub_1E5BADBE4()
{
  result = qword_1EE2C6B50;
  if (!qword_1EE2C6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B50);
  }

  return result;
}

unint64_t sub_1E5BADC3C()
{
  result = qword_1EE2C6B98;
  if (!qword_1EE2C6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B98);
  }

  return result;
}

unint64_t sub_1E5BADC94()
{
  result = qword_1EE2C6BA0;
  if (!qword_1EE2C6BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6BA0);
  }

  return result;
}

unint64_t sub_1E5BADCEC()
{
  result = qword_1EE2C6B70;
  if (!qword_1EE2C6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B70);
  }

  return result;
}

unint64_t sub_1E5BADD44()
{
  result = qword_1EE2C6B78;
  if (!qword_1EE2C6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6B78);
  }

  return result;
}

uint64_t sub_1E5BADD98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7369447472656C61 && a2 == 0xEE0064657373696DLL;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570704177656976 && a2 == 0xEC00000064657261 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001E5C08030 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07BB0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E5C07B80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001E5C08050 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001E5C08080 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E5C080B0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001E5C080D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001E5C080F0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000025 && 0x80000001E5C08110 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C08140 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001E5C08160 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65764F7472617473 && a2 == 0xEF64657070615472 || (sub_1E5BF7444() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C08180 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x726F577472617473 && a2 == 0xEC00000074756F6BLL)
  {

    return 15;
  }

  else
  {
    v6 = sub_1E5BF7444();

    if (v6)
    {
      return 15;
    }

    else
    {
      return 16;
    }
  }
}

uint64_t sub_1E5BAE288(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000018 && 0x80000001E5C081C0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6954656D75736572 && a2 == 0xEA0000000000656DLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E5BAE3BC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C081A0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6954656D75736572 && a2 == 0xEA0000000000656DLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E5BAE4F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954656D75736572 && a2 == 0xEA0000000000656DLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E5BAE668(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB60, &qword_1E5BFFBC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DynamicStartWorkoutEnvironment.init(resolveDownloadStatus:resolveSampleContentSessionStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5BAE718()
{
  v1 = 0x6F65646976;
  v2 = 0x6157646564697567;
  if (*v0 != 2)
  {
    v2 = 0x697461746964656DLL;
  }

  if (*v0)
  {
    v1 = 0x7552646564697567;
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

uint64_t sub_1E5BAE798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BB51E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BAE7C0(uint64_t a1)
{
  v2 = sub_1E5BAEE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BAE7FC(uint64_t a1)
{
  v2 = sub_1E5BAEE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BAE838(uint64_t a1)
{
  v2 = sub_1E5BAEF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BAE874(uint64_t a1)
{
  v2 = sub_1E5BAEF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BAE8B0(uint64_t a1)
{
  v2 = sub_1E5BAEEFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BAE8EC(uint64_t a1)
{
  v2 = sub_1E5BAEEFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BAE928(uint64_t a1)
{
  v2 = sub_1E5BAEEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BAE964(uint64_t a1)
{
  v2 = sub_1E5BAEEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BAE9A0(uint64_t a1)
{
  v2 = sub_1E5BAEFA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BAE9DC(uint64_t a1)
{
  v2 = sub_1E5BAEFA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutMediaType.encode(to:)(void *a1, int a2)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB68, &qword_1E5BFFC20);
  v33 = *(v3 - 8);
  v34 = v3;
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v26 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB70, &qword_1E5BFFC28);
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB78, &qword_1E5BFFC30);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB80, &qword_1E5BFFC38);
  v26 = *(v13 - 8);
  v14 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB88, &qword_1E5BFFC40);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v26 - v20;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BAEE54();
  sub_1E5BF7524();
  if (v35 > 1u)
  {
    if (v35 == 2)
    {
      v38 = 2;
      sub_1E5BAEEFC();
      v12 = v29;
      sub_1E5BF7394();
      v24 = v30;
      v23 = v31;
    }

    else
    {
      v39 = 3;
      sub_1E5BAEEA8();
      v12 = v32;
      sub_1E5BF7394();
      v24 = v33;
      v23 = v34;
    }

    goto LABEL_8;
  }

  if (v35)
  {
    v37 = 1;
    sub_1E5BAEF50();
    sub_1E5BF7394();
    v24 = v27;
    v23 = v28;
LABEL_8:
    (*(v24 + 8))(v12, v23);
    return (*(v18 + 8))(v21, v17);
  }

  v36 = 0;
  sub_1E5BAEFA4();
  sub_1E5BF7394();
  (*(v26 + 8))(v16, v13);
  return (*(v18 + 8))(v21, v17);
}

unint64_t sub_1E5BAEE54()
{
  result = qword_1EE2C7558;
  if (!qword_1EE2C7558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7558);
  }

  return result;
}

unint64_t sub_1E5BAEEA8()
{
  result = qword_1EE2C74F8;
  if (!qword_1EE2C74F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C74F8);
  }

  return result;
}

unint64_t sub_1E5BAEEFC()
{
  result = qword_1EE2C7510;
  if (!qword_1EE2C7510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7510);
  }

  return result;
}

unint64_t sub_1E5BAEF50()
{
  result = qword_1EE2C7528;
  if (!qword_1EE2C7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7528);
  }

  return result;
}

unint64_t sub_1E5BAEFA4()
{
  result = qword_1EE2C7540;
  if (!qword_1EE2C7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7540);
  }

  return result;
}

uint64_t WorkoutMediaType.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1);
  return sub_1E5BF7504();
}

void *sub_1E5BAF090@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5BB535C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void __swiftcall StartWorkoutDetail.init(workoutIdentifier:sampleContentIdentifier:rawHealthKitActivityTypes:mediaType:)(FitnessActions::StartWorkoutDetail *__return_ptr retstr, Swift::String workoutIdentifier, Swift::String_optional sampleContentIdentifier, Swift::OpaquePointer rawHealthKitActivityTypes, FitnessActions::WorkoutMediaType mediaType)
{
  retstr->workoutIdentifier = workoutIdentifier;
  retstr->sampleContentIdentifier = sampleContentIdentifier;
  retstr->rawHealthKitActivityTypes = rawHealthKitActivityTypes;
  retstr->mediaType = mediaType;
}

uint64_t sub_1E5BAF100(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E5BAF15C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v6 = *v4++;

        v7 = sub_1E5BF70D4();

        if ((v7 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

unint64_t sub_1E5BAF248()
{
  v1 = 0x707954616964656DLL;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  v2 = 0xD000000000000011;
  if (*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E5BAF2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BB6F88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BAF2FC(uint64_t a1)
{
  v2 = sub_1E5BB599C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BAF338(uint64_t a1)
{
  v2 = sub_1E5BB599C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StartWorkoutDetail.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB90, &qword_1E5BFFC48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v18 = v1[3];
  v19 = v10;
  v17 = v1[4];
  HIDWORD(v16) = *(v1 + 40);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB599C();
  sub_1E5BF7524();
  v26 = 0;
  v12 = v20;
  sub_1E5BF73E4();
  if (!v12)
  {
    v14 = v17;
    v15 = BYTE4(v16);
    v25 = 1;
    sub_1E5BF73A4();
    v21 = v14;
    v24 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB98, &qword_1E5BFFC50);
    sub_1E5BB59F0(&qword_1EE2C6220);
    sub_1E5BF7424();
    v23 = v15;
    v22 = 3;
    sub_1E5B8D528();
    sub_1E5BF7424();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t StartWorkoutDetail.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1E5BF6FE4();
  sub_1E5BF74D4();
  if (v4)
  {
    sub_1E5BF6FE4();
  }

  MEMORY[0x1E6937C10](*(v5 + 16));
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = (v5 + 32);
    do
    {
      v9 = *v8++;
      MEMORY[0x1E6937C10](v9);
      --v7;
    }

    while (v7);
  }

  return MEMORY[0x1E6937C10](v6);
}

uint64_t StartWorkoutDetail.hashValue.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1E5BF74B4();
  StartWorkoutDetail.hash(into:)();
  return sub_1E5BF7504();
}

uint64_t StartWorkoutDetail.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FBA0, &qword_1E5BFFC58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB599C();
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v11 = sub_1E5BF7324();
  v24 = v12;
  v29 = 1;
  v13 = sub_1E5BF72E4();
  v23 = v14;
  v22 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FB98, &qword_1E5BFFC50);
  v28 = 2;
  sub_1E5BB59F0(&qword_1ED03FBA8);
  sub_1E5BF7364();
  v21 = v25;
  v26 = 3;
  sub_1E5B8D7C8();
  sub_1E5BF7364();
  (*(v6 + 8))(v9, v5);
  v16 = v27;
  v18 = v23;
  v17 = v24;
  *a2 = v11;
  *(a2 + 8) = v17;
  v19 = v21;
  *(a2 + 16) = v22;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19;
  *(a2 + 40) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5BAFA64()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1E5BF74B4();
  StartWorkoutDetail.hash(into:)();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BAFACC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 1);
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_1E5BF74B4();
  StartWorkoutDetail.hash(into:)();
  return sub_1E5BF7504();
}

BOOL static ResumeWorkoutConfirmation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5BF6474() & 1) != 0 && (v4 = type metadata accessor for ResumeWorkoutConfirmation(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1E5BAFB94()
{
  v1 = 0x7669746341776172;
  if (*v0 != 1)
  {
    v1 = 0x6954656D75736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_1E5BAFC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BB7100(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BAFC2C(uint64_t a1)
{
  v2 = sub_1E5BB5A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BAFC68(uint64_t a1)
{
  v2 = sub_1E5BB5A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResumeWorkoutConfirmation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FBB0, &qword_1E5BFFC60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB5A5C();
  sub_1E5BF7524();
  v15[15] = 0;
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
  sub_1E5BF7424();
  if (!v2)
  {
    v11 = type metadata accessor for ResumeWorkoutConfirmation(0);
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    sub_1E5BF7414();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1E5BF7404();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ResumeWorkoutConfirmation.hash(into:)()
{
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v1 = type metadata accessor for ResumeWorkoutConfirmation(0);
  MEMORY[0x1E6937C10](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x1E6937C40](*&v2);
}

uint64_t ResumeWorkoutConfirmation.hashValue.getter()
{
  sub_1E5BF74B4();
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v1 = type metadata accessor for ResumeWorkoutConfirmation(0);
  MEMORY[0x1E6937C10](*(v0 + *(v1 + 20)));
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v2);
  return sub_1E5BF7504();
}

uint64_t ResumeWorkoutConfirmation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_1E5BF6494();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FBC0, &qword_1E5BFFC68);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for ResumeWorkoutConfirmation(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB5A5C();
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v25;
  v31 = 0;
  sub_1E5B55CEC(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  v18 = v27;
  sub_1E5BF7364();
  v19 = *(v17 + 32);
  v20 = v28;
  v28 = v4;
  v19(v16, v20, v4);
  v30 = 1;
  *(v16 + *(v11 + 20)) = sub_1E5BF7354();
  v29 = 2;
  sub_1E5BF7344();
  v22 = v21;
  (*(v26 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v22;
  sub_1E5BB5B04(v16, v24, type metadata accessor for ResumeWorkoutConfirmation);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5BB5B6C(v16, type metadata accessor for ResumeWorkoutConfirmation);
}

uint64_t sub_1E5BB03DC(uint64_t a1, uint64_t a2)
{
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v2 + *(a2 + 20)));
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1E6937C40](*&v4);
}

uint64_t sub_1E5BB0490(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v2 + *(a2 + 20)));
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v4);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BB05C0()
{
  v1 = *v0;
  v2 = 0x7669746341776172;
  v3 = 0x6954656D75736572;
  v4 = 0x5474756F6B726F77;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
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

uint64_t sub_1E5BB0678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BB7234(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BB06AC(uint64_t a1)
{
  v2 = sub_1E5BB5AB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BB06E8(uint64_t a1)
{
  v2 = sub_1E5BB5AB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlannedWorkoutConfirmation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FBC8, &qword_1E5BFFC70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB5AB0();
  sub_1E5BF7524();
  v21[15] = 0;
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
  sub_1E5BF7424();
  if (!v2)
  {
    v11 = type metadata accessor for PlannedWorkoutConfirmation(0);
    v12 = *(v3 + v11[5]);
    v21[14] = 1;
    sub_1E5BF7414();
    v13 = *(v3 + v11[6]);
    v21[13] = 2;
    sub_1E5BF7404();
    v14 = (v3 + v11[7]);
    v15 = *v14;
    v16 = v14[1];
    v21[12] = 3;
    sub_1E5BF73E4();
    v17 = (v3 + v11[8]);
    v18 = *v17;
    v19 = v17[1];
    v21[11] = 4;
    sub_1E5BF73E4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t PlannedWorkoutConfirmation.hash(into:)()
{
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v1 = type metadata accessor for PlannedWorkoutConfirmation(0);
  MEMORY[0x1E6937C10](*(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v2);
  v3 = (v0 + v1[7]);
  v4 = *v3;
  v5 = v3[1];
  sub_1E5BF6FE4();
  v6 = (v0 + v1[8]);
  v7 = *v6;
  v8 = v6[1];

  return sub_1E5BF6FE4();
}

uint64_t PlannedWorkoutConfirmation.hashValue.getter()
{
  sub_1E5BF74B4();
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v1 = type metadata accessor for PlannedWorkoutConfirmation(0);
  MEMORY[0x1E6937C10](*(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v2);
  v3 = (v0 + v1[7]);
  v4 = *v3;
  v5 = v3[1];
  sub_1E5BF6FE4();
  v6 = (v0 + v1[8]);
  v7 = *v6;
  v8 = v6[1];
  sub_1E5BF6FE4();
  return sub_1E5BF7504();
}

uint64_t PlannedWorkoutConfirmation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1E5BF6494();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FBD8, &qword_1E5BFFC78);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - v9;
  v11 = type metadata accessor for PlannedWorkoutConfirmation(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB5AB0();
  v32 = v10;
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  v37 = 0;
  sub_1E5B55CEC(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  v17 = v29;
  sub_1E5BF7364();
  (*(v16 + 32))(v14, v17, v4);
  v36 = 1;
  *&v14[v11[5]] = sub_1E5BF7354();
  v35 = 2;
  sub_1E5BF7344();
  *&v14[v11[6]] = v18;
  v34 = 3;
  v19 = sub_1E5BF7324();
  v20 = &v14[v11[7]];
  *v20 = v19;
  v20[1] = v21;
  v33 = 4;
  v22 = sub_1E5BF7324();
  v24 = v23;
  (*(v30 + 8))(v32, v31);
  v25 = &v14[v11[8]];
  *v25 = v22;
  v25[1] = v24;
  sub_1E5BB5B04(v14, v27, type metadata accessor for PlannedWorkoutConfirmation);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5BB5B6C(v14, type metadata accessor for PlannedWorkoutConfirmation);
}

uint64_t sub_1E5BB0FC0(uint64_t a1, int *a2)
{
  sub_1E5BF74B4();
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v2 + a2[5]));
  v4 = *(v2 + a2[6]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v4);
  v5 = (v2 + a2[7]);
  v6 = *v5;
  v7 = v5[1];
  sub_1E5BF6FE4();
  v8 = (v2 + a2[8]);
  v9 = *v8;
  v10 = v8[1];
  sub_1E5BF6FE4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BB10B0()
{
  v23 = sub_1E5BF63E4();
  v0 = *(v23 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E5BF63C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5BF6424();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v22 - v18;
  v22[1] = *(type metadata accessor for FutureWorkoutConfirmation(0) + 28);
  MEMORY[0x1E6936AA0]();
  sub_1E5BF63B4();
  sub_1E5BF6394();
  (*(v5 + 8))(v8, v4);
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_1E5BF63D4();
  sub_1E5BF63A4();
  (*(v0 + 8))(v3, v23);
  v20(v16, v9);
  sub_1E5B55CEC(&qword_1ED03FCC0, MEMORY[0x1E6969328]);
  sub_1E5BF6454();
  v20(v19, v9);
  return v24;
}

uint64_t sub_1E5BB13AC()
{
  v0 = sub_1E5BF63C4();
  v33 = *(v0 - 8);
  v34 = v0;
  v1 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v32 = v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E5BF63E4();
  v30 = *(v3 - 8);
  v31 = v3;
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5BF6404();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5BF6424();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v29 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v29 - v24;
  v29[1] = *(type metadata accessor for FutureWorkoutConfirmation(0) + 28);
  MEMORY[0x1E6936AA0]();
  sub_1E5BF63F4();
  sub_1E5BF6414();
  (*(v8 + 8))(v11, v7);
  v26 = *(v13 + 8);
  v26(v16, v12);
  sub_1E5BF63D4();
  sub_1E5BF63A4();
  (*(v30 + 8))(v6, v31);
  v26(v19, v12);
  v27 = v32;
  sub_1E5BF63B4();
  sub_1E5BF6394();
  (*(v33 + 8))(v27, v34);
  v26(v22, v12);
  sub_1E5B55CEC(&qword_1ED03FCC0, MEMORY[0x1E6969328]);
  sub_1E5BF6454();
  v26(v25, v12);
  return v35;
}

uint64_t static FutureWorkoutConfirmation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for FutureWorkoutConfirmation(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];

  return sub_1E5BF6434();
}

unint64_t sub_1E5BB180C()
{
  v1 = 0x7669746341776172;
  v2 = 0x6954656D75736572;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_1E5BB1898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BB7404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BB18C0(uint64_t a1)
{
  v2 = sub_1E5BB5BCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BB18FC(uint64_t a1)
{
  v2 = sub_1E5BB5BCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FutureWorkoutConfirmation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FBE0, &qword_1E5BFFC80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB5BCC();
  sub_1E5BF7524();
  v16[15] = 0;
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
  sub_1E5BF7424();
  if (!v2)
  {
    v11 = type metadata accessor for FutureWorkoutConfirmation(0);
    v12 = *(v3 + v11[5]);
    v16[14] = 1;
    sub_1E5BF7414();
    v13 = *(v3 + v11[6]);
    v16[13] = 2;
    sub_1E5BF7404();
    v14 = v11[7];
    v16[12] = 3;
    sub_1E5BF6464();
    sub_1E5B55CEC(&qword_1EE2C7B00, MEMORY[0x1E6969530]);
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t FutureWorkoutConfirmation.hash(into:)()
{
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v1 = type metadata accessor for FutureWorkoutConfirmation(0);
  MEMORY[0x1E6937C10](*(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v2);
  v3 = v1[7];
  sub_1E5BF6464();
  sub_1E5B55CEC(&qword_1EE2C7AF8, MEMORY[0x1E6969530]);
  return sub_1E5BF6EF4();
}

uint64_t FutureWorkoutConfirmation.hashValue.getter()
{
  sub_1E5BF74B4();
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v1 = type metadata accessor for FutureWorkoutConfirmation(0);
  MEMORY[0x1E6937C10](*(v0 + v1[5]));
  v2 = *(v0 + v1[6]);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v2);
  v3 = v1[7];
  sub_1E5BF6464();
  sub_1E5B55CEC(&qword_1EE2C7AF8, MEMORY[0x1E6969530]);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t FutureWorkoutConfirmation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v32 = sub_1E5BF6464();
  v30 = *(v32 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E5BF6494();
  v33 = *(v6 - 8);
  v7 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v36 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FBF0, &unk_1E5BFFC88);
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for FutureWorkoutConfirmation(0);
  v14 = *(*(v13 - 1) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB5BCC();
  v37 = v12;
  v18 = v38;
  sub_1E5BF7514();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v5;
  v19 = v33;
  v42 = 0;
  sub_1E5B55CEC(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  sub_1E5BF7364();
  v20 = *(v19 + 32);
  v21 = v16;
  v20(v16, v36, v6);
  v41 = 1;
  *&v16[v13[5]] = sub_1E5BF7354();
  v40 = 2;
  sub_1E5BF7344();
  v22 = a1;
  v23 = v34;
  *&v21[v13[6]] = v24;
  v39 = 3;
  sub_1E5B55CEC(&qword_1ED03FAF0, MEMORY[0x1E6969530]);
  v36 = v21;
  v25 = v38;
  v26 = v32;
  sub_1E5BF7364();
  (*(v23 + 8))(v37, v35);
  v27 = v36;
  (*(v30 + 32))(&v36[v13[7]], v25, v26);
  sub_1E5BB5B04(v27, v31, type metadata accessor for FutureWorkoutConfirmation);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_1E5BB5B6C(v27, type metadata accessor for FutureWorkoutConfirmation);
}

uint64_t sub_1E5BB22E0(uint64_t a1, int *a2)
{
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v2 + a2[5]));
  v4 = *(v2 + a2[6]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v4);
  v5 = a2[7];
  sub_1E5BF6464();
  sub_1E5B55CEC(&qword_1EE2C7AF8, MEMORY[0x1E6969530]);
  return sub_1E5BF6EF4();
}

uint64_t sub_1E5BB23EC(uint64_t a1, int *a2)
{
  sub_1E5BF74B4();
  sub_1E5BF6494();
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  MEMORY[0x1E6937C10](*(v2 + a2[5]));
  v4 = *(v2 + a2[6]);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1E6937C40](*&v4);
  v5 = a2[7];
  sub_1E5BF6464();
  sub_1E5B55CEC(&qword_1EE2C7AF8, MEMORY[0x1E6969530]);
  sub_1E5BF6EF4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5BB2508(uint64_t a1, uint64_t a2, int *a3)
{
  if ((sub_1E5BF6474() & 1) == 0 || *(a1 + a3[5]) != *(a2 + a3[5]) || *(a1 + a3[6]) != *(a2 + a3[6]))
  {
    return 0;
  }

  v6 = a3[7];

  return sub_1E5BF6434();
}

uint64_t StartWorkoutButtonState.workoutIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StartWorkoutButtonState.init(workoutIdentifier:locale:allowedMediaTypes:presentationContextKey:isSidebarVisible:ongoingWorkoutAlert:resumeConfirmation:replaceScheduledWorkoutConfirmation:startFutureWorkoutConfirmation:detailLoadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  started = type metadata accessor for StartWorkoutButtonState(0);
  v20 = started[5];
  v21 = sub_1E5BF64B4();
  (*(*(v21 - 8) + 32))(&a9[v20], a3, v21);
  v22 = started[7];
  v23 = sub_1E5BF6494();
  (*(*(v23 - 8) + 32))(&a9[v22], a5, v23);
  *&a9[started[6]] = a4;
  a9[started[8]] = a6;
  sub_1E5B5F8D4(a7, &a9[started[9]], &qword_1ED03E5C0, &unk_1E5BF8A20);
  sub_1E5B5F8D4(a8, &a9[started[10]], &qword_1ED03E780, &qword_1E5BF9140);
  sub_1E5B5F8D4(a10, &a9[started[11]], &qword_1ED03E760, &qword_1E5BF9120);
  sub_1E5B5F8D4(a11, &a9[started[12]], &qword_1ED03E740, &qword_1E5BF9100);
  return sub_1E5B5F8D4(a12, &a9[started[13]], &qword_1ED03E950, &unk_1E5BF95F0);
}

unint64_t sub_1E5BB2BB8(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000023;
    v6 = 0xD00000000000001ELL;
    if (a1 != 8)
    {
      v6 = 0x6F4C6C6961746564;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 == 5)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x656C61636F6CLL;
    v2 = 0xD000000000000011;
    v3 = 0xD000000000000016;
    if (a1 != 3)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (!a1)
    {
      v1 = 0xD000000000000011;
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
}

uint64_t sub_1E5BB2D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BB7584(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BB2D44(uint64_t a1)
{
  v2 = sub_1E5BB5C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BB2D80(uint64_t a1)
{
  v2 = sub_1E5BB5C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StartWorkoutButtonState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FBF8, &qword_1E5BFFC98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB5C40();
  sub_1E5BF7524();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v24) = 0;
  sub_1E5BF73E4();
  if (!v2)
  {
    started = type metadata accessor for StartWorkoutButtonState(0);
    v14 = started[5];
    LOBYTE(v24) = 1;
    sub_1E5BF64B4();
    sub_1E5B55CEC(&qword_1ED03E5C8, MEMORY[0x1E6969770]);
    sub_1E5BF7424();
    v24 = *(v3 + started[6]);
    v23[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
    sub_1E5B8D750(&qword_1ED03F218, sub_1E5B8D528);
    sub_1E5BF7424();
    v15 = started[7];
    LOBYTE(v24) = 3;
    sub_1E5BF6494();
    sub_1E5B55CEC(&qword_1EE2C7AF0, MEMORY[0x1E69695A8]);
    sub_1E5BF7424();
    v16 = *(v3 + started[8]);
    LOBYTE(v24) = 4;
    sub_1E5BF73F4();
    v17 = started[9];
    LOBYTE(v24) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
    sub_1E5B5FC8C(&qword_1ED03E5E0, &qword_1ED03E5C0, &unk_1E5BF8A20);
    sub_1E5BF7424();
    v18 = started[10];
    LOBYTE(v24) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
    sub_1E5B5FC8C(&qword_1ED03FC08, &qword_1ED03E780, &qword_1E5BF9140);
    sub_1E5BF7424();
    v19 = started[11];
    LOBYTE(v24) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
    sub_1E5B5FC8C(&qword_1ED03FC10, &qword_1ED03E760, &qword_1E5BF9120);
    sub_1E5BF7424();
    v20 = started[12];
    LOBYTE(v24) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
    sub_1E5B5FC8C(&qword_1ED03FC18, &qword_1ED03E740, &qword_1E5BF9100);
    sub_1E5BF7424();
    v21 = started[13];
    LOBYTE(v24) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
    sub_1E5B8D81C(&qword_1ED03F220);
    sub_1E5BF7424();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t StartWorkoutButtonState.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = sub_1E5BF6494();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v35 = &v33 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v33 - v16;
  v18 = *v1;
  v19 = v1[1];
  sub_1E5BF6FE4();
  started = type metadata accessor for StartWorkoutButtonState(0);
  v21 = started[5];
  sub_1E5BF64B4();
  sub_1E5B55CEC(&qword_1ED03E5F0, MEMORY[0x1E6969770]);
  sub_1E5BF6EF4();
  sub_1E5B8D230(a1, *(v2 + started[6]));
  v22 = started[7];
  sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
  sub_1E5BF6EF4();
  v23 = *(v2 + started[8]);
  sub_1E5BF74D4();
  sub_1E5B5F864(v2 + started[9], v17, &qword_1ED03E5C0, &unk_1E5BF8A20);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    MEMORY[0x1E6937C10](0);
  }

  else
  {
    v24 = v17;
    v25 = v35;
    sub_1E5B5F8D4(v24, v35, &qword_1ED03E5E8, &unk_1E5BF9600);
    MEMORY[0x1E6937C10](1);
    sub_1E5B5F864(v25, v12, &qword_1ED03E5E8, &unk_1E5BF9600);
    v26 = v36;
    if ((*(v36 + 48))(v12, 1, v4) == 1)
    {
      sub_1E5BF74D4();
    }

    else
    {
      v27 = v34;
      (*(v26 + 32))(v34, v12, v4);
      sub_1E5BF74D4();
      sub_1E5BF6EF4();
      (*(v26 + 8))(v27, v4);
    }

    sub_1E5B5F804(v25, &qword_1ED03E5E8, &unk_1E5BF9600);
  }

  v28 = v2 + started[10];
  sub_1E5BB4B88(a1);
  v29 = v2 + started[11];
  sub_1E5BB47E8(a1);
  v30 = v2 + started[12];
  sub_1E5BB4430(a1);
  v31 = started[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B8D6FC();
  return sub_1E5BF6DF4();
}

uint64_t StartWorkoutButtonState.hashValue.getter()
{
  sub_1E5BF74B4();
  StartWorkoutButtonState.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t StartWorkoutButtonState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v3 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = v42 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  v5 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v50 = v42 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  v7 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52);
  v51 = v42 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  v9 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v42 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  v11 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v55 = v42 - v12;
  v13 = sub_1E5BF6494();
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v60 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E5BF64B4();
  v59 = *(v16 - 8);
  v17 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FC20, &qword_1E5BFFCA0);
  v61 = *(v20 - 8);
  v62 = v20;
  v21 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v42 - v22;
  started = type metadata accessor for StartWorkoutButtonState(0);
  v25 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v27 = (v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BB5C40();
  v63 = v23;
  v29 = v64;
  sub_1E5BF7514();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = v60;
  v44 = v16;
  v64 = a1;
  v45 = started;
  v43 = v27;
  LOBYTE(v66) = 0;
  v31 = sub_1E5BF7324();
  v32 = v43;
  *v43 = v31;
  v32[1] = v33;
  LOBYTE(v66) = 1;
  sub_1E5B55CEC(&qword_1ED03E600, MEMORY[0x1E6969770]);
  v34 = v44;
  sub_1E5BF7364();
  (*(v59 + 32))(v32 + v45[5], v19, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F210, &qword_1E5BFBBD0);
  v65 = 2;
  sub_1E5B8D750(&qword_1ED03F250, sub_1E5B8D7C8);
  sub_1E5BF7364();
  v42[1] = 0;
  *(v32 + v45[6]) = v66;
  LOBYTE(v66) = 3;
  sub_1E5B55CEC(&qword_1EE2C7AE0, MEMORY[0x1E69695A8]);
  v35 = v58;
  sub_1E5BF7364();
  (*(v57 + 32))(v32 + v45[7], v30, v35);
  LOBYTE(v66) = 4;
  *(v32 + v45[8]) = sub_1E5BF7334() & 1;
  LOBYTE(v66) = 5;
  sub_1E5B5FC8C(qword_1ED03E618, &qword_1ED03E5C0, &unk_1E5BF8A20);
  v36 = v55;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v36, v32 + v45[9], &qword_1ED03E5C0, &unk_1E5BF8A20);
  LOBYTE(v66) = 6;
  sub_1E5B5FC8C(&qword_1ED03FC28, &qword_1ED03E780, &qword_1E5BF9140);
  v37 = v53;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v37, v32 + v45[10], &qword_1ED03E780, &qword_1E5BF9140);
  LOBYTE(v66) = 7;
  sub_1E5B5FC8C(&qword_1ED03FC30, &qword_1ED03E760, &qword_1E5BF9120);
  v38 = v51;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v38, v32 + v45[11], &qword_1ED03E760, &qword_1E5BF9120);
  LOBYTE(v66) = 8;
  sub_1E5B5FC8C(&qword_1ED03FC38, &qword_1ED03E740, &qword_1E5BF9100);
  v39 = v50;
  sub_1E5BF7364();
  sub_1E5B5F8D4(v39, v32 + v45[12], &qword_1ED03E740, &qword_1E5BF9100);
  LOBYTE(v66) = 9;
  sub_1E5B8D81C(&qword_1ED03F260);
  sub_1E5BF7364();
  (*(v61 + 8))(v63, v62);
  v40 = v43;
  sub_1E5B5F8D4(v48, v43 + v45[13], &qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5BB5B04(v40, v46, type metadata accessor for StartWorkoutButtonState);
  __swift_destroy_boxed_opaque_existential_1(v64);
  return sub_1E5BB5B6C(v40, type metadata accessor for StartWorkoutButtonState);
}

uint64_t sub_1E5BB43AC()
{
  sub_1E5BF74B4();
  StartWorkoutButtonState.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BB43F0()
{
  sub_1E5BF74B4();
  StartWorkoutButtonState.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BB4430(uint64_t a1)
{
  v22[1] = a1;
  v22[0] = type metadata accessor for FutureWorkoutConfirmation(0);
  v2 = *(v22[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v22[0]);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E738, &unk_1E5BFE1C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E740, &qword_1E5BF9100);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v22 - v16;
  sub_1E5B5F864(v1, v22 - v16, &qword_1ED03E740, &qword_1E5BF9100);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  sub_1E5B5F8D4(v17, v13, &qword_1ED03E738, &unk_1E5BFE1C0);
  MEMORY[0x1E6937C10](1);
  sub_1E5B5F864(v13, v11, &qword_1ED03E738, &unk_1E5BFE1C0);
  v19 = v22[0];
  if ((*(v2 + 48))(v11, 1, v22[0]) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    sub_1E5BB78B0(v11, v5, type metadata accessor for FutureWorkoutConfirmation);
    sub_1E5BF74D4();
    sub_1E5BF6494();
    sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
    sub_1E5BF6EF4();
    MEMORY[0x1E6937C10](*&v5[v19[5]]);
    v20 = *&v5[v19[6]];
    if (v20 == 0.0)
    {
      v20 = 0.0;
    }

    MEMORY[0x1E6937C40](*&v20);
    v21 = v19[7];
    sub_1E5BF6464();
    sub_1E5B55CEC(&qword_1EE2C7AF8, MEMORY[0x1E6969530]);
    sub_1E5BF6EF4();
    sub_1E5BB5B6C(v5, type metadata accessor for FutureWorkoutConfirmation);
  }

  return sub_1E5B5F804(v13, &qword_1ED03E738, &unk_1E5BFE1C0);
}

uint64_t sub_1E5BB47E8(uint64_t a1)
{
  v27[1] = a1;
  v27[0] = type metadata accessor for PlannedWorkoutConfirmation(0);
  v2 = *(v27[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v27[0]);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v27 - v16;
  sub_1E5B5F864(v1, v27 - v16, &qword_1ED03E760, &qword_1E5BF9120);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  sub_1E5B5F8D4(v17, v13, &qword_1ED03E758, &unk_1E5BFB490);
  MEMORY[0x1E6937C10](1);
  sub_1E5B5F864(v13, v11, &qword_1ED03E758, &unk_1E5BFB490);
  v19 = v27[0];
  if ((*(v2 + 48))(v11, 1, v27[0]) == 1)
  {
    sub_1E5BF74D4();
    return sub_1E5B5F804(v13, &qword_1ED03E758, &unk_1E5BFB490);
  }

  else
  {
    sub_1E5BB78B0(v11, v5, type metadata accessor for PlannedWorkoutConfirmation);
    sub_1E5BF74D4();
    sub_1E5BF6494();
    sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
    sub_1E5BF6EF4();
    MEMORY[0x1E6937C10](*&v5[v19[5]]);
    v20 = *&v5[v19[6]];
    if (v20 == 0.0)
    {
      v20 = 0.0;
    }

    MEMORY[0x1E6937C40](*&v20);
    v21 = &v5[v19[7]];
    v22 = *v21;
    v23 = *(v21 + 1);
    sub_1E5BF6FE4();
    v24 = &v5[v19[8]];
    v25 = *v24;
    v26 = *(v24 + 1);
    sub_1E5BF6FE4();
    sub_1E5B5F804(v13, &qword_1ED03E758, &unk_1E5BFB490);
    return sub_1E5BB5B6C(v5, type metadata accessor for PlannedWorkoutConfirmation);
  }
}

uint64_t sub_1E5BB4B88(uint64_t a1)
{
  v21[1] = a1;
  v21[0] = type metadata accessor for ResumeWorkoutConfirmation(0);
  v2 = *(v21[0] - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v21[0]);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E778, &qword_1E5C00D60);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v21 - v16;
  sub_1E5B5F864(v1, v21 - v16, &qword_1ED03E780, &qword_1E5BF9140);
  if ((*(v7 + 48))(v17, 1, v6) == 1)
  {
    return MEMORY[0x1E6937C10](0);
  }

  sub_1E5B5F8D4(v17, v13, &qword_1ED03E778, &qword_1E5C00D60);
  MEMORY[0x1E6937C10](1);
  sub_1E5B5F864(v13, v11, &qword_1ED03E778, &qword_1E5C00D60);
  v19 = v21[0];
  if ((*(v2 + 48))(v11, 1, v21[0]) == 1)
  {
    sub_1E5BF74D4();
  }

  else
  {
    sub_1E5BB78B0(v11, v5, type metadata accessor for ResumeWorkoutConfirmation);
    sub_1E5BF74D4();
    sub_1E5BF6494();
    sub_1E5B55CEC(&qword_1EE2C7AE8, MEMORY[0x1E69695A8]);
    sub_1E5BF6EF4();
    MEMORY[0x1E6937C10](*&v5[*(v19 + 20)]);
    v20 = *&v5[*(v19 + 24)];
    if (v20 == 0.0)
    {
      v20 = 0.0;
    }

    MEMORY[0x1E6937C40](*&v20);
    sub_1E5BB5B6C(v5, type metadata accessor for ResumeWorkoutConfirmation);
  }

  return sub_1E5B5F804(v13, &qword_1ED03E778, &qword_1E5C00D60);
}

uint64_t _s14FitnessActions18StartWorkoutDetailV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_1E5BF7444() & 1) != 0)
  {
    if (v4)
    {
      if (v6 && (v2 == v7 && v4 == v6 || (sub_1E5BF7444() & 1) != 0))
      {
        return sub_1E5BAF100(v3, v8) & (v5 == v9);
      }
    }

    else if (!v6)
    {
      return sub_1E5BAF100(v3, v8) & (v5 == v9);
    }
  }

  return 0;
}

uint64_t _s14FitnessActions26PlannedWorkoutConfirmationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5BF6474() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PlannedWorkoutConfirmation(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v5 = v4[7];
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  if (v7 != *v8 || v6 != v8[1])
  {
    v10 = v4;
    v11 = sub_1E5BF7444();
    v4 = v10;
    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v4[8];
  v13 = *(a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  if (v13 == *v15 && v14 == v15[1])
  {
    return 1;
  }

  return sub_1E5BF7444();
}

uint64_t _s14FitnessActions23StartWorkoutButtonStateV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  started = type metadata accessor for StartWorkoutButtonState(0);
  if ((MEMORY[0x1E6936BF0](a1 + started[5], a2 + started[5]) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1E5BC38D8(*(a1 + started[6]), *(a2 + started[6])) & 1) == 0)
  {
    return 0;
  }

  v6 = started[7];
  if ((sub_1E5BF6474() & 1) == 0 || *(a1 + started[8]) != *(a2 + started[8]) || (sub_1E5B65C60(a1 + started[9], a2 + started[9]) & 1) == 0 || (sub_1E5B66224(a1 + started[10], a2 + started[10]) & 1) == 0 || (sub_1E5B66818(a1 + started[11], a2 + started[11]) & 1) == 0 || (sub_1E5B66E88(a1 + started[12], a2 + started[12]) & 1) == 0)
  {
    return 0;
  }

  v7 = started[13];
  sub_1E5B8DC2C();

  return sub_1E5BF6DE4();
}

uint64_t sub_1E5BB51E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F65646976 && a2 == 0xE500000000000000;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

void *sub_1E5BB535C(uint64_t *a1)
{
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FCC8, &qword_1E5C00BB0);
  v41 = *(v46 - 8);
  v2 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FCD0, &qword_1E5C00BB8);
  v43 = *(v47 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FCD8, &qword_1E5C00BC0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FCE0, &qword_1E5C00BC8);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03FCE8, &unk_1E5C00BD0);
  v15 = *(v14 - 8);
  v16 = v15[8];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_1E5BAEE54();
  v21 = v50;
  sub_1E5BF7514();
  if (v21)
  {
    goto LABEL_11;
  }

  v22 = v13;
  v39 = v10;
  v40 = 0;
  v23 = v48;
  v24 = v49;
  v50 = v15;
  v25 = v18;
  v26 = sub_1E5BF7374();
  v27 = (2 * *(v26 + 16)) | 1;
  v52 = v26;
  v53 = v26 + 32;
  v54 = 0;
  v55 = v27;
  v28 = sub_1E5B7FB10();
  if (v28 != 4 && v54 == v55 >> 1)
  {
    v15 = v28;
    if (v28 <= 1u)
    {
      if (v28)
      {
        v56 = 1;
        sub_1E5BAEF50();
        v36 = v40;
        sub_1E5BF72C4();
        if (!v36)
        {
          (*(v44 + 8))(v9, v45);
          goto LABEL_18;
        }
      }

      else
      {
        v56 = 0;
        sub_1E5BAEFA4();
        v29 = v40;
        sub_1E5BF72C4();
        if (!v29)
        {
          (*(v42 + 8))(v22, v39);
LABEL_18:
          (v50[1])(v18, v14);
LABEL_23:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v51);
          return v15;
        }
      }

      goto LABEL_9;
    }

    v34 = v50;
    if (v28 == 2)
    {
      v56 = 2;
      sub_1E5BAEEFC();
      v35 = v40;
      sub_1E5BF72C4();
      if (!v35)
      {
        (*(v43 + 8))(v23, v47);
LABEL_22:
        (v34[1])(v25, v14);
        goto LABEL_23;
      }
    }

    else
    {
      v56 = 3;
      sub_1E5BAEEA8();
      v37 = v40;
      sub_1E5BF72C4();
      if (!v37)
      {
        (*(v41 + 8))(v24, v46);
        goto LABEL_22;
      }
    }

    (v34[1])(v25, v14);
    goto LABEL_10;
  }

  v30 = sub_1E5BF7284();
  swift_allocError();
  v15 = v31;
  v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
  *v15 = &type metadata for WorkoutMediaType;
  sub_1E5BF72D4();
  sub_1E5BF7274();
  (*(*(v30 - 8) + 104))(v15, *MEMORY[0x1E69E6AF8], v30);
  swift_willThrow();
LABEL_9:
  (v50[1])(v18, v14);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v51);
  return v15;
}

unint64_t sub_1E5BB599C()
{
  result = qword_1EE2C7310[0];
  if (!qword_1EE2C7310[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C7310);
  }

  return result;
}

uint64_t sub_1E5BB59F0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03FB98, &qword_1E5BFFC50);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5BB5A5C()
{
  result = qword_1ED03FBB8;
  if (!qword_1ED03FBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FBB8);
  }

  return result;
}

unint64_t sub_1E5BB5AB0()
{
  result = qword_1ED03FBD0;
  if (!qword_1ED03FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FBD0);
  }

  return result;
}

uint64_t sub_1E5BB5B04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5BB5B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E5BB5BCC()
{
  result = qword_1ED03FBE8;
  if (!qword_1ED03FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FBE8);
  }

  return result;
}

unint64_t sub_1E5BB5C40()
{
  result = qword_1ED03FC00;
  if (!qword_1ED03FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC00);
  }

  return result;
}

unint64_t sub_1E5BB5CDC()
{
  result = qword_1EE2C74D0;
  if (!qword_1EE2C74D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C74D0);
  }

  return result;
}

uint64_t sub_1E5BB5D9C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1E5BB5DE4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E5BB5ED0()
{
  sub_1E5BF64B4();
  if (v0 <= 0x3F)
  {
    sub_1E5B8DBC4(319, &qword_1EE2C6210, sub_1E5B8DB70, &type metadata for WorkoutMediaType, MEMORY[0x1E69E64E8]);
    if (v1 <= 0x3F)
    {
      sub_1E5BF6494();
      if (v2 <= 0x3F)
      {
        sub_1E5B6A50C();
        if (v3 <= 0x3F)
        {
          sub_1E5BB606C();
          if (v4 <= 0x3F)
          {
            sub_1E5BB6170();
            if (v5 <= 0x3F)
            {
              sub_1E5BB6274();
              if (v6 <= 0x3F)
              {
                sub_1E5B8DBC4(319, &qword_1EE2C6278, sub_1E5B8DC2C, &type metadata for StartWorkoutDetail, MEMORY[0x1E6999B18]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E5BB606C()
{
  if (!qword_1EE2C7438)
  {
    type metadata accessor for ResumeWorkoutConfirmation(255);
    sub_1E5B55CEC(&qword_1EE2C68D0, type metadata accessor for ResumeWorkoutConfirmation);
    sub_1E5B55CEC(qword_1EE2C68E8, type metadata accessor for ResumeWorkoutConfirmation);
    sub_1E5B55CEC(&qword_1EE2C68E0, type metadata accessor for ResumeWorkoutConfirmation);
    v0 = type metadata accessor for ModalPresentation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C7438);
    }
  }
}

void sub_1E5BB6170()
{
  if (!qword_1EE2C7430)
  {
    type metadata accessor for PlannedWorkoutConfirmation(255);
    sub_1E5B55CEC(&qword_1EE2C6818, type metadata accessor for PlannedWorkoutConfirmation);
    sub_1E5B55CEC(qword_1EE2C6830, type metadata accessor for PlannedWorkoutConfirmation);
    sub_1E5B55CEC(&qword_1EE2C6828, type metadata accessor for PlannedWorkoutConfirmation);
    v0 = type metadata accessor for ModalPresentation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C7430);
    }
  }
}

void sub_1E5BB6274()
{
  if (!qword_1EE2C7440)
  {
    type metadata accessor for FutureWorkoutConfirmation(255);
    sub_1E5B55CEC(&qword_1EE2C6988, type metadata accessor for FutureWorkoutConfirmation);
    sub_1E5B55CEC(&qword_1EE2C69A0, type metadata accessor for FutureWorkoutConfirmation);
    sub_1E5B55CEC(&qword_1EE2C6998, type metadata accessor for FutureWorkoutConfirmation);
    v0 = type metadata accessor for ModalPresentation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C7440);
    }
  }
}

uint64_t getEnumTagSinglePayload for StartWorkoutButtonState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StartWorkoutButtonState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlannedWorkoutConfirmation.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlannedWorkoutConfirmation.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5BB669C()
{
  result = qword_1ED03FC50;
  if (!qword_1ED03FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC50);
  }

  return result;
}

unint64_t sub_1E5BB66F4()
{
  result = qword_1ED03FC58;
  if (!qword_1ED03FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC58);
  }

  return result;
}

unint64_t sub_1E5BB674C()
{
  result = qword_1ED03FC60;
  if (!qword_1ED03FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC60);
  }

  return result;
}

unint64_t sub_1E5BB67A4()
{
  result = qword_1ED03FC68;
  if (!qword_1ED03FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC68);
  }

  return result;
}

unint64_t sub_1E5BB67FC()
{
  result = qword_1ED03FC70;
  if (!qword_1ED03FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC70);
  }

  return result;
}

unint64_t sub_1E5BB6854()
{
  result = qword_1ED03FC78;
  if (!qword_1ED03FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC78);
  }

  return result;
}

unint64_t sub_1E5BB68AC()
{
  result = qword_1ED03FC80;
  if (!qword_1ED03FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC80);
  }

  return result;
}

unint64_t sub_1E5BB6904()
{
  result = qword_1ED03FC88;
  if (!qword_1ED03FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC88);
  }

  return result;
}

unint64_t sub_1E5BB695C()
{
  result = qword_1ED03FC90;
  if (!qword_1ED03FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC90);
  }

  return result;
}

unint64_t sub_1E5BB69B4()
{
  result = qword_1ED03FC98;
  if (!qword_1ED03FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FC98);
  }

  return result;
}

unint64_t sub_1E5BB6A0C()
{
  result = qword_1ED03FCA0;
  if (!qword_1ED03FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FCA0);
  }

  return result;
}

unint64_t sub_1E5BB6A64()
{
  result = qword_1ED03FCA8;
  if (!qword_1ED03FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FCA8);
  }

  return result;
}

unint64_t sub_1E5BB6ABC()
{
  result = qword_1ED03FCB0;
  if (!qword_1ED03FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FCB0);
  }

  return result;
}

unint64_t sub_1E5BB6B14()
{
  result = qword_1ED03FCB8;
  if (!qword_1ED03FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FCB8);
  }

  return result;
}

unint64_t sub_1E5BB6B6C()
{
  result = qword_1EE2C7300;
  if (!qword_1EE2C7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7300);
  }

  return result;
}

unint64_t sub_1E5BB6BC4()
{
  result = qword_1EE2C7308;
  if (!qword_1EE2C7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7308);
  }

  return result;
}

unint64_t sub_1E5BB6C1C()
{
  result = qword_1EE2C7530;
  if (!qword_1EE2C7530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7530);
  }

  return result;
}

unint64_t sub_1E5BB6C74()
{
  result = qword_1EE2C7538;
  if (!qword_1EE2C7538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7538);
  }

  return result;
}

unint64_t sub_1E5BB6CCC()
{
  result = qword_1EE2C7518;
  if (!qword_1EE2C7518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7518);
  }

  return result;
}

unint64_t sub_1E5BB6D24()
{
  result = qword_1EE2C7520;
  if (!qword_1EE2C7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7520);
  }

  return result;
}

unint64_t sub_1E5BB6D7C()
{
  result = qword_1EE2C7500;
  if (!qword_1EE2C7500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7500);
  }

  return result;
}

unint64_t sub_1E5BB6DD4()
{
  result = qword_1EE2C7508;
  if (!qword_1EE2C7508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7508);
  }

  return result;
}

unint64_t sub_1E5BB6E2C()
{
  result = qword_1EE2C74E8;
  if (!qword_1EE2C74E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C74E8);
  }

  return result;
}

unint64_t sub_1E5BB6E84()
{
  result = qword_1EE2C74F0;
  if (!qword_1EE2C74F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C74F0);
  }

  return result;
}

unint64_t sub_1E5BB6EDC()
{
  result = qword_1EE2C7548;
  if (!qword_1EE2C7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7548);
  }

  return result;
}

unint64_t sub_1E5BB6F34()
{
  result = qword_1EE2C7550;
  if (!qword_1EE2C7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C7550);
  }

  return result;
}

uint64_t sub_1E5BB6F88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07900 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001E5C081E0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E5BB7100(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954656D75736572 && a2 == 0xEA0000000000656DLL)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E5BB7234(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954656D75736572 && a2 == 0xEA0000000000656DLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5474756F6B726F77 && a2 == 0xEC000000656C7469)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BB7404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7669746341776172 && a2 == 0xEF65707954797469 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6954656D75736572 && a2 == 0xEA0000000000656DLL || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C08200 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5BB7584(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E5C07A80 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C07AA0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001E5C077D0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E5C08220 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07AE0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E5C08240 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001E5C08260 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001E5C08290 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6F4C6C6961746564 && a2 == 0xEF65746174536461)
  {

    return 9;
  }

  else
  {
    v5 = sub_1E5BF7444();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E5BB78B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BookmarkButtonEnvironment.init(resolveBookmark:resolveEntitlement:requestAddBookmark:requestRemoveBookmark:publishActionTapped:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t sub_1E5BB7938()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BB79B8()
{
  v0 = sub_1E5BF64B4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1E5BF6F94();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  v24 = sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *(v7 + 1);
      v22 = v8;
      v23 = v16;
      v18 = *(v7 + 3);
      v17 = *(v7 + 4);
      v19 = v7[40];
LABEL_6:

      sub_1E5BF6F24();
      if (qword_1EE2C6208 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(v7 + 1);
      v22 = v8;
      v23 = v10;
      v12 = *(v7 + 3);
      v11 = *(v7 + 4);
      v13 = v7[40];
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440) + 48);
      v15 = sub_1E5BF6464();
      (*(*(v15 - 8) + 8))(&v7[v14], v15);
      goto LABEL_6;
    }

    sub_1E5B5F804(v7, &qword_1ED03E950, &unk_1E5BF95F0);
  }

  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_10:
  v20 = qword_1EE2CD210;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  return sub_1E5BF6FD4();
}

uint64_t sub_1E5BB7DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v30 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E778, &qword_1E5C00D60);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v31 = v24 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v24 - v16;
  v27 = a4;
  v34 = sub_1E5BB79B8();
  v35 = v18;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4 & 1;
  sub_1E5B5F5EC();
  sub_1E5BF6D34();
  v26 = v32;
  v24[3] = v33;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  sub_1E5B5F8D4(v17, v15, &qword_1ED03E780, &qword_1E5BF9140);
  if ((*(v8 + 48))(v15, 1, v25) == 1)
  {
    v20 = type metadata accessor for ResumeWorkoutConfirmation(0);
    v21 = (*(*(v20 - 8) + 56))(v31, 1, 1, v20);
  }

  else
  {
    v21 = sub_1E5B5F8D4(v15, v31, &qword_1ED03E778, &qword_1E5C00D60);
  }

  MEMORY[0x1EEE9AC00](v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FD70, &qword_1E5C00D88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FD78, &qword_1E5C00D90);
  type metadata accessor for ResumeWorkoutConfirmation(0);
  sub_1E5B5FC8C(&qword_1EE2C6310, &qword_1ED03FD70, &qword_1E5C00D88);
  sub_1E5B81070();
  sub_1E5B5FC8C(&qword_1EE2C62A8, &qword_1ED03FD78, &qword_1E5C00D90);
  v22 = v31;
  sub_1E5BF6AA4();

  sub_1E5B5F804(v22, &qword_1ED03E778, &qword_1E5C00D60);
}

uint64_t sub_1E5BB8274@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v51 = a3;
  v52 = a2;
  v50 = a1;
  v55 = a4;
  v4 = sub_1E5BF6494();
  v54 = *(v4 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  v7 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v46 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E778, &qword_1E5C00D60);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E780, &qword_1E5BF9140);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v46 - v28;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v19 + 48))(v29, 1, v18);
  if (result != 1)
  {
    sub_1E5B5F8D4(v29, v25, &qword_1ED03E778, &qword_1E5C00D60);
    sub_1E5B5F864(v25, v23, &qword_1ED03E778, &qword_1E5C00D60);
    v32 = type metadata accessor for ResumeWorkoutConfirmation(0);
    v33 = (*(*(v32 - 8) + 48))(v23, 1, v32);
    v46 = v25;
    if (v33 == 1)
    {
      sub_1E5B5F804(v23, &qword_1ED03E778, &qword_1E5C00D60);
      v34 = 1;
      v35 = v53;
      v36 = v54;
    }

    else
    {
      v35 = v53;
      v36 = v54;
      (*(v54 + 16))(v53, v23, v4);
      sub_1E5BB9B5C(v23, type metadata accessor for ResumeWorkoutConfirmation);
      v34 = 0;
    }

    v37 = *(v36 + 56);
    v37(v35, v34, 1, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v37(v16, 0, 1, v4);
    v38 = *(v49 + 48);
    sub_1E5B5F864(v35, v9, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v16, &v9[v38], &qword_1ED03E5E8, &unk_1E5BF9600);
    v39 = *(v36 + 48);
    if (v39(v9, 1, v4) == 1)
    {
      sub_1E5B5F804(v16, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v46, &qword_1ED03E778, &qword_1E5C00D60);
      if (v39(&v9[v38], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        v40 = 1;
LABEL_13:
        v31 = v40 & 1;
        goto LABEL_14;
      }
    }

    else
    {
      v41 = v48;
      sub_1E5B5F864(v9, v48, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v39(&v9[v38], 1, v4) != 1)
      {
        v42 = v54;
        v43 = &v9[v38];
        v44 = v47;
        (*(v54 + 32))(v47, v43, v4);
        sub_1E5B7AE4C();
        v40 = sub_1E5BF6F14();
        v45 = *(v42 + 8);
        v45(v44, v4);
        sub_1E5B5F804(v16, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v46, &qword_1ED03E778, &qword_1E5C00D60);
        v45(v41, v4);
        result = sub_1E5B5F804(v9, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_13;
      }

      sub_1E5B5F804(v16, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v35, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v46, &qword_1ED03E778, &qword_1E5C00D60);
      (*(v54 + 8))(v41, v4);
    }

    result = sub_1E5B5F804(v9, &qword_1ED03E790, &qword_1E5BF9150);
    v40 = 0;
    goto LABEL_13;
  }

  v31 = 0;
LABEL_14:
  *v55 = v31;
  return result;
}

uint64_t sub_1E5BB8990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  LODWORD(v50) = a4;
  v49 = a1;
  v58 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v48 - v10;
  v11 = type metadata accessor for ResumeWorkoutConfirmation(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = v13;
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v51 = *(v15 - 8);
  v16 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FD80, &qword_1E5C00D98);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v57 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v56 = &v48 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v55 = &v48 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v53 = &v48 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v59 = &v48 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v52 = &v48 - v31;
  sub_1E5BB98A0(a1, v14);
  v32 = (*(v12 + 80) + 33) & ~*(v12 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = a2;
  *(v33 + 24) = a3;
  LOBYTE(v13) = v50 & 1;
  *(v33 + 32) = v50 & 1;
  sub_1E5BB9904(v14, v33 + v32);
  v66 = a2;
  v67 = a3;
  v68 = v13;
  sub_1E5B5F5EC();
  sub_1E5BF6C84();
  v50 = sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5BF6AC4();
  v51 = *(v51 + 8);
  (v51)(v18, v15);
  sub_1E5BB98A0(v49, v14);
  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = a3;
  *(v34 + 32) = v13;
  sub_1E5BB9904(v14, v34 + v32);
  v63 = a2;
  v64 = a3;
  v65 = v13;
  sub_1E5B5F5EC();
  sub_1E5BF6C84();
  sub_1E5BF6AC4();
  v35 = v51;
  (v51)(v18, v15);
  v36 = v54;
  sub_1E5BF65D4();
  v37 = sub_1E5BF65E4();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = a3;
  *(v38 + 32) = v13;
  v60 = a2;
  v61 = a3;
  v62 = v13;
  sub_1E5B5F5EC();
  sub_1E5BF6C74();
  v39 = v53;
  sub_1E5BF6AC4();
  v35(v18, v15);
  v40 = v52;
  v41 = v55;
  sub_1E5B5F864(v52, v55, &qword_1ED03FD80, &qword_1E5C00D98);
  v42 = v59;
  v43 = v56;
  sub_1E5B5F864(v59, v56, &qword_1ED03FD80, &qword_1E5C00D98);
  v44 = v57;
  sub_1E5B5F864(v39, v57, &qword_1ED03FD80, &qword_1E5C00D98);
  v45 = v58;
  sub_1E5B5F864(v41, v58, &qword_1ED03FD80, &qword_1E5C00D98);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FD88, &qword_1E5C00DA0);
  sub_1E5B5F864(v43, v45 + *(v46 + 48), &qword_1ED03FD80, &qword_1E5C00D98);
  sub_1E5B5F864(v44, v45 + *(v46 + 64), &qword_1ED03FD80, &qword_1E5C00D98);
  sub_1E5B5F804(v39, &qword_1ED03FD80, &qword_1E5C00D98);
  sub_1E5B5F804(v42, &qword_1ED03FD80, &qword_1E5C00D98);
  sub_1E5B5F804(v40, &qword_1ED03FD80, &qword_1E5C00D98);
  sub_1E5B5F804(v44, &qword_1ED03FD80, &qword_1E5C00D98);
  sub_1E5B5F804(v43, &qword_1ED03FD80, &qword_1E5C00D98);
  return sub_1E5B5F804(v41, &qword_1ED03FD80, &qword_1E5C00D98);
}

uint64_t sub_1E5BB90C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v6 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  v9 = type metadata accessor for ResumeWorkoutConfirmation(0);
  v10 = *(a4 + *(v9 + 20));
  *v8 = *(a4 + *(v9 + 24));
  v8[1] = v10;
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5BB9B5C(v8, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5BB9220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v6 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v8 = (&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  *v8 = *(a4 + *(type metadata accessor for ResumeWorkoutConfirmation(0) + 20));
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5BB9B5C(v8, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5BB9370@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5BB9564()
{
  started = type metadata accessor for StartWorkoutButtonAction();
  v1 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5BB9B5C(v3, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5BB9694@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E5BF64B4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E5BF6F94();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_1E5BB98A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResumeWorkoutConfirmation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BB9904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResumeWorkoutConfirmation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5BB9980@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BB9694(a1);
}

uint64_t objectdestroy_2Tm()
{
  v1 = *(type metadata accessor for ResumeWorkoutConfirmation(0) - 8);
  v2 = (*(v1 + 80) + 33) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  sub_1E5B5C0A8();
  v7 = sub_1E5BF6494();
  (*(*(v7 - 8) + 8))(v0 + v2, v7);

  return swift_deallocObject();
}

uint64_t sub_1E5BB9A9C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for ResumeWorkoutConfirmation(0) - 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = v1 + ((*(v2 + 80) + 33) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6);
}

uint64_t sub_1E5BB9B18@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BB9370(a1);
}

uint64_t sub_1E5BB9B24()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_1E5BB9564();
}

uint64_t sub_1E5BB9B30@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  return sub_1E5BB9694(a1);
}

uint64_t sub_1E5BB9B5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SampleContentButtonActionError.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5BB9C48()
{
  result = qword_1ED03FD90;
  if (!qword_1ED03FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FD90);
  }

  return result;
}

uint64_t sub_1E5BB9CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for BookmarkButtonFeature.TaskIdentifier();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(*(TupleTypeMetadata2 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v13 = &v19 - v12;
  v14 = *(v11 + 56);
  v15 = *(*(v8 - 8) + 16);
  v15(&v19 - v12, a1, v8);
  v15(&v13[v14], a2, v8);
  v16 = *(*(a4 + 24) + 8);
  LOBYTE(a4) = sub_1E5BF6F14();
  v17 = *(*(a3 - 8) + 8);
  v17(&v13[v14], a3);
  v17(v13, a3);
  return a4 & 1;
}

uint64_t sub_1E5BB9E18(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v2, a2);
  MEMORY[0x1E6937C10](0);
  v8 = *(a2 + 16);
  v9 = *(*(a2 + 24) + 24);
  sub_1E5BF6EF4();
  return (*(*(v8 - 8) + 8))(v6, v8);
}

uint64_t sub_1E5BB9F2C(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5BB9E18(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BB9F7C(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5BB9E18(v4, a2);
  return sub_1E5BF7504();
}

__n128 BookmarkButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t BookmarkButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v120 = a3;
  v9 = *(a5 + 16);
  v8 = *(a5 + 24);
  v119 = a5;
  v122 = v8;
  v10 = type metadata accessor for BookmarkButtonFeature.TaskIdentifier();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v100 - v13;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FD98, &unk_1E5C00EF0);
  v117 = *(v121 - 8);
  v15 = *(v117 + 64);
  v16 = MEMORY[0x1EEE9AC00](v121);
  v18 = &v100 - v17;
  v19 = *(v9 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v16);
  v116 = &v100 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v22 = v5[3];
  v130 = v5[2];
  v131 = v22;
  v132 = v5[4];
  v24 = *v5;
  v23 = v5[1];
  v26 = &v100 - v25;
  v128 = v24;
  v129 = v23;
  v123 = v19;
  v118 = *(v19 + 16);
  v118(&v100 - v25, a2, v9);
  if (a4 <= 1u)
  {
    v115 = v26;
    if (a4)
    {
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v108 = v75[12];
      v76 = v75[16];
      v109 = v75[20];
      v77 = &v18[v75[24]];
      v78 = v122;
      v79 = *(v122 + 24);
      sub_1E5BF72B4();
      v127 = 1;
      sub_1E5B6C48C(v125, v124);
      v114 = sub_1E5B6C4E8();
      sub_1E5BF7254();
      sub_1E5B6C53C(v125);
      LODWORD(v112) = *MEMORY[0x1E6999B50];
      v80 = v112;
      v110 = sub_1E5BF6E24();
      v81 = *(v110 - 8);
      v111 = *(v81 + 104);
      v113 = v81 + 104;
      v111(&v18[v76], v80, v110);
      v82 = v116;
      v118(v116, v26, v9);
      v83 = v123;
      v84 = (*(v123 + 80) + 112) & ~*(v123 + 80);
      v85 = swift_allocObject();
      *(v85 + 16) = v9;
      *(v85 + 24) = v78;
      v86 = v131;
      *(v85 + 64) = v130;
      *(v85 + 80) = v86;
      *(v85 + 96) = v132;
      v87 = v129;
      *(v85 + 32) = v128;
      *(v85 + 48) = v87;
      (*(v83 + 32))(v85 + v84, v82, v9);
      *v77 = &unk_1E5C00F20;
      *(v77 + 1) = v85;
      v88 = v119;
      v89 = *(v119 - 8);
      v90 = *(v89 + 16);
      v118 = (v89 + 16);
      v90(v124, &v128, v119);
      sub_1E5B6C8B8();
      sub_1E5B6C8BC(&v18[v109]);
      LODWORD(v116) = *MEMORY[0x1E6999AD8];
      v117 = *(v117 + 104);
      (v117)(v18);
      v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FDA0, &qword_1E5C00F10);
      sub_1E5BF7034();
      v108 = v75[12];
      v91 = v75[16];
      v92 = v75[20];
      v93 = &v18[v75[24]];
      v126 = 0;
      memset(v125, 0, sizeof(v125));
      v127 = 8;
      sub_1E5B6C48C(v125, v124);
      sub_1E5BF7254();
      sub_1E5B6C53C(v125);
      v111(&v18[v91], v112, v110);
      v94 = *MEMORY[0x1E6999B40];
      v95 = sub_1E5BF6E14();
      (*(*(v95 - 8) + 104))(&v18[v92], v94, v95);
      v96 = swift_allocObject();
      v97 = v122;
      *(v96 + 16) = v9;
      *(v96 + 24) = v97;
      v98 = v131;
      *(v96 + 64) = v130;
      *(v96 + 80) = v98;
      *(v96 + 96) = v132;
      v99 = v129;
      *(v96 + 32) = v128;
      *(v96 + 48) = v99;
      *v93 = &unk_1E5C00F30;
      *(v93 + 1) = v96;
      v90(v124, &v128, v88);
      sub_1E5B6C8B8();
      (v117)(v18, v116, v121);
      sub_1E5BF7034();
      return (*(v83 + 8))(v115, v9);
    }

    else
    {
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v110 = v42[12];
      v108 = v42[16];
      v109 = v42[20];
      v107 = &v18[v42[24]];
      v43 = v118;
      v118(v14, v26, v9);
      swift_getWitnessTable();
      sub_1E5BF72B4();
      (*(v11 + 8))(v14, v10);
      LODWORD(v113) = *MEMORY[0x1E6999B50];
      v44 = v113;
      v112 = sub_1E5BF6E24();
      v45 = *(v112 - 8);
      v111 = *(v45 + 104);
      v114 = v45 + 104;
      v111(v108 + v18, v44, v112);
      v46 = *MEMORY[0x1E6999B40];
      v47 = sub_1E5BF6E14();
      (*(*(v47 - 8) + 104))(&v18[v109], v46, v47);
      v48 = v116;
      v43(v116, v115, v9);
      v49 = v123;
      v109 = *(v123 + 80);
      v50 = (v109 + 112) & ~v109;
      v104 = v50;
      v51 = swift_allocObject();
      v52 = v122;
      *(v51 + 16) = v9;
      *(v51 + 24) = v52;
      v53 = v52;
      v54 = v131;
      *(v51 + 64) = v130;
      *(v51 + 80) = v54;
      *(v51 + 96) = v132;
      v55 = v129;
      *(v51 + 32) = v128;
      *(v51 + 48) = v55;
      v108 = *(v49 + 32);
      v108(v51 + v50, v48, v9);
      v56 = v107;
      *v107 = &unk_1E5C00F40;
      *(v56 + 1) = v51;
      v57 = *(v119 - 8);
      v106 = *(v57 + 16);
      v107 = (v57 + 16);
      v106(v124, &v128, v119);
      sub_1E5B6C8B8();
      LODWORD(v110) = *MEMORY[0x1E6999AD8];
      v117 = *(v117 + 104);
      (v117)(v18);
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FDA0, &qword_1E5C00F10);
      sub_1E5BF7034();
      v102 = v42[12];
      v58 = v42[16];
      v103 = v42[20];
      v101 = &v18[v42[24]];
      v59 = v53;
      v60 = *(v53 + 24);
      v61 = v115;
      sub_1E5BF72B4();
      v127 = 0;
      sub_1E5B6C48C(v125, v124);
      sub_1E5B6C4E8();
      sub_1E5BF7254();
      sub_1E5B6C53C(v125);
      v111(&v18[v58], v113, v112);
      v118(v48, v61, v9);
      v62 = v104;
      v63 = swift_allocObject();
      *(v63 + 16) = v9;
      *(v63 + 24) = v59;
      v64 = v131;
      *(v63 + 64) = v130;
      *(v63 + 80) = v64;
      *(v63 + 96) = v132;
      v65 = v129;
      *(v63 + 32) = v128;
      *(v63 + 48) = v65;
      v108(v63 + v62, v48, v9);
      v66 = v101;
      *v101 = &unk_1E5C00F50;
      *(v66 + 1) = v63;
      v106(v124, &v128, v119);
      sub_1E5B6C8B8();
      sub_1E5B6C8BC(&v18[v103]);
      (v117)(v18, v110, v121);
      sub_1E5BF7034();
      return (*(v123 + 8))(v115, v9);
    }
  }

  else if (a4 == 2)
  {
    (*(v123 + 8))(v26, v9);
    v67 = type metadata accessor for BookmarkButtonState();
    v68 = *(v67 + 52);
    sub_1E5BBAFA8(a2 + v68);
    v69 = *(v67 + 40);
    v70 = sub_1E5BF6494();
    v71 = *(v70 - 8);
    (*(v71 + 16))(a2 + v68, a2 + v69, v70);
    (*(v71 + 56))(a2 + v68, 0, 1, v70);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
    return (*(*(v72 - 8) + 56))(a2 + v68, 0, 1, v72);
  }

  else if (a4 == 3)
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v113 = v27[12];
    v28 = v27[16];
    v114 = v27[20];
    v29 = &v18[v27[24]];
    v30 = v122;
    v31 = *(v122 + 24);
    sub_1E5BF72B4();
    v127 = 2;
    sub_1E5B6C48C(v125, v124);
    sub_1E5B6C4E8();
    sub_1E5BF7254();
    sub_1E5B6C53C(v125);
    v32 = v26;
    v33 = *MEMORY[0x1E6999B50];
    v34 = sub_1E5BF6E24();
    (*(*(v34 - 8) + 104))(&v18[v28], v33, v34);
    v35 = v116;
    v118(v116, v32, v9);
    v36 = v123;
    v37 = (*(v123 + 80) + 112) & ~*(v123 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v9;
    *(v38 + 24) = v30;
    v39 = v131;
    *(v38 + 64) = v130;
    *(v38 + 80) = v39;
    *(v38 + 96) = v132;
    v40 = v129;
    *(v38 + 32) = v128;
    *(v38 + 48) = v40;
    (*(v36 + 32))(v38 + v37, v35, v9);
    *v29 = &unk_1E5C00F08;
    *(v29 + 1) = v38;
    (*(*(v119 - 8) + 16))(v124, &v128);
    sub_1E5B6C8B8();
    sub_1E5B6C8BC(&v18[v114]);
    (*(v117 + 104))(v18, *MEMORY[0x1E6999AD8], v121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FDA0, &qword_1E5C00F10);
    sub_1E5BF7034();
    return (*(v36 + 8))(v32, v9);
  }

  else
  {
    (*(v123 + 8))(v26, v9);
    v73 = *(type metadata accessor for BookmarkButtonState() + 52);
    sub_1E5BBAFA8(a2 + v73);
    v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
    return (*(*(v74 - 8) + 56))(a2 + v73, 1, 1, v74);
  }
}

uint64_t sub_1E5BBAFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5BBB010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1E5BF7084();
  v3[3] = sub_1E5BF7074();
  v6 = *(a2 + 24);
  v10 = (*(a2 + 16) + **(a2 + 16));
  v7 = *(*(a2 + 16) + 4);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_1E5B6F688;

  return v10(a3);
}

uint64_t sub_1E5BBB124(uint64_t a1, int **a2, uint64_t a3)
{
  v3[2] = sub_1E5BF7084();
  v3[3] = sub_1E5BF7074();
  v6 = a2[1];
  v10 = (*a2 + **a2);
  v7 = (*a2)[1];
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_1E5B6F688;

  return v10(a3);
}

uint64_t sub_1E5BBB238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1E5BF7084();
  v3[3] = sub_1E5BF7074();
  v6 = *(a2 + 40);
  v10 = (*(a2 + 32) + **(a2 + 32));
  v7 = *(*(a2 + 32) + 4);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_1E5B79670;

  return v10(a3);
}

uint64_t sub_1E5BBB34C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  sub_1E5BF7084();
  *(v2 + 24) = sub_1E5BF7074();
  v4 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5BBB3E4, v4, v3);
}

uint64_t sub_1E5BBB3E4()
{
  v2 = v0[2];
  v1 = v0[3];

  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v4(v3);
  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5BBB454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = sub_1E5BF7084();
  v3[3] = sub_1E5BF7074();
  v6 = *(a2 + 56);
  v10 = (*(a2 + 48) + **(a2 + 48));
  v7 = *(*(a2 + 48) + 4);
  v8 = swift_task_alloc();
  v3[4] = v8;
  *v8 = v3;
  v8[1] = sub_1E5BBB568;

  return v10(a3);
}

uint64_t sub_1E5BBB568()
{
  v2 = v0;
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v10 = *v1;
  *(*v1 + 40) = v2;

  v7 = sub_1E5BF7054();
  if (v2)
  {
    v8 = sub_1E5BBC12C;
  }

  else
  {
    v8 = sub_1E5B71A18;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E5BBB6C4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 112) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5BBB454(a1, v1 + 32, v1 + v5);
}

uint64_t sub_1E5BBB7AC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 112) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6D9A0;

  return sub_1E5BBB238(a1, v1 + 32, v1 + v5);
}

uint64_t sub_1E5BBB894(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5BBB34C(a1, v1 + 32);
}

uint64_t sub_1E5BBB940(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 112) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5BBB010(a1, v1 + 32, v1 + v5);
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 2);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 112) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 5);

  v6 = *(v0 + 7);

  v7 = *(v0 + 9);

  v8 = *(v0 + 11);

  v9 = *(v0 + 13);

  (*(v2 + 8))(&v0[v3], v1);

  return swift_deallocObject();
}

uint64_t sub_1E5BBBB04(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = (*(*(*(v1 + 16) - 8) + 80) + 112) & ~*(*(*(v1 + 16) - 8) + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5BBB124(a1, (v1 + 32), v1 + v5);
}

unint64_t sub_1E5BBBC04()
{
  result = qword_1ED03FDA8;
  if (!qword_1ED03FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FDA8);
  }

  return result;
}

unint64_t sub_1E5BBBC5C()
{
  result = qword_1ED03FDB0[0];
  if (!qword_1ED03FDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED03FDB0);
  }

  return result;
}

uint64_t sub_1E5BBBCCC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5BBBD20(uint64_t a1)
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

uint64_t sub_1E5BBBDC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1E5BBBF08(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_1E5BBC140()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6570704177656976;
  }

  *v0;
  return result;
}

uint64_t sub_1E5BBC188@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001E5C083F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5BBC270(uint64_t a1)
{
  v2 = sub_1E5BBC694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BBC2AC(uint64_t a1)
{
  v2 = sub_1E5BBC694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BBC2E8(uint64_t a1)
{
  v2 = sub_1E5BBC73C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BBC324(uint64_t a1)
{
  v2 = sub_1E5BBC73C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5BBC360(uint64_t a1)
{
  v2 = sub_1E5BBC6E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BBC39C(uint64_t a1)
{
  v2 = sub_1E5BBC6E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ViewStackButtonAction.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FE38, &qword_1E5C010D0);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FE40, &qword_1E5C010D8);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FE48, &qword_1E5C010E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BBC694();
  sub_1E5BF7524();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_1E5BBC6E8();
    sub_1E5BF7394();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_1E5BBC73C();
    sub_1E5BF7394();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

unint64_t sub_1E5BBC694()
{
  result = qword_1ED03FE50;
  if (!qword_1ED03FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE50);
  }

  return result;
}

unint64_t sub_1E5BBC6E8()
{
  result = qword_1ED03FE58;
  if (!qword_1ED03FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE58);
  }

  return result;
}

unint64_t sub_1E5BBC73C()
{
  result = qword_1ED03FE60;
  if (!qword_1ED03FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE60);
  }

  return result;
}

uint64_t sub_1E5BBC7AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E5BBC868(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t ViewStackButtonAction.hashValue.getter(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5BBC868(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FEA8, &qword_1E5C01468);
  v29 = *(v2 - 8);
  v30 = v2;
  v3 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FEB0, &qword_1E5C01470);
  v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FEB8, &qword_1E5C01478);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BBC694();
  v15 = v32;
  sub_1E5BF7514();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = a1;
  v16 = v30;
  v17 = sub_1E5BF7374();
  v18 = (2 * *(v17 + 16)) | 1;
  v33 = v17;
  v34 = v17 + 32;
  v35 = 0;
  v36 = v18;
  v19 = sub_1E5B7FB0C();
  if (v19 == 2 || v35 != v36 >> 1)
  {
    v21 = v10;
    v22 = sub_1E5BF7284();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770) + 48);
    *v24 = &type metadata for ViewStackButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
    swift_willThrow();
    (*(v31 + 8))(v13, v21);
    swift_unknownObjectRelease();
    a1 = v32;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v19;
  if (v19)
  {
    v38 = 1;
    sub_1E5BBC6E8();
    sub_1E5BF72C4();
    v20 = v31;
    (*(v29 + 8))(v5, v16);
  }

  else
  {
    v38 = 0;
    sub_1E5BBC73C();
    sub_1E5BF72C4();
    v20 = v31;
    (*(v28 + 8))(v9, v6);
  }

  (*(v20 + 8))(v13, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v37 & 1;
}

unint64_t sub_1E5BBCD28()
{
  result = qword_1ED03FE68;
  if (!qword_1ED03FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE68);
  }

  return result;
}

unint64_t sub_1E5BBCDC0()
{
  result = qword_1ED03FE70;
  if (!qword_1ED03FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE70);
  }

  return result;
}

unint64_t sub_1E5BBCE18()
{
  result = qword_1ED03FE78;
  if (!qword_1ED03FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE78);
  }

  return result;
}

unint64_t sub_1E5BBCE70()
{
  result = qword_1ED03FE80;
  if (!qword_1ED03FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE80);
  }

  return result;
}

unint64_t sub_1E5BBCEC8()
{
  result = qword_1ED03FE88;
  if (!qword_1ED03FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE88);
  }

  return result;
}

unint64_t sub_1E5BBCF20()
{
  result = qword_1ED03FE90;
  if (!qword_1ED03FE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE90);
  }

  return result;
}

unint64_t sub_1E5BBCF78()
{
  result = qword_1ED03FE98;
  if (!qword_1ED03FE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FE98);
  }

  return result;
}

unint64_t sub_1E5BBCFD0()
{
  result = qword_1ED03FEA0;
  if (!qword_1ED03FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FEA0);
  }

  return result;
}

uint64_t CreatePlanAlertState.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5BF64B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for CreatePlanAlertState()
{
  result = qword_1ED03FEE8;
  if (!qword_1ED03FEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CreatePlanAlertState.isPresentingAlert.setter(char a1)
{
  result = type metadata accessor for CreatePlanAlertState();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t CreatePlanAlertState.iconState.setter(char a1)
{
  result = type metadata accessor for CreatePlanAlertState();
  *(v1 + *(result + 24)) = a1 & 1;
  return result;
}

uint64_t CreatePlanAlertState.remoteParticipantName.getter()
{
  v1 = (v0 + *(type metadata accessor for CreatePlanAlertState() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t CreatePlanAlertState.remoteParticipantName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CreatePlanAlertState() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CreatePlanAlertState.workoutPlanCreationAlertEnabled.setter(char a1)
{
  result = type metadata accessor for CreatePlanAlertState();
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t CreatePlanAlertState.init(locale:isPresentingAlert:iconState:remoteParticipantName:workoutPlanCreationAlertEnabled:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  PlanAlertState = type metadata accessor for CreatePlanAlertState();
  v14 = PlanAlertState[5];
  v15 = PlanAlertState[6];
  v16 = PlanAlertState[8];
  v17 = (a7 + PlanAlertState[7]);
  v18 = sub_1E5BF64B4();
  result = (*(*(v18 - 8) + 32))(a7, a1, v18);
  *(a7 + v14) = a2;
  *(a7 + v15) = a3 & 1;
  *v17 = a4;
  v17[1] = a5;
  *(a7 + v16) = a6;
  return result;
}

unint64_t sub_1E5BBD448()
{
  v1 = *v0;
  v2 = 0x656C61636F6CLL;
  v3 = 0x746174536E6F6369;
  v4 = 0xD00000000000001FLL;
  if (v1 == 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E5BBD4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5BBE15C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5BBD518(uint64_t a1)
{
  v2 = sub_1E5BBD7D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5BBD554(uint64_t a1)
{
  v2 = sub_1E5BBD7D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CreatePlanAlertState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FEC0, &qword_1E5C01480);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BBD7D8();
  sub_1E5BF7524();
  v18[15] = 0;
  sub_1E5BF64B4();
  sub_1E5BBDC78(&qword_1ED03E5C8);
  sub_1E5BF7424();
  if (!v2)
  {
    PlanAlertState = type metadata accessor for CreatePlanAlertState();
    v12 = *(v3 + PlanAlertState[5]);
    v18[14] = 1;
    sub_1E5BF73F4();
    v18[13] = *(v3 + PlanAlertState[6]);
    v18[12] = 2;
    sub_1E5BBD82C();
    sub_1E5BF7424();
    v13 = (v3 + PlanAlertState[7]);
    v14 = *v13;
    v15 = v13[1];
    v18[11] = 3;
    sub_1E5BF73A4();
    v16 = *(v3 + PlanAlertState[8]);
    v18[10] = 4;
    sub_1E5BF73B4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E5BBD7D8()
{
  result = qword_1ED03FEC8;
  if (!qword_1ED03FEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FEC8);
  }

  return result;
}

unint64_t sub_1E5BBD82C()
{
  result = qword_1ED03FED0;
  if (!qword_1ED03FED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FED0);
  }

  return result;
}

uint64_t CreatePlanAlertState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1E5BF64B4();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03FED8, &qword_1E5C01488);
  v28 = *(v30 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v25 - v8;
  PlanAlertState = type metadata accessor for CreatePlanAlertState();
  v11 = *(*(PlanAlertState - 1) + 64);
  MEMORY[0x1EEE9AC00](PlanAlertState);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BBD7D8();
  v29 = v9;
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v26;
  v36 = 0;
  sub_1E5BBDC78(&qword_1ED03E600);
  v16 = v27;
  sub_1E5BF7364();
  (*(v15 + 32))(v13, v16, v4);
  v35 = 1;
  v13[PlanAlertState[5]] = sub_1E5BF7334() & 1;
  v33 = 2;
  sub_1E5BBDCBC();
  sub_1E5BF7364();
  v17 = v28;
  v13[PlanAlertState[6]] = v34;
  v32 = 3;
  v18 = sub_1E5BF72E4();
  v19 = &v13[PlanAlertState[7]];
  *v19 = v18;
  v19[1] = v20;
  v31 = 4;
  v21 = sub_1E5BF72F4();
  v22 = v17;
  v23 = PlanAlertState[8];
  (*(v22 + 8))(v29, v30);
  v13[v23] = v21;
  sub_1E5BBDD10(v13, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5BBDD74(v13);
}

uint64_t sub_1E5BBDC78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E5BF64B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E5BBDCBC()
{
  result = qword_1ED03FEE0;
  if (!qword_1ED03FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03FEE0);
  }

  return result;
}

uint64_t sub_1E5BBDD10(uint64_t a1, uint64_t a2)
{
  PlanAlertState = type metadata accessor for CreatePlanAlertState();
  (*(*(PlanAlertState - 8) + 16))(a2, a1, PlanAlertState);
  return a2;
}

uint64_t sub_1E5BBDD74(uint64_t a1)
{
  PlanAlertState = type metadata accessor for CreatePlanAlertState();
  (*(*(PlanAlertState - 8) + 8))(a1, PlanAlertState);
  return a1;
}

BOOL _s14FitnessActions20CreatePlanAlertStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E6936BF0]() & 1) == 0)
  {
    return 0;
  }

  PlanAlertState = type metadata accessor for CreatePlanAlertState();
  if (*(a1 + PlanAlertState[5]) != *(a2 + PlanAlertState[5]) || *(a1 + PlanAlertState[6]) != *(a2 + PlanAlertState[6]))
  {
    return 0;
  }

  v6 = PlanAlertState[7];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = PlanAlertState;
      v13 = sub_1E5BF7444();
      PlanAlertState = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = PlanAlertState[8];
  v15 = *(a1 + v14);
  v16 = *(a2 + v14);
  if (v15 != 2)
  {
    return v16 != 2 && ((v16 ^ v15) & 1) == 0;
  }

  return v16 == 2;
}

void sub_1E5BBDF24()
{
  sub_1E5BF64B4();
  if (v0 <= 0x3F)
  {
    sub_1E5BBDFF8(319, &qword_1EE2C6230);
    if (v1 <= 0x3F)
    {
      sub_1E5BBDFF8(319, &qword_1ED03FEF8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}