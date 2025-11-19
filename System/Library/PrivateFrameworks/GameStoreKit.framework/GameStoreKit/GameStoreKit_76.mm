uint64_t sub_24EDB8C84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t block_copy_helper_78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EDB8CC8()
{

  return swift_deallocObject();
}

uint64_t sub_24EDB8D2C()
{
  v1 = *(v0 + 16);
  sub_24E60C238(MEMORY[0x277D84F90]);
  v1();
}

uint64_t objectdestroy_33Tm_0()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_37()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_73Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_85Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_24EDB9018()
{

  return swift_deallocObject();
}

uint64_t sub_24EDB9120()
{
}

uint64_t sub_24EDB9150()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArcadeFooterViewModel()
{
  result = qword_27F22F9A0;
  if (!qword_27F22F9A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EDB924C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9C0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9C8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  if (a2)
  {
    sub_24F927558();
    v30 = a3;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D8);
    v29 = v6;
    v15 = v14;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9E0);
    v28 = v9;
    v16 = sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0);
    v17 = sub_24EDBB038();
    v26 = sub_24EDBB238();
    sub_24F926AF8();
    v18 = v28;
    (*(v10 + 16))(v8, v12, v28);
    swift_storeEnumTagMultiPayload();
    v31 = v13;
    v32 = MEMORY[0x277CE1350];
    v33 = v15;
    v34 = v27;
    v35 = v16;
    v36 = MEMORY[0x277CE1340];
    v37 = v17;
    v38 = v26;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v10 + 8))(v12, v18);
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0);
    (*(*(v20 - 8) + 16))(v8, a1, v20);
    swift_storeEnumTagMultiPayload();
    v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9E0);
    v23 = sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0);
    v24 = sub_24EDBB038();
    v25 = sub_24EDBB238();
    v31 = v20;
    v32 = MEMORY[0x277CE1350];
    v33 = v21;
    v34 = v22;
    v35 = v23;
    v36 = MEMORY[0x277CE1340];
    v37 = v24;
    v38 = v25;
    swift_getOpaqueTypeConformance2();
    return sub_24F924E28();
  }
}

uint64_t sub_24EDB9658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v57 = a2;
  v62 = sub_24F924258();
  MEMORY[0x28223BE20](v62);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24F927538();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24F927148();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA40);
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v10 = &v52 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA48);
  MEMORY[0x28223BE20](v58);
  v59 = &v52 - v11;
  v12 = sub_24F927418();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA00);
  MEMORY[0x28223BE20](v63);
  v17 = &v52 - v16;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_27F2301A8 == 1)
  {
    v56 = sub_24F926C98();
    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];

    v20 = [v18 mainScreen];
    [v20 bounds];

    sub_24F927618();
    sub_24F9238C8();
    v55 = v68;
    v21 = v69;
    v22 = v70;
    v23 = v71;
    v24 = v72;
    v54 = v73;
    sub_24F9273F8();
    v25 = &v17[*(v63 + 36)];
    v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA50) + 36)];
    sub_24F927448();
    (*(v13 + 8))(v15, v12);
    v27 = sub_24F925808();
    v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)] = v27;
    v28 = v55;
    *v25 = v56;
    *(v25 + 1) = v28;
    v25[16] = v21;
    *(v25 + 3) = v22;
    v25[32] = v23;
    v29 = v54;
    *(v25 + 5) = v24;
    *(v25 + 6) = v29;
    v30 = sub_24F927618();
    v32 = v31;
    v33 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA10) + 36)];
    *v33 = v30;
    v33[1] = v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0);
    (*(*(v34 - 8) + 16))(v17, v60, v34);
    sub_24E60169C(v17, v59, &qword_27F22FA00);
    swift_storeEnumTagMultiPayload();
    sub_24EDBB154();
    v35 = sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0);
    v36 = sub_24EB67ED0();
    v64 = v34;
    v65 = v62;
    v66 = v35;
    v67 = v36;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return sub_24E601704(v17, &qword_27F22FA00);
  }

  else
  {
    sub_24F9273F8();
    sub_24F927448();
    (*(v13 + 8))(v15, v12);
    sub_24F927138();
    (*(v4 + 8))(v6, v53);
    v38 = v62;
    v39 = *(v62 + 20);
    v40 = *MEMORY[0x277CE0118];
    v41 = sub_24F924B38();
    (*(*(v41 - 8) + 104))(&v3[v39], v40, v41);
    __asm { FMOV            V0.2D, #30.0 }

    *v3 = _Q0;
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0);
    v48 = sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0);
    v49 = sub_24EB67ED0();
    sub_24F926248();
    sub_24E6EB974(v3);
    (*(v54 + 8))(v8, v55);
    v50 = v56;
    v51 = v61;
    (*(v56 + 16))(v59, v10, v61);
    swift_storeEnumTagMultiPayload();
    sub_24EDBB154();
    v68 = v47;
    v69 = v38;
    v70 = v48;
    v71 = v49;
    swift_getOpaqueTypeConformance2();
    sub_24F924E28();
    return (*(v50 + 8))(v10, v51);
  }
}

uint64_t sub_24EDB9EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24F926C08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F926C98();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0EE0], v4);
  v9 = sub_24F926D48();
  LOBYTE(v7) = sub_24F925808();
  v10 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9E0) + 36);
  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA30) + 36);
  sub_24F927438();
  v12 = sub_24F925808();
  *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)) = v12;
  *v10 = v8;
  *(v10 + 8) = v9;
  *(v10 + 16) = v7;
  v13 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA38) + 36));
  v14 = *(sub_24F924258() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #30.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  v22 = sub_24F927618();
  v24 = v23;
  v25 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA28) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22F9D0);
  return (*(*(v26 - 8) + 16))(a2, a1, v26);
}

uint64_t sub_24EDBA148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v66 = a3;
  v65 = a2;
  v70 = a1;
  v71 = a4;
  v63 = sub_24F924258();
  MEMORY[0x28223BE20](v63);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_24F927538();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24F927148();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAA8);
  MEMORY[0x28223BE20](v69);
  v14 = &v59 - v13;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAE0);
  MEMORY[0x28223BE20](v67);
  v68 = &v59 - v15;
  v16 = sub_24F927418();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA88);
  MEMORY[0x28223BE20](v72);
  v21 = &v59 - v20;
  if (qword_27F210748 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = byte_27F2301A8;
  v23 = sub_24F926C98();
  v64 = v23;
  if (v22 == 1)
  {
    v24 = objc_opt_self();
    v25 = [v24 mainScreen];
    [v25 bounds];

    v26 = [v24 mainScreen];
    [v26 bounds];

    sub_24F927618();
    sub_24F9238C8();
    v27 = v75;
    v28 = v76;
    v29 = v77;
    v30 = v78;
    v63 = v79;
    v62 = v80;
    sub_24F9273F8();
    v31 = &v21[*(v72 + 36)];
    v32 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAF0) + 36)];
    sub_24F927448();
    (*(v17 + 8))(v19, v16);
    v74[0] = v65;
    v74[1] = v66;
    *&v74[2] = a5;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058);
    MEMORY[0x25304CAF0](&v73, v33);
    v34 = v73;
    *&v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2127C0) + 36)] = v34;
    v35 = sub_24F925808();
    v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229070) + 36)] = v35;
    *v31 = v64;
    *(v31 + 1) = v27;
    v31[16] = v28;
    *(v31 + 3) = v29;
    v31[32] = v30;
    v36 = v62;
    *(v31 + 5) = v63;
    *(v31 + 6) = v36;
    v37 = sub_24F927618();
    v39 = v38;
    v40 = &v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA98) + 36)];
    *v40 = v37;
    v40[1] = v39;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA58);
    (*(*(v41 - 8) + 16))(v21, v70, v41);
    sub_24E60169C(v21, v68, &qword_27F22FA88);
    swift_storeEnumTagMultiPayload();
    sub_24EDBB3C0();
    sub_24EDBB4A4();
    sub_24F924E28();
    return sub_24E601704(v21, &qword_27F22FA88);
  }

  else
  {
    v75 = v23;
    sub_24F9273F8();
    sub_24F927448();
    (*(v17 + 8))(v19, v16);
    sub_24F927138();
    (*(v8 + 8))(v10, v60);
    v43 = *(v63 + 20);
    v44 = *MEMORY[0x277CE0118];
    v45 = sub_24F924B38();
    (*(*(v45 - 8) + 104))(&v7[v43], v44, v45);
    __asm { FMOV            V0.2D, #30.0 }

    *v7 = _Q0;
    v51 = &v14[*(v69 + 36)];
    sub_24EB67ED0();
    sub_24F926248();
    sub_24E6EB974(v7);
    (*(v61 + 8))(v12, v62);

    v75 = v65;
    v76 = v66;
    v77 = a5;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058);
    MEMORY[0x25304CAF0](v74, v52);
    v53 = v74[0];
    *&v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAE8) + 36)] = v53;
    v54 = sub_24F927618();
    v56 = v55;
    v57 = &v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAB8) + 36)];
    *v57 = v54;
    v57[1] = v56;
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA58);
    (*(*(v58 - 8) + 16))(v14, v70, v58);
    sub_24EDBB66C(v14, v68);
    swift_storeEnumTagMultiPayload();
    sub_24EDBB3C0();
    sub_24EDBB4A4();
    sub_24F924E28();
    return sub_24EDBB6DC(v14);
  }
}

uint64_t sub_24EDBA9D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_24F926C08();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_24F926C98();
  (*(v11 + 104))(v13, *MEMORY[0x277CE0EE0], v10);
  v15 = sub_24F926D48();
  LOBYTE(v13) = sub_24F925808();
  v16 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA68) + 36);
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA30) + 36);
  sub_24F927438();
  v18 = sub_24F925808();
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217870) + 36)) = v18;
  *v16 = v14;
  *(v16 + 8) = v15;
  *(v16 + 16) = v13;
  v19 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA38) + 36));
  v20 = *(sub_24F924258() + 20);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_24F924B38();
  (*(*(v22 - 8) + 104))(&v19[v20], v21, v22);
  __asm { FMOV            V0.2D, #30.0 }

  *v19 = _Q0;
  *&v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  v36[1] = a2;
  v36[2] = a3;
  *&v36[3] = a5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229058);
  MEMORY[0x25304CAF0](v36, v28);
  v29 = v36[0];
  *(v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAD8) + 36)) = v29;
  v30 = sub_24F927618();
  v32 = v31;
  v33 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAD0) + 36));
  *v33 = v30;
  v33[1] = v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA58);
  return (*(*(v34 - 8) + 16))(a4, a1, v34);
}

uint64_t sub_24EDBACC8()
{
  sub_24F927558();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FA68);
  sub_24E602068(&qword_27F22FA70, &qword_27F22FA58);
  sub_24EDBB334();
  sub_24EDBB588();
  return sub_24F926AF8();
}

uint64_t View.glassPlatter(opacity:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5[0] = a1;
  v5[1] = a2;
  *&v5[2] = a4;
  return MEMORY[0x25304C420](v5, a3, &type metadata for GlassPlatterWithOpacityModifier);
}

unint64_t sub_24EDBAEA8()
{
  result = qword_27F22F9B0;
  if (!qword_27F22F9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F9B0);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx12GameStoreKit20GlassPlatterModifierVGAaBHPxAaBHD1__AgA0cK0HPyHCHCTm(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_24F924038();
  a3();
  return swift_getWitnessTable();
}

unint64_t sub_24EDBAF8C()
{
  result = qword_27F22F9B8;
  if (!qword_27F22F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F9B8);
  }

  return result;
}

unint64_t sub_24EDBB038()
{
  result = qword_27F22F9F0;
  if (!qword_27F22F9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D8);
    sub_24EDBB154();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D0);
    sub_24F924258();
    sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0);
    sub_24EB67ED0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F9F0);
  }

  return result;
}

unint64_t sub_24EDBB154()
{
  result = qword_27F22F9F8;
  if (!qword_27F22F9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA00);
    sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0);
    sub_24E602068(&qword_27F22FA08, &qword_27F22FA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22F9F8);
  }

  return result;
}

unint64_t sub_24EDBB238()
{
  result = qword_27F22FA18;
  if (!qword_27F22FA18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9E0);
    sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0);
    sub_24E602068(&qword_27F22FA20, &qword_27F22FA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FA18);
  }

  return result;
}

unint64_t sub_24EDBB334()
{
  result = qword_27F22FA78;
  if (!qword_27F22FA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA60);
    sub_24EDBB3C0();
    sub_24EDBB4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FA78);
  }

  return result;
}

unint64_t sub_24EDBB3C0()
{
  result = qword_27F22FA80;
  if (!qword_27F22FA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA88);
    sub_24E602068(&qword_27F22FA70, &qword_27F22FA58);
    sub_24E602068(&qword_27F22FA90, &qword_27F22FA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FA80);
  }

  return result;
}

unint64_t sub_24EDBB4A4()
{
  result = qword_27F22FAA0;
  if (!qword_27F22FAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FAA8);
    sub_24E602068(&qword_27F22FA70, &qword_27F22FA58);
    sub_24E602068(&qword_27F22FAB0, &qword_27F22FAB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FAA0);
  }

  return result;
}

unint64_t sub_24EDBB588()
{
  result = qword_27F22FAC0;
  if (!qword_27F22FAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA68);
    sub_24E602068(&qword_27F22FA70, &qword_27F22FA58);
    sub_24E602068(&qword_27F22FAC8, &qword_27F22FAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FAC0);
  }

  return result;
}

uint64_t sub_24EDBB66C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDBB6DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FAA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EDBB748()
{
  result = qword_27F22FAF8;
  if (!qword_27F22FAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22F9E0);
    sub_24E602068(&qword_27F22F9E8, &qword_27F22F9D0);
    sub_24EDBB038();
    sub_24EDBB238();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FAF8);
  }

  return result;
}

uint64_t sub_24EDBB8A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA58);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA60);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FA68);
  sub_24E602068(&qword_27F22FA70, &qword_27F22FA58);
  sub_24EDBB334();
  sub_24EDBB588();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24EDBB9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EDBBA90(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for FriendRequestOverlayComponentGrid()
{
  result = qword_27F22FB08;
  if (!qword_27F22FB08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EDBBB8C()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
    if (v1 <= 0x3F)
    {
      sub_24E61C938();
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F22FB18, &qword_27F21BE38);
        if (v3 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F21F938, &qword_27F21BE90);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24EDBBCA0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FBC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDBD05C();
  sub_24F92D128();
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24EDBD220();
    sub_24F92CD48();
    v9 = type metadata accessor for FriendRequestOverlayComponentGrid();
    v14 = 2;
    sub_24F929608();
    sub_24EDBD2D0(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB58);
    sub_24EDBD318();
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    sub_24EDBD3C8();
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EDBBFA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FBA0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v7 = &v25 - v6;
  v8 = type metadata accessor for FriendRequestOverlayComponentGrid();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v10 + 40) = 0u;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 9) = 0;
  v32 = v10 + 40;
  sub_24E61DA68(&v33, (v10 + 40), qword_27F21B590);
  v11 = v8[6];
  v12 = sub_24F929608();
  v13 = *(*(v12 - 8) + 56);
  v30 = v11;
  v13(&v10[v11], 1, 1, v12);
  v14 = &v10[v8[7]];
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0;
  sub_24E61DA68(&v33, v14, &qword_27F2171D0);
  v15 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24EDBD05C();
  v27 = v7;
  v16 = v29;
  sub_24F92D108();
  if (v16)
  {
    v17 = v32;
    __swift_destroy_boxed_opaque_existential_1(v31);
    v18 = v30;
    sub_24E601704(v17, qword_27F24EC90);
    sub_24E601704(&v10[v18], &qword_27F213E68);
    return sub_24E601704(v14, &qword_27F22FB58);
  }

  else
  {
    v29 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v36 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v19 = v34;
    *v10 = v33;
    *(v10 + 1) = v19;
    *(v10 + 4) = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v36 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v20 = v26;
    sub_24E61DA68(&v33, v32, qword_27F24EC90);
    LOBYTE(v33) = 2;
    sub_24EDBD2D0(&qword_27F213F48, MEMORY[0x277D21F70]);
    v21 = v29;
    sub_24F92CC18();
    sub_24E61DA68(v21, &v10[v30], &qword_27F213E68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB58);
    v36 = 3;
    sub_24EDBD0B0();
    v22 = v27;
    sub_24F92CC68();
    sub_24E61DA68(&v33, v14, &qword_27F22FB58);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F8A0);
    v36 = 4;
    sub_24E9D8C44();
    v23 = v28;
    sub_24F92CC68();
    (*(v20 + 8))(v22, v23);
    *&v10[v8[8]] = v33;
    sub_24EDBD160(v10, v25);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return sub_24EDBD1C4(v10);
  }
}

unint64_t sub_24EDBC560()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0x6461654864697267;
  if (v1 != 3)
  {
    v4 = 0x6552646E65697266;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6575676573;
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

uint64_t sub_24EDBC600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EDBD704(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EDBC628(uint64_t a1)
{
  v2 = sub_24EDBD05C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDBC664(uint64_t a1)
{
  v2 = sub_24EDBD05C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EDBC720()
{
  result = qword_27F22FB20;
  if (!qword_27F22FB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FB20);
  }

  return result;
}

uint64_t sub_24EDBC774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB50);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-1] - v11;
  v13 = type metadata accessor for FriendRequestOverlayComponentGrid();
  sub_24E60169C(a1 + *(v13 + 28), &v27, &qword_27F22FB58);
  if (*(&v28 + 1))
  {
    sub_24E612C80(&v27, v26);
    sub_24E615E00(v26, v24);
    type metadata accessor for GSKComponentContentBuilder();
    sub_24EDBD2D0(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
    v14 = sub_24F923598();
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v26);
    *&v23 = v14;
    BYTE8(v23) = v16 & 1;
    v28 = v24[0];
    v29 = v24[1];
    v30 = v25;
    v27 = v23;
  }

  else
  {
    sub_24E601704(&v27, &qword_27F2171D0);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
  }

  *&v23 = *(a1 + *(v13 + 32));
  swift_getKeyPath();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24EDBCEE0;
  *(v18 + 24) = v17;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB68);
  sub_24EDBCF20();
  sub_24EDBCFD0();
  sub_24F927228();
  sub_24E60169C(&v27, &v23, &qword_27F22FB90);
  v19 = *(v7 + 16);
  v19(v9, v12, v6);
  sub_24E60169C(&v23, a2, &qword_27F22FB90);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB98);
  v19((a2 + *(v20 + 48)), v9, v6);
  v21 = *(v7 + 8);
  v21(v12, v6);
  sub_24E601704(&v27, &qword_27F22FB90);
  v21(v9, v6);
  return sub_24E601704(&v23, &qword_27F22FB90);
}

double sub_24EDBCB30@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_24E615E00(a1, a2 + 16);
  type metadata accessor for GSKComponentContentBuilder();
  sub_24EDBD2D0(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder);
  *a2 = sub_24F923598();
  *(a2 + 8) = v3 & 1;
  sub_24F927618();
  sub_24F9238C8();
  *(a2 + 56) = v5;
  *(a2 + 72) = v6;
  result = *&v7;
  *(a2 + 88) = v7;
  return result;
}

