uint64_t sub_1AC2A9764(uint64_t a1)
{
  v35 = v67;
  v28 = a1;
  v2 = v1;
  v30 = v2;
  v69 = 0;
  v68 = 0;
  memset(v67, 0, sizeof(v67));
  v62 = 0.0;
  v56 = 0.0;
  v55 = 0.0;
  v34 = sub_1AC30A29C();
  v31 = *(v34 - 8);
  v32 = v34 - 8;
  v29 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v20 - v29;
  v69 = a1;
  v68 = v30;
  sub_1AC30A2CC();
  sub_1AC30A0CC();
  v47 = v4;
  v48 = v5;
  v49 = v6;
  v50 = v7;
  (*(v31 + 8))(v33, v34);
  v8 = v35;
  v9 = v49;
  v10 = v50;
  *v67 = v47;
  v35[1] = v48;
  v8[2] = v9;
  v8[3] = v10;
  v36 = [objc_opt_self() mainScreen];
  [v36 bounds];
  v63 = v11;
  v64 = v12;
  v65 = v13;
  v66 = v14;
  v37 = v11;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  MEMORY[0x1E69E5920](v36);
  v41 = sub_1AC26778C(v37, v38, v39, v40);
  v62 = v41;
  v15 = sub_1AC2A9D7C(v47, v48, v49, v50);
  v43 = v61;
  *v61 = v15;
  v42 = &v60;
  v60 = v41;
  v45 = sub_1AC2AB138();
  v44 = MEMORY[0x1E69E7DE0];
  sub_1AC30B1FC();
  v46 = *&v61[1];
  v58 = sub_1AC2A9DBC(v47, v48, v49, v50);
  v57 = 0;
  sub_1AC30B1EC();
  v51 = v46 - v59;
  v56 = v46 - v59;
  v16 = sub_1AC26778C(v47, v48, v49, v50);
  v55 = v51 / v16;
  if (v51 / v16 > 0.9 && sub_1AC2A9D7C(v47, v48, v49, v50) > 0.0)
  {
    v17 = sub_1AC2A9DBC(v47, v48, v49, v50);
    v26 = v17 < v41;
  }

  else
  {
    v26 = 0;
  }

  v22 = v26;
  v18 = (v30 + *(type metadata accessor for FitTestLoopingVideoPlayer() + 32));
  v21 = *v18;
  v25 = *(v18 + 1);

  v24 = &v53;
  v53 = v21;
  v54 = v25;
  v23 = &v52;
  v52 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA50);
  sub_1AC30A6BC();
  sub_1AC1D0C54();
}

double sub_1AC2A9CB4(uint64_t a1, _BYTE *a2, id *a3)
{
  if (*a2)
  {
    v5 = *a3;
    [*a3 play];
    *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  }

  else
  {
    v4 = *a3;
    [*a3 pause];
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  return result;
}

void *sub_1AC2A9DFC(void *a1, void *a2)
{
  v8 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v8;
  v9 = a1[1];
  MEMORY[0x1E69E5928](v9);
  a2[1] = v9;
  a2[2] = a1[2];
  v11 = type metadata accessor for FitTestLoopingVideoPlayer();
  v12 = *(v11 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A02C();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v7 = *(a1 + v12);

    *(a2 + v12) = v7;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(v11 + 32);
  v5 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v6 = *(a1 + v3 + 8);

  result = a2;
  *(v5 + 1) = v6;
  return result;
}

char *sub_1AC2A9FA4(char *a1)
{
  MEMORY[0x1E69E5920](*a1);
  MEMORY[0x1E69E5920](*(a1 + 1));
  v3 = *(type metadata accessor for FitTestLoopingVideoPlayer() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC30A02C();
    (*(*(v1 - 8) + 8))(&a1[v3]);
  }

  else
  {
  }

  return a1;
}

uint64_t type metadata accessor for TipFitView()
{
  v1 = qword_1EB550F80;
  if (!qword_1EB550F80)
  {
    return swift_getSingletonMetadata();
  }

  return v1;
}

void *sub_1AC2AA118(uint64_t *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A04C();
    (*(*(v2 - 8) + 16))(a2, a1);
  }

  else
  {
    v4 = *a1;

    *a2 = v4;
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_1AC2AA1EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_1AC30A04C();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  return a1;
}

void *sub_1AC2AA288(const void *a1, void *a2)
{
  if (a2 != a1)
  {
    sub_1AC2AA1EC(a2);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9E0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = sub_1AC30A04C();
      (*(*(v2 - 8) + 32))(a2, a1);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v4 - 8) + 64));
    }
  }

  return a2;
}

unint64_t sub_1AC2AA384()
{
  v2 = qword_1EB54CA00;
  if (!qword_1EB54CA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C9F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AA40C()
{
  v2 = qword_1EB54CA08;
  if (!qword_1EB54CA08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C9E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AA494()
{
  v2 = qword_1EB54CA10;
  if (!qword_1EB54CA10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C9F0);
    sub_1AC2AA53C();
    sub_1AC2AA66C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AA53C()
{
  v2 = qword_1EB54CA18;
  if (!qword_1EB54CA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CA20);
    sub_1AC2AA40C();
    sub_1AC2AA5E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AA5E4()
{
  v2 = qword_1EB54CA28;
  if (!qword_1EB54CA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CA30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AA66C()
{
  v2 = qword_1EB54CA38;
  if (!qword_1EB54CA38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CA40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2AA6F4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9E8);
  (*(*(v1 - 8) + 8))(a1);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA20) + 36);
  v7 = sub_1AC30A19C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!(v9)(a1 + v5, 1))
  {
    (*(v8 + 8))(a1 + v5, v7);
  }

  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9F0) + 36);

  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA40) + 28);
  if (!v9())
  {
    (*(v8 + 8))(v4, v7);
  }

  return a1;
}

uint64_t sub_1AC2AA8BC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9E8);
  (*(*(v2 - 8) + 16))(a2, a1);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA20) + 36);
  v16 = sub_1AC30A19C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if ((v18)(a1 + v14, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA48);
    memcpy((a2 + v14), (a1 + v14), *(*(v3 - 8) + 64));
  }

  else
  {
    (*(v17 + 16))();
    (*(v17 + 56))(a2 + v14, 0, 1, v16);
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9F0);
  v9 = (a2 + *(v4 + 36));
  v10 = (a1 + *(v4 + 36));
  v8 = *v10;

  *v9 = v8;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA40);
  __dst = v9 + *(v5 + 28);
  __src = v10 + *(v5 + 28);
  if (v18())
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CA48);
    memcpy(__dst, __src, *(*(v6 - 8) + 64));
  }

  else
  {
    (*(v17 + 16))(__dst, __src, v16);
    (*(v17 + 56))(__dst, 0, 1, v16);
  }

  return a2;
}

void *sub_1AC2AABD4(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A04C();
    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  return a2;
}

__n128 sub_1AC2AACA8(void *a1, void *a2)
{
  *a2 = *a1;
  a2[1] = a1[1];
  a2[2] = a1[2];
  v5 = type metadata accessor for FitTestLoopingVideoPlayer();
  v6 = *(v5 + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A02C();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2 + v6, a1 + v6, *(*(v8 - 8) + 64));
  }

  result = *(a1 + *(v5 + 32));
  *(a2 + *(v5 + 32)) = result;
  return result;
}

uint64_t sub_1AC2AADF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = type metadata accessor for FitTestLoopingVideoPlayer();
  v4 = (v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_1AC2A8D78(a1, v4, a2);
}

uint64_t type metadata accessor for CGRect()
{
  v4 = qword_1EB54CAF8;
  if (!qword_1EB54CAF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CAF8);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2AAF0C()
{
  v2 = qword_1EB54CA70;
  if (!qword_1EB54CA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CA68);
    sub_1AC2386F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AAFB0()
{
  v2 = qword_1EB54CA78;
  if (!qword_1EB54CA78)
  {
    type metadata accessor for CGRect();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA78);
    return WitnessTable;
  }

  return v2;
}

double sub_1AC2AB030(uint64_t a1, _BYTE *a2)
{
  v3 = type metadata accessor for FitTestLoopingVideoPlayer();
  v4 = (v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));

  return sub_1AC2A9CB4(a1, a2, v4);
}

unint64_t sub_1AC2AB0B0()
{
  v2 = qword_1EB54CA88;
  if (!qword_1EB54CA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CA80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AB138()
{
  v2 = qword_1EB54CA90;
  if (!qword_1EB54CA90)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA90);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC2AB1C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for HeadphoneAlwaysShowControlsAVPlayer();
  v8 = sub_1AC20D658();
  MEMORY[0x1E69E5928](v8);
  [v8 setPlayer_];
  MEMORY[0x1E69E5920](a2);
  [v8 setShowsPlaybackControls_];
  v9 = [v8 view];
  MEMORY[0x1E69E5920](v8);
  if (v9)
  {
    v6 = v9;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC30ADBC();
  MEMORY[0x1E69E5920](v6);
  v5 = [v8 view];
  MEMORY[0x1E69E5920](v8);
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v3 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v4);
  return v8;
}

unint64_t sub_1AC2AB668()
{
  v2 = qword_1EB54CA98;
  if (!qword_1EB54CA98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CA98);
    return WitnessTable;
  }

  return v2;
}

void sub_1AC2AB72C()
{
  sub_1AC2AB668();
  sub_1AC30A33C();
  __break(1u);
}

void sub_1AC2AB85C()
{
  v2 = v0;
  MEMORY[0x1E69E5928](v0);
  v1.receiver = v0;
  v1.super_class = type metadata accessor for HeadphoneAlwaysShowControlsAVPlayer();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v0);
  sub_1AC2AB920();
}

