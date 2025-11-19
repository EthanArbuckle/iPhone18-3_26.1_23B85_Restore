uint64_t sub_190A6CAF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for TapbackCountView()
{
  result = qword_1EAD5B320;
  if (!qword_1EAD5B320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_190A6CBD0()
{
  result = type metadata accessor for AttributedTapbackItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_190A6CC70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D549D0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B330);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  sub_190D549C0();
  sub_190D549B0();
  v23[1] = *(*(v1 + 24) + 16);
  sub_190D54980();
  sub_190D549B0();
  sub_190D549F0();
  v8 = sub_190D555D0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B338) + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B340);
  sub_190D544C0();
  *v15 = swift_getKeyPath();
  *v7 = v8;
  *(v7 + 1) = v10;
  v7[16] = v12 & 1;
  *(v7 + 3) = v14;
  v16 = type metadata accessor for TapbackCountView();
  v17 = *(v2 + *(v16 + 20));
  KeyPath = swift_getKeyPath();
  v19 = &v7[*(v5 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  sub_190D50920();
  sub_190D553B0();
  sub_190A6D038();
  sub_190D556F0();
  sub_190A6D1A8(v7);
  LODWORD(v17) = *(v2 + *(v16 + 24));
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B360) + 36)) = v17;
  if (qword_1EAD51E60 != -1)
  {
    swift_once();
  }

  v20 = qword_1EAD9E348;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B368);
  v22 = (a1 + *(result + 36));
  *v22 = v20;
  v22[1] = sub_190A6CF44;
  v22[2] = 0;
  return result;
}

uint64_t sub_190A6CF70(uint64_t a1)
{
  v2 = sub_190D544D0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_190D54650();
}

unint64_t sub_190A6D038()
{
  result = qword_1EAD5B348;
  if (!qword_1EAD5B348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B330);
    sub_190A6D0F0();
    sub_190233640(&unk_1EAD46798, &qword_1EAD52F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B348);
  }

  return result;
}

unint64_t sub_190A6D0F0()
{
  result = qword_1EAD5B350;
  if (!qword_1EAD5B350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B338);
    sub_190233640(&qword_1EAD5B358, &qword_1EAD5B340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B350);
  }

  return result;
}

uint64_t sub_190A6D1A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B330);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190A6D210()
{
  result = qword_1EAD5B370;
  if (!qword_1EAD5B370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B368);
    sub_190A6D29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B370);
  }

  return result;
}

unint64_t sub_190A6D29C()
{
  result = qword_1EAD5B378;
  if (!qword_1EAD5B378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B360);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B330);
    sub_190A6D038();
    swift_getOpaqueTypeConformance2();
    sub_190233640(&qword_1EAD45208, &qword_1EAD53160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B378);
  }

  return result;
}

uint64_t sub_190A6D3E8(void (*a1)(void), void (*a2)(void))
{
  v4 = sub_190D55430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 6)
  {
    a1();
  }

  else
  {
    a2();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E6980EA8], v4);
  v10 = sub_190D55460();

  (*(v5 + 8))(v7, v4);
  return v10;
}

id sub_190A6D554()
{
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    qword_1EAD5B380 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A6D604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B3B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_190A6D67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B400);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B408);
  v8 = a2 + *(result + 36);
  *v8 = 0;
  *(v8 + 8) = v5;
  *(v8 + 16) = 0;
  *(v8 + 24) = v5;
  *(v8 + 32) = 0;
  return result;
}

uint64_t sub_190A6D71C@<X0>(uint64_t a1@<X8>)
{
  sub_19081E484();
  sub_190D52690();
  v2 = sub_190D555F0();
  v4 = v3;
  v6 = v5;
  sub_190D55480();
  v7 = sub_190D555B0();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_19081E474(v2, v4, v6 & 1);

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_190A6D7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B390);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B398);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = objc_opt_self();
  v13 = [v12 currentDevice];
  v14 = [v13 userInterfaceIdiom];

  if (v14 == 5)
  {
    *&v26[0] = sub_190D55DA0();
    v15 = sub_190D561E0();
  }

  else
  {
    v15 = 0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B3A0);
  v17 = (*(*(v16 - 8) + 16))(v8, a1, v16);
  *&v8[*(v6 + 36)] = v15;
  (*(*a2 + 160))(v17);
  sub_190D56500();
  sub_190D54430();
  sub_19081E40C(v8, v11, &qword_1EAD5B390);
  v18 = &v11[*(v9 + 36)];
  v19 = v26[5];
  *(v18 + 4) = v26[4];
  *(v18 + 5) = v19;
  *(v18 + 6) = v26[6];
  v20 = v26[1];
  *v18 = v26[0];
  *(v18 + 1) = v20;
  v21 = v26[3];
  *(v18 + 2) = v26[2];
  *(v18 + 3) = v21;
  v22 = [v12 currentDevice];
  v23 = [v22 userInterfaceIdiom];

  if (v23 == 5)
  {
    v24 = 20.0;
  }

  else
  {
    v24 = 16.0;
  }

  sub_19081E40C(v11, a3, &qword_1EAD5B398);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B3A8);
  *(a3 + *(result + 36)) = v24;
  return result;
}

uint64_t sub_190A6DB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B388);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_190A6DBC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B3B8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_190A6DCC0()
{
  result = qword_1EAD5B3C8;
  if (!qword_1EAD5B3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B3A8);
    sub_190A6DD4C();
    sub_190A6DEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B3C8);
  }

  return result;
}

unint64_t sub_190A6DD4C()
{
  result = qword_1EAD5B3D0;
  if (!qword_1EAD5B3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B398);
    sub_190A6DDD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B3D0);
  }

  return result;
}

unint64_t sub_190A6DDD8()
{
  result = qword_1EAD5B3D8;
  if (!qword_1EAD5B3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B390);
    sub_190233640(&qword_1EAD5B3E0, &qword_1EAD5B3A0);
    sub_190233640(&unk_1EAD52250, &qword_1EAD55E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B3D8);
  }

  return result;
}

unint64_t sub_190A6DEBC()
{
  result = qword_1EAD5B3E8;
  if (!qword_1EAD5B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B3E8);
  }

  return result;
}

unint64_t sub_190A6DF2C()
{
  result = qword_1EAD5B410;
  if (!qword_1EAD5B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B408);
    sub_190233640(&qword_1EAD5B418, &qword_1EAD5B400);
    sub_190233640(&unk_1EAD52E20, &qword_1EAD594B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B410);
  }

  return result;
}

uint64_t _s11ContentViewVMa_2()
{
  result = qword_1EAD5B428;
  if (!qword_1EAD5B428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190A6E084()
{
  _s9ViewModelCMa_2(319);
  if (v0 <= 0x3F)
  {
    sub_190A6E138();
    if (v1 <= 0x3F)
    {
      sub_190A6E188();
      if (v2 <= 0x3F)
      {
        sub_1908B90C4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_190A6E138()
{
  if (!qword_1EAD5B438)
  {
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5B438);
    }
  }
}

void sub_190A6E188()
{
  if (!qword_1EAD5B440)
  {
    sub_1909C8F50();
    v0 = sub_190D53BC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5B440);
    }
  }
}

uint64_t sub_190A6E200@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = _s11ContentViewVMa_2();
  sub_19022FD14(v1 + *(v10 + 28), v9, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_190A6E408@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v55 = a1;
  v3 = _s11ContentViewVMa_2();
  v51 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = v4;
  v54 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_190D541B0();
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v46 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B448);
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = v35 - v6;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B450);
  MEMORY[0x1EEE9AC00](v48);
  v44 = v35 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B458);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v56 = v35 - v8;
  result = CKFrameworkBundle();
  if (result)
  {
    v10 = result;
    v11 = sub_190D56ED0();
    v12 = sub_190D56ED0();
    v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

    v14 = sub_190D56F10();
    v16 = v15;

    v67 = v14;
    v68 = v16;
    v41 = *(v2 + 8);
    v40 = *(v2 + 16);
    v39 = *(v2 + 24);
    v38 = *(v2 + 32);
    v37 = *(v2 + 40);
    v36 = *(v2 + 48);
    v62 = v41;
    v63 = v40;
    *&v64 = v39;
    *(&v64 + 1) = v38;
    v65 = v37;
    v66 = v36;
    v35[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B460);
    v17 = sub_190D55FF0();
    v35[1] = v35;
    MEMORY[0x1EEE9AC00](v17);
    MEMORY[0x1EEE9AC00](v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B468);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B470);
    sub_190A700FC();
    sub_190233640(&qword_1EAD5B480, &qword_1EAD5B468);
    sub_19081E484();
    sub_190233640(&qword_1EAD5B488, &qword_1EAD5B470);
    v19 = v42;
    sub_190D56120();
    v20 = sub_190D55E10();
    KeyPath = swift_getKeyPath();
    v22 = v44;
    (*(v43 + 32))(v44, v19, v45);
    v23 = v48;
    v24 = (v22 + *(v48 + 36));
    *v24 = KeyPath;
    v24[1] = v20;
    v25 = v46;
    sub_190D541A0();
    v26 = sub_190A70150();
    v27 = v52;
    sub_190D55790();
    (*(v47 + 8))(v25, v27);
    sub_1902796E0(v22);
    v57 = v41;
    v58 = v40;
    *&v59 = v39;
    *(&v59 + 1) = v38;
    v60 = v37;
    v61 = v36;
    sub_190D55FD0();
    v28 = v62;
    v47 = v63;
    v29 = v64;
    LOBYTE(v13) = v65;
    v57 = v62;
    v58 = v63;
    v59 = v64;
    v60 = v65;
    v30 = v54;
    sub_190A70234(v2, v54);
    v31 = (*(v51 + 80) + 16) & ~*(v51 + 80);
    v32 = swift_allocObject();
    sub_190A70298(v30, v32 + v31);
    v62 = v23;
    v63 = v27;
    *&v64 = v26;
    *(&v64 + 1) = MEMORY[0x1E697C178];
    swift_getOpaqueTypeConformance2();
    sub_190A70378();
    v33 = v50;
    v34 = v56;
    sub_190D55C20();

    sub_1908B8238(v28, v47, v29, *(&v29 + 1), v13);
    return (*(v49 + 8))(v34, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A6EBB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B4B0);
  v28 = *(v3 - 8);
  v4 = v28;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B4B8);
  v30 = *(v10 - 8);
  v11 = v30;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B4C0);
  sub_190A704AC();
  sub_190D562E0();
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B4E8);
  sub_190A7067C();
  v27 = v9;
  sub_190D562E0();
  v17 = *(v11 + 16);
  v29 = v13;
  v17(v13, v16, v10);
  v18 = *(v4 + 16);
  v19 = v9;
  v20 = v3;
  v18(v6, v19, v3);
  v21 = v31;
  v17(v31, v13, v10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B4F8);
  v18(&v21[*(v22 + 48)], v6, v20);
  v23 = *(v28 + 8);
  v23(v27, v20);
  v24 = *(v30 + 8);
  v24(v16, v10);
  v23(v6, v20);
  return (v24)(v29, v10);
}

uint64_t sub_190A6EEE0(uint64_t *a1)
{
  v2 = _s11ContentViewVMa_2();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = *a1;
  swift_getKeyPath();
  v11[1] = v5;
  sub_190A70740();
  sub_190D51C20();

  swift_beginAccess();
  v6 = sub_190D52690();
  v7 = sub_190C83EB8(v6);

  v11[0] = v7;
  sub_190A70234(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_190A70298(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B4D8);
  sub_190233640(&qword_1EAD5B510, &qword_1EAD5B500);
  sub_190A70530();
  sub_190A70798();
  return sub_190D56290();
}

uint64_t sub_190A6F0F8()
{
  swift_getKeyPath();
  sub_190A70740();
  sub_190D51C20();

  swift_beginAccess();
  v0 = sub_190D52690();
  sub_190C83FE0(v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B508);
  sub_190233640(&qword_1EAD5B510, &qword_1EAD5B500);
  sub_190A700FC();
  swift_getOpaqueTypeConformance2();
  sub_190A70798();
  return sub_190D56290();
}

uint64_t sub_190A6F294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_190D548D0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B4A0);
  return sub_190A6F2EC(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_190A6F2EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53018);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v48 - v8;
  v51 = sub_190D53A60();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v48 = *a1;
  v12 = a1[3];
  v13 = a1[4];
  v14 = *(a1 + 40);
  v15 = a1[6];
  v56 = a1[2];
  v57 = v11;
  v67 = v11;
  v68 = v56;
  v54 = v13;
  v55 = v12;
  v69 = v12;
  v70 = v13;
  v53 = v14;
  v71 = v14;
  v52 = v15;
  v72 = v15;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B460);
  sub_190D55FD0();
  v16 = 0;
  v17 = 0;
  v18 = v62;
  v19 = v63;
  v20 = v64;
  v21 = v65;
  v22 = v66;
  if ((v66 & 1) == 0)
  {
    sub_190D52690();
    v16 = v20;
    v17 = v21;
  }

  sub_1908B8238(v18, v19, v20, v21, v22);
  _s11ContentViewVMa_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B420);
  sub_190D53BB0();
  v23 = v67;
  sub_190A6E200(v10);
  v24 = sub_1908B773C(v16, v17, v23, 0, 1, v10);

  (*(v49 + 8))(v10, v51);
  if (v24)
  {
    v25 = sub_190D55E90();
    sub_190D50920();
  }

  else
  {
    v25 = 0;
  }

  v67 = v57;
  v68 = v56;
  v69 = v55;
  v70 = v54;
  v71 = v53;
  v72 = v52;
  sub_190D55FD0();
  v26 = v62;
  v27 = v63;
  if ((v66 & 1) == 0)
  {
    v28 = v64;
    v29 = v65;
    sub_190D52690();
    sub_1908B8238(v26, v27, v28, v29, 0);
  }

  v67 = v26;
  v68 = v27;
  sub_19081E484();
  v30 = sub_190D555F0();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  KeyPath = swift_getKeyPath();
  v38 = &v6[*(v58 + 36)];
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53038) + 28);
  v40 = *MEMORY[0x1E6980FA8];
  v41 = sub_190D55560();
  (*(*(v41 - 8) + 104))(v38 + v39, v40, v41);
  *v38 = swift_getKeyPath();
  *v6 = v30;
  *(v6 + 1) = v32;
  v6[16] = v34 & 1;
  *(v6 + 3) = v36;
  *(v6 + 4) = KeyPath;
  *(v6 + 5) = 1;
  v6[48] = 0;
  v42 = v6;
  v43 = v59;
  sub_190A703CC(v42, v59);
  v44 = v60;
  sub_19022FD14(v43, v60, &qword_1EAD53018);
  v45 = v61;
  *v61 = v25;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B4A8);
  sub_19022FD14(v44, v45 + *(v46 + 48), &qword_1EAD53018);
  sub_190A7043C(v43);
  sub_190A7043C(v44);
}

uint64_t sub_190A6F764@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = a2;
  v51 = a3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B520);
  v47 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v5 = &v45 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B528);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v45 - v6;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B508);
  v7 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v14 = *a1;
  v13 = a1[1];
  v63 = *(a1 + 32);
  v15 = v63;
  v61 = v14;
  v62 = v13;
  v16 = *a1;
  v17 = *(a1 + 1);
  v18 = *(a1 + 2);
  v19 = *(a1 + 3);
  if ((v63 & 1) != 0 || (v20 = *(&v62 + 1)) == 0)
  {
    v36 = v61;
    v37 = sub_190D52690();
    *&v53 = v36;
    *(&v53 + 1) = v37;
    sub_19081E484();
    *v9 = sub_190D555F0();
    *(v9 + 1) = v38;
    v9[16] = v39 & 1;
    *(v9 + 3) = v40;
    *(v9 + 4) = v16;
    *(v9 + 5) = v17;
    *(v9 + 6) = v18;
    *(v9 + 7) = v19;
    v9[64] = v15;
    v9[65] = 1;
    v41 = v50;
    (*(v7 + 32))(v12, v9, v50);
    (*(v7 + 16))(v49, v12, v41);
    swift_storeEnumTagMultiPayload();
    sub_19081BE58(&v61, &v53);
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD521C8);
    v43 = sub_190233640(&qword_1EAD5B4E0, &unk_1EAD521C8);
    v44 = sub_190A700FC();
    *&v53 = v42;
    *(&v53 + 1) = &_s6HandleON;
    v54 = v43;
    v55 = v44;
    swift_getOpaqueTypeConformance2();
    *&v53 = MEMORY[0x1E6981148];
    *(&v53 + 1) = &_s6HandleON;
    v54 = MEMORY[0x1E6981138];
    v55 = v44;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v7 + 8))(v12, v41);
  }

  else
  {
    v21 = v62;
    v22 = sub_190D548D0();
    v60 = 1;
    sub_190A6FC88(&v61, v46, v21, v20, &v53);
    v23 = v54;
    v24 = v55;
    v25 = v56;
    v26 = v57;
    v27 = v58;
    v28 = v53;
    LOBYTE(v53) = v54;
    v59 = v57;
    v29 = v60;
    *v5 = v22;
    *(v5 + 1) = 0;
    v5[16] = v29;
    *(v5 + 24) = v28;
    v5[40] = v23;
    *(v5 + 6) = v24;
    *(v5 + 7) = v25;
    v5[64] = v26;
    *(v5 + 9) = v27;
    *(v5 + 10) = v16;
    *(v5 + 11) = v17;
    *(v5 + 12) = v18;
    *(v5 + 13) = v19;
    v5[112] = v15;
    v5[113] = 1;
    v30 = v47;
    v31 = v52;
    (*(v47 + 16))(v49, v5, v52);
    swift_storeEnumTagMultiPayload();
    sub_190D52690();
    sub_190D52690();
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD521C8);
    v33 = sub_190233640(&qword_1EAD5B4E0, &unk_1EAD521C8);
    v34 = sub_190A700FC();
    *&v53 = v32;
    *(&v53 + 1) = &_s6HandleON;
    v54 = v33;
    v55 = v34;
    swift_getOpaqueTypeConformance2();
    *&v53 = MEMORY[0x1E6981148];
    *(&v53 + 1) = &_s6HandleON;
    v54 = MEMORY[0x1E6981138];
    v55 = v34;
    swift_getOpaqueTypeConformance2();
    sub_190D54C50();
    return (*(v30 + 8))(v5, v31);
  }
}

uint64_t sub_190A6FC88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v9 = sub_190D53A60();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = *a1;
  v17 = sub_190D52690();
  v38 = v16;
  v39 = v17;
  sub_19081E484();
  v18 = sub_190D555F0();
  v35 = v19;
  v36 = v20;
  v37 = v21;
  v22 = *a2;
  sub_190A6E200(v15);
  (*(v10 + 16))(v12, v15, v9);
  _s9ViewModelC13ImageCacheKeyCMa(0);
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = v34;
  *(v23 + 32) = 0;
  *(v23 + 40) = 1;
  (*(v10 + 32))(v23 + OBJC_IVAR____TtCCOV7ChatKit18DetailsInfoTabView15HandleSelection9ViewModel13ImageCacheKey_colorScheme, v12, v9);
  v24 = *(v22 + 40);
  sub_190D52690();
  if (![v24 objectForKey_])
  {
    v25 = objc_opt_self();
    v26 = sub_190D56ED0();
    v27 = [v25 __ck_actionImageForSubscriptionShortName_isFilled_];

    if (!v27)
    {

      (*(v10 + 8))(v15, v9);
      v30 = 0;
      goto LABEL_5;
    }

    v28 = *(v22 + 40);
    v29 = v27;
    [v28 setObject:v29 forKey:v23];
  }

  (*(v10 + 8))(v15, v9);
  v30 = sub_190D55E90();
  sub_190D50920();
LABEL_5:
  v31 = v37 & 1;
  v32 = v35;
  sub_19081BE48(v18, v35, v37 & 1);
  *a5 = v18;
  *(a5 + 8) = v32;
  *(a5 + 16) = v31;
  *(a5 + 24) = v36;
  *(a5 + 32) = 0;
  *(a5 + 40) = 1;
  *(a5 + 48) = v30;
  sub_190D52690();

  sub_19081E474(v18, v32, v31);
}

uint64_t sub_190A6FF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B508);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  LOBYTE(a1) = *(a1 + 32);
  sub_190D52690();
  v16[0] = v8;
  v16[1] = v9;
  sub_19081E484();
  *v7 = sub_190D555F0();
  *(v7 + 1) = v12;
  v7[16] = v13 & 1;
  *(v7 + 3) = v14;
  *(v7 + 4) = v8;
  *(v7 + 5) = v9;
  *(v7 + 6) = v10;
  *(v7 + 7) = v11;
  v7[64] = a1;
  v7[65] = 1;
  (*(v5 + 32))(a2, v7, v4);
  return sub_1908B81B0(v8, v9, v10, v11, a1);
}

unint64_t sub_190A700FC()
{
  result = qword_1EAD5B478;
  if (!qword_1EAD5B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B478);
  }

  return result;
}

unint64_t sub_190A70150()
{
  result = qword_1EAD5B490;
  if (!qword_1EAD5B490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B450);
    sub_190233640(&qword_1EAD5B498, &qword_1EAD5B448);
    sub_190233640(&qword_1EAD451E0, &qword_1EAD52FE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B490);
  }

  return result;
}

