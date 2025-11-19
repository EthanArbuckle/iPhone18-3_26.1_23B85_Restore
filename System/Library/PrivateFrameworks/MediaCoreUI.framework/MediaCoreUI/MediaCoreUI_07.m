uint64_t sub_1C59E8750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v46 = type metadata accessor for GlowModifier();
  v59 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v60 = v4;
  v52 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AB0);
  v6 = *(v5 - 8);
  v53 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v44 - v7;
  v8 = sub_1C5BC90F4();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - v12;
  v51 = sub_1C5BCAB54();
  v14 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AB8);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AC0);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v44 - v20;
  v21 = sub_1C59E82D4();
  v55 = v6;
  v56 = v5;
  v22 = *(v6 + 16);
  v57 = a1;
  v48 = v22;
  v22(v19, a1, v5);
  *&v19[*(v17 + 44)] = v21;
  v61 = v2;
  v23 = MEMORY[0x1E6981DF0];
  if ((*v2 & 1) == 0)
  {
    sub_1C594C704(v13);
    v24 = v44;
    v25 = v45;
    (*(v44 + 104))(v11, *MEMORY[0x1E697F600], v45);
    sub_1C59E9B54(&qword_1EDA46328, MEMORY[0x1E697F610]);
    v26 = sub_1C5BCADB4();
    v27 = *(v24 + 8);
    v27(v11, v25);
    v27(v13, v25);
    if (v26)
    {
      v23 = MEMORY[0x1E6981DB8];
    }
  }

  v28 = v49;
  v29 = v51;
  (*(v14 + 104))(v49, *v23, v51);
  v30 = v50;
  (*(v14 + 32))(&v50[*(v47 + 36)], v28, v29);
  sub_1C59E7D34(v19, v30, &qword_1EC192AB8);
  v31 = sub_1C5BCAA54();
  v33 = v32;
  v34 = v54;
  v35 = v56;
  v48(v54, v57, v56);
  v36 = v52;
  sub_1C59E9B9C(v61, v52);
  v37 = v55;
  v38 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v39 = (v53 + *(v59 + 80) + v38) & ~*(v59 + 80);
  v40 = swift_allocObject();
  (*(v37 + 32))(v40 + v38, v34, v35);
  sub_1C59E9C00(v36, v40 + v39);
  v41 = v58;
  sub_1C59E7D34(v30, v58, &qword_1EC192AC0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AC8);
  v43 = (v41 + *(result + 36));
  *v43 = sub_1C59E9C64;
  v43[1] = v40;
  v43[2] = v31;
  v43[3] = v33;
  return result;
}

uint64_t sub_1C59E8CE8@<X0>(uint64_t a1@<X1>, unsigned __int8 *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1C5BC9304();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC86C4();
  v11 = v10;
  *a3 = sub_1C5BCAA54();
  a3[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AD0);
  sub_1C59E8E90(a1, a2, a3 + *(v13 + 44), v11);
  sub_1C5BC9474();
  sub_1C5BC86D4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  (*(v7 + 8))(v9, v6);
  v27.origin.x = v15;
  v27.origin.y = v17;
  v27.size.width = v19;
  v27.size.height = v21;
  MidX = CGRectGetMidX(v27);
  v28.origin.x = v15;
  v28.origin.y = v17;
  v28.size.width = v19;
  v28.size.height = v21;
  MidY = CGRectGetMidY(v28);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AD8);
  v25 = (a3 + *(result + 36));
  *v25 = MidX;
  v25[1] = MidY;
  return result;
}

uint64_t sub_1C59E8E90@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v75 = a1;
  v77 = a3;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AE0);
  v6 = MEMORY[0x1EEE9AC00](v83);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v69 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v84 = &v69 - v12;
  v80 = sub_1C5BC90F4();
  v79 = *(v80 - 8);
  v13 = MEMORY[0x1EEE9AC00](v80);
  v78 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v69 - v15;
  v16 = sub_1C5BC8F34();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AE8);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v69 - v21;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AF0);
  v22 = MEMORY[0x1EEE9AC00](v74);
  v82 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v73 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v69 - v26;
  v27 = *(a2 + 1);
  v86 = a2;
  LODWORD(a2) = a2[16];

  v28 = v27;
  v72 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
    v28 = v90;
  }

  KeyPath = swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AB0);
  v32 = v85;
  (*(*(v31 - 8) + 16))(v85, v75, v31);
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AF8) + 36));
  *v33 = KeyPath;
  v33[1] = v28;
  v34 = v32 + *(v20 + 36);
  *v34 = a4 * 0.1;
  *(v34 + 8) = 0;
  v35 = MEMORY[0x1E697F600];
  LODWORD(v75) = *v86;
  if (v75 != 1 || (type metadata accessor for GlowModifier(), v70 = v19, v36 = v76, sub_1C594C704(v76), v37 = *v35, v38 = v79, v39 = *(v79 + 104), v40 = v78, v71 = v16, v41 = v80, v39(v78, v37, v80), v42 = sub_1C5BC8274(), v43 = *(v38 + 8), v43(v40, v41), v44 = v36, v19 = v70, v45 = v41, v16 = v71, v43(v44, v45), v35 = MEMORY[0x1E697F600], v46 = 1.0, (v42 & 1) == 0))
  {
    v46 = 0.0;
  }

  v47 = v73;
  sub_1C59E7D34(v85, v73, &qword_1EC192AE8);
  *(v47 + *(v74 + 36)) = v46;
  v48 = v81;
  sub_1C59E7D34(v47, v81, &qword_1EC192AF0);
  if (v72)
  {
    v87 = v27;
  }

  else
  {

    sub_1C5BCB4E4();
    v49 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v17 + 8))(v19, v16);
  }

  v50 = sub_1C5BCA4B4();

  v88 = 0;
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v89[7] = v90;
  *&v89[23] = v91;
  *&v89[39] = v92;
  if (!v75 || (type metadata accessor for GlowModifier(), v51 = v76, sub_1C594C704(v76), v52 = *v35, v53 = v79, v54 = v78, v55 = v80, (*(v79 + 104))(v78, v52, v80), v56 = sub_1C5BC8274(), v57 = *(v53 + 8), v57(v54, v55), v57(v51, v55), v58 = 1.0, (v56 & 1) == 0))
  {
    v58 = 0.0;
  }

  v59 = *(v83 + 36);
  v60 = *MEMORY[0x1E6981E08];
  v61 = sub_1C5BCAB54();
  (*(*(v61 - 8) + 104))(&v11[v59], v60, v61);
  *(v11 + 4) = a4 * 0.6;
  v62 = *&v89[16];
  *(v11 + 41) = *v89;
  *v11 = v50;
  *(v11 + 4) = 256;
  *(v11 + 2) = 0x3FF0000000000000;
  *(v11 + 12) = 256;
  v11[40] = 0;
  *(v11 + 57) = v62;
  *(v11 + 73) = *&v89[32];
  *(v11 + 11) = *&v89[47];
  *(v11 + 12) = v58;
  v63 = v11;
  v64 = v84;
  sub_1C59E7D34(v63, v84, &qword_1EC192AE0);
  v65 = v82;
  sub_1C59400B0(v48, v82, &qword_1EC192AF0);
  sub_1C59400B0(v64, v8, &qword_1EC192AE0);
  v66 = v77;
  sub_1C59400B0(v65, v77, &qword_1EC192AF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B00);
  sub_1C59400B0(v8, v66 + *(v67 + 48), &qword_1EC192AE0);
  sub_1C5924EF4(v64, &qword_1EC192AE0);
  sub_1C5924EF4(v48, &qword_1EC192AF0);
  sub_1C5924EF4(v8, &qword_1EC192AE0);
  return sub_1C5924EF4(v65, &qword_1EC192AF0);
}

uint64_t sub_1C59E97A4()
{
  result = sub_1C5BCA494();
  qword_1EDA47998 = result;
  return result;
}

uint64_t sub_1C59E97C4@<X0>(void *a1@<X8>)
{
  if (qword_1EDA47990 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EDA47998;
}

uint64_t View.glowEffect(isActive:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MCUINamespace();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  View.mcui.getter(a2, &v11 - v8);
  MCUINamespace<A>.glowEffect(isActive:)(a1, v6, a3);
  return (*(v7 + 8))(v9, v6);
}

uint64_t View.glowEffectForegroundColor(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MCUINamespace();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  View.mcui.getter(a2, &v8 - v5);
  MCUINamespace<A>.glowEffectForegroundColor(_:)();
  return (*(v4 + 8))(v6, v3);
}

void sub_1C59E9A54()
{
  sub_1C59E9AE8();
  if (v0 <= 0x3F)
  {
    sub_1C594F100();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C59E9AE8()
{
  if (!qword_1EDA46738)
  {
    v0 = sub_1C5BC8304();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA46738);
    }
  }
}

uint64_t sub_1C59E9B54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C59E9B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlowModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59E9C00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlowModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59E9C64@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192AB0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for GlowModifier() - 8);
  v7 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_1C59E8CE8(v1 + v4, v7, a1);
}

unint64_t sub_1C59E9D54()
{
  result = qword_1EDA47980;
  if (!qword_1EDA47980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47980);
  }

  return result;
}

unint64_t sub_1C59E9DB8()
{
  result = qword_1EC192B10;
  if (!qword_1EC192B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192AC8);
    sub_1C59E9E70();
    sub_1C5924F54(&qword_1EDA46320, &qword_1EC192B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192B10);
  }

  return result;
}

unint64_t sub_1C59E9E70()
{
  result = qword_1EC192B18;
  if (!qword_1EC192B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192AC0);
    sub_1C59E9EFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192B18);
  }

  return result;
}

unint64_t sub_1C59E9EFC()
{
  result = qword_1EDA46608;
  if (!qword_1EDA46608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192AB8);
    sub_1C5924F54(&qword_1EDA46278, &qword_1EC192AB0);
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46608);
  }

  return result;
}

uint64_t sub_1C59E9FE0()
{
  sub_1C59A57CC();

  return sub_1C5BC8F44();
}

uint64_t sub_1C59EA028()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1C5BC9A64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E6980EF8], v3);
  v7 = sub_1C5BC9954();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1C5BC9994();
  v8 = sub_1C5BC99B4();
  sub_1C5924EF4(v2, &qword_1EC190F90);
  result = (*(v4 + 8))(v6, v3);
  qword_1EC192B28 = v8;
  return result;
}

void sub_1C59EA1E0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD028]) initWithStyle:0 reuseIdentifier:0];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  qword_1EC192B30 = CGRectGetHeight(v9);
}

uint64_t sub_1C59EA26C()
{
  v0 = MEMORY[0x1E69815C0];
  __swift_allocate_value_buffer(MEMORY[0x1E69815C0], qword_1EC192B38);
  v1 = __swift_project_value_buffer(v0, qword_1EC192B38);
  v2 = [objc_opt_self() quaternaryLabelColor];
  result = sub_1C5BCA424();
  *v1 = result;
  return result;
}

uint64_t sub_1C59EA2DC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B78);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_1C59400B0(v2, &v14 - v9, &qword_1EC192B78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C5BC8694();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1C5BCB4E4();
    v13 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t BubbleTip.init<>(titleView:actions:closeButtonHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 1;
  v11();
  v17 = 1;
  v14 = sub_1C5BC8FC4();
  return sub_1C59EA5E0(&v18, v14, v13, &v17, a2, a3, a4, a6, a5);
}

uint64_t sub_1C59EA5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9)
{
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B78);
  swift_storeEnumTagMultiPayload();
  v14 = type metadata accessor for BubbleTip();
  v15 = v14[23];
  *(a8 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B80);
  swift_storeEnumTagMultiPayload();
  v16 = v14[24];
  *(a8 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);
  swift_storeEnumTagMultiPayload();
  v17 = v14[25];
  *(a8 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B88);
  swift_storeEnumTagMultiPayload();
  v18 = v14[17];
  v19 = sub_1C5BCB804();
  (*(*(v19 - 8) + 32))(a8 + v18, a1, v19);
  *(a8 + v14[18]) = a2;
  (*(*(a9 - 8) + 32))(a8 + v14[19], a3, a9);
  v20 = v14[20];
  v21 = sub_1C5BCB804();
  result = (*(*(v21 - 8) + 32))(a8 + v20, a4, v21);
  *(a8 + v14[21]) = a5;
  v23 = (a8 + v14[22]);
  *v23 = a6;
  v23[1] = a7;
  return result;
}

uint64_t BubbleTip.init<>(titleView:subtitleView:actions:closeButtonHandler:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v24 = a4;
  v25 = a5;
  v22 = a7;
  v23 = a3;
  v11 = sub_1C5BCB804();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 1;
  v18 = a1(v15);
  a2(v18);
  (*(*(a8 - 8) + 56))(v14, 0, 1, a8);
  v19 = sub_1C5BC8FC4();
  return sub_1C59EA5E0(&v26, v19, v17, v14, v23, v24, v25, v22, a6);
}

uint64_t BubbleTip.init<>(accessoryView:accessoryViewVerticalAlignment:titleView:actions:closeButtonHandler:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9)
{
  v22 = a5;
  v23 = a6;
  v20 = a2;
  v21 = a4;
  v19 = a7;
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C5BCB804();
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v19 - v15;
  a1(v14);
  v17 = (*(*(a8 - 8) + 56))(v16, 0, 1, a8);
  a3(v17);
  v24 = 1;
  return sub_1C59EA5E0(v16, v20, v12, &v24, v21, v22, v23, v19, a9);
}

uint64_t BubbleTip.init(accessoryView:accessoryViewVerticalAlignment:titleView:subtitleView:actions:closeButtonHandler:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, void (*a4)(uint64_t)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  v36 = a2;
  v37 = a6;
  v29[1] = a5;
  v30 = a4;
  v33 = a7;
  v34 = a9;
  v35 = a8;
  v32 = a13;
  v31 = a14;
  v16 = sub_1C5BCB804();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v29 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1C5BCB804();
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v29 - v24;
  a1(v23);
  v26 = (*(*(a10 - 8) + 56))(v25, 0, 1, a10);
  v27 = a3(v26);
  v30(v27);
  (*(*(a12 - 8) + 56))(v19, 0, 1, a12);
  return sub_1C59EA5E0(v25, v36, v21, v19, v37, v35, v34, v33, a11);
}

uint64_t BubbleTip.init<>(image:title:subtitle:bundle:tableName:actions:closeButtonHandler:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v57 = a4;
  v58 = a6;
  v59 = a2;
  v60 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B68);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = *a1;
  v62 = a1[1];
  v63 = v20;
  v61 = a1[2];
  v21 = *(a1 + 24);
  v64 = v21;
  if (v21 == 255 || (v21 & 1) == 0)
  {
    v22 = sub_1C5BC8FC4();
  }

  else
  {
    v22 = sub_1C5BC8FB4();
  }

  v56 = a9;
  v68 = a14;
  v66 = v22;
  v67 = a13;
  v65 = a12;
  v54 = a9;

  v23 = sub_1C5BC9C94();
  v25 = v24;
  v27 = v26;
  v59 = v28;
  v60 = a11;
  KeyPath = swift_getKeyPath();
  v55 = a10;
  v30 = &v19[*(v17 + 36)];
  v31 = v19;
  v32 = a5;
  *&v30[*(type metadata accessor for BubbleTipTitleViewModifier(0) + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);
  swift_storeEnumTagMultiPayload();
  *v30 = a5 != 0;
  *v31 = v23;
  *(v31 + 8) = v25;
  *(v31 + 16) = v27 & 1;
  *(v31 + 24) = v59;
  if (a5)
  {

    v33 = v57;
    v34 = sub_1C5BC9C94();
    v36 = v35;
    v37 = v31;
    v39 = v38;
    v41 = v40;
    v32 = v34;
    sub_1C59F2170(v33, a5);
    v42 = v39 & 1;
    v31 = v37;
  }

  else
  {

    v36 = 0;
    v42 = 0;
    v41 = 0;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B70);
  v44 = a7 + v43[17];
  v45 = v62;
  *v44 = v63;
  *(v44 + 1) = v45;
  *(v44 + 2) = v61;
  v44[24] = v64;
  v46 = (a7 + v43[20]);
  *v46 = v32;
  v46[1] = v36;
  v46[2] = v42;
  v46[3] = v41;
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B78);
  swift_storeEnumTagMultiPayload();
  v47 = v43[23];
  *(a7 + v47) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B80);
  swift_storeEnumTagMultiPayload();
  v48 = v43[24];
  *(a7 + v48) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v49 = v43[25];
  *(a7 + v49) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B88);
  swift_storeEnumTagMultiPayload();
  *(a7 + v43[18]) = v66;
  result = sub_1C59E7D34(v31, a7 + v43[19], &qword_1EC192B68);
  *(a7 + v43[21]) = v65;
  v51 = (a7 + v43[22]);
  v52 = v68;
  *v51 = v67;
  v51[1] = v52;
  return result;
}

uint64_t BubbleTip.init<>(image:title:subtitle:actions:closeButtonHandler:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v56 = a7;
  v57 = a8;
  v55 = a6;
  v47 = a4;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B68);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = *a1;
  v51 = a1[1];
  v52 = v17;
  v50 = a1[2];
  v18 = *(a1 + 24);
  v53 = v18;
  if (v18 == 255 || (v18 & 1) == 0)
  {
    v19 = sub_1C5BC8FC4();
  }

  else
  {
    v19 = sub_1C5BC8FB4();
  }

  v54 = v19;
  v58 = a2;
  v59 = a3;
  v46 = sub_1C594A23C();
  v20 = sub_1C5BC9CA4();
  v22 = v21;
  v24 = v23;
  v48 = v25;
  KeyPath = swift_getKeyPath();
  v27 = &v16[*(v14 + 36)];
  *&v27[*(type metadata accessor for BubbleTipTitleViewModifier(0) + 20)] = KeyPath;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);
  swift_storeEnumTagMultiPayload();
  *v27 = a5 != 0;
  *v16 = v20;
  *(v16 + 1) = v22;
  v16[16] = v24 & 1;
  *(v16 + 3) = v48;
  if (a5)
  {
    v58 = v47;
    v59 = a5;
    v28 = sub_1C5BC9CA4();
    v30 = v29;
    v32 = v31;
    v34 = v33 & 1;
  }

  else
  {
    v28 = 0;
    v30 = 0;
    v34 = 0;
    v32 = 0;
  }

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B70);
  v36 = a9 + v35[17];
  v37 = v51;
  *v36 = v52;
  *(v36 + 1) = v37;
  *(v36 + 2) = v50;
  v36[24] = v53;
  v38 = (a9 + v35[20]);
  *v38 = v28;
  v38[1] = v30;
  v38[2] = v34;
  v38[3] = v32;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B78);
  swift_storeEnumTagMultiPayload();
  v39 = v35[23];
  *(a9 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B80);
  swift_storeEnumTagMultiPayload();
  v40 = v35[24];
  *(a9 + v40) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v41 = v35[25];
  *(a9 + v41) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B88);
  swift_storeEnumTagMultiPayload();
  *(a9 + v35[18]) = v54;
  result = sub_1C59E7D34(v16, a9 + v35[19], &qword_1EC192B68);
  v43 = v56;
  *(a9 + v35[21]) = v55;
  v44 = (a9 + v35[22]);
  v45 = v57;
  *v44 = v43;
  v44[1] = v45;
  return result;
}

uint64_t BubbleTip.init<>(accessoryView:accessoryViewVerticalAlignment:title:subtitle:bundle:tableName:actions:closeButtonHandler:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v49 = a7;
  v50 = a3;
  LODWORD(v52) = a5;
  v51 = a4;
  v61 = a2;
  v58 = a8;
  v54 = a6;
  v55 = a19;
  v59 = a17;
  v56 = a15;
  v57 = a16;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B68);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v47 - v21;
  v23 = sub_1C5BCB804();
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v47 - v25;
  a1(v24);
  v27 = *(*(a18 - 8) + 56);
  v53 = v26;
  v60 = a18;
  v27(v26, 0, 1, a18);
  v48 = a12;

  v50 = a13;
  v51 = a12;
  v52 = a14;
  v28 = sub_1C5BC9C94();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  KeyPath = swift_getKeyPath();
  v54 = v20;
  v36 = &v22[*(v20 + 36)];
  *&v36[*(type metadata accessor for BubbleTipTitleViewModifier(0) + 20)] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);
  swift_storeEnumTagMultiPayload();
  *v36 = a9 != 0;
  *v22 = v28;
  *(v22 + 1) = v30;
  v22[16] = v32 & 1;
  *(v22 + 3) = v34;
  if (a9)
  {

    v37 = v49;
    v38 = sub_1C5BC9C94();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_1C59F2170(v37, a9);
    v45 = v42 & 1;
  }

  else
  {

    v38 = 0;
    v40 = 0;
    v45 = 0;
    v44 = 0;
  }

  v62[0] = v38;
  v62[1] = v40;
  v62[2] = v45;
  v62[3] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B90);
  sub_1C59F21B4();
  sub_1C59F2270();
  return sub_1C59EA5E0(v53, v61, v22, v62, v56, v57, v59, v58, v54);
}

uint64_t sub_1C59EB7AC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1 - 8;
  v6 = *(a1 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192EB0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = (v2 + *(v5 + 24));
  v13 = *v12;
  if (*v12)
  {
    v14 = v12[1];
    v15 = *(v6 + 16);
    v24 = v9;
    v15(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
    v16 = *(v6 + 80);
    v23 = a2;
    v17 = (v16 + 80) & ~v16;
    v18 = swift_allocObject();
    v19 = a1[2];
    *(v18 + 16) = a1[1];
    *(v18 + 32) = v19;
    *(v18 + 48) = a1[3];
    *(v18 + 64) = v13;
    *(v18 + 72) = v14;
    (*(v6 + 32))(v18 + v17, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    sub_1C5974664(v13, v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192EB8);
    sub_1C59F447C();
    sub_1C5BCA6E4();
    sub_1C59A5824(v13, v14);
    v20 = v23;
    (*(v24 + 32))(v23, v11, v8);
    return (*(v24 + 56))(v20, 0, 1, v8);
  }

  else
  {
    v22 = *(v9 + 56);

    return v22(a2, 1, 1, v8);
  }
}

uint64_t sub_1C59EBA80(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v20[0] = a8;
  v20[1] = a3;
  v14 = sub_1C5BC8694();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = v20 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v16);
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v20[5] = a7;
  v20[6] = v20[0];
  v20[7] = a9;
  type metadata accessor for BubbleTip();
  sub_1C59EA2DC(v18);
  sub_1C5BC8684();
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1C59EBBAC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v12 - v3;
  v5 = sub_1C5BCA5A4();
  if (qword_1EC190588 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC192B28;
  KeyPath = swift_getKeyPath();
  v12[1] = v5;
  v12[2] = KeyPath;
  v12[3] = v6;
  v8 = *MEMORY[0x1E697E6C0];
  v9 = sub_1C5BC89B4();
  (*(*(v9 - 8) + 104))(v4, v8, v9);
  sub_1C59F2388(&qword_1EDA46688, MEMORY[0x1E697E730]);

  if ((sub_1C5BCADB4() & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C70);
  sub_1C5958260();
  sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
  sub_1C5BC9F54();
  sub_1C5924EF4(v4, &qword_1EC192838);

  if (qword_1EC190598 != -1)
  {
LABEL_7:
    swift_once();
  }

  v10 = *__swift_project_value_buffer(MEMORY[0x1E69815C0], qword_1EC192B38);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192EB8) + 36)) = v10;
}