void sub_1AC2AB920()
{
  v57 = sub_1AC248104;
  v58 = sub_1AC24810C;
  v59 = sub_1AC248118;
  v60 = sub_1AC215C90;
  v61 = sub_1AC215C90;
  v62 = sub_1AC2482A8;
  v87 = *MEMORY[0x1E69E9840];
  v82 = 0;
  v80 = 0;
  v68 = 0;
  v63 = sub_1AC309E6C();
  v64 = *(v63 - 8);
  v65 = v63 - 8;
  v66 = (*(v64 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v22 - v66;
  v82 = v0;
  v86 = 0;
  v74 = [objc_opt_self() sharedInstance];
  v73 = *MEMORY[0x1E6958038];
  MEMORY[0x1E69E5928](v73);
  v72 = *MEMORY[0x1E6958130];
  MEMORY[0x1E69E5928](v72);
  type metadata accessor for CategoryOptions();
  v69 = 1;
  v1 = sub_1AC30B18C();
  *v2 = v69;
  sub_1AC206300();
  v70 = v1;
  sub_1AC2AC39C();
  sub_1AC30AF2C();
  v81[0] = v86;
  v75 = [v74 setCategory:v73 mode:v72 options:v81[1] error:v81];
  v71 = v81[0];
  MEMORY[0x1E69E5928](v81[0]);
  v3 = v86;
  v86 = v71;
  MEMORY[0x1E69E5920](v3);
  MEMORY[0x1E69E5920](v72);
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5920](v74);
  if (v75)
  {
    v83 = 0;
    v55 = [objc_opt_self() sharedInstance];
    v76 = v83;
    v56 = [v55 setActive:1 error:&v76];
    v54 = v76;
    MEMORY[0x1E69E5928](v76);
    v4 = v83;
    v83 = v54;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v55);
    if (v56)
    {
      return;
    }

    v23 = v83;
    v24 = sub_1AC308FDC();
    MEMORY[0x1E69E5920](v23);
    swift_willThrow();
    v37 = v24;
    v36 = 0;
  }

  else
  {
    v25 = v86;
    v26 = sub_1AC308FDC();
    MEMORY[0x1E69E5920](v25);
    swift_willThrow();
    v37 = v26;
    v36 = 0;
  }

  v38 = v36;
  v39 = v37;
  v5 = v37;
  v80 = v39;
  sub_1AC309E2C();
  v6 = v39;
  v43 = 7;
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  sub_1AC20BEE0();

  v52 = sub_1AC309E4C();
  v53 = sub_1AC30AD2C();
  v40 = 17;
  v46 = swift_allocObject();
  *(v46 + 16) = 64;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v42 = 32;
  v7 = swift_allocObject();
  v8 = v41;
  v44 = v7;
  *(v7 + 16) = v57;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v44;
  v45 = v9;
  *(v9 + 16) = v58;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v45;
  v49 = v11;
  *(v11 + 16) = v59;
  *(v11 + 24) = v12;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v48 = sub_1AC30B18C();
  v50 = v13;

  v14 = v46;
  v15 = v50;
  *v50 = v60;
  v15[1] = v14;

  v16 = v47;
  v17 = v50;
  v50[2] = v61;
  v17[3] = v16;

  v18 = v49;
  v19 = v50;
  v50[4] = v62;
  v19[5] = v18;
  sub_1AC206300();

  if (os_log_type_enabled(v52, v53))
  {
    v20 = v38;
    v29 = sub_1AC30AE6C();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v30 = sub_1AC213EE4(1);
    v31 = sub_1AC213EE4(0);
    v32 = &v79;
    v79 = v29;
    v33 = &v85;
    v85 = v30;
    v34 = &v84;
    v84 = v31;
    sub_1AC213F38(2, &v79);
    sub_1AC213F38(1, v32);
    v77 = v60;
    v78 = v46;
    sub_1AC213F4C(&v77, v32, v33, v34);
    v35 = v20;
    if (v20)
    {

      __break(1u);
    }

    else
    {
      sub_1AC213F4C(&v77, &v79, &v85, &v84);
      v27 = 0;
      v77 = v62;
      v78 = v49;
      sub_1AC213F4C(&v77, &v79, &v85, &v84);
      _os_log_impl(&dword_1AC1C3000, v52, v53, "Failed to set audio session category: %@", v29, 0xCu);
      sub_1AC213F98(v30);
      sub_1AC213F98(v31);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v21 = MEMORY[0x1E69E5920](v52);
  (*(v64 + 8))(v67, v63, v21);
}

uint64_t type metadata accessor for CategoryOptions()
{
  v4 = qword_1EB54CAF0;
  if (!qword_1EB54CAF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CAF0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2AC39C()
{
  v2 = qword_1EB54CAA0;
  if (!qword_1EB54CAA0)
  {
    type metadata accessor for CategoryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CAA0);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC2AC41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;

  if (a2)
  {
    v5 = sub_1AC30A91C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = 0;
  v9.super_class = type metadata accessor for HeadphoneAlwaysShowControlsAVPlayer();
  v4 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

id sub_1AC2AC630(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for HeadphoneAlwaysShowControlsAVPlayer();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    v7 = v4;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v7);
    return v4;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id sub_1AC2AC758(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithPlayerLayerView_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1AC2AC7AC(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  v4.receiver = 0;
  v4.super_class = type metadata accessor for HeadphoneAlwaysShowControlsAVPlayer();
  v3 = objc_msgSendSuper2(&v4, sel_initWithPlayerLayerView_, a1);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

id sub_1AC2AC890()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HeadphoneAlwaysShowControlsAVPlayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC2AC8DC()
{
  sub_1AC2ADE24();
  sub_1AC2ADEA4();
  return sub_1AC30B2EC();
}

uint64_t sub_1AC2ACAE0()
{
  sub_1AC2ADE24();
  sub_1AC2ADEA4();
  return sub_1AC30B2DC();
}

uint64_t sub_1AC2ACB24()
{
  sub_1AC2ADE24();
  sub_1AC2ADEA4();
  return sub_1AC30B2BC();
}

uint64_t sub_1AC2ACB68()
{
  sub_1AC2ADE24();
  sub_1AC2ADEA4();
  return sub_1AC30B2CC();
}

uint64_t sub_1AC2ACC38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AC2ACC68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = nullsub_1(*a1);
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1AC2ACCA8@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1AC2ACDE8()
{
  v6 = sub_1AC23AFFC();
  if (v0 <= 0x3F)
  {
    v6 = sub_1AC30901C();
    if (v1 <= 0x3F)
    {
      v6 = sub_1AC2ACF70();
      if (v2 <= 0x3F)
      {
        v6 = sub_1AC2AD004();
        if (v3 <= 0x3F)
        {
          v6 = sub_1AC2AD0A8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1AC2ACF70()
{
  v4 = qword_1EB54CAA8;
  if (!qword_1EB54CAA8)
  {
    v3 = sub_1AC30AE9C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB54CAA8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC2AD004()
{
  v4 = qword_1EB54CAB0;
  if (!qword_1EB54CAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CAB8);
    v3 = sub_1AC30AE9C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB54CAB0);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC2AD0A8()
{
  v4 = qword_1EB54CAC0;
  if (!qword_1EB54CAC0)
  {
    v3 = sub_1AC30AB5C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB54CAC0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2AD18C()
{
  v3 = sub_1AC2AD258();
  if (v0 <= 0x3F)
  {
    v3 = sub_1AC2AD2DC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v3;
}

unint64_t sub_1AC2AD258()
{
  v2 = qword_1EB54CAC8;
  if (!qword_1EB54CAC8)
  {
    ExistentialTypeMetadata = swift_getExistentialTypeMetadata();
    atomic_store(ExistentialTypeMetadata, &qword_1EB54CAC8);
    return ExistentialTypeMetadata;
  }

  return v2;
}

uint64_t sub_1AC2AD2DC()
{
  v4 = qword_1EB54CAD0;
  if (!qword_1EB54CAD0)
  {
    sub_1AC30A04C();
    v3 = sub_1AC30A06C();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB54CAD0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2AD3C8()
{
  v6 = sub_1AC239754();
  if (v0 <= 0x3F)
  {
    v6 = sub_1AC2397F8();
    if (v1 <= 0x3F)
    {
      v6 = sub_1AC23AFFC();
      if (v2 <= 0x3F)
      {
        v6 = sub_1AC23AF60();
        if (v3 <= 0x3F)
        {
          v6 = sub_1AC2AD534();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v6;
}

uint64_t sub_1AC2AD534()
{
  v4 = qword_1EB54CAD8;
  if (!qword_1EB54CAD8)
  {
    v3 = sub_1AC30A6DC();
    v4 = v3;
    if (!v0)
    {
      v1 = v3;
      atomic_store(v3, &qword_1EB54CAD8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC2AD5C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 16))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*a1 < 0x100000000uLL)
      {
        v3 = *a1;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC2AD70C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1AC2AD8F0()
{
  v2 = qword_1EB54CAE0;
  if (!qword_1EB54CAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CAE8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CAE0);
    return WitnessTable;
  }

  return v2;
}

__n128 __swift_memcpy32_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC2AD98C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 32))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AC2ADA94(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3)
    {
      *(result + 32) = 1;
    }
  }

  else if (a3)
  {
    *(result + 32) = 0;
  }

  return result;
}

unint64_t sub_1AC2ADC5C()
{
  v2 = qword_1EB54CB00;
  if (!qword_1EB54CB00)
  {
    type metadata accessor for CategoryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2ADD0C()
{
  v2 = qword_1EB54CB08;
  if (!qword_1EB54CB08)
  {
    type metadata accessor for CategoryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2ADDA4()
{
  v2 = qword_1EB54CB10;
  if (!qword_1EB54CB10)
  {
    type metadata accessor for CategoryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2ADE24()
{
  v2 = qword_1EB54CB18;
  if (!qword_1EB54CB18)
  {
    type metadata accessor for CategoryOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2ADEA4()
{
  v2 = qword_1EB54CB20;
  if (!qword_1EB54CB20)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2ADF1C()
{
  v4 = *(type metadata accessor for FitTestLoopingVideoPlayer() - 8);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v5 = v6 + *(v4 + 64);
  v1 = *(sub_1AC30A0DC() - 8);
  v2 = v0 + ((v5 + *(v1 + 80)) & ~*(v1 + 80));

  return sub_1AC2A971C(v0 + v6, v2);
}

uint64_t sub_1AC2AE000(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for FitTestLoopingVideoPlayer() - 8);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v7 = v8 + *(v6 + 64);
  v3 = sub_1AC30A0DC();
  v4 = v2 + ((v7 + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_1AC2A9C10(a1, a2, v2 + v8, v4);
}

void *sub_1AC2AE0F8(void *a1)
{
  MEMORY[0x1E69E5920](*a1);
  if (a1[2])
  {
  }

  if (a1[4])
  {
  }

  return a1;
}

unint64_t sub_1AC2AE16C()
{
  v2 = qword_1EB54CB28;
  if (!qword_1EB54CB28)
  {
    type metadata accessor for FitVideoTipSection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2AE1EC(uint64_t a1)
{
  v4 = type metadata accessor for FitVideoTipSection();
  v3 = *(v4 + 20);
  v1 = sub_1AC30901C();
  (*(*(v1 - 8) + 8))(a1 + v3);

  if (*(a1 + *(v4 + 36)))
  {
  }

  return a1;
}

char *sub_1AC2AE2FC(char *a1, char *a2)
{
  *a2 = *a1;
  v21 = type metadata accessor for FitVideoTipSection();
  v12 = v21[5];
  v2 = sub_1AC30901C();
  (*(*(v2 - 8) + 16))(&a2[v12], &a1[v12]);
  v3 = v21[6];
  v13 = &a2[v3];
  *&a2[v3] = *&a1[v3];
  v14 = *&a1[v3 + 8];

  *(v13 + 1) = v14;
  v4 = v21[7];
  v15 = &a2[v4];
  *&a2[v4] = *&a1[v4];
  v16 = *&a1[v4 + 8];

  *(v15 + 1) = v16;
  v5 = v21[8];
  v19 = &a2[v5];
  *&a2[v5] = *&a1[v5];
  v20 = *&a1[v5 + 8];

  *(v19 + 1) = v20;
  v22 = v21[9];
  if (*&a1[v22])
  {
    v10 = *&a1[v22];
    v11 = *&a1[v22 + 8];

    v6 = &a2[v22];
    *v6 = v10;
    *(v6 + 1) = v11;
  }

  else
  {
    *&a2[v22] = *&a1[v22];
  }

  v8 = v21[10];
  v9 = *&a1[v8];

  result = a2;
  *&a2[v8] = v9;
  return result;
}

void *sub_1AC2AE514(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

void *sub_1AC2AE624(void *a1, void *a2)
{
  v10 = *a1;
  MEMORY[0x1E69E5928](*a1);
  *a2 = v10;
  v11 = a1[1];
  MEMORY[0x1E69E5928](v11);
  a2[1] = v11;
  a2[2] = a1[2];
  v13 = type metadata accessor for FitTestLoopingVideoPlayer();
  v14 = *(v13 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_1AC30A02C();
    (*(*(v2 - 8) + 16))();
  }

  else
  {
    v9 = *(a1 + v14);

    *(a2 + v14) = v9;
  }

  swift_storeEnumTagMultiPayload();
  v3 = *(v13 + 32);
  v7 = a2 + v3;
  *(a2 + v3) = *(a1 + v3);
  v8 = *(a1 + v3 + 8);

  *(v7 + 1) = v8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C9A8);
  memcpy(a2 + *(v4 + 36), a1 + *(v4 + 36), 0x30uLL);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C990);
  memcpy(a2 + *(v5 + 36), a1 + *(v5 + 36), 0x70uLL);
  return a2;
}

unint64_t sub_1AC2AE84C()
{
  v2 = qword_1EB54CB58;
  if (!qword_1EB54CB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CB50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AE8D4()
{
  v2 = qword_1EB54CB68;
  if (!qword_1EB54CB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CB60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2AE95C(uint64_t a1)
{
  sub_1AC207F7C(*(a1 + 24), *(a1 + 32), *(a1 + 40) & 1);

  sub_1AC207F7C(*(a1 + 56), *(a1 + 64), *(a1 + 72) & 1);

  return a1;
}

unint64_t sub_1AC2AE9C8()
{
  v2 = qword_1EB54CB78;
  if (!qword_1EB54CB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CB70);
    sub_1AC2AE8D4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AEA6C()
{
  v2 = qword_1EB54CB80;
  if (!qword_1EB54CB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CB40);
    sub_1AC2AEB10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AEB10()
{
  v2 = qword_1EB54CB88;
  if (!qword_1EB54CB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CB38);
    sub_1AC2AEBB4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AEBB4()
{
  v2 = qword_1EB54CB90;
  if (!qword_1EB54CB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CB30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CB90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2AEC3C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB40);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB98) + 44);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0);
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

_BYTE *sub_1AC2AED1C(_BYTE *a1, _BYTE *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB40);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB48);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB98);
    v8 = &a2[*(v2 + 44)];
    v7 = &a1[*(v2 + 44)];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0);
    (*(*(v3 - 8) + 32))(v8, v7);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB38);
    memcpy(&a2[*(v4 + 36)], &a1[*(v4 + 36)], 0x29uLL);
    memcpy(&a2[*(v11 + 36)], &a1[*(v11 + 36)], 0x29uLL);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

uint64_t sub_1AC2AEF14(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1AC207E00(v3, v4, v5 & 1);
  *(a2 + 24) = v3;
  *(a2 + 32) = v4;
  *(a2 + 40) = v5 & 1;
  v6 = *(a1 + 48);

  *(a2 + 48) = v6;
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  sub_1AC207E00(v7, v8, v9 & 1);
  *(a2 + 56) = v7;
  *(a2 + 64) = v8;
  *(a2 + 72) = v9 & 1;
  v11 = *(a1 + 80);

  *(a2 + 80) = v11;
  memcpy((a2 + 88), (a1 + 88), 0x29uLL);
  return a2;
}

_BYTE *sub_1AC2AF038(_BYTE *a1, _BYTE *a2)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB40);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(a1, 1))
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB48);
    memcpy(a2, a1, *(*(v5 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    a2[16] = a1[16];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB98);
    v8 = &a2[*(v2 + 44)];
    v7 = &a1[*(v2 + 44)];
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0);
    (*(*(v3 - 8) + 16))(v8, v7);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB38);
    memcpy(&a2[*(v4 + 36)], &a1[*(v4 + 36)], 0x29uLL);
    memcpy(&a2[*(v11 + 36)], &a1[*(v11 + 36)], 0x29uLL);
    (*(v12 + 56))(a2, 0, 1, v11);
  }

  return a2;
}

unint64_t sub_1AC2AF230()
{
  v2 = qword_1EB54CBA8;
  if (!qword_1EB54CBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CB48);
    sub_1AC2AEA6C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CBA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AF2D0()
{
  v2 = qword_1EB54CBB0;
  if (!qword_1EB54CBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CBA0);
    sub_1AC2AF368();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CBB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AF368()
{
  v2 = qword_1EB54CBB8;
  if (!qword_1EB54CBB8)
  {
    sub_1AC309ACC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CBB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2AF3E8(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB98) + 44);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0);
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_1AC2AF474(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB98) + 44);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CBA0);
  (*(*(v2 - 8) + 16))(a2 + v6, a1 + v6);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB38);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CB40);
  memcpy((a2 + *(v4 + 36)), (a1 + *(v4 + 36)), 0x29uLL);
  return a2;
}

unint64_t sub_1AC2AF5A0()
{
  v2 = qword_1EB54CBC0;
  if (!qword_1EB54CBC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CBC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AF628()
{
  v2 = qword_1EB54CBD8;
  if (!qword_1EB54CBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CBD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CBD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2AF6BC()
{
  v2 = qword_1EB54CBE8;
  if (!qword_1EB54CBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CBE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CBE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2AF744(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1AC207E00(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v8 = *(a1 + 24);

  result = a2;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1AC2AF7CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 16))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1AC2AF8D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (a3)
    {
      *(result + 16) = 1;
    }
  }

  else if (a3)
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t type metadata accessor for CGSize()
{
  v4 = qword_1EB54CBF0;
  if (!qword_1EB54CBF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CBF0);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for CGPoint()
{
  v4 = qword_1EB54CBF8;
  if (!qword_1EB54CBF8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CBF8);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC2AFBE8(uint64_t a1)
{
  v3 = sub_1AC30917C();
  [v3 gapaFlags];
  MEMORY[0x1E69E5920](v3);
  type metadata accessor for CBGAPAFlags();
  sub_1AC2AFD48();
  LOBYTE(v4) = 1;
  HIBYTE(v4) = sub_1AC30B27C() & 1;
  return v4;
}

uint64_t type metadata accessor for CBGAPAFlags()
{
  v4 = qword_1EB54CC18;
  if (!qword_1EB54CC18)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CC18);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2AFD48()
{
  v2 = qword_1EB54CC00;
  if (!qword_1EB54CC00)
  {
    type metadata accessor for CBGAPAFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2AFDC8(uint64_t a1, uint64_t a2)
{
  v23 = a1;
  v9[1] = a2;
  v22 = sub_1AC2B0588;
  v33 = sub_1AC2B0590;
  v51 = 0;
  v50 = 0;
  v49 = 0;
  v37 = 0;
  v31 = sub_1AC30A90C();
  v14 = *(v31 - 8);
  v15 = v31 - 8;
  v9[0] = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v30 = v9 - v9[0];
  v39 = sub_1AC309AAC();
  v19 = *(v39 - 8);
  v20 = v39 - 8;
  v10 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23);
  v42 = v9 - v10;
  v51 = v3;
  v50 = v4;
  v49 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
  v11 = MEMORY[0x1E69A2B08];
  v12 = sub_1AC205220();
  v13 = v5;
  sub_1AC205220();
  v21 = sub_1AC309D3C();
  v48[4] = v25;
  v32 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v26 = type metadata accessor for CounterfitDetectionFeature();
  v27 = &off_1F20F8148;
  v16 = sub_1AC215DE8(v30, v26);
  v17 = v6;
  v29 = *(v14 + 8);
  v28 = v14 + 8;
  v29(v30, v31);
  v18 = v48;
  memset(v48, 0, 32);
  sub_1AC20599C();
  v38 = 13;
  sub_1AC309A9C();
  v24 = sub_1AC309D1C();
  v41 = *(v19 + 8);
  v40 = v19 + 8;
  v41(v42, v39);

  MEMORY[0x1E69E5928](v23);
  v46 = v23;
  v43 = sub_1AC309D0C();
  MEMORY[0x1E69E5920](v23);

  v47[4] = v25;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v34 = sub_1AC215DE8(v30, v26);
  v35 = v7;
  v29(v30, v31);
  v36 = v47;
  memset(v47, 0, 32);
  sub_1AC20599C();
  sub_1AC309A9C();
  v44 = sub_1AC309D1C();
  v41(v42, v39);

  v45 = sub_1AC309D2C();

  return v45;
}

uint64_t sub_1AC2B0378(void *a1, uint64_t a2)
{
  sub_1AC309B7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC40);
  v8 = sub_1AC30B19C();
  v6 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC30A92C();
  v7 = sub_1AC30A91C();

  [a1 setProperty:v8 forKey:{v7, MEMORY[0x1E69E5920](v6).n128_f64[0]}];
  MEMORY[0x1E69E5920](v7);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C820);
  sub_1AC30B18C();
  v10 = v2;
  *v2 = sub_1AC309B6C();
  v10[1] = v3;
  MEMORY[0x1E69E5928](a2);
  v10[5] = sub_1AC3095DC();
  v10[2] = a2;
  v10[6] = sub_1AC309B4C();
  v10[7] = v4;
  v10[11] = &type metadata for CounterFitUseCase;
  sub_1AC206300();
  sub_1AC30A83C();
  v12 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2B0590()
{
  v12 = "Fatal error";
  v13 = "Unexpectedly found nil while unwrapping an Optional value";
  v14 = "HeadphoneSettingsUI/CounterfitDetectionFeature.swift";
  v26 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v15 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v23 = v6 - v15;
  v25 = sub_1AC30901C();
  v21 = *(v25 - 8);
  v22 = v25 - 8;
  v16 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v17 = v6 - v16;
  v18 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6 - v16);
  v19 = v6 - v18;
  v26 = v6 - v18;
  v24 = 1;
  sub_1AC30A9DC();
  v20 = v2;
  sub_1AC30900C();

  if ((*(v21 + 48))(v23, v24, v25) == 1)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v3 = v17;
  (*(v21 + 32))(v19, v23, v25);
  v9 = [objc_opt_self() sharedApplication];
  (*(v21 + 16))(v3, v19, v25);
  v8 = sub_1AC308FEC();
  v11 = *(v21 + 8);
  v10 = v21 + 8;
  v11(v17, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C320);
  v6[0] = 0;
  v6[1] = sub_1AC30B18C();
  v6[2] = type metadata accessor for OpenExternalURLOptionsKey();
  v6[4] = sub_1AC247EC4();
  v6[3] = MEMORY[0x1E69E7CA0] + 8;
  v6[5] = sub_1AC30A83C();
  v7 = sub_1AC30A81C();

  [v9 openURL:v8 options:v7 completionHandler:0];
  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  v4 = MEMORY[0x1E69E5920](v9);
  return (v11)(v19, v25, v4);
}

uint64_t sub_1AC2B0998()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t CounterFitUseCase.localizedStrings(_:)(uint64_t a1)
{
  v19 = a1;
  v32 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v24 = sub_1AC30A90C();
  v10 = *(v24 - 8);
  v11 = v24 - 8;
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v22 = v6 - v9;
  v32 = v1;
  v16 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v17 = &type metadata for CounterFitUseCase;
  v18 = &off_1F20F8150;
  v12 = sub_1AC215DE8(v22, &type metadata for CounterFitUseCase);
  v13 = v2;
  v21 = *(v10 + 8);
  v20 = v10 + 8;
  v21(v22, v24);
  v30 = v12;
  v31 = v13;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v14 = sub_1AC215DE8(v22, v17);
  v15 = v3;
  v21(v22, v24);
  v28 = v14;
  v29 = v15;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v23 = sub_1AC215DE8(v22, v17);
  v25 = v4;
  v21(v22, v24);
  v26 = sub_1AC30917C();
  v27 = [v26 productID];
  MEMORY[0x1E69E5920](v26);
  if (CBProductIDIsAirPods(v27))
  {

    v7 = v12;
    v8 = v13;
  }

  else
  {

    v7 = v14;
    v8 = v15;
  }

  v6[2] = v8;
  v6[1] = v7;

  return v23;
}

uint64_t CBProductIDIsAirPods(int a1)
{
  switch(a1)
  {
    case 8194:
      v2 = 1;
      break;
    case 8202:
      v2 = 1;
      break;
    case 8206:
      v2 = 1;
      break;
    case 8207:
      v2 = 1;
      break;
    case 8211:
      v2 = 1;
      break;
    case 8212:
      v2 = 1;
      break;
    case 8217:
      v2 = 1;
      break;
    case 8219:
      v2 = 1;
      break;
    case 8222:
      v2 = 1;
      break;
    case 8223:
      v2 = 1;
      break;
    case 8224:
      v2 = 1;
      break;
    case 8228:
      v2 = 1;
      break;
    case 8231:
      v2 = 1;
      break;
    case 8232:
      v2 = 1;
      break;
    default:
      v2 = 0;
      break;
  }

  return v2 & 1;
}

uint64_t CounterFitUseCase.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1AC2B0F94()
{
  v2 = qword_1EB54CC08;
  if (!qword_1EB54CC08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2B10FC@<X0>(uint64_t *a1@<X8>)
{
  result = CounterFitUseCase.rawValue.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1AC2B1158()
{
  v2 = qword_1EB54CC10;
  if (!qword_1EB54CC10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2B11E8()
{
  sub_1AC2AFD48();
  sub_1AC2656B4();
  return sub_1AC30B2EC();
}

uint64_t sub_1AC2B13EC()
{
  sub_1AC2AFD48();
  sub_1AC2656B4();
  return sub_1AC30B2DC();
}

uint64_t sub_1AC2B1430()
{
  sub_1AC2AFD48();
  sub_1AC2656B4();
  return sub_1AC30B2BC();
}

uint64_t sub_1AC2B1474()
{
  sub_1AC2AFD48();
  sub_1AC2656B4();
  return sub_1AC30B2CC();
}

unint64_t sub_1AC2B155C()
{
  v2 = qword_1EB54CC20;
  if (!qword_1EB54CC20)
  {
    type metadata accessor for CBGAPAFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B15F4()
{
  v2 = qword_1EB54CC28;
  if (!qword_1EB54CC28)
  {
    type metadata accessor for CBGAPAFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B168C()
{
  v2 = qword_1EB54CC30;
  if (!qword_1EB54CC30)
  {
    type metadata accessor for CBGAPAFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B1724()
{
  v2 = qword_1EB54CC38;
  if (!qword_1EB54CC38)
  {
    type metadata accessor for CBGAPAFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC38);
    return WitnessTable;
  }

  return v2;
}

uint64_t SpatialFeatureContent.removeAccessoryFromEar.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_removeAccessoryFromEar);

  return v2;
}

uint64_t SpatialFeatureContent.putAccesssoryInEar.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_putAccesssoryInEar);

  return v2;
}

_BYTE *SpatialFeatureContent.init(removeString:putInEarString:forceFitTest:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v20 = 0;
  v18 = a1;
  v19 = a2;
  v16 = a3;
  v17 = a4;
  v15 = a5 & 1;

  v5 = OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_removeAccessoryFromEar;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_removeAccessoryFromEar = a1;
  *(v5 + 8) = a2;

  v6 = &v20[OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_putAccesssoryInEar];
  *v6 = a3;
  v6[1] = a4;
  v20[OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_allowForceFitTest] = a5;
  v14.receiver = v20;
  v14.super_class = type metadata accessor for SpatialFeatureContent();
  v13 = objc_msgSendSuper2(&v14, sel_init);
  MEMORY[0x1E69E5928](v13);
  v20 = v13;

  MEMORY[0x1E69E5920](v20);
  return v13;
}

id SpatialFeatureContent.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpatialFeatureContent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1AC2B1E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a1;
  v29 = a2;
  v27 = a3;
  v28 = a4;
  v7 = sub_1AC30917C();
  v8 = [v7 deviceFlags];
  MEMORY[0x1E69E5920](v7);
  v26 = v8;
  v25 = 0x10000000;
  type metadata accessor for CBDeviceFlags();
  sub_1AC2B4DE4();
  v9 = sub_1AC30B27C();
  v24 = v9 & 1;
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v10);
  v23 = v11;
  v22 = 6;
  type metadata accessor for UIUserInterfaceIdiom();
  sub_1AC2052F0();
  v12 = sub_1AC30B1BC();
  v21 = v12 & 1;
  sub_1AC30929C();
  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC68);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
    }
  }

  else
  {
    sub_1AC204664(v14);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  v6 = v19 != 0;
  if (v9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v12;
  }

  sub_1AC204664(&v16);
  LOBYTE(v13) = v6;
  HIBYTE(v13) = v5 & 1;
  return v13;
}

uint64_t sub_1AC2B2098(void *a1, void *a2, void *a3, uint64_t a4)
{
  v69 = a4;
  v68 = a3;
  v70 = a2;
  v62 = a1;
  v63 = 0;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v88 = 0;
  v75 = 0;
  v64 = sub_1AC309AAC();
  v65 = *(v64 - 8);
  v66 = v65;
  MEMORY[0x1EEE9AC00](0);
  v67 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AC30A90C();
  v72 = *(v71 - 8);
  v73 = v72;
  MEMORY[0x1EEE9AC00](v71 - 8);
  v74 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a1;
  v90 = v7;
  v88 = v8;
  v89 = v9;
  sub_1AC30929C();
  if (v79)
  {
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC68);
    if (!swift_dynamicCast())
    {
      v80 = 0;
      v81 = 0;
      v82 = 0;
      v83 = 0;
      v84 = 0;
    }
  }

  else
  {
    sub_1AC204664(v78);
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v83 = 0;
    v84 = 0;
  }

  if (v83)
  {
    v58 = __dst;
    sub_1AC2051E4(&v80, __dst);
    v34[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
    v77[4] = v68;
    v77[5] = v69;
    v53 = 13;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v42 = &unk_1F20F82F0;
    v43 = &off_1F20F8280;
    v34[3] = sub_1AC215DE8(v74, &unk_1F20F82F0);
    v34[4] = v10;
    v45 = *(v73 + 8);
    v44 = v73 + 8;
    v45(v74, v71);
    sub_1AC205220();
    v34[6] = sub_1AC309D3C();

    v34[5] = v34;
    MEMORY[0x1EEE9AC00](v34);
    v32 = v68;
    v33 = v11;
    v41 = sub_1AC309CDC();

    v37 = objc_opt_self();
    v36 = v86;
    v35 = v87;
    __swift_project_boxed_opaque_existential_1(v58, v86);
    v38 = (*(v35 + 8))(v36);
    v39 = [v37 profileManagementSpecifier_];
    swift_unknownObjectRelease();
    v52 = 0;
    v77[3] = sub_1AC215CB0();
    v77[0] = v39;
    v40 = v77;
    v56 = sub_1AC309CFC();
    __swift_destroy_boxed_opaque_existential_1(v40);

    v76[9] = v68;
    v76[10] = v69;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v50 = sub_1AC215DE8(v74, v42);
    v51 = v12;
    v45(v74, v71);
    v76[5] = v52;
    v76[6] = v52;
    v76[7] = v52;
    v76[8] = v52;
    v47 = 7;
    v55 = swift_allocObject();
    v46 = v55 + 16;
    v13 = v70;
    swift_unknownObjectWeakInit();

    v14 = v62;
    v48 = v76;
    sub_1AC241BFC(v58, v76);

    v15 = swift_allocObject();
    v16 = v62;
    v17 = v15;
    v18 = v48;
    v49 = v17;
    v17[2] = v55;
    v17[3] = v16;
    sub_1AC2051E4(v18, v17 + 4);
    v19 = v69;
    v20 = v49;
    v49[9] = v68;
    v20[10] = v19;
    v21 = sub_1AC20599C();
    v54 = &v24;
    v32 = v49;
    v31 = sub_1AC2B4E70;
    v30 = v52;
    v29 = v52;
    v28 = v52;
    v27 = v52;
    v26 = v52;
    v25 = v21 & 1;
    v24 = v52;
    sub_1AC309A9C();

    v22 = sub_1AC309D1C();
    v57 = v22;
    (*(v66 + 8))(v67, v64);

    v75 = v22;
    v59 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v58);
    return v59;
  }

  else
  {
    sub_1AC204664(&v80);
    v34[0] = 0;
    v34[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC2B273C(void *a1, uint64_t a2, uint64_t a3)
{
  v159 = a1;
  v94 = a2;
  v95 = a3;
  v139 = sub_1AC2B34B0;
  v140 = sub_1AC2B38D0;
  v192 = 0;
  v190 = 0;
  v191 = 0;
  v186 = 0;
  v187 = 0;
  v183 = 0;
  v184 = 0;
  v180 = 0;
  v181 = 0;
  v179 = 0;
  v172 = 0;
  v169 = 0;
  v168 = 0;
  v142 = 0;
  v107 = sub_1AC30A8EC();
  v92 = *(v107 - 8);
  v93 = v107 - 8;
  v82 = (v92[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v111 = &v81 - v82;
  v83 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v104 = &v81 - v83;
  v84 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v110 = &v81 - v84;
  v117 = sub_1AC30A90C();
  v86 = *(v117 - 8);
  v87 = v117 - 8;
  v85 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v159);
  v116 = &v81 - v85;
  v192 = v7;
  v190 = v8;
  v191 = v9;
  v188 = v8;
  v189 = v9;
  v151 = 1;
  sub_1AC30A9DC();
  sub_1AC30A8AC();
  v112 = &unk_1F20F82F0;
  v113 = &off_1F20F8280;
  v125 = sub_1AC215DE8(v116, &unk_1F20F82F0);
  v167 = v10;
  v115 = *(v86 + 8);
  v114 = v86 + 8;
  v115(v116, v117);
  v186 = v125;
  v187 = v167;
  v90 = v185;
  v185[0] = v94;
  v185[1] = v95;
  v88 = 115;
  v96 = 1;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v89 = v11;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  v99 = "";
  sub_1AC30A9DC();
  v91 = v12;
  sub_1AC30A8CC();

  v103 = v92[2];
  v102 = v92 + 2;
  v103(v104, v110, v107);
  v106 = v92[4];
  v105 = v92 + 4;
  v106(v111, v104, v107);
  v109 = v92[1];
  v108 = v92 + 1;
  v109(v110, v107);
  sub_1AC30A8FC();
  v120 = sub_1AC215DE8(v116, v112);
  v166 = v13;
  v115(v116, v117);
  v183 = v120;
  v184 = v166;
  v100 = v182;
  v182[0] = v94;
  v182[1] = v95;
  v97 = 89;
  sub_1AC30A8DC();
  sub_1AC30A9DC();
  v98 = v14;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC();
  v101 = v15;
  sub_1AC30A8CC();

  v103(v104, v110, v107);
  v106(v111, v104, v107);
  v109(v110, v107);
  sub_1AC30A8FC();
  v124 = sub_1AC215DE8(v116, v112);
  v165 = v16;
  v115(v116, v117);
  v180 = v124;
  v181 = v165;
  v138 = 2;
  v155 = MEMORY[0x1E69E6158];
  v118 = sub_1AC30B18C();
  v119 = v17;

  v18 = v119;
  v19 = v166;
  *v119 = v120;
  v18[1] = v19;

  v20 = v118;
  v21 = v119;
  v22 = v165;
  v119[2] = v124;
  v21[3] = v22;
  sub_1AC206300();
  v164 = v20;
  v179 = v20;
  v131 = sub_1AC30B18C();
  v130 = v23;

  v122 = sub_1AC30A91C();

  v121 = sub_1AC30A91C();

  v126 = 0x1FB935000uLL;
  v177 = [v122 0x1FB9358F1];
  v178 = v24;
  v123.location = v177;
  v123.length = v24;
  MEMORY[0x1E69E5920](v121);
  MEMORY[0x1E69E5920](v122);

  v176 = v123;
  v133 = NSStringFromRange(v123);
  v25 = sub_1AC30A92C();
  v26 = v130;
  *v130 = v25;
  v26[1] = v27;

  v128 = sub_1AC30A91C();

  v127 = sub_1AC30A91C();

  v174 = [v128 (v126 + 2289)];
  v175 = v28;
  v129.location = v174;
  v129.length = v28;
  MEMORY[0x1E69E5920](v127);
  MEMORY[0x1E69E5920](v128);

  v173 = v129;
  v132 = NSStringFromRange(v129);
  v29 = sub_1AC30A92C();
  v30 = v130;
  v31 = v29;
  v32 = v131;
  v130[2] = v31;
  v30[3] = v33;
  sub_1AC206300();
  v163 = v32;
  MEMORY[0x1E69E5920](v132);
  MEMORY[0x1E69E5920](v133);
  v172 = v163;
  v136 = sub_1AC2B52BC();
  v137 = sub_1AC30B18C();
  v135 = v34;
  v134 = sub_1AC2B5320();
  v35 = sub_1AC20D658();
  v171[3] = v134;
  v171[0] = v35;
  v36 = sub_1AC2B3344(v171);
  *v135 = v36;
  v37 = sub_1AC20D658();
  v170[3] = v134;
  v170[0] = v37;
  v38 = sub_1AC2B3344(v170);
  v39 = v137;
  v135[1] = v38;
  sub_1AC206300();
  v162 = v39;
  v169 = v39;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCB8);
  v40 = sub_1AC30B18C();
  v41 = v140;
  *v42 = v139;
  v42[1] = 0;
  v42[2] = v41;
  v42[3] = 0;
  sub_1AC206300();
  v161 = v40;
  v168 = v40;
  v149 = sub_1AC309CCC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v144 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1AC30A92C();
  v143 = v44;
  v148 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v144);
  v146 = *MEMORY[0x1E69C58D8];
  MEMORY[0x1E69E5928](v146);
  sub_1AC30A92C();
  v145 = v45;
  v147 = sub_1AC30A91C();

  *&v46 = MEMORY[0x1E69E5920](v146).n128_u64[0];
  [v159 setProperty:v148 forKey:{v147, v46}];
  MEMORY[0x1E69E5920](v147);
  swift_unknownObjectRelease();
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C820);
  v153 = sub_1AC30B18C();
  v152 = v47;
  v48 = sub_1AC309CAC();
  v49 = v152;
  *v152 = v48;
  v49[1] = v50;

  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8);
  v52 = v152;
  v53 = v51;
  v54 = v164;
  v150 = v53;
  v152[5] = v53;
  v52[2] = v54;
  v55 = sub_1AC309CBC();
  v56 = v152;
  v152[6] = v55;
  v56[7] = v57;

  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCC0);
  v59 = v152;
  v60 = v58;
  v61 = v162;
  v152[11] = v60;
  v59[8] = v61;
  v62 = sub_1AC309C8C();
  v63 = v152;
  v152[12] = v62;
  v63[13] = v64;

  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCC8);
  v66 = v152;
  v67 = v65;
  v68 = v161;
  v152[17] = v67;
  v66[14] = v68;
  v69 = sub_1AC309C7C();
  v70 = v152;
  v152[18] = v69;
  v70[19] = v71;

  v72 = v163;
  v73 = v152;
  v152[23] = v150;
  v73[20] = v72;
  v74 = sub_1AC309C9C();
  v75 = v152;
  v152[24] = v74;
  v75[25] = v76;
  v77 = sub_1AC30A9DC();
  v78 = v152;
  v152[29] = v155;
  v78[26] = v77;
  v78[27] = v79;
  sub_1AC206300();
  v156 = MEMORY[0x1E69E7CA0] + 8;
  v157 = MEMORY[0x1E69E6168];
  v158 = sub_1AC30A83C();
  v160 = sub_1AC30A81C();

  [v159 setUserInfo_];
  swift_unknownObjectRelease();
}

id sub_1AC2B3344(void *a1)
{
  v13 = a1;
  if (a1[3])
  {
    v8 = v13[3];
    __swift_project_boxed_opaque_existential_1(v13, v8);
    v6 = *(v8 - 8);
    v7 = v6;
    v10 = v4;
    v1 = MEMORY[0x1EEE9AC00](v4);
    v9 = v4 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v1);
    v11 = sub_1AC30B19C();
    (*(v7 + 8))(v9, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v4[1] = v12;
  v5 = [swift_getObjCClassFromMetadata() valueWithNonretainedObject_];
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1AC2B34B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v43[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v23 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v14[-v23];
  v36 = sub_1AC30901C();
  v32 = *(v36 - 8);
  v33 = v36 - 8;
  v27 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v14[-v27];
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v14[-v29];
  v42 = &v14[-v29];
  v41 = *v6;
  v40 = v7;
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;
  v35 = 1;
  sub_1AC30A9DC();
  v31 = v10;
  sub_1AC30900C();

  if ((*(v32 + 48))(v34, v35, v36) == 1)
  {
    return sub_1AC247D84(v34);
  }

  (*(v32 + 32))(v30, v34, v36);
  v43[0] = 0;
  v22 = [objc_opt_self() defaultWorkspace];
  if (v22)
  {
    v21 = v22;
    v19 = v22;
    (*(v32 + 16))(v28, v30, v36);
    v18 = sub_1AC308FEC();
    (*(v32 + 8))(v28, v36);
    v37 = v43[0];
    v20 = [v19 openSensitiveURL:v18 withOptions:0 error:&v37];
    v17 = v37;
    MEMORY[0x1E69E5928](v37);
    v12 = v43[0];
    v43[0] = v17;
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v18);
    v13 = MEMORY[0x1E69E5920](v19);
    if ((v20 & 1) == 0)
    {
      v15 = v43[0];
      v16 = sub_1AC308FDC();
      MEMORY[0x1E69E5920](v15);
      swift_willThrow();
    }
  }

  else
  {
    sub_1AC206988(v43);
  }

  return (*(v32 + 8))(v30, v36, v13);
}

uint64_t sub_1AC2B38D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v43[1] = *MEMORY[0x1E69E9840];
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v38 = 0;
  v39 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0);
  v23 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v14[-v23];
  v36 = sub_1AC30901C();
  v32 = *(v36 - 8);
  v33 = v36 - 8;
  v27 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v14[-v27];
  v29 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v14[-v29];
  v42 = &v14[-v29];
  v41 = *v6;
  v40 = v7;
  v9 = v8[1];
  v38 = *v8;
  v39 = v9;
  v35 = 1;
  sub_1AC30A9DC();
  v31 = v10;
  sub_1AC30900C();

  if ((*(v32 + 48))(v34, v35, v36) == 1)
  {
    return sub_1AC247D84(v34);
  }

  (*(v32 + 32))(v30, v34, v36);
  v43[0] = 0;
  v22 = [objc_opt_self() defaultWorkspace];
  if (v22)
  {
    v21 = v22;
    v19 = v22;
    (*(v32 + 16))(v28, v30, v36);
    v18 = sub_1AC308FEC();
    (*(v32 + 8))(v28, v36);
    v37 = v43[0];
    v20 = [v19 openSensitiveURL:v18 withOptions:0 error:&v37];
    v17 = v37;
    MEMORY[0x1E69E5928](v37);
    v12 = v43[0];
    v43[0] = v17;
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v18);
    v13 = MEMORY[0x1E69E5920](v19);
    if ((v20 & 1) == 0)
    {
      v15 = v43[0];
      v16 = sub_1AC308FDC();
      MEMORY[0x1E69E5920](v15);
      swift_willThrow();
    }
  }

  else
  {
    sub_1AC206988(v43);
  }

  return (*(v32 + 8))(v30, v36, v13);
}

uint64_t sub_1AC2B3CF0(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v99 = a5;
  v98 = a4;
  v97 = a3;
  v102 = a2;
  v101 = a1;
  v100 = 0;
  v130 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v122 = 0;
  v121 = 0;
  v92 = 0;
  v115 = 0;
  v113 = 0;
  v93 = sub_1AC30A90C();
  v94 = *(v93 - 8);
  v95 = v94;
  MEMORY[0x1EEE9AC00](0);
  v96 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1AC309E6C();
  v104 = *(v103 - 8);
  v105 = v104;
  v106 = *(v104 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v107 = &v26 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v6 + 16;
  v108 = v6 + 16;
  v130 = v6 + 16;
  v129 = v7;
  v128 = v8;
  v126 = v9;
  v127 = v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v90 = Strong;
    v11 = Strong;
    sub_1AC206988(&Strong);
    swift_endAccess();
    v91 = *&v90[OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics];
    v12 = v91;

    [v91 updateFeatureChangeCount_];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v84 = sub_1AC30917C();
  v85 = [v84 primaryPlacement];

  v124 = v85;
  v123 = 1;
  v87 = type metadata accessor for CBDevicePlacement();
  v86 = v87;
  v88 = sub_1AC281294();
  v89 = sub_1AC30B1BC();
  v13 = v102;
  if (v89)
  {
    v81 = sub_1AC30917C();
    v82 = [v81 secondaryPlacement];

    v111 = v82;
    v110 = 1;
    v83 = sub_1AC30B1BC();
  }

  else
  {
    v83 = 0;
  }

  v80 = v83;

  v122 = v80 & 1;
  if (v80)
  {
    v79 = [objc_opt_self() sharedInstance];
    if (v79)
    {
      v78 = v79;
    }

    else
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v76 = v78;
    sub_1AC2C85A0();
    v73 = v14;
    v74 = sub_1AC30A91C();

    v77 = [v76 deviceFromAddressString_];
    v75 = v77;

    if (v77)
    {
      v72 = v75;
      v64 = v75;
      v115 = v75;
      v65 = 0;
      v62 = sub_1AC2B51F4();
      v17 = v64;
      v61 = v97[3];
      v60 = v97[4];
      __swift_project_boxed_opaque_existential_1(v97, v61);
      v63 = (*(v60 + 8))(v61);
      v114[3] = type metadata accessor for SpatialFeatureContent();
      v114[0] = v63;
      v66 = sub_1AC2B4794(v64, v114);
      v113 = v66;
      swift_beginAccess();
      v18 = swift_unknownObjectWeakLoadStrong();
      v112[0] = v18;
      if (v18)
      {
        v59 = v112[0];
        v19 = v112[0];
        sub_1AC206988(v112);
        swift_endAccess();
        [v59 presentViewController:v66 animated:1 completion:0];
      }

      else
      {
        sub_1AC206988(v112);
        swift_endAccess();
      }

      return v92;
    }

    else
    {
      v15 = v107;
      v16 = sub_1AC29DCC0();
      (*(v105 + 16))(v15, v16, v103);
      v70 = sub_1AC309E4C();
      v67 = v70;
      v69 = sub_1AC30AD1C();
      v68 = v69;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
      v71 = sub_1AC30B18C();
      if (os_log_type_enabled(v70, v69))
      {
        v20 = v92;
        v49 = sub_1AC30AE6C();
        v45 = v49;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
        v47 = 0;
        v50 = sub_1AC213EE4(0);
        v48 = v50;
        v51 = sub_1AC213EE4(v47);
        v119 = v49;
        v118 = v50;
        v117 = v51;
        v52 = 0;
        v53 = &v119;
        sub_1AC213F38(0, &v119);
        sub_1AC213F38(v52, v53);
        v116 = v71;
        v54 = &v26;
        MEMORY[0x1EEE9AC00](&v26);
        v55 = &v26 - 6;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08);
        sub_1AC218014();
        sub_1AC30AAAC();
        v57 = v20;
        if (v20)
        {
          __break(1u);
        }

        else
        {
          _os_log_impl(&dword_1AC1C3000, v67, v68, "SpatialFeature Tutorial: Unable to convert to classic device", v45, 2u);
          v43 = 0;
          sub_1AC213F98(v48);
          sub_1AC213F98(v51);
          sub_1AC30AE4C();

          v44 = v57;
        }
      }

      else
      {

        v44 = v92;
      }

      v42 = v44;

      (*(v105 + 8))(v107, v103);
      return v42;
    }
  }

  else
  {
    v41 = 0;
    v30 = sub_1AC21E88C();
    v29 = v97[3];
    v28 = v97[4];
    __swift_project_boxed_opaque_existential_1(v97, v29);
    v31 = (*(v28 + 8))(v29);
    v32 = *&v31[OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_putAccesssoryInEar];
    v33 = *&v31[OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_putAccesssoryInEar + 8];

    v35 = 1;
    v21 = sub_1AC30A9DC();
    v39 = sub_1AC21CFE0(v32, v33, v21, v22, v35);
    v34 = v39;
    v121 = v39;
    v36 = sub_1AC21E8F0();
    v120[4] = v98;
    v120[5] = v99;
    sub_1AC30A9DC();
    sub_1AC30A8AC();
    v37 = sub_1AC215DE8(v96, &unk_1F20F82F0);
    v38 = v23;
    (*(v95 + 8))(v96, v93);
    v40 = sub_1AC21E3FC(v37, v38, v41, sub_1AC206344, v41);
    [v39 addAction_];

    swift_beginAccess();
    v120[0] = swift_unknownObjectWeakLoadStrong();
    if (v120[0])
    {
      v27 = v120[0];
      v24 = v120[0];
      sub_1AC206988(v120);
      swift_endAccess();
      [v27 presentViewController:v34 animated:1 completion:0];
    }

    else
    {
      sub_1AC206988(v120);
      swift_endAccess();
    }

    return v92;
  }
}

uint64_t sub_1AC2B47DC()
{
  v1 = sub_1AC30A9DC();

  sub_1AC2063F0();
  return v1;
}

id sub_1AC2B48B4(uint64_t a1, void *a2)
{
  v11 = a1;
  v10 = a2;
  v9 = a2[3];
  v2 = __swift_project_boxed_opaque_existential_1(a2, v9);
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v5[0] = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v8 = v5 - v5[0];
  (*(v6 + 16))(v3);
  v5[2] = sub_1AC30B19C();
  v12 = [v5[1] initWithDevice:v11 content:?];
  swift_unknownObjectRelease();
  (*(v6 + 8))(v8, v9);
  __swift_destroy_boxed_opaque_existential_1(v10);
  MEMORY[0x1E69E5920](v11);
  return v12;
}

uint64_t sub_1AC2B49F0()
{
  sub_1AC2B4DE4();
  sub_1AC2B517C();
  return sub_1AC30B2EC();
}

uint64_t sub_1AC2B4BF4()
{
  sub_1AC2B4DE4();
  sub_1AC2B517C();
  return sub_1AC30B2DC();
}

uint64_t sub_1AC2B4C38()
{
  sub_1AC2B4DE4();
  sub_1AC2B517C();
  return sub_1AC30B2BC();
}

uint64_t sub_1AC2B4C7C()
{
  sub_1AC2B4DE4();
  sub_1AC2B517C();
  return sub_1AC30B2CC();
}

uint64_t type metadata accessor for CBDeviceFlags()
{
  v4 = qword_1EB54CC70;
  if (!qword_1EB54CC70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CC70);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2B4DE4()
{
  v2 = qword_1EB54CC60;
  if (!qword_1EB54CC60)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B4F34()
{
  v2 = qword_1EB54CC78;
  if (!qword_1EB54CC78)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B4FCC()
{
  v2 = qword_1EB54CC80;
  if (!qword_1EB54CC80)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B5064()
{
  v2 = qword_1EB54CC88;
  if (!qword_1EB54CC88)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B50FC()
{
  v2 = qword_1EB54CC90;
  if (!qword_1EB54CC90)
  {
    type metadata accessor for CBDeviceFlags();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B517C()
{
  v2 = qword_1EB54CC98;
  if (!qword_1EB54CC98)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CC98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2B51F4()
{
  v2 = qword_1EB54CCA0;
  if (!qword_1EB54CCA0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CCA0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1AC2B52BC()
{
  v2 = qword_1EB54CCA8;
  if (!qword_1EB54CCA8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CCA8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2B5320()
{
  v2 = qword_1EB54CCB0;
  if (!qword_1EB54CCB0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CCB0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t type metadata accessor for _NSRange()
{
  v4 = qword_1EB54CCD0;
  if (!qword_1EB54CCD0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CCD0);
      return v1;
    }
  }

  return v4;
}

uint64_t static HPSUISpatialProfileFeedback.getDraftViewController()()
{
  v11 = 0;
  v10 = 0;
  v8 = 0;
  v6 = sub_1AC30A7BC();
  v4 = *(v6 - 8);
  v5 = v6 - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v2 - v3;
  v11 = v0;
  sub_1AC30A7DC();
  sub_1AC30A9DC();
  v9 = sub_1AC30A7AC();
  v10 = v9;
  (*(v4 + 104))(v7, *MEMORY[0x1E699C0F0], v6);
  sub_1AC30A7CC();
  sub_1AC30A7FC();
  return sub_1AC30A7EC();
}

id HPSUISpatialProfileFeedback.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for HPSUISpatialProfileFeedback();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id HPSUISpatialProfileFeedback.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSUISpatialProfileFeedback();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1AC2B56EC()
{
  sub_1AC30A9DC();
  v2 = sub_1AC30A91C();
  v3 = MGGetSInt32Answer();
  MEMORY[0x1E69E5920](v2);

  v1 = (v3 & 0x80000000) == 0 && v3 == 2;
  return !v1;
}

uint64_t sub_1AC2B57FC()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2B586C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC2B5974()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_bottomContainerImpl);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2B59E4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_bottomContainerImpl);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC2B5B58()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1AC2B5C24()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1AC2B5CF0()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_learnMoreView);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1AC2B5DBC()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1AC2B5E88()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1AC2B5F54()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1AC2B6020()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1AC2B60EC()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

uint64_t sub_1AC2B61B8()
{
  v1 = sub_1AC2B5974();
  v2 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v1);
  return v2;
}

BOOL sub_1AC2B6218()
{
  v38 = 0;
  v18 = sub_1AC30908C();
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v4 - v21;
  v38 = v0;
  v23 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection);
  v24 = &v37;
  swift_beginAccess();
  v25 = *v23;
  v26 = *(v23 + 8);
  swift_endAccess();
  if (v26)
  {
    v12 = sub_1AC30904C();
    v34 = v12;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8);
    sub_1AC29F6DC();
    sub_1AC30AC9C();
    v13 = v32;
    v14 = v33;

    v30 = v13;
    v31 = v14;
    if (v14)
    {
      v35 = v30;
      v36 = v31;
    }

    else
    {
      v35 = sub_1AC30A9DC();
      v36 = v1;
      if (v31)
      {
        sub_1AC2063F0();
      }
    }

    sub_1AC30906C();
    v7 = sub_1AC30907C();
    (*(v19 + 8))(v22, v18);
    v10 = &v29;
    v29 = v7;
    v8 = &v28;
    v28 = 2;
    v9 = type metadata accessor for LanguageDirection();
    sub_1AC2B65E8();
    v6 = (sub_1AC30B1BC() & 1) != 0;
    v5 = v6;
    v4[0] = v17 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection;
    v4[1] = &v27;
    swift_beginAccess();
    v2 = v4[0];
    *v4[0] = v5;
    *(v2 + 8) = 0;
    swift_endAccess();
    return v5;
  }

  else
  {
    v16 = v25;
    return v25;
  }
}

uint64_t type metadata accessor for LanguageDirection()
{
  v4 = qword_1EB54CDA0;
  if (!qword_1EB54CDA0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CDA0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2B65E8()
{
  v2 = qword_1EB54CD38;
  if (!qword_1EB54CD38)
  {
    type metadata accessor for LanguageDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CD38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2B6668(uint64_t a1)
{
  v4 = v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection;
  swift_beginAccess();
  *v4 = a1;
  *(v4 + 8) = 0;
  return swift_endAccess();
}

uint64_t (*sub_1AC2B66E4(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1AC2B6218();
  return sub_1AC2B6740;
}

double sub_1AC2B67A4()
{
  sub_1AC2B6218();
  type metadata accessor for UITraitEnvironmentLayoutDirection();
  sub_1AC2B6978();
  if (sub_1AC30B1BC())
  {
    [v6 bounds];
    v4 = v0;
    (MEMORY[0x1E69E5920])();
    return v4 / 2.0;
  }

  else
  {
    [v6 bounds];
    v3 = v1;
    (MEMORY[0x1E69E5920])();
    return -v3 / 2.0;
  }
}

uint64_t type metadata accessor for UITraitEnvironmentLayoutDirection()
{
  v4 = qword_1EB54CD98;
  if (!qword_1EB54CD98)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CD98);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2B6978()
{
  v2 = qword_1EB54CD40;
  if (!qword_1EB54CD40)
  {
    type metadata accessor for UITraitEnvironmentLayoutDirection();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CD40);
    return WitnessTable;
  }

  return v2;
}

double sub_1AC2B69F8()
{
  sub_1AC2B6218();
  type metadata accessor for UITraitEnvironmentLayoutDirection();
  sub_1AC2B6978();
  if (sub_1AC30B1BC())
  {
    [v6 bounds];
    v4 = v0;
    (MEMORY[0x1E69E5920])();
    return -v4 / 2.0;
  }

  else
  {
    [v6 bounds];
    v3 = v1;
    (MEMORY[0x1E69E5920])();
    return v3 / 2.0;
  }
}

uint64_t sub_1AC2B6B34()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_budInEarStringBlock);

  return v2;
}

char *HPSUISpatialProfileSingleStepBottomContainer.init(withBudsInEarString:)(uint64_t a1, uint64_t a2)
{
  v29 = 0;
  v27 = a1;
  v28 = a2;
  v5 = OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  type metadata accessor for HPSUISpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  *v5 = sub_1AC233694(0.0, 0.0, 0.0, 0.0);
  v6 = OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *&v29[v6] = sub_1AC233694(0.0, 0.0, 0.0, 0.0);
  v2 = &v29[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection];
  *v2 = 0;
  v2[8] = 1;

  v3 = &v29[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_budInEarStringBlock];
  *v3 = a1;
  *(v3 + 1) = a2;
  v26.receiver = v29;
  v26.super_class = type metadata accessor for HPSUISpatialProfileSingleStepBottomContainer();
  v25 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x1E69E5928](v25);
  v29 = v25;
  v8 = &v25[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl];
  swift_beginAccess();
  v9 = *v8;
  MEMORY[0x1E69E5928](*v8);
  swift_endAccess();
  [v9 0x1FAECA5BALL];
  MEMORY[0x1E69E5920](v9);
  v10 = &v29[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl];
  swift_beginAccess();
  v11 = *v10;
  MEMORY[0x1E69E5928](*v10);
  swift_endAccess();
  [v11 setAlpha_];
  MEMORY[0x1E69E5920](v11);
  v12 = &v29[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_bottomContainerImpl];
  swift_beginAccess();
  v13 = *v12;
  MEMORY[0x1E69E5928](*v12);
  swift_endAccess();
  [v13 0x1FAECA5BALL];
  MEMORY[0x1E69E5920](v13);
  v15 = v29;
  v14 = &v29[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl];
  swift_beginAccess();
  v16 = *v14;
  MEMORY[0x1E69E5928](*v14);
  swift_endAccess();
  [v15 0x1FAB997F8];
  MEMORY[0x1E69E5920](v16);
  v18 = v29;
  v17 = &v29[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_bottomContainerImpl];
  swift_beginAccess();
  v19 = *v17;
  MEMORY[0x1E69E5928](*v17);
  swift_endAccess();
  [v18 0x1FAB997F8];
  MEMORY[0x1E69E5920](v19);
  v20 = &v29[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_bottomContainerImpl];
  swift_beginAccess();
  v21 = *v20;
  MEMORY[0x1E69E5928](*v20);
  swift_endAccess();
  sub_1AC2BB6F4(v21);
  MEMORY[0x1E69E5920](v21);
  v22 = &v29[OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl];
  swift_beginAccess();
  v23 = *v22;
  MEMORY[0x1E69E5928](*v22);
  swift_endAccess();
  sub_1AC2BB6F4(v23);
  MEMORY[0x1E69E5920](v23);

  MEMORY[0x1E69E5920](v29);
  return v25;
}

uint64_t sub_1AC2B712C(uint64_t a1)
{
  v4 = (*(a1 + 16))();
  if (!v4)
  {
    return 0;
  }

  v2 = sub_1AC30A92C();
  MEMORY[0x1E69E5920](v4);
  return v2;
}

double sub_1AC2B71CC(char a1)
{
  v6 = sub_1AC2B5974();
  v5 = *(v6 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray);
  MEMORY[0x1E69E5928](v5);
  MEMORY[0x1E69E5920](v6);
  if (a1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  [v5 setAlpha_];
  MEMORY[0x1E69E5920](v5);
  v3 = sub_1AC2B57FC();
  v2 = *(v3 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray);
  MEMORY[0x1E69E5928](v2);
  MEMORY[0x1E69E5920](v3);
  if (a1)
  {
    [v2 setAlpha_];
  }

  else
  {
    [v2 setAlpha_];
  }

  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

void sub_1AC2B7370(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v30 = a1;
  v33 = 0;
  v40 = 0;
  v42 = a1;
  v41 = a2;
  v32 = sub_1AC2B5974();
  v31 = *&v32[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  v2 = v31;

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v28 = 0;
  v24 = 0;
  v27 = 0;
  [v31 removeTarget_action_forControlEvents_];
  swift_unknownObjectRelease();

  v26 = sub_1AC2B57FC();
  v25 = *&v26[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  v3 = v25;

  v34[0] = v27;
  v34[1] = v27;
  v34[2] = v27;
  v35 = v27;
  if (v27)
  {
    v18 = v35;
    v21 = v34;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    v16 = *(v18 - 8);
    v17 = v16;
    v20 = v8;
    v4 = MEMORY[0x1EEE9AC00](v8);
    v19 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v4);
    v22 = sub_1AC30B19C();
    (*(v17 + 8))(v19, v18);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v8[1] = v23;
  [v25 removeTarget_action_forControlEvents_];
  swift_unknownObjectRelease();

  v9 = sub_1AC2B5974();
  v11 = &qword_1EB54C000;
  v10 = *&v9[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  v6 = v10;

  swift_unknownObjectRetain();
  v13 = 0x1FAEA9000uLL;
  v14 = 64;
  [v10 0x1FAEA9A78];
  swift_unknownObjectRelease();

  v12 = sub_1AC2B57FC();
  v15 = *&v12[v11[418]];
  v7 = v15;

  swift_unknownObjectRetain();
  [v15 (v13 + 2680)];
  swift_unknownObjectRelease();
}

double sub_1AC2B7890()
{
  v1 = sub_1AC2B5974();
  v3 = *(v1 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  MEMORY[0x1E69E5928](v3);
  MEMORY[0x1E69E5920](v1);

  v2 = sub_1AC30A91C();

  [v3 0x1FA9963F8];
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v3);
  v4 = sub_1AC2B57FC();
  v6 = *(v4 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  MEMORY[0x1E69E5928](v6);
  MEMORY[0x1E69E5920](v4);

  v5 = sub_1AC30A91C();

  [v6 0x1FA9963F8];
  MEMORY[0x1E69E5920](v5);
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

void sub_1AC2B7D3C(uint64_t a1, int a2, id *a3, id *a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for HPSUISpatialProfileV2EnrollmentStep();
  switch(a2)
  {
    case 0:
    case 1:
    case 3:
    case 9:
    case 10:
    case 11:
      return;
    case 2:
      sub_1AC2BB1D0();
      break;
    case 4:
      sub_1AC2B7FE0();
      break;
    case 5:
      sub_1AC2B80E0(a3, a4, a5, a6);
      break;
    case 6:
      sub_1AC2B9D4C(a3, a4, a5, a6);
      break;
    case 7:
      sub_1AC2BAFE4();
      break;
    case 8:
      sub_1AC2BB5B0();
      break;
    case 12:
      sub_1AC2BB364();
      break;
    default:
      sub_1AC30B1DC();
      __break(1u);
      break;
  }
}

double sub_1AC2B7FE0()
{
  v3 = (*((*v0 & *MEMORY[0x1E69E7D40]) + 0xC8))();
  sub_1AC30A9DC();
  sub_1AC2BB490();

  v2 = sub_1AC30A91C();

  [v3 setTitle:v2 forState:0];
  MEMORY[0x1E69E5920](v2);
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

void sub_1AC2B80E0(id *a1, id *a2, uint64_t a3, uint64_t a4)
{
  v75 = a4;
  v76 = a3;
  v77 = a2;
  v101 = a1;
  v98 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v78 = 0;
  v123 = a1;
  v122 = a2;
  v120 = a3;
  v121 = a4;
  v79 = sub_1AC2B57FC();
  v85 = &qword_1EB54C000;
  v84 = *&v79[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView];
  v4 = v84;

  v94 = 1;
  sub_1AC30A9DC();
  v80 = v5;
  v81 = sub_1AC2BB490();
  v82 = v6;

  v83 = sub_1AC30A91C();

  [v84 setTitle_];

  v86 = sub_1AC2B57FC();
  v91 = *&v86[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView];
  v7 = v91;

  sub_1AC30A9DC();
  v87 = v8;
  v88 = sub_1AC2BB490();
  v89 = v9;

  v90 = sub_1AC30A91C();

  [v91 setDetailText_];

  v93 = sub_1AC2B57FC();
  v100 = *&v93[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  v10 = v100;

  sub_1AC30A9DC();
  v95 = v11;
  v96 = sub_1AC2BB490();
  v97 = v12;

  v99 = sub_1AC30A91C();

  [v100 setTitle:v99 forState:0];

  if (v101)
  {
    v74 = v101;
    v72 = *v101;
    v13 = v72;
    v73 = v72;
  }

  else
  {
    v73 = 0;
  }

  v71 = v73;
  if (v73)
  {
    v70 = v71;
    v69 = v71;
  }

  else
  {
    v69 = 0;
  }

  v68 = v69;
  if (v69)
  {
    v67 = v68;
    v66 = v67;
    v118 = v67;
    if (v77)
    {
      v65 = v77;
      v63 = *v77;
      v14 = v63;
      v64 = v63;
    }

    else
    {
      v64 = 0;
    }

    v62 = v64;
    if (v64)
    {
      v61 = v62;
      v60 = v62;
    }

    else
    {
      v60 = 0;
    }

    v59 = v60;
    if (v60)
    {
      v58 = v59;
      v15 = v78;
      v50 = v59;
      v117 = v59;
      v52 = sub_1AC2813A0();
      v53 = sub_1AC30B18C();
      v51 = v16;
      v17 = sub_1AC2B57FC();
      v18 = v66;
      *v51 = v17;
      v19 = v18;
      v20 = v53;
      v51[1] = v66;
      sub_1AC206300();
      v116 = v20;
      v21 = v92;
      v54 = &v40;
      MEMORY[0x1EEE9AC00](&v40);
      v55 = v39;
      v39[2] = v22;
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C750);
      sub_1AC2822C8();
      sub_1AC30AAAC();
      v57 = v15;

      sub_1AC209190();
      v46 = objc_opt_self();
      v23 = v92;
      v24 = v50;
      v25 = v66;
      v42 = 40;
      v43 = 7;
      v26 = swift_allocObject();
      v27 = v50;
      v28 = v66;
      v26[2] = v92;
      v26[3] = v27;
      v26[4] = v28;
      v114 = sub_1AC2BBB50;
      v115 = v26;
      aBlock = MEMORY[0x1E69E9820];
      v44 = 1107296256;
      v110 = 1107296256;
      v45 = 0;
      v111 = 0;
      v112 = sub_1AC24D45C;
      v113 = &block_descriptor_9;
      v48 = _Block_copy(&aBlock);

      sub_1AC2A2860(v76);
      v29 = v92;
      v30 = swift_allocObject();
      v31 = v75;
      v32 = v92;
      v33 = v44;
      v34 = v45;
      v30[2] = v76;
      v30[3] = v31;
      v30[4] = v32;
      v107 = sub_1AC2BBBC4;
      v108 = v30;
      v102 = MEMORY[0x1E69E9820];
      v103 = v33;
      v104 = v34;
      v105 = sub_1AC2B932C;
      v106 = &block_descriptor_16_0;
      v47 = _Block_copy(&v102);

      [v46 animateWithDuration:v48 animations:v47 completion:0.6];
      _Block_release(v47);
      _Block_release(v48);

      v49 = v57;
      return;
    }
  }

  sub_1AC30B18C();
  v41 = v35;
  v36 = sub_1AC30A9DC();
  v37 = v41;
  v41[3] = MEMORY[0x1E69E6158];
  *v37 = v36;
  v37[1] = v38;
  sub_1AC206300();
  sub_1AC2B8AE0();
  sub_1AC2B8B10();
  sub_1AC30B22C();
}

id sub_1AC2B8B40(id *a1)
{
  v6 = *a1;
  v5 = sub_1AC2B67A4();
  [v6 frame];
  [v6 setFrame_];
  [v6 setAlpha_];
  return [v6 layoutIfNeeded];
}

void sub_1AC2B8C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v50 = a1;
  v49 = a2;
  v48 = a3;
  sub_1AC2813A0();
  v21 = sub_1AC30B18C();
  v20 = v3;
  *v3 = sub_1AC2B5974();
  MEMORY[0x1E69E5928](a2);
  v20[1] = a2;
  sub_1AC206300();
  v47 = v21;
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C750);
  sub_1AC2822C8();
  sub_1AC30AAAC();
  MEMORY[0x1E69E5920](a1);
  sub_1AC209190();
  [a3 0x1FB3E9C78];
  v43 = v4;
  v44 = v5;
  v45 = v6;
  v46 = v7;
  v39 = 0;
  v40 = v5;
  v41 = v6;
  v42 = v7;
  [a3 0x1FB53C978];
  [a3 0x1FAC9E0F8];
  v13 = sub_1AC2B57FC();
  [v13 0x1FB3E9C78];
  v35 = v8;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v31 = 0;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  [v13 0x1FB53C978];
  MEMORY[0x1E69E5920](v13);
  v14 = sub_1AC2B57FC();
  [v14 0x1FAC9E0F8];
  MEMORY[0x1E69E5920](v14);
  v15 = objc_opt_self();
  type metadata accessor for AnimationOptions();
  sub_1AC30B18C();
  sub_1AC2C2BC8();
  sub_1AC30AF2C();
  v16 = v30;
  MEMORY[0x1E69E5928](a3);
  MEMORY[0x1E69E5928](a1);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  v28 = sub_1AC2C2FFC;
  v29 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1AC24D45C;
  v27 = &block_descriptor_86;
  v17 = _Block_copy(&aBlock);

  [v15 animateWithDuration:v16 delay:v17 options:0 animations:0.2 completion:?];
  _Block_release(v17);
}

id sub_1AC2B8FF4(id *a1)
{
  v6 = *a1;
  v5 = sub_1AC2B69F8();
  [v6 frame];
  [v6 setFrame_];
  [v6 setAlpha_];
  return [v6 layoutIfNeeded];
}

double sub_1AC2B90D0(void *a1)
{
  [a1 0x1FAFCBB78];
  [a1 0x1FAC9E0F8];
  v3 = sub_1AC2B57FC();
  [v3 0x1FAFCBB78];
  MEMORY[0x1E69E5920](v3);
  v4 = sub_1AC2B57FC();
  [v4 0x1FAC9E0F8];
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

double sub_1AC2B9194(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, void *a4)
{
  v4 = sub_1AC2A2860(a2);
  if (a2)
  {
    a2(v4);
  }

  v9 = MEMORY[0x1E69E7D40];
  v8 = (*((*a4 & *MEMORY[0x1E69E7D40]) + 0xB0))(v4);
  [v8 0x1FA964078];
  v5 = MEMORY[0x1E69E5920](v8);
  v10 = (*((*a4 & *v9) + 0xB8))(v5);
  [v10 0x1FA964078];
  MEMORY[0x1E69E5920](v10);
  v13 = sub_1AC2B57FC();
  v6 = sub_1AC2B5974();
  sub_1AC2B586C(v6);
  return sub_1AC2B59E4(v13);
}

uint64_t sub_1AC2B932C(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 32);

  v4(a2);
}

void sub_1AC2B9384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v64 = a1;
  v65 = a2;
  v62 = a3;
  v63 = a4;
  v60 = a5;
  v61 = a6;
  v59 = a7 & 1;
  v58 = v7;
  v29 = sub_1AC2B57FC();
  v31 = *(v29 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  MEMORY[0x1E69E5928](v31);
  MEMORY[0x1E69E5920](v29);

  v30 = sub_1AC30A91C();

  [v31 setTitle_];
  MEMORY[0x1E69E5920](v30);
  MEMORY[0x1E69E5920](v31);
  v32 = sub_1AC2B57FC();
  v34 = *(v32 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  MEMORY[0x1E69E5928](v34);
  MEMORY[0x1E69E5920](v32);

  v33 = sub_1AC30A91C();

  [v34 setDetailText_];
  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5920](v34);

  if (a6)
  {
    v24 = sub_1AC2B57FC();
    v26 = *(v24 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
    MEMORY[0x1E69E5928](v26);
    MEMORY[0x1E69E5920](v24);

    v25 = sub_1AC30A91C();

    [v26 setTitle:v25 forState:0];
    MEMORY[0x1E69E5920](v25);
    MEMORY[0x1E69E5920](v26);
  }

  v23 = sub_1AC2B57FC();
  v22 = *(v23 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  MEMORY[0x1E69E5928](v22);
  MEMORY[0x1E69E5920](v23);
  if (a7)
  {
    v21 = 1.0;
  }

  else
  {
    v21 = 0.0;
  }

  [v22 0x1FAFCBB78];
  MEMORY[0x1E69E5920](v22);
  v15 = sub_1AC2B57FC();
  v14 = sub_1AC2B67A4();
  [v15 frame];
  v54 = v8;
  v55 = v9;
  v56 = v10;
  v57 = v11;
  v50 = v14;
  v51 = v9;
  v52 = v10;
  v53 = v11;
  [v15 setFrame_];
  MEMORY[0x1E69E5920](v15);
  v16 = sub_1AC2B57FC();
  [v16 0x1FAFCBB78];
  MEMORY[0x1E69E5920](v16);
  v17 = sub_1AC2B57FC();
  [v17 layoutIfNeeded];
  MEMORY[0x1E69E5920](v17);
  v18 = objc_opt_self();
  (MEMORY[0x1E69E5928])();
  v12 = swift_allocObject();
  *(v12 + 16) = v28;
  v48 = sub_1AC2BBC3C;
  v49 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v44 = 1107296256;
  v45 = 0;
  v46 = sub_1AC24D45C;
  v47 = &block_descriptor_22_0;
  v20 = _Block_copy(&aBlock);

  (MEMORY[0x1E69E5928])();
  v13 = swift_allocObject();
  *(v13 + 16) = v28;
  v41 = sub_1AC2BBCA8;
  v42 = v13;
  v36 = MEMORY[0x1E69E9820];
  v37 = 1107296256;
  v38 = 0;
  v39 = sub_1AC2B932C;
  v40 = &block_descriptor_28;
  v19 = _Block_copy(&v36);

  [v18 animateWithDuration:v20 animations:v19 completion:0.6];
  _Block_release(v19);
  _Block_release(v20);
}

void sub_1AC2B9940(uint64_t a1)
{
  v44 = a1;
  v11 = sub_1AC2B5974();
  v10 = sub_1AC2B69F8();
  [v11 0x1FB3E9C78];
  v40 = v1;
  v41 = v2;
  v42 = v3;
  v43 = v4;
  v36 = v10;
  v37 = v2;
  v38 = v3;
  v39 = v4;
  [v11 0x1FB53C978];
  MEMORY[0x1E69E5920](v11);
  v12 = sub_1AC2B5974();
  [v12 setAlpha_];
  MEMORY[0x1E69E5920](v12);
  v13 = sub_1AC2B5974();
  [v13 0x1FAC9E0F8];
  MEMORY[0x1E69E5920](v13);
  v14 = sub_1AC2B57FC();
  [v14 0x1FB3E9C78];
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v35 = v8;
  v28 = 0;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  [v14 0x1FB53C978];
  MEMORY[0x1E69E5920](v14);
  v15 = sub_1AC2B57FC();
  [v15 0x1FAC9E0F8];
  MEMORY[0x1E69E5920](v15);
  v17 = objc_opt_self();
  type metadata accessor for AnimationOptions();
  sub_1AC30B18C();
  sub_1AC2C2BC8();
  sub_1AC30AF2C();
  v18 = v27;
  MEMORY[0x1E69E5928](a1);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v25 = sub_1AC2C2F68;
  v26 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_1AC24D45C;
  v24 = &block_descriptor_80;
  v19 = _Block_copy(&aBlock);

  [v17 animateWithDuration:v18 delay:v19 options:0 animations:0.2 completion:?];
  _Block_release(v19);
}

double sub_1AC2B9C50()
{
  v1 = sub_1AC2B57FC();
  [v1 setAlpha_];
  MEMORY[0x1E69E5920](v1);
  v2 = sub_1AC2B57FC();
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

double sub_1AC2B9CD8()
{
  v2 = sub_1AC2B57FC();
  v0 = sub_1AC2B5974();
  sub_1AC2B586C(v0);
  return sub_1AC2B59E4(v2);
}

void sub_1AC2B9D4C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v68 = 0;
  v67 = 0;
  v73 = a1;
  v72 = a2;
  v70 = a3;
  v71 = a4;
  v69 = v4;
  v34 = sub_1AC2B57FC();
  v36 = *(v34 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  MEMORY[0x1E69E5928](v36);
  MEMORY[0x1E69E5920](v34);
  sub_1AC30A9DC();
  sub_1AC2BB490();

  v35 = sub_1AC30A91C();

  [v36 setTitle_];
  MEMORY[0x1E69E5920](v35);
  MEMORY[0x1E69E5920](v36);
  v37 = sub_1AC2B57FC();
  v40 = *(v37 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  MEMORY[0x1E69E5928](v40);
  MEMORY[0x1E69E5920](v37);
  sub_1AC30A9DC();
  sub_1AC2BB490();

  v39 = sub_1AC30A91C();

  [v40 setDetailText_];
  MEMORY[0x1E69E5920](v39);
  MEMORY[0x1E69E5920](v40);
  v41 = sub_1AC2B57FC();
  v42 = *(v41 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  MEMORY[0x1E69E5928](v42);
  MEMORY[0x1E69E5920](v41);
  [v42 setAlpha_];
  MEMORY[0x1E69E5920](v42);
  if (a1)
  {
    v29 = *a1;
    MEMORY[0x1E69E5928](*a1);
    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (v30)
  {
    v28 = v30;
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v68 = v28;
    if (a2)
    {
      v26 = *a2;
      MEMORY[0x1E69E5928](*a2);
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      objc_opt_self();
      v25 = swift_dynamicCastObjCClass();
      if (v25)
      {
        v24 = v25;
      }

      else
      {
        MEMORY[0x1E69E5920](v27);
        v24 = 0;
      }

      v23 = v24;
    }

    else
    {
      v23 = 0;
    }

    if (v23)
    {
      v67 = v23;
      v19 = sub_1AC2B57FC();
      v18 = sub_1AC2B67A4();
      [v19 frame];
      v63 = v5;
      v64 = v6;
      v65 = v7;
      v66 = v8;
      v59 = v18;
      v60 = v6;
      v61 = v7;
      v62 = v8;
      [v19 setFrame_];
      MEMORY[0x1E69E5920](v19);
      v20 = sub_1AC2B57FC();
      [v20 setAlpha_];
      MEMORY[0x1E69E5920](v20);
      v21 = sub_1AC2B57FC();
      [v21 layoutIfNeeded];
      v22 = [v28 subviews];
      sub_1AC2813A0();
      v58 = sub_1AC30AB0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C750);
      sub_1AC2822C8();
      sub_1AC30AAAC();
      sub_1AC209190();
      [v28 layoutIfNeeded];
      v15 = objc_opt_self();
      (MEMORY[0x1E69E5928])();
      (MEMORY[0x1E69E5928])();
      MEMORY[0x1E69E5928](v23);
      MEMORY[0x1E69E5928](v28);
      v9 = swift_allocObject();
      v9[2] = v38;
      v9[3] = v23;
      v9[4] = v28;
      v56 = sub_1AC2BBD18;
      v57 = v9;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = 0;
      v54 = sub_1AC24D45C;
      v55 = &block_descriptor_34;
      v17 = _Block_copy(&aBlock);

      (MEMORY[0x1E69E5920])();
      sub_1AC2A2860(a3);
      (MEMORY[0x1E69E5928])();
      v10 = swift_allocObject();
      v10[2] = a3;
      v10[3] = a4;
      v10[4] = v38;
      v49 = sub_1AC2BBD8C;
      v50 = v10;
      v44 = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      v46 = 0;
      v47 = sub_1AC2B932C;
      v48 = &block_descriptor_40;
      v16 = _Block_copy(&v44);

      [v15 animateWithDuration:v17 animations:v16 completion:0.6];
      _Block_release(v16);
      _Block_release(v17);
      MEMORY[0x1E69E5920](v23);
      MEMORY[0x1E69E5920](v28);
      return;
    }

    MEMORY[0x1E69E5920](v28);
  }

  sub_1AC30B18C();
  v14 = v11;
  v12 = sub_1AC30A9DC();
  v14[3] = MEMORY[0x1E69E6158];
  *v14 = v12;
  v14[1] = v13;
  sub_1AC206300();
  sub_1AC2B8AE0();
  sub_1AC2B8B10();
  sub_1AC30B22C();
}

void sub_1AC2BA600(void *a1)
{
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    MEMORY[0x1E69E5920](v3);
    v1 = 1;
  }

  else
  {
    MEMORY[0x1E69E5920](v2);
    v1 = 0;
  }

  if ((v1 & 1) == 0)
  {
    [v2 setAlpha_];
  }
}

void sub_1AC2BA6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  sub_1AC2813A0();
  v16 = sub_1AC30B18C();
  v15 = v3;
  *v3 = sub_1AC2B5974();
  MEMORY[0x1E69E5928](a2);
  v15[1] = a2;
  sub_1AC206300();
  v35 = v16;
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C750);
  sub_1AC2822C8();
  sub_1AC30AAAC();
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](a2);
  sub_1AC209190();
  v9 = sub_1AC2B57FC();
  [v9 frame];
  v31 = v4;
  v32 = v5;
  v33 = v6;
  v34 = v7;
  v27 = 0;
  v28 = v5;
  v29 = v6;
  v30 = v7;
  [v9 setFrame_];
  MEMORY[0x1E69E5920](v9);
  v10 = sub_1AC2B57FC();
  [v10 layoutIfNeeded];
  MEMORY[0x1E69E5920](v10);
  v11 = objc_opt_self();
  type metadata accessor for AnimationOptions();
  sub_1AC30B18C();
  sub_1AC2C2BC8();
  sub_1AC30AF2C();
  v12 = v26;
  MEMORY[0x1E69E5928](a1);
  MEMORY[0x1E69E5928](a3);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  v24 = sub_1AC2C2EF8;
  v25 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = 0;
  v22 = sub_1AC24D45C;
  v23 = &block_descriptor_74;
  v13 = _Block_copy(&aBlock);

  [v11 animateWithDuration:v12 delay:v13 options:0 animations:0.2 completion:?];
  _Block_release(v13);
}

id sub_1AC2BAA64(void **a1, uint64_t a2, void *a3)
{
  v14 = *a1;
  v12 = sub_1AC2B69F8();
  [v14 frame];
  [v14 setFrame_];
  sub_1AC2813A0();
  if (sub_1AC30ADFC())
  {
    MEMORY[0x1E69E5928](a3);
    [a3 setAlpha_];
    MEMORY[0x1E69E5920](a3);
    v11 = [a3 playerLayer];
    MEMORY[0x1E69E5920](a3);
    sub_1AC2B6218();
    type metadata accessor for UITraitEnvironmentLayoutDirection();
    sub_1AC2B6978();
    if (sub_1AC30B1BC())
    {
      [v11 frame];
    }

    else
    {
      [v11 frame];
    }

    [v11 setFrame_];
    MEMORY[0x1E69E5920](v11);
  }

  else
  {
    [v14 setAlpha_];
  }

  return [v14 layoutIfNeeded];
}

double sub_1AC2BACEC(uint64_t a1, void *a2)
{
  v3 = sub_1AC2B57FC();
  [v3 setAlpha_];
  MEMORY[0x1E69E5920](v3);
  v4 = sub_1AC2B57FC();
  [v4 layoutIfNeeded];
  v6 = [a2 subviews];
  sub_1AC2813A0();
  sub_1AC30AB0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C750);
  sub_1AC2822C8();
  sub_1AC30AAAC();
  sub_1AC209190();
  *&result = MEMORY[0x1E69E5920](v6).n128_u64[0];
  return result;
}

void sub_1AC2BAE30(void *a1)
{
  v2 = *a1;
  MEMORY[0x1E69E5928](*a1);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    MEMORY[0x1E69E5920](v3);
    v1 = 1;
  }

  else
  {
    MEMORY[0x1E69E5920](v2);
    v1 = 0;
  }

  if ((v1 & 1) == 0)
  {
    [v2 setAlpha_];
  }
}

double sub_1AC2BAF08(uint64_t a1, void (*a2)(uint64_t))
{
  v2 = sub_1AC2A2860(a2);
  if (a2)
  {
    a2(v2);
  }

  v6 = sub_1AC2B57FC();
  v3 = sub_1AC2B5974();
  sub_1AC2B586C(v3);
  return sub_1AC2B59E4(v6);
}

void sub_1AC2BAFE4()
{
  type metadata accessor for HPSUISpatialProfileV2EnrollmentStep();
  sub_1AC2BBE04();
  if (sub_1AC30B1BC())
  {
    v8 = sub_1AC2B5974();
    v11 = *(v8 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
    MEMORY[0x1E69E5928](v11);
    MEMORY[0x1E69E5920](v8);
    sub_1AC30A9DC();
    v9 = sub_1AC2BB490();
    v10 = v0;

    v1 = sub_1AC2B6218();
    sub_1AC2C0EA4(v9, v10, v1);

    MEMORY[0x1E69E5920](v11);
  }

  else
  {
    sub_1AC30A9DC();
    v4 = sub_1AC2BB490();
    v7 = v2;

    sub_1AC30A9DC();
    v5 = sub_1AC2BB490();
    v6 = v3;

    sub_1AC2B9384(v4, v7, v5, v6, 0, 0, 0);
  }
}

uint64_t sub_1AC2BB1D0()
{
  sub_1AC30A9DC();
  v7 = sub_1AC2BB490();
  v8 = v0;

  v9 = *(v10 + OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_budInEarStringBlock);

  v11 = v9(v1);
  v12 = v2;
  (MEMORY[0x1E69E5928])();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
  }

  else
  {
    sub_1AC30A9DC();
    v5 = sub_1AC2BB490();
    v6 = v3;

    v13 = v5;
    v14 = v6;
  }

  (MEMORY[0x1E69E5920])();

  sub_1AC2B9384(v7, v8, v13, v14, 0, 0, 0);
}

uint64_t sub_1AC2BB364()
{
  sub_1AC30A9DC();
  v7 = sub_1AC2BB490();
  v10 = v0;

  sub_1AC30A9DC();
  v5 = sub_1AC2BB490();
  v9 = v1;

  sub_1AC30A9DC();
  v6 = sub_1AC2BB490();
  v8 = v2;

  has_malloc_size = _swift_stdlib_has_malloc_size();
  sub_1AC2B9384(v7, v10, v5, v9, v6, v8, has_malloc_size & 1);
}

uint64_t sub_1AC2BB490()
{
  sub_1AC30A9DC();
  sub_1AC20BE24();
  type metadata accessor for HPSUISpatialProfileSingleStepBottomContainer();
  v1 = sub_1AC20BE88();
  sub_1AC30A9DC();
  sub_1AC20BEE0();
  v2 = sub_1AC308FBC();

  MEMORY[0x1E69E5920](v1);

  return v2;
}

uint64_t sub_1AC2BB5B0()
{
  type metadata accessor for HPSUISpatialProfileV2EnrollmentStep();
  sub_1AC2BBE04();
  result = sub_1AC30B1BC();
  if (result)
  {
    sub_1AC30A9DC();
    v3 = sub_1AC2BB490();
    v6 = v1;

    sub_1AC30A9DC();
    v4 = sub_1AC2BB490();
    v5 = v2;

    sub_1AC2B9384(v3, v6, v4, v5, 0, 0, 0);
  }

  return result;
}

double sub_1AC2BB6F4(void *a1)
{
  v21 = objc_opt_self();
  sub_1AC256554();
  sub_1AC30B18C();
  v20 = v1;
  v7 = [a1 0x1FBB5C529];
  v6 = [v16 0x1FBB5C529];
  v8 = [v7 0x1FBB28F65];
  MEMORY[0x1E69E5920](v6);
  *&v2 = MEMORY[0x1E69E5920](v7).n128_u64[0];
  *v20 = v8;
  v10 = [a1 0x1FBBB59CCLL];
  v9 = [v16 0x1FBBB59CCLL];
  v11 = [v10 0x1FBB28F65];
  MEMORY[0x1E69E5920](v9);
  *&v3 = MEMORY[0x1E69E5920](v10).n128_u64[0];
  v20[1] = v11;
  v13 = [a1 0x1FBBB4950];
  v12 = [v16 0x1FBBB4950];
  v14 = [v13 0x1FBB28F65];
  MEMORY[0x1E69E5920](v12);
  *&v4 = MEMORY[0x1E69E5920](v13).n128_u64[0];
  v20[2] = v14;
  v18 = [a1 0x1FBB20D25];
  v17 = [v16 0x1FBB20D25];
  v19 = [v18 0x1FBB28F65];
  MEMORY[0x1E69E5920](v17);
  MEMORY[0x1E69E5920](v18);
  v20[3] = v19;
  sub_1AC206300();
  v22 = sub_1AC30AAFC();

  [v21 activateConstraints_];
  *&result = MEMORY[0x1E69E5920](v22).n128_u64[0];
  return result;
}

uint64_t type metadata accessor for HPSUISpatialProfileV2EnrollmentStep()
{
  v4 = qword_1EB54CD90;
  if (!qword_1EB54CD90)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CD90);
      return v1;
    }
  }

  return v4;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_14_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_20_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1AC2BBE04()
{
  v2 = qword_1EB54CD50;
  if (!qword_1EB54CD50)
  {
    type metadata accessor for HPSUISpatialProfileV2EnrollmentStep();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CD50);
    return WitnessTable;
  }

  return v2;
}

id sub_1AC2BBE84()
{
  type metadata accessor for HPSHeaderView();
  v0 = sub_1AC30A9DC();
  v3 = sub_1AC2BBF28(v0, v1, 0, 0, 0);
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v3);
  return v3;
}

id sub_1AC2BBF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = objc_allocWithZone(v5);
  v14 = sub_1AC30A91C();
  if (a4)
  {
    v10 = sub_1AC30A91C();

    v6 = [v12 initWithTitle:v14 detailText:v10 icon:?];
  }

  else
  {
    v6 = [v12 initWithTitle:v14 detailText:0 icon:?];
  }

  v9 = v6;
  MEMORY[0x1E69E5920](a5);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v14);

  return v9;
}

uint64_t sub_1AC2BC0A0()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1AC2BC0E8()
{
  sub_1AC2813A0();
  v1 = sub_1AC253630(0.0, 0.0, 0.0, 0.0);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  return v1;
}

uint64_t sub_1AC2BC1C0()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1AC2BC208()
{
  sub_1AC28C204();
  v5 = sub_1AC253630(0.0, 0.0, 0.0, 0.0);
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  [v5 setLineBreakMode_];
  [v5 setNumberOfLines_];
  v1 = objc_opt_self();
  v2 = *MEMORY[0x1E69DDD28];
  v3 = [v1 preferredFontForTextStyle_];
  [v5 setFont_];
  [v5 setAdjustsFontForContentSizeCategory_];
  v4 = [objc_opt_self() systemGrayColor];
  [v5 setTextColor_];
  [v5 setTextAlignment_];
  return v5;
}

uint64_t sub_1AC2BC430()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_learnMoreView);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC2BC4E4()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1AC2BC52C()
{
  sub_1AC2C2E04();
  sub_1AC2C2E68();
  v0 = sub_1AC2BC600(6);
  v2 = sub_1AC2BC64C(v0);
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5928](v2);
  [v2 setAlpha_];
  MEMORY[0x1E69E5920](v2);
  return v2;
}

id sub_1AC2BC600(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() effectWithStyle_];

  return v1;
}

uint64_t sub_1AC2BC6F8()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1AC2BC740()
{
  v1 = [objc_opt_self() boldButton];
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t sub_1AC2BC830()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC2BC8E4()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1AC2BC92C()
{
  sub_1AC2C2DA0();
  v1 = sub_1AC253630(0.0, 0.0, 0.0, 0.0);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 setAxis_];
  [v1 setAlignment_];
  [v1 setDistribution_];
  return v1;
}

uint64_t sub_1AC2BCA6C()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1AC2BCAB4()
{
  sub_1AC2C2D3C();
  v1 = sub_1AC253630(0.0, 0.0, 0.0, 0.0);
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t sub_1AC2BCBAC()
{
  v2 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

double sub_1AC2BCBF4()
{
  v3 = *(v0 + OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton);
  MEMORY[0x1E69E5928](v3);
  sub_1AC2C1410();
  v6 = [v3 isKindOfClass_];
  MEMORY[0x1E69E5920](v3);
  v4 = [objc_opt_self() currentDevice];
  v5 = sub_1AC2B56EC();
  MEMORY[0x1E69E5920](v4);
  if ((v6 & 1) == 0)
  {
    return 24.0;
  }

  if (v5)
  {
    return 34.0;
  }

  return 5.0;
}

double sub_1AC2BCD20()
{
  v2 = [objc_opt_self() currentDevice];
  v3 = sub_1AC2B56EC();
  MEMORY[0x1E69E5920](v2);
  if (v3)
  {
    v1 = 5.0;
  }

  else
  {
    v1 = 34.0;
  }

  return v1 + 55.0;
}

char *sub_1AC2BCDCC(double a1, double a2, double a3, double a4)
{
  v163 = 0;
  v159 = a1;
  v160 = a2;
  v161 = a3;
  v162 = a4;
  v6 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView;
  *v6 = sub_1AC2BBE84();
  v7 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst;
  *&v163[v7] = sub_1AC2BC0E8();
  v8 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_learnMoreView;
  *&v163[v8] = sub_1AC2BC208();
  v9 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond;
  *&v163[v9] = sub_1AC2BC0E8();
  v10 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView;
  *&v163[v10] = sub_1AC2BC52C();
  v11 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton;
  *&v163[v11] = sub_1AC2BC740();
  v12 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray;
  *&v163[v12] = sub_1AC2BC0E8();
  v13 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView;
  *&v163[v13] = sub_1AC2BC92C();
  v14 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView;
  *&v163[v14] = sub_1AC2BCAB4();
  v158.receiver = v163;
  v158.super_class = type metadata accessor for HPSUISpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  v157 = objc_msgSendSuper2(&v158, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  MEMORY[0x1E69E5928](v157);
  v163 = v157;
  [v157 setTranslatesAutoresizingMaskIntoConstraints_];
  MEMORY[0x1E69E5920](v157);
  v15 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView];
  [v163 0x1FAB997F8];
  MEMORY[0x1E69E5920](v15);
  v17 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView];
  MEMORY[0x1E69E5928](v17);
  v16 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  [v17 0x1FAB997F8];
  MEMORY[0x1E69E5920](v16);
  MEMORY[0x1E69E5920](v17);
  v19 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  MEMORY[0x1E69E5928](v19);
  v18 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView];
  [v19 0x1FBB16380];
  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](v19);
  v21 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  MEMORY[0x1E69E5928](v21);
  v20 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst];
  [v21 0x1FBB16380];
  MEMORY[0x1E69E5920](v20);
  MEMORY[0x1E69E5920](v21);
  v23 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  MEMORY[0x1E69E5928](v23);
  v22 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_learnMoreView];
  [v23 0x1FBB16380];
  MEMORY[0x1E69E5920](v22);
  MEMORY[0x1E69E5920](v23);
  v25 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  MEMORY[0x1E69E5928](v25);
  v24 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond];
  [v25 0x1FBB16380];
  MEMORY[0x1E69E5920](v24);
  MEMORY[0x1E69E5920](v25);
  v27 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  MEMORY[0x1E69E5928](v27);
  v26 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView];
  [v27 0x1FAB997F8];
  MEMORY[0x1E69E5920](v26);
  MEMORY[0x1E69E5920](v27);
  v29 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  MEMORY[0x1E69E5928](v29);
  v28 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  [v29 0x1FAB997F8];
  MEMORY[0x1E69E5920](v28);
  MEMORY[0x1E69E5920](v29);
  v30 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  [v163 0x1FAB997F8];
  MEMORY[0x1E69E5920](v30);
  v155 = objc_opt_self();
  sub_1AC256554();
  sub_1AC30B18C();
  v154 = v4;
  v31 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView];
  v33 = [v31 0x1FBB5C529];
  MEMORY[0x1E69E5920](v31);
  v32 = [v157 0x1FBB5C529];
  v34 = [v33 0x1FBB28F65];
  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5920](v33);
  *v154 = v34;
  v35 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView];
  v37 = [v35 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v35);
  v36 = [v157 0x1FBBB59CCLL];
  v38 = [v37 0x1FBB28F65];
  MEMORY[0x1E69E5920](v36);
  MEMORY[0x1E69E5920](v37);
  v154[1] = v38;
  v39 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView];
  v41 = [v39 0x1FBBB4950];
  MEMORY[0x1E69E5920](v39);
  v40 = [v157 0x1FBBB4950];
  v42 = [v41 0x1FBB28F65];
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v41);
  v154[2] = v42;
  v43 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView];
  v46 = [v43 0x1FBB20D25];
  MEMORY[0x1E69E5920](v43);
  v44 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v45 = [v44 0x1FBBB4950];
  v47 = [v46 0x1FBB28F65];
  MEMORY[0x1E69E5920](v45);
  MEMORY[0x1E69E5920](v46);
  v154[3] = v47;
  v48 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v50 = [v48 0x1FBB5C529];
  MEMORY[0x1E69E5920](v48);
  v49 = [v157 0x1FBB5C529];
  MEMORY[0x1E69E5920](v157);
  v51 = [v50 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v49);
  MEMORY[0x1E69E5920](v50);
  v154[4] = v51;
  v52 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v54 = [v52 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v52);
  v53 = [v157 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v157);
  v55 = [v54 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v53);
  MEMORY[0x1E69E5920](v54);
  v154[5] = v55;
  v56 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v59 = [v56 0x1FBBB4950];
  MEMORY[0x1E69E5920](v56);
  v57 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView];
  v58 = [v57 0x1FBBB4950];
  MEMORY[0x1E69E5920](v57);
  v60 = [v59 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v58);
  MEMORY[0x1E69E5920](v59);
  v154[6] = v60;
  v61 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v64 = [v61 0x1FBB20D25];
  MEMORY[0x1E69E5920](v61);
  v62 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView];
  v63 = [v62 0x1FBB20D25];
  v65 = [v64 0x1FBB28F65];
  MEMORY[0x1E69E5920](v63);
  MEMORY[0x1E69E5920](v64);
  v154[7] = v65;
  v66 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  v69 = [v66 0x1FBB5C529];
  MEMORY[0x1E69E5920](v66);
  v67 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v68 = [v67 0x1FBB5C529];
  MEMORY[0x1E69E5920](v67);
  v70 = [v69 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v68);
  MEMORY[0x1E69E5920](v69);
  v154[8] = v70;
  v71 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  v74 = [v71 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v71);
  v72 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v73 = [v72 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v72);
  v75 = [v74 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5920](v74);
  v154[9] = v75;
  v76 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  v79 = [v76 0x1FBB20D25];
  MEMORY[0x1E69E5920](v76);
  v77 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v78 = [v77 0x1FBB20D25];
  MEMORY[0x1E69E5920](v77);
  v80 = [v79 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v78);
  MEMORY[0x1E69E5920](v79);
  v154[10] = v80;
  v81 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView];
  v84 = [v81 0x1FBBB4950];
  MEMORY[0x1E69E5920](v81);
  v82 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v83 = [v82 0x1FBBB4950];
  v85 = [v84 0x1FBB28F65];
  MEMORY[0x1E69E5920](v83);
  MEMORY[0x1E69E5920](v84);
  v154[11] = v85;
  v86 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView];
  v89 = [v86 0x1FBBB4950];
  MEMORY[0x1E69E5920](v86);
  v87 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton];
  v88 = [v87 0x1FBBB4950];
  MEMORY[0x1E69E5920](v87);
  v90 = [v89 0x1FBB28F7ELL];
  MEMORY[0x1E69E5920](v88);
  MEMORY[0x1E69E5920](v89);
  v154[12] = v90;
  v91 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView];
  v94 = [v91 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v91);
  v92 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v93 = [v92 0x1FBBB59CCLL];
  v95 = [v94 0x1FBB28F65];
  MEMORY[0x1E69E5920](v93);
  MEMORY[0x1E69E5920](v94);
  v154[13] = v95;
  v96 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView];
  v99 = [v96 0x1FBB5C529];
  MEMORY[0x1E69E5920](v96);
  v97 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v98 = [v97 0x1FBB5C529];
  v100 = [v99 0x1FBB28F65];
  MEMORY[0x1E69E5920](v98);
  MEMORY[0x1E69E5920](v99);
  v154[14] = v100;
  v101 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView];
  v104 = [v101 0x1FBB20D25];
  MEMORY[0x1E69E5920](v101);
  v102 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v103 = [v102 0x1FBB20D25];
  v105 = [v104 0x1FBB28F65];
  MEMORY[0x1E69E5920](v103);
  MEMORY[0x1E69E5920](v104);
  v154[15] = v105;
  v106 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst];
  v109 = [v106 0x1FBB5C529];
  MEMORY[0x1E69E5920](v106);
  v107 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v108 = [v107 0x1FBB5C529];
  v110 = [v109 0x1FBB28F65];
  MEMORY[0x1E69E5920](v108);
  MEMORY[0x1E69E5920](v109);
  v154[16] = v110;
  v111 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst];
  v114 = [v111 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v111);
  v112 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v113 = [v112 0x1FBBB59CCLL];
  v115 = [v114 0x1FBB28F65];
  MEMORY[0x1E69E5920](v113);
  MEMORY[0x1E69E5920](v114);
  v154[17] = v115;
  v116 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst];
  v117 = [v116 0x1FBB445BALL];
  MEMORY[0x1E69E5920](v116);
  v118 = [v117 0x1FBB28FF1];
  MEMORY[0x1E69E5920](v117);
  v154[18] = v118;
  v119 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond];
  v122 = [v119 0x1FBB5C529];
  MEMORY[0x1E69E5920](v119);
  v120 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v121 = [v120 0x1FBB5C529];
  v123 = [v122 0x1FBB28F65];
  MEMORY[0x1E69E5920](v121);
  MEMORY[0x1E69E5920](v122);
  v154[19] = v123;
  v124 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond];
  v127 = [v124 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v124);
  v125 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v126 = [v125 0x1FBBB59CCLL];
  v128 = [v127 0x1FBB28F65];
  MEMORY[0x1E69E5920](v126);
  MEMORY[0x1E69E5920](v127);
  v154[20] = v128;
  v129 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond];
  v130 = [v129 0x1FBB445BALL];
  MEMORY[0x1E69E5920](v129);
  v131 = [v130 0x1FBB28FF1];
  MEMORY[0x1E69E5920](v130);
  v154[21] = v131;
  v132 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView];
  v135 = [v132 0x1FBB5C529];
  MEMORY[0x1E69E5920](v132);
  v133 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v134 = [v133 0x1FBB5C529];
  v136 = [v135 0x1FBB28F65];
  MEMORY[0x1E69E5920](v134);
  MEMORY[0x1E69E5920](v135);
  v154[22] = v136;
  v137 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView];
  v140 = [v137 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v137);
  v138 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView];
  v139 = [v138 0x1FBBB59CCLL];
  v141 = [v140 0x1FBB28F65];
  MEMORY[0x1E69E5920](v139);
  MEMORY[0x1E69E5920](v140);
  v154[23] = v141;
  v142 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v144 = [v142 0x1FBB5C529];
  MEMORY[0x1E69E5920](v142);
  v143 = [v157 0x1FBB5C529];
  v145 = [v144 0x1FBB28F65];
  MEMORY[0x1E69E5920](v143);
  MEMORY[0x1E69E5920](v144);
  v154[24] = v145;
  v146 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v148 = [v146 0x1FBBB59CCLL];
  MEMORY[0x1E69E5920](v146);
  v147 = [v157 0x1FBBB59CCLL];
  v149 = [v148 0x1FBB28F65];
  MEMORY[0x1E69E5920](v147);
  MEMORY[0x1E69E5920](v148);
  v154[25] = v149;
  v150 = *&v163[OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray];
  v152 = [v150 0x1FBB20D25];
  MEMORY[0x1E69E5920](v150);
  v151 = [v157 0x1FBB20D25];
  v153 = [v152 0x1FBB28F65];
  MEMORY[0x1E69E5920](v151);
  MEMORY[0x1E69E5920](v152);
  v154[26] = v153;
  sub_1AC206300();
  v156 = sub_1AC30AAFC();

  [v155 activateConstraints_];
  MEMORY[0x1E69E5920](v156);
  MEMORY[0x1E69E5920](v163);
  return v157;
}

void sub_1AC2BED38()
{
  v0 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_infoView;
  *v0 = sub_1AC2BBE84();
  v1 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewFirst;
  *v1 = sub_1AC2BC0E8();
  v2 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_learnMoreView;
  *v2 = sub_1AC2BC208();
  v3 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_spacerViewSecond;
  *v3 = sub_1AC2BC0E8();
  v4 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTrayEffectView;
  *v4 = sub_1AC2BC52C();
  v5 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_continueButton;
  *v5 = sub_1AC2BC740();
  v6 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_buttonTray;
  *v6 = sub_1AC2BC0E8();
  v7 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_stackContainerView;
  *v7 = sub_1AC2BC92C();
  v8 = OBJC_IVAR____TtCC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainerP33_1433B7328FA8BD0ED258AC3EC53FFFEF46HPSSpatialProfileSingleStepBottomContainerImpl_scrollView;
  *v8 = sub_1AC2BCAB4();
  sub_1AC30A9DC();
  sub_1AC30B06C();
  __break(1u);
}

id sub_1AC2BEF58()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSUISpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AC2BF0C8()
{
  v1 = OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_offscreenBottomContainerImpl;
  type metadata accessor for HPSUISpatialProfileSingleStepBottomContainer.HPSSpatialProfileSingleStepBottomContainerImpl();
  *v1 = sub_1AC233694(0.0, 0.0, 0.0, 0.0);
  v2 = OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer_bottomContainerImpl;
  *v2 = sub_1AC233694(0.0, 0.0, 0.0, 0.0);
  v0 = OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI44HPSUISpatialProfileSingleStepBottomContainer____lazy_storage___layoutDirection = 0;
  *(v0 + 8) = 1;
  sub_1AC30A9DC();
  sub_1AC30B06C();
  __break(1u);
}

id HPSUISpatialProfileSingleStepBottomContainer.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSUISpatialProfileSingleStepBottomContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1AC2BF488()
{
  *OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel = 0;
  *OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_offScreenDetailedLabel = 0;
  sub_1AC30A9DC();
  sub_1AC30B06C();
  __break(1u);
}

uint64_t sub_1AC2BF544()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2BF5B4(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC2BF6B8()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_offScreenDetailedLabel);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2BF728(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_offScreenDetailedLabel);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

char *sub_1AC2BF82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v114 = *MEMORY[0x1E69E9840];
  v102 = 0;
  v107 = 0;
  v108 = 0;
  v100 = a1;
  v101 = a2;
  v112 = a3;
  v113 = a4;
  v99 = a5;
  *OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel = 0;
  *(v102 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_offScreenDetailedLabel) = 0;

  v92 = sub_1AC30A91C();

  sub_1AC30A9DC();
  v91 = sub_1AC30A91C();

  v98.receiver = v102;
  v98.super_class = type metadata accessor for HPSHeaderView();
  v94 = objc_msgSendSuper2(&v98, sel_initWithTitle_detailText_icon_, v92, v91, a5);
  MEMORY[0x1E69E5920](v91);
  MEMORY[0x1E69E5920](v92);
  MEMORY[0x1E69E5928](v94);
  v102 = v94;
  v93 = [v94 subviews];
  sub_1AC2813A0();
  v95 = sub_1AC30AB0C();
  MEMORY[0x1E69E5920](v94);
  v97[2] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C750);
  sub_1AC2C23E0();
  v88 = sub_1AC30AFDC();
  MEMORY[0x1E69E5920](v93);
  v97[1] = v88;
  sub_1AC2C2468();
  sub_1AC30AC9C();
  v89 = v111;

  if (v89)
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v86 = v5;
    }

    else
    {
      MEMORY[0x1E69E5920](v89);
      v86 = 0;
    }

    v87 = v86;
  }

  else
  {
    v87 = 0;
  }

  v79 = &v94[OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel];
  swift_beginAccess();
  v6 = *v79;
  *v79 = v87;
  MEMORY[0x1E69E5920](v6);
  swift_endAccess();
  v110 = 0;
  v82 = objc_opt_self();
  v80 = v102 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel;
  swift_beginAccess();
  v81 = *v80;
  MEMORY[0x1E69E5928](*v80);
  swift_endAccess();
  v109 = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CD80);
  v84 = sub_1AC30AE8C();
  *&v7 = MEMORY[0x1E69E5920](v81).n128_u64[0];
  v97[0] = v110;
  v85 = [v82 archivedDataWithRootObject:v84 requiringSecureCoding:0 error:{v97, v7}];
  v83 = v97[0];
  MEMORY[0x1E69E5928](v97[0]);
  v8 = v110;
  v110 = v83;
  MEMORY[0x1E69E5920](v8);
  swift_unknownObjectRelease();
  if (v85)
  {
    v75 = sub_1AC30903C();
    v76 = v9;
    MEMORY[0x1E69E5920](v85);
    v77 = v75;
    v78 = v76;
  }

  else
  {
    v35 = v110;
    v36 = sub_1AC308FDC();
    MEMORY[0x1E69E5920](v35);
    swift_willThrow();

    v77 = 0;
    v78 = 0xF000000000000000;
  }

  if ((v78 & 0xF000000000000000) == 0xF000000000000000)
  {
    sub_1AC30B18C();
    v74 = v10;
    v11 = sub_1AC30A9DC();
    v74[3] = MEMORY[0x1E69E6158];
    *v74 = v11;
    v74[1] = v12;
    sub_1AC206300();
    sub_1AC2B8AE0();
    sub_1AC2B8B10();
    sub_1AC30B22C();
  }

  else
  {
    v107 = v77;
    v108 = v78;
    sub_1AC2C24F0();
    sub_1AC243F00(v77, v78);
    v73 = sub_1AC2C0D08(v77, v78);
    if (v73)
    {
      [v73 setRequiresSecureCoding_];
      v69 = *MEMORY[0x1E696A508];
      MEMORY[0x1E69E5928](*MEMORY[0x1E696A508]);
      sub_1AC30A92C();
      v70 = sub_1AC30A91C();

      v71 = [v73 decodeObjectForKey_];
      MEMORY[0x1E69E5920](v70);
      if (v71)
      {
        sub_1AC30AEFC();
        sub_1AC241B1C(v103, &v104);
        swift_unknownObjectRelease();
      }

      else
      {
        v104 = 0uLL;
        v105 = 0uLL;
      }

      v106[0] = v104;
      v106[1] = v105;
      if (*(&v105 + 1))
      {
        sub_1AC28C204();
        if (swift_dynamicCast())
        {
          v67 = v96;
        }

        else
        {
          v67 = 0;
        }

        v68 = v67;
      }

      else
      {
        sub_1AC204664(v106);
        v68 = 0;
      }

      if (v68)
      {
        v59 = v102;
        MEMORY[0x1E69E5928](v68);
        v60 = &v59[OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_offScreenDetailedLabel];
        swift_beginAccess();
        v19 = *v60;
        *v60 = v68;
        MEMORY[0x1E69E5920](v19);
        swift_endAccess();
        [v68 setTranslatesAutoresizingMaskIntoConstraints_];
        MEMORY[0x1E69E5920](v68);
        MEMORY[0x1E69E5928](v68);
        [v68 setAlpha_];
        *&v20 = MEMORY[0x1E69E5920](v68).n128_u64[0];
        [v102 addSubview_];
        v61 = objc_opt_self();
        sub_1AC256554();
        sub_1AC30B18C();
        v62 = v21;
        v63 = [v68 leadingAnchor];
        MEMORY[0x1E69E5920](v68);
        v64 = v102 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel;
        swift_beginAccess();
        v65 = *v64;
        MEMORY[0x1E69E5928](*v64);
        swift_endAccess();
        if (v65)
        {
          v58 = v65;
        }

        else
        {
          LOBYTE(v23) = 2;
          v27 = 528;
          LODWORD(v31) = 0;
          sub_1AC30B05C();
          __break(1u);
        }

        v53 = [v58 leadingAnchor];
        v54 = [v63 constraintEqualToAnchor_];
        MEMORY[0x1E69E5920](v53);
        MEMORY[0x1E69E5920](v63);
        *v62 = v54;
        v55 = [v68 trailingAnchor];
        MEMORY[0x1E69E5920](v68);
        v56 = v102 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel;
        swift_beginAccess();
        v57 = *v56;
        MEMORY[0x1E69E5928](*v56);
        swift_endAccess();
        if (v57)
        {
          v52 = v57;
        }

        else
        {
          LOBYTE(v24) = 2;
          v28 = 529;
          LODWORD(v32) = 0;
          sub_1AC30B05C();
          __break(1u);
        }

        v47 = [v52 trailingAnchor];
        v48 = [v55 constraintEqualToAnchor_];
        MEMORY[0x1E69E5920](v47);
        MEMORY[0x1E69E5920](v55);
        v62[1] = v48;
        v49 = [v68 topAnchor];
        MEMORY[0x1E69E5920](v68);
        v50 = v102 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel;
        swift_beginAccess();
        v51 = *v50;
        MEMORY[0x1E69E5928](*v50);
        swift_endAccess();
        if (v51)
        {
          v46 = v51;
        }

        else
        {
          LOBYTE(v25) = 2;
          v29 = 530;
          LODWORD(v33) = 0;
          sub_1AC30B05C();
          __break(1u);
        }

        v41 = [v46 topAnchor];
        v42 = [v49 constraintEqualToAnchor_];
        MEMORY[0x1E69E5920](v41);
        MEMORY[0x1E69E5920](v49);
        v62[2] = v42;
        v43 = [v68 bottomAnchor];
        MEMORY[0x1E69E5920](v68);
        v44 = v102 + OBJC_IVAR____TtC19HeadphoneSettingsUIP33_1433B7328FA8BD0ED258AC3EC53FFFEF13HPSHeaderView_hpsDetailedLabel;
        swift_beginAccess();
        v45 = *v44;
        MEMORY[0x1E69E5928](*v44);
        swift_endAccess();
        if (v45)
        {
          v40 = v45;
        }

        else
        {
          LOBYTE(v26) = 2;
          v30 = 531;
          LODWORD(v34) = 0;
          sub_1AC30B05C();
          __break(1u);
        }

        v37 = [v40 bottomAnchor];
        v38 = [v43 constraintEqualToAnchor_];
        MEMORY[0x1E69E5920](v37);
        MEMORY[0x1E69E5920](v43);
        v62[3] = v38;
        sub_1AC206300();
        v39 = sub_1AC30AAFC();

        [v61 activateConstraints_];
        MEMORY[0x1E69E5920](v39);
        MEMORY[0x1E69E5920](v68);
        MEMORY[0x1E69E5920](v73);
        sub_1AC242F94(v77, v78);
      }

      else
      {
        sub_1AC30B18C();
        v66 = v16;
        v17 = sub_1AC30A9DC();
        v66[3] = MEMORY[0x1E69E6158];
        *v66 = v17;
        v66[1] = v18;
        sub_1AC206300();
        sub_1AC2B8AE0();
        sub_1AC2B8B10();
        sub_1AC30B22C();

        MEMORY[0x1E69E5920](v73);
        sub_1AC242F94(v77, v78);
      }
    }

    else
    {
      sub_1AC30B18C();
      v72 = v13;
      v14 = sub_1AC30A9DC();
      v72[3] = MEMORY[0x1E69E6158];
      *v72 = v14;
      v72[1] = v15;
      sub_1AC206300();
      sub_1AC2B8AE0();
      sub_1AC2B8B10();
      sub_1AC30B22C();

      sub_1AC242F94(v77, v78);
    }
  }

  MEMORY[0x1E69E5920](a5);

  MEMORY[0x1E69E5920](v102);
  return v94;
}