uint64_t sub_190A70234(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_2();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A70298(uint64_t a1, uint64_t a2)
{
  v4 = _s11ContentViewVMa_2();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_190A702FC(uint64_t a1, uint64_t a2)
{
  _s11ContentViewVMa_2();
  v3 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v3;
  v5 = *(a2 + 32);
  sub_1908B762C(v4);
}

unint64_t sub_190A70378()
{
  result = qword_1EAD45CE0;
  if (!qword_1EAD45CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45CE0);
  }

  return result;
}

uint64_t sub_190A703CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53018);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A7043C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53018);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190A704AC()
{
  result = qword_1EAD5B4C8;
  if (!qword_1EAD5B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B4C0);
    sub_190A70530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B4C8);
  }

  return result;
}

unint64_t sub_190A70530()
{
  result = qword_1EAD5B4D0;
  if (!qword_1EAD5B4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B4D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD521C8);
    sub_190233640(&qword_1EAD5B4E0, &unk_1EAD521C8);
    sub_190A700FC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B4D0);
  }

  return result;
}

unint64_t sub_190A7067C()
{
  result = qword_1EAD5B4F0;
  if (!qword_1EAD5B4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B4E8);
    sub_190A700FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B4F0);
  }

  return result;
}

unint64_t sub_190A70740()
{
  result = qword_1EAD45CF8;
  if (!qword_1EAD45CF8)
  {
    _s9ViewModelCMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD45CF8);
  }

  return result;
}

unint64_t sub_190A70798()
{
  result = qword_1EAD5B518;
  if (!qword_1EAD5B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B518);
  }

  return result;
}

uint64_t objectdestroyTm_23()
{
  v1 = (_s11ContentViewVMa_2() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  sub_1908B8238(*(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40));

  v6 = v1[8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B420);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D53A60();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_190A70970@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(_s11ContentViewVMa_2() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_190A6F764(a1, v6, a2);
}

uint64_t sub_190A709F0()
{
  sub_190D572A0();
  v0[5] = sub_190D57290();
  v2 = sub_190D57240();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_190A70A84, v2, v1);
}

uint64_t sub_190A70A84()
{
  if (qword_1EAD46A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EAD9D898;
  *(v0 + 64) = qword_1EAD9D898;

  return MEMORY[0x1EEE6DFA0](sub_190A70B1C, v1, 0);
}

uint64_t sub_190A70B1C()
{
  v1 = v0[8];
  swift_beginAccess();
  *(v1 + 112) = MEMORY[0x1E69E7CC8];

  v2 = v0[6];
  v3 = v0[7];

  return MEMORY[0x1EEE6DFA0](sub_190A70BA4, v2, v3);
}

uint64_t sub_190A70BA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190A70E84(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = sub_190D572A0();
  v2[8] = sub_190D57290();
  v4 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A70F20, v4, v3);
}

uint64_t sub_190A70F20()
{
  v1 = v0[5];
  v2 = v0[6];

  v0[9] = _Block_copy(v1);
  v3 = v2;
  v0[10] = sub_190D57290();
  v5 = sub_190D57240();
  v0[11] = v5;
  v0[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_190A70FCC, v5, v4);
}

uint64_t sub_190A70FCC()
{
  *(v0 + 104) = [*(v0 + 48) conversation];
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_190A7107C;

  return CKConversation.shouldShowTranslationTip()();
}

uint64_t sub_190A7107C(char a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[4] = a2;
  *(v4 + 24) = a1;
  v4[2] = v2;
  v5 = v3[13];
  v4[15] = a2;

  v6 = v3[12];
  v7 = v3[11];

  return MEMORY[0x1EEE6DFA0](sub_190A711C8, v7, v6);
}

uint64_t sub_190A711C8()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  if (v1)
  {
    v3 = *(v0 + 24);
    v4 = *(v0 + 72);
    sub_190D519C0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
    sub_190A78648(&qword_1EAD46BD0, MEMORY[0x1E6969770]);
    v5 = sub_190D56D60();
    (v4)[2](v4, v3, v5);
    _Block_release(v4);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_190A712EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_190D572A0();
  v6[3] = sub_190D57290();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_190A713B0;

  return sub_190A71500(a5, a6);
}

uint64_t sub_190A713B0()
{

  v1 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909F3328, v1, v0);
}

uint64_t sub_190A71500(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B568);
  v3[13] = swift_task_alloc();
  v4 = sub_190D519C0();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = sub_190D572A0();
  v3[19] = sub_190D57290();
  v6 = sub_190D57240();
  v3[20] = v6;
  v3[21] = v5;

  return MEMORY[0x1EEE6DFA0](sub_190A71678, v6, v5);
}

uint64_t sub_190A71678()
{
  v0[8] = MEMORY[0x1E69E7CC8];
  v1 = *(v0[9] + 16);
  v0[22] = v1;
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v0[23] = v2;
      v3 = v0[11];
      v4 = v0[9] + 16 * v2;
      v0[24] = *(v4 + 32);
      v0[25] = *(v4 + 40);
      sub_190D52690();
      v5 = [v3 collectionViewController];
      v6 = sub_190D56ED0();
      v7 = [v5 chatItemForGUID_];
      v0[26] = v7;

      if (v7)
      {
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (v8)
        {
          v12 = v8;
          [v8 index];
          v13 = [v12 text];
          v0[27] = v13;
          if (v13)
          {
            v0[28] = sub_190D57290();
            v16 = sub_190D57240();
            v15 = v17;
            v0[29] = v16;
            v0[30] = v17;
            v13 = sub_190A718BC;
            v14 = v16;
          }

          else
          {
            __break(1u);
          }

          return MEMORY[0x1EEE6DFA0](v13, v14, v15);
        }
      }

      v2 = v0[23] + 1;
      if (v2 == v0[22])
      {

        v9 = v0[8];
        goto LABEL_9;
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC8];
LABEL_9:

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_190A718BC()
{
  sub_190D52030();
  v0[31] = sub_190D52010();
  if (qword_1EAD46A30 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = qword_1EAD9D898;
  v0[32] = qword_1EAD9D898;
  v3 = [v1 conversation];
  v4 = [v3 userTranslationLanguageCode];

  sub_190D56F10();
  sub_190D518B0();

  return MEMORY[0x1EEE6DFA0](sub_190A719DC, v2, 0);
}

uint64_t sub_190A719DC()
{
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[24];
    v3 = v0[25];
    sub_190D52690();
    v5 = sub_19022DCEC(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      v0[40] = v7;
      v8 = v0[29];
      v9 = v0[30];
      v10 = sub_190A720F0;
      goto LABEL_6;
    }
  }

  v0[33] = sub_190D57290();
  v11 = sub_190D57240();
  v9 = v12;
  v0[34] = v11;
  v0[35] = v12;
  v10 = sub_190A71AEC;
  v8 = v11;
LABEL_6:

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_190A71AEC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[13];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B570);
  v0[36] = v6;
  v7 = *(v6 + 48);
  (*(v3 + 16))(v4, v1, v2);
  (*(v3 + 56))(v4, 0, 1, v2);
  v13 = (*MEMORY[0x1E69A66D8] + MEMORY[0x1E69A66D8]);
  v8 = swift_task_alloc();
  v0[37] = v8;
  *v8 = v0;
  v8[1] = sub_190A71C20;
  v9 = v0[27];
  v10 = v0[12];
  v11 = v0[10];

  return v13(v5 + v7, v9, v11, v10);
}

uint64_t sub_190A71C20(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;

  v6 = v4[12];
  if (v1)
  {

    sub_19022EEA4(v6, &qword_1EAD54C10);
    v7 = v5[34];
    v8 = v5[35];
    v9 = sub_190A72030;
  }

  else
  {
    v5[38] = a1;
    sub_19022EEA4(v6, &qword_1EAD54C10);
    v7 = v5[34];
    v8 = v5[35];
    v9 = sub_190A71D94;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_190A71D94()
{
  v1 = v0[38];
  v2 = v0[36];
  v12 = v0[32];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];

  *v6 = v1;
  (*(*(v2 - 8) + 56))(v6, 0, 1, v2);
  v7 = *v6;
  (*(v3 + 32))(v4, v6 + *(v2 + 48), v5);
  sub_190D518C0();
  sub_190D518C0();
  v8 = objc_allocWithZone(MEMORY[0x1E69A8308]);
  v9 = sub_190D56ED0();

  v10 = sub_190D56ED0();

  v0[39] = [v8 initWithSourceLanguage:v9 translationLanguage:v10 translatedText:v7];

  (*(v3 + 8))(v4, v5);

  return MEMORY[0x1EEE6DFA0](sub_190A71F38, v12, 0);
}

uint64_t sub_190A71F38()
{
  v1 = v0[39];
  v2 = v0[32];
  v4 = v0[24];
  v3 = v0[25];
  swift_beginAccess();
  v5 = v1;
  sub_190D52690();
  v6 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_190C1C53C(v6, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v2 + 112) = v11;
  swift_endAccess();

  v0[40] = v0[39];
  v8 = v0[29];
  v9 = v0[30];

  return MEMORY[0x1EEE6DFA0](sub_190A720F0, v8, v9);
}

uint64_t sub_190A72030()
{
  v1 = v0[36];
  v2 = v0[13];

  (*(*(v1 - 8) + 56))(v2, 1, 1, v1);
  sub_19022EEA4(v2, &qword_1EAD5B568);
  v0[40] = 0;
  v3 = v0[29];
  v4 = v0[30];

  return MEMORY[0x1EEE6DFA0](sub_190A720F0, v3, v4);
}

uint64_t sub_190A720F0()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_190A72198, v4, v5);
}

uint64_t sub_190A72198()
{
  v1 = v0[26];
  sub_190C3BBC0(v0[40], v0[24], v0[25]);

  v2 = v0[23] + 1;
  if (v2 == v0[22])
  {
LABEL_2:

    v3 = v0[8];

    v4 = v0[1];

    return v4(v3);
  }

  while (1)
  {
    v0[23] = v2;
    v6 = v0[11];
    v7 = v0[9] + 16 * v2;
    v0[24] = *(v7 + 32);
    v0[25] = *(v7 + 40);
    sub_190D52690();
    v8 = [v6 collectionViewController];
    v9 = sub_190D56ED0();
    v10 = [v8 chatItemForGUID_];
    v0[26] = v10;

    if (v10)
    {
      break;
    }

LABEL_6:

    v2 = v0[23] + 1;
    if (v2 == v0[22])
    {
      goto LABEL_2;
    }
  }

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    goto LABEL_6;
  }

  v12 = v11;
  [v11 index];
  v13 = [v12 text];
  v0[27] = v13;
  if (v13)
  {
    v0[28] = sub_190D57290();
    v16 = sub_190D57240();
    v15 = v17;
    v0[29] = v16;
    v0[30] = v17;
    v13 = sub_190A718BC;
    v14 = v16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_190A723EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  sub_190D572A0();
  v6[12] = sub_190D57290();
  v8 = sub_190D57240();
  v6[13] = v8;
  v6[14] = v7;

  return MEMORY[0x1EEE6DFA0](sub_190A72488, v8, v7);
}

uint64_t sub_190A72488()
{
  v1 = *(v0 + 80);
  *(v0 + 120) = [*(v0 + 72) conversation];
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v2 = v4;
  if (v4)
  {
    v5 = (v3 + 16 * v2);
    v6 = *v5;
    v7 = v5[1];
    sub_190D52690();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  *(v0 + 128) = v7;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_190A72570;

  return CKConversation.languagesForIncomingTextMessages(untilGUID:)(v6, v7);
}

uint64_t sub_190A72570(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  *(*v1 + 144) = a1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);

  return MEMORY[0x1EEE6DFA0](sub_190A726D4, v5, v4);
}

uint64_t sub_190A726D4()
{
  if (*(v0[18] + 16) && (v1 = sub_190875EE0(v0[11]), (v2 & 1) != 0))
  {
    v3 = v0[10];
    v4 = *(*(v0[18] + 56) + 8 * v1);
    sub_190D52690();

    sub_190D52690();
    sub_190CA9D08(v4);
    v0[20] = v3;
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_190A72BC8;
    v6 = v0[11];
    v7 = v3;
  }

  else
  {

    v8 = swift_task_alloc();
    v0[19] = v8;
    *v8 = v0;
    v8[1] = sub_190A72828;
    v6 = v0[11];
    v7 = v0[10];
  }

  return sub_190A71500(v7, v6);
}

uint64_t sub_190A72828(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 40) = v1;
  *(v3 + 48) = a1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);

  return MEMORY[0x1EEE6DFA0](sub_190A7294C, v5, v4);
}

uint64_t sub_190A7294C()
{
  v1 = 0;
  v2 = v0[6];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v27 = v0[6];
  v6 = -1;
  v7 = -1 << *(v27 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  while (v8)
  {
LABEL_12:
    v11 = v0[9];
    v12 = *(*(v27 + 56) + 8 * (__clz(__rbit64(v8)) | (v1 << 6)));
    sub_190D52690();
    v13 = v12;
    v14 = [v11 collectionViewController];
    v15 = sub_190D56ED0();

    v16 = [v14 chatItemForGUID_];

    if (v16)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v19 = v16;
        v20 = [v18 messageItem];
        if (v20)
        {
          v21 = v20;
          v26 = v0[9];
          v22 = [v18 index];

          v23 = [v26 conversation];
          [v23 appendTranslation:v13 toMessageItem:v21 forPartIndex:v22];

          v19 = v21;
        }
      }
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_12;
    }
  }

  if (qword_1EAD46A30 == -1)
  {
    goto LABEL_17;
  }

LABEL_21:
  swift_once();
LABEL_17:
  v24 = qword_1EAD9D898;
  v0[22] = qword_1EAD9D898;

  return MEMORY[0x1EEE6DFA0](sub_190A72F8C, v24, 0);
}

uint64_t sub_190A72BC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 56) = v1;
  *(v3 + 64) = a1;

  v4 = *(v2 + 112);
  v5 = *(v2 + 104);

  return MEMORY[0x1EEE6DFA0](sub_190A72D10, v5, v4);
}

uint64_t sub_190A72D10()
{
  v1 = 0;
  v2 = v0[8];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v27 = v0[8];
  v6 = -1;
  v7 = -1 << *(v27 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  while (v8)
  {
LABEL_12:
    v11 = v0[9];
    v12 = *(*(v27 + 56) + 8 * (__clz(__rbit64(v8)) | (v1 << 6)));
    sub_190D52690();
    v13 = v12;
    v14 = [v11 collectionViewController];
    v15 = sub_190D56ED0();

    v16 = [v14 chatItemForGUID_];

    if (v16)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        v18 = v17;
        v19 = v16;
        v20 = [v18 messageItem];
        if (v20)
        {
          v21 = v20;
          v26 = v0[9];
          v22 = [v18 index];

          v23 = [v26 conversation];
          [v23 appendTranslation:v13 toMessageItem:v21 forPartIndex:v22];

          v19 = v21;
        }
      }
    }

    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v10);
    ++v1;
    if (v8)
    {
      v1 = v10;
      goto LABEL_12;
    }
  }

  if (qword_1EAD46A30 == -1)
  {
    goto LABEL_17;
  }

LABEL_21:
  swift_once();
LABEL_17:
  v24 = qword_1EAD9D898;
  v0[22] = qword_1EAD9D898;

  return MEMORY[0x1EEE6DFA0](sub_190A72F8C, v24, 0);
}

uint64_t sub_190A72F8C()
{
  v1 = v0[22];
  swift_beginAccess();
  *(v1 + 112) = MEMORY[0x1E69E7CC8];

  v2 = v0[13];
  v3 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_190A73014, v2, v3);
}

uint64_t sub_190A73014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_190A73094(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_190D519C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v25 = sub_190D57180();
  sub_190D51970();
  v17 = sub_190D572E0();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  (*(v11 + 16))(v13, v16, v10);
  sub_190D572A0();
  v18 = a1;
  v19 = sub_190D57290();
  v20 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 2) = v19;
  *(v21 + 3) = v22;
  v23 = v25;
  *(v21 + 4) = v18;
  *(v21 + 5) = v23;
  (*(v11 + 32))(&v21[v20], v13, v10);
  sub_190857E08(0, 0, v9, v26, v21);

  return (*(v11 + 8))(v16, v10);
}

uint64_t sub_190A73308(uint64_t a1)
{
  v2[43] = a1;
  v2[44] = v1;
  v3 = sub_190D51920();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v4 = sub_190D519C0();
  v2[48] = v4;
  v2[49] = *(v4 - 8);
  v2[50] = swift_task_alloc();
  v5 = sub_190D51350();
  v2[51] = v5;
  v2[52] = *(v5 - 8);
  v2[53] = swift_task_alloc();
  v6 = sub_190D51330();
  v2[54] = v6;
  v2[55] = *(v6 - 8);
  v2[56] = swift_task_alloc();
  v7 = sub_190D51360();
  v2[57] = v7;
  v2[58] = *(v7 - 8);
  v2[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B548);
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  sub_190D572A0();
  v2[62] = sub_190D57290();
  v9 = sub_190D57240();
  v2[63] = v9;
  v2[64] = v8;

  return MEMORY[0x1EEE6DFA0](sub_190A735B0, v9, v8);
}

uint64_t sub_190A735B0()
{
  sub_190D577A0();
  if ((sub_190D57790() & 1) == 0 || !*(v0[43] + 16))
  {
    v8 = v0[44];
    v9 = sub_190D57160();
    v0[66] = v9;
    v0[2] = v0;
    v0[3] = sub_190A740B4;
    v10 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_19088DB28;
    v0[21] = &block_descriptor_60;
    v0[22] = v10;
    [v8 startDownloadFor:v9 completionHandler:v0 + 18];
    v11 = v0 + 2;
    goto LABEL_11;
  }

  v2 = v0[60];
  v1 = v0[61];
  sub_190D52100();
  sub_190D52690();
  sub_190D520F0();
  sub_190D52090();

  sub_19022FD14(v1, v2, &qword_1EAD5B548);
  v3 = sub_190D52080();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[60];
  if (v5 == 1)
  {
    sub_19022EEA4(v0[60], &qword_1EAD5B548);
    v7 = 0;
  }

  else
  {
    v7 = sub_190D52040();
    (*(v4 + 8))(v6, v3);
  }

  v12 = v0[59];
  v13 = v0[56];
  v51 = v0[57];
  v52 = v0[58];
  v14 = v0[54];
  v15 = v0[55];
  v17 = v0[52];
  v16 = v0[53];
  v18 = v0[51];
  v56 = v0[49];
  v57 = v0[48];
  v19 = v0[46];
  v55 = v0[47];
  v53 = v0[50];
  v54 = v0[45];
  v0[42] = v7;
  (*(v15 + 104))(v13, *MEMORY[0x1E69689E0], v14);
  sub_190D51340();
  sub_190D50E50();
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v13, v14);
  sub_190A780F8();
  sub_190A78648(&qword_1EAD5B558, MEMORY[0x1E6968A00]);
  sub_190A7814C();
  sub_190D58120();
  (*(v52 + 8))(v12, v51);
  v20 = v0[40];
  v21 = v0[41];
  sub_190D518B0();
  (*(v19 + 104))(v55, *MEMORY[0x1E69A6648], v54);
  sub_1908EA100(0xD000000000000027, 0x8000000190E6A630);
  (*(v19 + 8))(v55, v54);
  (*(v56 + 8))(v53, v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_190DD1D90;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_19081EA10();
  *(v22 + 32) = v20;
  *(v22 + 40) = v21;
  v11 = CKFrameworkBundle();
  if (!v11)
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v11;
  v24 = sub_190D56ED0();
  v25 = sub_190D56ED0();
  v26 = [v23 localizedStringForKey:v24 value:0 table:v25];

  sub_190D56F10();
  sub_190D56EE0();

  v27 = sub_190D56ED0();

  v28 = sub_190D56ED0();

  v29 = [objc_opt_self() alertControllerWithTitle:v27 message:v28 preferredStyle:1];
  v0[65] = v29;

  v11 = CKFrameworkBundle();
  if (!v11)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v30 = v11;
  v32 = v0[43];
  v31 = v0[44];
  v33 = sub_190D56ED0();
  v34 = sub_190D56ED0();
  v35 = [v30 localizedStringForKey:v33 value:0 table:v34];

  sub_190D56F10();
  v36 = swift_allocObject();
  *(v36 + 16) = v31;
  *(v36 + 24) = v32;
  v37 = v31;
  sub_190D52690();
  v38 = sub_190D56ED0();

  v0[38] = sub_190A781A0;
  v0[39] = v36;
  v0[34] = MEMORY[0x1E69E9820];
  v0[35] = 1107296256;
  v0[36] = sub_19084156C;
  v0[37] = &block_descriptor_66_0;
  v39 = _Block_copy(v0 + 34);

  v40 = objc_opt_self();
  v41 = [v40 actionWithTitle:v38 style:0 handler:v39];
  _Block_release(v39);

  [v29 addAction_];
  v11 = CKFrameworkBundle();
  if (!v11)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v11);
  }

  v42 = v11;
  v43 = v0[44];
  v44 = sub_190D56ED0();
  v45 = sub_190D56ED0();
  v46 = [v42 localizedStringForKey:v44 value:0 table:v45];

  sub_190D56F10();
  v47 = sub_190D56ED0();

  v48 = [v40 actionWithTitle:v47 style:1 handler:0];

  [v29 addAction_];
  v0[10] = v0;
  v0[11] = sub_190A73ED0;
  v49 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_19088DB28;
  v0[29] = &block_descriptor_69;
  v0[30] = v49;
  [v43 presentViewController:v29 animated:1 completion:v0 + 26];
  v11 = v0 + 10;