uint64_t sub_1C59EBE68@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1C5BC9134();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E60);
  return sub_1C59EBED0();
}

uint64_t sub_1C59EBED0()
{
  type metadata accessor for BubbleTip();
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E70);
  sub_1C5924F54(&qword_1EC192E78, &qword_1EC192E68);
  sub_1C5924F54(&qword_1EC192E80, &qword_1EC192E70);
  return sub_1C5BCA8A4();
}

uint64_t sub_1C59EC024@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E88);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = sub_1C5BCA894();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v23 - v15;
  v17 = *a1;
  v18 = a1[3];
  sub_1C5BCA884();
  v23 = v17;
  v24 = *(a1 + 1);
  v25 = v18;
  sub_1C59F42C4();
  sub_1C5BCA184();
  v19 = *(v11 + 16);
  v19(v14, v16, v10);
  sub_1C59400B0(v9, v7, &qword_1EC192E88);
  v19(a2, v14, v10);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E98);
  sub_1C59400B0(v7, &a2[*(v20 + 48)], &qword_1EC192E88);
  sub_1C5924EF4(v9, &qword_1EC192E88);
  v21 = *(v11 + 8);
  v21(v16, v10);
  sub_1C5924EF4(v7, &qword_1EC192E88);
  return (v21)(v14, v10);
}

uint64_t BubbleTip.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v108 = a1[2];
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  v117 = a1[3];
  v106 = a1;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BB8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  v116 = a1[4];
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BC0);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  swift_getTupleTypeMetadata2();
  v97 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v3 = sub_1C5BCA714();
  v98 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v86 - v4;
  v123 = v5;
  v6 = sub_1C5BC8AB4();
  v101 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v86 - v7;
  v8 = type metadata accessor for BubbleBackground(255);
  v122 = v6;
  v9 = sub_1C5BC8AB4();
  v102 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v100 = &v86 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC190FC8);
  v114 = v9;
  v11 = sub_1C5BC8AB4();
  v105 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v104 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v103 = &v86 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BC8);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  v86 = swift_getWitnessTable();
  v18 = sub_1C5BCA7D4();
  v87 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  v121 = v21;
  v22 = sub_1C5BC8AB4();
  v89 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v88 = &v86 - v23;
  v120 = v24;
  v109 = v8;
  v25 = sub_1C5BC8AB4();
  v91 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v86 - v26;
  v119 = v27;
  v28 = sub_1C5BC8AB4();
  v94 = *(v28 - 8);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v93 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v92 = &v86 - v31;
  v32 = sub_1C5BC9114();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v86 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v28;
  v113 = v11;
  v36 = sub_1C5BC92D4();
  v111 = *(v36 - 8);
  v112 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v118 = &v86 - v37;
  v38 = v106;
  v39 = v107;
  sub_1C59ED4E0(v106, v35);
  LOBYTE(v11) = sub_1C5BC9104();
  (*(v33 + 8))(v35, v32);
  v124 = v108;
  v125 = v117;
  v126 = v116;
  v127 = *(v38 + 40);
  v128 = *(v38 + 56);
  v129 = v39;
  if (v11)
  {
    sub_1C5BC9134();
    sub_1C5BCA7C4();
    v40 = v121;
    v41 = swift_getWitnessTable();
    v42 = v88;
    sub_1C5BCA2E4();
    (*(v87 + 8))(v20, v40);
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B88);
    swift_storeEnumTagMultiPayload();
    v43 = v109;
    v44 = *(v109 + 20);
    *(v17 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B80);
    swift_storeEnumTagMultiPayload();
    v140 = v41;
    v141 = MEMORY[0x1E697E5D8];
    v45 = v120;
    v46 = swift_getWitnessTable();
    v47 = v90;
    MEMORY[0x1C694E550](v17, v45, v43, v46);
    sub_1C59F2A78(v17, type metadata accessor for BubbleBackground);
    (*(v89 + 8))(v42, v45);
    v48 = sub_1C59F2388(&qword_1EC192BD8, type metadata accessor for BubbleBackground);
    v138 = v46;
    v139 = v48;
    v49 = v119;
    v50 = swift_getWitnessTable();
    v51 = v93;
    sub_1C5BC9EA4();
    (*(v91 + 8))(v47, v49);
    v52 = sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8);
    v136 = v50;
    v137 = v52;
    v53 = v110;
    v54 = swift_getWitnessTable();
    v55 = v92;
    sub_1C593EDC0(v51, v53, v54);
    v56 = *(v94 + 8);
    v56(v51, v53);
    sub_1C593EDC0(v55, v53, v54);
    v134 = swift_getWitnessTable();
    v135 = MEMORY[0x1E697E5D8];
    v132 = swift_getWitnessTable();
    v133 = v48;
    v130 = swift_getWitnessTable();
    v131 = v52;
    swift_getWitnessTable();
    sub_1C5950E54(v51, v53);
    v56(v51, v53);
    v56(v55, v53);
  }

  else
  {
    sub_1C5BC8FC4();
    v57 = v96;
    sub_1C5BCA704();
    v58 = v123;
    v59 = swift_getWitnessTable();
    v60 = v99;
    sub_1C5BCA2E4();
    (*(v98 + 8))(v57, v58);
    *v17 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B88);
    swift_storeEnumTagMultiPayload();
    v61 = v109;
    v62 = *(v109 + 20);
    *(v17 + v62) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192B80);
    swift_storeEnumTagMultiPayload();
    v166 = v59;
    v167 = MEMORY[0x1E697E5D8];
    v63 = v122;
    v64 = swift_getWitnessTable();
    v65 = v100;
    MEMORY[0x1C694E550](v17, v63, v61, v64);
    sub_1C59F2A78(v17, type metadata accessor for BubbleBackground);
    (*(v101 + 8))(v60, v63);
    v117 = sub_1C59F2388(&qword_1EC192BD8, type metadata accessor for BubbleBackground);
    v164 = v64;
    v165 = v117;
    v66 = v114;
    v67 = swift_getWitnessTable();
    v68 = v104;
    sub_1C5BC9EA4();
    (*(v102 + 8))(v65, v66);
    v69 = sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8);
    v162 = v67;
    v163 = v69;
    v70 = v113;
    v71 = swift_getWitnessTable();
    v72 = v103;
    sub_1C593EDC0(v68, v70, v71);
    v73 = *(v105 + 8);
    v73(v68, v70);
    sub_1C593EDC0(v72, v70, v71);
    v160 = swift_getWitnessTable();
    v161 = MEMORY[0x1E697E5D8];
    v158 = swift_getWitnessTable();
    v159 = v117;
    v156 = swift_getWitnessTable();
    v157 = v69;
    v74 = v110;
    swift_getWitnessTable();
    sub_1C5941738(v68, v74, v70);
    v73(v68, v70);
    v73(v72, v70);
  }

  v154 = swift_getWitnessTable();
  v75 = MEMORY[0x1E697E5D8];
  v155 = MEMORY[0x1E697E5D8];
  v76 = swift_getWitnessTable();
  v77 = sub_1C59F2388(&qword_1EC192BD8, type metadata accessor for BubbleBackground);
  v152 = v76;
  v153 = v77;
  v78 = swift_getWitnessTable();
  v79 = sub_1C5924F54(&qword_1EDA4E1A8, &qword_1EC190FC8);
  v150 = v78;
  v151 = v79;
  v80 = swift_getWitnessTable();
  v148 = swift_getWitnessTable();
  v149 = v75;
  v146 = swift_getWitnessTable();
  v147 = v77;
  v144 = swift_getWitnessTable();
  v145 = v79;
  v81 = swift_getWitnessTable();
  v142 = v80;
  v143 = v81;
  v82 = v112;
  v83 = swift_getWitnessTable();
  v84 = v118;
  sub_1C593EDC0(v118, v82, v83);
  return (*(v111 + 8))(v84, v82);
}

uint64_t sub_1C59ED4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C59400B0(v2 + *(a1 + 96), &v15 - v10, &qword_1EC1914C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C5BC9114();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C59ED6E4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v81 = a1;
  v82 = a7;
  v57 = a5;
  v58 = a6;
  v73 = a8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BC0);
  v11 = MEMORY[0x1EEE9AC00](v72);
  v71 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v70 = v55 - v13;
  v14 = a4;
  v78 = a4;
  sub_1C5BCB804();
  v77 = a3;
  swift_getTupleTypeMetadata2();
  v65 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v61 = sub_1C5BCA7D4();
  v66 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v55 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BD0);
  v62 = sub_1C5BC8AB4();
  v69 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v59 = v55 - v16;
  v17 = sub_1C5BC8AB4();
  v18 = *(v17 - 8);
  v67 = v17;
  v68 = v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v83 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v63 = v55 - v21;
  v76 = a2;
  sub_1C5BCB804();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BC8);
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v22 = sub_1C5BCA714();
  v56 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v55 - v23;
  v75 = sub_1C5BC8AB4();
  v80 = *(v75 - 8);
  v25 = MEMORY[0x1EEE9AC00](v75);
  v27 = v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v79 = v55 - v28;
  v91 = a2;
  v92 = a3;
  v93 = v14;
  v29 = v57;
  v30 = v58;
  v94 = v57;
  v95 = v58;
  v31 = v81;
  v32 = v82;
  v96 = v82;
  v97 = v81;
  sub_1C5BC8FC4();
  sub_1C5BCA704();
  sub_1C5BC98E4();
  v33 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v56[1](v24, v22);
  v112 = v33;
  v113 = MEMORY[0x1E697E5D8];
  v34 = v75;
  v55[0] = swift_getWitnessTable();
  v74 = v27;
  sub_1C593EDC0(v27, v34, v55[0]);
  v35 = *(v80 + 8);
  v55[1] = v80 + 8;
  v56 = v35;
  (v35)(v27, v34);
  v84 = v76;
  v85 = v77;
  v86 = v78;
  v87 = v29;
  v88 = v30;
  v89 = v32;
  v90 = v31;
  sub_1C5BC9134();
  v36 = v60;
  sub_1C5BCA7C4();
  v65 = MEMORY[0x1E6981870];
  v37 = v61;
  v38 = swift_getWitnessTable();
  v39 = v59;
  sub_1C5BCA064();
  (*(v66 + 8))(v36, v37);
  v40 = sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
  v110 = v38;
  v111 = v40;
  v41 = v62;
  v42 = swift_getWitnessTable();
  v43 = v83;
  sub_1C5BCA2E4();
  (*(v69 + 8))(v39, v41);
  v108 = v42;
  v109 = MEMORY[0x1E697E5D8];
  v44 = v67;
  v66 = swift_getWitnessTable();
  v45 = v63;
  sub_1C593EDC0(v43, v44, v66);
  v46 = v68;
  v69 = *(v68 + 8);
  (v69)(v43, v44);
  v102 = v76;
  v103 = v77;
  v104 = v78;
  v105 = v29;
  v106 = v30;
  v107 = v82;
  type metadata accessor for BubbleTip();
  v47 = v70;
  sub_1C59EBE68(v70);
  v48 = v79;
  v49 = v74;
  v50 = v75;
  (*(v80 + 16))(v74, v79, v75);
  v102 = v49;
  (*(v46 + 16))(v43, v45, v44);
  v103 = v43;
  v51 = v71;
  sub_1C59400B0(v47, v71, &qword_1EC192BC0);
  v104 = v51;
  v101[0] = v50;
  v101[1] = v44;
  v101[2] = v72;
  v98 = v55[0];
  v99 = v66;
  v100 = sub_1C5924F54(&qword_1EC192E58, &qword_1EC192BC0);
  sub_1C594226C(&v102, 3uLL, v101);
  sub_1C5924EF4(v47, &qword_1EC192BC0);
  v52 = v69;
  (v69)(v45, v44);
  v53 = v56;
  (v56)(v48, v50);
  sub_1C5924EF4(v51, &qword_1EC192BC0);
  v52(v83, v44);
  return (v53)(v74, v50);
}

uint64_t sub_1C59EDFC8@<X0>(char *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, _OWORD *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v30 = a5;
  v29 = a3;
  v34 = a7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BC8);
  v11 = MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v29 - v13;
  sub_1C5BCB804();
  sub_1C5BC97C4();
  v14 = sub_1C5BC8AB4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  v44 = a1;
  v45 = a2;
  v46 = v29;
  v47 = a4;
  v48 = v30;
  v49 = a6;
  v30 = type metadata accessor for BubbleTip();
  v43 = a4;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA094();
  v22 = sub_1C59F2388(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v41 = WitnessTable;
  v42 = v22;
  v23 = swift_getWitnessTable();
  v24 = v20;
  sub_1C593EDC0(v18, v14, v23);
  v25 = *(v15 + 8);
  v25(v18, v14);
  v26 = v31;
  sub_1C59EB7AC(v30, v31);
  (*(v15 + 16))(v18, v24, v14);
  v39 = 0;
  v40 = 1;
  v44 = v18;
  v45 = &v39;
  v27 = v32;
  sub_1C59400B0(v26, v32, &qword_1EC192BC8);
  v46 = v27;
  v38[0] = v14;
  v38[1] = MEMORY[0x1E6981840];
  v38[2] = v33;
  v35 = v23;
  v36 = MEMORY[0x1E6981838];
  v37 = sub_1C59F4318();
  sub_1C594226C(&v44, 3uLL, v38);
  sub_1C5924EF4(v26, &qword_1EC192BC8);
  v25(v24, v14);
  sub_1C5924EF4(v27, &qword_1EC192BC8);
  return (v25)(v18, v14);
}

uint64_t sub_1C59EE374@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35 = a2;
  v36 = a5;
  v39 = a8;
  v13 = sub_1C5BCB804();
  v37 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v38 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v33 - v17;
  v19 = *(a3 - 1);
  v20 = MEMORY[0x1EEE9AC00](v16);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v33 - v23;
  v43 = v35;
  v44 = a3;
  v45 = a4;
  v46 = v36;
  v34 = a6;
  v47 = a6;
  v48 = a7;
  v25 = type metadata accessor for BubbleTip();
  sub_1C593EDC0(a1 + *(v25 + 76), a3, a6);
  v26 = *(v25 + 80);
  v42[2] = a7;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(a1 + v26, v13, WitnessTable);
  (*(v19 + 16))(v22, v24, a3);
  v43 = v22;
  v29 = v37;
  v28 = v38;
  (*(v37 + 16))(v38, v18, v13);
  v44 = v28;
  v42[0] = a3;
  v42[1] = v13;
  v40 = v34;
  v41 = WitnessTable;
  sub_1C594226C(&v43, 2uLL, v42);
  v30 = *(v29 + 8);
  v30(v18, v13);
  v31 = *(v19 + 8);
  v31(v24, a3);
  v30(v28, v13);
  return (v31)(v22, a3);
}

uint64_t sub_1C59EE644@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a7;
  v57 = a6;
  v53 = a5;
  v54 = a3;
  v55 = a1;
  v51 = a8;
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BB8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  v44 = a4;
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BC0);
  swift_getTupleTypeMetadata2();
  v49 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v45 = sub_1C5BCA7D4();
  v50 = *(v45 - 8);
  v10 = MEMORY[0x1EEE9AC00](v45);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v38 - v12;
  v13 = a2;
  v43 = a2;
  sub_1C5BCB804();
  v14 = sub_1C5BC8AB4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v38 - v16;
  v18 = sub_1C5BC8AB4();
  v52 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v39 = &v38 - v22;
  v68 = v13;
  v69 = v54;
  v70 = a4;
  v23 = v53;
  v71 = v53;
  v72 = v57;
  v73 = v56;
  type metadata accessor for BubbleTip();
  sub_1C5BC98B4();
  v67[6] = v23;
  v24 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v67[4] = v24;
  v67[5] = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  sub_1C5BCA094();
  (*(v15 + 8))(v17, v14);
  v26 = sub_1C59F2388(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v67[2] = v25;
  v67[3] = v26;
  v38 = v18;
  v41 = swift_getWitnessTable();
  sub_1C593EDC0(v21, v18, v41);
  v27 = *(v52 + 8);
  v40 = v52 + 8;
  v42 = v27;
  v27(v21, v18);
  v58 = v43;
  v59 = v54;
  v60 = v44;
  v61 = v53;
  v62 = v57;
  v63 = v56;
  v64 = v55;
  sub_1C5BC9134();
  v28 = v46;
  sub_1C5BCA7C4();
  v29 = v45;
  v30 = swift_getWitnessTable();
  v31 = v47;
  sub_1C593EDC0(v28, v29, v30);
  v32 = v50;
  v33 = *(v50 + 8);
  v33(v28, v29);
  v34 = v39;
  v35 = v38;
  (*(v52 + 16))(v21, v39, v38);
  v68 = v21;
  (*(v32 + 16))(v28, v31, v29);
  v69 = v28;
  v67[0] = v35;
  v67[1] = v29;
  v65 = v41;
  v66 = v30;
  sub_1C594226C(&v68, 2uLL, v67);
  v33(v31, v29);
  v36 = v42;
  v42(v34, v35);
  v33(v28, v29);
  return v36(v21, v35);
}

uint64_t sub_1C59EEDA8@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v31 = a7;
  v38 = a6;
  v39 = a5;
  v36 = a3;
  v37 = a2;
  v40 = a1;
  v35 = a8;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BC0);
  v9 = MEMORY[0x1EEE9AC00](v34);
  v33 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v32 = v30 - v11;
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BB8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  v30[0] = a4;
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v12 = sub_1C5BCA7D4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = sub_1C5BC8AB4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v30 - v21;
  v41 = v37;
  v42 = v36;
  v43 = a4;
  v44 = v39;
  v23 = v31;
  v45 = v38;
  v46 = v31;
  v47 = v40;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  v30[1] = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2E4();
  (*(v13 + 8))(v15, v12);
  v57 = WitnessTable;
  v58 = MEMORY[0x1E697E5D8];
  v25 = swift_getWitnessTable();
  sub_1C593EDC0(v20, v16, v25);
  v26 = *(v17 + 8);
  v26(v20, v16);
  v51 = v37;
  v52 = v36;
  v53 = v30[0];
  v54 = v39;
  v55 = v38;
  v56 = v23;
  type metadata accessor for BubbleTip();
  v27 = v32;
  sub_1C59EBE68(v32);
  (*(v17 + 16))(v20, v22, v16);
  v51 = v20;
  v28 = v33;
  sub_1C59400B0(v27, v33, &qword_1EC192BC0);
  v52 = v28;
  v50[0] = v16;
  v50[1] = v34;
  v48 = v25;
  v49 = sub_1C5924F54(&qword_1EC192E58, &qword_1EC192BC0);
  sub_1C594226C(&v51, 2uLL, v50);
  sub_1C5924EF4(v27, &qword_1EC192BC0);
  v26(v22, v16);
  sub_1C5924EF4(v28, &qword_1EC192BC0);
  return (v26)(v20, v16);
}

uint64_t sub_1C59EF334@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v55 = a7;
  v54 = a6;
  v52 = a5;
  v53 = a2;
  v71 = a1;
  v69 = a8;
  v61 = sub_1C5BCB804();
  v58 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v56 = &v50 - v11;
  sub_1C5BC97C4();
  v65 = sub_1C5BC8AB4();
  v64 = sub_1C5BCB804();
  v67 = *(v64 - 8);
  v12 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v70 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v66 = &v50 - v16;
  v51 = a3;
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BB8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v17 = sub_1C5BCA714();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  sub_1C5BC8FB4();
  v24 = v53;
  v72 = v53;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v25 = v54;
  v26 = v55;
  v76 = v54;
  v77 = v55;
  v78 = v71;
  sub_1C5BCA704();
  WitnessTable = swift_getWitnessTable();
  v63 = v23;
  v57 = WitnessTable;
  sub_1C593EDC0(v21, v17, WitnessTable);
  v62 = v18;
  v28 = v18;
  v29 = v56;
  v30 = *(v28 + 8);
  v60 = v28 + 8;
  v59 = v30;
  v30(v21, v17);
  v82 = v24;
  v83 = v51;
  v84 = a4;
  v85 = v52;
  v31 = v26;
  v32 = v58;
  v33 = v31;
  v86 = v25;
  v87 = v31;
  v34 = type metadata accessor for BubbleTip();
  v35 = v61;
  (*(v32 + 16))(v29, v71 + *(v34 + 80), v61);
  v36 = *(a4 - 8);
  if ((*(v36 + 48))(v29, 1, a4) == 1)
  {
    a4 = v35;
    v37 = 1;
  }

  else
  {
    sub_1C5BCA184();
    v37 = 0;
    v32 = v36;
  }

  (*(v32 + 8))(v29, a4);
  v38 = v70;
  (*(*(v65 - 8) + 56))(v70, v37, 1, v65);
  v39 = sub_1C59F2388(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v81[3] = v33;
  v81[4] = v39;
  v81[2] = swift_getWitnessTable();
  v40 = v64;
  v41 = swift_getWitnessTable();
  v42 = v66;
  sub_1C593EDC0(v38, v40, v41);
  v43 = v67;
  v44 = *(v67 + 8);
  v44(v38, v40);
  v45 = v63;
  (*(v62 + 16))(v21, v63, v17);
  v82 = v21;
  v46 = v68;
  (*(v43 + 16))(v68, v42, v40);
  v83 = v46;
  v81[0] = v17;
  v81[1] = v40;
  v79 = v57;
  v80 = v41;
  sub_1C594226C(&v82, 2uLL, v81);
  v44(v42, v40);
  v47 = v45;
  v48 = v59;
  v59(v47, v17);
  v44(v46, v40);
  return v48(v21, v17);
}

uint64_t sub_1C59EFA2C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a5;
  v33 = a7;
  v31[1] = a1;
  v38 = a8;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BC8);
  MEMORY[0x1EEE9AC00](v36);
  v13 = v31 - v12;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BB8);
  v14 = MEMORY[0x1EEE9AC00](v37);
  v35 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v34 = v31 - v16;
  sub_1C5BC97C4();
  v17 = sub_1C5BC8AB4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v31 - v22;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = v32;
  v46 = a6;
  v47 = v33;
  v24 = type metadata accessor for BubbleTip();
  sub_1C5BCA184();
  v25 = sub_1C59F2388(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
  v41[2] = a6;
  v41[3] = v25;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v21, v17, WitnessTable);
  v27 = *(v18 + 8);
  v27(v21, v17);
  sub_1C59EB7AC(v24, v13);
  sub_1C59F4318();
  v28 = v34;
  sub_1C5BCA184();
  sub_1C5924EF4(v13, &qword_1EC192BC8);
  (*(v18 + 16))(v21, v23, v17);
  v42 = v21;
  v29 = v35;
  sub_1C59400B0(v28, v35, &qword_1EC192BB8);
  v43 = v29;
  v41[0] = v17;
  v41[1] = v37;
  v39 = WitnessTable;
  v40 = sub_1C59F4634();
  sub_1C594226C(&v42, 2uLL, v41);
  sub_1C5924EF4(v28, &qword_1EC192BB8);
  v27(v23, v17);
  sub_1C5924EF4(v29, &qword_1EC192BB8);
  return (v27)(v21, v17);
}