__n128 sub_24EDBCC08@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*(a1 + *(type metadata accessor for FriendRequestOverlayComponentGrid() + 32)) + 16) <= 2uLL)
  {
    v4 = 0x4024000000000000;
  }

  else
  {
    v4 = 0x4034000000000000;
  }

  *a2 = sub_24F924C88();
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB38);
  sub_24EDBC774(a1, a2 + *(v5 + 44), 44.0);
  v6 = sub_24F925808();
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB40) + 36);
  *v7 = v6;
  __asm { FMOV            V0.2D, #14.0 }

  *(v7 + 8) = _Q0;
  *(v7 + 24) = _Q0;
  *(v7 + 40) = 0;
  v13 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FB48) + 36));
  v14 = *(sub_24F924258() + 20);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_24F924B38();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  __asm { FMOV            V0.2D, #24.0 }

  *v13 = result;
  return result;
}

uint64_t sub_24EDBCD40()
{
  sub_24EDBC720();

  return sub_24F9218E8();
}

unint64_t sub_24EDBCDD0()
{
  result = qword_27F22FB30;
  if (!qword_27F22FB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FB30);
  }

  return result;
}

uint64_t sub_24EDBCEE8()
{

  return swift_deallocObject();
}

unint64_t sub_24EDBCF20()
{
  result = qword_27F22FB70;
  if (!qword_27F22FB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB60);
    sub_24E602068(&qword_27F22FB78, &qword_27F22FB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FB70);
  }

  return result;
}

unint64_t sub_24EDBCFD0()
{
  result = qword_27F22FB88;
  if (!qword_27F22FB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB68);
    sub_24E66C1E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FB88);
  }

  return result;
}

unint64_t sub_24EDBD05C()
{
  result = qword_27F22FBA8;
  if (!qword_27F22FBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBA8);
  }

  return result;
}

unint64_t sub_24EDBD0B0()
{
  result = qword_27F22FBB0;
  if (!qword_27F22FBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB58);
    sub_24E602068(&qword_27F22FBB8, &qword_27F21BE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBB0);
  }

  return result;
}

uint64_t sub_24EDBD160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FriendRequestOverlayComponentGrid();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDBD1C4(uint64_t a1)
{
  v2 = type metadata accessor for FriendRequestOverlayComponentGrid();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EDBD220()
{
  result = qword_27F214048;
  if (!qword_27F214048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27F24EC90);
    sub_24E602068(&qword_27F214050, &qword_27F213EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214048);
  }

  return result;
}

uint64_t sub_24EDBD2D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24EDBD318()
{
  result = qword_27F22FBC8;
  if (!qword_27F22FBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB58);
    sub_24E602068(&qword_27F22FBD0, &qword_27F21BE38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBC8);
  }

  return result;
}

unint64_t sub_24EDBD3C8()
{
  result = qword_27F21F8A8;
  if (!qword_27F21F8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21F8A0);
    sub_24E602068(&qword_27F21F8B0, &qword_27F21BE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21F8A8);
  }

  return result;
}

unint64_t sub_24EDBD48C()
{
  result = qword_27F22FBD8;
  if (!qword_27F22FBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB48);
    sub_24EDBD544();
    sub_24E602068(&qword_27F217098, &qword_27F2170A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBD8);
  }

  return result;
}

unint64_t sub_24EDBD544()
{
  result = qword_27F22FBE0;
  if (!qword_27F22FBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FB40);
    sub_24E602068(&qword_27F22FBE8, &qword_27F22FBF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBE0);
  }

  return result;
}

unint64_t sub_24EDBD600()
{
  result = qword_27F22FBF8;
  if (!qword_27F22FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FBF8);
  }

  return result;
}

unint64_t sub_24EDBD658()
{
  result = qword_27F22FC00;
  if (!qword_27F22FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC00);
  }

  return result;
}

unint64_t sub_24EDBD6B0()
{
  result = qword_27F22FC08;
  if (!qword_27F22FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC08);
  }

  return result;
}

uint64_t sub_24EDBD704(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6461654864697267 && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6552646E65697266 && a2 == 0xEE00737473657571)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t CornerStyle.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EDBD950()
{
  result = qword_27F22FC10;
  if (!qword_27F22FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC10);
  }

  return result;
}