LABEL_11:

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_190A73ED0()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);

  return MEMORY[0x1EEE6DFA0](sub_190A73FD8, v2, v1);
}

uint64_t sub_190A73FD8()
{
  v1 = v0[65];
  v2 = v0[61];

  sub_19022EEA4(v2, &qword_1EAD5B548);

  v3 = v0[1];

  return v3();
}

uint64_t sub_190A740B4()
{
  v1 = *(*v0 + 512);
  v2 = *(*v0 + 504);

  return MEMORY[0x1EEE6DFA0](sub_190A741BC, v2, v1);
}

uint64_t sub_190A741BC()
{
  v1 = *(v0 + 528);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_190A74280(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_190D572E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_190D572A0();
  v9 = a2;
  sub_190D52690();
  v10 = sub_190D57290();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = a3;
  sub_190857E08(0, 0, v7, &unk_190DEB988, v11);
}

uint64_t sub_190A743BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  sub_190D572A0();
  v5[20] = sub_190D57290();
  v7 = sub_190D57240();
  v5[21] = v7;
  v5[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190A74454, v7, v6);
}

uint64_t sub_190A74454()
{
  v1 = v0[18];
  v2 = sub_190D57160();
  v0[23] = v2;
  v0[2] = v0;
  v0[3] = sub_190A74588;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_19088DB28;
  v0[13] = &block_descriptor_76_0;
  v0[14] = v3;
  [v1 startDownloadFor:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_190A74588()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_190A74690, v2, v1);
}

uint64_t sub_190A74690()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_190A74880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_190D572A0();
  v3[5] = sub_190D57290();
  v5 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A7491C, v5, v4);
}

uint64_t sub_190A7491C()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_190D57180();
  v0[7] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_190A749F0;

  return sub_190A73308(v3);
}

uint64_t sub_190A749F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 48);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_190A74CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_190D572A0();
  v3[5] = sub_190D57290();
  v5 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A74D78, v5, v4);
}

uint64_t sub_190A74D78()
{
  v1 = v0[4];
  v2 = v0[3];

  v0[6] = _Block_copy(v2);
  v3 = sub_190D57180();
  v0[7] = v3;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_190A74E48;

  return sub_190A77BB4(v3);
}

uint64_t sub_190A74E48()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 32);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_190A74FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v14;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_190D519C0();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  sub_190D572A0();
  v8[11] = sub_190D57290();
  v11 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A750A8, v11, v10);
}

uint64_t sub_190A750A8()
{
  v48 = v0;
  v1 = v0[2];

  v2 = [v1 chat];
  if (!v2)
  {
    goto LABEL_36;
  }

  v3 = v2;
  v4 = sub_190D56ED0();
  v5 = &selRef_capStyle;
  v6 = [v3 checkTranslationLanguageStatusForLanguageCode_];

  v7 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  if (v6 <= 1)
  {
    sub_190D52690();
    v8 = sub_1908354D4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
    v11 = (v10 + 1);
    if (v10 >= v9 >> 1)
    {
LABEL_41:
      v8 = sub_1908354D4((v9 > 1), v11, 1, v8);
    }

    v13 = v0[3];
    v12 = v0[4];
    *(v8 + 16) = v11;
    v14 = (v8 + 16 * v10);
    *(v14 + 4) = v13;
    *(v14 + 5) = v12;
  }

  if (v0[6])
  {
    v15 = v0[5];
    v16 = v0[6];
  }

  else
  {
    v17 = v0[9];
    v18 = v0[10];
    v19 = v0[8];
    sub_190D52030();
    sub_190D51FE0();
    v15 = sub_190D518C0();
    v16 = v20;
    v21 = v19;
    v7 = MEMORY[0x1E69E7CC0];
    (*(v17 + 8))(v18, v21);
  }

  sub_190D52690();
  if (v6 >= 2)
  {
    sub_190D52690();
    v23 = sub_190D56ED0();
    v24 = [v3 v5[229]];

    if (v24 > 1)
    {

      v22 = 0;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_1908354D4(0, *(v8 + 16) + 1, 1, v8);
      }

      v26 = *(v8 + 16);
      v25 = *(v8 + 24);
      if (v26 >= v25 >> 1)
      {
        v8 = sub_1908354D4((v25 > 1), v26 + 1, 1, v8);
      }

      *(v8 + 16) = v26 + 1;
      v27 = (v8 + 16 * v26);
      *(v27 + 4) = v15;
      *(v27 + 5) = v16;
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  v6 = sub_190D56ED0();
  v11 = sub_190D56ED0();

  [v3 setAutomaticallyTranslate:1 languageCode:v6 userLanguageCode:v11];

  if (!v22)
  {
    v36 = v3;
    v37 = v0[9];
    v38 = v0[10];
    v39 = v0[8];
    v40 = v0[2];

    v41 = sub_190D57160();
    sub_190D52690();
    sub_190D518B0();
    v42 = sub_190D51940();
    (*(v37 + 8))(v38, v39);
    [v40 translateMessagesWithGUIDs:v41 sourceLanguage:{v42, v45}];
    goto LABEL_35;
  }

  v46 = v3;
  v28 = v0[7];
  v47 = v7;
  v7 = *(v28 + 16);
  if (!v7)
  {
    goto LABEL_34;
  }

  v8 = 0;
  v29 = v28 + 40;
  v9 = MEMORY[0x1E69E7CC0];
  v3 = &selRef_capStyle;
  v45 = v29;
  do
  {
    v5 = (v29 + 16 * v8);
    v10 = v8;
    while (1)
    {
      if (v10 >= v7)
      {
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_40;
      }

      v30 = v0[2];
      v11 = *v5;
      sub_190D52690();
      v31 = [v30 collectionViewController];
      v6 = sub_190D56ED0();
      v32 = [v31 chatItemForGUID_];

      if (!v32)
      {
        goto LABEL_22;
      }

      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        break;
      }

LABEL_22:

LABEL_23:
      ++v10;
      v5 += 2;
      if (v8 == v7)
      {
        goto LABEL_34;
      }
    }

    v6 = v33;
    v34 = v32;
    v35 = [v6 messageItem];

    if (!v35)
    {
      goto LABEL_23;
    }

    MEMORY[0x193AF29E0]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_190D571A0();
    }

    v11 = &v47;
    sub_190D571E0();
    v9 = v47;
    v29 = v45;
  }

  while (v8 != v7);
LABEL_34:
  v41 = sub_190D57160();

  sub_190A77AB4();
  v42 = sub_190D57160();

  v36 = v46;
  [v46 downloadTranslationAssetsForLanguageCodes:v41 messageItemsToTranslateLocally:{v42, v45}];
LABEL_35:

LABEL_36:

  v43 = v0[1];

  return v43();
}

id sub_190A757BC()
{
  result = [v0 chat];
  if (result)
  {
    v2 = result;
    sub_190D52030();
    if ((sub_190D51FD0() & 1) != 0 && ([v2 isAutomaticTranslationEnabled] & 1) == 0)
    {
      v3 = [v2 hasOfferedAutomaticTranslationInTranslateMenu];

      return (v3 ^ 1);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_190A75848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[20] = a4;
  v5[21] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B530);
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B538);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v7 = sub_190D519C0();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  sub_190D572A0();
  v5[34] = sub_190D57290();
  v9 = sub_190D57240();
  v5[35] = v9;
  v5[36] = v8;

  return MEMORY[0x1EEE6DFA0](sub_190A75A18, v9, v8);
}

uint64_t sub_190A75A18()
{
  v1 = v0[20];
  sub_190D52030();
  sub_190D51FE0();
  v0[37] = [v1 conversation];
  v2 = swift_task_alloc();
  v0[38] = v2;
  *v2 = v0;
  v2[1] = sub_190A75AEC;

  return CKConversation.languagesForIncomingTextMessages(untilGUID:)(0, 0);
}

uint64_t sub_190A75AEC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  *(*v1 + 312) = a1;

  v4 = *(v2 + 288);
  v5 = *(v2 + 280);

  return MEMORY[0x1EEE6DFA0](sub_190A75C34, v5, v4);
}

uint64_t sub_190A75C34()
{
  v1 = [*(v0 + 168) IMChatItem];
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v1);
  }

  v2 = v1;
  v3 = [v1 guid];

  v4 = *(v0 + 312);
  if (v3)
  {
    v5 = *(v0 + 248);
    v55 = (v0 + 144);
    v56 = *(v0 + 176);
    v57 = sub_190D56F10();
    v58 = v6;

    v7 = v4 + 64;
    v8 = -1;
    v9 = -1 << *(v4 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v4 + 64);
    v11 = (63 - v9) >> 6;
    v54 = v5;
    sub_190D52690();
    v12 = 0;
    v13 = 0;
    if (v10)
    {
      while (1)
      {
        v14 = v13;
LABEL_10:
        v16 = *(v0 + 208);
        v15 = *(v0 + 216);
        v17 = __clz(__rbit64(v10)) | (v14 << 6);
        (*(v54 + 16))(v15, *(v4 + 48) + *(v54 + 72) * v17, *(v0 + 240));
        v5 = v4;
        *(v15 + *(v56 + 48)) = *(*(v4 + 56) + 8 * v17);
        sub_190A77958(v15, v16);
        v18 = *(v16 + *(v56 + 48));
        *(v0 + 144) = v57;
        *(v0 + 152) = v58;
        v19 = swift_task_alloc();
        *(v19 + 16) = v55;
        sub_190D52690();
        LOBYTE(v18) = sub_190CA8558(sub_1909F5BC8, v19, v18);

        if (v18)
        {
          break;
        }

        v10 &= v10 - 1;
        sub_19022EEA4(*(v0 + 208), &qword_1EAD5B530);
        v13 = v14;
        v7 = v4 + 64;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v50 = *(v0 + 232);
      v51 = *(v0 + 208);
      v53 = *(v0 + 176);
      v52 = *(v0 + 184);

      sub_190A77958(v51, v50);
      (*(v52 + 56))(v50, 0, 1, v53);
LABEL_14:
      v24 = *(v0 + 224);
      v23 = *(v0 + 232);
      v26 = *(v0 + 176);
      v25 = *(v0 + 184);

      sub_19022FD14(v23, v24, &qword_1EAD5B538);
      if ((*(v25 + 48))(v24, 1, v26) == 1)
      {
        v27 = *(v0 + 224);
        v28 = *(v0 + 160);

        sub_19022EEA4(v27, &qword_1EAD5B538);
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_190A7630C;
        v29 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_19088DB28;
        *(v0 + 104) = &block_descriptor_22;
        *(v0 + 112) = v29;
        [v28 presentTranslationLanguagePickerWithCompletionHandler_];
        v1 = (v0 + 16);

        return MEMORY[0x1EEE6DEC8](v1);
      }

      v31 = *(v0 + 248);
      v30 = *(v0 + 256);
      v32 = *(v0 + 240);
      v33 = *(v0 + 224);
      v35 = *(v0 + 192);
      v34 = *(v0 + 200);
      v54 = v0;

      sub_190A77958(v33, v34);
      sub_19022FD14(v34, v35, &qword_1EAD5B530);

      (*(v31 + 32))(v30, v35, v32);
      sub_19022FD14(v34, v35, &qword_1EAD5B530);
      v12 = *(v35 + *(v56 + 48));
      v36 = *(v31 + 8);
      v36(v35, v32);
      v10 = *(v12 + 16);
      v55 = v36;
      if (!v10)
      {
LABEL_27:

LABEL_30:
        v0 = v54;
        v41 = *(v54 + 256);
        v40 = *(v54 + 264);
        v42 = *(v54 + 240);
        v59 = *(v54 + 232);
        v43 = *(v54 + 200);
        v44 = *(v54 + 160);
        sub_190D518C0();
        v45 = sub_190D56ED0();

        sub_190D518C0();
        v46 = sub_190D56ED0();

        v47 = sub_190D57160();

        [v44 enableAutomaticTranslationForLanguageCode:v45 userTranslationCode:v46 affectedMessageGUIDs:v47];

        v55(v41, v42);
        sub_19022EEA4(v43, &qword_1EAD5B530);
        sub_19022EEA4(v59, &qword_1EAD5B538);
        v55(v40, v42);
        goto LABEL_31;
      }

      v5 = 0;
      v37 = (v12 + 40);
      while (1)
      {
        v38 = *(v37 - 1) == v57 && *v37 == v58;
        if (v38 || (sub_190D58760() & 1) != 0)
        {
          break;
        }

        ++v5;
        v37 += 2;
        if (v10 == v5)
        {
          goto LABEL_27;
        }
      }

      v39 = *(v12 + 16);
      if (v39 >= v10)
      {
        if (v10 - v39 == v5)
        {
          goto LABEL_30;
        }

LABEL_37:
        sub_190C22C30(v12, v12 + 32, v5, (2 * v10) | 1);

        goto LABEL_30;
      }
    }

    else
    {
LABEL_7:
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          v20 = *(v0 + 232);
          v22 = *(v0 + 176);
          v21 = *(v0 + 184);

          (*(v21 + 56))(v20, 1, 1, v22);
          goto LABEL_14;
        }

        v10 = *(v7 + 8 * v14);
        ++v13;
        if (v10)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));

LABEL_31:

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_190A7630C()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_190A76414, v2, v1);
}

uint64_t sub_190A76414()
{
  v1 = v0[33];
  v2 = v0[30];
  v3 = v0[31];
  v4 = v0[29];

  sub_19022EEA4(v4, &qword_1EAD5B538);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_190A76660()
{
  v1[37] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C10);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v2 = sub_190D519C0();
  v1[42] = v2;
  v3 = *(v2 - 8);
  v1[43] = v3;
  v1[44] = *(v3 + 64);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  sub_190D572A0();
  v1[48] = sub_190D57290();
  v5 = sub_190D57240();
  v1[49] = v5;
  v1[50] = v4;

  return MEMORY[0x1EEE6DFA0](sub_190A767D0, v5, v4);
}

uint64_t sub_190A767D0()
{
  v30 = v0;
  v1 = v0[47];
  v2 = v0[42];
  v3 = v0[43];
  v5 = v0[40];
  v4 = v0[41];
  v6 = v0[37];
  sub_190D52030();
  sub_190D51FE0();
  v7 = *(v3 + 16);
  v0[51] = v7;
  v0[52] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v4, v1, v2);
  v8 = *(v3 + 56);
  v8(v4, 0, 1, v2);
  v8(v5, 1, 1, v2);
  v9 = [v6 conversation];
  v10 = [v9 suggestedTranslationLanguageCodes];

  v11 = sub_190D57180();
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v0[43];
    v28 = MEMORY[0x1E69E7CC0];
    sub_19082DD94(0, v12, 0);
    v14 = v28;
    v15 = v11 + 40;
    do
    {
      sub_190D52690();
      sub_190D518B0();
      v17 = *(v28 + 16);
      v16 = *(v28 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_19082DD94(v16 > 1, v17 + 1, 1);
      }

      v18 = v0[46];
      v19 = v0[42];
      *(v28 + 16) = v17 + 1;
      (*(v13 + 32))(v28 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v17, v18, v19);
      v15 += 16;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v21 = v0[40];
  v20 = v0[41];
  v23 = v0[38];
  v22 = v0[39];
  v24 = v0[37];
  sub_19022FD14(v20, v22, &qword_1EAD54C10);
  sub_19022FD14(v21, v23, &qword_1EAD54C10);
  v25 = sub_190D51930();
  v29 = 0;
  type metadata accessor for CKLanguageSelectionViewModel();
  swift_allocObject();
  v0[53] = CKLanguageSelectionViewModel.init(excludedLocale:currentSelectedLocale:suggestedLanguages:preferredLanguages:mode:)(v22, v23, v14, v25, &v29);
  sub_19022EEA4(v21, &qword_1EAD54C10);
  sub_19022EEA4(v20, &qword_1EAD54C10);
  v0[54] = [v24 conversation];
  v26 = swift_task_alloc();
  v0[55] = v26;
  *v26 = v0;
  v26[1] = sub_190A76B18;

  return CKConversation.languagesForIncomingTextMessages(untilGUID:)(0, 0);
}

uint64_t sub_190A76B18(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v3[33] = v1;
  v3[34] = a1;
  v4 = v2[54];

  v5 = v2[50];
  v6 = v2[49];

  return MEMORY[0x1EEE6DFA0](sub_190A76C5C, v6, v5);
}

uint64_t sub_190A76C5C()
{
  v1 = CKFrameworkBundle();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DEC8](v1);
  }

  v2 = v1;
  v29 = *(v0 + 272);
  v30 = *(v0 + 424);
  v28 = *(v0 + 408);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v7 = *(v0 + 296);
  v8 = sub_190D56ED0();
  v9 = sub_190D56ED0();
  v10 = [v2 localizedStringForKey:v8 value:0 table:v9];

  v11 = sub_190D56F10();
  v13 = v12;

  v28(v4, v3, v5);
  v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v29;
  (*(v6 + 32))(v15 + v14, v4, v5);
  v16 = v7;
  sub_190D50920();
  v17 = CKFrameworkBundle();
  *(v0 + 280) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C18);
  sub_190D55FC0();
  v18 = *(v0 + 232);
  v19 = *(v0 + 240);
  *(v0 + 288) = 0;
  sub_190D55FC0();
  v20 = *(v0 + 248);
  *(v0 + 80) = v17;
  *(v0 + 88) = v30;
  *(v0 + 96) = v11;
  *(v0 + 104) = v13;
  *(v0 + 112) = 1;
  *(v0 + 120) = sub_190A77824;
  *(v0 + 128) = v15;
  *(v0 + 136) = v18;
  *(v0 + 144) = v19;
  *(v0 + 152) = v20;
  v21 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54C20));
  v22 = sub_190D54B60();
  *(v0 + 448) = v22;
  v23 = [v16 navigationController];
  *(v0 + 456) = v23;
  if (v23)
  {
    v24 = v23;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_190A7704C;
    v25 = swift_continuation_init();
    *(v0 + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57930);
    *(v0 + 168) = MEMORY[0x1E69E9820];
    *(v0 + 176) = 1107296256;
    *(v0 + 184) = sub_19088DB28;
    *(v0 + 192) = &block_descriptor_64;
    *(v0 + 200) = v25;
    [v24 presentViewController:v22 animated:1 completion:v0 + 168];
    v1 = (v0 + 16);

    return MEMORY[0x1EEE6DEC8](v1);
  }

  (*(*(v0 + 344) + 8))(*(v0 + 376), *(v0 + 336));

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_190A7704C()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_190A77154, v2, v1);
}

uint64_t sub_190A77154()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[47];
  v4 = v0[42];
  v5 = v0[43];

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

id sub_190A7723C(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_190D519C0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v14 = *a1;
  if (*a1)
  {
    if (v14 == 1)
    {
    }

    else
    {
      (*(v7 + 16))(v9, v14 + OBJC_IVAR____TtC7ChatKit32CKLanguageSelectionDownloadModel_locale, v6, v11);
      (*(v7 + 32))(v13, v9, v6);
      sub_190D518C0();
      if (*(a3 + 16))
      {
        sub_190875EE0(v13);
        if (v15)
        {
          sub_190D52690();
        }
      }

      v16 = sub_190D56ED0();

      sub_190D518C0();
      v17 = sub_190D56ED0();

      v18 = sub_190D57160();

      [a2 enableAutomaticTranslationForLanguageCode:v16 userTranslationCode:v17 affectedMessageGUIDs:v18];

      (*(v7 + 8))(v13, v6);
    }
  }

  return [a2 dismissViewControllerAnimated:1 completion:{0, v11.n128_f64[0]}];
}

uint64_t sub_190A77630(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_190D572A0();
  v2[4] = sub_190D57290();
  v4 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_190A776C8, v4, v3);
}

uint64_t sub_190A776C8()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_19095B9F0;

  return sub_190A76660();
}

uint64_t sub_190A77778()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_190221DA0;

  return sub_190A77630(v2, v3);
}

id sub_190A77824(uint64_t *a1)
{
  sub_190D519C0();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_190A7723C(a1, v3, v4);
}

uint64_t sub_190A77898(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190A75848(a1, v4, v5, v7, v6);
}

uint64_t sub_190A77958(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A779C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_190221DA0;

  return sub_190A74FA4(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_190A77AB4()
{
  result = qword_1EAD5B540;
  if (!qword_1EAD5B540)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD5B540);
  }

  return result;
}

uint64_t sub_190A77B00()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_190221DA0;

  return sub_190A74CDC(v2, v3, v4);
}

uint64_t sub_190A77BB4(uint64_t a1)
{
  v1[3] = a1;
  sub_190D572A0();
  v1[4] = sub_190D57290();
  v3 = sub_190D57240();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_190A77C4C, v3, v2);
}

uint64_t sub_190A77C4C()
{
  sub_190D52100();
  v0[7] = sub_190D520F0();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_190A77CFC;
  v2 = v0[3];

  return MEMORY[0x1EEE10B80](v2);
}

uint64_t sub_190A77CFC()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_190A77E18;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_190999384;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_190A77E18()
{
  v17 = v0;

  if (qword_1EAD51CA0 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_190D53040();
  __swift_project_value_buffer(v2, qword_1EAD9E028);
  v3 = v1;
  v4 = sub_190D53020();
  v5 = sub_190D576A0();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54020);
    v11 = sub_190D56F50();
    v13 = sub_19021D9F8(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_19020E000, v4, v5, "Failed to download translation assets: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x193AF7A40](v9, -1, -1);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t objectdestroy_28Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_190A78044()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_190221DA0;

  return sub_190A74880(v2, v3, v4);
}

unint64_t sub_190A780F8()
{
  result = qword_1EAD5B550;
  if (!qword_1EAD5B550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B550);
  }

  return result;
}