uint64_t sub_1C59EFE28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v17 = a3;
  v7 = sub_1C5BC8F34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v16 - v12;
  sub_1C59400B0(v6, &v16 - v12, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C59E7D34(v13, v17, a2);
  }

  sub_1C5BCB4E4();
  v15 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1C59F002C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v17 - v13;
  sub_1C59400B0(v6, &v17 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C59F47E4(v14, a3, a2);
  }

  sub_1C5BCB4E4();
  v16 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C59F024C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59400B0(v6, v14, a1);
  if (v15 == 1)
  {
    return a2(v14, a3);
  }

  sub_1C5BCB4E4();
  v13 = sub_1C5BC9844();
  sub_1C5BC7C54();

  sub_1C5BC8F24();
  swift_getAtKeyPath();

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C59F0438@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_1C5BCA9E4();
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC8B54();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  sub_1C5941A58(&qword_1EC192B88, MEMORY[0x1E697C250], &v23 - v12);
  sub_1C5BC8B44();
  sub_1C59F2388(&qword_1EC192E38, MEMORY[0x1E697C250]);
  v14 = sub_1C5BCADB4();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v14)
  {
    goto LABEL_4;
  }

  type metadata accessor for BubbleBackground(0);
  sub_1C59EFE28(&qword_1EC192B80, &qword_1EC1914B8, v4);
  v16 = v24;
  if ((*(v24 + 48))(v4, 1, v5) == 1)
  {
    sub_1C5924EF4(v4, &qword_1EC1914B8);
LABEL_4:
    result = sub_1C5BCA484();
    v18 = MEMORY[0x1E6981568];
    a1[3] = MEMORY[0x1E69815C0];
    a1[4] = v18;
    *a1 = result;
    return result;
  }

  v19 = *(v16 + 32);
  v20 = v23;
  v19(v23, v4, v5);
  v21 = MEMORY[0x1E6981AD0];
  a1[3] = v5;
  a1[4] = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return (v19)(boxed_opaque_existential_0, v20, v5);
}

uint64_t sub_1C59F077C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C59F0438(v13);
  v4 = __swift_project_boxed_opaque_existential_0(v13, v13[3]);
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 16))(&v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C5BC85E4();
  v8 = sub_1C5BC9894();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E28);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192E30) + 36);
  *v10 = v7;
  *(v10 + 8) = v8;
  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t BubbleImage.body.getter@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BE0);
  MEMORY[0x1EEE9AC00](v20);
  v3 = &v18 - v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BE8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v18 - v4;
  v6 = sub_1C5BCA5B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  if (*(v1 + 24))
  {

    v13 = sub_1C5BCA5C4();
    LOBYTE(v23) = 1;
    BubbleTipAccessoryModifier.body(content:)(v13, v12);
  }

  else
  {
    v14 = *(v1 + 16);

    v18 = sub_1C5BCA5F4();
    (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
    v15 = sub_1C5BCA5E4();
    (*(v7 + 8))(v9, v6);
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    *&v22[38] = v25;
    *&v22[22] = v24;
    *&v22[6] = v23;
    v16 = *&v22[16];
    *(v5 + 18) = *v22;
    *v5 = v15;
    *(v5 + 1) = 0;
    *(v5 + 8) = 1;
    *(v5 + 34) = v16;
    *(v5 + 50) = *&v22[32];
    *(v5 + 8) = *&v22[46];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C08);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C20);
    sub_1C59F2550(&qword_1EC192C00, &qword_1EC192C08, &unk_1C5BD6C20, sub_1C59F24CC);
    sub_1C59F2550(&qword_1EC192C18, &qword_1EC192C20, &unk_1C5BD6C30, sub_1C59F25D4);
    sub_1C5BC92C4();
  }

  sub_1C59400B0(v12, v3, &qword_1EC192BF0);
  swift_storeEnumTagMultiPayload();
  sub_1C59F23E8();
  sub_1C5BC92C4();
  return sub_1C5924EF4(v12, &qword_1EC192BF0);
}

uint64_t BubbleAction.init(title:handler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t BubbleAction.body.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C88);
  sub_1C59F288C();
  return sub_1C5BCA6E4();
}

__n128 sub_1C59F0DE0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v13 = a1;
  *(&v13 + 1) = a2;
  sub_1C594A23C();

  v4 = sub_1C5BC9CA4();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (qword_1EC190590 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  KeyPath = swift_getKeyPath();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 96) = v17;
  *(a3 + 112) = v18;
  *(a3 + 128) = v19;
  *(a3 + 32) = v13;
  *(a3 + 48) = v14;
  result = v16;
  *(a3 + 64) = v15;
  *(a3 + 80) = v16;
  *(a3 + 144) = KeyPath;
  *(a3 + 152) = 0x3FE4CCCCCCCCCCCDLL;
  return result;
}

uint64_t sub_1C59F0F90()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C88);
  sub_1C59F288C();
  return sub_1C5BCA6E4();
}

__n128 BubbleTipTitleViewModifier.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192CA8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - v9;
  v11 = sub_1C5BC9A64();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2 == 1)
  {
    if (qword_1EC190588 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC192B28;

    v16 = 0;
  }

  else
  {
    (*(v12 + 104))(v14, *MEMORY[0x1E6980EF0], v11);
    v17 = sub_1C5BC9954();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v15 = sub_1C5BC99B4();
    sub_1C5924EF4(v10, &qword_1EC190F90);
    (*(v12 + 8))(v14, v11);
    v16 = sub_1C5BCA524();
  }

  KeyPath = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192CB0);
  (*(*(v19 - 8) + 16))(v7, a1, v19);
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192CB8) + 36)];
  *v20 = KeyPath;
  v20[1] = v15;
  v21 = swift_getKeyPath();
  v22 = &v7[*(v5 + 36)];
  *v22 = v21;
  v22[1] = v16;

  sub_1C5BCAA64();
  sub_1C5BC8BD4();

  sub_1C59E7D34(v7, a2, &qword_1EC192CA8);
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192CC0) + 36);
  v24 = v27[5];
  *(v23 + 64) = v27[4];
  *(v23 + 80) = v24;
  *(v23 + 96) = v27[6];
  v25 = v27[1];
  *v23 = v27[0];
  *(v23 + 16) = v25;
  result = v27[3];
  *(v23 + 32) = v27[2];
  *(v23 + 48) = result;
  return result;
}

__n128 BubbleTipSubtitleViewModifier.body(content:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v27 - v5;
  v7 = sub_1C5BC9A64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192CC8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v27 - v13;
  (*(v8 + 104))(v10, *MEMORY[0x1E6980EF0], v7);
  v15 = sub_1C5BC9954();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = sub_1C5BC99B4();
  sub_1C5924EF4(v6, &qword_1EC190F90);
  (*(v8 + 8))(v10, v7);
  KeyPath = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192CD0);
  (*(*(v18 - 8) + 16))(v14, a1, v18);
  v19 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192CD8) + 36)];
  *v19 = KeyPath;
  v19[1] = v16;
  v20 = sub_1C5BCA524();
  v21 = swift_getKeyPath();
  v22 = &v14[*(v12 + 44)];
  *v22 = v21;
  v22[1] = v20;
  sub_1C5BCAA64();
  sub_1C5BC8BD4();
  sub_1C59E7D34(v14, a2, &qword_1EC192CC8);
  v23 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192CE0) + 36);
  v24 = v27[5];
  *(v23 + 64) = v27[4];
  *(v23 + 80) = v24;
  *(v23 + 96) = v27[6];
  v25 = v27[1];
  *v23 = v27[0];
  *(v23 + 16) = v25;
  result = v27[3];
  *(v23 + 32) = v27[2];
  *(v23 + 48) = result;
  return result;
}

uint64_t View.bubbleTipTitle(hasSubtitle:)(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BubbleTipTitleViewModifier(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8[*(v6 + 20)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914C8);
  swift_storeEnumTagMultiPayload();
  *v8 = a1;
  MEMORY[0x1C694E550](v8, a2, v6, a3);
  return sub_1C59F2A78(v8, type metadata accessor for BubbleTipTitleViewModifier);
}

uint64_t BubbleTipAccessoryModifier.Preset.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t BubbleTipAccessoryModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44[1] = a1;
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC190F90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v44 - v4;
  v6 = sub_1C5BC9A64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C20);
  MEMORY[0x1EEE9AC00](v46);
  v11 = (v44 - v10);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192BE8);
  MEMORY[0x1EEE9AC00](v45);
  v13 = v44 - v12;
  v14 = sub_1C5BCA5B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v2)
  {
    (*(v15 + 104))(v17, *MEMORY[0x1E6981630], v14);
    v18 = sub_1C5BCA5E4();
    (*(v15 + 8))(v17, v14);
    (*(v7 + 104))(v9, *MEMORY[0x1E6980F10], v6);
    v19 = sub_1C5BC9954();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    sub_1C5BC9994();
    v20 = sub_1C5BC99B4();
    sub_1C5924EF4(v5, &qword_1EC190F90);
    (*(v7 + 8))(v9, v6);
    KeyPath = swift_getKeyPath();
    v22 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C60) + 36));
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C78) + 28);
    v24 = *MEMORY[0x1E69816E0];
    v25 = sub_1C5BCA5D4();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    *v11 = v18;
    v11[1] = KeyPath;
    v11[2] = v20;
    v26 = sub_1C5BCA524();
    v27 = swift_getKeyPath();
    v28 = (v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C50) + 36));
    *v28 = v27;
    v28[1] = v26;
    v29 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C40) + 36);
    *v29 = 0;
    *(v29 + 4) = 1;
    LOBYTE(v26) = sub_1C5BC9884();
    sub_1C5BC8174();
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C30) + 36);
    *v38 = v26;
    *(v38 + 1) = v31;
    *(v38 + 2) = v33;
    *(v38 + 3) = v35;
    *(v38 + 4) = v37;
    v38[40] = 0;
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    v39 = (v11 + *(v46 + 36));
    v40 = v50;
    *v39 = v49;
    v39[1] = v40;
    v39[2] = v51;
    sub_1C59400B0(v11, v13, &qword_1EC192C20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C08);
    sub_1C59F2550(&qword_1EC192C00, &qword_1EC192C08, &unk_1C5BD6C20, sub_1C59F24CC);
    sub_1C59F2550(&qword_1EC192C18, &qword_1EC192C20, &unk_1C5BD6C30, sub_1C59F25D4);
    sub_1C5BC92C4();
    return sub_1C5924EF4(v11, &qword_1EC192C20);
  }

  else
  {
    (*(v15 + 104))(v17, *MEMORY[0x1E6981630], v14);
    v42 = sub_1C5BCA5E4();
    (*(v15 + 8))(v17, v14);
    sub_1C5BCAA54();
    sub_1C5BC85D4();
    *&v48[22] = v50;
    *&v48[38] = v51;
    *&v48[6] = v49;
    v43 = *&v48[16];
    *(v13 + 18) = *v48;
    *v13 = v42;
    *(v13 + 1) = 0;
    *(v13 + 8) = 1;
    *(v13 + 34) = v43;
    *(v13 + 50) = *&v48[32];
    *(v13 + 8) = *&v48[46];
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192C08);
    sub_1C59F2550(&qword_1EC192C00, &qword_1EC192C08, &unk_1C5BD6C20, sub_1C59F24CC);
    sub_1C59F2550(&qword_1EC192C18, &qword_1EC192C20, &unk_1C5BD6C30, sub_1C59F25D4);
    return sub_1C5BC92C4();
  }
}

uint64_t sub_1C59F2034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8);
  __swift_allocate_value_buffer(v0, qword_1EC192B50);
  v1 = __swift_project_value_buffer(v0, qword_1EC192B50);
  sub_1C5BCA9B4();
  v2 = sub_1C5BCA9E4();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_1C59F20DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1905A0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1914B8);
  v3 = __swift_project_value_buffer(v2, qword_1EC192B50);
  return sub_1C59400B0(v3, a1, &qword_1EC1914B8);
}

uint64_t sub_1C59F2170(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C59F21B4()
{
  result = qword_1EC192B98;
  if (!qword_1EC192B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192B68);
    sub_1C59F2388(&qword_1EC192BA0, type metadata accessor for BubbleTipTitleViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192B98);
  }

  return result;
}

unint64_t sub_1C59F2270()
{
  result = qword_1EC192BA8;
  if (!qword_1EC192BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192B90);
    sub_1C59F22FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192BA8);
  }

  return result;
}

unint64_t sub_1C59F22FC()
{
  result = qword_1EC192BB0;
  if (!qword_1EC192BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192BB0);
  }

  return result;
}

uint64_t sub_1C59F2388(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C59F23E8()
{
  result = qword_1EC192BF8;
  if (!qword_1EC192BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BF0);
    sub_1C59F2550(&qword_1EC192C00, &qword_1EC192C08, &unk_1C5BD6C20, sub_1C59F24CC);
    sub_1C59F2550(&qword_1EC192C18, &qword_1EC192C20, &unk_1C5BD6C30, sub_1C59F25D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192BF8);
  }

  return result;
}

unint64_t sub_1C59F24CC()
{
  result = qword_1EDA46510;
  if (!qword_1EDA46510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46510);
  }

  return result;
}

uint64_t sub_1C59F2550(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_1C59F25D4()
{
  result = qword_1EC192C28;
  if (!qword_1EC192C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C30);
    sub_1C59F2660();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192C28);
  }

  return result;
}

unint64_t sub_1C59F2660()
{
  result = qword_1EC192C38;
  if (!qword_1EC192C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C40);
    sub_1C59F2718(&qword_1EC192C48, &qword_1EC192C50, &unk_1C5BD6C48, sub_1C59F27C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192C38);
  }

  return result;
}

uint64_t sub_1C59F2718(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C59F27C8()
{
  result = qword_1EC192C58;
  if (!qword_1EC192C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C60);
    sub_1C5958260();
    sub_1C5924F54(&qword_1EDA4E198, &qword_1EC192C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192C58);
  }

  return result;
}

unint64_t sub_1C59F288C()
{
  result = qword_1EC192C90;
  if (!qword_1EC192C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C88);
    sub_1C59F2944();
    sub_1C5924F54(&qword_1EDA460C8, &qword_1EC192BD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192C90);
  }

  return result;
}

unint64_t sub_1C59F2944()
{
  result = qword_1EC192C98;
  if (!qword_1EC192C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192C98);
  }

  return result;
}

uint64_t sub_1C59F29C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BC8E94();
  *a1 = result;
  return result;
}

uint64_t sub_1C59F2A20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C5BC8D54();
  *a1 = result;
  return result;
}

uint64_t sub_1C59F2A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C59F2B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1C59F2CB8()
{
  result = qword_1EC192CE8[0];
  if (!qword_1EC192CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC192CE8);
  }

  return result;
}