id sub_24EDBD9B4(id a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_24F92C2E8();
  v8 = v7;
  if (v7 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v10 = MEMORY[0x277D84F90];
    v36 = a3;
    v37 = a1;
    if (!i)
    {
      break;
    }

    v42[0] = MEMORY[0x277D84F90];
    result = sub_24F4578E0(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    v12 = 0;
    a3 = v42[0];
    v43 = v8 & 0xC000000000000001;
    v38 = i;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v43)
      {
        v14 = MEMORY[0x253052270](v12, v8);
      }

      else
      {
        if (v12 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v14 = *(v8 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = sub_24F92B328();
      if (v4)
      {

        return a1;
      }

      v18 = v16;
      a1 = v17;

      v42[0] = a3;
      v20 = a3[2];
      v19 = a3[3];
      v21 = a3;
      if (v20 >= v19 >> 1)
      {
        sub_24F4578E0((v19 > 1), v20 + 1, 1);
        v21 = v42[0];
      }

      v21[2] = v20 + 1;
      v22 = &v21[2 * v20];
      v22[4] = v18;
      v22[5] = a1;
      ++v12;
      v4 = 0;
      a3 = v21;
      if (v13 == v38)
      {

        v10 = MEMORY[0x277D84F90];
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  a3 = MEMORY[0x277D84F90];
LABEL_18:
  v43 = v4;
  v23 = a3[2];
  if (v23)
  {
    v42[0] = v10;
    sub_24F45814C(0, v23, 0);
    v24 = v10;
    v25 = a3 + 5;
    do
    {
      v27 = *(v25 - 1);
      v26 = *v25;
      v42[0] = v24;
      v28 = *(v24 + 16);
      v29 = *(v24 + 24);

      if (v28 >= v29 >> 1)
      {
        sub_24F45814C((v29 > 1), v28 + 1, 1);
        v24 = v42[0];
      }

      *(v24 + 16) = v28 + 1;
      v30 = v24 + 16 * v28;
      *(v30 + 32) = v27;
      *(v30 + 40) = v26;
      v25 += 2;
      --v23;
    }

    while (v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v31 = *(v36 + OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_24EDC0968(v31 + 24, v42);
  if (v42[3])
  {
    sub_24E615E00(v42, v39);
    sub_24E601704(v42, &qword_27F22FC18);
    v32 = v40;
    v33 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v34 = (*(v33 + 8))(v24, v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v39);
    v42[0] = v34;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EBD8);
    v35 = sub_24F92CF68();
    a1 = [objc_opt_self() valueWithObject:v35 inContext:v37];
    result = swift_unknownObjectRelease();
    if (!a1)
    {
      goto LABEL_36;
    }
  }

  else
  {
    sub_24E601704(v42, &qword_27F22FC18);
    result = [objc_opt_self() valueWithNullInContext_];
    if (!result)
    {
      goto LABEL_37;
    }

    a1 = result;
  }

  return a1;
}

uint64_t sub_24EDBDE5C(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9)
{
  v34 = a8;
  v17 = sub_24F92AC68();
  v35 = *(v17 - 8);
  v36 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a2;
  *(v20 + 40) = a5;
  *(v20 + 48) = a6;
  *(v20 + 56) = a7;
  v21 = sub_24F9298F8();
  v22 = a3;
  v23 = a4;
  v24 = a2;

  v26 = v21;
  v27 = MEMORY[0x25304F260](v25);
  if (!v27)
  {
    sub_24EA32FE4();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  v26 = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = a9;
  *(v28 + 24) = 0;
  *(v28 + 32) = v26;
  *(v28 + 40) = sub_24EDC114C;
  *(v28 + 48) = v20;
  v29 = a1;

  v30 = v37;
  sub_24F92AC48();

  if (v30)
  {
LABEL_5:

    return v26;
  }

  sub_24F92C048();
  sub_24F929778();
  v31 = sub_24F929768();
  sub_24F921FE8();

  v26 = sub_24F92AC58();

  (*(v35 + 8))(v19, v36);
  return v26;
}

char *sub_24EDBE0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, char a7)
{
  LOBYTE(v7) = a7;
  v11 = sub_24F92C2E8();
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v14 = MEMORY[0x277D84F90];
    v46 = a1;
    v47 = a5;
    v45 = v7;
    v48 = a6;
    if (!i)
    {
      break;
    }

    v66 = MEMORY[0x277D84F90];
    result = sub_24F458A60(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
      return result;
    }

    a6 = 0;
    a5 = v66;
    v67 = v12 & 0xFFFFFFFFFFFFFF8;
    v7 = i - 1;
    v16 = v50;
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x253052270](a6, v12);
      }

      else
      {
        if (a6 >= *(v67 + 16))
        {
          goto LABEL_39;
        }

        v17 = *(v12 + 8 * a6 + 32);
      }

      SponsoredSearchAdvert.init(_:)(v17, &v60);
      if (v16)
      {

        return v12;
      }

      v58 = v64;
      v59 = v65;
      v56 = v62;
      v57 = v63;
      v54 = v60;
      v55 = v61;
      v66 = a5;
      a1 = *(a5 + 16);
      v18 = *(a5 + 24);
      if (a1 >= v18 >> 1)
      {
        sub_24F458A60((v18 > 1), a1 + 1, 1);
        v16 = 0;
        a5 = v66;
      }

      *(a5 + 16) = a1 + 1;
      v19 = (a5 + 96 * a1);
      v19[2] = v54;
      v19[3] = v55;
      v19[6] = v58;
      v19[7] = v59;
      v19[4] = v56;
      v19[5] = v57;
      if (v7 == a6)
      {
        v50 = v16;

        v14 = MEMORY[0x277D84F90];
        goto LABEL_20;
      }

      ++a6;
    }

    while (!__OFADD__(a6, 1));
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  a5 = MEMORY[0x277D84F90];
LABEL_20:
  v20 = sub_24F92C2E8();
  v7 = v20;
  if (v20 >> 62)
  {
    a1 = sub_24F92C738();
    if (a1)
    {
LABEL_22:
      *&v60 = v14;
      result = sub_24F458A40(0, a1 & ~(a1 >> 63), 0);
      if ((a1 & 0x8000000000000000) == 0)
      {
        v21 = 0;
        v22 = v60;
        v67 = v7 & 0xC000000000000001;
        v51 = v7 & 0xFFFFFFFFFFFFFF8;
        v52 = a1;
        v53 = v7;
        while (1)
        {
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_38;
          }

          if (v67)
          {
            v24 = v22;
            v25 = MEMORY[0x253052270](v21, v7);
          }

          else
          {
            if (v21 >= *(v51 + 16))
            {
              goto LABEL_40;
            }

            v24 = v22;
            v25 = *(v7 + 8 * v21 + 32);
          }

          v26 = v25;
          v27 = sub_24F92C318();
          v12 = sub_24F92C2F8();
          v29 = v28;

          if (!v29)
          {
            break;
          }

          v30 = sub_24F92C318();
          v31 = [v30 toDictionary];

          if (!v31)
          {

            sub_24F92C318();
            v12 = sub_24F92A868();
            sub_24E979414();
            swift_allocError();
            goto LABEL_37;
          }

          v32 = sub_24F92AE38();

          v22 = v24;
          *&v60 = v24;
          a1 = *(v24 + 16);
          v33 = *(v22 + 24);
          a6 = a1 + 1;
          if (a1 >= v33 >> 1)
          {
            sub_24F458A40((v33 > 1), a1 + 1, 1);
            v22 = v60;
          }

          *(v22 + 16) = a6;
          v34 = (v22 + 24 * a1);
          v34[4] = v12;
          v34[5] = v29;
          v34[6] = v32;
          ++v21;
          v7 = v53;
          if (v23 == v52)
          {

            goto LABEL_44;
          }
        }

        sub_24F92C318();
        v12 = sub_24F92A868();
        sub_24E979414();
        swift_allocError();
LABEL_37:
        sub_24F92A828();
        swift_willThrow();

        return v12;
      }

      goto LABEL_51;
    }
  }

  else
  {
    a1 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
      goto LABEL_22;
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_44:
  v35 = *(*(a4 + OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService) + 16);
  v12 = *(v35 + 16);
  if (v12)
  {
    v36 = *(v35 + 24);
    ObjectType = swift_getObjectType();
    v38 = *(v36 + 8);
    swift_unknownObjectRetain();
    v39 = v38(v47, v48, ObjectType, v36);
    if (v39)
    {
      v40 = v39[15];
      v41 = v39[16];
      __swift_project_boxed_opaque_existential_1(v39 + 12, v40);
      (*(v41 + 8))(a5, v22, v45 & 1, v40, v41);

      swift_unknownObjectRelease();

      *(swift_allocObject() + 16) = v46;
      *(&v61 + 1) = sub_24F929638();
      *&v62 = MEMORY[0x277D21FB0];
      __swift_allocate_boxed_opaque_existential_1(&v60);
      v42 = v46;
      sub_24F929628();
      sub_24E69A5C4(0, &qword_27F21C8E0);
      v12 = sub_24F92A938();

      __swift_destroy_boxed_opaque_existential_1(&v60);
    }

    else
    {

      sub_24EC11078();
      swift_allocError();
      *v44 = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {

    sub_24EC11078();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_24EDBEA04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v57 = a4;
  v58 = a5;
  v55 = a3;
  v9 = sub_24F922028();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v59 = &v49 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v18 = sub_24F922058();
  __swift_project_value_buffer(v18, qword_27F23DAC0);
  sub_24F922038();
  sub_24F921FF8();

  v19 = sub_24F922038();
  v20 = sub_24F92C058();

  v21 = sub_24F92C478();
  v54 = a1;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v52 = v12;
    v23 = a2;
    v24 = v22;
    v25 = swift_slowAlloc();
    v53 = v10;
    v26 = v25;
    v60 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_24E7620D4(a1, v23, &v60);
    v27 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v19, v20, v27, "OnDeviceAd", "placementType=%s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v28 = v26;
    v10 = v53;
    MEMORY[0x2530542D0](v28, -1, -1);
    v29 = v24;
    a2 = v23;
    v12 = v52;
    MEMORY[0x2530542D0](v29, -1, -1);
  }

  v51 = *(v10 + 16);
  v51(v59, v17, v9);
  sub_24F922098();
  swift_allocObject();
  v52 = sub_24F922088();
  v31 = *(v10 + 8);
  v30 = v10 + 8;
  v50 = v31;
  v31(v17, v9);
  sub_24F922038();
  sub_24F921FF8();

  v32 = sub_24F922038();
  v33 = sub_24F92C058();

  if (sub_24F92C478())
  {
    v34 = swift_slowAlloc();
    v49 = v9;
    v35 = a2;
    v36 = v34;
    v37 = swift_slowAlloc();
    v53 = v30;
    v38 = v37;
    v60 = v37;
    *v36 = 136315138;
    v39 = v54;
    *(v36 + 4) = sub_24E7620D4(v54, v35, &v60);
    v40 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v32, v33, v40, "OnDeviceAdPromise", "placementType=%s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530542D0](v38, -1, -1);
    v41 = v36;
    a2 = v35;
    v9 = v49;
    MEMORY[0x2530542D0](v41, -1, -1);
  }

  else
  {

    v39 = v54;
  }

  v51(v59, v12, v9);
  swift_allocObject();
  v42 = sub_24F922088();
  v50(v12, v9);
  sub_24E69A5C4(0, &qword_27F21C8C8);
  v43 = sub_24F92C448();
  MEMORY[0x28223BE20](v43);
  *(&v49 - 10) = v42;
  *(&v49 - 9) = v39;
  v44 = v52;
  *(&v49 - 8) = a2;
  *(&v49 - 7) = v44;
  *(&v49 - 6) = a6;
  v45 = v55;
  *(&v49 - 5) = v56;
  *(&v49 - 4) = v45;
  v46 = v58;
  *(&v49 - 3) = v57;
  *(&v49 - 2) = v46;
  v47 = sub_24F92C458();

  return v47;
}

uint64_t sub_24EDBEEE8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v47 = a1;
  v50 = a7;
  v51 = a8;
  v53 = a5;
  v54 = a2;
  v14 = sub_24F922068();
  v49 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_24F922028();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_24F92AC68();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);

  v52 = a3;
  v23._countAndFlagsBits = a3;
  v23._object = a4;
  AdPlacementType.init(rawValue:)(v23);
  v24 = v57;
  if (v57 == 5)
  {
    if (qword_27F211060 != -1)
    {
      swift_once();
    }

    v25 = sub_24F922058();
    __swift_project_value_buffer(v25, qword_27F23DAC0);
    v26 = sub_24F922038();
    sub_24F922078();
    LODWORD(v51) = sub_24F92C048();
    if (sub_24F92C478())
    {

      sub_24F9220A8();

      v27 = v49;
      if ((*(v49 + 88))(v16, v14) == *MEMORY[0x277D85B00])
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v27 + 8))(v16, v14);
        v28 = "success=false";
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = sub_24F922008();
      _os_signpost_emit_with_name_impl(&dword_24E5DD000, v26, v51, v42, "OnDeviceAd", v28, v41, 2u);
      MEMORY[0x2530542D0](v41, -1, -1);
    }

    (*(v18 + 8))(v20, v17);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_24F92C888();

    v57 = 0xD00000000000004ALL;
    v58 = 0x800000024FA5D9E0;
    MEMORY[0x253050C20](v52, a4);
    v29 = v58;
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    goto LABEL_18;
  }

  v29 = *(a6 + OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_24EDC0968(v29 + 24, &v55);
  if (!v56)
  {
    sub_24E601704(&v55, &qword_27F22FC18);
    sub_24EDC0DC0();
    swift_allocError();
LABEL_18:
    swift_willThrow();
    goto LABEL_21;
  }

  if (a9 == 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = a9;
  }

  sub_24E612C80(&v55, &v57);
  v31 = v59;
  v32 = v60;
  __swift_project_boxed_opaque_existential_1(&v57, v59);
  LOBYTE(v55) = v24;
  v33 = (*(v32 + 16))(&v55, COERCE_DOUBLE(*&v30), a9 == 0.0, v50, v51, a10, v31, v32);
  __swift_destroy_boxed_opaque_existential_1(&v57);
  v34 = swift_allocObject();
  v35 = v53;
  *(v34 + 16) = v33;
  *(v34 + 24) = v35;
  v29 = sub_24F9298F8();

  v37 = MEMORY[0x25304F260](v36);
  if (v37)
  {
    v29 = v37;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = 1;
    *(v38 + 32) = v29;
    *(v38 + 40) = sub_24EDC0E54;
    *(v38 + 48) = v34;
    v39 = v47;

    v40 = v48;
    sub_24F92AC48();
    if (!v40)
    {

      v29 = sub_24F92AC58();

      (*(v45 + 8))(v22, v46);
      sub_24EDBF55C();
      return v29;
    }
  }

  else
  {
    sub_24EA32FE4();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
  }

LABEL_21:
  sub_24EDBF55C();
  return v29;
}

uint64_t sub_24EDBF55C()
{
  v0 = sub_24F922068();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F922028();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v8 = sub_24F922058();
  __swift_project_value_buffer(v8, qword_27F23DAC0);
  v9 = sub_24F922038();
  sub_24F922078();
  v10 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x277D85B00])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v9, v10, v13, "OnDeviceAdPromise", v11, v12, 2u);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_24EDBF7E8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;
  v9[3] = sub_24F929638();
  v9[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v9);

  v6 = a1;
  sub_24F929628();
  sub_24E69A5C4(0, &qword_27F21C8E0);
  v7 = sub_24F92A938();

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

JSValue sub_24EDBF8D4@<X0>(__int128 *a1@<X0>, objc_class *a2@<X2>, JSValue *a3@<X8>)
{
  v25.super.isa = a2;
  v26 = a3;
  v4 = sub_24F922068();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F922028();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[7];
  v33 = a1[6];
  v34 = v11;
  v35[0] = a1[8];
  *(v35 + 9) = *(a1 + 137);
  v12 = a1[3];
  v29 = a1[2];
  v30 = v12;
  v13 = a1[5];
  v31 = a1[4];
  v32 = v13;
  v14 = a1[1];
  v27 = *a1;
  v28 = v14;
  if (qword_27F211060 != -1)
  {
    swift_once();
  }

  v15 = sub_24F922058();
  __swift_project_value_buffer(v15, qword_27F23DAC0);
  v16 = sub_24F922038();
  sub_24F922078();
  v17 = sub_24F92C048();
  if (sub_24F92C478())
  {

    sub_24F9220A8();

    v18 = v24;
    if ((*(v24 + 88))(v6, v4) == *MEMORY[0x277D85B00])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v18 + 8))(v6, v4);
      v19 = "success=true";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_24F922008();
    _os_signpost_emit_with_name_impl(&dword_24E5DD000, v16, v17, v21, "OnDeviceAd", v19, v20, 2u);
    MEMORY[0x2530542D0](v20, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  result.super.isa = OnDeviceAdvertFetchResponse.makeValue(in:)(v25).super.isa;
  v26->super.isa = result.super.isa;
  return result;
}

uint64_t sub_24EDBFCC4(uint64_t a1, void *a2, double a3)
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v8 = sub_24F92AAE8();
  __swift_project_value_buffer(v8, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F928448();
  sub_24F9283A8();
  v11 = MEMORY[0x277D837D0];
  v9 = *&a1;
  v10 = a2;

  sub_24F928458();
  sub_24E601704(&v9, &qword_27F2129B0);
  v11 = MEMORY[0x277D839F8];
  v9 = a3;
  sub_24F928458();
  sub_24E601704(&v9, &qword_27F2129B0);
  sub_24F92A588();

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  AdPlacementType.init(rawValue:)(v6);
  if (LOBYTE(v9) != 5)
  {
    return sub_24EDC0A48(&v9, a3);
  }

  *(swift_allocObject() + 16) = xmmword_24F93FC20;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F9283A8();
  v11 = MEMORY[0x277D837D0];
  v9 = *&a1;
  v10 = a2;

  sub_24F928458();
  sub_24E601704(&v9, &qword_27F2129B0);
  sub_24F92A5A8();
}

id sub_24EDC0068(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F2A7BFC();

  result = [objc_opt_self() valueWithBool:v3 & 1 inContext:a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_24EDC01F8(uint64_t a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_24F92B098();
  v4 = [v2 stringArrayForKey_];

  if (v4)
  {
    sub_24F92B5A8();

    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0);
    v5 = sub_24F92CF68();
    v6 = [objc_opt_self() valueWithObject:v5 inContext:a1];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      swift_bridgeObjectRelease_n();
      return v6;
    }

    __break(1u);
  }

  else
  {
    result = [objc_opt_self() valueWithNullInContext_];
    v6 = result;
    if (result)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

id sub_24EDC03EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{

  v8._countAndFlagsBits = a2;
  v8._object = a3;
  AdPlacementType.init(rawValue:)(v8);
  v9 = v21;
  if (v21 == 5)
  {
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v10 = sub_24F92AAE8();
    __swift_project_value_buffer(v10, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F9283A8();
    v23 = MEMORY[0x277D837D0];
    v21 = a2;
    v22 = a3;

    sub_24F928458();
    sub_24E601704(&v21, &qword_27F2129B0);
    sub_24F92A5A8();

    v21 = 0;
    v22 = 0xE000000000000000;
    sub_24F92C888();

    v21 = 0xD00000000000004DLL;
    v22 = 0x800000024FA5DA80;
    MEMORY[0x253050C20](a2, a3);
    v11 = v21;
    sub_24F92A868();
    sub_24E979414();
    swift_allocError();
    sub_24F92A808();
    goto LABEL_9;
  }

  v11 = *(a4 + OBJC_IVAR____TtC12GameStoreKit11JSAdsObject_backingService);
  swift_beginAccess();
  sub_24EDC0968(v11 + 24, &v19);
  if (!v20)
  {
LABEL_8:
    sub_24E601704(&v19, &qword_27F22FC18);
    sub_24EDC0DC0();
    swift_allocError();
LABEL_9:
    swift_willThrow();
    return v11;
  }

  sub_24E612C80(&v19, &v21);
  v12 = v23;
  v13 = v24;
  __swift_project_boxed_opaque_existential_1(&v21, v23);
  LOBYTE(v19) = v9;
  v14 = (*(v13 + 32))(&v19, v12, v13);
  v16 = v15;
  __swift_destroy_boxed_opaque_existential_1(&v21);
  v21 = v14;
  v22 = v16;
  v17 = sub_24F92CF68();
  v11 = [objc_opt_self() valueWithObject:v17 inContext:a1];
  swift_unknownObjectRelease();
  if (!v11)
  {
    __break(1u);
    goto LABEL_8;
  }

  return v11;
}

id sub_24EDC08A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSAdsObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EDC08E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = *(v3 + 16);
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  sub_24EDC0968(a3, v7);
  swift_beginAccess();
  sub_24EDC09D8(v7, v3 + 24);
  return swift_endAccess();
}

uint64_t sub_24EDC0968(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FC18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDC09D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FC18);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDC0A48(char *a1, double a2)
{
  v4 = *a1;
  swift_beginAccess();
  sub_24EDC0968(v2 + 24, &v9);
  if (v10)
  {
    sub_24E612C80(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    LOBYTE(v9) = v4;
    (*(v6 + 24))(&v9, v5, v6, a2);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_24E601704(&v9, &qword_27F22FC18);
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v8 = sub_24F92AAE8();
    __swift_project_value_buffer(v8, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F9479A0;
    sub_24F928448();
    sub_24F9283A8();
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t AdsService.deinit()
{

  sub_24E601704(v0 + 24, &qword_27F22FC18);
  return v0;
}

uint64_t AdsService.__deallocating_deinit()
{

  sub_24E601704(v0 + 24, &qword_27F22FC18);

  return swift_deallocClassInstance();
}

unint64_t sub_24EDC0DC0()
{
  result = qword_27F22FC28;
  if (!qword_27F22FC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC28);
  }

  return result;
}

uint64_t sub_24EDC0E14()
{

  return swift_deallocObject();
}

uint64_t sub_24EDC0E74()
{

  return swift_deallocObject();
}

void sub_24EDC0EF0(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_24F2A7BFC();

  if (v5)
  {
    if (qword_27F2105A0 != -1)
    {
      swift_once();
    }

    v6 = sub_24F92AAE8();
    __swift_project_value_buffer(v6, qword_27F39C440);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    v7[3] = MEMORY[0x277D837D0];
    v7[0] = a1;
    v7[1] = a2;

    sub_24F928458();
    sub_24E601704(v7, &qword_27F2129B0);
    sub_24F92A598();
  }
}

uint64_t sub_24EDC10FC()
{

  return swift_deallocObject();
}

uint64_t sub_24EDC1174()
{

  return swift_deallocObject();
}

JSValue sub_24EDC11AC@<X0>(JSValue *a1@<X8>)
{
  result.super.isa = SponsoredSearchNativeAdvertData.makeValue(in:)(v1[2]).super.isa;
  a1->super.isa = result.super.isa;
  return result;
}

unint64_t sub_24EDC1240()
{
  result = qword_27F22FC30;
  if (!qword_27F22FC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC30);
  }

  return result;
}

uint64_t sub_24EDC1298()
{
  sub_24EDC12D8();
  sub_24F924868();
  return v1;
}

unint64_t sub_24EDC12D8()
{
  result = qword_27F22FC38;
  if (!qword_27F22FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC38);
  }

  return result;
}

uint64_t sub_24EDC134C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_24EDC13B0();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_24EDC13B0()
{
  result = qword_27F22FC40;
  if (!qword_27F22FC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FC48);
    sub_24EDC1434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC40);
  }

  return result;
}

unint64_t sub_24EDC1434()
{
  result = qword_27F22FC50;
  if (!qword_27F22FC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC50);
  }

  return result;
}

uint64_t sub_24EDC1500(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CardLayoutMetrics(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EDC1638(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F91F648();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for CardLayoutMetrics(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ChallengeCardTitleView()
{
  result = qword_27F22FC58;
  if (!qword_27F22FC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EDC17A8()
{
  sub_24F91F648();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CardLayoutMetrics(319);
    if (v1 <= 0x3F)
    {
      sub_24E7C6468();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EDC1870@<X0>(uint64_t a1@<X8>)
{
  v22 = a1;
  v2 = type metadata accessor for ChallengeCardTitleView();
  v3 = v2 - 8;
  v21 = *(v2 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D620);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v20 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v23 = *(v1 + *(v3 + 36));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D628);
  sub_24E602068(&qword_27F21D630, &qword_27F21D628);
  sub_24F9253C8();
  sub_24EDC264C(v1, &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v12 = swift_allocObject();
  sub_24EDC289C(&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
  (*(v6 + 16))(v20, v10, v5);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_24EDC2900;
  *(v13 + 24) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233E0);
  sub_24E602068(&qword_27F21D640, &qword_27F21D620);
  sub_24E8C5A10();
  v14 = v22;
  sub_24F923828();
  (*(v6 + 8))(v10, v5);
  v15 = v1 + *(v3 + 32);
  v16 = *(v15 + *(type metadata accessor for CardLayoutMetrics(0) + 84));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FC68);
  v19 = v14 + *(result + 36);
  *v19 = KeyPath;
  *(v19 + 8) = v16;
  *(v19 + 16) = 0;
  return result;
}

double sub_24EDC1BBC@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v119 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v3);
  v5 = v98 - v4;
  v6 = sub_24F925D38();
  v111 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v117 = v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_24F925D58();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v114 = v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F925D78();
  MEMORY[0x28223BE20](v9 - 8);
  v113 = v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F924A78();
  MEMORY[0x28223BE20](v11 - 8);
  v115 = v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v98 - v14;
  v16 = sub_24F91F648();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v112 = v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v98 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  sub_24F923808();
  v22 = type metadata accessor for ChallengeCardTitleView();
  v23 = a1 + *(v22 + 20);
  sub_24E7C79D8();
  v110 = v23;
  LOBYTE(v23) = sub_24F92AF78();
  v24 = *(v17 + 8);
  v109 = v17 + 8;
  v108 = v24;
  v24(v21, v16);
  if (v23)
  {
    v25 = a1 + *(v22 + 24);
    v26 = &v25[*(type metadata accessor for CardLayoutMetrics(0) + 88)];
    v27 = *(v26 + 3);
    v118 = *(v26 + 4);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v28 = a1[1];
    *&v125 = *a1;
    *(&v125 + 1) = v28;
    sub_24E600AEC();

    v29 = sub_24F925E18();
    v31 = v30;
    v33 = v32;
    v34 = sub_24F925C98();
    v36 = v35;
    v38 = v37;
    sub_24E600B40(v29, v31, v33 & 1);

    v39 = sub_24F925C58();
    v41 = v40;
    LOBYTE(v29) = v42;
    v44 = v43;
    sub_24E600B40(v34, v36, v38 & 1);

    v120 = v39;
    v121 = v41;
    v122 = v29 & 1;
    v123 = v44;
    v124 = 1;
  }

  else
  {
    v106 = v3;
    v107 = v5;
    sub_24F924A68();
    sub_24F924A58();
    v45 = a1 + *(v22 + 24);
    v46 = type metadata accessor for CardLayoutMetrics(0);
    v102 = v17;
    v47 = v46;
    v48 = &v45[*(v46 + 88)];
    v99 = *(v48 + 3);
    v100 = *(v48 + 4);
    v98[1] = __swift_project_boxed_opaque_existential_1(v48, v99);
    v49 = *a1;
    v50 = a1[1];
    *&v125 = v49;
    *(&v125 + 1) = v50;
    sub_24E600AEC();

    v51 = sub_24F925E18();
    v53 = v52;
    v55 = v54;
    v103 = v47;
    v104 = v45;
    v56 = sub_24F925C98();
    v101 = v6;
    v57 = v56;
    v105 = v15;
    v59 = v58;
    v61 = v60;
    sub_24E600B40(v51, v53, v55 & 1);

    v62 = sub_24F925C58();
    v64 = v63;
    v66 = v65;
    sub_24E600B40(v57, v59, v61 & 1);

    sub_24F924A28();
    sub_24E600B40(v62, v64, v66 & 1);

    sub_24F924A58();
    sub_24F924A68();
    sub_24F924A58();
    (*(v102 + 16))(v112, v110, v16);
    sub_24F91F638();
    sub_24F91F558();
    v108(v21, v16);
    (*(v111 + 104))(v117, *MEMORY[0x277CE0BB0], v101);
    v67 = v114;
    sub_24F925D48();
    sub_24F925D68();
    (*(v116 + 8))(v67, v118);
    v68 = sub_24F925DD8();
    v70 = v69;
    LOBYTE(v64) = v71;
    sub_24F924A28();
    sub_24E600B40(v68, v70, v64 & 1);

    sub_24F924A58();
    sub_24F924A98();
    if (qword_27F211820 != -1)
    {
      swift_once();
    }

    v72 = qword_27F24F280;
    v73 = sub_24F925DE8();
    v75 = v74;
    v77 = v76;
    v78 = sub_24F925C98();
    v80 = v79;
    v82 = v81;
    sub_24E600B40(v73, v75, v77 & 1);

    LODWORD(v73) = sub_24F9251B8();
    v83 = *(v106 + 36);
    v84 = *MEMORY[0x277CE13B8];
    v85 = sub_24F927748();
    v86 = v107;
    (*(*(v85 - 8) + 104))(v107 + v83, v84, v85);
    *v86 = v73;
    sub_24E602068(&qword_27F214428, &qword_27F213F10);
    v87 = sub_24F925C58();
    v89 = v88;
    LOBYTE(v83) = v90;
    sub_24E600B40(v78, v80, v82 & 1);

    sub_24EAAD700(v86);
    sub_24F924A28();
    sub_24E600B40(v87, v89, v83 & 1);

    sub_24F924A58();
    sub_24F924A98();
    v120 = sub_24F925DE8();
    v121 = v91;
    v122 = v92 & 1;
    v123 = v93;
    v124 = 0;
  }

  sub_24F924E28();
  result = *&v125;
  v95 = v126;
  v96 = v127;
  v97 = v119;
  *v119 = v125;
  v97[1] = v95;
  *(v97 + 32) = v96;
  return result;
}

uint64_t sub_24EDC264C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardTitleView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EDC26B0()
{
  v1 = type metadata accessor for ChallengeCardTitleView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 20);
  v4 = sub_24F91F648();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + *(v1 + 24);
  type metadata accessor for CardLayoutMetrics.CardHeight(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v7 = sub_24F922348();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  v8 = type metadata accessor for CardLayoutMetrics(0);

  __swift_destroy_boxed_opaque_existential_1(v5 + *(v8 + 88));

  return swift_deallocObject();
}

uint64_t sub_24EDC289C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeCardTitleView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24EDC2900@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(type metadata accessor for ChallengeCardTitleView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24EDC1BBC(v4, a1);
}

uint64_t sub_24EDC2980@<X0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, char *)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BAE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FC70);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(v16, v10);
    result = (*(v7 + 8))(v10, v6);
    v14 = v17;
    v15 = v16[1];
    *a3 = v16[0];
    *(a3 + 16) = v15;
    *(a3 + 32) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24EDC2ADC()
{

  return swift_deallocObject();
}

unint64_t sub_24EDC2B28()
{
  result = qword_27F22FC78;
  if (!qword_27F22FC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FC68);
    sub_24EDC2BE0();
    sub_24E602068(&qword_27F214778, &qword_27F214780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC78);
  }

  return result;
}

unint64_t sub_24EDC2BE0()
{
  result = qword_27F22FC80;
  if (!qword_27F22FC80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22FC88);
    sub_24E8C5A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FC80);
  }

  return result;
}

uint64_t ReferrerData.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v32 = a2;
  v36 = sub_24F9285B8();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  sub_24F928398();
  v27 = sub_24F928348();
  v31 = v13;
  v14 = *(v7 + 8);
  v14(v12, v6);
  sub_24F928398();
  v15 = sub_24F928348();
  v30 = v16;
  v14(v12, v6);
  sub_24F928398();
  v17 = sub_24F928328();
  v14(v12, v6);
  if (v17)
  {
    v18 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v19 = 1684957547;
    v19[1] = 0xE400000000000000;
    v19[2] = &type metadata for ReferrerData;
    (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D22530], v18);
    swift_willThrow();
    (*(v33 + 8))(v32, v36);
  }

  else
  {
    sub_24F928398();
    v20 = v32;
    (*(v33 + 16))(v5, v32, v36);
    v21 = v29;
    ReferrerData.Kind.init(deserializing:using:)(v10, v5, &v34);
    if (!v21)
    {
      (*(v33 + 8))(v20, v36);
      result = (v14)(a1, v6);
      v23 = v34;
      v24 = v35;
      v25 = v28;
      *v28 = v27;
      v25[1] = v31;
      v25[2] = v15;
      v25[3] = v30;
      v25[4] = v23;
      *(v25 + 40) = v24;
      return result;
    }

    (*(v33 + 8))(v20, v36);
  }

  v14(a1, v6);
}

unint64_t sub_24EDC3010()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);

  v7 = sub_24E608448(MEMORY[0x277D84F90]);
  v22 = v7;
  v8 = MEMORY[0x277D837D0];
  if (v1)
  {
    v9 = v7;
    v21 = MEMORY[0x277D837D0];
    *&v20 = v2;
    *(&v20 + 1) = v1;
    sub_24E612B0C(&v20, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v9;
    sub_24E81C1D4(v17, 7368801, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    v22 = v18;
  }

  else
  {
    sub_24E98EF1C(7368801, 0xE300000000000000, &v20);
    sub_24E601704(&v20, &qword_27F2129B0);
  }

  if (v3)
  {
    v21 = v8;
    *&v20 = v4;
    *(&v20 + 1) = v3;
    sub_24E612B0C(&v20, v17);

    v11 = v22;
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v18 = v11;
    sub_24E81C1D4(v17, 0x6C616E7265747865, 0xEB000000006C7255, v12);
    v13 = v18;
  }

  else
  {
    sub_24E98EF1C(0x6C616E7265747865, 0xEB000000006C7255, &v20);
    sub_24E601704(&v20, &qword_27F2129B0);
    v13 = v22;
  }

  v18 = v5;
  v19 = v6;
  v14 = sub_24EDC3A44();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730);
  *&v20 = v14;
  sub_24E612B0C(&v20, v17);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v17, 1684957547, 0xE400000000000000, v15);
  return v13;
}

uint64_t ReferrerData.init(app:externalUrl:kind:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  v7 = *(a5 + 8);
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  *(a6 + 40) = v7;
  return result;
}