unint64_t sub_190A7814C()
{
  result = qword_1EAD5B560;
  if (!qword_1EAD5B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B560);
  }

  return result;
}

uint64_t block_copy_helper_64_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_190D50920();
}

uint64_t sub_190A781C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA0;

  return sub_190A743BC(a1, v4, v5, v7, v6);
}

uint64_t sub_190A78280(uint64_t a1)
{
  v4 = *(sub_190D519C0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA0;

  return sub_190A723EC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroy_78Tm()
{
  v1 = sub_190D519C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_190A78458(uint64_t a1)
{
  v4 = *(sub_190D519C0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_190221DA0;

  return sub_190A712EC(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t objectdestroyTm_24()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_190A7859C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_190221DA0;

  return sub_190A70E84(v2, v3);
}

uint64_t sub_190A78648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190A78690()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA0;

  return sub_190A709F0();
}

uint64_t sub_190A78794()
{
  v1 = *v0;

  return sub_190D55E90();
}

id sub_190A787E8()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190A788D0()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190A789B8()
{
  v0 = sub_190D53830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CKFrameworkBundle();
  if (result)
  {
    v5 = result;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = sub_190D56F10();
    v11 = v10;

    v15[0] = v9;
    v15[1] = v11;
    sub_19081E484();
    sub_190D53800();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B590);
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_190DD1D90;
    (*(v1 + 32))(v13 + v12, v3, v0);
    v14 = sub_190B43788(v13);
    swift_setDeallocating();
    (*(v1 + 8))(v13 + v12, v0);
    swift_deallocClassInstance();
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t CKTranscriptBackgroundTranscriptLayoutEnumeratorAction.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_190A78C00()
{
  result = qword_1EAD5B598;
  if (!qword_1EAD5B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B598);
  }

  return result;
}

void sub_190A78C64(void *a1, id a2, void (*a3)(void *))
{
  if (a2)
  {
    v4 = a2;
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9D730);
    v6 = a2;
    v7 = sub_190D53020();
    v8 = sub_190D576A0();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v27 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_190D58800();
      v13 = sub_19021D9F8(v11, v12, &v27);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_19020E000, v7, v8, "> Returned from poster channel fetch with error={%s}.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x193AF7A40](v10, -1, -1);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EAD46218 != -1)
    {
      swift_once();
    }

    v16 = sub_190D53040();
    __swift_project_value_buffer(v16, qword_1EAD9D730);
    v17 = a1;
    v18 = sub_190D53020();
    v19 = sub_190D57680();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;
      if (a1)
      {
        v22 = [v17 description];
        v23 = sub_190D56F10();
        v25 = v24;
      }

      else
      {
        v25 = 0xE300000000000000;
        v23 = 7104878;
      }

      v26 = sub_19021D9F8(v23, v25, &v27);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_19020E000, v18, v19, "> Returned with poster channel={%s}.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x193AF7A40](v21, -1, -1);
      MEMORY[0x193AF7A40](v20, -1, -1);
    }

    a3(a1);
  }
}

void sub_190A78F9C(uint64_t a1, uint64_t a2)
{
  v4 = qword_1EAD46218;
  sub_190D50920();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_190D53040();
  __swift_project_value_buffer(v5, qword_1EAD9D730);
  v6 = sub_190D53020();
  v7 = sub_190D57680();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_19020E000, v6, v7, "Finding poster channel and applying it to viewModel.", v8, 2u);
    MEMORY[0x193AF7A40](v8, -1, -1);
  }

  v9 = [objc_opt_self() sharedTranscriptBackgroundChannelController];
  if (v9)
  {
    v22 = v9;
    sub_190C0EA1C(*(a1 + 32));
    if (v10)
    {
      v11 = sub_190D56ED0();
      v12 = sub_190D56ED0();

      v13 = sub_190D56ED0();
      v14 = swift_allocObject();
      *(v14 + 16) = sub_190A79348;
      *(v14 + 24) = a2;
      aBlock[4] = sub_190A79350;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_19087F0F0;
      aBlock[3] = &block_descriptor_65;
      v15 = _Block_copy(aBlock);
      sub_190D50920();

      [v22 loadChannelAsyncForChatGUID:v11 deviceIndependentID:v12 backgroundGUID:v13 createsChannelIfNeeded:1 completion:v15];
      _Block_release(v15);
    }

    else
    {
      v19 = sub_190D53020();
      v20 = sub_190D576A0();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_19020E000, v19, v20, "> Unable to derive conversation info from conversation's chat.", v21, 2u);
        MEMORY[0x193AF7A40](v21, -1, -1);
      }

      sub_190AA8020(0);
    }
  }

  else
  {
    v16 = sub_190D53020();
    v17 = sub_190D576A0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_19020E000, v16, v17, "> CKTranscriptBackgroundChannelController is unavailable.", v18, 2u);
      MEMORY[0x193AF7A40](v18, -1, -1);
    }

    sub_190AA8020(0);
  }
}

uint64_t sub_190A79360(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_190A793A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_190A79448@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_190D55E10();
  v3 = sub_190D54EB0();
  v4 = MEMORY[0x1E697FE70];
  *(a1 + 120) = MEMORY[0x1E697FE80];
  *(a1 + 128) = v4;
  *(a1 + 96) = v3;
  sub_190D55410();
  v5 = sub_190D55370();

  sub_190D55410();
  v6 = sub_190D55370();

  sub_190D55410();
  v7 = sub_190D55370();

  __asm { FMOV            V1.2D, #12.0 }

  *a1 = xmmword_190DEBC50;
  *(a1 + 16) = _Q1;
  *(a1 + 32) = 0x4040000000000000;
  *(a1 + 40) = v2;
  *(a1 + 48) = 0x402A000000000000;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0x4034000000000000;
  *(a1 + 136) = v5;
  *(a1 + 144) = v6;
  *(a1 + 152) = xmmword_190DEBC60;
  __asm { FMOV            V1.2D, #16.0 }

  *(a1 + 168) = _Q1;
  *(a1 + 184) = 0x4034000000000000;
  *(a1 + 192) = v7;
  *(a1 + 200) = xmmword_190DEBC70;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  return result;
}

uint64_t sub_190A79578()
{
  swift_getKeyPath();
  sub_190A7A3DC();
  sub_190D51C20();

  swift_beginAccess();
  return sub_190D52690();
}

uint64_t sub_190A79600@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_190A7A3DC();
  sub_190D51C20();

  swift_beginAccess();
  *a2 = *(v3 + 16);
  return sub_190D52690();
}

uint64_t sub_190A796BC(uint64_t a1)
{
  swift_beginAccess();
  if (sub_1908A9C64(*(v1 + 16), a1))
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_190A7A3DC();
    sub_190D51C10();
  }
}

uint64_t sub_190A797C0()
{

  v1 = OBJC_IVAR____TtC7ChatKit25PriorityRequestsViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id PriorityOnboardingController.init()()
{
  ObjectType = swift_getObjectType();
  type metadata accessor for PriorityRequestsViewModel();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1908AF3A8(&unk_1F04020D0);
  sub_190D51C50();
  v3 = &v0[OBJC_IVAR____TtC7ChatKit28PriorityOnboardingController__viewModel];
  swift_beginAccess();
  v17 = v2;
  sub_190D55FC0();
  v4 = v19;
  *v3 = v18;
  *(v3 + 1) = v4;
  swift_endAccess();
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = sub_190D56ED0();
  v8 = sub_190D56ED0();
  v9 = [v6 localizedStringForKey:v7 value:0 table:v8];

  if (!v9)
  {
    sub_190D56F10();
    v9 = sub_190D56ED0();
  }

  result = CKFrameworkBundle();
  if (!result)
  {
    goto LABEL_9;
  }

  v10 = result;
  v11 = sub_190D56ED0();
  v12 = sub_190D56ED0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  if (!v13)
  {
    sub_190D56F10();
    v13 = sub_190D56ED0();
  }

  v14 = sub_190D56ED0();
  v16.receiver = v0;
  v16.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v16, sel_initWithTitle_detailText_symbolName_contentLayout_, v9, v13, v14, 2);

  return v15;
}