void sub_1C59F2D14()
{
  sub_1C59F3B30(319, &qword_1EC192D70, MEMORY[0x1E697BF90]);
  if (v0 <= 0x3F)
  {
    sub_1C5BCB804();
    if (v1 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v2 <= 0x3F)
      {
        sub_1C5BCB804();
        if (v3 <= 0x3F)
        {
          sub_1C59F3A7C();
          if (v4 <= 0x3F)
          {
            sub_1C59F3ACC(319, &qword_1EC192F90, &qword_1EC192D80, &unk_1C5BD6F68, MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1C59F3ACC(319, &qword_1EC192D88, &qword_1EC1914B8, &unk_1C5BD6F70, MEMORY[0x1E697DCC0]);
              if (v6 <= 0x3F)
              {
                sub_1C59F3B30(319, qword_1EC191428, MEMORY[0x1E697F6A0]);
                if (v7 <= 0x3F)
                {
                  sub_1C59F3B30(319, &qword_1EC192D90, MEMORY[0x1E697C250]);
                  if (v8 <= 0x3F)
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
}

uint64_t sub_1C59F2F00(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(*(sub_1C5BC8694() - 8) + 64);
  if (v4 <= 8)
  {
    v4 = 8;
  }

  v54 = v4;
  v47 = a3[2];
  v5 = *(v47 - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v57 = v7;
  if (v6)
  {
    v8 = v6 - 1;
  }

  else
  {
    v8 = 0;
  }

  v59 = *(a3[3] - 8);
  v9 = *(v7 + 84);
  v48 = v9;
  v52 = v8;
  if (v8 > v9)
  {
    v9 = v8;
  }

  v45 = a3[4];
  v10 = *(v45 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v46 = v12;
  if (v9 <= v12)
  {
    v9 = v12;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  v53 = v9;
  v51 = *(sub_1C5BCA9E4() - 8);
  v13 = *(v51 + 84);
  v56 = *(v51 + 64);
  v49 = *(sub_1C5BC9114() - 8);
  v14 = *(v49 + 64);
  if (v14 <= 8)
  {
    v14 = 8;
  }

  v50 = v14;
  v15 = *(sub_1C5BC8B54() - 8);
  if (*(v15 + 64) <= 8uLL)
  {
    v16 = 8;
  }

  else
  {
    v16 = *(v15 + 64);
  }

  if (v6)
  {
    v17 = *(v5 + 64);
  }

  else
  {
    v17 = *(v5 + 64) + 1;
  }

  if (v11)
  {
    v18 = *(v10 + 64);
  }

  else
  {
    v18 = *(v10 + 64) + 1;
  }

  v19 = *(v5 + 80);
  v20 = *(v59 + 80);
  v21 = v56;
  if (!v13)
  {
    v21 = v56 + 1;
  }

  if (v21 <= 8)
  {
    v22 = 8;
  }

  else
  {
    v22 = v21;
  }

  if (!a2)
  {
    return 0;
  }

  v23 = v54 + v19 + 1;
  v24 = v17 + 7;
  v25 = v20 + 8;
  v26 = *(v10 + 80);
  v27 = *(v57 + 64) + v26;
  v28 = v18 + 7;
  if (a2 <= v53)
  {
    goto LABEL_51;
  }

  v29 = *(v51 + 80) & 0xF8 | 7;
  v30 = (v29 + ((((v28 + ((v27 + ((v25 + ((v24 + (v23 & ~v19)) & 0xFFFFFFFFFFFFFFF8)) & ~v20)) & ~v26)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v29;
  v31 = *(v49 + 80) & 0xF8 | 7;
  v32 = *(v15 + 80) & 0xF8 | 7;
  v33 = v16 + ((v50 + v32 + ((v22 + v31 + v30 + 1) & ~v31) + 1) & ~v32) + 1;
  v34 = 8 * v33;
  if (v33 > 3)
  {
    goto LABEL_33;
  }

  v36 = ((a2 - v53 + ~(-1 << v34)) >> v34) + 1;
  if (HIWORD(v36))
  {
    v35 = *(a1 + v33);
    if (v35)
    {
      goto LABEL_40;
    }
  }

  else
  {
    if (v36 <= 0xFF)
    {
      if (v36 < 2)
      {
        goto LABEL_51;
      }

LABEL_33:
      v35 = *(a1 + v33);
      if (!*(a1 + v33))
      {
        goto LABEL_51;
      }

LABEL_40:
      v37 = (v35 - 1) << v34;
      if (v33 > 3)
      {
        v37 = 0;
      }

      if (v33)
      {
        if (v33 > 3)
        {
          LODWORD(v33) = 4;
        }

        if (v33 > 2)
        {
          if (v33 == 3)
          {
            LODWORD(v33) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v33) = *a1;
          }
        }

        else if (v33 == 1)
        {
          LODWORD(v33) = *a1;
        }

        else
        {
          LODWORD(v33) = *a1;
        }
      }

      return v53 + (v33 | v37) + 1;
    }

    v35 = *(a1 + v33);
    if (*(a1 + v33))
    {
      goto LABEL_40;
    }
  }

LABEL_51:
  v38 = (a1 + v23) & ~v19;
  if (v52 == v53)
  {
    if (v6 < 2)
    {
      return 0;
    }

    v42 = (*(v5 + 48))(v38, v6, v47);
    goto LABEL_59;
  }

  v40 = (v25 + ((v24 + v38) & 0xFFFFFFFFFFFFFFF8)) & ~v20;
  if (v48 == v53)
  {
    v41 = *(v59 + 48);

    return v41(v40);
  }

  else
  {
    v43 = (v27 + v40) & ~v26;
    if (v46 == v53)
    {
      if (v11 < 2)
      {
        return 0;
      }

      v42 = (*(v10 + 48))(v43, v11, v45);
LABEL_59:
      if (v42 >= 2)
      {
        return v42 - 1;
      }

      else
      {
        return 0;
      }
    }

    v44 = *((v28 + v43) & 0xFFFFFFFFFFFFFFF8);
    if (v44 >= 0xFFFFFFFF)
    {
      LODWORD(v44) = -1;
    }

    return (v44 + 1);
  }
}

void sub_1C59F3454(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(*(sub_1C5BC8694() - 8) + 64);
  if (v5 <= 8)
  {
    v6 = 8;
  }

  else
  {
    v6 = v5;
  }

  v7 = *(a4[2] - 8);
  v55 = v7;
  v8 = *(v7 + 84);
  v9 = *(a4[3] - 8);
  v59 = v9;
  v60 = v6;
  if (v8)
  {
    v10 = v8 - 1;
  }

  else
  {
    v10 = 0;
  }

  v54 = *(a4[3] - 8);
  v11 = *(v9 + 84);
  v52 = v11;
  v53 = v10;
  if (v10 > v11)
  {
    v11 = v10;
  }

  v50 = a4[4];
  v12 = *(v50 - 8);
  v13 = *(v12 + 84);
  v14 = v13 - 1;
  if (!v13)
  {
    v14 = 0;
  }

  v51 = v14;
  if (v11 <= v14)
  {
    v11 = v14;
  }

  if (v11 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  v61 = v11;
  v15 = *(sub_1C5BCA9E4() - 8);
  v16 = *(v15 + 84);
  v58 = *(v15 + 64);
  v56 = *(sub_1C5BC9114() - 8);
  v17 = *(v56 + 64);
  if (v17 <= 8)
  {
    v17 = 8;
  }

  v57 = v17;
  v18 = sub_1C5BC8B54();
  v19 = v8;
  v20 = 0;
  v21 = *(v18 - 8);
  if (*(v21 + 64) <= 8uLL)
  {
    v22 = 8;
  }

  else
  {
    v22 = *(v21 + 64);
  }

  v23 = *(v7 + 64);
  if (!v19)
  {
    ++v23;
  }

  v24 = *(v12 + 64);
  if (!v13)
  {
    ++v24;
  }

  v25 = *(v7 + 80);
  v26 = v60 + v25 + 1;
  v27 = v23 + 7;
  v28 = *(v54 + 80);
  v29 = *(v12 + 80);
  v30 = *(v59 + 64) + v29;
  v31 = v24 + 7;
  v32 = *(v15 + 80) & 0xF8 | 7;
  v33 = (v32 + ((((v31 + ((v30 + ((v28 + 8 + ((v27 + (v26 & ~v25)) & 0xFFFFFFFFFFFFFFF8)) & ~v28)) & ~v29)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v32;
  if (v16)
  {
    v34 = v58;
  }

  else
  {
    v34 = v58 + 1;
  }

  if (v34 <= 8)
  {
    v34 = 8;
  }

  v35 = *(v56 + 80) & 0xF8 | 7;
  v36 = *(v21 + 80) & 0xF8 | 7;
  v37 = v22 + ((v57 + v36 + ((v34 + v35 + v33 + 1) & ~v35) + 1) & ~v36) + 1;
  if (a3 > v61)
  {
    if (v37 <= 3)
    {
      v38 = ((a3 - v61 + ~(-1 << (8 * v37))) >> (8 * v37)) + 1;
      if (HIWORD(v38))
      {
        v20 = 4;
      }

      else
      {
        if (v38 < 0x100)
        {
          v39 = 1;
        }

        else
        {
          v39 = 2;
        }

        if (v38 >= 2)
        {
          v20 = v39;
        }

        else
        {
          v20 = 0;
        }
      }
    }

    else
    {
      v20 = 1;
    }
  }

  if (v61 < a2)
  {
    v40 = ~v61 + a2;
    if (v37 < 4)
    {
      v41 = (v40 >> (8 * v37)) + 1;
      if (v37)
      {
        v42 = v40 & ~(-1 << (8 * v37));
        bzero(a1, v37);
        if (v37 != 3)
        {
          if (v37 == 2)
          {
            *a1 = v42;
            if (v20 > 1)
            {
LABEL_75:
              if (v20 == 2)
              {
                *&a1[v37] = v41;
              }

              else
              {
                *&a1[v37] = v41;
              }

              return;
            }
          }

          else
          {
            *a1 = v40;
            if (v20 > 1)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_72;
        }

        *a1 = v42;
        a1[2] = BYTE2(v42);
      }

      if (v20 > 1)
      {
        goto LABEL_75;
      }
    }

    else
    {
      bzero(a1, v37);
      *a1 = v40;
      v41 = 1;
      if (v20 > 1)
      {
        goto LABEL_75;
      }
    }

LABEL_72:
    if (v20)
    {
      a1[v37] = v41;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v37] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_56;
    }

    *&a1[v37] = 0;
LABEL_55:
    if (!a2)
    {
      return;
    }

    goto LABEL_56;
  }

  if (!v20)
  {
    goto LABEL_55;
  }

  a1[v37] = 0;
  if (!a2)
  {
    return;
  }

LABEL_56:
  v43 = &a1[v26] & ~v25;
  if (v53 == v61)
  {
    v44 = *(v55 + 56);

    v44(v43, a2 + 1);
  }

  else
  {
    v45 = (v28 + 8 + ((v27 + v43) & 0xFFFFFFFFFFFFFFF8)) & ~v28;
    if (v52 == v61)
    {
      v46 = *(v54 + 56);

      v46(v45);
    }

    else
    {
      v47 = (v30 + v45) & ~v29;
      if (v51 == v61)
      {
        v48 = *(v12 + 56);

        v48(v47, a2 + 1, v13, v50);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v49 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v49 = a2 - 1;
        }

        *((v31 + v47) & 0xFFFFFFFFFFFFFFF8) = v49;
      }
    }
  }
}

void sub_1C59F3A7C()
{
  if (!qword_1EC192D78)
  {
    v0 = sub_1C5BCB144();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC192D78);
    }
  }
}

void sub_1C59F3ACC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C59F3B30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59F3B90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59F3BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_1C59F3C74()
{
  sub_1C59F3B30(319, qword_1EC191428, MEMORY[0x1E697F6A0]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C59F3D3C()
{
  result = qword_1EC192DA8;
  if (!qword_1EC192DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192DB0);
    sub_1C59F23E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192DA8);
  }

  return result;
}

unint64_t sub_1C59F3DC0()
{
  result = qword_1EC192DC8;
  if (!qword_1EC192DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192CC0);
    sub_1C59F3E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192DC8);
  }

  return result;
}

unint64_t sub_1C59F3E4C()
{
  result = qword_1EC192DD0;
  if (!qword_1EC192DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192CA8);
    sub_1C59F3F04();
    sub_1C5924F54(&qword_1EDA46088, &qword_1EC192C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192DD0);
  }

  return result;
}

unint64_t sub_1C59F3F04()
{
  result = qword_1EC192DD8;
  if (!qword_1EC192DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192CB8);
    sub_1C5924F54(&qword_1EC192DE0, &qword_1EC192CB0);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192DD8);
  }

  return result;
}

unint64_t sub_1C59F3FE8()
{
  result = qword_1EC192DE8;
  if (!qword_1EC192DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192CE0);
    sub_1C59F2718(&qword_1EC192DF0, &qword_1EC192CC8, &unk_1C5BD6D00, sub_1C59F40A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192DE8);
  }

  return result;
}

unint64_t sub_1C59F40A0()
{
  result = qword_1EC192DF8;
  if (!qword_1EC192DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192CD8);
    sub_1C5924F54(&qword_1EC192E00, &qword_1EC192CD0);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192DF8);
  }

  return result;
}

void sub_1C59F41AC()
{
  sub_1C59F3B30(319, &qword_1EC192D90, MEMORY[0x1E697C250]);
  if (v0 <= 0x3F)
  {
    sub_1C59F3ACC(319, &qword_1EC192D88, &qword_1EC1914B8, &unk_1C5BD6F70, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1C59F42C4()
{
  result = qword_1EC192E90;
  if (!qword_1EC192E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192E90);
  }

  return result;
}

unint64_t sub_1C59F4318()
{
  result = qword_1EC192EA0;
  if (!qword_1EC192EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BC8);
    sub_1C5924F54(&qword_1EC192EA8, &qword_1EC192EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192EA0);
  }

  return result;
}

uint64_t sub_1C59F43C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(type metadata accessor for BubbleTip() - 8);
  return sub_1C59EBA80(*(v0 + 64), *(v0 + 72), v0 + ((*(v7 + 80) + 80) & ~*(v7 + 80)), v1, v2, v3, v4, v5, v6);
}

unint64_t sub_1C59F447C()
{
  result = qword_1EC192EC0;
  if (!qword_1EC192EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838);
    sub_1C5958260();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838);
    swift_getOpaqueTypeConformance2();
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192EC0);
  }

  return result;
}

unint64_t sub_1C59F4634()
{
  result = qword_1EC192EC8;
  if (!qword_1EC192EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192BB8);
    sub_1C59F4318();
    sub_1C59F2388(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192EC8);
  }

  return result;
}

unint64_t sub_1C59F4700()
{
  result = qword_1EC192ED0;
  if (!qword_1EC192ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192E30);
    sub_1C5924F54(&qword_1EC192ED8, &qword_1EC192E28);
    sub_1C5924F54(&qword_1EC192EE0, &qword_1EC192EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192ED0);
  }

  return result;
}

uint64_t sub_1C59F47E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id Backdrop.SnapshotConfiguration.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t Backdrop.SnapshotConfiguration.init(image:size:scale:offset:traitCollection:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  *(a3 + 32) = a7;
  *(a3 + 40) = a2;
  return result;
}

uint64_t Backdrop.Recorder.deinit()
{
  sub_1C59F4A90(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop8Recorder_configuration);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_1C59F4B0C(*(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop8Recorder____lazy_storage___outputTexture));
  v1 = *(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop8Recorder_selfRef);
  *(v0 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop8Recorder_selfRef) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + OBJC_IVAR____TtCO11MediaCoreUI8Backdrop8Recorder_selfRef);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

uint64_t sub_1C59F4A90(uint64_t a1)
{
  v2 = type metadata accessor for Backdrop.RecordingConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59F4B0C(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Backdrop.Recorder.__deallocating_deinit()
{
  Backdrop.Recorder.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C59F4B84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1C59F4BCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C59F4C50()
{
  sub_1C59F4D54();
  if (v0 <= 0x3F)
  {
    sub_1C59F4DBC();
    if (v1 <= 0x3F)
    {
      sub_1C5BC7A24();
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          sub_1C59F4E0C();
          if (v4 <= 0x3F)
          {
            sub_1C592535C(319, &qword_1EC192FA0);
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

void sub_1C59F4D54()
{
  if (!qword_1EC192F78)
  {
    sub_1C592535C(255, &qword_1EDA4E5E0);
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC192F78);
    }
  }
}

void sub_1C59F4DBC()
{
  if (!qword_1EC192F88)
  {
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC192F88);
    }
  }
}

void sub_1C59F4E0C()
{
  if (!qword_1EC192F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192D80);
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC192F90);
    }
  }
}

uint64_t sub_1C59F4E98()
{
  result = type metadata accessor for Backdrop.RecordingConfiguration(319);
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

uint64_t sub_1C59F4F88(uint64_t a1, char a2, _OWORD *a3)
{
  *(v4 + 120) = a2;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  *(v4 + 40) = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = *a3;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC19A688;
  *(v4 + 72) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C59F5078, v6, 0);
}

uint64_t sub_1C59F5078()
{
  v28 = v0;
  v1 = sub_1C59F55E0();
  v2 = sub_1C59CFBDC(v1);
  *(v0 + 80) = v2;

  if (v2)
  {
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    v25 = *(v0 + 56);
    v26 = *(v0 + 64);
    v5 = *(v0 + 32);
    v23 = *(v0 + 40);
    v24 = *(v0 + 120);
    v6 = *(v0 + 24);
    v7 = [v2 taskIdentifier];
    v8 = sub_1C5BCB214();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v10 = sub_1C59F832C(&qword_1EC1930A8, type metadata accessor for MotionCacheActor);
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v10;
    v11[4] = v9;
    v11[5] = v7;
    v11[6] = v23;

    v12 = sub_1C5AD0FB8(0, 0, v4, &unk_1C5BD7450, v11);
    *(v0 + 88) = v12;
    v13 = swift_task_alloc();
    *(v0 + 96) = v13;
    *(v13 + 16) = v5;
    *(v13 + 24) = v7;
    *(v13 + 32) = v6;
    *(v13 + 40) = v2;
    *(v13 + 48) = v12;
    *(v13 + 56) = v24;
    *(v13 + 64) = v25;
    *(v13 + 72) = v26;
    v14 = swift_task_alloc();
    *(v0 + 104) = v14;
    v14[2] = v7;
    v14[3] = v6;
    v14[4] = v25;
    v14[5] = v26;
    v14[6] = v2;
    v15 = swift_task_alloc();
    *(v0 + 112) = v15;
    *v15 = v0;
    v15[1] = sub_1C59F5424;

    return MEMORY[0x1EEE6DE18](v0 + 16, &unk_1C5BD7460, v13, sub_1C59F8074, v14, v3, v10, &type metadata for MotionCache.FetchResult);
  }

  else
  {
    if (qword_1EC1905A8 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 56);
    v16 = *(v0 + 64);
    v18 = sub_1C5BC7D64();
    __swift_project_value_buffer(v18, qword_1EC192FC0);
    sub_1C5BCBA94();

    v19 = sub_1C59CFA88();
    MEMORY[0x1C694F170](v19);

    v20 = sub_1C5BCB4D4();
    v27[0] = v17;
    v27[1] = v16;
    sub_1C5ACCC10(v20, 0xD00000000000002ELL, 0x80000001C5BF6C90, v27);

    v21 = *(v0 + 8);

    return v21(0);
  }
}

void sub_1C59F5424()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 72);

    MEMORY[0x1EEE6DFA0](sub_1C59F556C, v3, 0);
  }
}

uint64_t sub_1C59F556C()
{
  v1 = v0[10];

  v2 = v0[2];

  v3 = v0[1];

  return v3(v2);
}

id sub_1C59F55E0()
{
  v1 = OBJC_IVAR____TtCO11MediaCoreUI19MotionAssetDownload10Downloader____lazy_storage___downloadSession;
  v2 = *(v0 + OBJC_IVAR____TtCO11MediaCoreUI19MotionAssetDownload10Downloader____lazy_storage___downloadSession);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCO11MediaCoreUI19MotionAssetDownload10Downloader____lazy_storage___downloadSession);
  }

  else
  {
    v4 = objc_opt_self();
    v5 = sub_1C5BCAE44();
    v6 = [v4 backgroundSessionConfigurationWithIdentifier_];

    v7 = [objc_opt_self() sessionWithConfiguration:v6 assetDownloadDelegate:v0 delegateQueue:0];
    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

uint64_t sub_1C59F56CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_1C5BCBB84();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EC19A688;
  v5[10] = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C59F57C4, v7, 0);
}

uint64_t sub_1C59F57C4()
{
  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1C59F5890;

  return sub_1C59D9270(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_1C59F5890()
{
  v2 = *v1;

  v3 = v2[10];
  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = sub_1C59F8434;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = sub_1C59F5A3C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v3, 0);
}

uint64_t sub_1C59F5A3C()
{
  if ((sub_1C5BCB2D4() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v2 = Strong;
      sub_1C59F5AD8(*(v0 + 48));
    }
  }

  v3 = *(v0 + 8);

  return v3();
}

void sub_1C59F5AD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = _s17DownloadContainerVMa();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_1C5B80378(a1, v4);
  swift_endAccess();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1C5924EF4(v4, &qword_1EC1930B0);
    if (qword_1EC1905A8 != -1)
    {
      swift_once();
    }

    v9 = sub_1C5BC7D64();
    __swift_project_value_buffer(v9, qword_1EC192FC0);
    v10 = sub_1C5BC7D44();
    v11 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_1C5922000, v10, v11, "Download %ld timed out, but no container found.", v12, 0xCu);
      MEMORY[0x1C69510F0](v12, -1, -1);
    }
  }

  else
  {
    sub_1C59F8190(v4, v8, _s17DownloadContainerVMa);
    if (qword_1EC1905A8 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    __swift_project_value_buffer(v13, qword_1EC192FC0);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_1C5BCBA94();

    v22 = 0x64616F6C6E776F44;
    v23 = 0xE900000000000020;
    v21 = a1;
    v14 = sub_1C5BCBD64();
    MEMORY[0x1C694F170](v14);

    MEMORY[0x1C694F170](0x6F2064656D697420, 0xEA00000000007475);
    v15 = v22;
    v16 = v23;
    v17 = &v8[*(v5 + 36)];
    v18 = *v17;
    v19 = v17[1];
    v20 = sub_1C5BCB4F4();
    v22 = v18;
    v23 = v19;
    sub_1C5ACCC10(v20, v15, v16, &v22);

    sub_1C5BCB2A4();
    [*&v8[*(v5 + 24)] cancel];
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193050);
    sub_1C5BCB1B4();
    sub_1C59F81F8(v8);
  }
}

uint64_t sub_1C59F5EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 64) = a8;
  *(v8 + 72) = v12;
  *(v8 + 104) = a7;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC19A688;
  *(v8 + 80) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C59F5F58, v9, 0);
}

uint64_t sub_1C59F5F58()
{
  v1 = *(v0 + 72);
  v13 = *(v0 + 80);
  v2 = *(v0 + 104);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 24);
  v5 = *(v0 + 32);
  v7 = sub_1C59F832C(&qword_1EC1930A8, type metadata accessor for MotionCacheActor);
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = *(v0 + 40);
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v9;
  *(v8 + 48) = v4;
  *(v8 + 56) = v2;
  *(v8 + 64) = v3;
  *(v8 + 72) = v1;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = sub_1C59F60C4;
  v11 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v11, v13, v7, 0xD000000000000037, 0x80000001C5BF6CE0, sub_1C59F8084, v8, &type metadata for MotionCache.FetchResult);
}

uint64_t sub_1C59F60C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_1C59F61D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, unint64_t a9)
{
  v41[0] = a6;
  v41[1] = a2;
  v42 = a3;
  v44 = a9;
  v45 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193050);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v41 - v18;
  v20 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930B0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = v41 - v24;
  v43 = a4;
  sub_1C59F80BC(a4, v22);
  (*(v17 + 16))(v19, a1, v16);
  if (a7)
  {
    sub_1C5BC7AA4();
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = sub_1C5BC7AC4();
  (*(*(v27 - 8) + 56))(v15, v26, 1, v27);
  sub_1C59F8190(v22, v25, type metadata accessor for MotionAssetDownload.AssetKey);
  v28 = _s17DownloadContainerVMa();
  (*(v17 + 32))(&v25[v28[5]], v19, v16);
  *&v25[v28[6]] = a5;
  *&v25[v28[7]] = v41[0];
  sub_1C59F8120(v15, &v25[v28[8]]);
  v29 = &v25[v28[9]];
  v31 = v44;
  v30 = v45;
  *v29 = v45;
  *(v29 + 1) = v31;
  (*(*(v28 - 1) + 56))(v25, 0, 1, v28);
  swift_beginAccess();

  v32 = a5;

  v33 = v42;
  sub_1C5B70064(v25, v42);
  swift_endAccess();
  if (qword_1EC1905A8 != -1)
  {
    swift_once();
  }

  v34 = sub_1C5BC7D64();
  __swift_project_value_buffer(v34, qword_1EC192FC0);
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1C5BCBA94();

  v47 = 0xD000000000000012;
  v48 = 0x80000001C5BF6D20;
  v46 = v33;
  v35 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v35);

  MEMORY[0x1C694F170](0x79656B20726F6620, 0xEA0000000000203ALL);
  v36 = sub_1C59CFA88();
  MEMORY[0x1C694F170](v36);

  v37 = v47;
  v38 = v48;
  v39 = sub_1C5BCB4F4();
  v47 = v30;
  v48 = v31;
  sub_1C5ACCC10(v39, v37, v38, &v47);

  return [v32 resume];
}

id sub_1C59F664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_1EC1905A8 != -1)
  {
    swift_once();
  }

  v8 = sub_1C5BC7D64();
  __swift_project_value_buffer(v8, qword_1EC192FC0);
  sub_1C5BCBA94();

  v9 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v9);

  MEMORY[0x1C694F170](0x79656B20726F6620, 0xEA0000000000203ALL);
  v10 = sub_1C59CFA88();
  MEMORY[0x1C694F170](v10);

  v11 = sub_1C5BCB4F4();
  v13[0] = a3;
  v13[1] = a4;
  sub_1C5ACCC10(v11, 0xD000000000000014, 0x80000001C5BF6CC0, v13);

  return [a5 cancel];
}

uint64_t sub_1C59F6890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = sub_1C5BC7B44();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v6[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930B8);
  v6[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930C0);
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930C8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  v6[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
  v6[29] = swift_task_alloc();
  v8 = sub_1C5BC7AC4();
  v6[30] = v8;
  v6[31] = *(v8 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930B0);
  v6[34] = swift_task_alloc();
  v9 = _s17DownloadContainerVMa();
  v6[35] = v9;
  v6[36] = *(v9 - 8);
  v6[37] = swift_task_alloc();
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C59F6BB8, v10, 0);
}