uint64_t ReferrerData.Kind.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    goto LABEL_31;
  }

  if (a1 == 0x70696C43707061 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    v9 = 2;
    a3 = 1;
    goto LABEL_33;
  }

  if (a1 == 0x65726F7453707061 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    a3 = 2;
LABEL_32:
    v9 = 2;
    goto LABEL_33;
  }

  if (a1 == 0x746E6543656D6167 && a2 == 0xEA00000000007265 || (sub_24F92CE08() & 1) != 0)
  {

    v9 = 2;
    a3 = 3;
    goto LABEL_33;
  }

  if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_24F92CE08() & 1) != 0)
  {

    v9 = 2;
    a3 = 4;
    goto LABEL_33;
  }

  if (a1 == 0x696C6F706D617274 && a2 == 0xEA0000000000656ELL || (sub_24F92CE08() & 1) != 0)
  {
    if (!a3)
    {
      a3 = sub_24E6087F0(MEMORY[0x277D84F90]);
    }

    v9 = 0;
    goto LABEL_33;
  }

  if ((a1 != 0x746567646977 || a2 != 0xE600000000000000) && (sub_24F92CE08() & 1) == 0)
  {

LABEL_31:

    a3 = 0;
    goto LABEL_32;
  }

  if (!a3)
  {
    a3 = sub_24E6087F0(MEMORY[0x277D84F90]);
  }

  v9 = 1;
LABEL_33:
  *a4 = a3;
  *(a4 + 8) = v9;
  return result;
}

uint64_t ReferrerData.Kind.rawValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 8))
  {
    if (v2 == 1)
    {
      v3 = 0x746567646977;
    }

    else
    {
      v3 = *&aUnspecifappcli[8 * v1];
    }
  }

  else
  {
    v3 = 0x696C6F706D617274;
  }

  sub_24E90BCC4(v1, v2);
  return v3;
}

uint64_t ReferrerData.Kind.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v31 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v29 - v12;
  sub_24F928398();
  v14 = sub_24F928348();
  v16 = v15;
  v17 = *(v8 + 8);
  v17(v13, v7);
  if (v16)
  {
    v30 = v14;
    sub_24F928398();
    sub_24F9281F8();
    v17(v11, v7);
    v18 = sub_24F928E68();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v6, 1, v18) == 1)
    {
      sub_24E601704(v6, qword_27F221C40);
      v20 = 0;
    }

    else
    {
      v25 = v35;
      v20 = sub_24F928E38();
      v35 = v25;
      (*(v19 + 8))(v6, v18);
    }

    ReferrerData.Kind.init(rawValue:)(v30, v16, v20, &v33);
    v26 = sub_24F9285B8();
    (*(*(v26 - 8) + 8))(v32, v26);
    result = (v17)(a1, v7);
    v27 = v34;
    v28 = v31;
    *v31 = v33;
    *(v28 + 8) = v27;
  }

  else
  {
    v21 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v22 = 1701667182;
    v22[1] = 0xE400000000000000;
    v22[2] = &type metadata for ReferrerData.Kind;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    v23 = sub_24F9285B8();
    (*(*(v23 - 8) + 8))(v32, v23);
    return (v17)(a1, v7);
  }

  return result;
}

double sub_24EDC3934@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24F928368();
  if (v10[3])
  {
    if (swift_dynamicCast())
    {
      if (*(&v12 + 1))
      {
        v6 = v11;
        v7 = v12;
        v14 = v11;
        v15 = v12;
        v8 = v13;
        v16 = v13;
        *a3 = a1;
        *(a3 + 8) = a2;
        *(a3 + 16) = v6;
        *(a3 + 32) = v7;
        *(a3 + 48) = v8;

        return result;
      }
    }

    else
    {
      v13 = 0;
      v11 = 0u;
      v12 = 0u;
    }
  }

  else
  {
    sub_24E601704(v10, &qword_27F2129B0);
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
  }

  sub_24E601704(&v11, &qword_27F235830);
  *(a3 + 48) = 0;
  result = 0.0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

unint64_t sub_24EDC3A44()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = sub_24E608448(MEMORY[0x277D84F90]);
  *&v12[0] = v1;
  BYTE8(v12[0]) = v2;
  v4 = ReferrerData.Kind.rawValue.getter();
  v6 = v5;

  v14 = MEMORY[0x277D837D0];
  *&v13 = v4;
  *(&v13 + 1) = v6;
  sub_24E612B0C(&v13, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C1D4(v12, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v15 = v3;
  *&v12[0] = v1;
  BYTE8(v12[0]) = v2;
  ReferrerData.Kind.rawValue.getter();
  v9 = v8;

  if (v9)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229AF0);
    *&v13 = v9;
    sub_24E612B0C(&v13, v12);
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C1D4(v12, 0x747865746E6F63, 0xE700000000000000, v10);
    return v3;
  }

  else
  {
    sub_24E98EF1C(0x747865746E6F63, 0xE700000000000000, &v13);
    sub_24E601704(&v13, &qword_27F2129B0);
    return v15;
  }
}

uint64_t sub_24EDC3BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = ReferrerData.Kind.init(rawValue:)(*a1, *(a1 + 8), *(a1 + 16), &v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_24EDC3BFC@<X0>(uint64_t *a1@<X8>)
{
  result = ReferrerData.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t ReferrerData.Kind.init(userActivity:url:refApp:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 _originatingProcess];
  v7 = [a1 _sourceApplication];
  if (v7)
  {
    v8 = v7;
    v9 = sub_24F92B0D8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  sub_24EDC3D6C(a2, v6, v9, v11, &v14);

  result = sub_24E601704(a2, &qword_27F228530);
  v13 = v15;
  *a3 = v14;
  *(a3 + 8) = v13;
  return result;
}

uint64_t sub_24EDC3D6C@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_24F928418();
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v11);
  if (a2)
  {
    v12 = a2;
    v13 = [v12 bundleIdentifier];
    if (v13)
    {
      v24 = a1;
      v14 = v13;
      v15 = sub_24F92B0D8();
      v17 = v16;

      v18 = v15 == 0xD000000000000012 && 0x800000024FA44B00 == v17;
      if (v18 || (sub_24F92CE08() & 1) != 0)
      {

        result = 2;
LABEL_19:
        v21 = 2;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000019 && 0x800000024FA5DC50 == v17 || (sub_24F92CE08() & 1) != 0)
      {

LABEL_24:

        v21 = 2;
        result = 1;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000033 && 0x800000024FA5DC70 == v17 || (sub_24F92CE08() & 1) != 0)
      {

        v21 = 2;
        result = 3;
        goto LABEL_25;
      }

      if (v15 == 0xD000000000000013 && 0x800000024FA5DCB0 == v17)
      {

LABEL_34:
        v21 = 2;
        result = 4;
        goto LABEL_25;
      }

      v23 = sub_24F92CE08();

      a1 = v24;
      if (v23)
      {
        goto LABEL_34;
      }
    }

    else
    {
    }
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  v20 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v22 = sub_24F3E5298(a3, a4, 1);
  v12 = [v22 appClipMetadata];

  if (v12)
  {
    goto LABEL_24;
  }

  result = _s12GameStoreKit03AppB8DeepLinkV17trampolineMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(a1);
  if (!result)
  {
    result = _s12GameStoreKit03AppB8DeepLinkV13widgetMetrics4from3forSDySSs11AnyHashableVGSg10Foundation3URLVSg_SStFZ_0(a1);
    if (result)
    {
      v21 = 1;
      goto LABEL_25;
    }

LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  v21 = 0;
LABEL_25:
  *a5 = result;
  *(a5 + 8) = v21;
  return result;
}

uint64_t ReferrerData.Kind.init(urlOptions:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(a1 + 16))
  {
    v8 = 0;
    goto LABEL_17;
  }

  v6 = sub_24E7728E8(*MEMORY[0x277D77318]);
  if ((v7 & 1) == 0)
  {
    v8 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_10;
    }

LABEL_17:

    v12 = 0;
    v13 = 0;
    goto LABEL_18;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v6, &v18);
  sub_24EDC4718();
  if (swift_dynamicCast())
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

LABEL_10:
  v9 = sub_24E7728E8(*MEMORY[0x277D766D0]);
  if ((v10 & 1) == 0)
  {
    goto LABEL_17;
  }

  sub_24E643A9C(*(a1 + 56) + 32 * v9, &v18);

  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = v16;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = v17;
  }

  else
  {
    v13 = 0;
  }

LABEL_18:
  sub_24EDC3D6C(a2, v8, v12, v13, &v18);

  result = sub_24E601704(a2, &qword_27F228530);
  v15 = v19;
  *a3 = v18;
  *(a3 + 8) = v15;
  return result;
}

uint64_t _s12GameStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_24E90BCC4(*a2, 0);
      sub_24E90BCC4(v2, 0);
      v6 = sub_24EBAD4E8(v2, v4);
      sub_24E7B6564(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_24E90BCC4(*a2, 1u);
      sub_24E90BCC4(v2, 1u);
      LOBYTE(v6) = sub_24EBAD4E8(v2, v4);
      sub_24E7B6564(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_24E7B6564(v7, v8);
      return v6 & 1;
    }

    goto LABEL_25;
  }

  if (v2 <= 1)
  {
    if (v2)
    {
      if (v5 == 2 && v4 == 1)
      {
        sub_24E7B6564(1, 2u);
        sub_24E7B6564(1, 2u);
        return v4;
      }
    }

    else if (v5 == 2 && !v4)
    {
      sub_24E7B6564(0, 2u);
      v10 = 0;
      goto LABEL_21;
    }

LABEL_25:
    sub_24E90BCC4(*a2, *(a2 + 8));
    sub_24E90BCC4(v2, v3);
    sub_24E7B6564(v2, v3);
    sub_24E7B6564(v4, v5);
    return 0;
  }

  if (v2 == 2)
  {
    goto LABEL_25;
  }

  if (v2 != 3)
  {
    if (v5 == 2 && v4 == 4)
    {
      sub_24E7B6564(4, 2u);
      v10 = 4;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  if (v5 != 2 || v4 != 3)
  {
    goto LABEL_25;
  }

  sub_24E7B6564(3, 2u);
  v10 = 3;
LABEL_21:
  sub_24E7B6564(v10, 2u);
  return 1;
}

uint64_t _s12GameStoreKit12ReferrerDataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v11 = *(a2 + 24);
  v10 = *(a2 + 32);
  v12 = *(a2 + 40);
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_24F92CE08() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v8)
  {
    goto LABEL_15;
  }

  if (v6)
  {
    if (v11 && (v4 == v9 && v6 == v11 || (sub_24F92CE08() & 1) != 0))
    {
      goto LABEL_13;
    }

LABEL_15:
    v13 = 0;
    return v13 & 1;
  }

  if (v11)
  {
    goto LABEL_15;
  }

LABEL_13:
  v17 = v5;
  v18 = v7;
  v15 = v10;
  v16 = v12;
  sub_24E90BCC4(v5, v7);
  sub_24E90BCC4(v10, v12);
  v13 = _s12GameStoreKit12ReferrerDataV4KindO2eeoiySbAE_AEtFZ_0(&v17, &v15);
  sub_24E7B6564(v15, v16);
  sub_24E7B6564(v17, v18);
  return v13 & 1;
}

unint64_t sub_24EDC4718()
{
  result = qword_27F22FC90;
  if (!qword_27F22FC90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F22FC90);
  }

  return result;
}

uint64_t sub_24EDC4784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)(a1, a2, WitnessTable, a3);
}

uint64_t FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v42 = sub_24F91FA78();
  v8 = *(v42 - 8);
  v9 = MEMORY[0x28223BE20](v42);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a3 + 56);
  if ((v41(a1, a2, a3, v9) & 1) == 0)
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    goto LABEL_13;
  }

  (*(a3 + 64))(&v47, a1, a2, a3);
  if (!*(&v48 + 1))
  {
LABEL_13:
    v23 = &qword_27F2171D0;
    v24 = &v47;
LABEL_14:
    sub_24E601704(v24, v23);
    goto LABEL_15;
  }

  sub_24E612C80(&v47, v50);
  sub_24E615E00(v50, v45);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22CE38);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    memset(v44, 0, 40);
    v23 = &qword_27F22CE30;
    v24 = v44;
    goto LABEL_14;
  }

  v39[1] = v12;
  sub_24E612C80(v44, &v47);
  v13 = *(&v48 + 1);
  v40 = a4;
  v14 = v49;
  __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
  v15 = *(v14 + 8);
  v16 = v14;
  a4 = v40;
  if (v15(v13, v16))
  {
    type metadata accessor for FlowAction();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = v17;
      v19 = *(v17 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
      v20 = v19 > 0x2F;
      v21 = (1 << v19) & 0xE00000802010;
      if (v20 || v21 == 0)
      {
        sub_24E615E00(v50, v45);
        type metadata accessor for TodayCard();
        if ((swift_dynamicCast() & 1) == 0)
        {
          v36 = *(&v48 + 1);
          v37 = v49;
          __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
          v38 = *(v37 + 16);

          v38(v36, v37);
          sub_24EDC5774(v50, v45);

          __swift_destroy_boxed_opaque_existential_1(v50);
          v35 = v45[0];
          *a4 = v18;
          goto LABEL_41;
        }

        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v50);
      }

      goto LABEL_36;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_36:
  __swift_destroy_boxed_opaque_existential_1(&v47);
LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_24F93A400;
  *(v25 + 32) = sub_24F91FA18();
  *(v25 + 40) = 0;
  MEMORY[0x253045350](v25);
  if ((v41)(v11, a2, a3))
  {
    (*(a3 + 64))(&v47, v11, a2, a3);
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
  }

  (*(v8 + 8))(v11, v42);
  if (*(&v48 + 1))
  {
    sub_24E612C80(&v47, v50);
    sub_24E615E00(v50, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ECE8);
    if (swift_dynamicCast())
    {
      sub_24E612C80(v44, &v47);
      v26 = *(&v48 + 1);
      v27 = v49;
      __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
      v28 = sub_24F91FA08();
      (*(v27 + 8))(v44, v28, v26, v27);
      if (*&v44[0])
      {
        v45[0] = v44[0];
        v45[1] = v44[1];
        v46 = *&v44[2];
        sub_24E60169C(v45, v44, &qword_27F22CE40);
        type metadata accessor for FlowAction();
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v30 = v29;
          sub_24E601704(v44 + 8, &qword_27F2129B0);
          v31 = *(v30 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
          if (v31 <= 0x2F && ((1 << v31) & 0xE00000802010) != 0)
          {

            sub_24E601704(v45, &qword_27F22CE40);
            __swift_destroy_boxed_opaque_existential_1(v50);
LABEL_31:
            result = __swift_destroy_boxed_opaque_existential_1(&v47);
            goto LABEL_32;
          }

          sub_24E60169C(v45, v44, &qword_27F22CE40);

          sub_24EDC5774(v50, &v43);

          sub_24E601704(v45, &qword_27F22CE40);
          __swift_destroy_boxed_opaque_existential_1(v50);
          v35 = v43;
          *a4 = v30;
          *(a4 + 8) = *(v44 + 8);
          *(a4 + 24) = *(&v44[1] + 8);
LABEL_41:
          *(a4 + 40) = v35;
          return __swift_destroy_boxed_opaque_existential_1(&v47);
        }

        sub_24E601704(v45, &qword_27F22CE40);
        __swift_destroy_boxed_opaque_existential_1(v50);
        v33 = &qword_27F2129B0;
        v34 = (v44 + 8);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v50);
        v33 = &qword_27F22ECF8;
        v34 = v44;
      }

      sub_24E601704(v34, v33);
      goto LABEL_31;
    }

    __swift_destroy_boxed_opaque_existential_1(v50);
    memset(v44, 0, 40);
    result = sub_24E601704(v44, &qword_27F22ECF0);
  }

  else
  {
    result = sub_24E601704(&v47, &qword_27F2171D0);
  }

LABEL_32:
  *a4 = 1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0;
  return result;
}

uint64_t sub_24EDC4F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(a1, v5, a3, v6, WitnessTable);
}

uint64_t FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_24F91FA78();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 + 56);
  if ((v13(a1, a3, a5, v10) & 1) == 0)
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
    goto LABEL_7;
  }

  (*(a5 + 64))(&v31, a1, a3, a5);
  if (!*(&v32 + 1))
  {
LABEL_7:
    sub_24E601704(&v31, &qword_27F2171D0);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCB0);
  if (swift_dynamicCast())
  {
    if (*(&v35 + 1))
    {
      sub_24E612C80(&v34, v37);
      v14 = v38;
      v15 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v16 = (*(v15 + 8))(v14, v15);
LABEL_17:
      __swift_destroy_boxed_opaque_existential_1(v37);
      return v16;
    }
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

LABEL_8:
  v28 = v8;
  sub_24E601704(&v34, &qword_27F22FC98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_24F93A400;
  *(v17 + 32) = sub_24F91FA18();
  *(v17 + 40) = 0;
  MEMORY[0x253045350](v17);
  if ((v13)(v12, a3, a5))
  {
    (*(a5 + 64))(&v31, v12, a3, a5);
  }

  else
  {
    v33 = 0;
    v31 = 0u;
    v32 = 0u;
  }

  (*(v9 + 8))(v12, v28);
  if (!*(&v32 + 1))
  {
    sub_24E601704(&v31, &qword_27F2171D0);
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
    goto LABEL_20;
  }

  if (!*(&v35 + 1))
  {
LABEL_20:
    sub_24E601704(&v34, &qword_27F22FCA0);
    return 0;
  }

  sub_24E612C80(&v34, v37);
  v18 = sub_24F91FA08();
  v19 = v38;
  v20 = v39;
  __swift_project_boxed_opaque_existential_1(v37, v38);
  if (v18 < (*(v20 + 32))(v19, v20))
  {
    v21 = v38;
    v22 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v23 = sub_24F91FA08();
    (*(v22 + 16))(&v31, v23, v21, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCB0);
    if (swift_dynamicCast())
    {
      sub_24E612C80(v29, &v34);
      v24 = *(&v35 + 1);
      v25 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
      v16 = (*(v25 + 8))(v24, v25);
      __swift_destroy_boxed_opaque_existential_1(&v34);
      goto LABEL_17;
    }

    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_24E601704(v29, &qword_27F22FC98);
  }

  __swift_destroy_boxed_opaque_existential_1(v37);
  return 0;
}

double FlowPreview.init(destination:actions:)@<D0>(__int128 *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_24E60169C(a1, v12, &qword_27F22FCB8);
  v6 = v12[0];
  if (v12[0] == 1)
  {
    sub_24E601704(v12, &qword_27F22FCB8);
    goto LABEL_7;
  }

  sub_24EDC5824(v12);
  if (!v6)
  {
    goto LABEL_7;
  }

  sub_24E60169C(a1, v12, &qword_27F22FCB8);
  if (v12[0] != 1)
  {
    v7 = v13;
    sub_24EDC5824(v12);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a2 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_9;
      }
    }

    else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    sub_24E601704(a1, &qword_27F22FCB8);

    *(a3 + 48) = 0;
    *&v9 = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return *&v9;
  }

  sub_24E601704(v12, &qword_27F22FCB8);
LABEL_9:
  *&v14[9] = *(a1 + 25);
  v8 = *a1;
  *v14 = a1[1];
  v9 = *v14;
  v10 = *&v14[16];
  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 32) = v10;
  *(a3 + 48) = a2;
  return *&v9;
}

uint64_t FlowPreviewDestination.ContentType.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

__n128 FlowPreviewDestination.init(flowAction:sender:contentType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = a1;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 8) = *a2;
  *(a4 + 24) = v6;
  *(a4 + 40) = v4;
  return result;
}