uint64_t type metadata accessor for PriorityRequestsViewModel()
{
  result = qword_1EAD5B5B0;
  if (!qword_1EAD5B5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PriorityOnboardingController.viewDidLoad()()
{
  v17.receiver = v0;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, sel_viewDidLoad);
  v1 = [objc_opt_self() boldButton];
  v2 = CKFrameworkBundle();
  if (!v2)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v3 = v2;
  v4 = sub_190D56ED0();
  v5 = sub_190D56ED0();
  v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

  if (!v6)
  {
    sub_190D56F10();
    v6 = sub_190D56ED0();
  }

  [v1 setTitle:v6 forState:0];

  v7 = v1;
  [v7 addTarget:v0 action:sel_hideNotificationsButtonAction forControlEvents:64];
  [v7 setEnabled_];

  v8 = [objc_opt_self() linkButton];
  v9 = CKFrameworkBundle();
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = sub_190D56ED0();
  v12 = sub_190D56ED0();
  v13 = [v10 localizedStringForKey:v11 value:0 table:v12];

  if (!v13)
  {
    sub_190D56F10();
    v13 = sub_190D56ED0();
  }

  [v8 setTitle:v13 forState:0];

  v14 = v8;
  [v14 addTarget:v0 action:sel_customizeButtonAction forControlEvents:64];
  [v14 setEnabled_];

  v15 = [v0 buttonTray];
  [v15 addButton_];

  v16 = [v0 buttonTray];
  [v16 addButton_];
}

void sub_190A79E74()
{
  v1 = [objc_opt_self() sharedManager];
  v2 = sub_190D57230();
  [v1 setSettingValue:v2 forKey:5];

  v3 = [v0 navigationController];
  if (v3)
  {
    v4 = v3;
    [v3 dismissViewControllerAnimated:1 completion:0];
  }
}

id PriorityOnboardingController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_190D56ED0();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_190D56ED0();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_190D56ED0();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id PriorityOnboardingController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_190D56ED0();

  if (a4)
  {
    v12 = sub_190D56ED0();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

id PriorityOnboardingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190A7A2EC()
{
  result = sub_190D51C60();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_190A7A3DC()
{
  result = qword_1EAD568C8;
  if (!qword_1EAD568C8)
  {
    type metadata accessor for PriorityRequestsViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD568C8);
  }

  return result;
}

id CKTextEffectCoordinator.AnimatorRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTextEffectCoordinator.AnimatorRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTextEffectCoordinator.AnimatorRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TapbackPickerBalloonParentView.preferredQuickLookOriginX(tapbackButtonFrame:presentationBounds:proposedSize:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  *&v39[16] = a3;
  *&v39[24] = a4;
  *v39 = a1;
  *&v39[8] = a2;
  v40.origin.x = a5;
  v40.origin.y = a6;
  v40.size.width = a7;
  v40.size.height = a8;
  CGRectGetMidX(v40);
  v23 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v24 = *(v18 + v23);
  v25 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  swift_beginAccess();
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  if (*(v24 + v25) == 1)
  {
    MaxX = CGRectGetMaxX(*&v26);
    v41.origin.x = 0.0;
    v41.origin.y = 0.0;
    v41.size.width = a9;
    v41.size.height = a10;
    v31 = MaxX - CGRectGetWidth(v41);
    v32 = 0;
    MinX = v31;
  }

  else
  {
    MinX = CGRectGetMinX(*&v26);
    v31 = MinX;
    v32 = 0;
  }

  v36 = CGRectGetMinX(*&MinX);
  v42.origin.x = a5;
  v42.origin.y = a6;
  v42.size.width = a7;
  v42.size.height = a8;
  if (v36 >= CGRectGetMinX(v42))
  {
    v43.origin.y = 0.0;
    v43.origin.x = v31;
    v43.size.width = a9;
    v43.size.height = a10;
    v37 = CGRectGetMaxX(v43);
    v44.origin.x = a5;
    v44.origin.y = a6;
    v44.size.width = a7;
    v44.size.height = a8;
    if (CGRectGetMaxX(v44) >= v37)
    {
      v38 = CGRectGetMinX(*v39);
      v45.origin.y = 0.0;
      v45.origin.x = v31;
      v45.size.width = a9;
      v45.size.height = a10;
      if (v38 < CGRectGetMinX(v45))
      {
        CGRectGetMinX(*v39);
      }
    }
  }
}

void TapbackPickerBalloonParentView.preferredOriginX(withBalloonSourceFrame:presentationBounds:proposedSize:)(CGFloat a1, CGFloat a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v25 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v26 = *(v18 + v25);
  v27 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_isWidthConstrained;
  swift_beginAccess();
  v28 = 0.0;
  if ((*(v26 + v27) & 1) == 0)
  {
    v29 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_horizontalMarginBetweenBubbleAndEmojiTail;
    swift_beginAccess();
    v30 = *(v26 + v29);
    v28 = v30 + _s7ChatKit34TapbackPickerBalloonLayoutTemplateC17selectionTailSizeSo6CGSizeVvgZ_0();
  }

  v31 = *(v18 + v25);
  v32 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
  swift_beginAccess();
  v33 = *(v31 + v32);
  v64.origin.x = a5;
  v64.origin.y = a6;
  v64.size.width = a7;
  v64.size.height = a8;
  CGRectGetMidX(v64);
  v34 = [objc_opt_self() sharedBehaviors];
  if (v34)
  {
    v35 = v34;
    if (!v33)
    {
      a1 = a1 - v28;
    }

    v36 = v28 + a3;
    v37 = [v34 tapbackPickerCanOverflowPresentationBounds];

    v38 = *(v18 + v25);
    v39 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsRightTail;
    swift_beginAccess();
    v40 = a1;
    v41 = a2;
    v42 = v36;
    if (*(v38 + v39) == 1)
    {
      v43 = a4;
      v44 = a4;
      MinX = CGRectGetMinX(*&v40);
      v46 = MinX;
      if ((v37 & 1) != 0 || (v47 = 0, MaxX = CGRectGetMaxX(*&MinX), v65.origin.x = a5, v65.origin.y = v59, v65.size.width = v60, v65.size.height = v61, v51 = CGRectGetMaxX(v65) < MaxX, v43 = a4, !v51))
      {
        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = v36;
        v66.size.height = v43;
        Width = CGRectGetWidth(v66);
        v67.origin.y = 0.0;
        v67.origin.x = v46;
        v67.size.width = a9;
        v67.size.height = a10;
        if (Width > CGRectGetWidth(v67))
        {
          v68.origin.x = a1;
          v68.origin.y = a2;
          v68.size.width = v36;
          v68.size.height = v43;
          CGRectGetMaxX(v68);
          v69.origin.x = a5;
          v69.origin.y = v59;
          v69.size.width = v60;
          v69.size.height = v61;
          CGRectGetMaxX(v69);
        }
      }
    }

    else
    {
      v53 = a4;
      v54 = a4;
      v55 = CGRectGetMaxX(*&v40);
      v70.origin.x = 0.0;
      v70.origin.y = 0.0;
      v70.size.width = a9;
      v70.size.height = a10;
      v56 = v55 - CGRectGetWidth(v70);
      if ((v37 & 1) != 0 || (v71.origin.y = 0.0, v71.origin.x = v56, v71.size.width = a9, v71.size.height = a10, v57 = CGRectGetMinX(v71), v72.origin.x = a5, v72.origin.y = v59, v72.size.width = v60, v72.size.height = v61, v51 = v57 < CGRectGetMinX(v72), v53 = a4, !v51))
      {
        v73.origin.x = a1;
        v73.origin.y = a2;
        v73.size.width = v36;
        v73.size.height = v53;
        v58 = CGRectGetWidth(v73);
        v74.origin.y = 0.0;
        v74.origin.x = v56;
        v74.size.width = a9;
        v74.size.height = a10;
        if (v58 > CGRectGetWidth(v74))
        {
          v75.origin.x = a1;
          v75.origin.y = a2;
          v75.size.width = v36;
          v75.size.height = v53;
          CGRectGetMinX(v75);
          v76.origin.x = a5;
          v76.origin.y = v59;
          v76.size.width = v60;
          v76.size.height = v61;
          CGRectGetMinX(v76);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

double _s7ChatKit30TapbackPickerBalloonParentViewC12sizeThatFitsySo6CGSizeVAFF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR___CKTapbackPickerBalloonParentView_displayConfiguration;
  swift_beginAccess();
  v3 = *(v0 + v2);
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_initStackObject();
  v4 = sub_1909DBC0C(v3);
  v5 = *(v0 + v2);
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v6 = sub_1909DC4F8(v5);
  v7 = *(v1 + v2);
  v8 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_pickerPillPreferredContentSize;
  swift_beginAccess();
  v9 = *(v7 + v8);
  v10 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  swift_beginAccess();
  if (*(v7 + v10) == 1)
  {
    swift_beginAccess();
    CGRectGetMaxY(*(v6 + 176));
    swift_beginAccess();
    v11 = v4[30];
    v12 = v4[31];
    v13 = v4[32];
    v14 = v4[33];
    sub_190D50920();
    v24.origin.x = v11;
    v24.origin.y = v12;
    v24.size.width = v13;
    v24.size.height = v14;
    CGRectGetMaxY(v24);
    swift_beginAccess();
    v15 = v4[6];
    v16 = v4[7];
    v17 = v4[8];
    v18 = v4[9];

    v25.origin.x = v15;
    v25.origin.y = v16;
    v25.size.width = v17;
    v25.size.height = v18;
    CGRectGetMinY(v25);
    v19 = *(v6 + 304);
    v20 = *(v6 + 312);
    v21 = *(v6 + 320);
    v22 = *(v6 + 328);
  }

  else
  {
    swift_beginAccess();
    CGRectGetMaxY(*(v6 + 48));
    swift_beginAccess();
    v19 = *(v4 + 30);
    v20 = *(v4 + 31);
    v21 = *(v4 + 32);
    v22 = *(v4 + 33);
  }

  CGRectGetMinY(*&v19);

  return v9;
}

id sub_190A7AE1C(uint64_t a1, uint64_t a2, float a3, float a4, float a5)
{
  v6 = v5;
  v12 = OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_tokens;
  swift_beginAccess();
  v13 = *(v6 + v12);
  if (v13 >> 62)
  {
    v14 = sub_190D581C0();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = type metadata accessor for CKTextEffectsDisplayLinkToken();
  v16 = objc_allocWithZone(v15);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v17 = &v16[OBJC_IVAR____TtC7ChatKit29CKTextEffectsDisplayLinkToken_invocationBlock];
  *v17 = a1;
  *(v17 + 1) = a2;
  v32.receiver = v16;
  v32.super_class = v15;
  sub_190D50920();
  v18 = objc_msgSendSuper2(&v32, sel_init);
  swift_beginAccess();
  v19 = v18;
  MEMORY[0x193AF29E0]();
  if (*((*(v6 + v12) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v6 + v12) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_190D571A0();
  }

  sub_190D571E0();
  swift_endAccess();
  if (!v14)
  {
    v20 = OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_displayLink;
    if (!*(v6 + OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_displayLink))
    {
      v21 = [objc_opt_self() displayLinkWithTarget:v6 selector:sel__displayLinkDidFire];
      v22 = *(v6 + v20);
      *(v6 + v20) = v21;
      v23 = v21;

      *&v24 = a3;
      *&v25 = a4;
      *&v26 = a5;
      [v23 setPreferredFrameRateRange_];

      v27 = *(v6 + v20);
      if (v27)
      {
        v28 = objc_opt_self();
        v29 = v27;
        v30 = [v28 mainRunLoop];
        [v29 addToRunLoop:v30 forMode:*MEMORY[0x1E695DA28]];
      }
    }
  }

  return v19;
}

void sub_190A7B084()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_displayLink);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  [v2 timestamp];
  v4 = v3;
  [v2 duration];
  v6 = v5;
  [v2 targetTimestamp];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DB888]) initWithTimestamp:v4 duration:v6 targetTimestamp:v7];
  v9 = OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_tokens;
  swift_beginAccess();
  v10 = *(v0 + v9);
  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  v11 = sub_190D581C0();
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v11 < 1)
  {
    __break(1u);
  }

  else
  {
    sub_190D52690();
    v12 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x193AF3B90](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = *&v13[OBJC_IVAR____TtC7ChatKit29CKTextEffectsDisplayLinkToken_invocationBlock];
      sub_190D50920();
      v15(v8);
    }

    while (v11 != v12);
  }
}

id sub_190A7B2E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTextEffectsDisplayLink();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_190A7B444(id a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_tokens;
  swift_beginAccess();
  v5 = *(a2 + v4);
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_190D581C0();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_190D52690();
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      return;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x193AF3B90](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;

    if (v9 == a1)
    {
      break;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  v11 = sub_190A0DBB8(v7);
  swift_endAccess();

  v12 = *(a2 + v4);
  if (v12 >> 62)
  {
    if (sub_190D581C0())
    {
      return;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v13 = OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_displayLink;
  v14 = *(a2 + OBJC_IVAR____TtC7ChatKit24CKTextEffectsDisplayLink_displayLink);
  if (v14)
  {
    [v14 invalidate];
    v15 = *(a2 + v13);
    *(a2 + v13) = 0;
  }
}

Swift::Void __swiftcall DetailsViewCoordinator.configure(with:)(CKMacToolbarController *with)
{
  [(CKMacToolbarController *)with setInspectorItemProvider:v1];

  [(CKMacToolbarController *)with reloadToolbarItems];
}

CKMacToolbarItem_optional __swiftcall DetailsViewCoordinator.toolbarItem(forIdentifier:)(Swift::String forIdentifier)
{
  object = forIdentifier._object;
  countAndFlagsBits = forIdentifier._countAndFlagsBits;
  if (forIdentifier._countAndFlagsBits == 0xD000000000000026 && 0x8000000190E6FC70 == forIdentifier._object || (sub_190D58760() & 1) != 0)
  {
    v4 = &OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_closeToolbarItem;
  }

  else
  {
    if ((countAndFlagsBits != 0xD000000000000025 || 0x8000000190E6FCA0 != object) && (sub_190D58760() & 1) == 0)
    {
      v5 = 0;
      goto LABEL_6;
    }

    v4 = &OBJC_IVAR____TtC7ChatKit22DetailsViewCoordinator_editToolbarItem;
  }

  v5 = *(v1 + *v4);
  v6 = v5;
LABEL_6:
  v9 = v5;
  result.value._itemIdentifier = v7;
  result.value.super.isa = v9;
  result.is_nil = v8;
  return result;
}

id sub_190A7B878(uint64_t a1, void *a2, void *a3, void *a4)
{
  *&v4[OBJC_IVAR___CKTranscriptNavigationBarController_findMySessionCoordinator] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR___CKTranscriptNavigationBarController_currentState;
  *&v4[v8] = [objc_allocWithZone(type metadata accessor for NavigationBarState()) init];
  v9 = OBJC_IVAR___CKTranscriptNavigationBarController_titleView;
  type metadata accessor for TranscriptNavigationBarTitleView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR___CKTranscriptNavigationBarController_overrideUserInterfaceStyle] = 0;
  *&v4[OBJC_IVAR___CKTranscriptNavigationBarController_contextProviders] = a2;
  *&v4[OBJC_IVAR___CKTranscriptNavigationBarController_navigationItem] = a3;
  *&v4[OBJC_IVAR___CKTranscriptNavigationBarController_backNavigationItem] = a4;
  v16.receiver = v4;
  v16.super_class = CKTranscriptNavigationBarController;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = objc_msgSendSuper2(&v16, sel_init);
  swift_unknownObjectWeakAssign();
  v14 = v13;
  sub_190A7B9D0();
  sub_190BC3C88();

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_190A7B9D0()
{
  v1 = *&v0[OBJC_IVAR___CKTranscriptNavigationBarController_titleView];
  *(v1 + OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_delegate + 8) = &off_1F04151A8;
  swift_unknownObjectWeakAssign();
  v2 = *&v0[OBJC_IVAR___CKTranscriptNavigationBarController_navigationItem];
  [v2 setTitleView_];
  v3 = *&v0[OBJC_IVAR___CKTranscriptNavigationBarController_backNavigationItem];
  if (v3)
  {
    [*&v0[OBJC_IVAR___CKTranscriptNavigationBarController_backNavigationItem] setBackButtonDisplayMode_];
    [v3 setBackBarButtonItem_];
  }

  [v2 setLeftItemsSupplementBackButton_];
  [objc_opt_self() configureNavigationItemForInteractivePop_];
  if (![v0 overrideUserInterfaceStyle])
  {
    if (qword_1EAD46890 != -1)
    {
      swift_once();
    }

    v4 = qword_1EAD9D840;
    [v2 setScrollEdgeAppearance_];
    [v2 setStandardAppearance_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DDA050;
  v6 = type metadata accessor for TranscriptNavigationBarChange();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v8 = 0xD000000000000017;
  *(v8 + 1) = 0x8000000190E646A0;
  v9 = &v7[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v9 = sub_1908F13BC;
  v9[1] = 0;
  v35.receiver = v7;
  v35.super_class = v6;
  *(inited + 32) = objc_msgSendSuper2(&v35, sel_init);
  v10 = objc_allocWithZone(v6);
  v11 = &v10[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v11 = 0xD000000000000014;
  *(v11 + 1) = 0x8000000190E64640;
  v12 = &v10[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v12 = sub_1908F0F38;
  v12[1] = 0;
  v34.receiver = v10;
  v34.super_class = v6;
  *(inited + 40) = objc_msgSendSuper2(&v34, sel_init);
  v13 = objc_allocWithZone(v6);
  v14 = &v13[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v14 = 0xD000000000000016;
  *(v14 + 1) = 0x8000000190E646C0;
  v15 = &v13[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v15 = sub_1908F1544;
  v15[1] = 0;
  v33.receiver = v13;
  v33.super_class = v6;
  *(inited + 48) = objc_msgSendSuper2(&v33, sel_init);
  v16 = objc_allocWithZone(v6);
  v17 = &v16[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v17 = 0xD000000000000010;
  *(v17 + 1) = 0x8000000190E64660;
  v18 = &v16[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v18 = sub_1908F10C0;
  v18[1] = 0;
  v32.receiver = v16;
  v32.super_class = v6;
  *(inited + 56) = objc_msgSendSuper2(&v32, sel_init);
  v19 = objc_allocWithZone(v6);
  v20 = &v19[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v20 = 0xD00000000000001ELL;
  *(v20 + 1) = 0x8000000190E64680;
  v21 = &v19[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v21 = sub_1908F1234;
  v21[1] = 0;
  v31.receiver = v19;
  v31.super_class = v6;
  *(inited + 64) = objc_msgSendSuper2(&v31, sel_init);
  v22 = objc_allocWithZone(v6);
  v23 = &v22[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v23 = 0xD000000000000014;
  *(v23 + 1) = 0x8000000190E64700;
  v24 = &v22[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v24 = sub_1908F1AD4;
  v24[1] = 0;
  v30.receiver = v22;
  v30.super_class = v6;
  *(inited + 72) = objc_msgSendSuper2(&v30, sel_init);
  v25 = objc_allocWithZone(v6);
  v26 = &v25[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
  *v26 = 0xD00000000000001BLL;
  *(v26 + 1) = 0x8000000190E64720;
  v27 = &v25[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
  *v27 = sub_1908F1C74;
  v27[1] = 0;
  v29.receiver = v25;
  v29.super_class = v6;
  *(inited + 80) = objc_msgSendSuper2(&v29, sel_init);
  if (qword_1EAD46808 != -1)
  {
    swift_once();
  }

  sub_190A7BEF0(inited, qword_1EAD46810);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

void sub_190A7BEF0(unint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___CKTranscriptNavigationBarController_currentState;
  v6 = *(v2 + OBJC_IVAR___CKTranscriptNavigationBarController_currentState);
  [v6 copy];
  sub_190D58140();
  swift_unknownObjectRelease();
  type metadata accessor for NavigationBarState();
  v42 = a2;
  if (swift_dynamicCast())
  {
    v7 = v45;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v2 + OBJC_IVAR___CKTranscriptNavigationBarController_contextProviders);
  v44 = v6;
  if (a1 >> 62)
  {
    v9 = sub_190D581C0();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
    goto LABEL_36;
  }

  v10 = 0;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x193AF3B90](v10, a1);
    }

    else
    {
      v11 = *(a1 + 8 * v10 + 32);
    }

    v12 = v11;
    ++v10;
    v13 = *&v11[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
    sub_190D50920();
    v13(v7, v8);
  }

  while (v9 != v10);
LABEL_13:
  v14 = v6;
  sub_190A7C528(v7, v6, v42);
  v15 = *(v2 + v5);
  *(v2 + v5) = v7;
  v16 = v7;

  if (a1 >> 62)
  {
    v17 = sub_190D581C0();
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v46[0] = MEMORY[0x1E69E7CC0];
    sub_19082DBB4(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v43 = v16;
      v18 = v46[0];
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          v20 = MEMORY[0x193AF3B90](v19, a1);
          v22 = *(v20 + OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name);
          v21 = *(v20 + OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name + 8);
          sub_190D52690();
          swift_unknownObjectRelease();
          v46[0] = v18;
          v24 = *(v18 + 16);
          v23 = *(v18 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_19082DBB4((v23 > 1), v24 + 1, 1);
            v18 = v46[0];
          }

          ++v19;
          *(v18 + 16) = v24 + 1;
          v25 = v18 + 16 * v24;
          *(v25 + 32) = v22;
          *(v25 + 40) = v21;
        }

        while (v17 != v19);
      }

      else
      {
        v26 = (a1 + 32);
        do
        {
          v27 = (*v26 + OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name);
          v29 = *v27;
          v28 = v27[1];
          v46[0] = v18;
          v31 = *(v18 + 16);
          v30 = *(v18 + 24);
          sub_190D52690();
          if (v31 >= v30 >> 1)
          {
            sub_19082DBB4((v30 > 1), v31 + 1, 1);
            v18 = v46[0];
          }

          *(v18 + 16) = v31 + 1;
          v32 = v18 + 16 * v31;
          *(v32 + 32) = v29;
          *(v32 + 40) = v28;
          ++v26;
          --v17;
        }

        while (v17);
      }

      v16 = v43;
      v14 = v44;
      goto LABEL_29;
    }

LABEL_36:
    __break(1u);
    return;
  }

LABEL_29:
  v46[0] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57920);
  sub_19085CD58();
  v33 = sub_190D56DF0();
  v35 = v34;

  if (qword_1EAD46BA8 != -1)
  {
    swift_once();
  }

  v36 = sub_190D53040();
  __swift_project_value_buffer(v36, qword_1EAD9D8F8);
  sub_190D52690();
  v37 = sub_190D53020();
  v38 = sub_190D57680();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v46[0] = v40;
    *v39 = 136315138;
    v41 = sub_19021D9F8(v33, v35, v46);

    *(v39 + 4) = v41;
    _os_log_impl(&dword_19020E000, v37, v38, "Applied changes {%s} to navigation bar UI.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x193AF7A40](v40, -1, -1);
    MEMORY[0x193AF7A40](v39, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_190A7C528(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_190CEA218(a1, a2, a3);
  v7 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_unreadCount];
  if (v7 != *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_unreadCount))
  {
    v8 = *(v4 + OBJC_IVAR___CKTranscriptNavigationBarController_backNavigationItem);
    if (v8)
    {
      if (v7 < 1)
      {
        [*(v4 + OBJC_IVAR___CKTranscriptNavigationBarController_backNavigationItem) setBackBarButtonItem_];
      }

      else
      {
        v9 = objc_allocWithZone(MEMORY[0x1E696AD98]);
        v10 = v8;
        v11 = [v9 initWithInteger_];
        v12 = [v11 __ck_localizedString];
        if (v12)
        {
          v13 = v12;
          sub_190D56F10();
        }

        else
        {
          sub_190D58720();
        }

        v14 = objc_opt_self();
        v15 = sub_190D56ED0();

        v16 = [v14 unreadBadgeButtonImageWithString_];

        sub_1902188FC(0, &qword_1EAD46690);
        v17 = v16;
        v18 = sub_190D57750();
        [v10 setBackBarButtonItem_];
      }
    }
  }

  v19 = a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_showsBackButton];
  if (v19 != *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_showsBackButton))
  {
    [*(v4 + OBJC_IVAR___CKTranscriptNavigationBarController_navigationItem) setHidesBackButton:v19 ^ 1u animated:1];
  }

  v20 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_leadingItems];
  v21 = *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_leadingItems);
  sub_190D52690();
  sub_190D52690();
  v22 = sub_1909A82A8(v20, v21);

  if ((v22 & 1) == 0)
  {
    v23 = sub_190D52690();
    sub_190A7D268(v23, 0);
  }

  v24 = *&a1[OBJC_IVAR____TtC7ChatKit18NavigationBarState_trailingItems];
  v25 = *(a2 + OBJC_IVAR____TtC7ChatKit18NavigationBarState_trailingItems);
  sub_190D52690();
  sub_190D52690();
  v26 = sub_1909A82A8(v24, v25);

  if ((v26 & 1) == 0)
  {
    v28 = sub_190D52690();
    sub_190A7D268(v28, 1);
  }

  return result;
}

void sub_190A7C878(uint64_t a1)
{
  v2 = OBJC_IVAR___CKTranscriptNavigationBarController_overrideUserInterfaceStyle;
  v3 = *(v1 + OBJC_IVAR___CKTranscriptNavigationBarController_overrideUserInterfaceStyle);
  *(v1 + OBJC_IVAR___CKTranscriptNavigationBarController_overrideUserInterfaceStyle) = a1;
  if (v3 != a1)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCCC8]) init];
    [v4 _setOverrideUserInterfaceStyle_];
    v5 = *(v1 + OBJC_IVAR___CKTranscriptNavigationBarController_navigationItem);
    v6 = v4;
    [v5 setScrollEdgeAppearance_];
    [v5 setStandardAppearance_];
  }
}

id CKTranscriptNavigationBarController.viewProxy.getter()
{
  v1 = *(*(v0 + OBJC_IVAR___CKTranscriptNavigationBarController_titleView) + OBJC_IVAR____TtC7ChatKit32TranscriptNavigationBarTitleView_principalView);
  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_avatarViewButton);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit36TranscriptNavigationBarPrincipalView_ornamentView);
  v4 = type metadata accessor for CKTranscriptNavigationBarViewProxy();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarViewProxy_avatarView] = v2;
  *&v5[OBJC_IVAR____TtC7ChatKit34CKTranscriptNavigationBarViewProxy_conversationTitleView] = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  v6 = v2;
  v7 = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

void sub_190A7CB2C(void *a1)
{
  v2 = v1;
  if (!a1)
  {
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9D8F8);
    v12 = sub_190D53020();
    v13 = sub_190D57680();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, "FMF Coordinator will be nil'd out due to nav bar conversation transitioning to nil.", v14, 2u);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }

    v10 = *(v2 + OBJC_IVAR___CKTranscriptNavigationBarController_findMySessionCoordinator);
    *(v2 + OBJC_IVAR___CKTranscriptNavigationBarController_findMySessionCoordinator) = 0;
    goto LABEL_13;
  }

  v3 = *(*(v1 + OBJC_IVAR___CKTranscriptNavigationBarController_contextProviders) + OBJC_IVAR____TtC7ChatKit32CKTranscriptNavigationBarContext_navigationBarFlagsProvider);
  v24 = a1;
  v4 = v3();
  v5 = v4[OBJC_IVAR____TtC7ChatKit37CKTranscriptNavigationBarContextFlags_isNewCompose];

  if (v5)
  {
    if (qword_1EAD46BA8 != -1)
    {
      swift_once();
    }

    v6 = sub_190D53040();
    __swift_project_value_buffer(v6, qword_1EAD9D8F8);
    v7 = sub_190D53020();
    v8 = sub_190D57680();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19020E000, v7, v8, "Bar context indicated that we are in New Compose, which doesn't want the location subtitle.", v9, 2u);
      MEMORY[0x193AF7A40](v9, -1, -1);
    }

    v10 = v24;
LABEL_13:

    return;
  }

  if (qword_1EAD46BA8 != -1)
  {
    swift_once();
  }

  v15 = sub_190D53040();
  __swift_project_value_buffer(v15, qword_1EAD9D8F8);
  v16 = sub_190D53020();
  v17 = sub_190D57680();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_19020E000, v16, v17, "FMF Coordinator to be created upon transition to non-nil conversation.", v18, 2u);
    MEMORY[0x193AF7A40](v18, -1, -1);
  }

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = objc_allocWithZone(CKFindMySessionCoordinator);
  aBlock[4] = sub_190A7D5AC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_66;
  v21 = _Block_copy(aBlock);
  sub_190D50920();
  v22 = [v20 initWithConversation:v24 observesNotifications:1 statusUpdateChangeProvider:v21];

  _Block_release(v21);

  v23 = *(v2 + OBJC_IVAR___CKTranscriptNavigationBarController_findMySessionCoordinator);
  *(v2 + OBJC_IVAR___CKTranscriptNavigationBarController_findMySessionCoordinator) = v22;
}

uint64_t sub_190A7CEEC(void *a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 locationText];
    if (v4)
    {
      v5 = v4;
      v6 = sub_190D56F10();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v8;
    v10 = type metadata accessor for TranscriptNavigationBarChange();
    v11 = objc_allocWithZone(v10);
    v12 = &v11[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name];
    strcpy(&v11[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_name], "LocationChange");
    v12[15] = -18;
    v13 = &v11[OBJC_IVAR____TtC7ChatKit29TranscriptNavigationBarChange_performMutation];
    *v13 = sub_190A7D5B4;
    v13[1] = v9;
    v18.receiver = v11;
    v18.super_class = v10;
    v14 = objc_msgSendSuper2(&v18, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    *(inited + 32) = v14;
    v16 = qword_1EAD46808;
    v17 = v14;
    if (v16 != -1)
    {
      swift_once();
    }

    sub_190A7BEF0(inited, qword_1EAD46810);

    swift_setDeallocating();
    return swift_arrayDestroy();
  }

  return result;
}

id CKTranscriptNavigationBarController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void sub_190A7D268(unint64_t a1, char a2)
{
  v3 = v2;
  if (a1 >> 62)
  {
    v6 = sub_190D581C0();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_190D58390();
    if (v6 < 0)
    {
      __break(1u);
      return;
    }

    v7 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x193AF3B90](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_190D50920();
      sub_190CA535C(sub_190A7D5A4, v10);

      sub_190D58360();
      sub_190D583B0();
      sub_190D583C0();
      sub_190D58370();
    }

    while (v6 != v7);
  }

  if (qword_1EAD51B68 != -1)
  {
    swift_once();
  }

  v11 = byte_1EAD9DD3A;
  v12 = *(v3 + OBJC_IVAR___CKTranscriptNavigationBarController_navigationItem);
  sub_1902188FC(0, &qword_1EAD46690);
  v14 = sub_190D57160();

  v13 = &selRef_setRightBarButtonItems_animated_;
  if ((a2 & 1) == 0)
  {
    v13 = &selRef_setLeftBarButtonItems_animated_;
  }

  [v12 *v13];
}

void sub_190A7D48C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [Strong delegate];
    if (v4)
    {
      [v4 transcriptNavigationBar:v3 didTapToPerformAction:a1];
      swift_unknownObjectRelease();
    }
  }
}

id sub_190A7D520()
{
  result = [v0 delegate];
  if (result)
  {
    [result transcriptNavigationBar:v0 didTapToPerformAction:1];

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_190A7D5F8()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190A7D6E0()
{
  result = CKFrameworkBundle();
  if (result)
  {
    v1 = result;
    v2 = sub_190D56ED0();
    v3 = sub_190D56ED0();
    v4 = [v1 localizedStringForKey:v2 value:0 table:v3];

    sub_190D56F10();
    sub_19081E484();
    return sub_190D555F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190A7D7C8()
{
  v0 = sub_190D53830();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = CKFrameworkBundle();
  if (result)
  {
    v5 = result;
    v6 = sub_190D56ED0();
    v7 = sub_190D56ED0();
    v8 = [v5 localizedStringForKey:v6 value:0 table:v7];

    v9 = sub_190D56F10();
    v11 = v10;

    v15[0] = v9;
    v15[1] = v11;
    sub_19081E484();
    sub_190D53800();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B590);
    v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_190DD1D90;
    (*(v1 + 32))(v13 + v12, v3, v0);
    v14 = sub_190B43788(v13);
    swift_setDeallocating();
    (*(v1 + 8))(v13 + v12, v0);
    swift_deallocClassInstance();
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190A7D9F8(uint64_t a1)
{
  sub_19023C414(a1, v23);
  if (!v24)
  {
    sub_19021E7D8(v23);
    goto LABEL_26;
  }

  type metadata accessor for NavigationBarButtonModel();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v20 = 0;
    return v20 & 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 8);
  v4 = *&v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content];
  v5 = *&v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 8];
  v6 = v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 16];
  v7 = *(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_content + 16);
  sub_190A7E124(v4, v5, v6);
  LOBYTE(v2) = sub_190A7DF90(v2, v3, v7, v4, v5, v6);
  sub_190A7E14C(v4, v5, v6);
  if ((v2 & 1) == 0)
  {
    goto LABEL_25;
  }

  v8 = *(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier + 8);
  v9 = *&v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier + 8];
  if (v8)
  {
    if (!v9)
    {
      goto LABEL_25;
    }

    v10 = *(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier) == *&v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_identifier] && v8 == v9;
    if (!v10 && (sub_190D58760() & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  else if (v9)
  {
    goto LABEL_25;
  }

  v11 = *(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction);
  v12 = *&v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction];
  v13 = v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction + 8];
  if (*(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction + 8))
  {
    if (*(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction + 8) != 1)
    {
      if (v13 != 2 || v11 != v12)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    if (v13 == 1)
    {
      sub_1902188FC(0, &qword_1EAD46500);
      v14 = v12;
      v15 = sub_190D57D90();
      v16 = v12;
      v17 = 1;
      goto LABEL_20;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_onTapAction + 8])
  {
    goto LABEL_25;
  }

  sub_190D52690();
  v15 = sub_1909A6F94(v11, v12);
  v16 = v12;
  v17 = 0;
LABEL_20:
  sub_190A7E174(v16, v17);
  if ((v15 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_24:
  v18 = *(v1 + OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter);
  v19 = v22[OBJC_IVAR____TtC7ChatKit24NavigationBarButtonModel_wantsGlassPlatter];

  v20 = v18 ^ v19 ^ 1;
  return v20 & 1;
}

id NavigationBarButtonModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NavigationBarButtonModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NavigationBarButtonModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190A7DDF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        sub_1902188FC(0, &qword_1EAD46500);
        return sub_190D57D90() & 1;
      }

      return 0;
    }

    return v2 == 2 && *a1 == *a2;
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    v5 = *a1;
    v6 = *a2;

    return sub_1909A6F94(v5, v6);
  }
}