uint64_t sub_1AC2C0A34(uint64_t *a1)
{
  v23 = 0;
  v22 = 0;
  v16 = *a1;
  v23 = v16;
  MEMORY[0x1E69E5928](v16);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v15 = v17;
  }

  else
  {
    MEMORY[0x1E69E5920](v16);
    v15 = 0;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  v22 = v15;
  v1 = [v15 text];
  v14 = v1;
  if (v1)
  {
    v10 = sub_1AC30A92C();
    v11 = v2;
    MEMORY[0x1E69E5920](v14);
    v12 = v10;
    v13 = v11;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v8 = sub_1AC30A9DC();
  v9 = v3;

  v19[0] = v12;
  v19[1] = v13;
  v20 = v8;
  v21 = v9;
  if (v13)
  {
    sub_1AC2244D8(v19, v18);
    if (v21)
    {
      v6 = MEMORY[0x1AC5B0060](v18[0], v18[1], v20, v21);
      sub_1AC2063F0();
      sub_1AC2063F0();
      sub_1AC2063F0();
      v7 = v6;
      goto LABEL_16;
    }

    sub_1AC2063F0();
    goto LABEL_18;
  }

  if (v21)
  {
LABEL_18:
    sub_1AC271068();
    v7 = 0;
    goto LABEL_16;
  }

  sub_1AC2063F0();
  v7 = 1;
LABEL_16:

  if ((v7 & 1) == 0)
  {
    MEMORY[0x1E69E5920](v15);
LABEL_21:
    v5 = 0;
    return v5 & 1;
  }

  MEMORY[0x1E69E5920](v15);
  v5 = 1;
  return v5 & 1;
}

id sub_1AC2C0D08(uint64_t a1, unint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_1AC2C1EA0(a1, a2);
  if (v6)
  {
    return v4;
  }

  else
  {
    return v8;
  }
}

void sub_1AC2C0EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v45 = a2;
  v43 = a3;
  v42 = v3;
  v41 = sub_1AC2BF6B8();
  if (v41)
  {
    v21 = v41;
    MEMORY[0x1E69E5928](v41);
    sub_1AC206988(&v41);

    v20 = sub_1AC30A91C();

    [v21 setText_];
    MEMORY[0x1E69E5920](v20);
    MEMORY[0x1E69E5920](v21);
  }

  else
  {
    sub_1AC206988(&v41);
  }

  v40 = sub_1AC2BF6B8();
  if (v40)
  {
    v19 = v40;
    MEMORY[0x1E69E5928](v40);
    sub_1AC206988(&v40);
    type metadata accessor for UITraitEnvironmentLayoutDirection();
    sub_1AC2B6978();
    if (sub_1AC30B1BC())
    {
      [v23 bounds];
      v17 = v4;
      (MEMORY[0x1E69E5920])();
      v18 = v17 / 2.0;
    }

    else
    {
      [v23 bounds];
      v16 = v5;
      (MEMORY[0x1E69E5920])();
      v18 = -v16 / 2.0;
    }

    [v19 frame];
    [v19 setFrame_];
    MEMORY[0x1E69E5920](v19);
  }

  else
  {
    sub_1AC206988(&v40);
  }

  v39 = sub_1AC2BF6B8();
  if (v39)
  {
    v15 = v39;
    MEMORY[0x1E69E5928](v39);
    sub_1AC206988(&v39);
    [v15 setAlpha_];
    MEMORY[0x1E69E5920](v15);
  }

  else
  {
    sub_1AC206988(&v39);
  }

  v38 = sub_1AC2BF6B8();
  if (v38)
  {
    v14 = v38;
    MEMORY[0x1E69E5928](v38);
    sub_1AC206988(&v38);
    [v14 layoutIfNeeded];
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    sub_1AC206988(&v38);
  }

  v11 = objc_opt_self();
  (MEMORY[0x1E69E5928])();
  v9 = swift_allocObject();
  *(v9 + 16) = v23;
  *(v9 + 24) = a3;
  v36 = sub_1AC2C2554;
  v37 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = 0;
  v34 = sub_1AC24D45C;
  v35 = &block_descriptor_46;
  v13 = _Block_copy(&aBlock);

  (MEMORY[0x1E69E5928])();
  v10 = swift_allocObject();
  *(v10 + 16) = v23;
  v29 = sub_1AC2C25C4;
  v30 = v10;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = 0;
  v27 = sub_1AC2B932C;
  v28 = &block_descriptor_52;
  v12 = _Block_copy(&v24);

  [v11 animateWithDuration:v13 animations:v12 completion:0.6];
  _Block_release(v12);
  _Block_release(v13);
}