uint64_t sub_24EDC5774@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_24E615E00(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0);
  type metadata accessor for Review(0);
  if (swift_dynamicCast() || (type metadata accessor for ReviewsContainer(), swift_dynamicCast()))
  {

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v5);
  *a2 = v3;
  return result;
}

unint64_t sub_24EDC5858()
{
  result = qword_27F22FCC0;
  if (!qword_27F22FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCC0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit22FlowPreviewDestinationVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EDC58D0(uint64_t a1, int a2)
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

uint64_t sub_24EDC5918(uint64_t result, int a2, int a3)
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

uint64_t sub_24EDC5974(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_24EDC59D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EDC5AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewDestinationForItem(at:)(a1, a2, WitnessTable, a3);
}

uint64_t sub_24EDC5B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FlowPreviewablePresenter<>.flowPreviewActionsConfiguration(at:sender:)(a1, v5, a3, v6, WitnessTable);
}

unint64_t sub_24EDC5B94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v66 = MEMORY[0x277D84F90];
  sub_24F457E54(0, v1, 0);
  v2 = v66;
  v4 = v3 + 56;
  v5 = sub_24F92C6B8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FD38);
  v50 = v3;
  v7 = 0;
  v47 = v3 + 64;
  v48 = v1;
  v49 = v3 + 56;
  while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v3 + 32))
  {
    if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
    {
      goto LABEL_31;
    }

    v53 = v5 >> 6;
    v54 = v5;
    v55 = v2;
    v51 = v7;
    v52 = *(v3 + 36);
    v9 = (*(v3 + 48) + (v5 << 6));
    v10 = v9[6];
    v56 = v9[7];
    v57 = *v9;
    v58 = v9[1];
    v59 = v9[2];
    v60 = v9[3];
    v61 = v9[4];
    v62 = v9[5];
    strcpy(v63, "metricsValue");
    BYTE5(v63[1]) = 0;
    HIWORD(v63[1]) = -5120;
    v64 = v10;
    v65 = v56;
    v11 = sub_24F92CB58();

    result = sub_24E76D644(0x65756C6176, 0xE500000000000000);
    if (v12)
    {
      goto LABEL_28;
    }

    v13 = v11 + 8;
    *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v11[6] + 16 * result);
    *v14 = 0x65756C6176;
    v14[1] = 0xE500000000000000;
    v15 = (v11[7] + 16 * result);
    *v15 = v57;
    v15[1] = v58;
    v16 = v11[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v18;

    result = sub_24E76D644(0x656C746974, 0xE500000000000000);
    if (v19)
    {
      goto LABEL_28;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v20 = (v11[6] + 16 * result);
    *v20 = 0x656C746974;
    v20[1] = 0xE500000000000000;
    v21 = (v11[7] + 16 * result);
    *v21 = v59;
    v21[1] = v60;
    v22 = v11[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v23;

    result = sub_24E76D644(0x6D496D6574737973, 0xEF656D614E656761);
    if (v24)
    {
      goto LABEL_28;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v25 = (v11[6] + 16 * result);
    *v25 = 0x6D496D6574737973;
    v25[1] = 0xEF656D614E656761;
    v26 = (v11[7] + 16 * result);
    *v26 = v61;
    v26[1] = v62;
    v27 = v11[2];
    v17 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v28;
    v29 = v63[0];
    v30 = v63[1];
    v32 = v64;
    v31 = v65;

    result = sub_24E76D644(v63[0], v63[1]);
    if (v33)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      break;
    }

    *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v34 = (v11[6] + 16 * result);
    *v34 = v29;
    v34[1] = v30;
    v35 = (v11[7] + 16 * result);
    *v35 = v32;
    v35[1] = v31;
    v36 = v11[2];
    v17 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v17)
    {
      goto LABEL_29;
    }

    v11[2] = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F22FD40);
    swift_arrayDestroy();
    v2 = v55;
    v66 = v55;
    v39 = *(v55 + 16);
    v38 = *(v55 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_24F457E54((v38 > 1), v39 + 1, 1);
      v2 = v66;
    }

    *(v2 + 16) = v39 + 1;
    *(v2 + 8 * v39 + 32) = v11;
    v3 = v50;
    v8 = 1 << *(v50 + 32);
    result = v5;
    if (v5 >= v8)
    {
      goto LABEL_32;
    }

    v4 = v49;
    v40 = *(v49 + 8 * v53);
    if ((v40 & (1 << v5)) == 0)
    {
      goto LABEL_33;
    }

    if (v52 != *(v50 + 36))
    {
      goto LABEL_34;
    }

    v41 = v40 & (-2 << (v5 & 0x3F));
    if (v41)
    {
      v8 = __clz(__rbit64(v41)) | v5 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v42 = v53 << 6;
      v43 = v53 + 1;
      v44 = (v47 + 8 * v53);
      while (v43 < (v8 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_24E6586A8(v54, v52, 0);
          v8 = __clz(__rbit64(v45)) + v42;
          goto LABEL_4;
        }
      }

      result = sub_24E6586A8(v54, v52, 0);
    }

LABEL_4:
    v7 = v51 + 1;
    v5 = v8;
    if (v51 + 1 == v48)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

GameStoreKit::PageFacets::Facet::DisplayType_optional __swiftcall PageFacets.Facet.DisplayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PageFacets.Facet.DisplayType.rawValue.getter()
{
  v1 = 0x6553656C676E6973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C67676F74;
  }
}

uint64_t sub_24EDC615C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6553656C676E6973;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x800000024FA3FA90;
  if (v2 != 1)
  {
    v3 = 0xD000000000000011;
    v4 = 0x800000024FA3FA90;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C67676F74;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 0x6553656C676E6973;
  if (*a2 == 1)
  {
    v5 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

void sub_24EDC6278(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF6E6F697463656CLL;
  v5 = 0x6553656C676E6973;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x800000024FA3FA90;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C67676F74;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_24EDC62E4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EDC6394()
{
  sub_24F92B218();
}

uint64_t sub_24EDC6430()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t PageFacets.Facet.Option.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.Facet.Option.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageFacets.Facet.Option.systemImageName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageFacets.Facet.Option.metricsValue.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PageFacets.Facet.Option.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v48 = a2;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  v49 = a1;
  sub_24F928398();
  v17 = sub_24F928348();
  v19 = v18;
  v20 = *(v6 + 8);
  v47 = v5;
  v20(v16, v5);
  v46 = v19;
  if (v19)
  {
    v21 = v49;
    v44 = v17;
    sub_24F928398();
    v22 = sub_24EDC6964();
    v42 = v23;
    v43 = v22;
    v24 = v47;
    v20(v13, v47);
    sub_24F928398();
    v25 = sub_24EDC6964();
    v41 = v26;
    v20(v10, v24);
    v27 = v45;
    sub_24F928398();
    v28 = sub_24EDC6964();
    v30 = v29;
    v31 = sub_24F9285B8();
    (*(*(v31 - 8) + 8))(v48, v31);
    v20(v21, v24);
    result = (v20)(v27, v24);
    v33 = v42;
    *a3 = v43;
    a3[1] = v33;
    v34 = v46;
    a3[2] = v44;
    a3[3] = v34;
    v35 = v41;
    a3[4] = v25;
    a3[5] = v35;
    a3[6] = v28;
    a3[7] = v30;
  }

  else
  {
    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v37 = MEMORY[0x277D84F90];
    *v38 = 0x656C746974;
    v38[1] = 0xE500000000000000;
    v38[2] = &type metadata for PageFacets.Facet;
    v38[3] = v37;
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D22540], v36);
    swift_willThrow();
    v39 = sub_24F9285B8();
    (*(*(v39 - 8) + 8))(v48, v39);
    return (v20)(v49, v47);
  }

  return result;
}

uint64_t sub_24EDC6964()
{
  sub_24F928368();
  if (v5)
  {
    sub_24E612B0C(&v4, v6);
    sub_24E643A9C(v6, &v4);
    if (swift_dynamicCast())
    {
      if (v3)
      {
        v0 = 1702195828;
      }

      else
      {
        v0 = 0x65736C6166;
      }

      goto LABEL_10;
    }

    sub_24E9421D0();
    if (swift_dynamicCast())
    {
      v1 = [v3 stringValue];
      v0 = sub_24F92B0D8();

LABEL_10:
      __swift_destroy_boxed_opaque_existential_1(v6);
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1(&v4);
      return v0;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
    if (swift_dynamicCast())
    {
      v0 = v3;
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(&v4);
  }

  else
  {
    sub_24E601704(&v4, &qword_27F2129B0);
  }

  return 0;
}

void __swiftcall PageFacets.Facet.Option.init(value:title:systemImageName:metricsValue:)(GameStoreKit::PageFacets::Facet::Option *__return_ptr retstr, Swift::String_optional value, Swift::String title, Swift::String_optional systemImageName, Swift::String_optional metricsValue)
{
  retstr->value = value;
  retstr->title = title;
  retstr->systemImageName = systemImageName;
  retstr->metricsValue = metricsValue;
}

uint64_t sub_24EDC6AF8()
{
  v1 = 0x65756C6176;
  v2 = 0x6D496D6574737973;
  if (*v0 != 2)
  {
    v2 = 0x567363697274656DLL;
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

uint64_t sub_24EDC6B80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24EDCB4B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24EDC6BA8(uint64_t a1)
{
  v2 = sub_24EDCB04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EDC6BE4(uint64_t a1)
{
  v2 = sub_24EDCB04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PageFacets.Facet.Option.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDCB04C();
  sub_24F92D128();
  v16 = 0;
  v10 = v12[7];
  sub_24F92CCA8();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_24F92CD08();
  v14 = 2;
  sub_24F92CCA8();
  v13 = 3;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t PageFacets.Facet.Option.hash(into:)()
{
  v1 = v0[5];
  v2 = v0[7];
  if (v0[1])
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  sub_24F92B218();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_6;
    }

    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    return sub_24F92D088();
  }

LABEL_6:
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t PageFacets.Facet.Option.hashValue.getter()
{
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t PageFacets.Facet.Option.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FCD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EDCB04C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_24F92CBC8();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_24F92CC28();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_24F92CBC8();
  v25 = v13;
  v33 = 3;
  v14 = sub_24F92CBC8();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_24E8056D8(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_24E805734(v32);
}

uint64_t sub_24EDC7260()
{
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)();
  return sub_24F92D0B8();
}

uint64_t sub_24EDC72A4()
{
  sub_24F92D068();
  PageFacets.Facet.Option.hash(into:)();
  return sub_24F92D0B8();
}

double PageFacets.Facet.init(id:parameterName:title:displayType:options:defaultOptions:displayOptionsInline:showsSelectedOptions:isHiddenFromMenu:metricsParameterName:clickAction:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v16 = *a7;
  result = 0.0;
  *(a9 + 104) = 0u;
  *(a9 + 120) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 48) = v16;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 88) = a11;
  *(a9 + 89) = a12;
  *(a9 + 72) = a14;
  *(a9 + 80) = a15;
  *(a9 + 90) = a13;
  *(a9 + 96) = a16;
  return result;
}

uint64_t PageFacets.Facet.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v128 = a2;
  v119 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v114 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v104 - v7;
  v9 = sub_24F92AC28();
  v123 = *(v9 - 8);
  v124 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v122 = &v104 - v12;
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v118 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v116 = &v104 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v115 = &v104 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v113 = &v104 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v120 = &v104 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v104 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v125 = &v104 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v104 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v104 - v33;
  sub_24F928398();
  v117 = sub_24F928348();
  v36 = v35;
  v38 = v14 + 8;
  v37 = *(v14 + 8);
  v37(v34, v13);
  v126 = v36;
  if (!v36)
  {
    v42 = v37;
    v43 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v45 = v47;
    v48 = MEMORY[0x277D84F90];
    *v47 = 25705;
    v47[1] = 0xE200000000000000;
    v47[2] = &type metadata for PageFacets.Facet;
    v47[3] = v48;
    goto LABEL_6;
  }

  v127 = v38;
  sub_24F928398();
  v111 = sub_24F928348();
  v40 = v39;
  v37(v32, v13);
  if (!v40)
  {

    v49 = v37;
    v50 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v52 = v51;
    v53 = MEMORY[0x277D84F90];
    *v51 = 0x656C746974;
    v54 = 0xE500000000000000;
LABEL_10:
    v51[1] = v54;
    v51[2] = &type metadata for PageFacets.Facet;
    v51[3] = v53;
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D22540], v50);
    swift_willThrow();
    v49(a1, v13);
    goto LABEL_11;
  }

  v41 = v125;
  sub_24F928398();
  sub_24EDCB0A0();
  sub_24F928248();
  v37(v41, v13);
  if (v130 == 3)
  {

    v42 = v37;
    v43 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v45 = v44;
    v46 = MEMORY[0x277D84F90];
    *v44 = 0x5479616C70736964;
    v44[1] = 0xEB00000000657079;
    v44[2] = &type metadata for PageFacets.Facet;
    v44[3] = v46;
LABEL_6:
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D22540], v43);
    swift_willThrow();
    v42(a1, v13);
LABEL_11:
    v57 = v128;
    v58 = sub_24F9285B8();
    return (*(*(v58 - 8) + 8))(v57, v58);
  }

  v129 = v130;
  sub_24F928398();
  sub_24F9282B8();
  v37(v27, v13);
  v56 = v123;
  v55 = v124;
  v108 = *(v123 + 48);
  if (v108(v8, 1, v124) == 1)
  {

    sub_24E601704(v8, &qword_27F2213B0);
    v49 = v37;
    v50 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v52 = v51;
    v53 = MEMORY[0x277D84F90];
    *v51 = 0x736E6F6974706FLL;
    v54 = 0xE700000000000000;
    goto LABEL_10;
  }

  v109 = v13;
  v60 = v56 + 32;
  v61 = *(v56 + 32);
  v62 = v122;
  v107 = v60;
  v106 = v61;
  v63 = v61(v122, v8, v55);
  v110 = a1;
  MEMORY[0x28223BE20](v63);
  *(&v104 - 2) = v128;
  v64 = sub_24F92ABB8();
  v65 = v64;
  v66 = v110;
  if (v129 && !*(v64 + 16))
  {

    v81 = v37;
    v82 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v83 = MEMORY[0x277D84F90];
    *v84 = 0x736E6F6974706FLL;
    v84[1] = 0xE700000000000000;
    v84[2] = &type metadata for PageFacets.Facet;
    v84[3] = v83;
    (*(*(v82 - 8) + 104))(v84, *MEMORY[0x277D22540], v82);
    swift_willThrow();
    v81(v66, v109);
    goto LABEL_20;
  }

  v121 = v40;
  v67 = v120;
  sub_24F928398();
  v105 = sub_24F928348();
  v69 = v68;
  v70 = v109;
  v37(v67, v109);
  v71 = v37;
  v120 = v69;
  if (!v69)
  {

    v78 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v79 = MEMORY[0x277D84F90];
    strcpy(v80, "parameterName");
    *(v80 + 7) = -4864;
    *(v80 + 2) = &type metadata for PageFacets.Facet;
    *(v80 + 3) = v79;
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D22540], v78);
    swift_willThrow();
    v71(v110, v70);
LABEL_20:
    (*(v123 + 8))(v62, v124);
    goto LABEL_11;
  }

  v104 = v65;
  v72 = v113;
  sub_24F928398();
  v73 = v114;
  sub_24F9282B8();
  v37(v72, v70);
  v74 = v124;
  v75 = v108(v73, 1, v124);
  v76 = v128;
  v77 = v71;
  if (v75 == 1)
  {
    sub_24E601704(v73, &qword_27F2213B0);
    v114 = MEMORY[0x277D84FA0];
  }

  else
  {
    v85 = v112;
    v86 = v106(v112, v73, v74);
    MEMORY[0x28223BE20](v86);
    *(&v104 - 2) = v76;
    v87 = sub_24F92ABB8();
    v114 = sub_24F45D748(v87);

    (*(v123 + 8))(v85, v74);
  }

  v88 = v115;
  v89 = v110;
  sub_24F928398();
  LODWORD(v113) = sub_24F928278();
  v90 = v109;
  v77(v88, v109);
  v91 = v116;
  sub_24F928398();
  LODWORD(v115) = sub_24F928278();
  v77(v91, v90);
  v92 = v118;
  sub_24F928398();
  LODWORD(v116) = sub_24F928278();
  v77(v92, v90);
  v93 = v125;
  sub_24F928398();
  v118 = sub_24F928348();
  v112 = v94;
  v77(v93, v90);
  type metadata accessor for Action();
  sub_24F928398();
  v95 = v128;
  v96 = static Action.tryToMakeInstance(byDeserializing:using:)(v93, v128);
  v77(v89, v90);
  v77(v93, v90);
  (*(v123 + 8))(v122, v124);
  v97 = v119;
  *(v119 + 120) = 0u;
  *(v97 + 104) = 0u;
  v98 = v126;
  *v97 = v117;
  *(v97 + 8) = v98;
  v99 = v121;
  *(v97 + 32) = v111;
  *(v97 + 40) = v99;
  v100 = v120;
  *(v97 + 16) = v105;
  *(v97 + 24) = v100;
  *(v97 + 48) = v129;
  v101 = v114;
  *(v97 + 56) = v104;
  *(v97 + 64) = v101;
  *(v97 + 88) = v115 & 1;
  *(v97 + 89) = v113 & 1;
  v102 = v112;
  *(v97 + 72) = v118;
  *(v97 + 80) = v102;
  *(v97 + 90) = v116 & 1;
  *(v97 + 96) = v96;
  v103 = sub_24F9285B8();
  return (*(*(v103 - 8) + 8))(v95, v103);
}

uint64_t sub_24EDC813C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  MEMORY[0x28223BE20](v8);
  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v5 + 16))(v7, a2, v4);
  sub_24EDCB6C8();
  return sub_24F929548();
}

uint64_t PageFacets.Facet.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.Facet.parameterName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PageFacets.Facet.title.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PageFacets.Facet.metricsParameterName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t PageFacets.Facet.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_24F92B218();
  sub_24F92B218();
  sub_24F92B218();
  sub_24F92B218();

  sub_24EDC9948(a1, *(v2 + 64));
  sub_24EA1DCB8(a1, *(v2 + 56));
  sub_24F92D088();
  sub_24F92D088();
  return sub_24F92D088();
}

uint64_t PageFacets.Facet.hashValue.getter()
{
  sub_24F92D068();
  PageFacets.Facet.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8534()
{
  sub_24F92D068();
  PageFacets.Facet.hash(into:)(v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8578()
{
  sub_24F92D068();
  PageFacets.Facet.hash(into:)(v1);
  return sub_24F92D0B8();
}

GameStoreKit::PageFacets::FacetGroup __swiftcall PageFacets.FacetGroup.init(title:facets:)(Swift::String_optional title, Swift::OpaquePointer facets)
{
  *v2 = title;
  *(v2 + 16) = facets;
  result.title = title;
  result.facets = facets;
  return result;
}

uint64_t PageFacets.FacetGroup.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a3;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v31 - v13;
  v34 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v15 = *(v6 + 8);
  v33 = v5;
  v15(v11, v5);
  v16 = sub_24F92AC28();
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v14, 1, v16);
  v35 = a2;
  if (v18 != 1)
  {
    MEMORY[0x28223BE20](v18);
    *(&v31 - 2) = a2;
    v19 = sub_24F92ABB8();
    (*(v17 + 8))(v14, v16);
    if (*(v19 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:

    v27 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v28 = 0x737465636166;
    v28[1] = 0xE600000000000000;
    v28[2] = &type metadata for PageFacets.FacetGroup;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v15(v34, v33);
    goto LABEL_6;
  }

  sub_24E601704(v14, &qword_27F2213B0);
  v19 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = v34;
  sub_24F928398();
  v21 = sub_24F928348();
  v23 = v22;
  v24 = v20;
  v25 = v33;
  v15(v24, v33);
  v15(v8, v25);
  v26 = v32;
  *v32 = v21;
  v26[1] = v23;
  v26[2] = v19;
LABEL_6:
  v29 = sub_24F9285B8();
  return (*(*(v29 - 8) + 8))(v35, v29);
}

uint64_t sub_24EDC89E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_24EDCB674();
  return sub_24F929548();
}

uint64_t PageFacets.FacetGroup.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PageFacets.FacetGroup.facets.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t PageFacets.FacetGroup.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  return sub_24EA1DE28(a1, v3);
}

uint64_t static PageFacets.FacetGroup.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_24EA17DD8(v4, v6);
}