BOOL sub_190A7DECC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 || (sub_190D58760() & 1) != 0)
  {
    if (a3)
    {
      if (a7)
      {
        sub_1902188FC(0, &qword_1EAD44EB0);
        v12 = a7;
        v13 = a3;
        v14 = sub_190D57D90();

        if (v14)
        {
          return a4 == a8;
        }
      }
    }

    else if (!a7)
    {
      return a4 == a8;
    }
  }

  return 0;
}

uint64_t sub_190A7DF90(void *a1, uint64_t a2, unsigned __int8 a3, void *a4, uint64_t a5, char a6)
{
  if (a3 > 1u)
  {
    if (a3 != 2)
    {
      if (a6 == 3)
      {
        sub_1902188FC(0, &qword_1EAD46500);
        return sub_190D57D90() & 1;
      }

      return 0;
    }

    return a6 == 2 && a1 == a4;
  }

  else
  {
    if (!a3)
    {
      if (!a6)
      {
        if (a1)
        {
          if (a4)
          {
            sub_1902188FC(0, &qword_1EAD44EB0);
            sub_190A7E124(a4, a5, 0);
            sub_190A7E124(a1, a2, 0);
            v10 = sub_190D57D90();
            sub_190A7E14C(a1, a2, 0);
            sub_190A7E14C(a4, a5, 0);
            if (v10)
            {
              return 1;
            }
          }
        }

        else if (!a4)
        {
          return 1;
        }
      }

      return 0;
    }

    if (a6 != 1)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    return sub_190D58760();
  }
}

id sub_190A7E124(id result, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
    return result;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    return result;
  }

  return sub_190D52690();
}

void sub_190A7E14C(void *a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

void sub_190A7E174(void *a1, char a2)
{
  if (a2 == 1)
  {
  }

  else if (!a2)
  {
  }
}

uint64_t sub_190A7E1B4(uint64_t a1, unsigned int a2)
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

uint64_t sub_190A7E1FC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_190A7E264(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_190A7E2AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_190A7E3B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v5 = (*(a3 + 16))(a3, v4);

  return v5;
}

id EffectPickerViewHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EffectPickerViewHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffectPickerViewHelper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id EffectPickerViewHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EffectPickerViewHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190A7E4E8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B730);
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B738);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B740);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v33 - v10;
  v37 = a1;
  sub_190D55290();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B748);
  sub_190233640(&qword_1EAD5B750, &qword_1EAD5B748);
  sub_190D53A20();
  sub_190D56500();
  v11 = v9;
  sub_190D54430();
  (*(v3 + 32))(v9, v5, v33);
  v12 = &v9[*(v7 + 44)];
  v13 = v44;
  *(v12 + 4) = v43;
  *(v12 + 5) = v13;
  *(v12 + 6) = v45;
  v14 = v40;
  *v12 = v39;
  *(v12 + 1) = v14;
  v15 = v42;
  *(v12 + 2) = v41;
  *(v12 + 3) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  v17 = sub_190D552E0();
  *(inited + 32) = v17;
  v18 = sub_190D55300();
  *(inited + 33) = v18;
  v19 = sub_190D552F0();
  sub_190D552F0();
  if (sub_190D552F0() != v17)
  {
    v19 = sub_190D552F0();
  }

  sub_190D552F0();
  if (sub_190D552F0() != v18)
  {
    v19 = sub_190D552F0();
  }

  sub_190D539C0();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v35;
  sub_190A7F3E4(v11, v35);
  v29 = v28 + *(v34 + 36);
  *v29 = v19;
  *(v29 + 8) = v21;
  *(v29 + 16) = v23;
  *(v29 + 24) = v25;
  *(v29 + 32) = v27;
  *(v29 + 40) = 0;
  v47 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  v46 = *(a1 + 4);
  v30 = swift_allocObject();
  v31 = a1[1];
  *(v30 + 16) = *a1;
  *(v30 + 32) = v31;
  *(v30 + 48) = *(a1 + 4);
  sub_19022FD14(&v47, v38, &qword_1EAD5B758);
  sub_190D50920();
  sub_19022FD14(&v46, v38, &qword_1EAD5B760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B768);
  sub_190A7F45C();
  sub_190A7F5A0();
  sub_190D55C30();

  sub_190A7F678(v38[2], v38[3]);
  return sub_19022EEA4(v28, &qword_1EAD5B740);
}

uint64_t sub_190A7E9E4()
{
  v0 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v0);
  sub_190D52690();
  sub_190D54AC0();
  sub_190A7F6D0(&qword_1EAD5AB40, MEMORY[0x1E697FCB0]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B798);
  sub_190A7F718();
  return sub_190D565F0();
}

uint64_t sub_190A7EB30(__int128 *a1)
{
  v9 = *a1;
  v2 = *(a1 + 4);
  v7 = *(*(&v9 + 1) + OBJC_IVAR____TtC7ChatKit28EffectPickerExtensionDetails_effectData);
  v8 = v2;
  v3 = swift_allocObject();
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(a1 + 4);
  sub_190D52690();
  sub_19022FD14(&v9, v6, &qword_1EAD5B758);
  sub_190D50920();
  sub_19022FD14(&v8, v6, &qword_1EAD5B760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B7B0);
  sub_190233640(&qword_1EAD5B7B8, &qword_1EAD5B7B0);
  sub_190A7F79C();
  sub_190A7F840();
  return sub_190D56290();
}

__n128 sub_190A7EC9C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_190D55D00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v24 = *a1;
  v20 = v8;
  v9 = a1[2];
  v22 = a1[3];
  v23 = v9;
  v10 = a1[4];
  v21 = a1[5];
  v11 = a1[6];
  type metadata accessor for EffectPickerExtensionDetails();
  sub_190A7F6D0(&qword_1EAD5B718, type metadata accessor for EffectPickerExtensionDetails);
  v12 = sub_190D53FD0();
  swift_getKeyPath();
  sub_190D53FE0();

  v32 = v27;
  v33 = v28;
  v34 = v29;
  v30 = v25;
  v31 = v26;
  (*(v5 + 104))(v7, *MEMORY[0x1E69814D8], v4);
  v13 = v20;
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();
  v14 = sub_190D55E30();
  v15 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v15;
  v16 = v34;
  result = v31;
  *a2 = v30;
  *(a2 + 16) = result;
  v18 = v23;
  v19 = v24;
  *(a2 + 64) = v16;
  *(a2 + 72) = v19;
  *(a2 + 80) = v13;
  *(a2 + 88) = v18;
  *(a2 + 96) = v22;
  *(a2 + 104) = v10;
  *(a2 + 112) = v21;
  *(a2 + 120) = v11;
  *(a2 + 128) = v14;
  return result;
}

uint64_t sub_190A7EECC(__int128 *a1)
{
  v8 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  *(&v8 + 1);
  sub_190D53900();

  if (v7)
  {
    sub_190D52690();
    v2 = v6;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(a1 + 2);
  sub_190A7F678(v6, v7);
  v4 = v3(v2);

  if (v4)
  {
    return sub_19022EEA4(&v8, &qword_1EAD5B758);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_190D53910();
}

uint64_t sub_190A7F030@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_190D54AD0();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B728);
  return sub_190A7E4E8(v6, a1 + *(v4 + 44));
}

uint64_t sub_190A7F09C(uint64_t a1, uint64_t a2, void *a3)
{
  v20 = a3;
  v21 = a1;
  v22 = a2;
  v3 = sub_190D563C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_190D563D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EffectPickerExtensionDetails();
  sub_190A7F6D0(&qword_1EAD5B718, type metadata accessor for EffectPickerExtensionDetails);
  v11 = v20;
  v12 = sub_190D53FC0();
  v20 = v13;
  *v6 = 0x4060600000000000;
  (*(v4 + 104))(v6, *MEMORY[0x1E697D728], v3);
  sub_190D563E0();
  v14 = sub_190D571D0();
  *(v14 + 16) = 3;
  v15 = v14 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v16 = *(v8 + 16);
  v16(v15, v10, v7);
  v17 = *(v8 + 72);
  v16(v15 + v17, v10, v7);
  (*(v8 + 32))(v15 + 2 * v17, v10, v7);
  v23 = v12;
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v14;
  v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B720));
  sub_190D50920();
  return sub_190D54B60();
}

uint64_t sub_190A7F3E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B738);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_190A7F45C()
{
  result = qword_1EAD5B770;
  if (!qword_1EAD5B770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B740);
    sub_190A7F4E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B770);
  }

  return result;
}

unint64_t sub_190A7F4E8()
{
  result = qword_1EAD5B778;
  if (!qword_1EAD5B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B738);
    sub_190233640(&qword_1EAD5B780, &qword_1EAD5B730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B778);
  }

  return result;
}

unint64_t sub_190A7F5A0()
{
  result = qword_1EAD5B788;
  if (!qword_1EAD5B788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B768);
    sub_190A7F624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B788);
  }

  return result;
}

unint64_t sub_190A7F624()
{
  result = qword_1EAD5B790;
  if (!qword_1EAD5B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B790);
  }

  return result;
}

uint64_t sub_190A7F678(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_190A7F6D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_190A7F718()
{
  result = qword_1EAD5B7A0;
  if (!qword_1EAD5B7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B798);
    sub_190A7F79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B7A0);
  }

  return result;
}

unint64_t sub_190A7F79C()
{
  result = qword_1EAD5B7A8;
  if (!qword_1EAD5B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B7A8);
  }

  return result;
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

unint64_t sub_190A7F840()
{
  result = qword_1EAD5B7C0;
  if (!qword_1EAD5B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B7C0);
  }

  return result;
}

double EdgeInsets.init(_:layoutDirection:)(uint64_t a1, double a2)
{
  v4 = sub_190D54190();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E697E7D8], v4, v6);
  sub_190D54180();
  v9 = *(v5 + 8);
  v9(a1, v4);
  v9(v8, v4);
  return a2;
}

uint64_t type metadata accessor for SendLaterRootView()
{
  result = qword_1EAD5B7D8;
  if (!qword_1EAD5B7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190A7FA44()
{
  sub_190A7FB18(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0]);
  if (v0 <= 0x3F)
  {
    sub_190A7FB18(319, &qword_1EAD55988, MEMORY[0x1E697DBD0]);
    if (v1 <= 0x3F)
    {
      sub_190A7FB6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_190A7FB18(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D53A80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_190A7FB6C()
{
  if (!qword_1EAD5B7E8)
  {
    type metadata accessor for SendLaterRootViewModel();
    sub_190A821B4(&qword_1EAD5B7F0, type metadata accessor for SendLaterRootViewModel);
    v0 = sub_190D53AC0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD5B7E8);
    }
  }
}

uint64_t sub_190A7FC1C()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DE50);
  __swift_project_value_buffer(v0, qword_1EAD9DE50);
  return sub_190D53030();
}

uint64_t sub_190A7FCA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_190A81F48(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

id sub_190A7FE88@<X0>(uint64_t a1@<X8>)
{
  v88[0] = a1;
  v115 = sub_190D54EF0();
  v121 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v114 = v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_190D51840();
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v111 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_190D55020();
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = _s21DatePickerButtonStyleVMa();
  MEMORY[0x1EEE9AC00](v92);
  v7 = (v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for SendLaterRootView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v118 = v11;
  v12 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B7F8);
  v96 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v119 = v88 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B800);
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v93 = v88 - v14;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B808);
  v101 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = v88 - v15;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B810);
  v105 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v97 = v88 - v16;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B818);
  MEMORY[0x1EEE9AC00](v107);
  v102 = v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v104 = v88 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v108 = v88 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v116 = v88 - v23;
  v117 = v12;
  sub_190A817A0(v1, v12);
  v120 = *(v10 + 80);
  v24 = (v120 + 16) & ~v120;
  v123 = v24;
  v25 = swift_allocObject();
  sub_190A81814(v12, v25 + v24);
  v124 = v1;
  v122 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B820);
  sub_190233640(&qword_1EAD5B828, &qword_1EAD5B820);
  sub_190D56030();
  v26 = v1 + *(v9 + 32);
  v28 = *v26;
  v27 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = type metadata accessor for SendLaterRootViewModel();
  v31 = sub_190A821B4(&qword_1EAD5B7F0, type metadata accessor for SendLaterRootViewModel);
  v91 = v28;
  v90 = v27;
  v89 = v29;
  v88[2] = v30;
  v88[1] = v31;
  v32 = sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  LOBYTE(v12) = v127;
  v33 = sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_190D53900();

  LOBYTE(v33) = v127;
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v35 = v92;
  *(v7 + *(v92 + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v35 + 24)) = v12;
  *(v7 + *(v35 + 28)) = v33;
  v36 = sub_190233640(&qword_1EAD5B830, &qword_1EAD5B7F8);
  v37 = sub_190A821B4(&qword_1EAD5B838, _s21DatePickerButtonStyleVMa);
  v38 = v93;
  v39 = v94;
  v40 = v119;
  sub_190D55730();
  sub_190A81898(v7);
  (*(v96 + 8))(v40, v39);
  v41 = v117;
  sub_190A817A0(v122, v117);
  v42 = v123;
  v43 = swift_allocObject();
  sub_190A81814(v41, v43 + v42);
  v127 = v39;
  v128 = v35;
  v129 = v36;
  v130 = v37;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v95;
  v46 = v98;
  sub_190D559E0();

  (*(v99 + 8))(v38, v46);
  v47 = v106;
  sub_190D55000();
  v127 = v46;
  v128 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v97;
  v50 = v100;
  sub_190D55A40();
  (*(v109 + 8))(v47, v110);
  (*(v101 + 8))(v45, v50);
  v51 = sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v111;
  sub_190D53900();

  v53 = sub_190BE2F28();
  v55 = v54;
  (*(v112 + 8))(v52, v113);
  v127 = v53;
  v128 = v55;
  v125 = v50;
  v126 = v48;
  swift_getOpaqueTypeConformance2();
  v56 = sub_19081E484();
  v57 = v102;
  v58 = v103;
  v119 = v56;
  sub_190D55970();

  (*(v105 + 8))(v49, v58);
  v59 = v41;
  sub_190A817A0(v122, v41);
  v60 = v123;
  v61 = swift_allocObject();
  sub_190A81814(v41, v61 + v60);
  v62 = v114;
  sub_190D54EE0();
  v63 = v104;
  sub_190D541F0();

  v64 = *(v121 + 8);
  v121 += 8;
  v65 = v115;
  v64(v62, v115);
  sub_190279EB0(v57);
  sub_190D54ED0();
  sub_190A817A0(v122, v59);
  v66 = v108;
  v67 = v123;
  v68 = swift_allocObject();
  sub_190A81814(v59, v68 + v67);
  sub_190D541F0();

  v64(v62, v65);
  sub_190279EB0(v63);
  result = CKFrameworkBundle();
  if (result)
  {
    v70 = result;
    v71 = sub_190D56ED0();
    v72 = sub_190D56ED0();
    v73 = [v70 localizedStringForKey:v71 value:0 table:{v72, v88[0]}];

    v74 = sub_190D56F10();
    v76 = v75;

    v127 = v74;
    v128 = v76;
    sub_190D541C0();

    sub_190279EB0(v66);
    result = CKFrameworkBundle();
    if (result)
    {
      v77 = result;
      v78 = sub_190D56ED0();
      v79 = sub_190D56ED0();
      v80 = [v77 localizedStringForKey:v78 value:0 table:v79];

      v81 = sub_190D56F10();
      v83 = v82;

      v127 = v81;
      v128 = v83;
      v84 = v117;
      sub_190A817A0(v122, v117);
      v85 = v123;
      v86 = swift_allocObject();
      sub_190A81814(v84, v86 + v85);
      v87 = v116;
      sub_190D541E0();

      return sub_190279EB0(v87);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_190A80DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_190D548D0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B840);
  return sub_190A80E24(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_190A80E24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B848);
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v33 - v6;
  v7 = type metadata accessor for SendLaterRootView();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B850);
  v36 = *(v10 - 8);
  v11 = v36;
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  sub_190A817A0(a1, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  sub_190A81814(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B858);
  sub_190A819CC();
  v35 = v16;
  sub_190D56030();
  sub_190A817A0(a1, &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = swift_allocObject();
  sub_190A81814(&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B878);
  sub_190A81CE4();
  v20 = v42;
  sub_190D56030();
  v21 = *(v11 + 16);
  v34 = v13;
  v22 = v37;
  v21(v13, v16, v37);
  v24 = v38;
  v23 = v39;
  v25 = *(v39 + 16);
  v26 = v20;
  v27 = v40;
  v25(v38, v26, v40);
  v28 = v41;
  v21(v41, v13, v22);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B8B8);
  v25(&v28[*(v29 + 48)], v24, v27);
  v30 = *(v23 + 8);
  v30(v42, v27);
  v31 = *(v36 + 8);
  v31(v35, v22);
  v30(v24, v27);
  return (v31)(v34, v22);
}

uint64_t sub_190A81250()
{
  type metadata accessor for SendLaterRootView();
  type metadata accessor for SendLaterRootViewModel();
  sub_190A821B4(&qword_1EAD5B7F0, type metadata accessor for SendLaterRootViewModel);
  sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_190D53910();
}

void sub_190A81334()
{
  type metadata accessor for SendLaterRootView();
  type metadata accessor for SendLaterRootViewModel();
  sub_190A821B4(&qword_1EAD5B7F0, type metadata accessor for SendLaterRootViewModel);
  v0 = sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_190D53910();
  v2 = *&v1[OBJC_IVAR____TtC7ChatKit22SendLaterRootViewModel_onRequestPresentation];
  if (v2)
  {
    v3 = sub_190D50920();
    v2(v3);

    sub_19022123C(v2);
  }

  else
  {
  }
}

uint64_t sub_190A81460()
{
  type metadata accessor for SendLaterRootView();
  type metadata accessor for SendLaterRootViewModel();
  sub_190A821B4(&qword_1EAD5B7F0, type metadata accessor for SendLaterRootViewModel);
  sub_190D53AA0();
  swift_getKeyPath();
  swift_getKeyPath();
  return sub_190D53910();
}

uint64_t sub_190A8153C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v24[-v3];
  v5 = sub_190D55EA0();
  sub_190AE89C8(v24);
  sub_190958714(v24);
  sub_190D553D0();
  v6 = sub_190D55390();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = sub_190D553F0();
  sub_190A81EE0(v4);
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B8A0) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F78) + 28);
  v11 = *MEMORY[0x1E69816E0];
  v12 = sub_190D55F00();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *a1 = v5;
  a1[1] = KeyPath;
  a1[2] = v7;
  sub_190AE89C8(v25);
  sub_190958714(v25);
  LOBYTE(v5) = sub_190D552B0();
  sub_190D539C0();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B890) + 36);
  *v21 = v5;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B878);
  v23 = a1 + *(result + 36);
  *v23 = 0xC046000000000000;
  v23[8] = 0;
  return result;
}

uint64_t sub_190A817A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendLaterRootView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_190A81804(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_190A81814(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SendLaterRootView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190A81898(uint64_t a1)
{
  v2 = _s21DatePickerButtonStyleVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190A818F4()
{
  type metadata accessor for SendLaterRootView();

  return sub_190A81250();
}

void sub_190A81964()
{
  type metadata accessor for SendLaterRootView();

  sub_190BC7EF4();
}

unint64_t sub_190A819CC()
{
  result = qword_1EAD5B860;
  if (!qword_1EAD5B860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B868);
    sub_190233640(&qword_1EAD5B870, &qword_1EAD5B868);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B860);
  }

  return result;
}

uint64_t objectdestroyTm_25()
{
  v1 = type metadata accessor for SendLaterRootView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_190D54190();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_190D53A60();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_190A81804(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8), *(v5 + *(v1 + 24) + 16));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

unint64_t sub_190A81CE4()
{
  result = qword_1EAD5B880;
  if (!qword_1EAD5B880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B878);
    sub_190A81D9C();
    sub_190233640(&qword_1EAD5B8A8, &qword_1EAD5B8B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B880);
  }

  return result;
}

unint64_t sub_190A81D9C()
{
  result = qword_1EAD5B888;
  if (!qword_1EAD5B888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B890);
    sub_190A81E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B888);
  }

  return result;
}

unint64_t sub_190A81E28()
{
  result = qword_1EAD5B898;
  if (!qword_1EAD5B898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B8A0);
    sub_19081DD10();
    sub_190233640(&unk_1EAD46788, &qword_1EAD52F78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B898);
  }

  return result;
}

uint64_t sub_190A81EE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52F28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190A81F48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_190A81FB8()
{
  result = qword_1EAD5B8C0;
  if (!qword_1EAD5B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B818);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B808);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B7F8);
    _s21DatePickerButtonStyleVMa();
    sub_190233640(&qword_1EAD5B830, &qword_1EAD5B7F8);
    sub_190A821B4(&qword_1EAD5B838, _s21DatePickerButtonStyleVMa);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_190A821B4(&qword_1EAD56800, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD5B8C0);
  }

  return result;
}