uint64_t sub_1C59F6BB8()
{
  v117 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  v3 = *(v0 + 272);
  v4 = [*(v0 + 128) taskIdentifier];
  swift_beginAccess();
  sub_1C5B80378(v4, v3);
  swift_endAccess();
  if ((*(v1 + 48))(v3, 1, v2) != 1)
  {
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);
    v20 = *(v0 + 240);
    v21 = *(v0 + 248);
    v22 = *(v0 + 232);
    sub_1C59F8190(*(v0 + 272), v18, _s17DownloadContainerVMa);
    sub_1C59400B0(v18 + *(v19 + 32), v22, &unk_1EC193058);
    if ((*(v21 + 48))(v22, 1, v20) == 1)
    {
      sub_1C5924EF4(*(v0 + 232), &unk_1EC193058);
    }

    else
    {
      v23 = *(v0 + 256);
      v24 = *(v0 + 264);
      v25 = *(v0 + 240);
      v26 = *(v0 + 248);
      v27 = *(v0 + 224);
      (*(v26 + 32))(v24, *(v0 + 232), v25);
      sub_1C5BC7AA4();
      sub_1C5BC7A74();
      v29 = v28;
      v30 = *(v26 + 8);
      v30(v23, v25);
      sub_1C5BC7AB4();
      sub_1C5BC7A84();
      v32 = v31;
      v30(v23, v25);
      v33 = sub_1C5BCB214();
      (*(*(v33 - 8) + 56))(v27, 1, 1, v33);
      v34 = swift_allocObject();
      v34[2] = 0;
      v34[3] = 0;
      v34[4] = v29;
      v34[5] = v32;
      sub_1C5A0BB28(0, 0, v27, &unk_1C5BD74A0, v34);

      sub_1C5924EF4(v27, &qword_1EC1930A0);
      v30(v24, v25);
    }

    v35 = *(v0 + 144);
    v36 = *(v0 + 192);
    v113 = v35;
    v114 = v4;
    if (v35)
    {
      *(v0 + 120) = v35;
      v37 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
      v38 = sub_1C5BC7B54();
      v39 = swift_dynamicCast();
      v40 = *(v38 - 8);
      (*(v40 + 56))(v36, v39 ^ 1u, 1, v38);
      if ((*(v40 + 48))(v36, 1, v38) != 1)
      {
        v41 = *(v0 + 192);
        sub_1C59F832C(&unk_1EC1930E0, MEMORY[0x1E6969C20]);
        sub_1C5BC78E4();
        (*(v40 + 8))(v41, v38);
        v42 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v43 = sub_1C5BC7B54();
      (*(*(v43 - 8) + 56))(v36, 1, 1, v43);
    }

    sub_1C5924EF4(*(v0 + 192), &qword_1EC1930C0);
    v42 = 1;
LABEL_16:
    v45 = *(v0 + 208);
    v44 = *(v0 + 216);
    v46 = *(v0 + 176);
    v47 = *(v0 + 184);
    v49 = *(v0 + 152);
    v48 = *(v0 + 160);
    v50 = *(v48 + 56);
    v50(v44, v42, 1, v49);
    sub_1C5BC7B34();
    v50(v45, 0, 1, v49);
    v51 = *(v46 + 48);
    sub_1C59400B0(v44, v47, &qword_1EC1930C8);
    sub_1C59400B0(v45, v47 + v51, &qword_1EC1930C8);
    v52 = *(v48 + 48);
    if (v52(v47, 1, v49) == 1)
    {
      v53 = *(v0 + 216);
      v54 = *(v0 + 152);
      sub_1C5924EF4(*(v0 + 208), &qword_1EC1930C8);
      sub_1C5924EF4(v53, &qword_1EC1930C8);
      if (v52(v47 + v51, 1, v54) == 1)
      {
        sub_1C5924EF4(*(v0 + 184), &qword_1EC1930C8);
        v55 = v114;
LABEL_27:
        if (qword_1EC1905A8 != -1)
        {
          swift_once();
        }

        v82 = *(v0 + 296);
        v83 = *(v0 + 280);
        v84 = sub_1C5BC7D64();
        __swift_project_value_buffer(v84, qword_1EC192FC0);
        sub_1C5BCBA94();

        v115 = 0x64616F6C6E776F44;
        v116 = 0xE900000000000020;
        *(v0 + 112) = v55;
        v85 = sub_1C5BCBD64();
        MEMORY[0x1C694F170](v85);

        MEMORY[0x1C694F170](0xD000000000000014, 0x80000001C5BF6DD0);
        v86 = sub_1C59CFA88();
        MEMORY[0x1C694F170](v86);

        v88 = v115;
        v87 = v116;
        v89 = (v82 + *(v83 + 36));
        v90 = *v89;
        v91 = v89[1];
        v92 = sub_1C5BCB4F4();
        v115 = v90;
        v116 = v91;
        sub_1C5ACCC10(v92, v88, v87, &v115);

        v76 = 0;
LABEL_33:
        v107 = *(v0 + 296);
        v108 = *(v0 + 280);
        sub_1C5BCB2A4();
        [*(v107 + *(v108 + 24)) cancel];
        *(v0 + 88) = v76;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193050);
        sub_1C5BCB1B4();
        sub_1C59F831C(v76);
        sub_1C59F81F8(v107);
        goto LABEL_37;
      }
    }

    else
    {
      v56 = *(v0 + 152);
      sub_1C59400B0(*(v0 + 184), *(v0 + 200), &qword_1EC1930C8);
      v57 = v52(v47 + v51, 1, v56);
      v59 = *(v0 + 208);
      v58 = *(v0 + 216);
      v60 = *(v0 + 200);
      if (v57 != 1)
      {
        v112 = *(v0 + 184);
        v77 = *(v0 + 160);
        v78 = *(v0 + 168);
        v79 = *(v0 + 152);
        (*(v77 + 32))(v78, v47 + v51, v79);
        sub_1C59F832C(&qword_1EC1930D8, MEMORY[0x1E6969BF8]);
        v80 = sub_1C5BCADB4();
        v81 = *(v77 + 8);
        v81(v78, v79);
        sub_1C5924EF4(v59, &qword_1EC1930C8);
        sub_1C5924EF4(v58, &qword_1EC1930C8);
        v81(v60, v79);
        sub_1C5924EF4(v112, &qword_1EC1930C8);
        v55 = v114;
        if (v80)
        {
          goto LABEL_27;
        }

LABEL_22:
        if (v113)
        {
          v63 = *(v0 + 144);
          v64 = v63;
          if (qword_1EC1905A8 != -1)
          {
            swift_once();
          }

          v65 = *(v0 + 296);
          v66 = *(v0 + 280);
          v67 = sub_1C5BC7D64();
          __swift_project_value_buffer(v67, qword_1EC192FC0);
          v115 = 0;
          v116 = 0xE000000000000000;
          sub_1C5BCBA94();
          *(v0 + 56) = 0;
          *(v0 + 64) = 0xE000000000000000;
          MEMORY[0x1C694F170](0x64616F6C6E776F44, 0xE900000000000020);
          *(v0 + 96) = v55;
          v68 = sub_1C5BCBD64();
          MEMORY[0x1C694F170](v68);

          MEMORY[0x1C694F170](0xD00000000000001ELL, 0x80000001C5BF6DB0);
          v69 = sub_1C59CFA88();
          MEMORY[0x1C694F170](v69);

          MEMORY[0x1C694F170](8238, 0xE200000000000000);
          *(v0 + 104) = v63;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
          sub_1C5BCBBA4();
          v71 = *(v0 + 56);
          v70 = *(v0 + 64);
          v72 = (v65 + *(v66 + 36));
          v73 = *v72;
          v74 = v72[1];
          v75 = sub_1C5BCB4D4();
          v115 = v73;
          v116 = v74;
          sub_1C5ACCC10(v75, v71, v70, &v115);

          v76 = 1;
        }

        else
        {
          if (qword_1EC1905A8 != -1)
          {
            swift_once();
          }

          v93 = *(v0 + 296);
          v94 = *(v0 + 280);
          v95 = sub_1C5BC7D64();
          __swift_project_value_buffer(v95, qword_1EC192FC0);
          sub_1C5BCBA94();

          v115 = 0x64616F6C6E776F44;
          v116 = 0xE900000000000020;
          *(v0 + 80) = v55;
          v96 = sub_1C5BCBD64();
          MEMORY[0x1C694F170](v96);

          MEMORY[0x1C694F170](0xD000000000000014, 0x80000001C5BF6D90);
          v97 = sub_1C59CFA88();
          MEMORY[0x1C694F170](v97);

          v99 = v115;
          v98 = v116;
          v100 = (v93 + *(v94 + 36));
          v101 = *v100;
          v102 = v100[1];
          v103 = sub_1C5BCB4F4();
          v115 = v101;
          v116 = v102;
          sub_1C5ACCC10(v103, v99, v98, &v115);

          type metadata accessor for MotionAssetDownload.AssetKey(0);
          v104 = objc_allocWithZone(MEMORY[0x1E6988168]);
          v105 = sub_1C5BC7994();
          v76 = [v104 initWithURL:v105 options:0];

          v106 = v76;
        }

        goto LABEL_33;
      }

      v62 = *(v0 + 152);
      v61 = *(v0 + 160);
      sub_1C5924EF4(*(v0 + 208), &qword_1EC1930C8);
      sub_1C5924EF4(v58, &qword_1EC1930C8);
      (*(v61 + 8))(v60, v62);
    }

    sub_1C5924EF4(*(v0 + 184), &qword_1EC1930B8);
    v55 = v114;
    goto LABEL_22;
  }

  sub_1C5924EF4(*(v0 + 272), &qword_1EC1930B0);
  if (qword_1EC1905A8 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = sub_1C5BC7D64();
  __swift_project_value_buffer(v7, qword_1EC192FC0);
  v8 = v5;
  v9 = v6;
  v10 = sub_1C5BC7D44();
  v11 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 144);
    v13 = *(v0 + 128);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v115 = v15;
    *v14 = 134218242;
    *(v14 + 4) = [v13 taskIdentifier];

    *(v14 + 12) = 2080;
    if (v12)
    {
      *(v0 + 40) = 0;
      *(v0 + 48) = 0xE000000000000000;
      *(v0 + 72) = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0);
      sub_1C5BCBBA4();
      v16 = *(v0 + 40);
      v17 = *(v0 + 48);
    }

    else
    {
      v17 = 0xE400000000000000;
      v16 = 1701736302;
    }

    v109 = sub_1C592ADA8(v16, v17, &v115);

    *(v14 + 14) = v109;
    _os_log_impl(&dword_1C5922000, v10, v11, "Download %ld completed, but no container found. Task may have timed out or be from a previous execution. Error: %s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1C69510F0](v15, -1, -1);
    MEMORY[0x1C69510F0](v14, -1, -1);
  }

  else
  {
  }

LABEL_37:

  v110 = *(v0 + 8);

  return v110();
}

uint64_t _s17DownloadContainerVMa()
{
  result = qword_1EC193068;
  if (!qword_1EC193068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C59F7C10()
{
  type metadata accessor for MotionAssetDownload.AssetKey(319);
  if (v0 <= 0x3F)
  {
    sub_1C59F7D7C(319, &qword_1EC193078, &type metadata for MotionCache.FetchResult, MEMORY[0x1E69E8548]);
    if (v1 <= 0x3F)
    {
      sub_1C59F7D30();
      if (v2 <= 0x3F)
      {
        sub_1C59F7D7C(319, &qword_1EC193088, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E86B8]);
        if (v3 <= 0x3F)
        {
          sub_1C59F7DE4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1C59F7D30()
{
  result = qword_1EC193080;
  if (!qword_1EC193080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC193080);
  }

  return result;
}

void sub_1C59F7D7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void, void))
{
  if (!*a2)
  {
    v5 = a4(0, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C59F7DE4()
{
  if (!qword_1EC193090)
  {
    sub_1C5BC7AC4();
    v0 = sub_1C5BCB804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC193090);
    }
  }
}

uint64_t sub_1C59F7E3C()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC192FC0);
  __swift_project_value_buffer(v0, qword_1EC192FC0);
  return sub_1C5BC7D54();
}

uint64_t sub_1C59F7EBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C59F56CC(a1, v4, v5, v6, v7);
}

uint64_t sub_1C59F7F84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1C592ABD4;

  return sub_1C59F5EA4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C59F80BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59F8120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59F8190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C59F81F8(uint64_t a1)
{
  v2 = _s17DownloadContainerVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59F8254(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C592A748;

  return sub_1C59F6890(a1, v4, v5, v6, v7, v8);
}

void sub_1C59F831C(id a1)
{
  if (a1 >= 3)
  {
  }
}

uint64_t sub_1C59F832C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C59F8374()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C592ABD4;

  return sub_1C5B22798(v2, v3);
}

uint64_t MCUINamespace<A>.rotating(duration:isAnimating:isClockwise:)(char a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931B0);
  swift_allocObject();
  v10 = sub_1C5BC7F44();
  sub_1C5BCA684();
  sub_1C5BCA684();
  *&v12 = a5;
  BYTE8(v12) = a1;
  BYTE9(v12) = a2;
  v13 = v16[0];
  v14 = v16[0];
  v15 = v10;
  MEMORY[0x1C694E550](&v12, *(a3 + 16), &type metadata for RotationEffectModifier, a4);
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = v14;
  v17 = v15;
  return sub_1C59F856C(v16);
}

uint64_t sub_1C59F859C(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = v6;
  v8 = *(&v6 + 1);
  sub_1C59F9A34(&v8, &v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931D0);
  sub_1C5BCA694();
  v2 = v5;
  if ((*(a1 + 9) & 1) == 0)
  {
    *&v6 = 0x401921FB54442D18;
    sub_1C5BCA3F4();
    sub_1C5BCA404();
  }

  *&v6 = v2;
  sub_1C5BCA3F4();
  sub_1C5BCA3F4();
  sub_1C5BCA404();
  v3 = v6;
  v6 = v7;
  v5 = v3;
  sub_1C5BCA6A4();
  return sub_1C5924EF4(&v7, &qword_1EC1931D0);
}

uint64_t sub_1C59F86C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931C0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931C8);
  v8 = *(v7 - 8);
  v33 = v7;
  v34 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - v9;
  v36 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931D0);
  sub_1C5BCA694();
  v11 = v39;
  v12 = *(v2 + 48);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931D8);
  (*(*(v13 - 8) + 16))(v6, a1, v13);
  v14 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931E0) + 36)];
  *v14 = v11;
  *(v14 + 1) = v12;
  v15 = swift_allocObject();
  v16 = *(v2 + 16);
  *(v15 + 16) = *v2;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v2 + 32);
  *(v15 + 64) = *(v2 + 48);
  v17 = &v6[*(v4 + 36)];
  *v17 = sub_1C59F97F0;
  v17[1] = v15;
  v17[2] = 0;
  v17[3] = 0;
  LOBYTE(v39) = *(v2 + 8);
  v18 = swift_allocObject();
  v19 = *(v2 + 16);
  *(v18 + 16) = *v2;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(v2 + 32);
  *(v18 + 64) = *(v2 + 48);

  sub_1C59F9800(v2, &v36);

  sub_1C59F9800(v2, &v36);
  v20 = sub_1C59F9838();
  v21 = MEMORY[0x1E69E6370];
  v22 = MEMORY[0x1E69E6388];
  sub_1C5BCA344();

  sub_1C5924EF4(v6, &qword_1EC1931C0);
  LOBYTE(v39) = *(v2 + 9);
  v23 = swift_allocObject();
  v24 = *(v2 + 16);
  *(v23 + 16) = *v2;
  *(v23 + 32) = v24;
  *(v23 + 48) = *(v2 + 32);
  *(v23 + 64) = *(v2 + 48);
  sub_1C59F9800(v2, &v36);
  *&v36 = v4;
  *(&v36 + 1) = v21;
  v37 = v20;
  v38 = v22;
  swift_getOpaqueTypeConformance2();
  v25 = v35;
  v26 = v33;
  sub_1C5BCA344();

  (*(v34 + 8))(v10, v26);
  *&v36 = v12;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931B0);
  sub_1C5924F54(&qword_1EC193210, &qword_1EC1931B0);
  sub_1C59F99D8();
  sub_1C5BC80F4();

  v28 = swift_allocObject();
  v29 = *(v2 + 16);
  *(v28 + 16) = *v2;
  *(v28 + 32) = v29;
  *(v28 + 48) = *(v2 + 32);
  *(v28 + 64) = *(v2 + 48);
  v30 = (v25 + *(v27 + 56));
  *v30 = sub_1C59F9A2C;
  v30[1] = v28;
  return sub_1C59F9800(v2, &v36);
}

uint64_t sub_1C59F8B5C(uint64_t result)
{
  if (*(result + 8))
  {
    v1 = sub_1C5BCAAE4();
    MEMORY[0x1EEE9AC00](v1);
    sub_1C5BC87F4();
  }

  return result;
}

uint64_t sub_1C59F8C00()
{
  v0 = sub_1C5BCAAE4();
  MEMORY[0x1EEE9AC00](v0);
  sub_1C5BC87F4();
}

uint64_t sub_1C59F8CE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931D0);
  sub_1C5BCA694();
  return sub_1C5BCA6A4();
}

uint64_t sub_1C59F8D60()
{
  sub_1C5BCAAE4();
  sub_1C5BC87F4();
}

uint64_t sub_1C59F8DD4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931D0);
  sub_1C5BCA694();
  if ((*(a1 + 9) & 1) == 0)
  {
    sub_1C5BCA3F4();
    sub_1C5BCA404();
  }

  sub_1C5BCA3F4();
  sub_1C5BCA3F4();
  sub_1C5BCA404();
  return sub_1C5BCA6A4();
}

uint64_t sub_1C59F8EC8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v12 = *(a2 + 32);
  v10 = *(a2 + 32);
  *&v9 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931D0);
  result = sub_1C5BCA6A4();
  if (*(a2 + 8))
  {
    v9 = *(a2 + 16);
    v10 = v9;
    v11 = *(&v9 + 1);
    sub_1C59F9A34(&v11, &v8);
    sub_1C5BCA694();
    v9 = v12;
    sub_1C5BCA694();
    if (sub_1C5BCA414())
    {
      v9 = v10;
      sub_1C5BCA694();
      v5 = fmod(v8, 6.28318531);
      v6 = fmod(v5 + 6.28318531, 6.28318531);
      v9 = v10;
      v8 = v6;
      sub_1C5BCA6A4();
      sub_1C5924EF4(&v10, &qword_1EC1931D0);
      v7 = sub_1C5BCAAE4();
      MEMORY[0x1EEE9AC00](v7);
      sub_1C5BC87F4();
    }

    else
    {
      return sub_1C5924EF4(&v10, &qword_1EC1931D0);
    }
  }

  return result;
}

uint64_t sub_1C59F90CC(double a1)
{
  v3 = sub_1C5BCAC14();
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C5BCAC44();
  v6 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v1 = a1;
  sub_1C5929CA0();
  v9 = sub_1C5BCB5A4();
  v10 = *(v1 + 8);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1C59F9CD0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C59F9D08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0);
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v8, v5, v12);
  _Block_release(v12);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

__n128 sub_1C59F939C@<Q0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_1C59F9C10(v7, a2, a3, *v3);
  v5 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v5;
  *(a1 + 64) = v8;
  result = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t (*sub_1C59F93FC(void *a1))(double *a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1C59F9428;
}

uint64_t sub_1C59F9454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C59F9BBC();

  return MEMORY[0x1EEDDEA98](a1, a2, a3, a4, a5, v10);
}

uint64_t sub_1C59F94D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1C59F9BBC();

  return MEMORY[0x1EEDDEA80](a1, a2, a3, a4, a5, v10);
}

uint64_t View.rotating(duration:isAnimating:isClockwise:)(char a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  v10 = type metadata accessor for MCUINamespace();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  View.mcui.getter(a3, &v15 - v12);
  MCUINamespace<A>.rotating(duration:isAnimating:isClockwise:)(a1, a2, v10, a4, a5);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1C59F96DC()
{
  result = qword_1EC1931B8;
  if (!qword_1EC1931B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1931B8);
  }

  return result;
}

uint64_t sub_1C59F9730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C59F9778(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_1C59F9838()
{
  result = qword_1EC1931E8;
  if (!qword_1EC1931E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1931C0);
    sub_1C59F98C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1931E8);
  }

  return result;
}

unint64_t sub_1C59F98C4()
{
  result = qword_1EC1931F0;
  if (!qword_1EC1931F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1931E0);
    sub_1C5924F54(&qword_1EC1931F8, &qword_1EC1931D8);
    sub_1C59F997C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1931F0);
  }

  return result;
}

unint64_t sub_1C59F997C()
{
  result = qword_1EC193200;
  if (!qword_1EC193200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193200);
  }

  return result;
}

unint64_t sub_1C59F99D8()
{
  result = qword_1EC193218;
  if (!qword_1EC193218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193218);
  }

  return result;
}

uint64_t sub_1C59F9A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C59F9B0C()
{
  result = qword_1EC193230;
  if (!qword_1EC193230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193230);
  }

  return result;
}

unint64_t sub_1C59F9B64()
{
  result = qword_1EC193238;
  if (!qword_1EC193238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193238);
  }

  return result;
}

unint64_t sub_1C59F9BBC()
{
  result = qword_1EC193240;
  if (!qword_1EC193240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193240);
  }

  return result;
}

CGFloat sub_1C59F9C10@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, CGFloat a4@<D2>)
{
  CGAffineTransformMakeTranslation(&v12, a2 * 0.5, a3 * 0.5);
  CGAffineTransformRotate(&v11, &v12, a4);
  v12 = v11;
  CGAffineTransformTranslate(&v11, &v12, -(a2 * 0.5), -(a3 * 0.5));
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a1 = *&v11.a;
  *(a1 + 16) = 0;
  *(a1 + 24) = v9;
  *(a1 + 40) = 0;
  *(a1 + 48) = v10;
  *(a1 + 64) = 0x3FF0000000000000;
  return result;
}

unint64_t sub_1C59F9D08()
{
  result = qword_1EDA4E6A0;
  if (!qword_1EDA4E6A0)
  {
    sub_1C5BCAC14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E6A0);
  }

  return result;
}

uint64_t CircularProgressView.LineStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t CircularProgressView.init(value:trackColor:progressColor:lineWidth:lineStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = *a4;
  *a5 = result;
  *(a5 + 4) = BYTE4(result) & 1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a6;
  *(a5 + 32) = v6;
  return result;
}

uint64_t CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v5 = *a3;
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = a5;
  *(a4 + 32) = v5;
  return result;
}

uint64_t CircularProgressView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_1C5BC90D4();
  v25 = *(v29 - 8);
  v26 = v25;
  MEMORY[0x1EEE9AC00](v29);
  v27 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193248);
  MEMORY[0x1EEE9AC00](v28);
  v4 = &v25 - v3;
  v5 = *v1;
  v6 = *(v1 + 4);
  v8 = *(v1 + 8);
  v7 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  if (v6)
  {
    v11 = 0.6;
  }

  else
  {
    v11 = *v1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1931B0);
  swift_allocObject();

  v12 = sub_1C5BC7F44();
  *&v37 = 0;
  sub_1C5BCA684();
  v13 = v41[0];
  *&v37 = 0;
  sub_1C5BCA684();
  *&v37 = v11;
  *(&v37 + 1) = v8;
  *&v38 = v7;
  *(&v38 + 1) = v9;
  LOBYTE(v39) = v10;
  *(&v39 + 1) = 0x3FF0000000000000;
  v40[0] = v6;
  v40[1] = 1;
  *&v40[8] = v13;
  *&v40[24] = v41[0];
  *&v40[40] = v12;
  v31 = v5;
  v32 = v6;
  v33 = v8;
  v34 = v7;
  v35 = v9;
  v36 = v10;
  sub_1C59FA2E8();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193250);
  sub_1C59FA3C8();
  sub_1C5BCA044();
  sub_1C5953BD8(v15, v17, v19 & 1);

  v41[2] = v39;
  v41[3] = *v40;
  v41[4] = *&v40[16];
  v41[5] = *&v40[32];
  v41[0] = v37;
  v41[1] = v38;
  sub_1C5924EF4(v41, &qword_1EC193250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193268);
  v20 = v26;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C5BCFF00;
  sub_1C5BC9084();
  *&v37 = v21;
  sub_1C5941E74(&unk_1EDA46330, MEMORY[0x1E697F5E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193270);
  sub_1C5924F54(&qword_1EDA45EB8, &qword_1EC193270);
  v22 = v27;
  v23 = v29;
  sub_1C5BCB8F4();
  sub_1C5BC8A04();
  (*(v20 + 8))(v22, v23);
  return sub_1C5924EF4(v4, &qword_1EC193248);
}

void sub_1C59FA2E8()
{
  if ((*(v0 + 4) & 1) == 0 && (~*v0 & 0x7F800000) != 0)
  {
    v1 = roundf(*v0 * 100.0);
    if ((LODWORD(v1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v1 > -9.2234e18)
    {
      if (v1 < 9.2234e18)
      {
        sub_1C5BCBD64();
        MEMORY[0x1C694F170](37, 0xE100000000000000);
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

unint64_t sub_1C59FA3C8()
{
  result = qword_1EC193258;
  if (!qword_1EC193258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193250);
    sub_1C59FA454();
    sub_1C59F96DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193258);
  }

  return result;
}

unint64_t sub_1C59FA454()
{
  result = qword_1EC193260;
  if (!qword_1EC193260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193260);
  }

  return result;
}

unint64_t sub_1C59FA4AC()
{
  result = qword_1EC193278;
  if (!qword_1EC193278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193278);
  }

  return result;
}

uint64_t sub_1C59FA51C@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  sub_1C5BC83C4();
  v5 = v31;
  v6 = v32;
  v7 = v33;
  v8 = v34;
  v9 = v35;
  v10 = v36;
  v12 = *(a1 + 1);
  v11 = *(a1 + 2);
  v37 = v11;
  v13 = *a1;
  v14 = *(a1 + 32);
  if (v11)
  {
    *&v22 = v13;
    *(&v22 + 1) = v12;
    *&v23 = v4;
    *(&v23 + 1) = v14;
    *&v24 = v11;
    BYTE8(v24) = 0;
    swift_retain_n();
    sub_1C59400B0(&v37, &v26, &qword_1EC1932D0);
  }

  else
  {
    swift_retain_n();
    *&v22 = v13;
    *(&v22 + 1) = v12;
    *&v23 = v4;
    *(&v23 + 1) = v14;
    *&v24 = sub_1C5BCA434();
    BYTE8(v24) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193290);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193298);
  sub_1C59FAAF8();
  sub_1C59FAC04();
  sub_1C5BC92C4();
  v15 = v26;
  v16 = v27;
  v17 = v28;
  v18 = v29;
  v19 = v4 * 0.5;
  *&v22 = v19;
  *(&v22 + 1) = v5;
  *&v23 = __PAIR64__(v7, v6);
  *(&v23 + 1) = v8;
  *&v24 = v9;
  *(&v24 + 1) = v10;
  v25 = v12;
  *(a2 + 48) = v12;
  v20 = v23;
  *a2 = v22;
  *(a2 + 16) = v20;
  *(a2 + 32) = v24;
  *(a2 + 56) = v15;
  *(a2 + 72) = v16;
  *(a2 + 88) = v17;
  *(a2 + 96) = v18;
  sub_1C59400B0(&v22, &v26, &qword_1EC1932C8);
  sub_1C59FACBC();
  sub_1C59FACFC();
  *&v26 = v19;
  *(&v26 + 1) = v5;
  *&v27 = __PAIR64__(v7, v6);
  *(&v27 + 1) = v8;
  v28 = v9;
  v29 = v10;
  v30 = v12;
  return sub_1C5924EF4(&v26, &qword_1EC1932C8);
}