uint64_t PageFacets.FacetGroup.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24EA1DE28(v4, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8D78()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24EA1DE28(v4, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8DF8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    sub_24F92D088();
    sub_24F92B218();
  }

  else
  {
    sub_24F92D088();
  }

  return sub_24EA1DE28(a1, v3);
}

uint64_t sub_24EDC8E78()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_24F92D068();
  sub_24F92D088();
  if (v1)
  {
    sub_24F92B218();
  }

  sub_24EA1DE28(v4, v2);
  return sub_24F92D0B8();
}

uint64_t sub_24EDC8F0C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a2[1];
  v6 = a2[2];
  if (v3)
  {
    if (v5)
    {
      v7 = *a1 == *a2 && v3 == v5;
      if (v7 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_8:

  return sub_24EA17DD8(v4, v6);
}

GameStoreKit::PageFacets __swiftcall PageFacets.init(facetGroups:resetButtonTitle:allowsResetButton:)(Swift::OpaquePointer facetGroups, Swift::String_optional resetButtonTitle, Swift::Bool allowsResetButton)
{
  countAndFlagsBits = resetButtonTitle.value._countAndFlagsBits;
  rawValue = facetGroups._rawValue;
  v7 = v3;
  if (!resetButtonTitle.value._object)
  {
    resetButtonTitle.value._countAndFlagsBits = 0x800000024FA5DD50;
    v8 = 0xD00000000000001DLL;
    v9 = 0xE000000000000000;
    v10 = localizedString(_:comment:)(*(&resetButtonTitle - 8), *&resetButtonTitle.value._object);
    resetButtonTitle.value._countAndFlagsBits = v10._object;
    facetGroups._rawValue = v10._countAndFlagsBits;
    countAndFlagsBits = v10._countAndFlagsBits;
    resetButtonTitle.value._object = v10._object;
  }

  *v7 = rawValue;
  *(v7 + 8) = countAndFlagsBits;
  *(v7 + 16) = resetButtonTitle.value._object;
  *(v7 + 24) = allowsResetButton;
  result.resetButtonTitle = resetButtonTitle;
  result.facetGroups = facetGroups;
  result.allowsResetButton = allowsResetButton;
  return result;
}

uint64_t PageFacets.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = a3;
  v35 = a2;
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v33 - v15;
  v36 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v17 = *(v5 + 8);
  v17(v13, v4);
  v18 = sub_24F92AC28();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 48))(v16, 1, v18);
  if (v20 == 1)
  {
    sub_24E601704(v16, &qword_27F2213B0);
    v21 = MEMORY[0x277D84F90];
  }

  else
  {
    v33[1] = v33;
    MEMORY[0x28223BE20](v20);
    v33[-2] = v35;
    v21 = sub_24F92ABB8();
    (*(v19 + 8))(v16, v18);
  }

  sub_24F928398();
  countAndFlagsBits = sub_24F928348();
  object = v23;
  v17(v10, v4);
  sub_24F928398();
  v25 = sub_24F928278();
  v17(v7, v4);
  if (!object)
  {
    v26._countAndFlagsBits = 0xD00000000000001DLL;
    v26._object = 0x800000024FA5DD50;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v28 = localizedString(_:comment:)(v26, v27);
    countAndFlagsBits = v28._countAndFlagsBits;
    object = v28._object;
  }

  v29 = v35;
  v17(v36, v4);
  v30 = v34;
  *v34 = v21;
  v30[1] = countAndFlagsBits;
  v30[2] = object;
  *(v30 + 24) = v25 & 1;
  v31 = sub_24F9285B8();
  return (*(*(v31 - 8) + 8))(v29, v31);
}

uint64_t sub_24EDC93B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F9285B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = MEMORY[0x28223BE20](v8);
  (*(v11 + 16))(&v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  (*(v5 + 16))(v7, a2, v4);
  sub_24EDCB620();
  return sub_24F929548();
}

uint64_t PageFacets.facetGroups.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PageFacets.resetButtonTitle.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PageFacets.hash(into:)(uint64_t a1)
{
  v2 = v1[2];
  sub_24EA1DF78(a1, *v1);
  sub_24F92D088();
  if (v2)
  {
    sub_24F92B218();
  }

  return sub_24F92D088();
}