uint64_t sub_190A821B4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_190A82260(void *a1)
{
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackBarButtonItemView_chatItem] = a1;
  v23.receiver = v1;
  v23.super_class = type metadata accessor for TapbackBarButtonItemView();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_190A828C4();
  [v4 setFrame_];
  sub_190A8261C();
  v8 = v7;
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];

  v10 = v9;
  v11 = sub_190A828C4();
  [v10 setFrame_];

  v13 = [*&v4[OBJC_IVAR____TtC7ChatKit24TapbackBarButtonItemView_chatItem] tapbacksChatItem];
  if (!v13 || (v14 = v13, v15 = [v13 sentTapbackChatItem], v14, !v15) || (v16 = objc_msgSend(v15, sel_tapback), v15, !v16) || (v17 = objc_msgSend(v16, sel_isRemoved), v16, v17))
  {
    v18 = [objc_opt_self() labelColor];
    [v10 setTintColor_];
  }

  [v4 addSubview_];
  v19 = sub_190A829C0();
  if (v19)
  {
    v20 = v19;
    [v4 addSubview_];

    v21 = v4;
  }

  else
  {
    v21 = v10;
    v10 = v3;
    v3 = v4;
  }

  return v4;
}

void sub_190A82478()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  sub_190A82EA0(v2);
  v3 = [*&v0[OBJC_IVAR____TtC7ChatKit24TapbackBarButtonItemView_chatItem] tapbacksChatItem];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [v3 acknowledgments];

  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_190910034();
  v6 = sub_190D57180();

  if (v6 >> 62)
  {
    sub_190D581C0();
  }

  [v0 effectiveUserInterfaceLayoutDirection];
}

void sub_190A8261C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackBarButtonItemView_chatItem);
  v2 = [v1 tapbacksChatItem];
  if (!v2)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = v2;
  v4 = [v2 acknowledgments];

  if (!v4)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  sub_190910034();
  v5 = sub_190D57180();

  if (v5 >> 62)
  {
    v6 = sub_190D581C0();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = [v1 tapbacksChatItem];
  if (v6 < 2)
  {
    if (v7)
    {
      v11 = v7;
      v12 = [v7 sentTapbackChatItem];

      if (v12)
      {
        v13 = [v12 tapback];

        if (v13)
        {
          [v13 isRemoved];
        }
      }
    }
  }

  else if (v7)
  {
    v8 = v7;
    v9 = [v7 sentTapbackChatItem];

    if (v9)
    {
      v10 = [v9 tapback];

      if (v10)
      {
        [v10 isRemoved];
      }
    }
  }

  v14 = [objc_opt_self() configurationWithWeight_];
  v15 = sub_190D56ED0();

  v16 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (!v16)
  {
    goto LABEL_20;
  }
}

double sub_190A828C4()
{
  sub_190A8261C();
  v1 = v0;
  [v0 size];
  v3 = v2;

  v4 = objc_opt_self();
  v5 = [v4 sharedApplication];
  v6 = [v5 preferredContentSizeCategory];

  sub_190A82EA0(v6);
  v8 = v7;

  v9 = [v4 sharedApplication];
  v10 = [v9 preferredContentSizeCategory];

  sub_190A82EA0(v10);
  return v3 * v8;
}

char *sub_190A829C0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackBarButtonItemView_chatItem) tapbacksChatItem];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 IMChatItem];
    if (!v3)
    {
      v12 = 0;
LABEL_16:

      return v12;
    }

    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      v12 = 0;
      v15 = v2;
      v2 = v4;
LABEL_15:

      goto LABEL_16;
    }

    v6 = v5;
    v7 = [v5 fromMeAcknowledgement];
    if (v7 && (v8 = v7, v9 = [v7 tapback], v8, v9))
    {
      v10 = v9;
      v11 = 1;
    }

    else
    {
      v13 = [v6 latestTapback];
      if (!v13)
      {
        v12 = 0;
        goto LABEL_14;
      }

      v10 = v13;
      v11 = 0;
    }

    v14 = v10;
    v12 = _s7ChatKit16TapbackViewUtilsC4view3for10isSelectedSo09CKTapbackD8Protocol_So6UIViewCXcSo9IMTapbackCSg_SbtFZ_0(v10, v11);

    [v12 attributionScaleFactor];
    sub_190A82478();
    [v12 setFrame_];
LABEL_14:
    v15 = v4;
    goto LABEL_15;
  }

  return 0;
}

id sub_190A82B78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackBarButtonItemView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_190A82BE0()
{
  v0 = sub_190D56F10();
  v2 = v1;
  if (v0 == sub_190D56F10() && v2 == v3)
  {

    return 1.5;
  }

  v5 = sub_190D58760();

  result = 1.5;
  if (v5)
  {
    return result;
  }

  v7 = sub_190D56F10();
  v9 = v8;
  if (v7 == sub_190D56F10() && v9 == v10)
  {

    return 1.54;
  }

  v12 = sub_190D58760();

  if (v12)
  {
    return 1.54;
  }

  v13 = sub_190D56F10();
  v15 = v14;
  if (v13 == sub_190D56F10() && v15 == v16)
  {

    return 1.58;
  }

  v17 = sub_190D58760();

  if (v17)
  {
    return 1.58;
  }

  v18 = sub_190D56F10();
  v20 = v19;
  if (v18 == sub_190D56F10() && v20 == v21)
  {

    return 1.62;
  }

  v22 = sub_190D58760();

  if (v22)
  {
    return 1.62;
  }

  v23 = sub_190D56F10();
  v25 = v24;
  if (v23 == sub_190D56F10() && v25 == v26)
  {

    return 1.65;
  }

  else
  {
    v27 = sub_190D58760();

    result = 1.65;
    if ((v27 & 1) == 0)
    {
      return 2.0;
    }
  }

  return result;
}

void sub_190A82EA0(void *a1)
{
  if (a1)
  {
    v2 = sub_190D56F10();
    v4 = v3;
    if (v2 != sub_190D56F10() || v4 != v5)
    {
      v7 = sub_190D58760();
      v8 = a1;

      if (v7)
      {
        goto LABEL_53;
      }

      v9 = sub_190D56F10();
      v11 = v10;
      if (v9 != sub_190D56F10() || v11 != v12)
      {
        v14 = sub_190D58760();

        if ((v14 & 1) == 0)
        {
          v15 = sub_190D56F10();
          v17 = v16;
          if (v15 == sub_190D56F10() && v17 == v18)
          {
            goto LABEL_34;
          }

          v19 = sub_190D58760();

          if (v19)
          {
            goto LABEL_53;
          }

          v20 = sub_190D56F10();
          v22 = v21;
          if (v20 == sub_190D56F10() && v22 == v23)
          {
            goto LABEL_34;
          }

          v24 = sub_190D58760();

          if (v24)
          {
            goto LABEL_53;
          }

          v25 = sub_190D56F10();
          v27 = v26;
          if (v25 == sub_190D56F10() && v27 == v28)
          {
            goto LABEL_34;
          }

          v29 = sub_190D58760();

          if (v29)
          {
            goto LABEL_53;
          }

          v30 = sub_190D56F10();
          v32 = v31;
          if (v30 == sub_190D56F10() && v32 == v33)
          {
            goto LABEL_34;
          }

          v34 = sub_190D58760();

          if (v34)
          {
            goto LABEL_53;
          }

          v35 = sub_190D56F10();
          v37 = v36;
          if (v35 == sub_190D56F10() && v37 == v38)
          {
LABEL_34:

            return;
          }

          v39 = sub_190D58760();

          if ((v39 & 1) == 0)
          {
            v40 = sub_190D56F10();
            v42 = v41;
            if (v40 == sub_190D56F10() && v42 == v43)
            {
              goto LABEL_38;
            }

            v44 = sub_190D58760();

            if (v44)
            {
              goto LABEL_40;
            }

            v45 = sub_190D56F10();
            v47 = v46;
            if (v45 == sub_190D56F10() && v47 == v48)
            {
              goto LABEL_38;
            }

            v49 = sub_190D58760();

            if (v49)
            {
              goto LABEL_40;
            }

            v50 = sub_190D56F10();
            v52 = v51;
            if (v50 == sub_190D56F10() && v52 == v53)
            {
              goto LABEL_38;
            }

            v54 = sub_190D58760();

            if (v54)
            {
              goto LABEL_40;
            }

            v55 = sub_190D56F10();
            v57 = v56;
            if (v55 == sub_190D56F10() && v57 == v58)
            {
              goto LABEL_38;
            }

            v59 = sub_190D58760();

            if (v59)
            {
              goto LABEL_40;
            }

            v60 = sub_190D56F10();
            v62 = v61;
            if (v60 == sub_190D56F10() && v62 == v63)
            {
LABEL_38:

LABEL_40:
              sub_190A82BE0();

              return;
            }

            v64 = sub_190D58760();

            if (v64)
            {
              goto LABEL_40;
            }
          }
        }

LABEL_53:

        return;
      }
    }
  }
}

void sub_190A83510(void *a1)
{
  v2 = [a1 view];
  if (!v2)
  {
    return;
  }

  v9 = v2;
  type metadata accessor for CKSuggestedReplyButton();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = [v3 tag];
    v5 = *(v1 + OBJC_IVAR____TtC7ChatKit22CKSuggestedRepliesView_selectedSuggestedReply);
    v6 = *(v1 + OBJC_IVAR____TtC7ChatKit22CKSuggestedRepliesView_suggestedReplies);
    if ((v6 & 0xC000000000000001) == 0)
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v4 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v7 = *(v6 + 8 * v4 + 32);
LABEL_7:
        v8 = v7;
        v5();

        goto LABEL_8;
      }

      __break(1u);
      return;
    }

    v7 = MEMORY[0x193AF3B90](v4);
    goto LABEL_7;
  }

LABEL_8:
}

id sub_190A836B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKSuggestedRepliesView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190A83770(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  *&v5[OBJC_IVAR____TtC7ChatKit22CKSuggestedRepliesView_suggestedReplies] = a1;
  v7 = &v5[OBJC_IVAR____TtC7ChatKit22CKSuggestedRepliesView_messageGUID];
  *v7 = a2;
  *(v7 + 1) = a3;
  v8 = &v5[OBJC_IVAR____TtC7ChatKit22CKSuggestedRepliesView_selectedSuggestedReply];
  *v8 = a4;
  *(v8 + 1) = a5;
  v92.receiver = v5;
  v92.super_class = type metadata accessor for CKSuggestedRepliesView();
  sub_190D52690();
  sub_190D52690();
  sub_190D50920();
  v9 = objc_msgSendSuper2(&v92, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = objc_opt_self();
  v11 = v9;
  v82 = v10;
  result = [v10 sharedBehaviors];
  if (!result)
  {
LABEL_28:
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result suggestedRepliesViewBackgroundColor];

  [v11 setBackgroundColor_];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  v84 = v11;
  v86 = v15;
  [v84 addSubview_];
  v83 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_24:
    v16 = sub_190D581C0();
    if (v16)
    {
LABEL_4:
      v17 = 0;
      v18 = 0;
      v81 = v6 & 0xC000000000000001;
      v85 = v6 & 0xFFFFFFFFFFFFFF8;
      v79 = v16;
      v80 = v6;
      while (1)
      {
        if (v81)
        {
          v20 = MEMORY[0x193AF3B90](v17, v6);
        }

        else
        {
          if (v17 >= *(v85 + 16))
          {
            goto LABEL_22;
          }

          v20 = *(v6 + 8 * v17 + 32);
        }

        v21 = v20;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        if (v83)
        {
          v22 = sub_190D581C0();
        }

        else
        {
          v22 = *(v85 + 16);
        }

        if (__OFSUB__(v22, 1))
        {
          goto LABEL_23;
        }

        v89 = v17 + 1;
        v91 = v18;
        v23 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v84 action:sel_tapGestureRecognized_];
        v88 = v21;
        v24 = [v21 suggestion];
        v25 = [v24 displayText];

        v26 = sub_190D56F10();
        v28 = v27;

        v29 = objc_allocWithZone(type metadata accessor for CKSuggestedReplyButton());
        v30 = sub_190CF7C40(v26, v28, v17 != v22 - 1);
        v90 = v17;
        [v30 setTag_];
        v87 = v23;
        [v30 addGestureRecognizer_];
        [v86 addSubview_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_190DDA780;
        v32 = [v30 leftAnchor];
        v33 = [v86 leftAnchor];
        v34 = [v32 constraintEqualToAnchor_];

        *(v31 + 32) = v34;
        v35 = [v30 rightAnchor];
        v36 = [v86 rightAnchor];
        v37 = [v35 constraintEqualToAnchor_];

        *(v31 + 40) = v37;
        v38 = [v30 heightAnchor];
        result = [v82 sharedBehaviors];
        if (!result)
        {
          break;
        }

        v39 = result;
        v40 = objc_opt_self();
        [v39 extraTallExtensionBalloonMaximumHeight];
        v42 = v41;

        v43 = [v38 constraintLessThanOrEqualToConstant_];
        *(v31 + 48) = v43;
        sub_19086225C();
        v44 = sub_190D57160();

        [v40 activateConstraints_];

        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_190DD55F0;
        if (v91)
        {
          v46 = v91;
          v47 = [v30 topAnchor];
          v48 = [v46 bottomAnchor];
          v49 = [v47 constraintEqualToAnchor_];

          *(v45 + 32) = v49;
          v50 = sub_190D57160();

          [v40 activateConstraints_];
        }

        else
        {
          v51 = [v30 topAnchor];
          v52 = [v86 topAnchor];
          v53 = [v51 constraintEqualToAnchor_];

          *(v45 + 32) = v53;
          v50 = sub_190D57160();

          [v40 activateConstraints_];
        }

        v54 = v40;

        v55 = v30;
        if (v90 == v22 - 1)
        {
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_190DD55F0;
          v57 = [v30 bottomAnchor];

          v58 = [v86 bottomAnchor];
          v59 = [v57 constraintEqualToAnchor_];

          *(v56 + 32) = v59;
          v55 = sub_190D57160();

          [v54 activateConstraints_];
        }

        v17 = v90 + 1;
        v18 = v30;
        v6 = v80;
        v19 = v30;
        if (v89 == v79)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
      goto LABEL_28;
    }
  }

  else
  {
    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_4;
    }
  }

  v19 = 0;
LABEL_26:

  v60 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_190DD86A0;
  v62 = [v86 topAnchor];
  v63 = [v84 layoutMarginsGuide];

  v64 = [v63 topAnchor];
  v65 = [v62 constraintEqualToAnchor_];

  *(v61 + 32) = v65;
  v66 = [v86 leftAnchor];
  v67 = [v84 layoutMarginsGuide];

  v68 = [v67 leftAnchor];
  v69 = [v66 constraintEqualToAnchor_];

  *(v61 + 40) = v69;
  v70 = [v86 bottomAnchor];
  v71 = [v84 layoutMarginsGuide];

  v72 = [v71 bottomAnchor];
  v73 = [v70 constraintEqualToAnchor_];

  *(v61 + 48) = v73;
  v74 = [v86 rightAnchor];
  v75 = [v84 layoutMarginsGuide];

  v76 = [v75 rightAnchor];
  v77 = [v74 constraintEqualToAnchor_];

  *(v61 + 56) = v77;
  sub_19086225C();
  v78 = sub_190D57160();

  [v60 activateConstraints_];

  return v84;
}

uint64_t sub_190A841D0()
{
  v0 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B8E8));
  sub_190D52690();
  return sub_190D54B60();
}

uint64_t sub_190A842F4(uint64_t a1, uint64_t a2)
{
  sub_190A84350(a1, a2);
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B8F0));
  return sub_190D54B60();
}

void sub_190A84350(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s9ViewModelVMa(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = (&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v38 - v11);
  v49 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v13 = sub_190D581C0();
LABEL_3:
    v45 = a2 >> 62;
    if (a2 >> 62)
    {
      v14 = sub_190D581C0();
    }

    else
    {
      v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 < v13)
    {
      v13 = v14;
    }

    v50 = MEMORY[0x1E69E7CC0];
    sub_19082E0BC(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      __break(1u);
LABEL_75:

      __break(1u);
      return;
    }

    v15 = v13;
    v43 = v12;
    v40 = v3;
    v16 = v50;
    v47 = a2;
    v48 = a1;
    if (!v13)
    {
      break;
    }

    v46 = a1 & 0xC000000000000001;
    v3 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v17 = a1;
    }

    else
    {
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = (a2 & 0xFFFFFFFFFFFFFF8);
    if (a2 < 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    v41 = v18;
    v42 = v17;
    v44 = a2 & 0xC000000000000001;
    a1 = 4;
    v39 = v13;
    a2 = v13;
    while (1)
    {
      v19 = v49 ? sub_190D581C0() : *(v3 + 16);
      v20 = a1 - 4;
      if (a1 - 4 == v19)
      {
        break;
      }

      if (v46)
      {
        v21 = MEMORY[0x193AF3B90](a1 - 4, v48);
      }

      else
      {
        if (v20 >= *(v3 + 16))
        {
          goto LABEL_71;
        }

        v21 = *(v48 + 8 * a1);
      }

      v13 = v21;
      if (v45)
      {
        v22 = sub_190D581C0();
      }

      else
      {
        v22 = v12[2];
      }

      if (v20 == v22)
      {
        goto LABEL_75;
      }

      if (v44)
      {
        v23 = MEMORY[0x193AF3B90](a1 - 4, v47);
      }

      else
      {
        if (v20 >= v12[2])
        {
          goto LABEL_67;
        }

        v23 = *(v47 + 8 * a1);
      }

      v24 = v23;
      sub_190CCC6D8([v23 integerValue], v13, v9);

      v50 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_19082E0BC(v25 > 1, v26 + 1, 1);
        v16 = v50;
      }

      *(v16 + 16) = v26 + 1;
      sub_190A86580(v9, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v26);
      ++a1;
      if (!--a2)
      {
        a2 = v47;
        a1 = v48;
        v15 = v39;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  v46 = a1 & 0xC000000000000001;
  v12 = (a2 & 0xFFFFFFFFFFFFFF8);
  v44 = a2 & 0xC000000000000001;
LABEL_37:
  if (a1 < 0)
  {
    v27 = a1;
  }

  else
  {
    v27 = v3;
  }

  if (a2 < 0)
  {
    v28 = a2;
  }

  else
  {
    v28 = v12;
  }

  v41 = v28;
  v42 = v27;
  v29 = v15 + 4;
  if (!v49)
  {
LABEL_44:
    v30 = *(v3 + 16);
    goto LABEL_46;
  }

  while (1)
  {
    v30 = sub_190D581C0();
LABEL_46:
    v31 = v29 - 4;
    if (v29 - 4 == v30)
    {
      break;
    }

    if (v46)
    {
      v32 = MEMORY[0x193AF3B90](v29 - 4, a1);
    }

    else
    {
      if (v31 >= *(v3 + 16))
      {
        goto LABEL_69;
      }

      v32 = *(a1 + 8 * v29);
    }

    a1 = v32;
    if (__OFADD__(v31, 1))
    {
      goto LABEL_68;
    }

    if (v45)
    {
      if (v31 == sub_190D581C0())
      {
LABEL_64:

        return;
      }
    }

    else if (v31 == v12[2])
    {
      goto LABEL_64;
    }

    if (v44)
    {
      v33 = MEMORY[0x193AF3B90](v29 - 4, a2);
    }

    else
    {
      if (v31 >= v12[2])
      {
        goto LABEL_70;
      }

      v33 = *(a2 + 8 * v29);
    }

    v34 = v33;
    v35 = [v33 integerValue];
    v9 = v43;
    sub_190CCC6D8(v35, a1, v43);

    v50 = v16;
    v37 = *(v16 + 16);
    v36 = *(v16 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_19082E0BC(v36 > 1, v37 + 1, 1);
      v16 = v50;
    }

    *(v16 + 16) = v37 + 1;
    sub_190A86580(v9, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v37);
    ++v29;
    a2 = v47;
    a1 = v48;
    if (!v49)
    {
      goto LABEL_44;
    }
  }
}

uint64_t static DebugInspectorContainerViewControllerFactory.debugMenuViewController()()
{
  v0 = type metadata accessor for DebugMenuView();
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  swift_storeEnumTagMultiPayload();
  v4 = v3 + *(v1 + 28);
  *v4 = sub_19096D200;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B8F8));
  return sub_190D54B60();
}

id DebugInspectorContainerViewControllerFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DebugInspectorContainerViewControllerFactory.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugInspectorContainerViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DebugInspectorContainerViewControllerFactory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DebugInspectorContainerViewControllerFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190A84B74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD598A0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1909645C0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53D10();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_190A84D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  sub_190D53FB0();
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B990);
  v5 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B998);
  sub_190233640(&qword_1EAD5B9A0, &qword_1EAD5B998);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = sub_19081E484();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = OpaqueTypeConformance2;
  v25 = v7;
  v9 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  v22 = OpaqueTypeMetadata2;
  v23 = v9;
  swift_getOpaqueTypeConformance2();
  v10 = sub_190D54230();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v20 - v15;
  v20[4] = v4;
  v20[5] = v5;
  v21 = v2;
  sub_190D54220();
  WitnessTable = swift_getWitnessTable();
  sub_19096BC74(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_19096BC74(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_190A85084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v50 = a1;
  v54 = a4;
  v6 = sub_190D54870();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B990);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD5B998);
  v10 = sub_190233640(&qword_1EAD5B9A0, &qword_1EAD5B998);
  v58 = v9;
  v59 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = a2;
  v59 = v8;
  v46 = OpaqueTypeConformance2;
  v47 = v8;
  v60 = a3;
  v61 = OpaqueTypeConformance2;
  v12 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v15 = v44 - v14;
  v58 = a2;
  v59 = v8;
  v60 = a3;
  v61 = v12;
  v16 = a3;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_19081E484();
  v44[0] = OpaqueTypeMetadata2;
  v58 = OpaqueTypeMetadata2;
  v59 = MEMORY[0x1E69E6158];
  v19 = MEMORY[0x1E69E6158];
  v60 = v17;
  v61 = v18;
  v44[2] = v17;
  v20 = v18;
  v44[1] = v18;
  v21 = swift_getOpaqueTypeMetadata2();
  v48 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v44 - v22;
  v58 = OpaqueTypeMetadata2;
  v59 = v19;
  v60 = v17;
  v61 = v20;
  v24 = swift_getOpaqueTypeConformance2();
  v58 = v21;
  v59 = v24;
  v44[3] = MEMORY[0x1E697D448];
  v25 = swift_getOpaqueTypeMetadata2();
  v45 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v44 - v29;
  v31 = a2;
  v32 = type metadata accessor for DebugInspectorContainerView();
  v55 = v31;
  v56 = v16;
  v33 = v50;
  v57 = v50;
  sub_190D55BF0();
  v34 = (v33 + *(v32 + 36));
  v36 = *v34;
  v35 = v34[1];
  v58 = v36;
  v59 = v35;
  v37 = v44[0];
  sub_190D558C0();
  (*(v49 + 8))(v15, v37);
  v39 = v51;
  v38 = v52;
  v40 = v53;
  (*(v52 + 104))(v51, *MEMORY[0x1E697C438], v53);
  sub_190D55AE0();
  (*(v38 + 8))(v39, v40);
  (*(v48 + 8))(v23, v21);
  v58 = v21;
  v59 = v24;
  v41 = swift_getOpaqueTypeConformance2();
  sub_19096BC74(v27, v25, v41);
  v42 = *(v45 + 8);
  v42(v27, v25);
  sub_19096BC74(v30, v25, v41);
  return (v42)(v30, v25);
}