unint64_t sub_1AC2C1410()
{
  v2 = qword_1EB54CD58;
  if (!qword_1EB54CD58)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CD58);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1AC2C1474(void *a1, uint64_t a2)
{
  v35[2] = a1;
  v35[1] = a2;
  v35[0] = sub_1AC2BF544();
  if (v35[0])
  {
    v21 = v35[0];
    MEMORY[0x1E69E5928](v35[0]);
    sub_1AC206988(v35);
    type metadata accessor for UITraitEnvironmentLayoutDirection();
    sub_1AC2B6978();
    if (sub_1AC30B1BC())
    {
      [a1 bounds];
      v19 = v2;
      MEMORY[0x1E69E5920](a1);
      v20 = -v19 / 2.0;
    }

    else
    {
      [a1 bounds];
      v18 = v3;
      MEMORY[0x1E69E5920](a1);
      v20 = v18 / 2.0;
    }

    [v21 frame];
    [v21 setFrame_];
    MEMORY[0x1E69E5920](v21);
  }

  else
  {
    sub_1AC206988(v35);
  }

  v34 = sub_1AC2BF544();
  if (v34)
  {
    v17 = v34;
    MEMORY[0x1E69E5928](v34);
    sub_1AC206988(&v34);
    [v17 setAlpha_];
    MEMORY[0x1E69E5920](v17);
  }

  else
  {
    sub_1AC206988(&v34);
  }

  v33 = sub_1AC2BF544();
  if (v33)
  {
    v16 = v33;
    MEMORY[0x1E69E5928](v33);
    sub_1AC206988(&v33);
    [v16 layoutIfNeeded];
    MEMORY[0x1E69E5920](v16);
  }

  else
  {
    sub_1AC206988(&v33);
  }

  v32 = sub_1AC2BF6B8();
  if (v32)
  {
    v15 = v32;
    MEMORY[0x1E69E5928](v32);
    sub_1AC206988(&v32);
    [v15 frame];
    [v15 setFrame_];
    MEMORY[0x1E69E5920](v15);
  }

  else
  {
    sub_1AC206988(&v32);
  }

  v31 = sub_1AC2BF6B8();
  if (v31)
  {
    v14 = v31;
    MEMORY[0x1E69E5928](v31);
    sub_1AC206988(&v31);
    [v14 layoutIfNeeded];
    MEMORY[0x1E69E5920](v14);
  }

  else
  {
    sub_1AC206988(&v31);
  }

  v11 = objc_opt_self();
  type metadata accessor for AnimationOptions();
  sub_1AC30B18C();
  sub_1AC2C2BC8();
  sub_1AC30AF2C();
  v12 = v30;
  MEMORY[0x1E69E5928](a1);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v28 = sub_1AC2C2C48;
  v29 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = 0;
  v26 = sub_1AC24D45C;
  v27 = &block_descriptor_68;
  v13 = _Block_copy(&aBlock);

  [v11 animateWithDuration:v12 delay:v13 options:0 animations:0.2 completion:?];
  _Block_release(v13);
}