uint64_t static PageFacets.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (sub_24EA1782C(*a1, *a2))
  {
    if (v3)
    {
      if (v6 && (v2 == v5 && v3 == v6 || (sub_24F92CE08() & 1) != 0))
      {
        return v4 ^ v7 ^ 1u;
      }
    }

    else if (!v6)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_24EDC96E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if (sub_24EA1782C(*a1, *a2))
  {
    if (v3)
    {
      if (v6 && (v2 == v5 && v3 == v6 || (sub_24F92CE08() & 1) != 0))
      {
        return v4 ^ v7 ^ 1u;
      }
    }

    else if (!v6)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t sub_24EDC97AC(uint64_t a1, uint64_t a2)
{
  sub_24F92D0B8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    sub_24F92D068();
    v5 &= v5 - 1;
    sub_24F92B218();

    result = sub_24F92D0B8();
    v8 ^= result;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x253052A00](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDC9948(uint64_t a1, uint64_t a2)
{
  sub_24F92D0B8();
  v17 = a2;
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  while (v6)
  {
    v18 = v9;
LABEL_12:
    v13 = (*(v17 + 48) + ((v10 << 12) | (__clz(__rbit64(v6)) << 6)));
    v14 = v13[1];
    v15 = v13[5];
    v16 = v13[7];
    sub_24F92D068();
    sub_24F92D088();

    if (v14)
    {

      sub_24F92B218();
    }

    sub_24F92B218();
    if (v15)
    {
      sub_24F92D088();
      sub_24F92B218();
      if (!v16)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_24F92D088();
      if (!v16)
      {
LABEL_4:
        sub_24F92D088();
        goto LABEL_5;
      }
    }

    sub_24F92D088();
    sub_24F92B218();
LABEL_5:
    v6 &= v6 - 1;
    v11 = sub_24F92D0B8();

    v9 = v11 ^ v18;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return MEMORY[0x253052A00](v9);
    }

    v6 = *(v3 + 8 * v12);
    ++v10;
    if (v6)
    {
      v18 = v9;
      v10 = v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24EDC9B90(uint64_t a1, uint64_t a2)
{
  sub_24F92D0B8();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x253052A00](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_24F92D068();

        sub_24F92B218();
        v11 = sub_24F92D0B8();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12GameStoreKit10PageFacetsV5FacetV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_39;
  }

  v5 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v5 && (sub_24F92CE08() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_24F92CE08() & 1) == 0)
  {
    goto LABEL_39;
  }

  v6 = 0x6553656C676E6973;
  v7 = 0xEF6E6F697463656CLL;
  v8 = 0x800000024FA3FA90;
  if (*(a1 + 48) != 1)
  {
    v6 = 0xD000000000000011;
    v7 = 0x800000024FA3FA90;
  }

  if (*(a1 + 48))
  {
    v9 = v6;
  }

  else
  {
    v9 = 0x656C67676F74;
  }

  if (*(a1 + 48))
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  v11 = 0x6553656C676E6973;
  if (*(a2 + 48) == 1)
  {
    v8 = 0xEF6E6F697463656CLL;
  }

  else
  {
    v11 = 0xD000000000000011;
  }

  if (*(a2 + 48))
  {
    v12 = v11;
  }

  else
  {
    v12 = 0x656C67676F74;
  }

  if (*(a2 + 48))
  {
    v13 = v8;
  }

  else
  {
    v13 = 0xE600000000000000;
  }

  if (v9 == v12 && v10 == v13)
  {
  }

  else
  {
    v14 = sub_24F92CE08();

    if ((v14 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if ((sub_24EDD4178(*(a1 + 64), *(a2 + 64)) & 1) != 0 && (sub_24EA169B8(*(a1 + 56), *(a2 + 56)) & 1) != 0 && *(a1 + 88) == *(a2 + 88) && *(a1 + 89) == *(a2 + 89))
  {
    v15 = *(a1 + 90) ^ *(a2 + 90) ^ 1;
    return v15 & 1;
  }

LABEL_39:
  v15 = 0;
  return v15 & 1;
}

uint64_t _s12GameStoreKit10PageFacetsV5FacetV6OptionV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[7];
  v9 = a2[1];
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[4];
  v13 = a2[5];
  v14 = a2[7];
  if (v3)
  {
    if (!v9)
    {
      return 0;
    }

    v16 = a2[6];
    v17 = a1[6];
    if ((*a1 != *a2 || v3 != v9) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v16 = a2[6];
    v17 = a1[6];
    if (v9)
    {
      return 0;
    }
  }

  if ((v4 != v10 || v6 != v11) && (sub_24F92CE08() & 1) == 0)
  {
    return 0;
  }

  if (v7)
  {
    if (!v13 || (v5 != v12 || v7 != v13) && (sub_24F92CE08() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  if (v8)
  {
    if (v14 && (v17 == v16 && v8 == v14 || (sub_24F92CE08() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v14)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_24EDCA028(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (!v2)
  {
    v5 = MEMORY[0x277D84F90];
LABEL_20:
    v15 = sub_24E609724(MEMORY[0x277D84F90]);
    v16 = *(v5 + 2);
    if (!v16)
    {
LABEL_58:

      return v15;
    }

    v17 = 0;
    v18 = (v5 + 32);
    v19 = MEMORY[0x277D84FA0];
    while (1)
    {
      if (v17 >= *(v5 + 2))
      {
        goto LABEL_62;
      }

      sub_24E772674(v18, v65);
      if (!v66)
      {
        break;
      }

      if (v66 != 1 || (v20 = v67, !*(v67 + 16)))
      {
        sub_24E772674(v65, v64);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v61[0] = v15;
        v37 = sub_24E76D6EC(v64);
        v39 = v15[2];
        v40 = (v38 & 1) == 0;
        v13 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v13)
        {
          goto LABEL_64;
        }

        v42 = v38;
        if (v15[3] < v41)
        {
          sub_24E899498(v41, isUniquelyReferenced_nonNull_native);
          v37 = sub_24E76D6EC(v64);
          if ((v42 & 1) != (v43 & 1))
          {
            goto LABEL_70;
          }

          goto LABEL_41;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_41:
          v15 = *&v61[0];
          if ((v42 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v57 = v37;
          sub_24E8ADDC8();
          v37 = v57;
          v15 = *&v61[0];
          if ((v42 & 1) == 0)
          {
LABEL_42:
            v15[(v37 >> 6) + 8] |= 1 << v37;
            v51 = v37;
            sub_24E772674(v64, v15[6] + 136 * v37);
            *(v15[7] + 8 * v51) = v19;
            sub_24E7726D0(v64);
            v52 = v15[2];
            v13 = __OFADD__(v52, 1);
            v53 = v52 + 1;
            if (v13)
            {
              goto LABEL_67;
            }

LABEL_48:
            v15[2] = v53;
            goto LABEL_23;
          }
        }

        goto LABEL_22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22A678);
      inited = swift_initStackObject();
      inited[1] = xmmword_24F93DE60;
      v22 = v20[2];
      v23 = v20[3];
      v24 = v20[5];
      v62 = v20[4];
      v25 = v62;
      v63 = v24;
      v61[0] = v22;
      v61[1] = v23;
      v26 = v20[3];
      inited[2] = v20[2];
      inited[3] = v26;
      inited[4] = v25;
      inited[5] = v24;
      sub_24E8056D8(v61, v64);
      v27 = sub_24F45D748(inited);
      swift_setDeallocating();
      sub_24E805734((inited + 2));
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_24E76D6EC(v65);
      v31 = v15[2];
      v32 = (v30 & 1) == 0;
      v13 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v13)
      {
        goto LABEL_68;
      }

      v34 = v30;
      if (v15[3] >= v33)
      {
        if ((v28 & 1) == 0)
        {
          v59 = v29;
          sub_24E8ADDC8();
          v29 = v59;
        }
      }

      else
      {
        sub_24E899498(v33, v28);
        v29 = sub_24E76D6EC(v65);
        if ((v34 & 1) != (v35 & 1))
        {
          goto LABEL_70;
        }
      }

      if (v34)
      {
        *(v15[7] + 8 * v29) = v27;
      }

      else
      {
        v56 = v29;
        sub_24E772674(v65, v64);
        sub_24EC2579C(v56, v64, v27, v15);
      }

LABEL_23:
      sub_24E7726D0(v65);
      ++v17;
      v18 += 136;
      if (v16 == v17)
      {
        goto LABEL_58;
      }
    }

    sub_24E772674(v65, v64);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    *&v61[0] = v15;
    v37 = sub_24E76D6EC(v64);
    v46 = v15[2];
    v47 = (v45 & 1) == 0;
    v13 = __OFADD__(v46, v47);
    v48 = v46 + v47;
    if (v13)
    {
      goto LABEL_66;
    }

    v49 = v45;
    if (v15[3] >= v48)
    {
      if ((v44 & 1) == 0)
      {
        v58 = v37;
        sub_24E8ADDC8();
        v37 = v58;
        v15 = *&v61[0];
        if ((v49 & 1) == 0)
        {
LABEL_47:
          v15[(v37 >> 6) + 8] |= 1 << v37;
          v54 = v37;
          sub_24E772674(v64, v15[6] + 136 * v37);
          *(v15[7] + 8 * v54) = v19;
          sub_24E7726D0(v64);
          v55 = v15[2];
          v13 = __OFADD__(v55, 1);
          v53 = v55 + 1;
          if (v13)
          {
            goto LABEL_69;
          }

          goto LABEL_48;
        }

        goto LABEL_22;
      }
    }

    else
    {
      sub_24E899498(v48, v44);
      v37 = sub_24E76D6EC(v64);
      if ((v49 & 1) != (v50 & 1))
      {
        goto LABEL_70;
      }
    }

    v15 = *&v61[0];
    if ((v49 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_22:
    *(v15[7] + 8 * v37) = v19;

    sub_24E7726D0(v64);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = (v1 + 48);
  v5 = MEMORY[0x277D84F90];
  while (v3 < *(v1 + 16))
  {
    v6 = *v4;
    v7 = *(*v4 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_60;
    }

    v10 = swift_isUniquelyReferenced_nonNull_native();
    if (v10 && v9 <= *(v5 + 3) >> 1)
    {
      if (!*(v6 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_24E6165F4(v10, v11, 1, v5);
      if (!*(v6 + 16))
      {
LABEL_3:

        if (v7)
        {
          goto LABEL_61;
        }

        goto LABEL_4;
      }
    }

    if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
    {
      goto LABEL_63;
    }

    swift_arrayInitWithCopy();

    if (v7)
    {
      v12 = *(v5 + 2);
      v13 = __OFADD__(v12, v7);
      v14 = v12 + v7;
      if (v13)
      {
        goto LABEL_65;
      }

      *(v5 + 2) = v14;
    }

LABEL_4:
    ++v3;
    v4 += 3;
    if (v2 == v3)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t _s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v75 = a3;
  v74 = sub_24F9285B8();
  v66 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v73 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v63 - v7;
  v9 = sub_24F92AC28();
  v64 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v72 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v63 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - v14;
  v16 = sub_24F928388();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v80 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v63 - v20;
  v22 = *a2;
  if (!*a2)
  {
    v24 = MEMORY[0x277D84F90];

    return sub_24E609724(v24);
  }

  v81 = *(a2 + 8);
  v23 = *(a2 + 24);
  sub_24E60169C(a1, v15, &qword_27F212F48);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_24E601704(v15, &qword_27F212F48);
LABEL_9:
    v84 = v22;
    v85 = v81;
    LOBYTE(v86) = v23 & 1;
    return sub_24EDCA028(&v84);
  }

  (*(v17 + 32))(v21, v15, v16);
  if (sub_24F928328())
  {
    (*(v17 + 8))(v21, v16);
    goto LABEL_9;
  }

  v78 = v21;
  v63 = v17;
  v70 = v8;
  v71 = v16;
  v69 = v9;
  v26 = MEMORY[0x277D84F90];
  v27 = sub_24E609724(MEMORY[0x277D84F90]);
  v76 = *(v22 + 16);
  v77 = v27;
  if (!v76)
  {
LABEL_28:
    v41 = *(v26 + 2);
    v42 = v71;
    if (v41)
    {
      v43 = (v26 + 32);
      v44 = (v63 + 8);
      *&v81 = v64 + 6;
      v67 = (v64 + 2);
      v68 = (v64 + 4);
      v65 = (v63 + 8);
      v66 += 2;
      v63 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      ++v64;
      v46 = v69;
      v45 = v70;
      do
      {
        sub_24E772674(v43, &v84);
        v47 = v80;
        sub_24F928398();
        sub_24F9282B8();
        v48 = *v44;
        (*v44)(v47, v42);
        if ((*v81)(v45, 1, v46) == 1)
        {
          sub_24E7726D0(&v84);
          sub_24E601704(v45, &qword_27F2213B0);
        }

        else
        {
          v76 = v48;
          v49 = v79;
          (*v68)(v79, v45, v46);
          (*v67)(v72, v49, v46);
          (*v66)(v73, v75, v74);
          sub_24EDCB6C8();
          v50 = sub_24F92B6A8();
          v51 = sub_24F45D748(v50);

          v52 = v77;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v83 = v52;
          v55 = sub_24E76D6EC(&v84);
          v56 = v52[2];
          v57 = (v54 & 1) == 0;
          v58 = v56 + v57;
          if (__OFADD__(v56, v57))
          {
            goto LABEL_50;
          }

          v59 = v54;
          if (v52[3] >= v58)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_24E8ADDC8();
            }
          }

          else
          {
            sub_24E899498(v58, isUniquelyReferenced_nonNull_native);
            v60 = sub_24E76D6EC(&v84);
            if ((v59 & 1) != (v61 & 1))
            {
              goto LABEL_52;
            }

            v55 = v60;
          }

          v46 = v69;
          v45 = v70;
          v62 = v83;
          v77 = v83;
          if (v59)
          {
            *(v83[7] + 8 * v55) = v51;
          }

          else
          {
            sub_24E772674(&v84, v82);
            sub_24EC2579C(v55, v82, v51, v62);
          }

          (*v64)(v79, v46);
          sub_24E7726D0(&v84);
          v42 = v71;
          v44 = v65;
          v48 = v76;
        }

        v43 += 136;
        --v41;
      }

      while (v41);
    }

    else
    {

      v48 = *(v63 + 8);
    }

    v48(v78, v42);
    return v77;
  }

  v28 = 0;
  v29 = v22 + 48;
  while (v28 < *(v22 + 16))
  {
    v30 = v22;
    v31 = *v29;
    v32 = *(*v29 + 16);
    v33 = *(v26 + 2);
    v34 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      goto LABEL_47;
    }

    *&v81 = *(v29 - 8);

    swift_bridgeObjectRetain_n();

    v35 = swift_isUniquelyReferenced_nonNull_native();
    if (v35 && (v36 = *(v26 + 3) >> 1, v36 >= v34))
    {
      if (*(v31 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v33 <= v34)
      {
        v37 = v33 + v32;
      }

      else
      {
        v37 = v33;
      }

      v26 = sub_24E6165F4(v35, v37, 1, v26);
      v36 = *(v26 + 3) >> 1;
      if (*(v31 + 16))
      {
LABEL_24:
        if (v36 - *(v26 + 2) < v32)
        {
          goto LABEL_49;
        }

        swift_arrayInitWithCopy();

        if (v32)
        {
          v38 = *(v26 + 2);
          v39 = __OFADD__(v38, v32);
          v40 = v38 + v32;
          if (v39)
          {
            goto LABEL_51;
          }

          *(v26 + 2) = v40;
        }

        goto LABEL_13;
      }
    }

    if (v32)
    {
      goto LABEL_48;
    }

LABEL_13:
    v28 = (v28 + 1);

    v29 += 24;
    v22 = v30;
    if (v76 == v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t _s12GameStoreKit10PageFacetsV24serializeSelectedOptionsySDySSSaySDyS2SSgGGGSDyAC5FacetVShyAJ6OptionVGGFZ_0(uint64_t a1)
{
  v2 = sub_24E608B90(MEMORY[0x277D84F90]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = &unk_24F987810;
  v32 = v7;
  while (v6)
  {
LABEL_11:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_24E772674(*(a1 + 48) + 136 * v12, v39);
    v13 = *(*(a1 + 56) + 8 * v12);
    v36[6] = v39[6];
    v36[7] = v39[7];
    v36[2] = v39[2];
    v36[3] = v39[3];
    v36[4] = v39[4];
    v36[5] = v39[5];
    v36[0] = v39[0];
    v36[1] = v39[1];
    v37 = v40;
    v38 = v13;
    v14 = v9;
    sub_24E60169C(v36, v33, &qword_27F22A670);

    v16 = v34;
    v15 = v35;

    sub_24E7726D0(v33);
    v17 = sub_24EDC5B94(v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_24E76D644(v16, v15);
    v21 = v2[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_23;
    }

    v25 = v20;
    if (v2[3] < v24)
    {
      sub_24E899E48(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_24E76D644(v16, v15);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v9 = v14;
      if (v25)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v30 = v19;
    sub_24E8AE2C4();
    v19 = v30;
    v9 = v14;
    if (v25)
    {
LABEL_4:
      v10 = v19;

      *(v2[7] + 8 * v10) = v17;

      goto LABEL_5;
    }

LABEL_17:
    v2[(v19 >> 6) + 8] |= 1 << v19;
    v27 = (v2[6] + 16 * v19);
    *v27 = v16;
    v27[1] = v15;
    *(v2[7] + 8 * v19) = v17;
    v28 = v2[2];
    v23 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v23)
    {
      goto LABEL_24;
    }

    v2[2] = v29;
LABEL_5:
    v6 &= v6 - 1;
    sub_24E601704(v36, &qword_27F22A670);
    v7 = v32;
    v3 = a1 + 64;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

unint64_t sub_24EDCB04C()
{
  result = qword_27F22FCD0;
  if (!qword_27F22FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCD0);
  }

  return result;
}

unint64_t sub_24EDCB0A0()
{
  result = qword_27F22FCE0;
  if (!qword_27F22FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCE0);
  }

  return result;
}

unint64_t sub_24EDCB14C()
{
  result = qword_27F22FCE8;
  if (!qword_27F22FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCE8);
  }

  return result;
}

unint64_t sub_24EDCB1A4()
{
  result = qword_27F22FCF0;
  if (!qword_27F22FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCF0);
  }

  return result;
}

unint64_t sub_24EDCB1FC()
{
  result = qword_27F22FCF8;
  if (!qword_27F22FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FCF8);
  }

  return result;
}

unint64_t sub_24EDCB254()
{
  result = qword_27F22FD00;
  if (!qword_27F22FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD00);
  }

  return result;
}

uint64_t sub_24EDCB2B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_24EDCB300(uint64_t result, int a2, int a3)
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
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EDCB3B4()
{
  result = qword_27F22FD08;
  if (!qword_27F22FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD08);
  }

  return result;
}

unint64_t sub_24EDCB40C()
{
  result = qword_27F22FD10;
  if (!qword_27F22FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD10);
  }

  return result;
}

unint64_t sub_24EDCB464()
{
  result = qword_27F22FD18;
  if (!qword_27F22FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD18);
  }

  return result;
}

uint64_t sub_24EDCB4B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D496D6574737973 && a2 == 0xEF656D614E656761 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x567363697274656DLL && a2 == 0xEC00000065756C61)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24EDCB620()
{
  result = qword_27F22FD20;
  if (!qword_27F22FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD20);
  }

  return result;
}

unint64_t sub_24EDCB674()
{
  result = qword_27F22FD28;
  if (!qword_27F22FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD28);
  }

  return result;
}

unint64_t sub_24EDCB6C8()
{
  result = qword_27F22FD30;
  if (!qword_27F22FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FD30);
  }

  return result;
}

uint64_t sub_24EDCB76C(unsigned __int8 a1)
{
  sub_24F92D068();
  MEMORY[0x253052A00](a1);
  return sub_24F92D0B8();
}

uint64_t sub_24EDCB7D0()
{
  sub_24F92D068();
  sub_24EDCB744(v2, *v0);
  return sub_24F92D0B8();
}

uint64_t sub_24EDCB810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  updated = type metadata accessor for UpdateActivityInstanceAction();
  v10 = *(updated - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](updated - 8);
  sub_24EDCDD48(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UpdateActivityInstanceAction);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  sub_24EDCC2B0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  *(v13 + ((v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F99F0B0;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24EDCBA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v8 = sub_24F928AE8();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v9 = swift_task_alloc();
  v4[19] = v9;
  *v9 = v4;
  v9[1] = sub_24EDCBB74;

  return sub_24EDCC478(a2, a3, a4);
}

uint64_t sub_24EDCBB74()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24EDCBCC0, 0, 0);
  }
}

uint64_t sub_24EDCBCC0()
{
  v1 = *(v0 + 104);
  updated = type metadata accessor for UpdateActivityInstanceAction();
  sub_24E60169C(v1 + *(updated + 24), v0 + 56, &qword_27F2169E8);
  sub_24E612C80((v0 + 56), v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  v4 = type metadata accessor for UpdateActivityInstanceActionImplementation();
  WitnessTable = swift_getWitnessTable();
  *v3 = v0;
  v3[1] = sub_24EDCBDCC;
  v6 = *(v0 + 144);
  v7 = *(v0 + 112);

  return sub_24F1487B0(v6, v0 + 16, v7, v4, WitnessTable);
}

uint64_t sub_24EDCBDCC()
{
  v2 = *v1;
  v2[21] = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 2));
  if (v0)
  {
    v3 = sub_24EDCBF8C;
  }

  else
  {
    (*(v2[17] + 8))(v2[18], v2[16]);
    v3 = sub_24EDCBF00;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24EDCBF00()
{
  (*(v0[17] + 104))(v0[12], *MEMORY[0x277D21CA8], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EDCBF8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDCC058()
{
  updated = type metadata accessor for UpdateActivityInstanceAction();
  v2 = v0 + ((*(*(updated - 8) + 80) + 24) & ~*(*(updated - 8) + 80));

  v3 = type metadata accessor for ActivityDefinitionDetail();
  v4 = *(v3 + 32);
  v5 = sub_24F9289E8();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v7 = *(v3 + 56);
  v8 = sub_24F920818();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_1(v2 + *(updated + 24));
  v10 = *(updated + 28);
  v11 = sub_24F928AD8();
  (*(*(v11 - 8) + 8))(v2 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_24EDCC2B0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateActivityInstanceAction();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_24EDCC314(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for UpdateActivityInstanceAction() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24EDCBA64(a1, v1 + v6, v7, v4);
}

uint64_t sub_24EDCC430()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EDCC478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142B8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v4 = sub_24F920418();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_24F9203B8();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0);
  v3[27] = v6;
  v3[28] = *(v6 - 8);
  v3[29] = swift_task_alloc();
  v7 = sub_24F91F4A8();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v8 = type metadata accessor for GameActivityDraftBuilder();
  v9 = swift_task_alloc();
  v3[39] = v9;
  *v9 = v3;
  v9[1] = sub_24EDCC79C;

  return MEMORY[0x28217F228](v3 + 12, v8, v8);
}

uint64_t sub_24EDCC79C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_24EDCDAC4;
  }

  else
  {
    v2 = sub_24EDCC8B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDCC8B0()
{
  v1 = v0[12];
  v0[41] = v1;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[42] = v2;
  if (!v2)
  {
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v14 = sub_24F9220D8();
    __swift_project_value_buffer(v14, qword_27F39E8B0);
    v15 = sub_24F9220B8();
    v16 = sub_24F92BDB8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_24E5DD000, v15, v16, "UpdateActivityInstanceActionImplementation failed to fetch  MultiplayerActivityDraft", v17, 2u);
      MEMORY[0x2530542D0](v17, -1, -1);
    }

    type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError();
    swift_getWitnessTable();
    swift_allocError();
    *v18 = 2;
    swift_willThrow();

    goto LABEL_13;
  }

  v4 = v0[37];
  v3 = v0[38];
  v5 = v0[30];
  v6 = v0[31];
  type metadata accessor for UpdateActivityInstanceAction();

  sub_24F91F488();
  sub_24E60169C(v3, v4, &qword_27F228530);
  v7 = *(v6 + 48);
  v0[43] = v7;
  v0[44] = (v6 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v7(v4, 1, v5) == 1)
  {
    sub_24E601704(v0[37], &qword_27F228530);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v8 = sub_24F9220D8();
    __swift_project_value_buffer(v8, qword_27F39E8B0);
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "UpdateActivityInstanceActionImplementation failed to instantiate party URL", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v12 = v0[38];

    type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError();
    swift_getWitnessTable();
    swift_allocError();
    *v13 = 1;
    swift_willThrow();

    sub_24E601704(v12, &qword_27F228530);
LABEL_13:

    v19 = v0[1];

    return v19();
  }

  v21 = v0[37];
  v22 = v0[34];
  v23 = v0[30];
  v24 = v0[31];
  v25 = *(v24 + 32);
  v0[45] = v25;
  v0[46] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v25(v22, v21, v23);
  v26 = type metadata accessor for ASKBagContract();
  v27 = swift_task_alloc();
  v0[47] = v27;
  *v27 = v0;
  v27[1] = sub_24EDCCD90;

  return MEMORY[0x28217F228](v0 + 13, v26, v26);
}

uint64_t sub_24EDCCD90()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24EDCDBD4;
  }

  else
  {
    v2 = sub_24EDCCEA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EDCCEA4()
{
  v1 = *(v0 + 120);
  v2 = type metadata accessor for ActivityDefinitionDetail();
  if (!*(v1 + *(v2 + 48) + 8))
  {
    ASKBagContract.language.getter();
    v1 = *(v0 + 120);
  }

  v85 = v2;
  if (*(v1 + *(v2 + 52) + 8))
  {
  }

  else
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 232);
    v5 = *(v0 + 216);

    v6 = sub_24F92B098();
    sub_24F92A448();

    sub_24F92A3F8();
    (*(v3 + 8))(v4, v5);
    if (!*(v0 + 88))
    {

      if (qword_27F211420 != -1)
      {
        swift_once();
      }

      v53 = sub_24F9220D8();
      __swift_project_value_buffer(v53, qword_27F39E8B0);
      v54 = sub_24F9220B8();
      v55 = sub_24F92BDB8();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_24E5DD000, v54, v55, "UpdateActivityDefinitionActionImplementation partyURLString is missing.", v56, 2u);
        MEMORY[0x2530542D0](v56, -1, -1);
      }

      v16 = *(v0 + 304);
      v57 = *(v0 + 272);
      v58 = *(v0 + 240);
      v59 = *(v0 + 248);

      type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError();
      swift_getWitnessTable();
      swift_allocError();
      *v60 = 3;
      swift_willThrow();

      (*(v59 + 8))(v57, v58);
      goto LABEL_26;
    }
  }

  v7 = *(v0 + 344);
  v9 = *(v0 + 280);
  v8 = *(v0 + 288);
  v10 = *(v0 + 240);

  sub_24F91F488();

  sub_24E60169C(v8, v9, &qword_27F228530);
  if (v7(v9, 1, v10) == 1)
  {
    v11 = *(v0 + 280);

    sub_24E601704(v11, &qword_27F228530);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E8B0);
    v13 = sub_24F9220B8();
    v14 = sub_24F92BDB8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_24E5DD000, v13, v14, "UpdateActivityDefinitionActionImplementation can not instantiate activity instance data as we do not have a storefront and locale metadata.", v15, 2u);
      MEMORY[0x2530542D0](v15, -1, -1);
    }

    v16 = *(v0 + 304);
    v17 = *(v0 + 288);
    v18 = *(v0 + 272);
    v19 = *(v0 + 240);
    v20 = *(v0 + 248);

    type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError();
    swift_getWitnessTable();
    swift_allocError();
    *v21 = 1;
    swift_willThrow();

    sub_24E601704(v17, &qword_27F228530);
    (*(v20 + 8))(v18, v19);
LABEL_26:
    sub_24E601704(v16, &qword_27F228530);

    v61 = *(v0 + 8);
    goto LABEL_29;
  }

  v23 = *(v0 + 256);
  v22 = *(v0 + 264);
  v25 = *(v0 + 240);
  v24 = *(v0 + 248);
  v26 = *(v0 + 176);
  v81 = *(v0 + 168);
  v27 = *(v0 + 160);
  (*(v0 + 360))(v22, *(v0 + 280), v25);
  (*(v24 + 16))(v23, v22, v25);
  *(v0 + 40) = sub_24F9201E8();
  *(v0 + 48) = sub_24EDCDDB8(&qword_27F223D08, MEMORY[0x277D0C9B8]);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  sub_24F9201D8();
  sub_24F9203C8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_24F9203A8();
  if ((*(v26 + 48))(v27, 1, v81) == 1)
  {
    sub_24E601704(*(v0 + 160), &qword_27F2142B8);
    if (qword_27F211420 != -1)
    {
      swift_once();
    }

    v28 = sub_24F9220D8();
    __swift_project_value_buffer(v28, qword_27F39E8B0);
    v29 = sub_24F9220B8();
    v30 = sub_24F92BDB8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24E5DD000, v29, v30, "UpdateActivityInstanceActionImplementation failed to instantiate GameACtivityInstance from party url", v31, 2u);
      MEMORY[0x2530542D0](v31, -1, -1);
    }

    v16 = *(v0 + 304);
    v82 = *(v0 + 288);
    v86 = *(v0 + 272);
    v78 = *(v0 + 264);
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    v35 = *(v0 + 200);
    v34 = *(v0 + 208);
    v36 = *(v0 + 192);

    type metadata accessor for UpdateActivityInstanceActionImplementation.UpdateActivityInstanceError();
    swift_getWitnessTable();
    swift_allocError();
    *v37 = 0;
    swift_willThrow();

    (*(v35 + 8))(v34, v36);
    v38 = *(v33 + 8);
    v38(v78, v32);
    sub_24E601704(v82, &qword_27F228530);
    v38(v86, v32);
    goto LABEL_26;
  }

  v39 = *(v0 + 328);
  (*(*(v0 + 176) + 32))(*(v0 + 184), *(v0 + 160), *(v0 + 168));
  if (*(v39 + 16) && (v40 = *(v0 + 328), v41 = *(v0 + 176), v42 = *(v0 + 168), v43 = *(v0 + 152), (*(v41 + 16))(v43, *(v0 + 184), v42), (*(v41 + 56))(v43, 0, 1, v42), , sub_24F34E2DC(v43), , (v44 = *(v40 + 16)) != 0))
  {
    v88 = *(v0 + 304);
    v79 = *(v0 + 288);
    v83 = *(v0 + 272);
    v76 = *(v0 + 264);
    v45 = *(v0 + 248);
    v46 = *(v0 + 200);
    v74 = *(v0 + 208);
    v75 = *(v0 + 240);
    v73 = *(v0 + 192);
    v47 = *(v0 + 176);
    v71 = *(v0 + 168);
    v72 = *(v0 + 184);
    v48 = *(v0 + 144);
    sub_24EDCDD48(*(v0 + 120), v48, type metadata accessor for ActivityDefinitionDetail);
    (*(*(v85 - 8) + 56))(v48, 0, 1);
    swift_getKeyPath();
    v49 = swift_task_alloc();
    *(v49 + 16) = v44;
    *(v49 + 24) = v48;
    *(v0 + 112) = v44;
    sub_24EDCDDB8(&qword_27F212898, type metadata accessor for GameActivityDraft);

    sub_24F91FD78();

    (*(v47 + 8))(v72, v71);
    (*(v46 + 8))(v74, v73);
    v50 = *(v45 + 8);
    v50(v76, v75);
    sub_24E601704(v79, &qword_27F228530);
    v50(v83, v75);
    sub_24E601704(v88, &qword_27F228530);

    v51 = &qword_27F2142A0;
    v52 = v48;
  }

  else
  {
    v87 = *(v0 + 272);
    v89 = *(v0 + 304);
    v80 = *(v0 + 264);
    v84 = *(v0 + 288);
    v63 = *(v0 + 240);
    v62 = *(v0 + 248);
    v64 = *(v0 + 200);
    v77 = *(v0 + 208);
    v65 = *(v0 + 184);
    v66 = *(v0 + 192);
    v67 = *(v0 + 168);
    v68 = *(v0 + 176);

    (*(v68 + 8))(v65, v67);
    (*(v64 + 8))(v77, v66);
    v69 = *(v62 + 8);
    v69(v80, v63);
    sub_24E601704(v84, &qword_27F228530);
    v69(v87, v63);
    v52 = v89;
    v51 = &qword_27F228530;
  }

  sub_24E601704(v52, v51);

  v61 = *(v0 + 8);
LABEL_29:

  return v61();
}

uint64_t sub_24EDCDAC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EDCDBD4()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);
  sub_24E601704(v1, &qword_27F228530);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EDCDD48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EDCDDB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t ReviewSummary.SubtitleArtworkAlignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t ReviewSummary.__allocating_init(id:attributedBodyWithTitle:attributedBodyWithoutTitle:subtitle:subtitleArtwork:subtitleArtworkAlignment:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t a8, uint64_t a9)
{
  v36 = a4;
  v37 = a5;
  v34 = a2;
  v35 = a3;
  v13 = a9;
  v14 = sub_24F91F6B8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  v33 = *a7;
  v19 = v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id;
  sub_24E60169C(a1, &v40, &qword_27F235830);
  if (*(&v41 + 1))
  {
    v20 = v41;
    *v19 = v40;
    *(v19 + 16) = v20;
    *(v19 + 32) = v42;
  }

  else
  {
    sub_24F91F6A8();
    v21 = sub_24F91F668();
    v32 = a6;
    v22 = a8;
    v24 = v23;
    (*(v15 + 8))(v17, v14);
    v38 = v21;
    v39 = v24;
    a8 = v22;
    v13 = a9;
    a6 = v32;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v25 = OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle;
  v26 = sub_24F91F008();
  v27 = *(*(v26 - 8) + 32);
  v27(v18 + v25, v34, v26);
  v27(v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle, v35, v26);
  v28 = (v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitle);
  v29 = v37;
  *v28 = v36;
  v28[1] = v29;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtwork) = a6;
  *(v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtworkAlignment) = v33;
  sub_24E65E0D4(v13, v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics);
  *(v18 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_flowPreviewActionsConfiguration) = a8;
  return v18;
}

uint64_t ReviewSummary.init(id:attributedBodyWithTitle:attributedBodyWithoutTitle:subtitle:subtitleArtwork:subtitleArtworkAlignment:flowPreviewActionsConfiguration:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v35 = a9;
  v36 = a8;
  v15 = sub_24F91F6B8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a7;
  sub_24E60169C(a1, &v39, &qword_27F235830);
  if (*(&v40 + 1))
  {
    v42 = v39;
    v43 = v40;
    v44 = v41;
  }

  else
  {
    sub_24F91F6A8();
    v20 = sub_24F91F668();
    v22 = v21;
    (*(v16 + 8))(v18, v15);
    v37 = v20;
    v38 = v22;
    sub_24F92C7F8();
    sub_24E601704(&v39, &qword_27F235830);
  }

  sub_24E601704(a1, &qword_27F235830);
  v23 = v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id;
  v24 = v43;
  *v23 = v42;
  *(v23 + 16) = v24;
  *(v23 + 32) = v44;
  v25 = OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle;
  v26 = sub_24F91F008();
  v27 = *(*(v26 - 8) + 32);
  v27(v10 + v25, a2, v26);
  v27(v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle, a3, v26);
  v28 = (v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitle);
  v29 = v33;
  *v28 = v32;
  v28[1] = v29;
  v30 = v35;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtwork) = v34;
  *(v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtworkAlignment) = v19;
  sub_24E65E0D4(v30, v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics);
  *(v10 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_flowPreviewActionsConfiguration) = v36;
  return v10;
}