__n128 sub_1C59FA780@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v18[0] = *v1;
  v18[1] = v3;
  v19 = *(v1 + 32);
  v4 = sub_1C5BCAA54();
  v6 = v5;
  sub_1C59FA51C(v18, &v11);
  v24 = v15;
  v25 = v16;
  v26 = v17;
  v20 = v11;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v27[0] = v11;
  v27[1] = v12;
  v27[2] = v13;
  v27[3] = v14;
  v27[4] = v15;
  v27[5] = v16;
  v28 = v17;
  sub_1C59400B0(&v20, &v10, &qword_1EC193288);
  sub_1C5924EF4(v27, &qword_1EC193288);
  *a1 = v4;
  *(a1 + 8) = v6;
  v7 = v25;
  *(a1 + 80) = v24;
  *(a1 + 96) = v7;
  *(a1 + 112) = v26;
  v8 = v21;
  *(a1 + 16) = v20;
  *(a1 + 32) = v8;
  result = v23;
  *(a1 + 48) = v22;
  *(a1 + 64) = result;
  return result;
}

double sub_1C59FA870@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = 1.0;
  if (*v1 <= 1.0)
  {
    v4 = *v1;
  }

  v5 = *(v1 + 16) * 0.5;
  v6 = v4;
  sub_1C5BC83C4();
  sub_1C5BCABD4();
  v8 = v7;
  v10 = v9;
  v11 = sub_1C5BCAAF4();
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = v6;
  result = *&v13;
  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  *(a1 + 56) = v15;
  *(a1 + 64) = 0xBFF921FB54442D18;
  *(a1 + 72) = v8;
  *(a1 + 80) = v10;
  *(a1 + 88) = v11;
  *(a1 + 96) = v3;
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

unint64_t sub_1C59FA984()
{
  result = qword_1EC193280;
  if (!qword_1EC193280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193248);
    sub_1C59FA3C8();
    sub_1C5941E74(&qword_1EDA4E190, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC193280);
  }

  return result;
}

uint64_t sub_1C59FAA40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C59FAA88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C59FAAF8()
{
  result = qword_1EC1932A0;
  if (!qword_1EC1932A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193290);
    sub_1C59FABB0();
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1932A0);
  }

  return result;
}

unint64_t sub_1C59FABB0()
{
  result = qword_1EC1932A8;
  if (!qword_1EC1932A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1932A8);
  }

  return result;
}

unint64_t sub_1C59FAC04()
{
  result = qword_1EC1932B0;
  if (!qword_1EC1932B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193298);
    sub_1C59FABB0();
    sub_1C5924F54(&qword_1EC1932B8, &qword_1EC1932C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1932B0);
  }

  return result;
}

uint64_t sub_1C59FACBC()
{
}

uint64_t sub_1C59FACFC()
{
}

unint64_t sub_1C59FAD64()
{
  result = qword_1EC1932E8;
  if (!qword_1EC1932E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1932F0);
    sub_1C59FAE1C();
    sub_1C5924F54(&qword_1EC193318, &qword_1EC193320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1932E8);
  }

  return result;
}

unint64_t sub_1C59FAE1C()
{
  result = qword_1EC1932F8;
  if (!qword_1EC1932F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193300);
    sub_1C5924F54(&qword_1EC193308, &qword_1EC193310);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1932F8);
  }

  return result;
}

uint64_t FittedTextVStack.init(totalLineLimit:alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if (a1 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1;
  }

  v8 = type metadata accessor for FittedTextVStack();
  *(a4 + *(v8 + 36)) = v7;
  *(a4 + *(v8 + 40)) = a2;
  return a3();
}

uint64_t FittedTextVStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193328);
  v4 = *(a1 + 16);
  sub_1C59FB280(&qword_1EDA466F8);
  v5 = sub_1C5BC87C4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v12 = *(v2 + *(a1 + 36));
  v13 = *(v2 + *(a1 + 40));
  v14 = *(a1 + 24);
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = v14;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = 0x4010000000000000;
  v21 = v4;
  v22 = v14;
  v23 = v2;
  sub_1C59FB638(sub_1C59FB274, v20, v9);

  v24 = sub_1C59FB280(&qword_1EDA466F0);
  v25 = v14;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v9, v5, WitnessTable);
  v17 = *(v6 + 8);
  v17(v9, v5);
  sub_1C593EDC0(v11, v5, WitnessTable);
  return (v17)(v11, v5);
}

uint64_t sub_1C59FB198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C593EDC0(v6, v9, v10);
  sub_1C593EDC0(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_1C59FB280(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193328);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C59FB318()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C59FB3A0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_1C59FB4AC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((((*(v5 + 64) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_1C59FB638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_1C59FB6B8();
  return sub_1C59485B4(a1, a2, &type metadata for FittedTextVStackLayout, v7, v9, v8, a3);
}

unint64_t sub_1C59FB6B8()
{
  result = qword_1EDA486B0;
  if (!qword_1EDA486B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA486B0);
  }

  return result;
}

uint64_t sub_1C59FB74C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1C59400B0(a1, &v9 - v6, &qword_1EC191EB8);
  sub_1C59400B0(v7, v5, &qword_1EC191EB8);
  sub_1C59C10F0();
  sub_1C5BC8F54();
  return sub_1C5924EF4(v7, &qword_1EC191EB8);
}

uint64_t sub_1C59FB850@<X0>(_BYTE *a1@<X8>)
{
  sub_1C59C1144();
  result = sub_1C5BC8F44();
  *a1 = v3;
  return result;
}

uint64_t sub_1C59FB8EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v16[1] = a1;
  v3 = type metadata accessor for MotionPlayerView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193420);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v16 - v8);
  *v9 = sub_1C5BCAA54();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193428);
  sub_1C59FBB9C(v2, v9 + *(v11 + 44));
  v12 = *(v2 + *(v4 + 40));
  swift_getKeyPath();
  v18 = v12;
  sub_1C5A04138(&qword_1EDA4B348, type metadata accessor for MotionEnabledState);
  sub_1C5BC7B74();

  v17 = *(v12 + 33);
  sub_1C5A050CC(v2, v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MotionPlayerView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_1C5A051A4(v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for MotionPlayerView);
  sub_1C5924F54(&qword_1EC193440, &qword_1EC193420);
  sub_1C5BCA334();

  return sub_1C5924EF4(v9, &qword_1EC193420);
}

uint64_t sub_1C59FBB9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for MotionPlayerView(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193448);
  v5 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v30 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933E8);
  sub_1C5BC81A4();
  v8 = v33;
  swift_getKeyPath();
  v33 = v8;
  sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
  sub_1C5BC7B74();

  v9 = *(v8 + 17);

  if (v9)
  {
    v10 = 1;
    v12 = v31;
    v11 = v32;
  }

  else
  {
    sub_1C5BC81A4();
    v13 = *(a1 + *(v3 + 28));
    *v7 = v33;
    *(v7 + 1) = v13;
    type metadata accessor for MaterialMotionContentObserver(0);
    sub_1C5A04138(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);

    *(v7 + 2) = sub_1C5BC8314();
    v7[24] = v14 & 1;
    *(v7 + 4) = swift_getKeyPath();
    v7[40] = 0;
    *(v7 + 6) = swift_getKeyPath();
    *(v7 + 7) = 0;
    v7[64] = 0;
    v15 = type metadata accessor for MotionPlayerViewRepresentable(0);
    v16 = v15[9];
    *&v7[v16] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191ED8);
    swift_storeEnumTagMultiPayload();
    v17 = &v7[v15[10]];
    *v17 = swift_getKeyPath();
    v17[8] = 0;
    v18 = &v7[v15[11]];
    *v18 = swift_getKeyPath();
    v18[8] = 0;
    v19 = &v7[v15[12]];
    *v19 = swift_getKeyPath();
    v19[8] = 0;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193460);
    sub_1C59EFE04(&v7[*(v20 + 52)]);
    sub_1C5A050CC(a1, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MotionPlayerView);
    v21 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v22 = swift_allocObject();
    sub_1C5A051A4(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for MotionPlayerView);
    v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193468) + 36)];
    *v23 = sub_1C5A041A0;
    v23[1] = v22;
    v23[2] = 0;
    v23[3] = 0;
    sub_1C5A050CC(a1, &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MotionPlayerView);
    v24 = swift_allocObject();
    sub_1C5A051A4(&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v21, type metadata accessor for MotionPlayerView);
    v25 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193470) + 36)];
    *v25 = 0;
    *(v25 + 1) = 0;
    *(v25 + 2) = sub_1C5A041B8;
    *(v25 + 3) = v24;
    v27 = v31;
    v26 = v32;
    v28 = &v7[*(v31 + 36)];
    *v28 = sub_1C593EF24;
    *(v28 + 1) = 0;
    v28[16] = 0;
    sub_1C5A04244(v7, v26);
    v10 = 0;
    v11 = v26;
    v12 = v27;
  }

  return (*(v5 + 56))(v11, v10, 1, v12);
}

uint64_t sub_1C59FC060(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EDA5DB60);
  v7 = a1 + *(type metadata accessor for MotionPlayerView(0) + 24);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
    v14 = *v7;
    v15 = v8;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v9, v8, 0);
    (*(v3 + 8))(v5, v2);
    v9 = v14;
    v8 = v15;
  }

  v11 = sub_1C5BCB4C4();
  v13[0] = v9;
  v13[1] = v8;
  sub_1C5ACCC10(v11, 0x726165707061, 0xE600000000000000, v13);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933E8);
  sub_1C5BC81A4();
  *(v14 + 128) = 1;
}

uint64_t sub_1C59FC280(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EDA5DB60);
  v7 = a1 + *(type metadata accessor for MotionPlayerView(0) + 24);
  v9 = *v7;
  v8 = *(v7 + 8);
  if (*(v7 + 16) == 1)
  {
    v17 = *v7;
    v18 = v8;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v9, v8, 0);
    (*(v3 + 8))(v5, v2);
    v9 = v17;
    v8 = v18;
  }

  v11 = sub_1C5BCB4C4();
  v16[0] = v9;
  v16[1] = v8;
  sub_1C5ACCC10(v11, 0x6165707061736964, 0xE900000000000072, v16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1933E8);
  sub_1C5BC81A4();
  v12 = v17;
  v13 = *(v17 + 128);
  *(v17 + 128) = 0;
  if (v13)
  {
    sub_1C5A02E54(0, 0, 0);
    v14 = *(v12 + 104);
    *(v12 + 104) = 0;
    if (v14 == 1)
    {
      LOBYTE(v17) = 0;
      sub_1C5BC7F34();
    }
  }
}

uint64_t sub_1C59FC4E4(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  result = type metadata accessor for MotionPlayerView(0);
  v6 = *(a3 + *(result + 28));
  if (v6)
  {
    v7 = *a2;
    swift_getKeyPath();
    sub_1C5A04138(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
    sub_1C5BC7B74();

    if (*(v6 + 16) != v7)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5BC7B64();
    }
  }

  return result;
}

char *sub_1C59FC648()
{
  v1 = v0;
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v37[-2] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v6 = sub_1C5BC7D64();
  __swift_project_value_buffer(v6, qword_1EDA5DB60);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);
  if (*(v0 + 64) == 1)
  {
    *&v38 = *(v0 + 48);
    *(&v38 + 1) = v7;
  }

  else
  {

    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v8, v7, 0);
    (*(v3 + 8))(v5, v2);
    v7 = *(&v38 + 1);
    v8 = v38;
  }

  v10 = sub_1C5BCB4F4();
  v37[0] = v8;
  v37[1] = v7;
  sub_1C5ACCC10(v10, 0xD000000000000028, 0x80000001C5BF7460, v37);

  v11 = *(v0 + 32);
  if (*(v1 + 40) == 1)
  {
    if ((v11 & 1) == 0)
    {
LABEL_8:
      v12 = objc_allocWithZone(type metadata accessor for GeometryTrackingView());

      v13 = sub_1C5A04518();

      v14 = *(v1 + 48);
      v15 = *(v1 + 64);
      v36 = v14;
      if (v15 == 1)
      {
        v38 = v14;

        v16 = v36;
      }

      else
      {
        v25 = v14;

        sub_1C5BCB4E4();
        v26 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C596AC58(v25, *(&v36 + 1), 0);
        (*(v3 + 8))(v5, v2);
        v16 = v38;
      }

      *&v13[OBJC_IVAR____TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC20GeometryTrackingView_loggingContext] = v16;

      v27 = objc_opt_self();
      v28 = v13;
      v29 = [v27 clearColor];
      [v28 setBackgroundColor_];

      [v28 setUserInteractionEnabled_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193590);
      sub_1C5BC96B4();
      goto LABEL_17;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5942458(v11, 0);
    (*(v3 + 8))(v5, v2);
    if (v38 != 1)
    {
      goto LABEL_8;
    }
  }

  v18 = objc_allocWithZone(type metadata accessor for PlayerView());

  v19 = sub_1C5A04518();

  v20 = *(v1 + 48);
  v21 = *(v1 + 64);
  v22 = *(v1 + 56);
  if (v21 == 1)
  {
    v38 = v20;
    v36 = v20;
    v23 = v19;
    sub_1C5A059A0(v36, v22, 1);
    v24 = v36;
  }

  else
  {
    v30 = v20;
    v31 = v19;
    sub_1C5A059A0(v30, v22, 0);
    sub_1C5BCB4E4();
    v32 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v30, v22, 0);
    (*(v3 + 8))(v5, v2);
    v24 = v38;
  }

  *&v19[OBJC_IVAR____TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC20GeometryTrackingView_loggingContext] = v24;

  v33 = objc_opt_self();
  v28 = v19;
  v34 = [v33 clearColor];
  [v28 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193590);
  sub_1C5BC96B4();

LABEL_17:
  swift_unknownObjectWeakAssign();

  return v28;
}

void sub_1C59FCC18(void *a1, uint64_t a2)
{
  v79 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934C8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v78 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v77 = &v72 - v7;
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v72 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v76 = &v72 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v72 - v16;
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C5BC7D64();
  __swift_project_value_buffer(v18, qword_1EDA5DB60);
  v20 = *(v2 + 48);
  v19 = *(v2 + 56);
  v21 = *(v2 + 64);
  v80 = v8;
  v81 = a2;
  if (v21 == 1)
  {
    *&v84 = v20;
    *(&v84 + 1) = v19;
  }

  else
  {

    sub_1C5BCB4E4();
    v22 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v8 = v80;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C596AC58(v20, v19, 0);
    (*(v9 + 8))(v17, v8);
    v19 = *(&v84 + 1);
    v20 = v84;
  }

  v23 = sub_1C5BCB4C4();
  v83[0] = v20;
  v83[1] = v19;
  sub_1C5ACCC10(v23, 0xD00000000000002ALL, 0x80000001C5BF7400, v83);

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193590);
  sub_1C5BC96B4();
  v25 = v84;
  sub_1C5BC96C4();
  sub_1C592BEC4();
  sub_1C5BC8F44();
  v26 = *(v9 + 8);
  v26(v17, v8);
  v27 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator;
  *(*(v25 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator) + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID) = v84;

  sub_1C5BC96C4();
  sub_1C5BC8D14();
  v29 = v28;
  v26(v17, v8);
  sub_1C5A000A8(v29);
  v30 = *(v2 + 16);
  v31 = *(v2 + 24);

  if ((v31 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v32 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    j__swift_release();
    v26(v17, v8);
    v30 = v84;
  }

  *(v25 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_contentObserver) = v30;

  sub_1C59FFEF4();

  v82 = v25;
  sub_1C5BC96C4();
  sub_1C5A057E0();
  sub_1C5BC8F44();
  v26(v17, v8);
  v33 = (v82 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
  *(v82 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext) = v84;

  v74 = v27;
  v34 = v33[1];
  v35 = (*(v82 + v27) + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
  *v35 = *v33;
  v35[1] = v34;

  v36 = *(v82 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayState);
  v37 = v33[1];
  *(v36 + 136) = *v33;
  *(v36 + 144) = v37;

  v38 = v76;
  v75 = v24;
  v39 = v82;
  sub_1C5BC96C4();
  sub_1C5A05834();
  sub_1C5BC8F44();
  v26(v38, v8);
  v40 = v84;
  v41 = *(v39 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackPolicy);
  *(v39 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackPolicy) = v84;
  if (v40 == 2)
  {
    if (v41 != 2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (v40 == 3)
    {
      if (v41 == 3)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_1C5A01940();
      goto LABEL_17;
    }

    if (v41 & 0xFE) == 2 || ((v41 ^ v40))
    {
      goto LABEL_16;
    }
  }

LABEL_17:
  v42 = v74;
  v43 = *(v39 + v74);

  sub_1C5BC96C4();
  sub_1C59C109C();
  sub_1C5BC8F44();
  v44 = v80;
  v26(v17, v80);
  *(v43 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_placementContext) = v84;

  v45 = *(v39 + v42);

  sub_1C5BC96C4();
  sub_1C59C11A8();
  sub_1C5BC8F44();
  v46 = v44;
  v26(v17, v44);
  *(v45 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_shouldResetOnSizeChange) = v84;

  sub_1C5BC96C4();
  v47 = v77;
  sub_1C5BC8CB4();
  v26(v17, v46);
  v48 = sub_1C5BC81D4();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_scenePhase;
  swift_beginAccess();
  v50 = v78;
  sub_1C59400B0(v39 + v49, v78, &qword_1EC1934C8);
  swift_beginAccess();
  sub_1C5A05888(v47, v39 + v49);
  swift_endAccess();
  sub_1C5A00134(v50);
  sub_1C5924EF4(v50, &qword_1EC1934C8);
  v51 = v80;
  sub_1C5924EF4(v47, &qword_1EC1934C8);
  sub_1C5BC96C4();
  sub_1C5A058F8();
  sub_1C5BC8F44();
  v26(v17, v51);
  *(v39 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_cacheDownloadPolicy) = v83[0];
  type metadata accessor for PlayerView();
  v52 = v79;
  v53 = swift_dynamicCastClass();
  if (!v53)
  {
    goto LABEL_27;
  }

  v54 = v53;
  v79 = v52;
  v55 = v73;
  sub_1C5BC96C4();
  v78 = sub_1C5A0594C();
  sub_1C5BC8F44();
  v26(v55, v51);
  v56 = *MEMORY[0x1E69874F0];
  v57 = *MEMORY[0x1E69874E8];
  v77 = *MEMORY[0x1E69874F0];
  if (LOBYTE(v83[0]))
  {
    v58 = v56;
  }

  else
  {
    v58 = v57;
  }

  v59 = v58;
  v60 = [v54 layer];
  objc_opt_self();
  v61 = [swift_dynamicCastObjCClassUnconditional() videoGravity];

  v62 = sub_1C5BCAE74();
  v64 = v63;
  if (v62 == sub_1C5BCAE74() && v64 == v65)
  {

LABEL_27:

    return;
  }

  v76 = v59;
  v66 = sub_1C5BCBDE4();

  if (v66)
  {

    goto LABEL_27;
  }

  v67 = objc_opt_self();
  [v67 begin];
  [v67 setDisableActions_];
  v68 = v72;
  sub_1C5BC96C4();
  sub_1C5BC8F44();
  v26(v68, v80);
  v69 = v77;
  if (!LOBYTE(v83[0]))
  {
    v69 = v57;
  }

  v70 = v69;
  v71 = [v54 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setVideoGravity_];

  [v67 commit];
}

uint64_t sub_1C59FD734()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193528);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v76 - v4;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193530);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v76 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = &v76 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193538);
  v90 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v76 - v8;
  v9 = sub_1C5BC8F34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191EB8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v76 - v14;
  v16 = type metadata accessor for MotionPlayerViewRepresentable(0);
  sub_1C59EFE04(v15);
  v17 = type metadata accessor for MotionAsset();
  v18 = *(*(v17 - 8) + 48);
  v100 = v15;
  result = v18(v15, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = v0 + v16[10];
    v21 = *v20;
    v22 = *(v20 + 8) == 1;
    v83 = v2;
    if (v22)
    {
      v109 = v21;
    }

    else
    {

      sub_1C5BCB4E4();
      v23 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v21, 0);
      (*(v10 + 8))(v12, v9);
      LOBYTE(v21) = v109;
    }

    v24 = v1 + v16[11];
    v25 = *v24;
    v22 = *(v24 + 8) == 1;
    v82 = v3;
    if (v22)
    {
      v108 = v25 & 1;
    }

    else
    {

      sub_1C5BCB4E4();
      v26 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v25, 0);
      (*(v10 + 8))(v12, v9);
      LOBYTE(v25) = v108;
    }

    v27 = v1[1];
    v95 = *v1;
    v28 = v1 + v16[12];
    v29 = *v28;
    if (*(v28 + 8) == 1)
    {
      v30 = *v28;
    }

    else
    {

      sub_1C5BCB4E4();
      v31 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5942458(v29, 0);
      (*(v10 + 8))(v12, v9);
      v30 = v103;
    }

    v32 = v1[2];
    v33 = *(v1 + 24);

    if (v33)
    {
      v98 = v32;
    }

    else
    {
      sub_1C5BCB4E4();
      v34 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      j__swift_release();
      (*(v10 + 8))(v12, v9);
      v98 = v103;
    }

    v35 = MEMORY[0x1E69E7CC0];
    v36 = v1[6];
    v37 = v1[7];
    if (*(v1 + 64) == 1)
    {
      v96 = v1[6];
      v97 = v37;
      v106 = v36;
      v107 = v37;
    }

    else
    {
      v38 = v1[7];
      v39 = v36;

      sub_1C5BCB4E4();
      v40 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v41 = v39;
      v35 = MEMORY[0x1E69E7CC0];
      sub_1C596AC58(v41, v38, 0);
      (*(v10 + 8))(v12, v9);
      v96 = v106;
      v97 = v107;
    }

    type metadata accessor for MotionPlayerViewRepresentable.Coordinator(0);
    v42 = swift_allocObject();
    v43 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator;
    type metadata accessor for LooperConfigurator(0);
    swift_allocObject();
    *(v42 + v43) = sub_1C5A60078();
    swift_unknownObjectWeakInit();
    if (v35 >> 62)
    {
      v75 = sub_1C5BCB984();
      v45 = v98;
      if (v75)
      {
        v44 = sub_1C5A4E9B8(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v44 = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v44 = MEMORY[0x1E69E7CD0];
      v45 = v98;
    }

    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_subscriptions) = v44;
    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_contentObserver) = 0;
    v46 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_scenePhase;
    v47 = sub_1C5BC81D4();
    (*(*(v47 - 8) + 56))(v42 + v46, 1, 1, v47);
    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackCommand) = 4;
    sub_1C5A050CC(v100, v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_asset, type metadata accessor for MotionAsset);
    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackPolicy) = v21;
    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_cacheDownloadPolicy) = v25 & 1;
    v48 = v96;
    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayState) = v95;
    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_stateObserver) = v27;
    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayScale) = v30;
    *(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_contentObserver) = v45;
    v49 = (v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
    v50 = v97;
    *v49 = v48;
    v49[1] = v50;
    v94 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator;
    v51 = (*(v42 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator) + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_loggingContext);
    *v51 = v48;
    v51[1] = v50;
    swift_bridgeObjectRetain_n();

    if (v27)
    {
      if (*(v27 + 17) == 1)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v76 - 2) = v27;
        *(&v76 - 8) = 0;
        v103 = v27;
        sub_1C5A04138(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);
        sub_1C5BC7B64();
      }

      else
      {
        *(v27 + 17) = 0;
      }
    }

    v103 = sub_1C5A02CA8();
    sub_1C592535C(0, &qword_1EDA4E620);
    v53 = sub_1C5BCB5A4();
    v105 = v53;
    v54 = sub_1C5BCB594();
    v55 = *(v54 - 8);
    v91 = *(v55 + 56);
    v101 = v55 + 56;
    v56 = v99;
    v57 = v54;
    v92 = v54;
    v91();
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193540);
    v81 = MEMORY[0x1E695BED8];
    v79 = sub_1C5924F54(&qword_1EC193548, &qword_1EC193540);
    v102 = sub_1C5931640();
    v58 = v84;
    sub_1C5BC80D4();
    v59 = v56;
    sub_1C5924EF4(v56, &unk_1EC199F20);

    swift_allocObject();
    swift_weakInit();
    v93 = MEMORY[0x1E695BE98];
    v78 = sub_1C5924F54(&qword_1EC193550, &qword_1EC193538);

    v60 = v85;
    sub_1C5BC8114();

    v77 = *(v90 + 8);
    v77(v58, v60);
    v90 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_subscriptions;
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    v103 = sub_1C5A02FD4();
    v61 = sub_1C5BCB5A4();
    v105 = v61;
    v62 = v57;
    v63 = v91;
    (v91)(v59, 1, 1, v62);
    sub_1C5BC80D4();
    sub_1C5924EF4(v59, &unk_1EC199F20);

    swift_allocObject();
    swift_weakInit();
    sub_1C5BC8114();

    v77(v58, v60);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    v103 = sub_1C5A60F74();
    v64 = sub_1C5BCB5A4();
    v105 = v64;
    (v63)(v59, 1, 1, v92);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193558);
    sub_1C5924F54(&qword_1EC193560, &qword_1EC193558);
    v65 = v86;
    sub_1C5BC80D4();
    sub_1C5924EF4(v59, &unk_1EC199F20);

    swift_allocObject();
    swift_weakInit();
    sub_1C5924F54(&qword_1EC193568, &qword_1EC193530);
    v66 = v88;
    sub_1C5BC8114();

    (*(v87 + 8))(v65, v66);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    v103 = sub_1C5A03098();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193570);
    sub_1C5924F54(&qword_1EC193578, &qword_1EC193570);
    sub_1C5BC8114();

    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    v103 = sub_1C5A612BC();
    v67 = sub_1C5BCB5A4();
    v105 = v67;
    v68 = v99;
    (v91)(v99, 1, 1, v92);
    v69 = v89;
    sub_1C5BC80D4();
    sub_1C5924EF4(v68, &unk_1EC199F20);

    swift_allocObject();
    swift_weakInit();

    sub_1C5924F54(&qword_1EC193580, &qword_1EC193528);
    v70 = v83;
    sub_1C5BC8114();

    (*(v82 + 8))(v69, v70);
    swift_beginAccess();
    sub_1C5BC7EE4();
    swift_endAccess();

    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v71 = sub_1C5BC7D64();
    __swift_project_value_buffer(v71, qword_1EDA5DB60);
    v103 = 0;
    v104 = 0xE000000000000000;
    sub_1C5BCBA94();
    MEMORY[0x1C694F170](0xD00000000000002FLL, 0x80000001C5BF72C0);
    v105 = v42;
    sub_1C5BCBBA4();
    MEMORY[0x1C694F170](41, 0xE100000000000000);
    v72 = v103;
    v73 = v104;
    v74 = sub_1C5BCB4C4();
    v103 = v96;
    v104 = v97;
    sub_1C5ACCC10(v74, v72, v73, &v103);

    sub_1C5A0520C(v100, type metadata accessor for MotionAsset);

    return v42;
  }

  return result;
}