double sub_1AC2C19CC(uint64_t a1)
{
  v5[1] = a1;
  v5[0] = sub_1AC2BF6B8();
  if (v5[0])
  {
    v3 = v5[0];
    MEMORY[0x1E69E5928](v5[0]);
    sub_1AC206988(v5);
    [v3 setAlpha_];
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    sub_1AC206988(v5);
  }

  v4 = sub_1AC2BF6B8();
  if (v4)
  {
    v2 = v4;
    MEMORY[0x1E69E5928](v4);
    sub_1AC206988(&v4);
    [v2 layoutIfNeeded];
    *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&v4);
  }

  return result;
}

double sub_1AC2C1ADC()
{
  v2 = sub_1AC2BF6B8();
  v0 = sub_1AC2BF544();
  sub_1AC2BF728(v0);
  return sub_1AC2BF5B4(v2);
}

id sub_1AC2C1DB8()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HPSHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC2C1E50(uint64_t a1)
{
  v4 = [v1 initWithEffect_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1AC2C1EA0(uint64_t a1, unint64_t a2)
{
  v7 = sub_1AC30902C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CDB0);
  sub_1AC2C2CB4();
  sub_1AC30B1CC();
  v8 = [v6 initForReadingFromData:v7 error:v9];
  MEMORY[0x1E69E5928](0);
  MEMORY[0x1E69E5920](0);
  if (v8)
  {
    MEMORY[0x1E69E5920](v7);
    sub_1AC242F94(a1, a2);
    return v8;
  }

  else
  {
    sub_1AC308FDC();
    MEMORY[0x1E69E5920](0);
    swift_willThrow();
    MEMORY[0x1E69E5920](v7);
    sub_1AC242F94(a1, a2);
    return v3;
  }
}

uint64_t sub_1AC2C205C()
{
  sub_1AC2C324C();
  sub_1AC2ADEA4();
  return sub_1AC30B2EC();
}

uint64_t sub_1AC2C2260()
{
  sub_1AC2C324C();
  sub_1AC2ADEA4();
  return sub_1AC30B2DC();
}

uint64_t sub_1AC2C22A4()
{
  sub_1AC2C324C();
  sub_1AC2ADEA4();
  return sub_1AC30B2BC();
}

uint64_t sub_1AC2C22E8()
{
  sub_1AC2C324C();
  sub_1AC2ADEA4();
  return sub_1AC30B2CC();
}

unint64_t sub_1AC2C23E0()
{
  v2 = qword_1EB54CD70;
  if (!qword_1EB54CD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C750);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2C2468()
{
  v2 = qword_1EB54CD78;
  if (!qword_1EB54CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C750);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2C24F0()
{
  v2 = qword_1EB54CD88;
  if (!qword_1EB54CD88)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CD88);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t type metadata accessor for AnimationOptions()
{
  v4 = qword_1EB54CDE0;
  if (!qword_1EB54CDE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CDE0);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_1AC2C2BC8()
{
  v2 = qword_1EB54CDA8;
  if (!qword_1EB54CDA8)
  {
    type metadata accessor for AnimationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CDA8);
    return WitnessTable;
  }

  return v2;
}

uint64_t block_copy_helper_66(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1AC2C2CB4()
{
  v2 = qword_1EB54CDB8;
  if (!qword_1EB54CDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CDB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CDB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2C2D3C()
{
  v2 = qword_1EB54CDC0;
  if (!qword_1EB54CDC0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CDC0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2C2DA0()
{
  v2 = qword_1EB54CDC8;
  if (!qword_1EB54CDC8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CDC8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2C2E04()
{
  v2 = qword_1EB54CDD0;
  if (!qword_1EB54CDD0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CDD0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2C2E68()
{
  v2 = qword_1EB54CDD8;
  if (!qword_1EB54CDD8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CDD8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_72(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_84(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1AC2C3084()
{
  v2 = qword_1EB54CDE8;
  if (!qword_1EB54CDE8)
  {
    type metadata accessor for AnimationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CDE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2C3134()
{
  v2 = qword_1EB54CDF0;
  if (!qword_1EB54CDF0)
  {
    type metadata accessor for AnimationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CDF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2C31CC()
{
  v2 = qword_1EB54CDF8;
  if (!qword_1EB54CDF8)
  {
    type metadata accessor for AnimationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CDF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2C324C()
{
  v2 = qword_1EB54CE00;
  if (!qword_1EB54CE00)
  {
    type metadata accessor for AnimationOptions();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2C32CC()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553D78);
  __swift_project_value_buffer(v1, qword_1EB553D78);
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  return sub_1AC309E5C();
}

uint64_t sub_1AC2C3370()
{
  if (qword_1EB552430 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553D78);
}

uint64_t sub_1AC2C33DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC2C3370();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

HeadphoneSettingsUI::DeepLinkingPayloadKeys_optional __swiftcall DeepLinkingPayloadKeys.init(rawValue:)(Swift::String rawValue)
{
  v4 = v1;
  sub_1AC30B18C();
  *v2 = "highlightIdentifier";
  *(v2 + 8) = 19;
  *(v2 + 16) = 2;
  *(v2 + 24) = "selectionIdentifier";
  *(v2 + 32) = 19;
  *(v2 + 40) = 2;
  *(v2 + 48) = "bluetoothAddress";
  *(v2 + 56) = 16;
  *(v2 + 64) = 2;
  sub_1AC206300();
  v5 = sub_1AC30B12C();

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      if (v5 != 2)
      {

        *v4 = 3;
        return result;
      }

      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  *v4 = v6;
}

unint64_t sub_1AC2C36BC()
{
  v2 = qword_1EB54CE08;
  if (!qword_1EB54CE08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2C382C@<X0>(uint64_t *a1@<X8>)
{
  result = DeepLinkingPayloadKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

BOOL static HeadphoneSettingsDeeplinksContainer.shouldShowModernUI(for:)(uint64_t a1)
{
  v50 = __dst;
  v44 = sub_1AC2C4050;
  v45 = sub_1AC215C98;
  v46 = sub_1AC215C90;
  v47 = sub_1AC215C90;
  v48 = sub_1AC215CA4;
  v72 = 0;
  v49 = 0;
  v51 = sub_1AC309E6C();
  v52 = *(v51 - 8);
  v53 = v51 - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v55 = v18 - v54;
  *(v2 + 40) = a1;
  sub_1AC30929C();
  if (v65)
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C3D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
    }
  }

  else
  {
    sub_1AC204664(v64);
    v66 = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
  }

  if (v69)
  {
    v40 = __dst;
    sub_1AC2051E4(&v66, __dst);
    v39 = *(v50 + 3);
    v38 = *(v50 + 4);
    __swift_project_boxed_opaque_existential_1(v40, v39);
    (*(v38 + 8))(&v58, v39);
    v57 = v58;
    v56 = 0;
    v41 = static HeadphoneSettingsUIFeatureType.== infix(_:_:)(&v57, &v56);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return v41;
  }

  else
  {
    v3 = v55;
    sub_1AC204664(&v66);
    v4 = sub_1AC2C3370();
    (*(v52 + 16))(v3, v4, v51);
    v36 = sub_1AC309E4C();
    v37 = sub_1AC30AD2C();
    v26 = 17;
    v28 = 7;
    v30 = swift_allocObject();
    *(v30 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v27 = 32;
    v5 = swift_allocObject();
    v29 = v5;
    *(v5 + 16) = v44;
    *(v5 + 24) = 0;
    v6 = swift_allocObject();
    v7 = v29;
    v33 = v6;
    *(v6 + 16) = v45;
    *(v6 + 24) = v7;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    v32 = sub_1AC30B18C();
    v34 = v8;

    v9 = v30;
    v10 = v34;
    *v34 = v46;
    v10[1] = v9;

    v11 = v31;
    v12 = v34;
    v34[2] = v47;
    v12[3] = v11;

    v13 = v33;
    v14 = v34;
    v34[4] = v48;
    v14[5] = v13;
    sub_1AC206300();

    if (os_log_type_enabled(v36, v37))
    {
      v15 = v49;
      v19 = sub_1AC30AE6C();
      v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v20 = sub_1AC213EE4(0);
      v21 = sub_1AC213EE4(1);
      v22 = &v63;
      v63 = v19;
      v23 = &v62;
      v62 = v20;
      v24 = &v61;
      v61 = v21;
      sub_1AC213F38(2, &v63);
      sub_1AC213F38(1, v22);
      v59 = v46;
      v60 = v30;
      sub_1AC213F4C(&v59, v22, v23, v24);
      v25 = v15;
      if (v15)
      {

        __break(1u);
      }

      else
      {
        v59 = v47;
        v60 = v31;
        sub_1AC213F4C(&v59, &v63, &v62, &v61);
        v18[1] = 0;
        v59 = v48;
        v60 = v33;
        sub_1AC213F4C(&v59, &v63, &v62, &v61);
        _os_log_impl(&dword_1AC1C3000, v36, v37, "%s Showing legacy HPS", v19, 0xCu);
        sub_1AC213F98(v20);
        sub_1AC213F98(v21);
        sub_1AC30AE4C();
      }
    }

    else
    {
    }

    v16 = MEMORY[0x1E69E5920](v36);
    (*(v52 + 8))(v55, v51, v16);
    return 0;
  }
}

uint64_t URLComponents.subscript.getter(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v24 = a1;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v22 = 0;
  v25 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v9 - v25;
  v30 = v3;
  v31 = v4;
  v29 = v2;
  v27 = sub_1AC308F9C();
  if (!v27)
  {
    v20 = v22;
    goto LABEL_9;
  }

  v21 = v27;
  v5 = v22;
  v28 = v27;

  v16 = &v9;
  MEMORY[0x1EEE9AC00](&v9);
  v17 = &v9 - 4;
  *(&v9 - 2) = v24;
  *(&v9 - 1) = v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE18);
  sub_1AC2C43DC();
  sub_1AC30AA6C();
  v19 = v5;
  if (!v5)
  {

    sub_1AC209190();
    v14 = sub_1AC308F8C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v26, 1) != 1)
    {
      v9 = sub_1AC308F7C();
      v10 = v7;
      (*(v15 + 8))(v26, v14);
      v11 = v9;
      v12 = v10;
      v13 = v19;
      return v11;
    }

    sub_1AC2C4464(v26);
    v20 = v19;
LABEL_9:
    v11 = 0;
    v12 = 0;
    v13 = v20;
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC2C432C()
{
  v0 = sub_1AC308F6C();
  v2 = MEMORY[0x1AC5B0060](v0);

  return v2 & 1;
}

unint64_t sub_1AC2C43DC()
{
  v2 = qword_1EB54CE20;
  if (!qword_1EB54CE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CE18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2C4464(uint64_t a1)
{
  v3 = sub_1AC308F8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1AC2C4524()
{
  v2 = qword_1EB54CE28;
  if (!qword_1EB54CE28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE28);
    return WitnessTable;
  }

  return v2;
}

uint64_t dispatch thunk of HeadphoneSettingsDeepLinkType.handleDeeplink(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 16) + **(a4 + 16));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1AC2C470C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1AC2C470C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  *(v6 + 16) = *v3;

  v4 = *(*(v6 + 16) + 8);

  return v4(a1, a2, a3);
}

uint64_t dispatch thunk of HeadphoneSettingsDeepLinkTypeV2.handleDeeplink(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  *(v5 + 16) = v5;
  v13 = (*(a5 + 16) + **(a5 + 16));
  v6 = swift_task_alloc();
  *(v8 + 24) = v6;
  *v6 = *(v8 + 16);
  v6[1] = sub_1AC24746C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1AC2C49E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE30);
  sub_1AC30B18C();
  v15 = v0;
  updated = type metadata accessor for FirmwareUpdateFeature();
  v15->n128_u64[0] = static FirmwareUpdateFeature.deepLinkIdentifier.getter();
  v15->n128_u64[1] = v1;
  v2 = sub_1AC26C2F4();
  v15[2].n128_u64[1] = updated;
  v15[3].n128_u64[0] = &protocol witness table for FirmwareUpdateFeature;
  v15[1].n128_u64[0] = v2;
  v15[3].n128_u64[1] = sub_1AC25B430();
  v15[4].n128_u64[0] = v3;
  v4 = sub_1AC25B2F0();
  v15[6].n128_u64[0] = &unk_1F20F4968;
  v15[6].n128_u64[1] = &off_1F20F48E0;
  v15[4].n128_u64[1] = v4;
  v15[5].n128_u64[0] = v5;
  v15[7].n128_u64[0] = static BatteryChargingFeature.deepLinkIdentifier.getter();
  v15[7].n128_u64[1] = v6;
  v15[9].n128_u64[1] = &type metadata for BatteryChargingFeature;
  v15[10].n128_u64[0] = &protocol witness table for BatteryChargingFeature;
  sub_1AC2589D4(v15 + 8);
  v15[10].n128_u64[1] = sub_1AC269C10();
  v15[11].n128_u64[0] = v7;
  v8 = sub_1AC269AD0();
  v15[13].n128_u64[0] = &unk_1F20F5360;
  v15[13].n128_u64[1] = &off_1F20F52D8;
  v15[11].n128_u64[1] = v8;
  v15[12].n128_u64[0] = v9;
  v14 = type metadata accessor for LiveTranslationFeature();
  v15[14].n128_u64[0] = static LiveTranslationFeature.deepLinkIdentifier.getter();
  v15[14].n128_u64[1] = v10;
  v11 = sub_1AC2CC7F0();
  v15[16].n128_u64[1] = v14;
  v15[17].n128_u64[0] = &protocol witness table for LiveTranslationFeature;
  v15[15].n128_u64[0] = v11;
  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE38);
  result = sub_1AC30A83C();
  qword_1EB5525C8 = result;
  return result;
}

uint64_t *sub_1AC2C4BBC()
{
  if (qword_1EB5525C0 != -1)
  {
    swift_once();
  }

  return &qword_1EB5525C8;
}

uint64_t static HeadphoneSettingsController.deepLinkFeatures.getter()
{
  v1 = sub_1AC2C4BBC();
  swift_beginAccess();
  v2 = *v1;

  swift_endAccess();
  return v2;
}

uint64_t static HeadphoneSettingsController.deepLinkFeatures.setter(uint64_t a1)
{
  v2 = sub_1AC2C4BBC();

  swift_beginAccess();
  *v2 = a1;

  swift_endAccess();
}

uint64_t (*static HeadphoneSettingsController.deepLinkFeatures.modify())()
{
  sub_1AC2C4BBC();
  swift_beginAccess();
  return sub_1AC22D6F0;
}

uint64_t static HeadphoneSettingsController.handleSubpathDeepLinkV2(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[97] = a3;
  v4[96] = a2;
  v4[95] = a1;
  v4[80] = v4;
  v4[81] = 0;
  v4[82] = 0;
  v4[83] = 0;
  v4[84] = 0;
  v4[86] = 0;
  v4[87] = 0;
  v4[88] = 0;
  v4[76] = 0;
  v4[77] = 0;
  v4[91] = 0;
  v5 = sub_1AC309E6C();
  v4[98] = v5;
  v4[99] = *(v5 - 8);
  v4[100] = swift_task_alloc();
  v4[81] = a2;
  v4[82] = a3;
  v4[83] = v3;
  sub_1AC30ABBC();
  v4[101] = sub_1AC30ABAC();
  v10 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC2C4EE8, v10, v6);
}

uint64_t sub_1AC2C4EE8()
{
  v75 = v0;
  v0[80] = v0;
  type metadata accessor for HeadphoneSettingsController();
  v62 = sub_1AC20D658();
  v0[84] = v62;
  v0[70] = sub_1AC308FAC();
  v0[71] = v1;
  v0[72] = sub_1AC30A9DC();
  v0[73] = v2;
  sub_1AC207FC0();
  v63 = sub_1AC30AECC();
  sub_1AC2063F0();
  sub_1AC2063F0();
  v0[85] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8);
  sub_1AC2C6B3C();
  v64 = sub_1AC30AFDC();
  v3 = *(v61 + 776);
  *(v61 + 688) = v64;
  if ([v3 userInfo])
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v61 + 504, v61 + 248);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v61 + 248) = 0;
    *(v61 + 256) = 0;
    *(v61 + 264) = 0;
    *(v61 + 272) = 0;
  }

  *(v61 + 216) = *(v61 + 248);
  *(v61 + 232) = *(v61 + 264);
  if (*(v61 + 240))
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v60 = *(v61 + 752);
    }

    else
    {
      v60 = 0;
    }

    v59 = v60;
  }

  else
  {
    sub_1AC204664(v61 + 216);
    v59 = 0;
  }

  if (!v59)
  {
    goto LABEL_52;
  }

  *(v61 + 696) = v59;
  sub_1AC30A9DC();
  v57 = sub_1AC30A91C();

  v58 = [v59 objectForKey_];
  swift_unknownObjectRelease();
  if (v58)
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v61 + 472, v61 + 312);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v61 + 312) = 0;
    *(v61 + 320) = 0;
    *(v61 + 328) = 0;
    *(v61 + 336) = 0;
  }

  *(v61 + 280) = *(v61 + 312);
  *(v61 + 296) = *(v61 + 328);
  if (*(v61 + 304))
  {
    sub_1AC3095DC();
    if (swift_dynamicCast())
    {
      v56 = *(v61 + 744);
    }

    else
    {
      v56 = 0;
    }

    v55 = v56;
  }

  else
  {
    sub_1AC204664(v61 + 280);
    v55 = 0;
  }

  if (!v55)
  {
    MEMORY[0x1E69E5920](v59);
LABEL_52:
    v8 = *(v61 + 800);
    v23 = *(v61 + 784);
    v24 = *(v61 + 776);
    v22 = *(v61 + 792);
    v9 = sub_1AC2C3370();
    (*(v22 + 16))(v8, v9, v23);
    MEMORY[0x1E69E5928](v24);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    oslog = sub_1AC309E4C();
    v36 = sub_1AC30AD1C();
    v28 = swift_allocObject();
    *(v28 + 16) = 32;
    v29 = swift_allocObject();
    *(v29 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1AC2C6BC4;
    *(v25 + 24) = 0;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1AC215C98;
    *(v30 + 24) = v25;
    v31 = swift_allocObject();
    *(v31 + 16) = 64;
    v32 = swift_allocObject();
    *(v32 + 16) = 8;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1AC257A24;
    *(v27 + 24) = v26;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1AC248118;
    *(v33 + 24) = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
    sub_1AC30B18C();
    v34 = v10;

    *v34 = sub_1AC215C90;
    v34[1] = v28;

    v34[2] = sub_1AC215C90;
    v34[3] = v29;

    v34[4] = sub_1AC215CA4;
    v34[5] = v30;

    v34[6] = sub_1AC215C90;
    v34[7] = v31;

    v34[8] = sub_1AC215C90;
    v34[9] = v32;

    v34[10] = sub_1AC2482A8;
    v34[11] = v33;
    sub_1AC206300();

    if (os_log_type_enabled(oslog, v36))
    {
      buf = sub_1AC30AE6C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
      v20 = sub_1AC213EE4(1);
      v21 = sub_1AC213EE4(1);
      v65 = buf;
      v66 = v20;
      v67 = v21;
      sub_1AC213F38(2, &v65);
      sub_1AC213F38(2, &v65);
      v68 = sub_1AC215C90;
      v69 = v28;
      sub_1AC213F4C(&v68, &v65, &v66, &v67);
      v68 = sub_1AC215C90;
      v69 = v29;
      sub_1AC213F4C(&v68, &v65, &v66, &v67);
      v68 = sub_1AC215CA4;
      v69 = v30;
      sub_1AC213F4C(&v68, &v65, &v66, &v67);
      v68 = sub_1AC215C90;
      v69 = v31;
      sub_1AC213F4C(&v68, &v65, &v66, &v67);
      v68 = sub_1AC215C90;
      v69 = v32;
      sub_1AC213F4C(&v68, &v65, &v66, &v67);
      v68 = sub_1AC2482A8;
      v69 = v33;
      sub_1AC213F4C(&v68, &v65, &v66, &v67);
      _os_log_impl(&dword_1AC1C3000, oslog, v36, "%s Dependency not found: %@ ", buf, 0x16u);
      sub_1AC213F98(v20);
      sub_1AC213F98(v21);
      sub_1AC30AE4C();
    }

    else
    {
    }

    v16 = *(v61 + 800);
    v17 = *(v61 + 784);
    v15 = *(v61 + 792);
    v11 = MEMORY[0x1E69E5920](oslog);
    (*(v15 + 8))(v16, v17, v11);
    sub_1AC2598E4();
    v18 = sub_1AC30B18C();

    MEMORY[0x1E69E5920](v62);
    v37 = v18;
    v38 = 0uLL;
    v39 = 0uLL;
    goto LABEL_56;
  }

  *(v61 + 704) = v55;
  *(v61 + 712) = v64;
  sub_1AC2A1944();
  sub_1AC30A87C();
  v53 = *(v61 + 592);
  v54 = *(v61 + 600);
  if (!v54)
  {
    MEMORY[0x1E69E5920](v55);
    MEMORY[0x1E69E5920](v59);
    goto LABEL_52;
  }

  *(v61 + 608) = v53;
  *(v61 + 616) = v54;
  v4 = sub_1AC30A9FC();
  if (v4)
  {

    MEMORY[0x1E69E5920](v55);
    MEMORY[0x1E69E5920](v59);
    goto LABEL_52;
  }

  sub_1AC2C4BBC();

  swift_beginAccess();
  *(v61 + 624) = v53;
  *(v61 + 632) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE38);
  sub_1AC30A85C();
  sub_1AC2063F0();
  if (!*(v61 + 120))
  {
    sub_1AC204664(v61 + 96);
    swift_endAccess();

    MEMORY[0x1E69E5920](v55);
    MEMORY[0x1E69E5920](v59);
    goto LABEL_52;
  }

  sub_1AC2051E4((v61 + 96), (v61 + 56));
  swift_endAccess();
  v52 = *(v61 + 80);
  v51 = *(v61 + 88);
  __swift_project_boxed_opaque_existential_1((v61 + 56), v52);
  (*(v51 + 8))(v52);
  v70 = sub_1AC29F764(v55, v62);
  sub_1AC2A19F4(v61 + 136);
  *(v61 + 816) = v70;
  *(v61 + 818) = 1;
  *(v61 + 819) = 1;
  if ((sub_1AC30B1AC() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v61 + 56);

    MEMORY[0x1E69E5920](v55);
    MEMORY[0x1E69E5920](v59);
    goto LABEL_52;
  }

  if ([*(v61 + 776) userInfo])
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v61 + 440, v61 + 376);
    swift_unknownObjectRelease();
  }

  else
  {
    *(v61 + 376) = 0;
    *(v61 + 384) = 0;
    *(v61 + 392) = 0;
    *(v61 + 400) = 0;
  }

  *(v61 + 344) = *(v61 + 376);
  *(v61 + 360) = *(v61 + 392);
  if (*(v61 + 368))
  {
    sub_1AC20D5F4();
    if (swift_dynamicCast())
    {
      v50 = *(v61 + 736);
    }

    else
    {
      v50 = 0;
    }

    v49 = v50;
  }

  else
  {
    sub_1AC204664(v61 + 344);
    v49 = 0;
  }

  *(v61 + 720) = v49;
  if (*(v61 + 720))
  {
    v71 = *(v61 + 720);
  }

  else
  {
    sub_1AC20D5F4();
    v71 = sub_1AC20D658();
    if (*(v61 + 720))
    {
      sub_1AC206988((v61 + 720));
    }
  }

  v48 = *(v61 + 776);
  v44 = v71;
  *(v61 + 728) = v71;
  v5 = MEMORY[0x1E69E5928](v55);
  (*((*v62 & *MEMORY[0x1E69E7D40]) + 0x88))(v55, v5);
  sub_1AC3095DC();
  v6 = sub_1AC3095CC();
  *(v61 + 432) = MEMORY[0x1E69E6158];
  *(v61 + 408) = v6;
  *(v61 + 416) = v7;
  MEMORY[0x1E69E5928](v55);
  v42 = *(v61 + 432);
  v40 = __swift_project_boxed_opaque_existential_1((v61 + 408), v42);
  v41 = *(v42 - 8);
  v43 = swift_task_alloc();
  (*(v41 + 16))(v43, v40, v42);
  v45 = sub_1AC30B19C();
  (*(v41 + 8))(v43, v42);

  [v44 __swift_setObject_forKeyedSubscript_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v61 + 408);
  v46 = *(v61 + 80);
  v47 = *(v61 + 88);
  __swift_project_boxed_opaque_existential_1((v61 + 56), v46);
  (*(v47 + 24))(v48, v55, v62, v46);
  memcpy((v61 + 176), (v61 + 16), 0x28uLL);
  if (*(v61 + 176))
  {
    v72 = *(v61 + 176);
    v73 = *(v61 + 184);
    v74 = *(v61 + 200);
  }

  else
  {
    sub_1AC2598E4();
    v72 = sub_1AC30B18C();
    v73 = 0uLL;
    v74 = 0uLL;
    if (*(v61 + 176))
    {
      sub_1AC2C715C((v61 + 176));
    }
  }

  MEMORY[0x1E69E5920](v44);
  __swift_destroy_boxed_opaque_existential_1(v61 + 56);

  MEMORY[0x1E69E5920](v55);
  MEMORY[0x1E69E5920](v59);

  MEMORY[0x1E69E5920](v62);
  v37 = v72;
  v38 = v73;
  v39 = v74;
LABEL_56:
  v14 = *(v61 + 760);

  *v14 = v37;
  *(v14 + 8) = v38;
  *(v14 + 24) = v39;
  v12 = *(*(v61 + 640) + 8);

  return v12();
}

unint64_t sub_1AC2C6B3C()
{
  v2 = qword_1EB54CE40;
  if (!qword_1EB54CE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54C8E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE40);
    return WitnessTable;
  }

  return v2;
}

uint64_t static HeadphoneSettingsController.handleSubpathDeepLink(_:_:)(uint64_t a1, uint64_t a2)
{
  v3[27] = v3;
  v3[28] = 0;
  v3[29] = 0;
  v3[30] = 0;
  v3[28] = a1;
  v3[29] = a2;
  v3[30] = v2;
  v3[32] = sub_1AC30ABBC();
  v3[33] = sub_1AC30ABAC();
  v4 = swift_task_alloc();
  *(v6 + 272) = v4;
  *v4 = *(v6 + 216);
  v4[1] = sub_1AC2C6CF8;

  return static HeadphoneSettingsController.handleSubpathDeepLinkV2(_:_:)(v6 + 96, a1, a2);
}

uint64_t sub_1AC2C6CF8()
{
  *(*v0 + 216) = *v0;

  v3 = sub_1AC30AB9C();

  return MEMORY[0x1EEE6DFA0](sub_1AC2C6E50, v3, v1);
}

uint64_t sub_1AC2C6E50()
{
  v0[27] = v0;
  sub_1AC2C71B4(v0 + 12, v0 + 17);
  memcpy(v0 + 2, v0 + 12, 0x28uLL);
  if (v0[2])
  {
    v7 = v9[2];

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9[31] = v8;
  if (v9[31])
  {
    v10 = v9[31];
  }

  else
  {
    sub_1AC2598E4();
    v10 = sub_1AC30B18C();
    if (v9[31])
    {
      sub_1AC209190();
    }
  }

  sub_1AC2C71B4(v9 + 12, v9 + 22);
  memcpy(v9 + 7, v9 + 12, 0x28uLL);
  if (v9[7])
  {
    v3 = v9[8];
    v4 = v9[9];

    v5 = v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  sub_1AC2C715C(v9 + 12);

  v1 = *(v9[27] + 8);

  return v1(v10, v5, v6);
}

void *sub_1AC2C715C(void *a1)
{
  if (*a1)
  {
  }

  return a1;
}

void *sub_1AC2C71B4(uint64_t *a1, void *a2)
{
  if (*a1)
  {
    v3 = *a1;

    *a2 = v3;
    a2[1] = a1[1];
    v4 = a1[2];

    a2[2] = v4;
    a2[3] = a1[3];
    v5 = a1[4];

    a2[4] = v5;
  }

  else
  {
    memcpy(a2, a1, 0x28uLL);
  }

  return a2;
}

uint64_t sub_1AC2C7268()
{
  v81 = sub_1AC2C84A0;
  v82 = sub_1AC215C98;
  v83 = sub_1AC2C84A0;
  v84 = sub_1AC215C98;
  v85 = sub_1AC2C8560;
  v86 = sub_1AC215C98;
  v87 = sub_1AC215C90;
  v88 = sub_1AC215C90;
  v89 = sub_1AC215CA4;
  v90 = sub_1AC215C90;
  v91 = sub_1AC215C90;
  v92 = sub_1AC215CA4;
  v93 = sub_1AC215C90;
  v94 = sub_1AC215C90;
  v95 = sub_1AC215CA4;
  v141 = 0;
  v138 = 0;
  v137 = 0;
  v132 = 0;
  v96 = 0;
  v110 = 0;
  v97 = sub_1AC309E6C();
  v98 = *(v97 - 8);
  v99 = v97 - 8;
  v100 = (*(v98 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v97);
  v101 = v37 - v100;
  v141 = v0;
  v102 = sub_1AC3091FC();
  v103 = sub_1AC30965C();
  MEMORY[0x1E69E5920](v102);
  v105 = &v140;
  v140 = v103;
  v104 = &v139;
  v119 = 1;
  v139 = 1;
  v120 = type metadata accessor for HMMultiState();
  v121 = sub_1AC241B7C();
  v122 = MEMORY[0x1E69E7248];
  v106 = sub_1AC30B1BC();
  v115 = 1;
  v138 = v106 & 1;
  v116 = swift_allocObject();
  v137 = v116 + 16;
  v108 = sub_1AC3091FC();
  v109 = sub_1AC3096BC();
  MEMORY[0x1E69E5920](v108);
  v113 = &v136;
  v136 = v109;
  v111 = &v135;
  v135 = 2;
  v112 = type metadata accessor for HMRegionStatus();
  v114 = sub_1AC270C38();
  *(v116 + 16) = sub_1AC30B1BC() & v115;
  v117 = sub_1AC3091FC();
  v118 = sub_1AC3096CC();
  MEMORY[0x1E69E5920](v117);
  v134 = v118;
  v133 = v119;
  if (sub_1AC30B1BC())
  {
    v80 = *(v116 + 16);
    MEMORY[0x1E69E5928](v107);
    if (v80)
    {
      v79 = 1;
    }

    else
    {
      v77 = sub_1AC3091FC();
      v78 = sub_1AC3096DC();
      MEMORY[0x1E69E5920](v77);
      v124 = v78;
      v123 = 2;
      v79 = sub_1AC30B1BC();
    }

    v76 = v79;
    MEMORY[0x1E69E5920](v107);
    *(v116 + 16) = v76 & 1;
  }

  if (v106)
  {
    v75 = *(v116 + 16);
  }

  else
  {
    v75 = 0;
  }

  v74 = v75;
  MEMORY[0x1E69E5928](v107);
  if (v74)
  {
    v73 = 0;
  }

  else
  {
    v71 = sub_1AC3091FC();
    v72 = sub_1AC30969C();
    MEMORY[0x1E69E5920](v71);
    v126 = v72;
    v125 = 1;
    v73 = sub_1AC30B1BC();
  }

  v1 = v101;
  v45 = v73;
  MEMORY[0x1E69E5920](v107);
  v46 = 1;
  v132 = v45 & 1;
  v2 = sub_1AC250850();
  (*(v98 + 16))(v1, v2, v97);
  v52 = 17;
  v55 = 7;
  v47 = swift_allocObject();
  *(v47 + 16) = v45 & v46;
  v49 = swift_allocObject();
  *(v49 + 16) = v106 & v46;

  v69 = sub_1AC309E4C();
  v70 = sub_1AC30ACFC();
  v57 = swift_allocObject();
  v51 = 32;
  *(v57 + 16) = 32;
  v58 = swift_allocObject();
  v53 = 8;
  *(v58 + 16) = 8;
  v54 = 32;
  v3 = swift_allocObject();
  v4 = v47;
  v48 = v3;
  *(v3 + 16) = v81;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  v6 = v48;
  v59 = v5;
  *(v5 + 16) = v82;
  *(v5 + 24) = v6;
  v60 = swift_allocObject();
  *(v60 + 16) = v51;
  v61 = swift_allocObject();
  *(v61 + 16) = v53;
  v7 = swift_allocObject();
  v8 = v49;
  v50 = v7;
  *(v7 + 16) = v83;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v50;
  v62 = v9;
  *(v9 + 16) = v84;
  *(v9 + 24) = v10;
  v63 = swift_allocObject();
  *(v63 + 16) = v51;
  v64 = swift_allocObject();
  *(v64 + 16) = v53;
  v11 = swift_allocObject();
  v12 = v116;
  v56 = v11;
  *(v11 + 16) = v85;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v56;
  v66 = v13;
  *(v13 + 16) = v86;
  *(v13 + 24) = v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v65 = sub_1AC30B18C();
  v67 = v15;

  v16 = v57;
  v17 = v67;
  *v67 = v87;
  v17[1] = v16;

  v18 = v58;
  v19 = v67;
  v67[2] = v88;
  v19[3] = v18;

  v20 = v59;
  v21 = v67;
  v67[4] = v89;
  v21[5] = v20;

  v22 = v60;
  v23 = v67;
  v67[6] = v90;
  v23[7] = v22;

  v24 = v61;
  v25 = v67;
  v67[8] = v91;
  v25[9] = v24;

  v26 = v62;
  v27 = v67;
  v67[10] = v92;
  v27[11] = v26;

  v28 = v63;
  v29 = v67;
  v67[12] = v93;
  v29[13] = v28;

  v30 = v64;
  v31 = v67;
  v67[14] = v94;
  v31[15] = v30;

  v32 = v66;
  v33 = v67;
  v67[16] = v95;
  v33[17] = v32;
  sub_1AC206300();

  if (os_log_type_enabled(v69, v70))
  {
    v34 = v96;
    v38 = sub_1AC30AE6C();
    v37[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v39 = sub_1AC213EE4(0);
    v40 = sub_1AC213EE4(3);
    v41 = &v131;
    v131 = v38;
    v42 = &v130;
    v130 = v39;
    v43 = &v129;
    v129 = v40;
    sub_1AC213F38(2, &v131);
    sub_1AC213F38(3, v41);
    v127 = v87;
    v128 = v57;
    sub_1AC213F4C(&v127, v41, v42, v43);
    v44 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v127 = v88;
      v128 = v58;
      sub_1AC213F4C(&v127, &v131, &v130, &v129);
      v37[7] = 0;
      v127 = v89;
      v128 = v59;
      sub_1AC213F4C(&v127, &v131, &v130, &v129);
      v37[6] = 0;
      v127 = v90;
      v128 = v60;
      sub_1AC213F4C(&v127, &v131, &v130, &v129);
      v37[5] = 0;
      v127 = v91;
      v128 = v61;
      sub_1AC213F4C(&v127, &v131, &v130, &v129);
      v37[4] = 0;
      v127 = v92;
      v128 = v62;
      sub_1AC213F4C(&v127, &v131, &v130, &v129);
      v37[3] = 0;
      v127 = v93;
      v128 = v63;
      sub_1AC213F4C(&v127, &v131, &v130, &v129);
      v37[2] = 0;
      v127 = v94;
      v128 = v64;
      sub_1AC213F4C(&v127, &v131, &v130, &v129);
      v37[1] = 0;
      v127 = v95;
      v128 = v66;
      sub_1AC213F4C(&v127, &v131, &v130, &v129);
      _os_log_impl(&dword_1AC1C3000, v69, v70, "Hearing: shouldShowLoudSoundReduction: Should Show: %s, HA Capa: %s, HP Region: %s", v38, 0x20u);
      sub_1AC213F98(v39);
      sub_1AC213F98(v40);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v35 = MEMORY[0x1E69E5920](v69);
  (*(v98 + 8))(v101, v97, v35);

  return v45 & 1;
}

uint64_t sub_1AC2C84AC()
{
  swift_beginAccess();
  swift_endAccess();
  return sub_1AC30A9DC();
}

uint64_t sub_1AC2C85A0()
{
  sub_1AC30959C();
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  sub_1AC207FC0();
  sub_1AC2C86E4();
  v1 = sub_1AC30AEDC();
  sub_1AC2063F0();
  sub_1AC2063F0();
  sub_1AC2063F0();
  return v1;
}

uint64_t sub_1AC2C86E4()
{
  sub_1AC2C8AC8(0);

  return 0;
}

uint64_t sub_1AC2C8720()
{
  sub_1AC30959C();
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  sub_1AC207FC0();
  sub_1AC2C86E4();
  v1 = sub_1AC30AEDC();
  sub_1AC2063F0();
  sub_1AC2063F0();
  sub_1AC2063F0();
  return v1;
}

uint64_t sub_1AC2C8864()
{
  v6 = [v0 address];
  if (v6)
  {
    sub_1AC30A92C();
    v4 = v1;
    MEMORY[0x1E69E5920](v6);
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  sub_1AC30A9DC();
  sub_1AC30A9DC();
  sub_1AC207FC0();
  sub_1AC2C86E4();
  v3 = sub_1AC30AEDC();
  sub_1AC2063F0();
  sub_1AC2063F0();
  sub_1AC2063F0();
  return v3;
}

uint64_t sub_1AC2C8AC8(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 <= 0)
    {
      return MEMORY[0x1E69E7CC0];
    }

    type metadata accessor for CompareOptions();
    v1 = sub_1AC30AB3C();

    *(v1 + 16) = v3;

    return v1;
  }

  return result;
}

uint64_t type metadata accessor for CompareOptions()
{
  v4 = qword_1EB54CE48;
  if (!qword_1EB54CE48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CE48);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_1AC2C8C0C()
{
  sub_1AC30A9DC();
  sub_1AC20BE24();
  type metadata accessor for LiveTranslationFeature();
  v1 = sub_1AC20BE88();
  sub_1AC30A9DC();
  sub_1AC20BEE0();
  v2 = sub_1AC308FBC();

  MEMORY[0x1E69E5920](v1);

  return v2;
}

uint64_t sub_1AC2C8D4C()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553D90);
  __swift_project_value_buffer(v1, qword_1EB553D90);
  sub_1AC30A9DC();
  sub_1AC30A9DC();
  return sub_1AC309E5C();
}

uint64_t sub_1AC2C8DF0()
{
  if (qword_1EB5526D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553D90);
}

uint64_t sub_1AC2C8E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC2C8DF0();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t sub_1AC2C8EF0(uint64_t a1, uint64_t a2)
{
  v120 = a1;
  v147 = a2;
  v146 = v2;
  v121 = sub_1AC248080;
  v122 = sub_1AC226634;
  v123 = sub_1AC226640;
  v124 = sub_1AC22664C;
  v125 = sub_1AC248080;
  v126 = sub_1AC226634;
  v127 = sub_1AC226640;
  v128 = sub_1AC22664C;
  v129 = sub_1AC248080;
  v130 = sub_1AC226634;
  v131 = sub_1AC226640;
  v132 = sub_1AC22664C;
  v133 = sub_1AC215C90;
  v134 = sub_1AC215C90;
  v135 = sub_1AC226658;
  v136 = sub_1AC215C90;
  v137 = sub_1AC215C90;
  v138 = sub_1AC226658;
  v139 = sub_1AC215C90;
  v140 = sub_1AC215C90;
  v141 = sub_1AC226658;
  v142 = "Fatal error";
  v143 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v144 = "HeadphoneSettingsUI/LiveTranslationFeature.swift";
  v176 = 0;
  v175 = 0;
  v174 = 0;
  v166 = 0;
  v163 = 0;
  v159 = 0;
  v145 = 0;
  v148 = sub_1AC309E6C();
  v149 = *(v148 - 8);
  v150 = v148 - 8;
  v151 = (*(v149 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v148);
  v152 = &v53 - v151;
  v176 = v120;
  v175 = v3;
  v174 = v4;
  sub_1AC30929C();
  if (v168)
  {
    v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE58);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v169 = 0;
      v170 = 0;
      v171 = 0;
      v172 = 0;
      v173 = 0;
    }
  }

  else
  {
    sub_1AC204664(v167);
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
  }

  v117 = v172 != 0;
  v166 = v172 != 0;
  sub_1AC204664(&v169);
  v118 = sub_1AC30916C();
  if (v118)
  {
    v116 = v118;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v111 = v116;
  v112 = [v116 personalTranslatorCapability];
  MEMORY[0x1E69E5920](v111);
  v115 = &v165;
  v165 = v112;
  v113 = &v164;
  v164 = 2;
  v114 = type metadata accessor for AAFeatureCapability();
  sub_1AC212BF0();
  if (sub_1AC30B1BC())
  {
    v110 = MobileGestalt_get_current_device();
    if (v110)
    {
      v109 = v110;
      v106 = v110;
      deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();
      MEMORY[0x1E69E5920](v106);
      v108 = deviceSupportsPersonalTranslator;
      goto LABEL_12;
    }

    sub_1AC30B05C();
    __break(1u);
  }

  v108 = 0;
LABEL_12:
  v5 = v152;
  v73 = v108;
  v74 = 1;
  v163 = v108 & 1;
  v72 = &v160;
  v161 = &type metadata for TranslateFeatures;
  v162 = sub_1AC2CA34C();
  v75 = sub_1AC30911C();
  __swift_destroy_boxed_opaque_existential_1(v72);
  v159 = v75 & 1 & v74;
  v6 = sub_1AC2C8DF0();
  (*(v149 + 16))(v5, v6, v148);
  v84 = 17;
  v89 = 7;
  v76 = swift_allocObject();
  *(v76 + 16) = v117;
  v80 = swift_allocObject();
  *(v80 + 16) = v73 & v74;
  v86 = swift_allocObject();
  *(v86 + 16) = v75 & v74;
  v104 = sub_1AC309E4C();
  v105 = sub_1AC30AD2C();
  v92 = swift_allocObject();
  *(v92 + 16) = 0;
  v93 = swift_allocObject();
  v85 = 4;
  *(v93 + 16) = 4;
  v88 = 32;
  v7 = swift_allocObject();
  v8 = v76;
  v77 = v7;
  *(v7 + 16) = v121;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v77;
  v78 = v9;
  *(v9 + 16) = v122;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v78;
  v79 = v11;
  *(v11 + 16) = v123;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v79;
  v94 = v13;
  *(v13 + 16) = v124;
  *(v13 + 24) = v14;
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  v96 = swift_allocObject();
  *(v96 + 16) = v85;
  v15 = swift_allocObject();
  v16 = v80;
  v81 = v15;
  *(v15 + 16) = v125;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v81;
  v82 = v17;
  *(v17 + 16) = v126;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v82;
  v83 = v19;
  *(v19 + 16) = v127;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  v22 = v83;
  v97 = v21;
  *(v21 + 16) = v128;
  *(v21 + 24) = v22;
  v98 = swift_allocObject();
  *(v98 + 16) = 0;
  v99 = swift_allocObject();
  *(v99 + 16) = v85;
  v23 = swift_allocObject();
  v24 = v86;
  v87 = v23;
  *(v23 + 16) = v129;
  *(v23 + 24) = v24;
  v25 = swift_allocObject();
  v26 = v87;
  v90 = v25;
  *(v25 + 16) = v130;
  *(v25 + 24) = v26;
  v27 = swift_allocObject();
  v28 = v90;
  v91 = v27;
  *(v27 + 16) = v131;
  *(v27 + 24) = v28;
  v29 = swift_allocObject();
  v30 = v91;
  v101 = v29;
  *(v29 + 16) = v132;
  *(v29 + 24) = v30;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
  v100 = sub_1AC30B18C();
  v102 = v31;

  v32 = v92;
  v33 = v102;
  *v102 = v133;
  v33[1] = v32;

  v34 = v93;
  v35 = v102;
  v102[2] = v134;
  v35[3] = v34;

  v36 = v94;
  v37 = v102;
  v102[4] = v135;
  v37[5] = v36;

  v38 = v95;
  v39 = v102;
  v102[6] = v136;
  v39[7] = v38;

  v40 = v96;
  v41 = v102;
  v102[8] = v137;
  v41[9] = v40;

  v42 = v97;
  v43 = v102;
  v102[10] = v138;
  v43[11] = v42;

  v44 = v98;
  v45 = v102;
  v102[12] = v139;
  v45[13] = v44;

  v46 = v99;
  v47 = v102;
  v102[14] = v140;
  v47[15] = v46;

  v48 = v101;
  v49 = v102;
  v102[16] = v141;
  v49[17] = v48;
  sub_1AC206300();

  if (os_log_type_enabled(v104, v105))
  {
    v50 = v145;
    v65 = sub_1AC30AE6C();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
    v64 = 0;
    v66 = sub_1AC213EE4(0);
    v67 = sub_1AC213EE4(v64);
    v68 = &v157;
    v157 = v65;
    v69 = &v156;
    v156 = v66;
    v70 = &v155;
    v155 = v67;
    sub_1AC213F38(0, &v157);
    sub_1AC213F38(3, v68);
    v153 = v133;
    v154 = v92;
    sub_1AC213F4C(&v153, v68, v69, v70);
    v71 = v50;
    if (v50)
    {

      __break(1u);
    }

    else
    {
      v153 = v134;
      v154 = v93;
      sub_1AC213F4C(&v153, &v157, &v156, &v155);
      v62 = 0;
      v153 = v135;
      v154 = v94;
      sub_1AC213F4C(&v153, &v157, &v156, &v155);
      v61 = 0;
      v153 = v136;
      v154 = v95;
      sub_1AC213F4C(&v153, &v157, &v156, &v155);
      v60 = 0;
      v153 = v137;
      v154 = v96;
      sub_1AC213F4C(&v153, &v157, &v156, &v155);
      v59 = 0;
      v153 = v138;
      v154 = v97;
      sub_1AC213F4C(&v153, &v157, &v156, &v155);
      v58 = 0;
      v153 = v139;
      v154 = v98;
      sub_1AC213F4C(&v153, &v157, &v156, &v155);
      v57 = 0;
      v153 = v140;
      v154 = v99;
      sub_1AC213F4C(&v153, &v157, &v156, &v155);
      v56 = 0;
      v153 = v141;
      v154 = v101;
      sub_1AC213F4C(&v153, &v157, &v156, &v155);
      _os_log_impl(&dword_1AC1C3000, v104, v105, "Live Translation: Support: contentReady: %{BOOL}d, capability: %{BOOL}d, featureEnabled: %{BOOL}d", v65, 0x14u);
      v55 = 0;
      sub_1AC213F98(v66);
      sub_1AC213F98(v67);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v51 = MEMORY[0x1E69E5920](v104);
  (*(v149 + 8))(v152, v148, v51);
  if (v73)
  {
    v54 = v75;
  }

  else
  {
    v54 = 0;
  }

  LOBYTE(v158) = v117;
  HIBYTE(v158) = v54 & 1;
  return v158;
}

unint64_t sub_1AC2CA34C()
{
  v2 = qword_1EB54CE50;
  if (!qword_1EB54CE50)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE50);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2CA3C4(uint64_t a1, void *a2)
{
  v60 = a2;
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v67 = 0;
  v61 = sub_1AC309AAC();
  v62 = *(v61 - 8);
  v63 = v62;
  v64 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v65 = v28 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = a1;
  v77 = v3;
  v76 = v4;
  sub_1AC30929C();
  if (v69)
  {
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE58);
    if (!swift_dynamicCast())
    {
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
    }
  }

  else
  {
    sub_1AC204664(v68);
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
  }

  if (v73)
  {
    v51 = __dst;
    sub_1AC2051E4(&v70, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88);
    sub_1AC30A9DC();
    v48 = v5;
    v49 = sub_1AC2C8C0C();
    v50 = v6;

    sub_1AC205220();
    v54 = sub_1AC309D3C();

    v52 = v28;
    MEMORY[0x1EEE9AC00](v28);
    v26 = v59;
    v27 = v7;
    v55 = sub_1AC309CDC();
    v53 = v55;

    v67 = v55;
    sub_1AC309DFC();
    v56 = MEMORY[0x1AC5AF460]();
    v57 = sub_1AC309DDC();

    if (v57)
    {
      sub_1AC30A9DC();
      v33 = v8;
      v39 = sub_1AC2C8C0C();
      v40 = v9;

      v41 = 0;
      v66[8] = type metadata accessor for LiveTranslationFeature();
      v66[5] = v59;
      v38 = sub_1AC2598E4();
      v35 = 7;
      v43 = swift_allocObject();
      v34 = v43 + 16;
      v10 = v60;
      swift_unknownObjectWeakInit();

      v45 = __dst;
      v36 = v66;
      sub_1AC241BFC(__dst, v66);
      v11 = swift_allocObject();
      v12 = v36;
      v37 = v11;
      *(v11 + 16) = v43;
      sub_1AC2051E4(v12, (v11 + 24));
      v13 = sub_1AC20599C();
      v42 = &v18;
      v26 = v37;
      v25 = sub_1AC2D0DFC;
      v24 = v41;
      v23 = v41;
      v22 = v41;
      v21 = v41;
      v20 = v38;
      v19 = v13 & 1;
      v18 = v41;
      sub_1AC309A9C();

      v44 = sub_1AC309D1C();
      (*(v63 + 8))(v65, v61);
      v46 = sub_1AC309D2C();

      __swift_destroy_boxed_opaque_existential_1(v45);
      return v46;
    }

    else
    {
      sub_1AC30A9DC();
      v28[2] = v14;
      v28[3] = sub_1AC2C8C0C();
      v28[4] = v15;

      v29 = 0;
      memset(&v66[9], 0, 32);
      v16 = sub_1AC20599C();
      v30 = &v18;
      v26 = v29;
      v25 = sub_1AC2CBC3C;
      v24 = v29;
      v23 = v29;
      v22 = v29;
      v21 = v29;
      v20 = v29;
      v19 = v16 & 1;
      v18 = v29;
      sub_1AC309A9C();
      v31 = sub_1AC309D1C();
      (*(v63 + 8))(v65, v61);
      v32 = sub_1AC309D2C();

      __swift_destroy_boxed_opaque_existential_1(__dst);
      return v32;
    }
  }

  else
  {
    sub_1AC204664(&v70);
    v28[0] = 0;
    v28[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC2CA9D8(void *a1, uint64_t a2, void *a3)
{
  v71 = a1;
  v73 = a2;
  v72 = a3;
  v91 = 0;
  v90 = 0;
  v89 = 0;
  v74 = 0;
  v66 = sub_1AC30A90C();
  v67 = *(v66 - 8);
  v68 = v66 - 8;
  v69 = (*(v67 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v70 = v27 - v69;
  v75 = sub_1AC30A8EC();
  v76 = *(v75 - 8);
  v77 = v75 - 8;
  v81 = *(v76 + 64);
  v78 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v79 = v27 - v78;
  v80 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v82 = v27 - v80;
  v83 = (v81 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v84 = v27 - v83;
  v91 = v5;
  v90 = v6;
  v89 = v7;
  sub_1AC309DFC();
  v85 = MEMORY[0x1AC5AF460]();
  v86 = sub_1AC309DDC();
  MEMORY[0x1E69E5920](v85);
  if (v86)
  {
    v37 = &v88;
    v88 = v73;
    v31 = 47;
    sub_1AC30A8DC();
    v36 = "";
    v40 = 0;
    v39 = 1;
    sub_1AC30A9DC();
    v27[1] = v17;
    sub_1AC30A8CC();

    v29 = v72[3];
    v28 = v72[4];
    __swift_project_boxed_opaque_existential_1(v72, v29);
    (*(*(v28 + 8) + 24))(v29);
    v30 = v18;
    sub_1AC30A8BC();

    sub_1AC30A9DC();
    v32 = v19;
    sub_1AC30A8CC();

    v34 = v72[3];
    v33 = v72[4];
    __swift_project_boxed_opaque_existential_1(v72, v34);
    (*(*(v33 + 8) + 24))(v34);
    v35 = v20;
    sub_1AC30A8BC();

    sub_1AC30A9DC();
    v38 = v21;
    sub_1AC30A8CC();

    (*(v76 + 16))(v82, v84, v75);
    (*(v76 + 32))(v79, v82, v75);
    (*(v76 + 8))(v84, v75);
    sub_1AC30A8FC();
    v41 = sub_1AC30A9DC();
    v42 = v22;
    v23 = type metadata accessor for LiveTranslationFeature();
    v43 = sub_1AC2162E8(v70, v41, v42, v23);
    v44 = v24;

    (*(v67 + 8))(v70, v66);
    v48 = sub_1AC30A91C();

    v46 = *MEMORY[0x1E69C5900];
    MEMORY[0x1E69E5928](v46);
    sub_1AC30A92C();
    v45 = v25;
    v47 = sub_1AC30A91C();

    *&v26 = MEMORY[0x1E69E5920](v46).n128_u64[0];
    [v71 setProperty:v48 forKey:{v47, v26}];
    MEMORY[0x1E69E5920](v47);
  }

  else
  {
    v54 = &v87;
    v87 = v73;
    v49 = 32;
    sub_1AC30A8DC();
    v56 = 1;
    sub_1AC30A9DC();
    v50 = v8;
    sub_1AC30A8CC();

    v52 = v72[3];
    v51 = v72[4];
    __swift_project_boxed_opaque_existential_1(v72, v52);
    (*(*(v51 + 8) + 24))(v52);
    v53 = v9;
    sub_1AC30A8BC();

    v57 = 0;
    sub_1AC30A9DC();
    v55 = v10;
    sub_1AC30A8CC();

    (*(v76 + 16))(v82, v84, v75);
    (*(v76 + 32))(v79, v82, v75);
    (*(v76 + 8))(v84, v75);
    sub_1AC30A8FC();
    v58 = sub_1AC30A9DC();
    v59 = v11;
    v12 = type metadata accessor for LiveTranslationFeature();
    v60 = sub_1AC2162E8(v70, v58, v59, v12);
    v61 = v13;

    (*(v67 + 8))(v70, v66);
    v65 = sub_1AC30A91C();

    v63 = *MEMORY[0x1E69C5900];
    MEMORY[0x1E69E5928](v63);
    sub_1AC30A92C();
    v62 = v14;
    v64 = sub_1AC30A91C();

    *&v15 = MEMORY[0x1E69E5920](v63).n128_u64[0];
    [v71 setProperty:v65 forKey:{v64, v15}];
    MEMORY[0x1E69E5920](v64);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2CB2DC(uint64_t a1, void *a2)
{
  v53 = a1;
  v52 = a2;
  v46 = "Fatal error";
  v47 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v48 = "HeadphoneSettingsUI/LiveTranslationFeature.swift";
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v49 = 0;
  v50 = (*(*(sub_1AC30901C() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v51 = &v14 - v50;
  v54 = type metadata accessor for TranslationVideoHeader();
  v55 = (*(*(v54 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v14 - v55;
  v57 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v14 - v57;
  v75 = &v14 - v57;
  v59 = v4 + 16;
  v74 = v4 + 16;
  v73 = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v41 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    v42 = [v41 traitCollection];
    *&v6 = MEMORY[0x1E69E5920](v41).n128_u64[0];
    v43 = [v42 userInterfaceStyle];
    MEMORY[0x1E69E5920](v42);
    v44 = v43;
    v45 = 0;
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
    v44 = 0;
    v45 = 1;
  }

  v38 = v45;
  v39 = v44;
  v68 = v44;
  v69 = v45 & 1;
  v70 = 2;
  v71 = 0;
  if (v45)
  {
    v37 = 0;
  }

  else
  {
    v61[1] = v39;
    v62 = v38 & 1;
    v36 = v61;
    v61[0] = v39;
    v34 = &v60;
    v60 = v70;
    v35 = type metadata accessor for UIUserInterfaceStyle();
    sub_1AC2D167C();
    v37 = sub_1AC30A89C();
  }

  if (v37)
  {
    v32 = v52[3];
    v31 = v52[4];
    __swift_project_boxed_opaque_existential_1(v52, v32);
    LODWORD(v33) = (*(v31 + 32))(v32);
  }

  else
  {
    v30 = v52[3];
    v29 = v52[4];
    __swift_project_boxed_opaque_existential_1(v52, v30);
    LODWORD(v33) = (*(v29 + 24))(v30);
  }

  HIDWORD(v33) = v7;
  v26 = v33;
  v67 = v33;
  v25 = v52[3];
  v24 = v52[4];
  __swift_project_boxed_opaque_existential_1(v52, v25);
  (*(v24 + 16))(v25);
  sub_1AC23ACC8(v51, v58, *&v26, *(&v26 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE60);
  sub_1AC2D0E10(v58, v56);
  sub_1AC2D0E98();
  v66 = sub_1AC30A71C();
  v27 = sub_1AC30A26C();
  v65 = v27;
  *&v8 = MEMORY[0x1E69E5928](v27).n128_u64[0];
  v28 = [v27 view];
  *&v9 = MEMORY[0x1E69E5920](v27).n128_u64[0];
  if (v28)
  {
    v23 = v28;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v21 = v23;
  [v23 setNeedsLayout];
  MEMORY[0x1E69E5920](v21);
  *&v10 = MEMORY[0x1E69E5928](v27).n128_u64[0];
  v22 = [v27 view];
  *&v11 = MEMORY[0x1E69E5920](v27).n128_u64[0];
  if (v22)
  {
    v20 = v22;
  }

  else
  {
    sub_1AC30B05C();
    __break(1u);
  }

  v17 = v20;
  [v20 layoutIfNeeded];
  MEMORY[0x1E69E5920](v17);
  sub_1AC2D0F18();
  MEMORY[0x1E69E5928](v27);
  v18 = sub_1AC2CBBD8(2, v27);
  v64 = v18;
  v19 = v53 + 16;
  swift_beginAccess();
  v63 = swift_unknownObjectWeakLoadStrong();
  if (v63)
  {
    v15 = &v63;
    v16 = v63;
    MEMORY[0x1E69E5928](v63);
    sub_1AC206988(v15);
    swift_endAccess();
    *&v12 = MEMORY[0x1E69E5928](v18).n128_u64[0];
    [v16 showController_];
    MEMORY[0x1E69E5920](v18);
    MEMORY[0x1E69E5920](v16);
  }

  else
  {
    sub_1AC206988(&v63);
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v18);
  MEMORY[0x1E69E5920](v27);
  return sub_1AC2D0F7C(v58);
}

id sub_1AC2CBBD8(uint64_t a1, uint64_t a2)
{
  v4 = [swift_getObjCClassFromMetadata() translateSettingsDownloadControllerWithUsageContext:a1 headerController:a2];
  MEMORY[0x1E69E5920](a2);
  return v4;
}

uint64_t sub_1AC2CBC54()
{
  v52 = "Fatal error";
  v53 = "Unexpectedly found nil while unwrapping an Optional value";
  v54 = "HeadphoneSettingsUI/LiveTranslationFeature.swift";
  v55 = sub_1AC2D0E08;
  v56 = sub_1AC248118;
  v57 = sub_1AC215C90;
  v58 = sub_1AC215C90;
  v59 = sub_1AC2482A8;
  v85[1] = *MEMORY[0x1E69E9840];
  v82 = 0;
  v80 = 0;
  v65 = 0;
  v60 = sub_1AC309E6C();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v60);
  v64 = v22 - v63;
  v66 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v74 = v22 - v66;
  v76 = sub_1AC30901C();
  v72 = *(v76 - 8);
  v73 = v76 - 8;
  v67 = (*(v72 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v76);
  v68 = v22 - v67;
  v69 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22 - v67);
  v70 = v22 - v69;
  v82 = v22 - v69;
  v75 = 1;
  sub_1AC30A9DC();
  v71 = v1;
  sub_1AC30900C();

  if ((*(v72 + 48))(v74, v75, v76) == 1)
  {
    sub_1AC30B05C();
    __break(1u);
  }

  (*(v72 + 32))(v70, v74, v76);
  v85[0] = 0;
  v51 = [objc_opt_self() defaultWorkspace];
  if (v51)
  {
    v50 = v51;
    v48 = v51;
    (*(v72 + 16))(v68, v70, v76);
    v47 = sub_1AC308FEC();
    (*(v72 + 8))(v68, v76);
    v81 = v85[0];
    v49 = [v48 openSensitiveURL:v47 withOptions:0 error:&v81];
    v46 = v81;
    MEMORY[0x1E69E5928](v81);
    v2 = v85[0];
    v85[0] = v46;
    MEMORY[0x1E69E5920](v2);
    MEMORY[0x1E69E5920](v47);
    v3 = MEMORY[0x1E69E5920](v48);
    if ((v49 & 1) == 0)
    {
      v30 = v85[0];
      v32 = sub_1AC308FDC();
      MEMORY[0x1E69E5920](v30);
      swift_willThrow();
      v5 = v64;
      v31 = 0;
      v6 = v32;
      v80 = v32;
      v7 = sub_1AC2C8DF0();
      (*(v61 + 16))(v5, v7, v60);
      v8 = v32;
      v35 = 7;
      v36 = swift_allocObject();
      *(v36 + 16) = v32;
      v44 = sub_1AC309E4C();
      v45 = sub_1AC30AD1C();
      v33 = 17;
      v38 = swift_allocObject();
      *(v38 + 16) = 64;
      v39 = swift_allocObject();
      *(v39 + 16) = 8;
      v34 = 32;
      v9 = swift_allocObject();
      v10 = v36;
      v37 = v9;
      *(v9 + 16) = v55;
      *(v9 + 24) = v10;
      v11 = swift_allocObject();
      v12 = v37;
      v41 = v11;
      *(v11 + 16) = v56;
      *(v11 + 24) = v12;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8);
      v40 = sub_1AC30B18C();
      v42 = v13;

      v14 = v38;
      v15 = v42;
      *v42 = v57;
      v15[1] = v14;

      v16 = v39;
      v17 = v42;
      v42[2] = v58;
      v17[3] = v16;

      v18 = v41;
      v19 = v42;
      v42[4] = v59;
      v19[5] = v18;
      sub_1AC206300();

      if (os_log_type_enabled(v44, v45))
      {
        v20 = v31;
        v23 = sub_1AC30AE6C();
        v22[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8);
        v24 = sub_1AC213EE4(1);
        v25 = sub_1AC213EE4(0);
        v26 = &v79;
        v79 = v23;
        v27 = &v84;
        v84 = v24;
        v28 = &v83;
        v83 = v25;
        sub_1AC213F38(2, &v79);
        sub_1AC213F38(1, v26);
        v77 = v57;
        v78 = v38;
        sub_1AC213F4C(&v77, v26, v27, v28);
        v29 = v20;
        if (v20)
        {

          __break(1u);
        }

        else
        {
          v77 = v58;
          v78 = v39;
          sub_1AC213F4C(&v77, &v79, &v84, &v83);
          v22[1] = 0;
          v77 = v59;
          v78 = v41;
          sub_1AC213F4C(&v77, &v79, &v84, &v83);
          _os_log_impl(&dword_1AC1C3000, v44, v45, "HeadphoneOptimizedBatteryCharingViewController: Failed to open URL with LaunchServices: %@", v23, 0xCu);
          sub_1AC213F98(v24);
          sub_1AC213F98(v25);
          sub_1AC30AE4C();
        }
      }

      else
      {
      }

      v21 = MEMORY[0x1E69E5920](v44);
      (*(v61 + 8))(v64, v60, v21);
    }
  }

  else
  {
    sub_1AC206988(v85);
  }

  return (*(v72 + 8))(v70, v76, v3);
}

uint64_t sub_1AC2CC82C()
{
  v0 = sub_1AC30A9DC();
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

_BYTE *LiveTranslationFeature.baseFeature.getter@<X0>(uint64_t a1@<X8>)
{
  v3[5] = 0;
  v3[3] = type metadata accessor for LiveTranslationFeature();
  v3[4] = &off_1F20F9788;
  v3[0] = sub_1AC2CC7F0();
  return sub_1AC29F3A0(v3, a1);
}

uint64_t LiveTranslationFeature.handleDeepLink(_:headphoneDevice:host:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v83 = a3;
  v84 = a1;
  v80 = a4;
  v81 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v102 = 0;
  v100 = 0;
  v99 = 0;
  v93 = 0;
  sub_1AC30901C();
  MEMORY[0x1EEE9AC00](0);
  v82 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for TranslationVideoHeader();
  v86 = *(*(v85 - 8) + 64);
  MEMORY[0x1EEE9AC00](v84);
  v88 = (v86 + 15) & 0xFFFFFFFFFFFFFFF0;
  v87 = v31 - v88;
  MEMORY[0x1EEE9AC00](v6);
  v89 = v31 - v88;
  v119 = v31 - v88;
  v118 = v7;
  v117 = a2;
  v116 = v8;
  v115 = v9;
  sub_1AC30929C();
  if (v106)
  {
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE58);
    if (!swift_dynamicCast())
    {
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
    }
  }

  else
  {
    sub_1AC204664(v105);
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 0;
  }

  if (v110)
  {
    sub_1AC2051E4(&v107, __dst);
    v10 = v83;
    v76 = [v83 traitCollection];

    v77 = [v76 userInterfaceStyle];
    v104 = v77;
    v103 = 2;
    v78 = type metadata accessor for UIUserInterfaceStyle();
    sub_1AC218134();
    if (sub_1AC30B1BC())
    {
      v74 = v113;
      v73 = v114;
      __swift_project_boxed_opaque_existential_1(__dst, v113);
      LODWORD(v75) = (*(v73 + 32))(v74);
    }

    else
    {
      v72 = v113;
      v71 = v114;
      __swift_project_boxed_opaque_existential_1(__dst, v113);
      LODWORD(v75) = (*(v71 + 24))(v72);
    }

    HIDWORD(v75) = v11;
    v66 = v75;
    v102 = v75;
    v65 = v113;
    v64 = v114;
    __swift_project_boxed_opaque_existential_1(__dst, v113);
    (*(v64 + 16))(v65);
    sub_1AC23ACC8(v82, v89, *&v66, *(&v66 + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE60);
    sub_1AC2D0E10(v89, v87);
    sub_1AC2D0E98();
    v101 = sub_1AC30A71C();
    v68 = sub_1AC30A26C();
    v67 = v68;
    v100 = v68;
    v12 = v68;
    v70 = [v68 view];
    v69 = v70;

    if (v70)
    {
      v63 = v69;
    }

    else
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v60 = v63;
    [v63 setNeedsLayout];

    v13 = v67;
    v62 = [v67 view];
    v61 = v62;

    if (v62)
    {
      v59 = v61;
    }

    else
    {
      sub_1AC30B05C();
      __break(1u);
    }

    v56 = v59;
    [v59 layoutIfNeeded];

    sub_1AC2D0F18();
    v14 = v67;
    v57 = sub_1AC2CBBD8(2, v67);
    v99 = v57;
    v58 = [v84 userInfo];
    if (v58)
    {
      v55 = v58;
      v54 = v58;
      v53 = v90;
      sub_1AC30AEFC();
      sub_1AC241B1C(v53, &v95);
      swift_unknownObjectRelease();
    }

    else
    {
      v95 = 0uLL;
      v96 = 0uLL;
    }

    v97[1] = v96;
    v97[0] = v95;
    if (*(&v96 + 1))
    {
      sub_1AC20D5F4();
      if (swift_dynamicCast())
      {
        v52 = v90[4];
      }

      else
      {
        v52 = 0;
      }

      v51 = v52;
    }

    else
    {
      sub_1AC204664(v97);
      v51 = 0;
    }

    v94 = v51;
    if (v51)
    {
      v98 = v94;
    }

    else
    {
      sub_1AC20D5F4();
      v98 = sub_1AC20D658();
      if (v94)
      {
        sub_1AC206988(&v94);
      }
    }

    v43 = v98;
    v93 = v98;
    v15 = sub_1AC30A9DC();
    v92 = MEMORY[0x1E69E6158];
    v91[0] = v15;
    v91[1] = v16;
    v17 = v83;
    v35 = v92;
    v39 = v91;
    __swift_project_boxed_opaque_existential_1(v91, v92);
    v33 = *(v35 - 8);
    v34 = v33;
    v37 = v31;
    v18 = MEMORY[0x1EEE9AC00](v31);
    v36 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v18);
    v38 = sub_1AC30B19C();
    (*(v34 + 8))(v36, v35);
    [v43 __swift_setObject_forKeyedSubscript_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v39);
    v44 = 0;
    v41 = sub_1AC2598E4();
    v42 = sub_1AC30B18C();
    v40 = v20;
    v21 = v83;
    v22 = v57;
    *v40 = v83;
    v23 = v22;
    v24 = v42;
    v40[1] = v57;
    sub_1AC206300();
    v45 = v24;

    sub_1AC2D0F7C(v89);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    result = v45;
    v46 = v45;
    v47 = v44;
    v48 = v44;
    v49 = v44;
    v50 = v44;
  }

  else
  {
    sub_1AC204664(&v107);
    v32 = 0;
    v31[1] = sub_1AC2598E4();
    result = sub_1AC30B18C();
    v46 = result;
    v47 = v32;
    v48 = v32;
    v49 = v32;
    v50 = v32;
  }

  v26 = v80;
  v27 = v47;
  v28 = v48;
  v29 = v49;
  v30 = v50;
  *v80 = v46;
  v26[1] = v27;
  v26[2] = v28;
  v26[3] = v29;
  v26[4] = v30;
  return result;
}