uint64_t sub_190A855DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B998);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - v2;
  v4 = type metadata accessor for DebugInspectorContainerView();
  sub_190A85724(v4, v3);
  v5 = sub_190233640(&qword_1EAD5B9A0, &qword_1EAD5B998);
  MEMORY[0x193AF0690](v3, v0, v5);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A85724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9A8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9B0);
  v51 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v41 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9B8);
  v44 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v45 = &v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v41 - v12;
  v14 = sub_190D54D70();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD580A8);
  v49 = *(v15 - 8);
  v50 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  sub_190D54D40();
  v55 = *(a1 + 16);
  v56 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD59990);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD563E0);
  v19 = sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v57 = v18;
  v58 = v19;
  swift_getOpaqueTypeConformance2();
  sub_190D53AE0();
  v20 = (v3 + *(a1 + 44));
  v21 = *v20;
  if (*v20)
  {
    v42 = v20[1];
    v22 = v42;
    sub_190D50920();
    v23 = sub_190D54D30();
    v41 = &v41;
    MEMORY[0x1EEE9AC00](v23);
    *(&v41 - 2) = v21;
    *(&v41 - 1) = v22;
    v24 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B9D0);
    v43 = v17;
    v25 = v44;
    sub_190233640(&qword_1EAD5B9D8, &qword_1EAD5B9D0);
    v26 = v45;
    sub_190D53AE0();
    v27 = sub_190233640(&qword_1EAD5B9C8, &qword_1EAD5B9B8);
    v28 = v46;
    v29 = v52;
    MEMORY[0x193AF0690](v26, v52, v27);
    v30 = v51;
    v31 = v47;
    (*(v51 + 16))(v47, v28, v24);
    (*(v30 + 56))(v31, 0, 1, v24);
    v57 = v29;
    v58 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x193AF06A0](v31, v24, OpaqueTypeConformance2);
    sub_19022123C(v21);
    sub_190279F50(v31);
    (*(v30 + 8))(v28, v24);
    (*(v25 + 8))(v26, v29);
    v17 = v43;
  }

  else
  {
    v33 = v47;
    (*(v51 + 56))(v47, 1, 1, v6);
    v34 = sub_190233640(&qword_1EAD5B9C8, &qword_1EAD5B9B8);
    v57 = v52;
    v58 = v34;
    v35 = swift_getOpaqueTypeConformance2();
    MEMORY[0x193AF06A0](v33, v6, v35);
    sub_190279F50(v33);
  }

  v36 = v54;
  v37 = *(v53 + 48);
  v39 = v49;
  v38 = v50;
  (*(v49 + 16))(v54, v17, v50);
  sub_190279FB8(v13, &v36[v37]);
  sub_190D54B20();
  sub_190279F50(v13);
  return (*(v39 + 8))(v17, v38);
}

uint64_t sub_190A85DD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v22 = a1;
  v26 = a4;
  v27 = sub_190D53D90();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugInspectorContainerView();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD563E0);
  v11 = *(v10 - 8);
  v23 = v10;
  v24 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v19 - v12;
  v19[1] = sub_190D549E0();
  (*(v7 + 16))(v9, v22, v6);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  v16 = v21;
  *(v15 + 16) = v20;
  *(v15 + 24) = v16;
  (*(v7 + 32))(v15 + v14, v9, v6);
  sub_190D56070();
  sub_190D53D80();
  sub_190D53E70();
  sub_190233640(&qword_1EAD451D0, &qword_1EAD563E0);
  v17 = v23;
  sub_190D558E0();
  (*(v25 + 8))(v5, v27);
  return (*(v24 + 8))(v13, v17);
}

uint64_t sub_190A860F0()
{
  v0 = sub_190D53D10();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A84B74(v3);
  sub_190D53D00();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_190A861BC(uint64_t a1, uint64_t a2)
{
  sub_190D549E0();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55B98);
  sub_190233640(&unk_1EAD59B10, &qword_1EAD55B98);
  sub_190D56030();
}

void sub_190A86314(void (*a1)(void))
{
  v2 = [objc_opt_self() generalPasteboard];
  a1();
  v3 = sub_190D56ED0();

  [v2 setString_];
}

uint64_t sub_190A863B8()
{
  sub_190D52690();
  sub_190D52690();
  sub_190D52690();

  return sub_190D55F30();
}

uint64_t sub_190A8644C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5A878);
  sub_190D55FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5B900);
  sub_190D55FC0();
  v2 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAD5B908));
  v3 = a1;
  return sub_190D54B60();
}

uint64_t sub_190A86580(uint64_t a1, uint64_t a2)
{
  v4 = _s9ViewModelVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_190A865EC()
{
  sub_1909606CC();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_19081C950();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_190A86694(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(*(sub_190D53D10() - 8) + 64);
  v7 = *(*(a3 + 16) - 8);
  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_29;
  }

  v12 = ((v10 + (((v6 & 0xFFFFFFFFFFFFFFF8) + v9 + 24) & ~v9) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = v12 & 0xFFFFFFF8;
  if ((v12 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = a2 - v11 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v17 = *(a1 + v12);
      if (!v17)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v19 = v17 - 1;
    if (v13)
    {
      v19 = 0;
      v20 = *a1;
    }

    else
    {
      v20 = 0;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = *(a1 + v12);
    if (v17)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v21 = (a1 + v6 + 8) & 0xFFFFFFFFFFFFFFF8;
  if ((v8 & 0x80000000) != 0)
  {
    v23 = *(*(*(a3 + 16) - 8) + 48);

    return v23((v21 + v9 + 16) & ~v9);
  }

  else
  {
    v22 = *(v21 + 8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }
}

void sub_190A86864(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(*(sub_190D53D10() - 8) + 64);
  v9 = 8;
  if (v8 > 8)
  {
    v9 = v8;
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  v14 = ((*(v10 + 64) + (((v9 & 0xFFFFFFFFFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v13 >= a3)
  {
    v17 = 0;
    v18 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a3 - v13 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      v21 = ((a1 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v22 = *(v10 + 56);

        v22((v21 + v12 + 16) & ~v12, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v21 = a2 & 0x7FFFFFFF;
        v21[1] = 0;
      }

      else
      {
        v21[1] = (a2 - 1);
      }

      return;
    }
  }

  if (((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v19 = v18;
  }

  else
  {
    v19 = 1;
  }

  if (((*(v10 + 64) + (((v9 & 0xFFFFFFF8) + v12 + 24) & ~v12) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v20 = ~v13 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_190A86B20()
{
  type metadata accessor for DebugInspectorContainerView();

  return sub_190A860F0();
}

double sub_190A86BA4()
{
  v1 = [v0 layer];
  v2 = sub_190D56ED0();
  v3 = [v1 valueForKeyPath_];

  if (v3)
  {
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_19021E7D8(v8);
  }

  return 0.0;
}

void sub_190A86CA4(void *a1)
{
  v2 = v1;
  v3 = [v1 layer];
  v4 = [v3 filters];

  v5 = MEMORY[0x1E69E7CA0];
  if (v4)
  {
    v6 = sub_190D57180();

    v7 = *(v6 + 16);
    if (v7)
    {
      v32 = v2;
      v8 = 0;
      v9 = (v6 + 32);
      v10 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
      while (1)
      {
        if (v8 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        sub_19021834C(v9, &v37);
        sub_19021834C(&v37, v36);
        sub_1909515A4();
        if (!swift_dynamicCast())
        {
          __swift_destroy_boxed_opaque_existential_0(&v37);
          goto LABEL_5;
        }

        v11 = [v35 v10[328]];
        if (v11)
        {
          v12 = v11;
          v13 = sub_190D56F10();
          v15 = v14;
        }

        else
        {
          v13 = 0;
          v15 = 0;
        }

        v16 = [a1 v10[328]];
        if (!v16)
        {
          break;
        }

        v33 = v13;
        v17 = v7;
        v18 = v6;
        v19 = v5;
        v20 = v16;
        v21 = sub_190D56F10();
        v23 = v22;

        v5 = v19;
        v6 = v18;
        v7 = v17;
        if (!v15)
        {
          goto LABEL_21;
        }

        if (!v23)
        {
          goto LABEL_19;
        }

        if (v33 == v21 && v15 == v23)
        {

          __swift_destroy_boxed_opaque_existential_0(&v37);
LABEL_33:

          return;
        }

        v24 = sub_190D58760();

        __swift_destroy_boxed_opaque_existential_0(&v37);
        v10 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
        if (v24)
        {
          goto LABEL_33;
        }

LABEL_5:
        ++v8;
        v9 += 32;
        if (v7 == v8)
        {

          v2 = v32;
          goto LABEL_25;
        }
      }

      if (v15)
      {
LABEL_19:

        __swift_destroy_boxed_opaque_existential_0(&v37);
        v10 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
        goto LABEL_5;
      }

      v23 = 0;
LABEL_21:

      __swift_destroy_boxed_opaque_existential_0(&v37);
      v10 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
      if (!v23)
      {
        goto LABEL_33;
      }

      goto LABEL_5;
    }
  }

LABEL_25:
  v25 = [v2 layer];
  v26 = [v25 filters];

  if (v26)
  {
    v6 = sub_190D57180();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v38 = sub_1909515A4();
  *&v37 = a1;
  v27 = a1;
  v9 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_35:
    v6 = sub_1908355E0(0, *(v6 + 16) + 1, 1, v6);
  }

  v29 = *(v6 + 16);
  v28 = *(v6 + 24);
  if (v29 >= v28 >> 1)
  {
    v6 = sub_1908355E0((v28 > 1), v29 + 1, 1, v6);
  }

  *(v6 + 16) = v29 + 1;
  sub_190824530(&v37, (v6 + 32 * v29 + 32));
  v30 = [v9 layer];
  v31 = sub_190D57160();

  [v30 setFilters_];
}

void sub_190A87064(void *a1)
{
  v15 = [v1 layer];
  v3 = [v15 filters];
  if (v3)
  {
    v4 = v3;
    v5 = sub_190D57180();

    v16 = v5;
    v6 = a1;
    v7 = sub_190A87390(&v16, v6);

    v8 = v16;
    v9 = *(v16 + 16);
    if (v7 > v9)
    {
      __break(1u);
    }

    else if ((v7 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v9, v7 - v9))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v7 <= *(v8 + 24) >> 1)
        {
          sub_190CAAD54(v7, v9, 0);
        }

        else
        {
          if (v9 <= v7)
          {
            v12 = v7;
          }

          else
          {
            v12 = v9;
          }

          v13 = sub_1908355E0(isUniquelyReferenced_nonNull_native, v12, 1, v8);
          v16 = v13;
          sub_190CAAD54(v7, v9, 0);
          if (!v13)
          {
            v14 = 0;
            goto LABEL_14;
          }
        }

        v14 = sub_190D57160();

LABEL_14:
        [v15 setFilters_];

        v11 = v14;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_21;
  }

  [v15 setFilters_];
  v11 = v15;
LABEL_15:
}

id sub_190A87208(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  v3 = a1;
  if (!v2)
  {
    v4 = v3;
    v5 = [v3 superview];
    if (v5)
    {
      v6 = v5;
      while (1)
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          break;
        }

        v2 = [v6 superview];

        v6 = v2;
        if (!v2)
        {
          goto LABEL_9;
        }
      }

      v2 = v7;
    }

    else
    {
      v2 = 0;
    }

LABEL_9:
  }

  return v2;
}

id UIView.ck_superBalloonView.getter()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = v0;
    return v2;
  }

  else
  {
    result = [v0 superview];
    if (result)
    {
      v5 = result;
      while (1)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          break;
        }

        v6 = [v5 superview];

        v5 = v6;
        if (!v6)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_190A87390(uint64_t *a1, void *a2)
{
  v3 = *a1;
  result = sub_190C39128(*a1, a2);
  v6 = result;
  if (v2)
  {
    return v6;
  }

  if (v5)
  {
    return *(v3 + 16);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_43;
  }

  v9 = (v3 + 16);
  v8 = *(v3 + 16);
  if (v7 == v8)
  {
    return v6;
  }

  v10 = 32 * result + 64;
  v11 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
  while (v7 < v8)
  {
    sub_19021834C(v3 + v10, v29);
    sub_19021834C(v29, v28);
    sub_1909515A4();
    if (swift_dynamicCast())
    {
      v27 = v30;
      v12 = [v30 v11[328]];
      if (v12)
      {
        v13 = v12;
        v24 = sub_190D56F10();
        v15 = v14;
      }

      else
      {
        v24 = 0;
        v15 = 0;
      }

      v16 = [a2 v11[328]];
      if (!v16)
      {
        if (!v15)
        {
          goto LABEL_24;
        }

LABEL_23:

LABEL_26:

        result = __swift_destroy_boxed_opaque_existential_0(v29);
        v11 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
        goto LABEL_27;
      }

      v17 = v16;
      v18 = sub_190D56F10();
      v20 = v19;

      if (!v15)
      {

        if (!v20)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      if (v24 == v18 && v15 == v20)
      {

LABEL_24:

LABEL_35:
        result = __swift_destroy_boxed_opaque_existential_0(v29);
        v11 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
        goto LABEL_9;
      }

      v23 = sub_190D58760();

      result = __swift_destroy_boxed_opaque_existential_0(v29);
      v11 = &selRef_transcriptCollectionViewController_balloonView_longPressedForItemWithIndexPath_;
      if (v23)
      {
        goto LABEL_9;
      }
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_0(v29);
    }

LABEL_27:
    if (v7 != v6)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_39;
      }

      v21 = *v9;
      if (v6 >= *v9)
      {
        goto LABEL_40;
      }

      result = sub_19021834C(v3 + 32 + 32 * v6, v29);
      if (v7 >= v21)
      {
        goto LABEL_41;
      }

      sub_19021834C(v3 + v10, v28);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_190A5BC38(v3);
      }

      v22 = v3 + 32 * v6;
      __swift_destroy_boxed_opaque_existential_0(v22 + 32);
      result = sub_190824530(v28, (v22 + 32));
      if (v7 >= *(v3 + 16))
      {
        goto LABEL_42;
      }

      __swift_destroy_boxed_opaque_existential_0(v3 + v10);
      result = sub_190824530(v29, (v3 + v10));
      *a1 = v3;
    }

    ++v6;
LABEL_9:
    ++v7;
    v9 = (v3 + 16);
    v8 = *(v3 + 16);
    v10 += 32;
    if (v7 == v8)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_190A87698()
{
  result = sub_190D56F10();
  qword_1EAD5B9E0 = result;
  *algn_1EAD5B9E8 = v1;
  return result;
}

uint64_t sub_190A876C8()
{
  result = sub_190D56F10();
  qword_1EAD5B9F0 = result;
  *algn_1EAD5B9F8 = v1;
  return result;
}

void sub_190A87714(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  IMMetricsCollector.trackDidSelectTextEffect(of:effectLength:)(a3, a4);
}

void sub_190A8778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD1DA0;
  sub_190D58230();
  *(inited + 96) = a5;
  *(inited + 72) = a1;
  sub_190D58230();
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = a2;
  sub_190821644(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A00);
  swift_arrayDestroy();
  if (qword_1EAD51BA0 != -1)
  {
    swift_once();
  }

  v10 = sub_190D56ED0();
  v11 = sub_190D56D60();

  [v5 trackEvent:v10 withDictionary:{v11, 0x6874676E656CLL, 0xE600000000000000}];
}

void sub_190A8793C(void *a1, uint64_t a2, __C::IMTextStyle a3, Swift::Int a4)
{
  v6 = a1;
  IMMetricsCollector.trackDidSelectTextStyle(_:styleLength:)(a3, a4);
}

Swift::Void __swiftcall IMMetricsCollector.trackDidConfirmExpressiveText(context:effectCount:minimumEffectLength:maximumEffectLength:averageEffectLength:medianEffectLength:effectLengthStandardDeviation:)(Swift::String context, Swift::Int effectCount, Swift::Int minimumEffectLength, Swift::Int maximumEffectLength, Swift::Int averageEffectLength, Swift::Int medianEffectLength, Swift::Int effectLengthStandardDeviation)
{
  object = context._object;
  countAndFlagsBits = context._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD54B58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DEC810;
  v15 = MEMORY[0x1E69E6158];
  sub_190D58230();
  *(inited + 96) = v15;
  *(inited + 72) = countAndFlagsBits;
  *(inited + 80) = object;
  sub_190D52690();
  sub_190D58230();
  v16 = MEMORY[0x1E69E6530];
  *(inited + 168) = MEMORY[0x1E69E6530];
  *(inited + 144) = effectCount;
  sub_190D58230();
  *(inited + 240) = v16;
  *(inited + 216) = minimumEffectLength;
  sub_190D58230();
  *(inited + 312) = v16;
  *(inited + 288) = maximumEffectLength;
  sub_190D58230();
  *(inited + 384) = v16;
  *(inited + 360) = averageEffectLength;
  sub_190D58230();
  *(inited + 456) = v16;
  *(inited + 432) = medianEffectLength;
  sub_190D58230();
  *(inited + 528) = v16;
  *(inited + 504) = effectLengthStandardDeviation;
  sub_190821644(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53A00);
  swift_arrayDestroy();
  if (qword_1EAD51BA8 != -1)
  {
    swift_once();
  }

  v17 = sub_190D56ED0();
  v18 = sub_190D56D60();

  [v20 trackEvent:v17 withDictionary:v18];
}

uint64_t sub_190A87C88(void *a1, uint64_t a2, uint64_t a3, Swift::Int a4, Swift::Int a5, Swift::Int a6, Swift::Int a7, Swift::Int a8, Swift::Int a9)
{
  v15 = sub_190D56F10();
  v17 = v16;
  v18 = a1;
  v19._countAndFlagsBits = v15;
  v19._object = v17;
  IMMetricsCollector.trackDidConfirmExpressiveText(context:effectCount:minimumEffectLength:maximumEffectLength:averageEffectLength:medianEffectLength:effectLengthStandardDeviation:)(v19, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_190A87E74()
{
  v1 = OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___spaceSavedByAutoDeletingMessagesFetcher;
  if (*(v0 + OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___spaceSavedByAutoDeletingMessagesFetcher))
  {
    v2 = *(v0 + OBJC_IVAR___CKStoragePluginDataModel____lazy_storage___spaceSavedByAutoDeletingMessagesFetcher);
  }

  else
  {
    v2 = sub_190A87EDC();
    *(v0 + v1) = v2;
    sub_190D50920();
  }

  sub_190D50920();
  return v2;
}

uint64_t sub_190A87EDC()
{
  v0 = sub_190D53040();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190A88154(v13);
  v4 = v14;
  v5 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v6 = (*(v5 + 48))(v4, v5);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5BB10);
  v9 = swift_allocObject();
  if (qword_1EAD51BB8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EAD9DE70);
  (*(v1 + 16))(v3, v10, v0);
  sub_190D521A0();
  *(v9 + 16) = v6;
  *(v9 + 24) = 1;
  *(v9 + 48) = &unk_190DEC908;
  *(v9 + 56) = v7;
  *(v9 + 64) = sub_190A8E734;
  *(v9 + 72) = v8;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0;
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v9;
}

uint64_t sub_190A88154@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v12 - v4;
  v6 = sub_190A88980(v3);
  v7 = v6;
  if (*(v6 + 56) == 1 && (*(v6 + 57) & 1) == 0)
  {
    *(v6 + 57) = 1;
    swift_beginAccess();
    sub_190D521E0();
    swift_endAccess();
    v8 = sub_190D572E0();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v9;
    sub_190857E08(0, 0, v5, &unk_190DEC8C0, v10);
  }

  swift_beginAccess();
  sub_19083B854(v7 + 16, a1);
}