uint64_t sub_1C59FE9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[4] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C59FE9D8, 0, 0);
}

uint64_t sub_1C59FE9D8()
{
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC19A688;
  *(v0 + 72) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C59FEA70, v1, 0);
}

uint64_t sub_1C59FEA70()
{
  if (qword_1EC1909D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1C59FEB00, v1, 0);
}

uint64_t sub_1C59FEB00()
{
  v1 = *(v0 + 72);
  *(v0 + 80) = qword_1EC19A690;
  *(v0 + 16) = *(v0 + 56);
  return MEMORY[0x1EEE6DFA0](sub_1C59FEB30, v1, 0);
}

uint64_t sub_1C59FEB30()
{
  sub_1C5BACF24(v0[4], v0[5], v0[6], v0 + 2);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1C59FEBB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C59FD734();
  *a1 = result;
  return result;
}

uint64_t sub_1C59FEC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A04138(qword_1EC1935B0, type metadata accessor for MotionPlayerViewRepresentable);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C59FECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A04138(qword_1EC1935B0, type metadata accessor for MotionPlayerViewRepresentable);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C59FED40()
{
  sub_1C5A04138(qword_1EC1935B0, type metadata accessor for MotionPlayerViewRepresentable);
  sub_1C5BC9264();
  __break(1u);
}

uint64_t sub_1C59FED98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EDA5DB60);
    sub_1C5BCBA94();

    v11 = 0xD000000000000021;
    v12 = 0x80000001C5BF7380;
    v3 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v3);

    MEMORY[0x1C694F170](0x203A68203BLL, 0xE500000000000000);
    v4 = sub_1C5BCB304();
    MEMORY[0x1C694F170](v4);

    MEMORY[0x1C694F170](62, 0xE100000000000000);
    MEMORY[0x1C694F170](540702524, 0xE400000000000000);

    v6 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
    v5 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);

    v7 = sub_1C5BCB4C4();
    v11 = v6;
    v12 = v5;
    sub_1C5ACCC10(v7, 0xD000000000000021, 0x80000001C5BF7380, &v11);

    v8 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayState);
    if ((*(v8 + 40) & 1) == 0)
    {
      v9 = *(v8 + 24);
      if (v9.f64[0] != 0.0 || v9.f64[1] != 0.0)
      {
        v10 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator) + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperItemResolution;
        *v10 = vmulq_n_f64(v9, *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayScale));
        *(v10 + 16) = 0;
        sub_1C5A665EC();
      }
    }
  }

  return result;
}

uint64_t sub_1C59FEFBC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackPolicy) == 2)
    {
      sub_1C5A011F8();
      sub_1C5A01940();
    }
  }

  return result;
}

uint64_t sub_1C59FF02C(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C5BC7D64();
    __swift_project_value_buffer(v4, qword_1EDA5DB60);
    sub_1C5BCBA94();

    v28 = 0xD000000000000023;
    v29 = 0x80000001C5BF7350;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193588);
    v6 = sub_1C5BCAEA4();
    MEMORY[0x1C694F170](v6);

    v8 = *(v3 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
    v7 = *(v3 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);

    v9 = sub_1C5BCB4C4();
    v28 = v8;
    v29 = v7;
    sub_1C5ACCC10(v9, 0xD000000000000023, 0x80000001C5BF7350, &v28);

    if (v1)
    {
      v10 = *(v3 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_contentObserver);
      if (v10)
      {
        swift_getKeyPath();
        v28 = v10;
        sub_1C5A04138(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
        v11 = v5;

        sub_1C5BC7B74();

        v12 = *(v10 + 16);
        if (v12 && (sub_1C592535C(0, &qword_1EC193478), v13 = v11, v14 = v12, v15 = sub_1C5BCB744(), v13, v14, (v15 & 1) != 0))
        {
        }

        else
        {
          sub_1C5A038DC(v1);
        }
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_21;
    }

    v17 = Strong;
    type metadata accessor for PlayerView();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      v19 = v18;
      v20 = [v18 layer];
      objc_opt_self();
      v21 = [swift_dynamicCastObjCClassUnconditional() player];

      if (v21)
      {
        if (v1)
        {
          sub_1C592535C(0, &qword_1EC193478);
          v22 = v5;
          v23 = sub_1C5BCB744();

          if (v23)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v25 = v5;
        }

        goto LABEL_19;
      }

      if (v1)
      {
LABEL_19:
        v26 = v5;
        v27 = [v19 layer];
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() setPlayer_];

        v17 = v27;
        goto LABEL_20;
      }

      v24 = v5;
    }

LABEL_20:

LABEL_21:
    sub_1C5A01940();
  }

  return result;
}

uint64_t sub_1C59FF414(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_1C5BCB214();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    sub_1C5BCB1E4();

    v9 = sub_1C5BCB1D4();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    *(v10 + 16) = v9;
    *(v10 + 24) = v11;
    *(v10 + 32) = v5;
    *(v10 + 40) = v7;
    sub_1C5AD0FB8(0, 0, v4, &unk_1C5BD80B0, v10);
  }

  return result;
}

uint64_t sub_1C59FF574(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  sub_1C5BCB1E4();
  *(v5 + 24) = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C59FF610, v7, v6);
}

uint64_t sub_1C59FF610()
{
  v15 = v0;

  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = sub_1C5BC7D64();
  __swift_project_value_buffer(v3, qword_1EDA5DB60);
  sub_1C5BCBA94();

  v13 = 0xD000000000000027;
  v14 = 0x80000001C5BF7320;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1C694F170](v4, v5);

  v6 = v13;
  v7 = v14;
  v9 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
  v8 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);

  v10 = sub_1C5BCB4C4();
  v13 = v9;
  v14 = v8;
  sub_1C5ACCC10(v10, v6, v7, &v13);

  sub_1C5A011F8();
  sub_1C5A01940();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1C59FF7A0(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1C5BC7D64();
    __swift_project_value_buffer(v4, qword_1EDA5DB60);
    sub_1C5BCBA94();

    v16 = 0xD000000000000022;
    v17 = 0x80000001C5BF72F0;
    if (v1)
    {
      v5 = 1702195828;
    }

    else
    {
      v5 = 0x65736C6166;
    }

    if (v1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }

    MEMORY[0x1C694F170](v5, v6);

    v7 = v16;
    v8 = v17;
    v10 = *(v3 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
    v9 = *(v3 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);

    v11 = sub_1C5BCB4C4();
    v16 = v10;
    v17 = v9;
    sub_1C5ACCC10(v11, v7, v8, &v16);

    v12 = *(v3 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayState);
    if (v1 == *(v12 + 17))
    {
      *(v12 + 17) = v1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v16 = v12;
      sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);

      sub_1C5BC7B64();
    }

    v14 = *(v3 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_stateObserver);
    if (v14)
    {
      if (v1 != *(v14 + 17))
      {
        v15 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v15);
        v16 = v14;
        sub_1C5A04138(&qword_1EC191E88, type metadata accessor for MotionViewStateObserver);

        sub_1C5BC7B64();
      }

      *(v14 + 17) = v1;
    }
  }

  return result;
}

uint64_t sub_1C59FFB24()
{
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1C5BC7D64();
  __swift_project_value_buffer(v1, qword_1EDA5DB60);
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_1C5BCBA94();
  MEMORY[0x1C694F170](0xD000000000000031, 0x80000001C5BF7280);
  sub_1C5BCBBA4();
  MEMORY[0x1C694F170](41, 0xE100000000000000);
  v3 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
  v2 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);

  v4 = sub_1C5BCB4C4();
  v6 = v3;
  v7 = v2;
  sub_1C5ACCC10(v4, 0, 0xE000000000000000, &v6);

  sub_1C5A0520C(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_asset, type metadata accessor for MotionAsset);

  MEMORY[0x1C6951220](v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_view);

  sub_1C5924EF4(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_scenePhase, &qword_1EC1934C8);

  return v0;
}

uint64_t sub_1C59FFD18()
{
  sub_1C59FFB24();

  return swift_deallocClassInstance();
}

void sub_1C59FFD94()
{
  type metadata accessor for MotionAsset();
  if (v0 <= 0x3F)
  {
    sub_1C5A04018(319, &qword_1EC1933A8, MEMORY[0x1E697BE48], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C59FFEF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_contentObserver;
  v3 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_contentObserver);
  if (v3)
  {
    swift_getKeyPath();
    sub_1C5A04138(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);

    sub_1C5BC7B74();

    v4 = *(v3 + 16);
    v5 = v4;

    v6 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator);
    v9 = *(v6 + 16);
    v8 = (v6 + 16);
    v7 = v9;
    if (v4)
    {
      if (!v7)
      {
        v17 = 0;

        if (!*(v1 + v2))
        {
          return;
        }

LABEL_8:
        v14 = *v8;

        v15 = v14;
        sub_1C5A038DC(v14);

        return;
      }

      v18 = v7;
      sub_1C592535C(0, &qword_1EC193478);
      v10 = v18;
      v11 = sub_1C5BCB744();

      if (v11)
      {
        return;
      }

LABEL_7:
      if (!*(v1 + v2))
      {
        return;
      }

      goto LABEL_8;
    }

    if (v7)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v12 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator);
    v13 = *(v12 + 16);
    v8 = (v12 + 16);
    v7 = v13;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v16 = v7;
}

void sub_1C5A000A8(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayScale);
  *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayScale) = a1;
  if (v2 != a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayState);
    if ((*(v3 + 40) & 1) == 0)
    {
      v4 = *(v3 + 24);
      if (v4.f64[0] != 0.0 || v4.f64[1] != 0.0)
      {
        v5 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator) + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_looperItemResolution;
        *v5 = vmulq_n_f64(v4, a1);
        *(v5 + 16) = 0;
        sub_1C5A665EC();
      }
    }
  }
}

uint64_t sub_1C5A00134(uint64_t a1)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1935A8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v48 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934C8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v48 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v48 - v12;
  v14 = sub_1C5BC81D4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v53 = v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v48 - v20;
  v22 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_scenePhase;
  swift_beginAccess();
  v54 = v2;
  sub_1C59400B0(v2 + v22, v13, &qword_1EC1934C8);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) == 1)
  {
    return sub_1C5924EF4(v13, &qword_1EC1934C8);
  }

  v51 = v23;
  v25 = *(v15 + 32);
  v25(v21, v13, v14);
  v49 = *(v15 + 16);
  v50 = v21;
  v48[1] = v15 + 16;
  v49(v11, v21, v14);
  v52 = v15;
  (*(v15 + 56))(v11, 0, 1, v14);
  v26 = *(v3 + 48);
  sub_1C59400B0(v11, v5, &qword_1EC1934C8);
  v27 = v51;
  sub_1C59400B0(v57, &v5[v26], &qword_1EC1934C8);
  if (v27(v5, 1, v14) == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1934C8);
    if (v27(&v5[v26], 1, v14) == 1)
    {
      sub_1C5924EF4(v5, &qword_1EC1934C8);
      return (*(v52 + 8))(v50, v14);
    }

    goto LABEL_8;
  }

  v28 = v55;
  sub_1C59400B0(v5, v55, &qword_1EC1934C8);
  if (v27(&v5[v26], 1, v14) == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1934C8);
    (*(v52 + 8))(v28, v14);
LABEL_8:
    sub_1C5924EF4(v5, &qword_1EC1935A8);
    goto LABEL_9;
  }

  v44 = v28;
  v45 = v53;
  v25(v53, &v5[v26], v14);
  sub_1C5A04138(&qword_1EDA467E8, MEMORY[0x1E697BE48]);
  v46 = sub_1C5BCADB4();
  v47 = *(v52 + 8);
  v47(v45, v14);
  sub_1C5924EF4(v11, &qword_1EC1934C8);
  v47(v44, v14);
  sub_1C5924EF4(v5, &qword_1EC1934C8);
  if (v46)
  {
    return (v47)(v50, v14);
  }

LABEL_9:
  v29 = v56;
  v30 = v49;
  v31 = v50;
  v49(v56, v50, v14);
  v32 = v52;
  v33 = (*(v52 + 88))(v29, v14);
  if (v33 == *MEMORY[0x1E697BE30] || v33 == *MEMORY[0x1E697BE40])
  {
    if (v51(v57, 1, v14) == 1)
    {
      return (*(v32 + 8))(v31, v14);
    }

LABEL_16:
    sub_1C5A01940();
    return (*(v32 + 8))(v31, v14);
  }

  if (v33 == *MEMORY[0x1E697BE38])
  {
    goto LABEL_16;
  }

  v34 = v54;
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v35 = sub_1C5BC7D64();
  __swift_project_value_buffer(v35, qword_1EDA5DB60);
  v58 = 0;
  v59 = 0xE000000000000000;
  sub_1C5BCBA94();

  v58 = 0xD00000000000002ALL;
  v59 = 0x80000001C5BF7430;
  v30(v53, v31, v14);
  v36 = sub_1C5BCAEA4();
  MEMORY[0x1C694F170](v36);

  v37 = v58;
  v38 = v59;
  v39 = v34 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext;
  v40 = *(v34 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
  v41 = *(v39 + 8);

  v42 = sub_1C5BCB4E4();
  v58 = v40;
  v59 = v41;
  sub_1C5ACCC10(v42, v37, v38, &v58);

  v43 = *(v32 + 8);
  v43(v31, v14);

  return (v43)(v29, v14);
}

uint64_t sub_1C5A00848(unsigned __int8 a1)
{
  v2 = v1;
  v3 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934D0);
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v73[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934D8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v86 = &v73[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x1EEE9AC00](v7);
  v85 = &v73[-v10];
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v73[-v11];
  v13 = type metadata accessor for LooperConfigurator.CommandExecution(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v84 = &v73[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v73[-v18];
  v20 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackCommand;
  v21 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackCommand);
  if (v21 == 4)
  {
    if (v3 == 4)
    {
      return result;
    }
  }

  else if (v21 == v3)
  {
    goto LABEL_8;
  }

  v88 = result;
  v83 = &v73[-v18];
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v22 = sub_1C5BC7D64();
  __swift_project_value_buffer(v22, qword_1EDA5DB60);
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_1C5BCBA94();

  v92 = 0xD00000000000001ELL;
  v93 = 0x80000001C5BF71F0;
  LOBYTE(v90) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934E0);
  v23 = sub_1C5BCAEA4();
  MEMORY[0x1C694F170](v23);

  MEMORY[0x1C694F170](0x203A6F7420, 0xE500000000000000);
  LOBYTE(v90) = *(v1 + v20);
  v24 = sub_1C5BCAEA4();
  MEMORY[0x1C694F170](v24);

  v25 = v92;
  v26 = v93;
  v27 = *(v2 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
  v28 = *(v2 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);

  v29 = sub_1C5BCB4C4();
  v92 = v27;
  v93 = v28;
  sub_1C5ACCC10(v29, v25, v26, &v92);

  v3 = *(v2 + v20);
  v19 = v83;
  result = v88;
  if (v3 != 4)
  {
LABEL_8:
    v30 = *(v2 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayState);
    if (*(v30 + 40))
    {
      return result;
    }

    v32 = *(v30 + 24);
    v31 = *(v30 + 32);
    v33 = *(v2 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator);
    v34 = *(v33 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID + 8);
    v76 = *(v33 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID);
    v83 = v34;
    v35 = *(v2 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);
    v80 = *(v2 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
    v82 = v35;
    v36 = *(result + 20);
    v37 = result;
    v88 = result;
    v75 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_asset;
    sub_1C5A050CC(v2 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_asset, &v19[v36], type metadata accessor for MotionAsset);
    *v19 = v3;
    v38 = v4;
    v39 = v14;
    v40 = OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_lastCommandExecution;
    swift_beginAccess();
    sub_1C5A050CC(v19, v12, type metadata accessor for LooperConfigurator.CommandExecution);
    v77 = *(v39 + 56);
    v78 = v39 + 56;
    v77(v12, 0, 1, v37);
    v41 = *(v38 + 48);
    v81 = v33;
    v79 = v40;
    v42 = v33 + v40;
    v43 = v39;
    v44 = v87;
    sub_1C59400B0(v42, v87, &qword_1EC1934D8);
    v45 = v88;
    sub_1C59400B0(v12, &v44[v41], &qword_1EC1934D8);
    v46 = *(v43 + 48);
    if (v46(v44, 1, v45) == 1)
    {
      v47 = v82;

      sub_1C5924EF4(v12, &qword_1EC1934D8);
      v48 = v46(&v44[v41], 1, v45);
      v49 = v47;
      if (v48 == 1)
      {

        sub_1C5A0520C(v19, type metadata accessor for LooperConfigurator.CommandExecution);
        return sub_1C5924EF4(v44, &qword_1EC1934D8);
      }
    }

    else
    {
      v50 = v85;
      sub_1C59400B0(v44, v85, &qword_1EC1934D8);
      if (v46(&v44[v41], 1, v45) != 1)
      {
        v69 = v84;
        sub_1C5A051A4(&v44[v41], v84, type metadata accessor for LooperConfigurator.CommandExecution);
        v70 = v50;
        if (*v50 == *v69)
        {
          v71 = *(v45 + 20);
          v72 = v82;

          v74 = sub_1C5A5E2B0(v70 + v71, &v69[v71]);
          sub_1C5A0520C(v69, type metadata accessor for LooperConfigurator.CommandExecution);
          sub_1C5924EF4(v12, &qword_1EC1934D8);
          v45 = v88;
          sub_1C5A0520C(v70, type metadata accessor for LooperConfigurator.CommandExecution);
          v49 = v72;
          sub_1C5924EF4(v44, &qword_1EC1934D8);
          if (v74)
          {

LABEL_30:

            return sub_1C5A0520C(v19, type metadata accessor for LooperConfigurator.CommandExecution);
          }

LABEL_16:
          v53 = v86;
          sub_1C5A050CC(v19, v86, type metadata accessor for LooperConfigurator.CommandExecution);
          v77(v53, 0, 1, v45);
          v54 = v81;
          v55 = v79;
          swift_beginAccess();
          sub_1C5A05134(v53, v54 + v55);
          swift_endAccess();
          if (qword_1EDA4E1C0 != -1)
          {
            swift_once();
          }

          v56 = sub_1C5BC7D64();
          __swift_project_value_buffer(v56, qword_1EDA5DB60);
          v90 = 0;
          v91 = 0xE000000000000000;
          sub_1C5BCBA94();

          v90 = 0xD000000000000013;
          v91 = 0x80000001C5BF7210;
          v89 = v3;
          v57 = sub_1C5BCAEA4();
          MEMORY[0x1C694F170](v57);

          v58 = v90;
          v59 = v91;
          v60 = sub_1C5BCB4F4();
          v61 = v80;
          v90 = v80;
          v91 = v49;
          sub_1C5ACCC10(v60, v58, v59, &v90);

          if (v3 <= 1)
          {
            v62 = v83;
            if (v3)
            {
              v63 = *(v54 + 16);
              if (v63)
              {
                [v63 pause];
              }

              sub_1C5A5FCD0();
              v90 = v61;
              v91 = v49;
              v64 = v2 + v75;
              v65 = v32;
              v66 = v31;
              v67 = v76;
              v68 = v62;
              goto LABEL_25;
            }

LABEL_24:
            v90 = v61;
            v91 = v49;
            v64 = v2 + v75;
            v65 = v32;
            v66 = v31;
            v67 = v76;
            v68 = v62;
LABEL_25:
            sub_1C5A61488(v64, v67, v68, &v90, v65, v66);

            sub_1C5A0520C(v19, type metadata accessor for LooperConfigurator.CommandExecution);
          }

          v62 = v83;
          if (v3 == 2)
          {
            goto LABEL_24;
          }

          sub_1C5A65DE0();
          goto LABEL_30;
        }

        v49 = v82;

        sub_1C5A0520C(v69, type metadata accessor for LooperConfigurator.CommandExecution);
        sub_1C5924EF4(v12, &qword_1EC1934D8);
        sub_1C5A0520C(v50, type metadata accessor for LooperConfigurator.CommandExecution);
        v52 = v44;
        v51 = &qword_1EC1934D8;
        v45 = v88;
LABEL_15:
        sub_1C5924EF4(v52, v51);
        goto LABEL_16;
      }

      v49 = v82;

      sub_1C5924EF4(v12, &qword_1EC1934D8);
      sub_1C5A0520C(v50, type metadata accessor for LooperConfigurator.CommandExecution);
    }

    v51 = &qword_1EC1934D0;
    v52 = v44;
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1C5A011F8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = type metadata accessor for MotionAsset();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BC7A24();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5A050CC(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_asset, v7, type metadata accessor for MotionAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C5A0520C(v7, type metadata accessor for MotionAsset);
  }

  (*(v9 + 32))(v11, v7, v8);
  if ((sub_1C5BC7934() & 1) == 0 && *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_cacheDownloadPolicy) == 1 && (*(*(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayState) + 104) & 1) == 0)
  {
    v13 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator);
    if (!*(v13 + 16))
    {
      if (*(v13 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAssetRequestID + 8))
      {
        v14 = *(v13 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAssetRequestID);
        v15 = *(v13 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_currentAssetRequestID + 8);
      }

      else
      {
        v16 = (v13 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_nextAssetRequestID);
        v14 = *v16;
        v15 = v16[1];
      }

      v17 = qword_1EDA4E1C0;

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_1C5BC7D64();
      __swift_project_value_buffer(v18, qword_1EDA5DB60);
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_1C5BCBA94();

      v29 = 0xD000000000000022;
      v30 = 0x80000001C5BF7250;
      MEMORY[0x1C694F170](v14, v15);
      v27 = v14;
      v28 = v15;
      v19 = v29;
      v20 = v30;
      v21 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
      v22 = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);

      v23 = sub_1C5BCB4C4();
      v29 = v21;
      v30 = v22;
      sub_1C5ACCC10(v23, v19, v20, &v29);

      v24 = sub_1C5BCB214();
      (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v26 = v28;
      v25[4] = v27;
      v25[5] = v26;
      v25[6] = v1;

      sub_1C5A0BB28(0, 0, v4, &unk_1C5BD7F60, v25);

      sub_1C5924EF4(v4, &qword_1EC1930A0);
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1C5A015F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C5A0161C, 0, 0);
}

uint64_t sub_1C5A0161C()
{
  if (qword_1EC1909D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC19A688;
  *(v0 + 40) = qword_1EC19A688;

  return MEMORY[0x1EEE6DFA0](sub_1C5A016B4, v1, 0);
}

uint64_t sub_1C5A016B4()
{
  if (qword_1EC1909D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1C5A01744, v1, 0);
}

uint64_t sub_1C5A0176C()
{
  sub_1C5BCB1E4();
  *(v0 + 56) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A01800, v2, v1);
}

uint64_t sub_1C5A01800()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext;
  v0[8] = *(v1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
  v0[9] = *(v3 + 8);

  return MEMORY[0x1EEE6DFA0](sub_1C5A01890, v2, 0);
}

uint64_t sub_1C5A01890()
{
  v7 = v0;
  if (*(v0[6] + 56))
  {
    v1 = v0[9];
    v3 = v0[2];
    v2 = v0[3];
    v6[0] = v0[8];
    v6[1] = v1;

    sub_1C5B719D8(v3, v2, v6);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C5A01940()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934C8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v10 - v2;
  v4 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_scenePhase;
  swift_beginAccess();
  sub_1C59400B0(v0 + v4, v3, &qword_1EC1934C8);
  v5 = OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackCommand;
  LODWORD(v4) = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackCommand);
  v11 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_playbackPolicy);
  v6 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_displayState);
  v7 = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);
  v10[0] = *(v0 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
  v10[1] = v7;

  LOBYTE(v4) = sub_1C5A045FC(v3, v4, &v11, v6, v10);

  sub_1C5924EF4(v3, &qword_1EC1934C8);
  v8 = *(v0 + v5);
  *(v0 + v5) = v4;
  return sub_1C5A00848(v8);
}