uint64_t ReviewSummary.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ReviewSummary.init(deserializing:using:)(a1, a2);
  return v4;
}

char *ReviewSummary.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v146 = a2;
  v5 = *v3;
  v149 = v3;
  v144 = v5;
  v147 = sub_24F9285B8();
  v145 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v124 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v7 - 8);
  v123 = &v110 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v9 - 8);
  v128 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v110 - v12;
  v139 = sub_24F91EE98();
  v135 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v134 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_24F91EEA8();
  v133 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = &v110 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F91EEC8();
  MEMORY[0x28223BE20](v15 - 8);
  v126 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v130 = &v110 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340);
  MEMORY[0x28223BE20](v19 - 8);
  v127 = &v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v131 = &v110 - v22;
  v137 = sub_24F91F008();
  v140 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v125 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v129 = &v110 - v25;
  v26 = sub_24F91F6B8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_24F928388();
  v30 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v122 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v141 = &v110 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v110 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v110 - v38;
  MEMORY[0x28223BE20](v40);
  v42 = &v110 - v41;
  v148 = a1;
  sub_24F928398();
  v43 = sub_24F928348();
  if (v44)
  {
    v150 = v43;
    v151 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v45 = sub_24F91F668();
    v47 = v46;
    (*(v27 + 8))(v29, v26);
    v150 = v45;
    v151 = v47;
  }

  sub_24F92C7F8();
  v48 = *(v30 + 8);
  v49 = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v42, v155);
  v50 = v148;
  v51 = &v149[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id];
  v52 = v153;
  *v51 = v152;
  *(v51 + 16) = v52;
  v143 = v51;
  *(v51 + 32) = v154;
  sub_24F928398();
  v53 = sub_24F928348();
  v55 = v54;
  v48(v39, v155);
  if (!v55)
  {
    v74 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    *v75 = 2036625250;
    v75[1] = 0xE400000000000000;
    v75[2] = v144;
    (*(*(v74 - 8) + 104))(v75, *MEMORY[0x277D22530], v74);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    v48(v50, v155);
    goto LABEL_13;
  }

  v121 = v53;
  sub_24F928398();
  v119 = sub_24F928348();
  v57 = v56;
  v58 = v155;
  v48(v36, v155);
  if (!v57)
  {

    v76 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548]);
    v78 = v50;
    swift_allocError();
    v79 = v77;
    *v77 = 0x69546F4E79646F62;
    v80 = 0xEB00000000656C74;
LABEL_12:
    v81 = v144;
    v77[1] = v80;
    v77[2] = v81;
    (*(*(v76 - 8) + 104))(v79, *MEMORY[0x277D22530], v76);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    v48(v78, v58);
    goto LABEL_13;
  }

  v120 = v57;
  v59 = v141;
  sub_24F928398();
  v60 = sub_24F928348();
  v62 = v61;
  v48(v59, v58);
  if (!v62)
  {
    v78 = v50;

    v76 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v79 = v77;
    *v77 = 0x656C746974627573;
    v80 = 0xE800000000000000;
    goto LABEL_12;
  }

  v112 = v60;
  v118 = v49;
  v141 = v48;
  KeyPath = swift_getKeyPath();
  v63 = *(v133 + 104);
  LODWORD(v133) = *MEMORY[0x277CC8BB0];
  v116 = v63;
  v63(v138);
  v64 = *(v135 + 104);
  v65 = v134;
  LODWORD(v135) = *MEMORY[0x277CC8B98];
  v115 = v64;
  v64(v134);
  sub_24F91EEB8();
  v66 = sub_24F91F4A8();
  v67 = *(v66 - 8);
  v114 = *(v67 + 56);
  v113 = v67 + 56;
  v114(v132, 1, 1, v66);
  v68 = sub_24EDCF79C();
  v69 = v131;
  v132 = v68;
  v70 = v136;
  sub_24F91EFD8();
  if (v70)
  {

    (*(v140 + 56))(v69, 1, 1, v137);
    sub_24E601704(v69, &qword_27F215340);
    v71 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v72 = MEMORY[0x277D84F90];
    *v73 = 2036625250;
    v73[1] = 0xE400000000000000;
    v73[2] = v144;
    v73[3] = v72;
    (*(*(v71 - 8) + 104))(v73, *MEMORY[0x277D22540], v71);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    (v141)(v148, v155);
  }

  else
  {
    v136 = v62;
    v84 = v140;
    v85 = *(v140 + 56);
    v86 = v137;
    KeyPath = 0;
    v130 = (v140 + 56);
    v121 = v85;
    v85(v69, 0, 1, v137);
    v111 = *(v84 + 32);
    v111(v129, v69, v86);
    v131 = swift_getKeyPath();
    v116(v138, v133, v142);
    v115(v65, v135, v139);
    sub_24F91EEB8();
    v114(v128, 1, 1, v66);
    v87 = v127;
    v88 = KeyPath;
    sub_24F91EFD8();
    if (!v88)
    {
      v121(v87, 0, 1, v86);
      v93 = v125;
      v111(v125, v87, v86);
      v94 = *(v140 + 16);
      v82 = v149;
      v94(&v149[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle], v129, v86);
      v94(&v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle], v93, v86);
      v95 = &v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitle];
      v96 = v136;
      *v95 = v112;
      v95[1] = v96;
      sub_24F929608();
      v97 = v122;
      v98 = v148;
      sub_24F928398();
      v99 = v145 + 16;
      v144 = *(v145 + 16);
      v100 = v124;
      v144(v124, v146, v147);
      v143 = v99;
      v101 = v123;
      sub_24F929548();
      sub_24E65E0D4(v101, &v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics]);
      type metadata accessor for Artwork();
      sub_24F928398();
      v102 = v146;
      v144(v100, v146, v147);
      sub_24EDD02A8(&qword_27F219660, type metadata accessor for Artwork);
      v103 = v100;
      sub_24F929548();
      *&v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtwork] = v152;
      sub_24F928398();
      sub_24EDCF7F0();
      sub_24F928208();
      (v141)(v97, v155);
      v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitleArtworkAlignment] = v152;
      type metadata accessor for FlowPreviewActionsConfiguration();
      v104 = v98;
      sub_24F928398();
      v105 = v102;
      v106 = v102;
      v107 = v147;
      v144(v103, v106, v147);
      sub_24EDD02A8(&qword_27F222748, type metadata accessor for FlowPreviewActionsConfiguration);
      sub_24F929548();
      (*(v145 + 8))(v105, v107);
      (v141)(v104, v155);
      v108 = *(v140 + 8);
      v109 = v137;
      v108(v125, v137);
      v108(v129, v109);
      *&v82[OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_flowPreviewActionsConfiguration] = v152;
      return v82;
    }

    v121(v87, 1, 1, v86);
    sub_24E601704(v87, &qword_27F215340);
    v89 = sub_24F92AC38();
    sub_24EDD02A8(&qword_27F2213B8, MEMORY[0x277D22548]);
    swift_allocError();
    v90 = MEMORY[0x277D84F90];
    *v91 = 0x69546F4E79646F62;
    v92 = v144;
    v91[1] = 0xEB00000000656C74;
    v91[2] = v92;
    v91[3] = v90;
    (*(*(v89 - 8) + 104))(v91, *MEMORY[0x277D22540], v89);
    swift_willThrow();
    (*(v145 + 8))(v146, v147);
    (v141)(v148, v155);
    (*(v140 + 8))(v129, v86);
  }

LABEL_13:
  sub_24E6585F8(v143);
  v82 = v149;
  swift_deallocPartialClassInstance();
  return v82;
}

unint64_t sub_24EDCF79C()
{
  result = qword_27F22FE48;
  if (!qword_27F22FE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE48);
  }

  return result;
}

unint64_t sub_24EDCF7F0()
{
  result = qword_27F22FE50;
  if (!qword_27F22FE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE50);
  }

  return result;
}

uint64_t sub_24EDCF85C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_24F91F008();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ReviewSummary.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_subtitle);

  return v1;
}

uint64_t ReviewSummary.deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle;
  v2 = sub_24F91F008();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics, &qword_27F213E68);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id);
  return v0;
}

uint64_t ReviewSummary.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithTitle;
  v2 = sub_24F91F008();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_attributedBodyWithoutTitle, v2);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_impressionMetrics, &qword_27F213E68);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit13ReviewSummary_id);

  return swift_deallocClassInstance();
}

char *sub_24EDCFBC8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = ReviewSummary.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t JetFontAttribute.Value.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24EDCFCC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "chase";
  }

  else
  {
    v4 = "reviewSummaryTitle";
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = "reviewSummaryTitle";
  }

  else
  {
    v6 = "chase";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

void sub_24EDCFD78(unint64_t *a1@<X8>)
{
  v2 = "reviewSummaryTitle";
  v3 = 0xD000000000000011;
  if (!*v1)
  {
    v3 = 0xD000000000000012;
    v2 = "chase";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_24EDCFE64()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EDCFEE0()
{
  sub_24F92B218();
}

uint64_t sub_24EDCFF48()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EDD012C()
{
  sub_24EDCF79C();

  return sub_24F91EC68();
}

uint64_t sub_24EDD0178()
{
  sub_24EDCF79C();

  return sub_24F91EC68();
}

unint64_t sub_24EDD020C()
{
  result = qword_27F22FE58;
  if (!qword_27F22FE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE58);
  }

  return result;
}

uint64_t sub_24EDD02A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ReviewSummary()
{
  result = qword_27F22FE90;
  if (!qword_27F22FE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EDD0340()
{
  result = qword_27F22FE68;
  if (!qword_27F22FE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE68);
  }

  return result;
}

unint64_t sub_24EDD0398()
{
  result = qword_27F22FE70;
  if (!qword_27F22FE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE70);
  }

  return result;
}

unint64_t sub_24EDD03F0()
{
  result = qword_27F22FE78;
  if (!qword_27F22FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE78);
  }

  return result;
}

unint64_t sub_24EDD0448()
{
  result = qword_27F22FE80;
  if (!qword_27F22FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE80);
  }

  return result;
}

unint64_t sub_24EDD04A0()
{
  result = qword_27F22FE88;
  if (!qword_27F22FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FE88);
  }

  return result;
}

void sub_24EDD04FC()
{
  sub_24F91F008();
  if (v0 <= 0x3F)
  {
    sub_24E61C938();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_24EDD068C()
{
  result = qword_27F22FEA0;
  if (!qword_27F22FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FEA0);
  }

  return result;
}

unint64_t sub_24EDD06E0()
{
  result = qword_27F22FEA8;
  if (!qword_27F22FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FEA8);
  }

  return result;
}

unint64_t sub_24EDD0734()
{
  result = qword_27F22FEB0;
  if (!qword_27F22FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FEB0);
  }

  return result;
}

unint64_t sub_24EDD0788()
{
  result = qword_27F22FEB8[0];
  if (!qword_27F22FEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F22FEB8);
  }

  return result;
}

void sub_24EDD07E0()
{
  sub_24EDD0C80();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EDD0880(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 25) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = (a1 + 9) & 0xFFFFFFFFFFFFFFF8;
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 17) & ~v6);
      }

      v16 = *(v15 + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24EDD0A0C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 25) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = (a1 + 9) & 0xFFFFFFFFFFFFFFF8;
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);

    v20((v19 + v9 + 17) & ~v9);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(v19 + 16) = 0;
    *v19 = a2 & 0x7FFFFFFF;
    *(v19 + 8) = 0;
  }

  else
  {
    *(v19 + 8) = a2 - 1;
  }
}

void sub_24EDD0C80()
{
  if (!qword_27F22FF40[0])
  {
    v0 = sub_24F923388();
    if (!v1)
    {
      atomic_store(v0, qword_27F22FF40);
    }
  }
}

uint64_t sub_24EDD0CE8()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_24EDD0D70(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 2) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *&a1[v9];
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *&a1[v9];
      if (!*&a1[v9])
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(&a1[v6 + 2] & ~v6);
      }

      v15 = *a1;
      if (v15 >= 2)
      {
        return v15 - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = a1[v9];
  if (!a1[v9])
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (a1[2] << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_24EDD0EF4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 2) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 2] & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

unint64_t sub_24EDD1154()
{
  result = qword_27F22FFC8;
  if (!qword_27F22FFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22FFC8);
  }

  return result;
}

double sub_24EDD11EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFD0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v31[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFD8);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v31[-v12];
  *v9 = sub_24F927618();
  v9[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFE0);
  sub_24EDD153C(v3, *(a1 + 16), *(a1 + 24));
  v15 = v9 + *(v7 + 44);
  v16 = *(sub_24F924258() + 20);
  v17 = *MEMORY[0x277CE0118];
  v18 = sub_24F924B38();
  (*(*(v18 - 8) + 104))(&v15[v16], v17, v18);
  __asm { FMOV            V0.2D, #24.0 }

  *v15 = _Q0;
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v9, v13, &qword_27F22FFD0);
  v24 = &v13[*(v11 + 44)];
  v25 = v35;
  v24[4] = v34;
  v24[5] = v25;
  v24[6] = v36;
  v26 = *&v31[24];
  *v24 = *&v31[8];
  v24[1] = v26;
  v27 = v33;
  v24[2] = v32;
  v24[3] = v27;
  if ((*v3 & 1) == 0)
  {
    if (qword_27F210D78 == -1)
    {
      goto LABEL_8;
    }

LABEL_7:
    swift_once();
    goto LABEL_8;
  }

  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  if (qword_27F210D68 != -1)
  {
    goto LABEL_7;
  }

LABEL_8:
  sub_24F927618();
  sub_24F9238C8();
  sub_24E6009C8(v13, a2, &qword_27F22FFD8);
  v28 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFE8) + 36));
  v29 = v38;
  *v28 = v37;
  v28[1] = v29;
  result = *&v39;
  v28[2] = v39;
  return result;
}

uint64_t sub_24EDD153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OverlayControlsModule();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v13, a1 + *(v14 + 40), a2, v11);
  (*(v7 + 16))(v9, a1, v6);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  (*(v7 + 32))(v17 + v16, v9, v6);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFF0);
  v19 = sub_24EDD30E8();
  return MEMORY[0x25304CBA0](v13, sub_24EDD30BC, v17, v18, a2, v19, a3);
}

uint64_t sub_24EDD1744@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a1;
  v80 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230058);
  MEMORY[0x28223BE20](v4);
  v6 = &v72 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230048);
  MEMORY[0x28223BE20](v7);
  v9 = &v72 - v8;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230038);
  MEMORY[0x28223BE20](v73);
  v11 = &v72 - v10;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230028);
  MEMORY[0x28223BE20](v74);
  v13 = &v72 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230018);
  MEMORY[0x28223BE20](v75);
  v78 = &v72 - v14;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F230008);
  MEMORY[0x28223BE20](v76);
  v77 = &v72 - v15;
  v16 = sub_24F925838();
  v17 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v16)
  {
    v17 = sub_24F925848();
  }

  v79 = a2;
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = sub_24F927308();
  (*(*(v26 - 8) + 16))(v6, v72, v26);
  v27 = &v6[*(v4 + 36)];
  *v27 = v17;
  *(v27 + 1) = v19;
  *(v27 + 2) = v21;
  *(v27 + 3) = v23;
  *(v27 + 4) = v25;
  v27[40] = 0;
  v28 = sub_24F925858();
  v29 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v28)
  {
    v29 = sub_24F925848();
  }

  sub_24F923318();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  sub_24E6009C8(v6, v9, &qword_27F230058);
  v38 = &v9[*(v7 + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = sub_24F925818();
  v40 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v39)
  {
    v40 = sub_24F925848();
  }

  sub_24F923318();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_24E6009C8(v9, v11, &qword_27F230048);
  v49 = &v11[*(v73 + 36)];
  *v49 = v40;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  v50 = sub_24F925828();
  v51 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v50)
  {
    v51 = sub_24F925848();
  }

  sub_24F923318();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  sub_24E6009C8(v11, v13, &qword_27F230038);
  v60 = &v13[*(v74 + 36)];
  *v60 = v51;
  *(v60 + 1) = v53;
  *(v60 + 2) = v55;
  *(v60 + 3) = v57;
  *(v60 + 4) = v59;
  v60[40] = 0;
  sub_24F927618();
  sub_24F9242E8();
  v61 = v78;
  sub_24E6009C8(v13, v78, &qword_27F230028);
  v62 = (v61 + *(v75 + 36));
  v63 = v86;
  v62[4] = v85;
  v62[5] = v63;
  v62[6] = v87;
  v64 = v82;
  *v62 = v81;
  v62[1] = v64;
  v65 = v84;
  v62[2] = v83;
  v62[3] = v65;
  if ((*v79 & 1) == 0)
  {
    if (qword_27F210D78 == -1)
    {
      goto LABEL_16;
    }

LABEL_15:
    swift_once();
    goto LABEL_16;
  }

  if (qword_27F210D78 != -1)
  {
    swift_once();
  }

  if (qword_27F210D68 != -1)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_24F927618();
  sub_24F9238C8();
  v66 = v77;
  sub_24E6009C8(v61, v77, &qword_27F230018);
  v67 = (v66 + *(v76 + 36));
  v68 = v89;
  *v67 = v88;
  v67[1] = v68;
  v67[2] = v90;
  v69 = v66;
  v70 = v80;
  sub_24E6009C8(v69, v80, &qword_27F230008);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22FFF0);
  *(v70 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}