void sub_1C5A01AA8()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {
    v3 = v2;
    [v0 frame];
    [v0 convertRect:v3 toCoordinateSpace:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      [Strong contentOffset];
      v15 = v14;
      [v13 contentOffset];
      v17 = v16;
      [v13 bounds];
      Width = CGRectGetWidth(v34);
      [v13 bounds];
      [v13 convertRect:v3 toCoordinateSpace:{v15, v17, Width, CGRectGetHeight(v35)}];
      v40.origin.x = v19;
      v40.origin.y = v20;
      v40.size.width = v21;
      v40.size.height = v22;
      v36.origin.x = v5;
      v36.origin.y = v7;
      v36.size.width = v9;
      v36.size.height = v11;
      v37 = CGRectIntersection(v36, v40);
      v23 = v37.size.width;
      height = v37.size.height;
    }

    else
    {
      [v3 frame];
      v41.origin.x = v25;
      v41.origin.y = v26;
      v41.size.width = v27;
      v41.size.height = v28;
      v38.origin.x = v5;
      v38.origin.y = v7;
      v38.size.width = v9;
      v38.size.height = v11;
      v39 = CGRectIntersection(v38, v41);
      v23 = v39.size.width;
      height = v39.size.height;
    }

    v29 = swift_weakLoadStrong();
    if (v29)
    {
      v30 = v23 != 0.0;
      if (height != 0.0)
      {
        v30 = 1;
      }

      v31 = *(v29 + 104);
      *(v29 + 104) = v30;
      if (v30 != v31)
      {
        sub_1C5BC7F34();
      }

      if (swift_weakLoadStrong())
      {
        [v1 frame];
        sub_1C5A033B4(v32, v33, v23, height);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1C5A01CD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v46 = &v33 - v3;
  v45 = sub_1C5BCAC24();
  v4 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934A8);
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v33 - v7;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934B0);
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = &v33 - v9;
  v10 = type metadata accessor for GeometryTrackingView();
  v49.receiver = v1;
  v49.super_class = v10;
  objc_msgSendSuper2(&v49, sel_didMoveToWindow);
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C5BCB984())
  {
    v11 = sub_1C5A4E9B8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CD0];
  }

  v12 = &v1[OBJC_IVAR____TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC20GeometryTrackingView_subscriptions];
  swift_beginAccess();
  v41 = v12;
  *v12 = v11;

  v13 = [v1 window];
  if (v13)
  {

    v14 = [v1 superview];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v37 = (v4 + 8);
      v38 = (v4 + 104);
      v36 = *MEMORY[0x1E69E7F90];
      v35 = (v6 + 8);
      v34 = (v8 + 8);
      v17 = v40;
      v18 = v43;
      do
      {
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31)
        {
          v19 = v31;
          swift_getKeyPath();
          v20 = v1;
          v21 = v15;
          sub_1C5BC7924();

          sub_1C592535C(0, &qword_1EDA4E620);
          v22 = *v38;
          v23 = v44;
          v47 = v16;
          v24 = v45;
          v22(v44, v36, v45);
          v25 = sub_1C5BCB5C4();
          (*v37)(v23, v24);
          v48 = v25;
          v26 = sub_1C5BCB594();
          v27 = v46;
          (*(*(v26 - 8) + 56))(v46, 1, 1, v26);
          sub_1C5924F54(&qword_1EC1934B8, &qword_1EC1934A8);
          sub_1C5931640();
          v28 = v39;
          sub_1C5BC80D4();
          sub_1C5924EF4(v27, &unk_1EC199F20);

          v1 = v20;
          (*v35)(v17, v18);
          swift_allocObject();
          swift_unknownObjectWeakInit();
          sub_1C5924F54(&qword_1EC1934C0, &qword_1EC1934B0);
          v29 = v42;
          sub_1C5BC8114();

          (*v34)(v28, v29);
          swift_beginAccess();
          sub_1C5BC7EE4();
          swift_endAccess();

          v16 = v19;
        }

        else
        {
          v32 = v15;
        }

        v30 = [v15 superview];

        v15 = v30;
      }

      while (v30);
    }

    else
    {
      v16 = 0;
    }

    swift_unknownObjectWeakAssign();
    sub_1C5A01AA8();
  }
}

uint64_t sub_1C5A022E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_1C5BCB214();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_1C5BCB1E4();

  v7 = sub_1C5BCB1D4();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a2;
  sub_1C5AD12A8(0, 0, v5, &unk_1C5BD7F30, v8);
}

uint64_t sub_1C5A02408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1C5BCB1E4();
  v4[7] = sub_1C5BCB1D4();
  v6 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C5A024A0, v6, v5);
}

uint64_t sub_1C5A024A0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1C5A01AA8();
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

id sub_1C5A02730(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C5A02794()
{
  swift_getKeyPath();
  sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

uint64_t sub_1C5A02834@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
  sub_1C5BC7B74();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_1C5A028DC(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A029EC()
{
  swift_getKeyPath();
  sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
  sub_1C5BC7B74();

  return *(v0 + 17);
}

uint64_t sub_1C5A02A8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
  sub_1C5BC7B74();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t sub_1C5A02B34(uint64_t result)
{
  if (*(v1 + 17) == (result & 1))
  {
    *(v1 + 17) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
    sub_1C5BC7B64();
  }

  return result;
}

uint64_t sub_1C5A02C44(uint64_t result, uint64_t a2, char a3)
{
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  v6 = *(v3 + 40);
  *(v3 + 24) = *&result;
  *(v3 + 32) = *&a2;
  *(v3 + 40) = a3 & 1;
  if ((a3 & 1) == 0)
  {
    if ((v6 & 1) != 0 || (v4 == *&result ? (v7 = v5 == *&a2) : (v7 = 0), !v7))
    {
      *&result = COERCE_DOUBLE(sub_1C5BC7F34());
    }
  }

  return result;
}

uint64_t sub_1C5A02CA8()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193490);
    sub_1C5924F54(&qword_1EC193498, &qword_1EC193490);
    v1 = sub_1C5BC8064();
    *(v0 + 56) = v1;
  }

  return v1;
}

uint64_t sub_1C5A02D6C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a2;
  *(v6 + 80) = a3;
  *(v6 + 56) = a1;
  *(v6 + 64) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1C5A02D90, 0, 0);
}

uint64_t sub_1C5A02D90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);

    *(v0 + 40) = v3;
    *(v0 + 48) = v2;
    sub_1C5BC7F34();
  }

  **(v0 + 56) = Strong == 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C5A02E54(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3 & 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = *(v3 + 64);
  v13 = *(v3 + 72);
  v14 = *(v3 + 80);
  *(v3 + 64) = *&a1;
  *(v3 + 72) = *&a2;
  *(v3 + 80) = v7;
  if ((a3 & 1) == 0)
  {
    if ((v14 & 1) != 0 || (v12 == *&a1 ? (v15 = v13 == *&a2) : (v15 = 0), !v15))
    {
      v16 = sub_1C5BCB214();
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = v17;
      *(v18 + 40) = *&a1;
      *(v18 + 48) = *&a2;
      sub_1C5A0BDD8(0, 0, v11, &unk_1C5BD7ED0, v18);

      return sub_1C5924EF4(v11, &qword_1EC1930A0);
    }
  }

  return result;
}

uint64_t sub_1C5A02FD4()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193490);
    sub_1C5924F54(&qword_1EC193498, &qword_1EC193490);
    v1 = sub_1C5BC8064();
    *(v0 + 96) = v1;
  }

  return v1;
}

uint64_t sub_1C5A03098()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193480);
    sub_1C5924F54(&qword_1EC193488, &qword_1EC193480);
    v1 = sub_1C5BC8064();
    *(v0 + 120) = v1;
  }

  return v1;
}

uint64_t sub_1C5A0315C()
{
  swift_getKeyPath();
  sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
  sub_1C5BC7B74();

  return *(v0 + 129);
}

uint64_t sub_1C5A031FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
  sub_1C5BC7B74();

  *a2 = *(v3 + 129);
  return result;
}

uint64_t sub_1C5A032A4(uint64_t result)
{
  if (*(v1 + 129) == (result & 1))
  {
    *(v1 + 129) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
    sub_1C5BC7B64();
  }

  return result;
}

void sub_1C5A033B4(double a1, double a2, double a3, double a4)
{
  if ((*(v4 + 40) & 1) != 0 || *(v4 + 24) != a1 || *(v4 + 32) != a2 || (*(v4 + 80) & 1) != 0 || *(v4 + 64) != a3 || *(v4 + 72) != a4)
  {
    swift_getKeyPath();
    sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
    sub_1C5BC7B74();

    if ((*(v4 + 16) & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1C5BC7B64();
    }

    sub_1C5A02C44(*&a1, *&a2, 0);
    sub_1C5A02E54(*&a3, *&a4, 0);
  }
}

uint64_t sub_1C5A03570()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI22MotionViewDisplayState___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1C5A03608()
{
  sub_1C5A03570();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A03688()
{
  result = sub_1C5BC7BB4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C5A0375C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193490);
  swift_allocObject();
  *(v0 + 48) = sub_1C5BC7F44();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  swift_allocObject();
  *(v0 + 88) = sub_1C5BC7F44();
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193480);
  swift_allocObject();
  *(v0 + 112) = sub_1C5BC7F44();
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  sub_1C5BC7BA4();
  return v0;
}

void *sub_1C5A03834()
{
  swift_getKeyPath();
  sub_1C5A04138(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1C5A038DC(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A04138(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    sub_1C5BC7B64();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C592535C(0, &qword_1EC193478);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C5BCB744();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

void sub_1C5A03A6C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = a2;
  v3 = a2;
}

void *sub_1C5A03AA0()
{
  swift_getKeyPath();
  sub_1C5A04138(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
  sub_1C5BC7B74();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_1C5A03B48(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5A04138(&qword_1EC193458, type metadata accessor for MaterialMotionContentObserver);
    sub_1C5BC7B64();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1C592535C(0, &qword_1EDA4E5E0);
  v5 = v4;
  v6 = a1;
  v7 = sub_1C5BCB744();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void sub_1C5A03CD8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = a2;
  v3 = a2;
}

uint64_t sub_1C5A03D0C()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI29MaterialMotionContentObserver___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A03DE0()
{
  result = sub_1C5BC7BB4();
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

void sub_1C5A03EC4()
{
  sub_1C5A04018(319, &qword_1EC193408, type metadata accessor for MotionViewDisplayState, MEMORY[0x1E697DA80]);
  if (v0 <= 0x3F)
  {
    sub_1C593377C(319, &qword_1EC193410, &qword_1EC191EB8);
    if (v1 <= 0x3F)
    {
      sub_1C5933828(319, &qword_1EC193418);
      if (v2 <= 0x3F)
      {
        sub_1C5A04018(319, qword_1EDA48478, type metadata accessor for MotionViewStateObserver, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for MotionEnabledState();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C5A04018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C5A04098(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(type metadata accessor for MotionPlayerView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C59FC4E4(a1, a2, v6);
}

uint64_t sub_1C5A04138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C5A041D0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MotionPlayerView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1C5A04244(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC193448);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C5A042B4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_1C5A042EC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

uint64_t sub_1C5A04334(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C592A748;

  return sub_1C5A02D6C(a1, v7, v8, v4, v5, v6);
}

uint64_t objectdestroy_192Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C5A04464(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5A02408(a1, v4, v5, v6);
}

id sub_1C5A04518()
{
  swift_weakInit();
  v1 = &v0[OBJC_IVAR____TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC20GeometryTrackingView_loggingContext];
  *v1 = 0;
  *(v1 + 1) = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C5BCB984())
  {
    v2 = sub_1C5A4E9B8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *&v0[OBJC_IVAR____TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC20GeometryTrackingView_subscriptions] = v2;
  swift_weakAssign();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for GeometryTrackingView();
  return objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
}

uint64_t sub_1C5A045FC(uint64_t a1, unsigned int a2, unsigned __int8 *a3, uint64_t a4, uint64_t *a5)
{
  v40 = a4;
  v41 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934C8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_1C5BC81D4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = *a3;
  v21 = *a5;
  v22 = a5[1];
  v39 = v21;
  sub_1C59400B0(a1, v10, &qword_1EC1934C8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C5924EF4(v10, &qword_1EC1934C8);
    return v41;
  }

  (*(v12 + 32))(v19, v10, v11);
  v24 = *(v12 + 16);
  v24(v17, v19, v11);
  v25 = (*(v12 + 88))(v17, v11);
  if (v25 == *MEMORY[0x1E697BE30])
  {
    (*(v12 + 8))(v19, v11);
    return 3;
  }

  if (v25 == *MEMORY[0x1E697BE40])
  {
    (*(v12 + 8))(v19, v11);
    return 1;
  }

  if (v25 != *MEMORY[0x1E697BE38])
  {
    v28 = v19;
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v29 = sub_1C5BC7D64();
    __swift_project_value_buffer(v29, qword_1EDA5DB60);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1C5BCBA94();

    v42 = 0xD00000000000001FLL;
    v43 = 0x80000001C5BF7230;
    v24(v38, v19, v11);
    v30 = sub_1C5BCAEA4();
    MEMORY[0x1C694F170](v30);

    v31 = v42;
    v32 = v43;
    v33 = sub_1C5BCB4E4();
    v42 = v39;
    v43 = v22;
    sub_1C5ACCC10(v33, v31, v32, &v42);

    v34 = *(v12 + 8);
    v34(v28, v11);
    v34(v17, v11);
    return v41;
  }

  swift_getKeyPath();
  v26 = v40;
  v42 = v40;
  sub_1C5A04138(&qword_1EC193450, type metadata accessor for MotionViewDisplayState);
  sub_1C5BC7B74();

  if (*(v26 + 129) == 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v37 - 2) = v26;
    *(&v37 - 8) = 0;
    v42 = v26;
    sub_1C5BC7B64();

    (*(v12 + 8))(v19, v11);
    return 0;
  }

  (*(v12 + 8))(v19, v11);
  if (v20 == 2)
  {
    if (*(v26 + 40) & 1) != 0 || (*(v26 + 80))
    {
      return v41;
    }

    if (*(v26 + 104) == 1)
    {
      v35 = *(v26 + 72) * *(v26 + 64) / (*(v26 + 32) * *(v26 + 24));
      if (v35 >= COERCE_DOUBLE(1) && v35 < 0.6)
      {
        return 1;
      }

      if (v35 < 0.6)
      {
        return 3;
      }

      else
      {
        return 2;
      }
    }

    else
    {
      result = v41;
      if (v41)
      {
        return 3;
      }
    }
  }

  else if (v20 == 3)
  {
    if (*(v26 + 104))
    {
      return 2;
    }

    else
    {
      return v41 != 0;
    }
  }

  else if (v20)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_1C5A04BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v34 - v3;
  v4 = type metadata accessor for MotionAsset();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C5BC7A24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = *(a1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_configurator);
  sub_1C5A5FCD0();
  sub_1C5A050CC(a1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_asset, v6, type metadata accessor for MotionAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C5A0520C(v6, type metadata accessor for MotionAsset);
  }

  v38 = *(v8 + 32);
  v38(v13, v6, v7);
  v16 = v7;
  if (sub_1C5BC7934())
  {
    if (qword_1EDA4E1C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C5BC7D64();
    __swift_project_value_buffer(v17, qword_1EDA5DB60);
    v18 = a1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext;
    v20 = *(a1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
    v19 = *(v18 + 8);

    v21 = sub_1C5BCB4C4();
    v40[0] = v20;
    v40[1] = v19;
    sub_1C5ACCC10(v21, 0xD000000000000045, 0x80000001C5BF73B0, v40);
    (*(v8 + 8))(v13, v16);
  }

  else
  {
    v22 = *(v14 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID);
    v36 = *(v14 + OBJC_IVAR____TtC11MediaCoreUI18LooperConfigurator_cacheBucketID + 8);
    v37 = v22;
    v23 = *(a1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext);
    v34 = *(a1 + OBJC_IVAR____TtCV11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC29MotionPlayerViewRepresentable11Coordinator_loggingContext + 8);
    v35 = v23;
    v24 = sub_1C5BCB214();
    v25 = v39;
    (*(*(v24 - 8) + 56))(v39, 1, 1, v24);
    (*(v8 + 16))(v11, v13, v16);
    v26 = v16;
    v27 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v28 = (v9 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0;
    v38((v29 + v27), v11, v26);
    v30 = (v29 + v28);
    v31 = v36;
    *v30 = v37;
    v30[1] = v31;
    v32 = (v29 + ((v28 + 23) & 0xFFFFFFFFFFFFFFF8));
    v33 = v34;
    *v32 = v35;
    v32[1] = v33;

    sub_1C5A0BB28(0, 0, v25, &unk_1C5BD80C8, v29);

    sub_1C5924EF4(v25, &qword_1EC1930A0);
    return (*(v8 + 8))(v13, v26);
  }
}

void sub_1C5A04FF4()
{
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC20GeometryTrackingView_loggingContext);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1C5BCB984())
  {
    v2 = sub_1C5A4E9B8(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  *(v0 + OBJC_IVAR____TtC11MediaCoreUIP33_5C0FCAEC7E121FD01840555B36210BDC20GeometryTrackingView_subscriptions) = v2;
  sub_1C5BCBBC4();
  __break(1u);
}

uint64_t sub_1C5A050CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5A05134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A051A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5A0520C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5A0526C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1C592A748;

  return sub_1C5A015F8(a1, v4, v5, v6, v7, v8);
}

void sub_1C5A0535C()
{
  type metadata accessor for MotionViewDisplayState(319);
  if (v0 <= 0x3F)
  {
    sub_1C5A04018(319, qword_1EDA48478, type metadata accessor for MotionViewStateObserver, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1C593377C(319, &qword_1EC1934F8, &qword_1EC193500);
      if (v2 <= 0x3F)
      {
        sub_1C5933828(319, &qword_1EDA46720);
        if (v3 <= 0x3F)
        {
          sub_1C5933828(319, &qword_1EC193418);
          if (v4 <= 0x3F)
          {
            sub_1C593377C(319, &qword_1EC193410, &qword_1EC191EB8);
            if (v5 <= 0x3F)
            {
              sub_1C5933828(319, &qword_1EC193508);
              if (v6 <= 0x3F)
              {
                sub_1C5933828(319, &qword_1EC193510);
                if (v7 <= 0x3F)
                {
                  sub_1C5933828(319, &qword_1EC193518);
                  if (v8 <= 0x3F)
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
}

uint64_t sub_1C5A055C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1C592A748;

  return sub_1C59FF574(a1, v4, v5, v6, v7);
}

uint64_t sub_1C5A0568C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1C5BC7A24() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = (v1 + v7);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v8);
  v15 = *(v1 + v8 + 8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1C592A748;

  return sub_1C59FE9B0(a1, v9, v10, v1 + v6, v12, v13, v14, v15);
}

unint64_t sub_1C5A057E0()
{
  result = qword_1EDA463D8;
  if (!qword_1EDA463D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA463D8);
  }

  return result;
}

unint64_t sub_1C5A05834()
{
  result = qword_1EDA47580;
  if (!qword_1EDA47580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47580);
  }

  return result;
}

uint64_t sub_1C5A05888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1934C8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}