unint64_t sub_24F40D764()
{
  v1 = 25705;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x65706F6C65766564;
  }

  if (*v0)
  {
    v1 = 0x6575676573;
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

uint64_t sub_24F40D80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F40F088(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F40D834(uint64_t a1)
{
  v2 = sub_24F40EDA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F40D870(uint64_t a1)
{
  v2 = sub_24F40EDA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F40D914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B68);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B70);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - v11;
  *v5 = sub_24F9249A8();
  *(v5 + 1) = 0x4030000000000000;
  v5[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B78);
  sub_24F40DC04(a1, &v5[*(v13 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v5, v9, &qword_27F242B60);
  v14 = &v9[*(v7 + 44)];
  v15 = v27;
  *(v14 + 4) = v26;
  *(v14 + 5) = v15;
  *(v14 + 6) = v28;
  v16 = v23;
  *v14 = v22;
  *(v14 + 1) = v16;
  v17 = v25;
  *(v14 + 2) = v24;
  *(v14 + 3) = v17;
  sub_24E6009C8(v9, v12, &qword_27F242B68);
  v12[*(v10 + 36)] = 0;
  sub_24E60169C(a1 + 40, v21, qword_27F24EC90);
  sub_24E601704(v21, qword_27F21B590);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v18 = sub_24F9248C8();
  __swift_project_value_buffer(v18, qword_27F39F078);
  sub_24F40EA7C();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v12, &qword_27F242B70);
}

uint64_t sub_24F40DC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v66 = sub_24F926E68();
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v64 = v3;
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v63 = &v58 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242B98);
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - v10;
  v12 = sub_24F9289E8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v67 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v58 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242BA0);
  MEMORY[0x28223BE20](v18 - 8);
  v70 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v72 = &v58 - v21;
  v22 = type metadata accessor for GameDetailsDeveloper();
  v23 = a1;
  sub_24E60169C(a1 + *(v22 + 32), v11, &qword_27F213FB0);
  v24 = v13;
  v25 = *(v13 + 48);
  v26 = v12;
  if (v25(v11, 1, v12) == 1)
  {
    sub_24E601704(v11, &qword_27F213FB0);
    (*(v68 + 56))(v72, 1, 1, v69);
  }

  else
  {
    v59 = v17;
    v60 = v23;
    v27 = v24;
    v58 = *(v24 + 32);
    v28 = v17;
    v61 = v26;
    v58(v17, v11, v26);
    v29 = v62;
    v30 = v63;
    v31 = v66;
    (*(v62 + 104))(v63, *MEMORY[0x277CE1020], v66);
    (*(v24 + 16))(v67, v28, v26);
    v62 = *(v29 + 32);
    v32 = v65;
    (v62)(v65, v30, v31);
    v33 = (*(v27 + 80) + 16) & ~*(v27 + 80);
    v34 = (v14 + *(v29 + 80) + v33) & ~*(v29 + 80);
    v35 = v34 + v64;
    v36 = swift_allocObject();
    v37 = v36 + v33;
    v38 = v36;
    v58(v37, v67, v61);
    (v62)(v38 + v34, v32, v31);
    *(v38 + v35) = 0;
    sub_24F927618();
    sub_24F9238C8();
    v39 = v84;
    v67 = v88;
    v65 = v86;
    v66 = v89;
    LOBYTE(v75[0]) = v85;
    v73 = v87;
    LODWORD(v34) = sub_24F9251C8();
    (*(v27 + 8))(v59, v61);
    v40 = v69;
    v41 = &v8[*(v69 + 36)];
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10) + 36);
    v43 = *MEMORY[0x277CE13B8];
    v44 = sub_24F927748();
    (*(*(v44 - 8) + 104))(&v41[v42], v43, v44);
    *v41 = v34;
    *v8 = sub_24EB98724;
    *(v8 + 1) = v38;
    *(v8 + 2) = v39;
    v23 = v60;
    v8[24] = v75[0];
    *(v8 + 25) = v78[0];
    *(v8 + 7) = *(v78 + 3);
    *(v8 + 4) = v65;
    v8[40] = v73;
    *(v8 + 41) = v76;
    *(v8 + 11) = *(&v76 + 3);
    v45 = v66;
    *(v8 + 6) = v67;
    *(v8 + 7) = v45;
    v46 = v72;
    sub_24E6009C8(v8, v72, &qword_27F242B98);
    (*(v68 + 56))(v46, 0, 1, v40);
  }

  v47 = sub_24F924C98();
  LOBYTE(v78[0]) = 0;
  sub_24F40E384(v23, v75);
  *&v74[7] = v75[0];
  *&v74[23] = v75[1];
  *&v74[39] = v75[2];
  *&v74[55] = v75[3];
  v48 = v78[0];
  v49 = v72;
  v50 = v70;
  sub_24F40EBEC(v72, v70);
  v51 = v71;
  sub_24F40EBEC(v50, v71);
  v52 = v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242BA8) + 48);
  *&v76 = v47;
  *(&v76 + 1) = 0x4010000000000000;
  v77[0] = v48;
  *&v77[1] = *v74;
  *&v77[17] = *&v74[16];
  *&v77[33] = *&v74[32];
  *&v77[49] = *&v74[48];
  *&v77[64] = *&v74[63];
  v53 = *v77;
  *v52 = v76;
  *(v52 + 16) = v53;
  v54 = *&v77[16];
  v55 = *&v77[32];
  v56 = *&v77[48];
  *(v52 + 80) = *&v77[64];
  *(v52 + 48) = v55;
  *(v52 + 64) = v56;
  *(v52 + 32) = v54;
  sub_24E60169C(&v76, v78, &qword_27F220848);
  sub_24E601704(v49, &qword_27F242BA0);
  v78[0] = v47;
  v78[1] = 0x4010000000000000;
  v79 = v48;
  v81 = *&v74[16];
  v82 = *&v74[32];
  *v83 = *&v74[48];
  *&v83[15] = *&v74[63];
  v80 = *v74;
  sub_24E601704(v78, &qword_27F220848);
  return sub_24E601704(v50, &qword_27F242BA0);
}

uint64_t sub_24F40E384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10);
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - v4;
  if (qword_27F211590 != -1)
  {
    swift_once();
  }

  v52 = qword_27F39EBE8;
  v53 = unk_27F39EBF0;
  v49 = sub_24E600AEC();

  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  v11 = sub_24F9251C8();
  v12 = *(v3 + 36);
  v13 = *MEMORY[0x277CE13B8];
  v14 = sub_24F927748();
  (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
  *v5 = v11;
  sub_24E602068(&qword_27F214428, &qword_27F213F10);
  v15 = sub_24F925C58();
  v17 = v16;
  LOBYTE(v12) = v18;
  sub_24E600B40(v6, v8, v10 & 1);

  sub_24E601704(v5, &qword_27F213F10);
  sub_24F925898();
  sub_24F9258E8();

  v19 = sub_24F925C98();
  v46 = v20;
  v47 = v19;
  HIDWORD(v45) = v21;
  v48 = v22;

  sub_24E600B40(v15, v17, v12 & 1);

  v23 = (v50 + *(type metadata accessor for GameDetailsDeveloper() + 28));
  v24 = v23[1];
  v52 = *v23;
  v53 = v24;

  v25 = sub_24F925E18();
  v27 = v26;
  LOBYTE(v12) = v28;
  sub_24F925898();
  sub_24F9258E8();

  v29 = sub_24F925C98();
  v31 = v30;
  v33 = v32;

  sub_24E600B40(v25, v27, v12 & 1);

  v52 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v34 = sub_24F925C58();
  v36 = v35;
  LOBYTE(v11) = v37;
  v39 = v38;
  sub_24E600B40(v29, v31, v33 & 1);

  v40 = BYTE4(v45) & 1;
  v51 = BYTE4(v45) & 1;
  LOBYTE(v52) = BYTE4(v45) & 1;
  v54 = v11 & 1;
  v42 = v46;
  v41 = v47;
  *a2 = v47;
  *(a2 + 8) = v42;
  *(a2 + 16) = v40;
  *(a2 + 24) = v48;
  *(a2 + 32) = v34;
  *(a2 + 40) = v36;
  *(a2 + 48) = v11 & 1;
  *(a2 + 56) = v39;
  v43 = v41;
  sub_24E5FD138(v41, v42, v40);

  sub_24E5FD138(v34, v36, v11 & 1);

  sub_24E600B40(v34, v36, v11 & 1);

  sub_24E600B40(v43, v42, v51);
}

uint64_t sub_24F40E780@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924248();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = sub_24F924258();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #10.0 }

  *v7 = _Q0;
  *&v7[*(v2 + 20)] = 0xC024000000000000;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFBC8];
  sub_24F40EE44(v7, v4, MEMORY[0x277CDFBC8]);
  sub_24F40EDFC(&qword_27F214338, MEMORY[0x277CDFBC8]);
  v19 = sub_24F927348();
  result = sub_24F40EEAC(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24F40E934()
{
  sub_24F156B98();

  return sub_24F9218E8();
}

unint64_t sub_24F40E9C4()
{
  result = qword_27F242B58;
  if (!qword_27F242B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B58);
  }

  return result;
}

unint64_t sub_24F40EA7C()
{
  result = qword_27F242B80;
  if (!qword_27F242B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242B70);
    sub_24F40EB34();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B80);
  }

  return result;
}

unint64_t sub_24F40EB34()
{
  result = qword_27F242B88;
  if (!qword_27F242B88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242B68);
    sub_24E602068(&qword_27F242B90, &qword_27F242B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242B88);
  }

  return result;
}

uint64_t sub_24F40EBEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F40EC5C()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_24F926E68();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

unint64_t sub_24F40EDA8()
{
  result = qword_27F242BB8;
  if (!qword_27F242BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242BB8);
  }

  return result;
}

uint64_t sub_24F40EDFC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F40EE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F40EEAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F40EF1C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242B70);
  sub_24F40EA7C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F40EF84()
{
  result = qword_27F242BC0;
  if (!qword_27F242BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242BC0);
  }

  return result;
}

unint64_t sub_24F40EFDC()
{
  result = qword_27F242BC8;
  if (!qword_27F242BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242BC8);
  }

  return result;
}

unint64_t sub_24F40F034()
{
  result = qword_27F242BD0;
  if (!qword_27F242BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242BD0);
  }

  return result;
}

uint64_t sub_24F40F088(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED00006E6F634972)
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

uint64_t sub_24F40F244()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F40F2B8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v7 = sub_24F929758();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GSKDebugMetricsEvent();
  v34 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = *(sub_24F929738() + 16);

  if (v17)
  {
    (*(v8 + 16))(v10, a1, v7);
    sub_24F91F6A8();
    *&v16[v11[5]] = sub_24F929738();
    v19 = sub_24F929748();
    (*(v8 + 8))(v10, v7);
    *&v16[v11[6]] = v19;
    v20 = &v16[v11[7]];
    *v20 = v33;
    *(v20 + 1) = a3;
    v21 = *(v4 + OBJC_IVAR____TtC12GameStoreKit28GSKDebugMetricsEventRecorder_stateLock);

    v33 = v21;
    [v21 lock];
    sub_24F40F9BC(v16, v13);
    swift_getKeyPath();
    swift_getKeyPath();
    v22 = sub_24F923088();
    v24 = v23;
    v25 = *v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v24 = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = sub_24E6197A4(0, v25[2] + 1, 1, v25);
      *v24 = v25;
    }

    v28 = v25[2];
    v27 = v25[3];
    if (v28 >= v27 >> 1)
    {
      v25 = sub_24E6197A4(v27 > 1, v28 + 1, 1, v25);
      *v24 = v25;
    }

    v25[2] = v28 + 1;
    sub_24F40FA20(v13, v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28);
    v22(v35, 0);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v29 = *(v35[0] + 16);

    if (v29 >= 0x65)
    {
      v30 = v29 - 100;
      swift_getKeyPath();
      swift_getKeyPath();
      result = sub_24F923088();
      if (*(*v31 + 16) < v29 - 100)
      {
        __break(1u);
        return result;
      }

      v32 = result;
      sub_24F14A360(0, v30);
      v32(v35, 0);
    }

    [v33 unlock];
    return sub_24F40FA84(v16);
  }

  return result;
}

uint64_t sub_24F40F6CC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit28GSKDebugMetricsEventRecorder__events;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C08);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GSKDebugMetricsEventRecorder()
{
  result = qword_27F242BE8;
  if (!qword_27F242BE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F40F7D8()
{
  sub_24F40F884();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24F40F884()
{
  if (!qword_27F242BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242C00);
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F242BF8);
    }
  }
}

id sub_24F40F90C()
{
  type metadata accessor for GSKDebugMetricsEventRecorder();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C00);
  sub_24F923058();
  v1 = OBJC_IVAR____TtC12GameStoreKit28GSKDebugMetricsEventRecorder_stateLock;
  result = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v0 + v1) = result;
  *(v0 + 16) = 100;
  qword_27F39E538 = v0;
  return result;
}

uint64_t sub_24F40F9BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F40FA20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKDebugMetricsEvent();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F40FA84(uint64_t a1)
{
  v2 = type metadata accessor for GSKDebugMetricsEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F40FAE0(uint64_t a1)
{
  v1[2] = a1;
  v3 = sub_24F91F4A8();
  v1[3] = v3;
  v1[4] = *(v3 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v4 = swift_task_alloc();
  v1[7] = v4;
  *v4 = v1;
  v4[1] = sub_24F40FBE8;

  return sub_24F41029C(a1);
}

uint64_t sub_24F40FBE8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[10] = v2;

  if (v2)
  {
    v5 = sub_24F410010;
  }

  else
  {
    v5 = sub_24F40FD00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F40FD00()
{
  v29 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_24E71CBC0(v2, v1);
  v4 = sub_24F91F4C8();
  v5 = [v3 initWithData_];

  sub_24E627880(v2, v1);
  if (v5)
  {
    sub_24E627880(v0[8], v0[9]);

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    if (qword_27F211460 != -1)
    {
      swift_once();
    }

    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    v11 = v0[2];
    v12 = sub_24F9220D8();
    __swift_project_value_buffer(v12, qword_27F39E970);
    (*(v10 + 16))(v8, v11, v9);
    v13 = sub_24F9220B8();
    v14 = sub_24F92BDB8();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[6];
    v17 = v0[3];
    v18 = v0[4];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      sub_24F4109D8();
      v21 = sub_24F92CD88();
      v23 = v22;
      (*(v18 + 8))(v16, v17);
      v24 = sub_24E7620D4(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_24E5DD000, v13, v14, "Failed to create UIImage from downloaded data for URL: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x2530542D0](v20, -1, -1);
      MEMORY[0x2530542D0](v19, -1, -1);
    }

    else
    {

      (*(v18 + 8))(v16, v17);
    }

    v25 = v0[8];
    v26 = v0[9];
    sub_24F410A30();
    swift_allocError();
    swift_willThrow();
    sub_24E627880(v25, v26);

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_24F410010()
{
  v29 = v0;
  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v3 = v0[4];
  v2 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E970);
  (*(v3 + 16))(v2, v5, v4);
  v7 = v1;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v26 = v0[10];
    v11 = v0[4];
    v10 = v0[5];
    v12 = v0[3];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = v27;
    *v13 = 136315394;
    sub_24F4109D8();
    v15 = sub_24F92CD88();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24E7620D4(v15, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v26;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_24E5DD000, v8, v9, "Failed to download image data from URL: %s, error: %@", v13, 0x16u);
    sub_24E6D44CC(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x2530542D0](v27, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {
    v22 = v0[4];
    v21 = v0[5];
    v23 = v0[3];

    (*(v22 + 8))(v21, v23);
  }

  swift_willThrow();

  v24 = v0[1];

  return v24();
}

uint64_t sub_24F41029C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_24F91F4A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_24F91E968();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F4103C4, 0, 0);
}

uint64_t sub_24F4103C4()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = *(v3 + 16);
  v0[11] = v5;
  v0[12] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  sub_24F91E918();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_24F4104B4;
  v7 = v0[10];

  return MEMORY[0x28211ECF8](v7, 0);
}

uint64_t sub_24F4104B4(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 112) = v3;

  if (v3)
  {
    v9 = sub_24F410690;
  }

  else
  {

    *(v8 + 120) = a2;
    *(v8 + 128) = a1;
    v9 = sub_24F4105F0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_24F4105F0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v3 = v0[15];
  v2 = v0[16];

  return v1(v2, v3);
}

uint64_t sub_24F410690()
{
  v32 = v0;
  if (qword_27F211460 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[2];
  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E970);
  v2(v3, v5, v4);
  v7 = v1;
  v8 = sub_24F9220B8();
  v9 = sub_24F92BDB8();

  if (os_log_type_enabled(v8, v9))
  {
    v29 = v0[14];
    v11 = v0[5];
    v10 = v0[6];
    v12 = v0[4];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v13 = 136315394;
    sub_24F4109D8();
    v15 = sub_24F92CD88();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_24E7620D4(v15, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v29;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_24E5DD000, v8, v9, "Failed to download data from URL: %s, error: %@", v13, 0x16u);
    sub_24E6D44CC(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2530542D0](v30, -1, -1);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  else
  {
    v22 = v0[5];
    v21 = v0[6];
    v23 = v0[4];

    (*(v22 + 8))(v21, v23);
  }

  v25 = v0[9];
  v24 = v0[10];
  v26 = v0[8];
  swift_willThrow();
  (*(v25 + 8))(v24, v26);

  v27 = v0[1];

  return v27();
}

uint64_t ThreeDimensionalMediaArtworkImageDownloader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24F4109D8()
{
  result = qword_27F21B620;
  if (!qword_27F21B620)
  {
    sub_24F91F4A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21B620);
  }

  return result;
}

unint64_t sub_24F410A30()
{
  result = qword_27F242C10;
  if (!qword_27F242C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C10);
  }

  return result;
}

unint64_t sub_24F410A98()
{
  result = qword_27F242C18;
  if (!qword_27F242C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C18);
  }

  return result;
}

uint64_t sub_24F410B00(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 96);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[11];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[13];

  return v16(v17, a2, v15);
}

uint64_t sub_24F410CEC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 96) = (a2 - 1);
    return result;
  }

  v8 = sub_24F928818();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[11];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[13];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for ActivitySharingPromptView()
{
  result = qword_27F242C20;
  if (!qword_27F242C20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F410F10()
{
  sub_24E6BCB04();
  if (v0 <= 0x3F)
  {
    sub_24F01AF4C(319, &qword_27F218180, &unk_27F22C070, &unk_24F947CB0, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_24F928FD8();
      if (v2 <= 0x3F)
      {
        sub_24F928818();
        if (v3 <= 0x3F)
        {
          sub_24F01AF4C(319, &qword_27F254DC0, &qword_27F215598, &unk_24F945EF0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_24F4110E0(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
            if (v5 <= 0x3F)
            {
              sub_24F01AF4C(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_24F4110E0(319, &qword_27F22C060, MEMORY[0x277D7EC08]);
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

void sub_24F4110E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_24F411150()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E540 = xmmword_24F947C50;
  qword_27F39E550 = v0;
  unk_27F39E558 = v2;
  qword_27F39E560 = 0x4024000000000000;
  qword_27F39E568 = v3;
  return result;
}

double sub_24F41119C()
{
  v0 = sub_24F927618();
  v2 = v1;
  v3 = sub_24F9258D8();
  result = 12.0;
  xmmword_27F39E570 = xmmword_24F947C70;
  qword_27F39E580 = v0;
  unk_27F39E588 = v2;
  qword_27F39E590 = 0x4024000000000000;
  qword_27F39E598 = v3;
  return result;
}

uint64_t sub_24F4111E8@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157E8);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v51 - v3;
  v63 = sub_24F929158();
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2157F0);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v51 - v6;
  v7 = type metadata accessor for ActivitySharingPromptView();
  v8 = *(v7 - 8);
  v55 = v7 - 8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C30);
  MEMORY[0x28223BE20](v60);
  v12 = &v51 - v11;
  v13._object = 0x800000024FA75020;
  v13._countAndFlagsBits = 0xD000000000000027;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15 = localizedString(_:comment:)(v13, v14);
  object = v15._object;
  countAndFlagsBits = v15._countAndFlagsBits;
  sub_24E60169C(v1 + 16, (v12 + 24), qword_27F21B590);
  v16._countAndFlagsBits = 0xD000000000000028;
  v16._object = 0x800000024FA75050;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v18 = localizedString(_:comment:)(v16, v17);
  v56 = v18._object;
  v57 = v18._countAndFlagsBits;
  sub_24E60169C(v1 + 56, (v12 + 88), qword_27F21B590);
  v19 = *(v1 + 96);
  sub_24F412118(v1, v10);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v54 = swift_allocObject();
  sub_24F412180(v10, v54 + v20);
  v53 = v1;
  sub_24F412118(v1, v10);
  v52 = swift_allocObject();
  sub_24F412180(v10, v52 + v20);
  sub_24F412118(v1, v10);
  v51 = swift_allocObject();
  sub_24F412180(v10, v51 + v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242C38);
  v22 = v21[34];
  v23 = type metadata accessor for HeaderPresentation(0);
  (*(*(v23 - 8) + 56))(&v12[v22], 1, 1, v23);
  v24 = &v12[v21[37]];
  LOBYTE(v67) = 0;

  sub_24F926F28();
  v25 = v69;
  *v24 = v68;
  *(v24 + 1) = v25;
  v26 = &v12[v21[38]];
  LOBYTE(v67) = 0;
  sub_24F926F28();
  v27 = v69;
  *v26 = v68;
  *(v26 + 1) = v27;
  v28 = &v12[v21[39]];
  v67 = 0;
  sub_24F926F28();
  v29 = v69;
  *v28 = v68;
  *(v28 + 1) = v29;
  v30 = v21[40];
  *&v12[v30] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  swift_storeEnumTagMultiPayload();
  v31 = v21[41];
  *&v12[v31] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v32 = v21[42];
  *&v12[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  v33 = &v12[v21[43]];
  *v33 = sub_24F923398() & 1;
  *(v33 + 1) = v34;
  v33[16] = v35 & 1;
  v36 = object;
  *v12 = countAndFlagsBits;
  *(v12 + 1) = v36;
  *(v12 + 2) = 0;
  v37 = v56;
  *(v12 + 8) = v57;
  *(v12 + 9) = v37;
  *(v12 + 10) = 0;
  *(v12 + 64) = 0;
  *(v12 + 17) = v19;
  *(v12 + 18) = 0;
  *(v12 + 19) = 0;
  *(v12 + 20) = sub_24F4121E4;
  *(v12 + 21) = v54;
  *(v12 + 22) = sub_24F412264;
  v38 = v51;
  *(v12 + 23) = v52;
  *(v12 + 24) = sub_24F4122D4;
  *(v12 + 25) = v38;
  *(v12 + 26) = CGSizeMake;
  *(v12 + 27) = 0;
  v12[v21[35]] = 7;
  v12[v21[36]] = 0;
  v39 = v53;
  sub_24F412118(v53, v10);
  v40 = swift_allocObject();
  sub_24F412180(v10, v40 + v20);
  v41 = &v12[*(v60 + 36)];
  sub_24F923AD8();
  sub_24F92B818();
  *v41 = &unk_24F9F4460;
  *(v41 + 1) = v40;
  v42 = *(v55 + 40);
  v43 = sub_24F928818();
  v44 = *(v43 - 8);
  v45 = v61;
  (*(v44 + 16))(v61, v39 + v42, v43);
  (*(v44 + 56))(v45, 0, 1, v43);
  v47 = v62;
  v46 = v63;
  sub_24F928F28();
  v48 = sub_24F921B48();
  v49 = v64;
  (*(*(v48 - 8) + 56))(v64, 1, 1, v48);
  sub_24F4127C4();
  sub_24F925E58();
  sub_24E601704(v49, &qword_27F2157E8);
  (*(v65 + 8))(v47, v46);
  sub_24E601704(v45, &qword_27F2157F0);
  return sub_24E601704(v12, &qword_27F242C30);
}

double sub_24F411958@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = sub_24F924C88();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_24F411AC4(a1, &v12);
  v35 = v22;
  v36 = v23;
  v37[0] = v24[0];
  *(v37 + 9) = *(v24 + 9);
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v27 = v14;
  v28 = v15;
  v29 = v16;
  v30 = v17;
  v25 = v12;
  v26 = v13;
  v38[10] = v22;
  v38[11] = v23;
  v39[0] = v24[0];
  *(v39 + 9) = *(v24 + 9);
  v38[6] = v18;
  v38[7] = v19;
  v38[8] = v20;
  v38[9] = v21;
  v38[2] = v14;
  v38[3] = v15;
  v38[4] = v16;
  v38[5] = v17;
  v38[0] = v12;
  v38[1] = v13;
  sub_24E60169C(&v25, &v11, &qword_27F242C50);
  sub_24E601704(v38, &qword_27F242C50);
  v4 = v36;
  *(a2 + 184) = v35;
  *(a2 + 200) = v4;
  *(a2 + 216) = v37[0];
  *(a2 + 225) = *(v37 + 9);
  v5 = v32;
  *(a2 + 120) = v31;
  *(a2 + 136) = v5;
  v6 = v34;
  *(a2 + 152) = v33;
  *(a2 + 168) = v6;
  v7 = v28;
  *(a2 + 56) = v27;
  *(a2 + 72) = v7;
  v8 = v30;
  *(a2 + 88) = v29;
  *(a2 + 104) = v8;
  result = *&v25;
  v10 = v26;
  *(a2 + 24) = v25;
  *(a2 + 40) = v10;
  return result;
}

uint64_t sub_24F411AC4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F41392C(&v63);
  v5 = v63;
  v4 = v64;
  v43 = v64;
  v6 = v65;
  v41 = v66;
  v42 = v65;
  v40 = v67;
  v7 = v68;
  sub_24F414174(&v63, v83);
  v8 = sub_24F925818();
  sub_24F41392C(v69);
  sub_24F923318();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  LOBYTE(v83[0]) = 0;
  v18 = *a1;
  v17 = a1[1];

  sub_24F41392C(v70);
  v19 = v70[1];
  v37 = v70[0];
  v38 = v70[3];
  v39 = v70[2];
  v20 = v70[4];
  v36 = v70[5];
  sub_24F414174(v70, v83);
  v21 = sub_24F925818();
  sub_24F41392C(&v71);
  sub_24F923318();
  *&v72 = v5;
  *(&v72 + 1) = v4;
  *&v73 = v6;
  *(&v73 + 1) = v41;
  *&v74 = v40;
  *(&v74 + 1) = v7;
  LOBYTE(v75) = v8;
  *(&v75 + 1) = v10;
  *v76 = v12;
  *&v76[8] = v14;
  *&v76[16] = v16;
  v76[24] = 0;
  v52 = v72;
  *(v56 + 9) = *&v76[9];
  v55 = v75;
  v56[0] = *v76;
  v53 = v73;
  v54 = v74;
  *&v77 = v18;
  *(&v77 + 1) = v17;
  *&v78 = v37;
  *(&v78 + 1) = v19;
  *&v79 = v39;
  *(&v79 + 1) = v38;
  *&v80 = v20;
  *(&v80 + 1) = v36;
  LOBYTE(v81) = v21;
  *(&v81 + 1) = v22;
  *v82 = v23;
  *&v82[8] = v24;
  *&v82[16] = v25;
  v82[24] = 0;
  v57 = v77;
  v58 = v78;
  *(v62 + 9) = *&v82[9];
  v61 = v81;
  v62[0] = *v82;
  v59 = v79;
  v60 = v80;
  v51 = 0;
  v26 = v72;
  v27 = v73;
  v28 = v75;
  v29 = *v76;
  *(a2 + 32) = v74;
  *(a2 + 48) = v28;
  *a2 = v26;
  *(a2 + 16) = v27;
  v30 = v56[1];
  v31 = v58;
  v32 = v59;
  *(a2 + 96) = v57;
  *(a2 + 112) = v31;
  *(a2 + 64) = v29;
  *(a2 + 80) = v30;
  v33 = v62[1];
  *(a2 + 176) = v62[0];
  *(a2 + 192) = v33;
  v34 = v61;
  *(a2 + 144) = v60;
  *(a2 + 160) = v34;
  *(a2 + 128) = v32;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v83[0] = v18;
  v83[1] = v17;
  *&v83[2] = v37;
  *&v83[3] = v19;
  *&v83[4] = v39;
  *&v83[5] = v38;
  *&v83[6] = v20;
  *&v83[7] = v36;
  v84 = v21;
  v85 = v22;
  v86 = v23;
  v87 = v24;
  v88 = v25;
  v89 = 0;
  sub_24E60169C(&v72, v44, &qword_27F242C58);
  sub_24E60169C(&v77, v44, &qword_27F242C60);
  sub_24E601704(v83, &qword_27F242C60);
  v44[0] = v5;
  v44[1] = v43;
  v44[2] = v42;
  v44[3] = v41;
  v44[4] = v40;
  v44[5] = v7;
  v45 = v8;
  v46 = v10;
  v47 = v12;
  v48 = v14;
  v49 = v16;
  v50 = 0;
  return sub_24E601704(v44, &qword_27F242C58);
}

uint64_t sub_24F411DB8@<X0>(uint64_t a1@<X8>)
{
  sub_24F41392C(v7);
  v2 = v8;
  v3 = v9;
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  *(a1 + 40) = v3;
  return sub_24F414174(v7, &v6);
}

uint64_t sub_24F411E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];

  sub_24F41392C(v10);
  v5 = v11;
  v6 = v12;
  *a2 = v4;
  *(a2 + 8) = v3;
  v7 = v10[1];
  *(a2 + 16) = v10[0];
  *(a2 + 32) = v7;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  return sub_24F414174(v10, &v9);
}

uint64_t sub_24F411E80(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F921B58();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_24F92B7F8();
  v1[16] = sub_24F92B7E8();
  v4 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F411F74, v4, v3);
}

uint64_t sub_24F411F74()
{

  type metadata accessor for ActivitySharingPromptView();
  sub_24F7695C8((v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v3 = v0[14];
    v2 = v0[15];
    v7 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
    v0[10] = type metadata accessor for ReportPromptDidPresentAction();
    v0[11] = sub_24F4141AC(&qword_27F216358, type metadata accessor for ReportPromptDidPresentAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_24F928A98();
    *boxed_opaque_existential_1 = 0;
    sub_24F76973C(v2);
    sub_24F9218A8();
    (*(v3 + 8))(v2, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
    __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  }

  else
  {
    sub_24E601704((v0 + 2), &unk_27F212740);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_24F412118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingPromptView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F412180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivitySharingPromptView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24F4121E4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySharingPromptView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F411958(v4, a1);
}

uint64_t sub_24F412264@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ActivitySharingPromptView();

  return sub_24F411DB8(a1);
}

uint64_t sub_24F4122D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivitySharingPromptView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_24F411E10(v4, a1);
}

uint64_t objectdestroyTm_69()
{
  v1 = type metadata accessor for ActivitySharingPromptView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  if (*(v2 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 16);
  }

  if (*(v2 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 56);
  }

  v3 = v1[8];
  v4 = sub_24F928818();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_24F925218();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v2 + v5, 1, v6))
    {
      (*(v7 + 8))(v2 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[10];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_24F925218();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v2 + v8, 1, v9))
    {
      (*(v10 + 8))(v2 + v8, v9);
    }
  }

  else
  {
  }

  v11 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_24F923E98();
    (*(*(v12 - 8) + 8))(v2 + v11, v12);
  }

  else
  {
  }

  v13 = v2 + v1[12];
  if (*(v13 + 40))
  {
    if (*(v13 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
  }

  v14 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_24F921B58();
    (*(*(v15 - 8) + 8))(v2 + v14, v15);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F4126F8()
{
  v2 = *(type metadata accessor for ActivitySharingPromptView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24F411E80(v0 + v3);
}

unint64_t sub_24F4127C4()
{
  result = qword_27F242C40;
  if (!qword_27F242C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242C30);
    sub_24E602068(&qword_27F242C48, &qword_27F242C38);
    sub_24F4141AC(&qword_27F211A48, MEMORY[0x277CDD8B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C40);
  }

  return result;
}

__n128 sub_24F4128AC@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_24F9249A8();
  v28 = 0;
  sub_24F412ACC(&v14);
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
  v42[9] = v23;
  v42[8] = v22;
  v42[2] = v16;
  v42[3] = v17;
  v42[4] = v18;
  v42[5] = v19;
  v42[0] = v14;
  v42[1] = v15;
  sub_24E60169C(&v29, v13, &qword_27F242C68);
  sub_24E601704(v42, &qword_27F242C68);
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
  v3 = v28;
  sub_24F9242E8();
  *a1 = v2;
  *(a1 + 8) = 0xC024000000000000;
  *(a1 + 16) = v3;
  v4 = *&v27[176];
  *(a1 + 177) = *&v27[160];
  *(a1 + 193) = v4;
  *(a1 + 209) = *&v27[192];
  *(a1 + 224) = *&v27[207];
  v5 = *&v27[112];
  *(a1 + 113) = *&v27[96];
  *(a1 + 129) = v5;
  v6 = *&v27[144];
  *(a1 + 145) = *&v27[128];
  *(a1 + 161) = v6;
  v7 = *&v27[48];
  *(a1 + 49) = *&v27[32];
  *(a1 + 65) = v7;
  v8 = *&v27[80];
  *(a1 + 81) = *&v27[64];
  *(a1 + 97) = v8;
  v9 = *&v27[16];
  *(a1 + 17) = *v27;
  *(a1 + 33) = v9;
  v10 = v19;
  *(a1 + 296) = v18;
  *(a1 + 312) = v10;
  *(a1 + 328) = v20;
  v11 = v15;
  *(a1 + 232) = v14;
  *(a1 + 248) = v11;
  result = v17;
  *(a1 + 264) = v16;
  *(a1 + 280) = result;
  return result;
}

uint64_t sub_24F412ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F926C08();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F926E08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F211820 != -1)
  {
    swift_once();
  }

  v8 = qword_27F24F280;
  sub_24F926E98();
  v9 = *MEMORY[0x277CE0FE0];
  v35 = *(v5 + 104);
  v38 = v9;
  v35(v7, v9, v4);
  v50 = sub_24F926E88();

  v10 = *(v5 + 8);
  v10(v7, v4);
  v37 = v10;
  sub_24F927618();
  sub_24F9238C8();
  v48 = v60;
  v49 = v58;
  v44 = v61;
  LODWORD(v45) = v59;
  v46 = v63;
  v47 = v62;
  sub_24F926E98();
  v11 = v9;
  v12 = v35;
  v35(v7, v11, v4);
  v43 = sub_24F926E88();

  v10(v7, v4);
  sub_24F927618();
  sub_24F9238C8();
  v39 = v64;
  v40 = v66;
  v41 = v69;
  v42 = v68;
  v78 = v65;
  v76 = v67;
  (*(v52 + 104))(v51, *MEMORY[0x277CE0ED0], v53);
  v52 = sub_24F926D58();
  v13 = v78;
  LODWORD(v51) = v78;
  v14 = v4;
  v15 = v76;
  v36 = v76;
  sub_24F926E98();
  v12(v7, v38, v14);
  v53 = sub_24F926E88();

  v37(v7, v14);
  sub_24F927618();
  sub_24F9238C8();
  v16 = v70;
  v17 = v71;
  v18 = v72;
  v19 = v73;
  v57 = v45;
  v56 = v44;
  v20 = v43;
  v21 = v39;
  *&v79 = v43;
  *(&v79 + 1) = v39;
  LOBYTE(v80) = v13;
  *(&v80 + 1) = *v77;
  DWORD1(v80) = *&v77[3];
  v23 = v40;
  v22 = v41;
  *(&v80 + 1) = v40;
  LOBYTE(v81) = v15;
  DWORD1(v81) = *&v75[3];
  *(&v81 + 1) = *v75;
  v24 = v42;
  *(&v81 + 1) = v42;
  *&v82 = v41;
  v25 = v52;
  *(&v82 + 1) = 0x3FF0000000000000;
  *&v83[0] = v52;
  v45 = xmmword_24F958350;
  *(v83 + 8) = xmmword_24F958350;
  *(&v83[1] + 1) = 0x4024000000000000;
  v55 = v71;
  v54 = v73;
  v26 = v57;
  v27 = v44;
  v28 = v49;
  *a1 = v50;
  *(a1 + 8) = v28;
  *(a1 + 16) = v26;
  v29 = v47;
  *(a1 + 24) = v48;
  *(a1 + 32) = v27;
  *(a1 + 40) = v29;
  *(a1 + 48) = v46;
  v30 = v81;
  v31 = v82;
  v32 = v83[0];
  *(a1 + 136) = v83[1];
  *(a1 + 120) = v32;
  *(a1 + 104) = v31;
  *(a1 + 88) = v30;
  v33 = v79;
  *(a1 + 72) = v80;
  *(a1 + 56) = v33;
  *(a1 + 152) = v53;
  *(a1 + 160) = v16;
  *(a1 + 168) = v17;
  *(a1 + 176) = v18;
  *(a1 + 184) = v19;
  *(a1 + 192) = v74;

  sub_24E60169C(&v79, v84, &qword_27F242C70);
  v84[0] = v20;
  v84[1] = v21;
  v85 = v51;
  *v86 = *v77;
  *&v86[3] = *&v77[3];
  v87 = v23;
  v88 = v36;
  *v89 = *v75;
  *&v89[3] = *&v75[3];
  v90 = v24;
  v91 = v22;
  v92 = 0x3FF0000000000000;
  v93 = v25;
  v94 = v45;
  v95 = 0x4024000000000000;
  sub_24E601704(v84, &qword_27F242C70);
}

double sub_24F4130E0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924C98();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v20 = 0;
  v10 = v1[1];
  *&v21 = *v1;
  *(&v21 + 1) = v10;
  *&v22 = v4;
  *(&v22 + 1) = v5;
  *&v23 = v6;
  *(&v23 + 1) = v7;
  *&v24 = v8;
  *(&v24 + 1) = v9;
  v27 = v23;
  v28 = v24;
  v25 = v21;
  v26 = v22;
  v29[0] = v21;
  v29[1] = v10;
  v29[2] = v4;
  v29[3] = v5;
  v29[4] = v6;
  v29[5] = v7;
  v29[6] = v8;
  v29[7] = v9;

  sub_24F41433C(&v21, v18);
  sub_24F414374(v29);
  *&v19[7] = v25;
  *&v19[23] = v26;
  *&v19[39] = v27;
  *&v19[55] = v28;
  v11 = v20;
  sub_24F927628();
  sub_24F9242E8();
  *(a1 + 8) = v8;
  v12 = *v19;
  *(a1 + 33) = *&v19[16];
  v13 = *&v19[48];
  *(a1 + 49) = *&v19[32];
  *(a1 + 65) = v13;
  *(a1 + 17) = v12;
  v14 = v18[2];
  *(a1 + 136) = v18[3];
  v15 = v18[5];
  *(a1 + 152) = v18[4];
  *(a1 + 168) = v15;
  *(a1 + 184) = v18[6];
  result = *v18;
  v17 = v18[1];
  *(a1 + 88) = v18[0];
  *(a1 + 104) = v17;
  *a1 = v3;
  *(a1 + 16) = v11;
  *(a1 + 80) = *&v19[63];
  *(a1 + 120) = v14;
  return result;
}

uint64_t sub_24F413290@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_24F929888();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v24 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - v2;
  v4._object = 0x800000024FA75100;
  v4._countAndFlagsBits = 0xD000000000000020;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v29 = localizedString(_:comment:)(v4, v5);
  sub_24E600AEC();
  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  sub_24F925988();
  v11 = sub_24F925C98();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_24E600B40(v6, v8, v10 & 1);

  v29._countAndFlagsBits = v11;
  v29._object = v13;
  v15 &= 1u;
  LOBYTE(v30) = v15;
  *(&v30 + 1) = v17;
  sub_24F9268B8();
  sub_24E600B40(v11, v13, v15);

  KeyPath = swift_getKeyPath();
  v19 = v24;
  v20 = &v3[*(v23 + 36)];
  *v20 = KeyPath;
  v20[8] = 0;
  v29 = 0;
  v30 = 0u;
  memset(v28, 0, sizeof(v28));
  sub_24F9297A8();
  sub_24E601704(v28, &qword_27F2129B0);
  sub_24E601704(&v29, &qword_27F2129B0);
  sub_24E64575C();
  sub_24F925EE8();
  (*(v25 + 8))(v19, v27);
  return sub_24F41457C(v3);
}

uint64_t sub_24F41354C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v37 = sub_24F929888();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *v1;
  v4 = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    v5 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93DE60;
    *(inited + 32) = 0x614E646E65697266;
    *(inited + 40) = 0xEA0000000000656DLL;
    *(inited + 48) = v5;
    *(inited + 56) = v4;
    sub_24E60169C(&v46, &v40, &unk_27F23B740);
    v7 = sub_24E6086DC(inited);
    swift_setDeallocating();
    sub_24E601704(inited + 32, &qword_27F219F90);
    v8._object = 0x800000024FA750C0;
    v8._countAndFlagsBits = 0xD000000000000032;
    v9 = localizedString(_:with:)(v8, v7);
    countAndFlagsBits = v9._countAndFlagsBits;
    object = v9._object;
  }

  else
  {
    v12._countAndFlagsBits = 0xD000000000000035;
    v12._object = 0x800000024FA75080;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    v14 = localizedString(_:comment:)(v12, v13);
    countAndFlagsBits = v14._countAndFlagsBits;
    object = v14._object;
  }

  v40 = countAndFlagsBits;
  v41 = object;
  sub_24E600AEC();
  v15 = sub_24F925E18();
  v17 = v16;
  v19 = v18;
  v20 = sub_24F925C98();
  v22 = v21;
  v24 = v23;
  sub_24E600B40(v15, v17, v19 & 1);

  LODWORD(v40) = sub_24F9251C8();
  v25 = sub_24F925C58();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_24E600B40(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v40 = v25;
  v41 = v27;
  v42 = v29 & 1;
  v43 = v31;
  v44 = KeyPath;
  v45 = 0;
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  sub_24F9297A8();
  sub_24E601704(v38, &qword_27F2129B0);
  sub_24E601704(v39, &qword_27F2129B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2146D8);
  sub_24E62FBF4();
  sub_24F925EE8();
  (*(v35 + 8))(v3, v37);
  sub_24E600B40(v25, v27, v29 & 1);
}

double sub_24F41392C@<D0>(double *a1@<X8>)
{
  v67 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v54 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v5);
  v64 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v51[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v51[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v62 = &v51[-v13];
  MEMORY[0x28223BE20](v14);
  v63 = &v51[-v15];
  MEMORY[0x28223BE20](v16);
  v18 = &v51[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v51[-v20];
  MEMORY[0x28223BE20](v22);
  v24 = &v51[-v23];
  v59 = type metadata accessor for ActivitySharingPromptView();
  v61 = v1;
  sub_24F769764(v24);
  v25 = v3[13];
  v58 = *MEMORY[0x277CE0560];
  v57 = v25;
  v55 = v3 + 13;
  v25(v21);
  v56 = v3[7];
  v56(v21, 0, 1, v2);
  v60 = v5;
  v26 = *(v5 + 48);
  sub_24E60169C(v24, v9, &qword_27F215598);
  v27 = v2;
  sub_24E60169C(v21, &v9[v26], &qword_27F215598);
  v66 = v3;
  v28 = v3[6];
  if (v28(v9, 1, v2) == 1)
  {
    v65 = v28;
    sub_24E601704(v21, &qword_27F215598);
    v27 = v2;
    sub_24E601704(v24, &qword_27F215598);
    if (v65(&v9[v26], 1, v2) != 1)
    {
LABEL_13:
      sub_24E601704(v9, &unk_27F254F20);
      goto LABEL_14;
    }

    sub_24E601704(v9, &qword_27F215598);
LABEL_6:
    v24 = v63;
    sub_24F769764(v63);
    v21 = v62;
    v57(v62, v58, v27);
    v56(v21, 0, 1, v27);
    v33 = *(v60 + 48);
    v34 = v64;
    sub_24E60169C(v24, v64, &qword_27F215598);
    sub_24E60169C(v21, &v34[v33], &qword_27F215598);
    v35 = v65;
    if (v65(v34, 1, v27) == 1)
    {
      sub_24E601704(v21, &qword_27F215598);
      sub_24E601704(v24, &qword_27F215598);
      if (v35(&v34[v33], 1, v27) == 1)
      {
        sub_24E601704(v34, &qword_27F215598);
LABEL_19:
        if (qword_27F211260 != -1)
        {
          swift_once();
        }

        v37 = &xmmword_27F39E570;
        goto LABEL_17;
      }

      v9 = v34;
      goto LABEL_13;
    }

    v36 = v53;
    sub_24E60169C(v34, v53, &qword_27F215598);
    if (v35(&v34[v33], 1, v27) == 1)
    {
      v18 = v36;
      v9 = v34;
      goto LABEL_11;
    }

    v45 = v21;
    v46 = v24;
    v47 = v66;
    v48 = v54;
    (v66[4])(v54, &v34[v33], v27);
    sub_24F4141AC(&qword_27F215650, MEMORY[0x277CE0570]);
    v49 = sub_24F92AFF8();
    v50 = v47[1];
    v50(v48, v27);
    sub_24E601704(v45, &qword_27F215598);
    sub_24E601704(v46, &qword_27F215598);
    v50(v36, v27);
    sub_24E601704(v34, &qword_27F215598);
    if (v49)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  sub_24E60169C(v9, v18, &qword_27F215598);
  if (v28(&v9[v26], 1, v2) == 1)
  {
LABEL_11:
    sub_24E601704(v21, &qword_27F215598);
    sub_24E601704(v24, &qword_27F215598);
    (v66[1])(v18, v27);
    goto LABEL_13;
  }

  v65 = v28;
  v29 = v66;
  v30 = &v9[v26];
  v31 = v54;
  (v66[4])(v54, v30, v27);
  sub_24F4141AC(&qword_27F215650, MEMORY[0x277CE0570]);
  v52 = sub_24F92AFF8();
  v32 = v29[1];
  v32(v31, v27);
  sub_24E601704(v21, &qword_27F215598);
  sub_24E601704(v24, &qword_27F215598);
  v32(v18, v27);
  sub_24E601704(v9, &qword_27F215598);
  if (v52)
  {
    goto LABEL_6;
  }

LABEL_14:
  if (qword_27F211258 != -1)
  {
    swift_once();
  }

  v37 = &xmmword_27F39E540;
LABEL_17:
  v38 = *(v37 + 5);
  result = *(v37 + 4);
  v41 = *(v37 + 2);
  v40 = *(v37 + 3);
  v43 = *v37;
  v42 = *(v37 + 1);
  v44 = v67;
  *v67 = v43;
  *(v44 + 1) = v42;
  *(v44 + 2) = v41;
  *(v44 + 3) = v40;
  v44[4] = result;
  *(v44 + 5) = v38;
  return result;
}

uint64_t sub_24F4141AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F414224(uint64_t a1, int a2)
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

uint64_t sub_24F41426C(uint64_t result, int a2, int a3)
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

unint64_t sub_24F4143C8()
{
  result = qword_27F242C78;
  if (!qword_27F242C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242C80);
    sub_24E602068(&qword_27F242C88, &qword_27F242C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C78);
  }

  return result;
}

unint64_t sub_24F414484()
{
  result = qword_27F242C98;
  if (!qword_27F242C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242CA0);
    sub_24E602068(&qword_27F242CA8, &qword_27F242CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242C98);
  }

  return result;
}

uint64_t sub_24F41457C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBP011_JetEngine_aB0E11pageMetrics_8pipeline7tracker26clickLocationConfigurationQr0dE004PageG0VSg_AI0G8PipelineVAI18ImpressionsTracker_pSgAD05ClickkL0VSgtFQOyAA15ModifiedContentVy12GameStoreKit013GSKOnboardingC0VyAA6VStackVyAA05TupleC0VyAUyAV6Header33_C0D16470DD6F29555941506FD87889C9LLVAA14_PaddingLayoutVG_AUyAV0sC0A2_LLVA5_GAA6SpacerVtGGA3_A8_AA05EmptyC0VGAA13_TaskModifierVG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t CompletedChallengesDataIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  *(v2 + 144) = *a1;
  *(v2 + 64) = *(a1 + 8);
  return MEMORY[0x2822009F8](sub_24F414708, 0, 0);
}

uint64_t sub_24F414708()
{
  *(v0 + 80) = sub_24F92B7F8();
  *(v0 + 88) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F4147A0, v2, v1);
}

uint64_t sub_24F4147A0()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 96) = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_24F414828, 0, 0);
}

uint64_t sub_24F414828()
{
  *(v0 + 104) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F4148B4, v2, v1);
}

uint64_t sub_24F4148B4()
{
  v1 = *(v0 + 96);

  swift_getKeyPath();
  *(v0 + 48) = v1;
  sub_24E69A53C();
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];
  *(v0 + 112) = v3;

  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  v5[1] = sub_24F4149DC;
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 144);
  v9 = *(v0 + 56);

  return sub_24F414E04(v4, v3, v8, v6, v7, v9);
}

uint64_t sub_24F4149DC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;
  *(v3 + 136) = v1;

  if (v1)
  {
    v4 = sub_24F414C6C;
  }

  else
  {
    v4 = sub_24F414B18;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F414B18()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = sub_24F9220D8();
  __swift_project_value_buffer(v1, qword_27F39E778);

  v2 = sub_24F9220B8();
  v3 = sub_24F92BDB8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 128);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = *(v5 + 16);

    _os_log_impl(&dword_24E5DD000, v2, v3, "CompletedChallengesDataIntentImplementation %ld completed challenges fetched", v6, 0xCu);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 128);
  v8 = *(v0 + 8);

  return v8(v7);
}

uint64_t sub_24F414C6C()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v4, v5, "CompletedChallengesDataIntentImplementation completed challenges fetch failed: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  swift_willThrow();
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24F414E04(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 1672) = a6;
  *(v6 + 1624) = a5;
  *(v6 + 1576) = a4;
  *(v6 + 1808) = a3;
  *(v6 + 1528) = a2;
  *(v6 + 1480) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DDF8);
  *(v6 + 1680) = swift_task_alloc();
  v7 = type metadata accessor for Challenge(0);
  *(v6 + 1688) = v7;
  *(v6 + 1696) = *(v7 - 8);
  *(v6 + 1704) = swift_task_alloc();
  *(v6 + 1712) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F414F1C, 0, 0);
}

uint64_t sub_24F414F1C()
{
  v1 = *(v0 + 1624);
  v2 = *(v0 + 1576);
  v3 = *(v0 + 1808);
  v4 = *(v0 + 1528);
  v5 = *(v0 + 1480);
  v6 = swift_task_alloc();
  *(v0 + 1720) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  v7 = swift_task_alloc();
  *(v0 + 1728) = v7;
  v8 = sub_24E69A5C4(0, &qword_27F242CB8);
  *v7 = v0;
  v7[1] = sub_24F415050;

  return MEMORY[0x2822008A0](v0 + 1336, 0, 0, 0xD000000000000036, 0x800000024FA75130, sub_24F41732C, v6, v8);
}

uint64_t sub_24F415050()
{
  *(*v1 + 1736) = v0;

  if (v0)
  {
    v2 = sub_24F415728;
  }

  else
  {

    v2 = sub_24F41516C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F41516C()
{
  v60 = v0;
  v1 = v0[167];
  v0[218] = v1;
  v50 = v1;
  v2 = [v1 details];
  v51 = v0;
  v0[219] = sub_24E69A5C4(0, &qword_27F21DE20);
  v3 = sub_24F92B5A8();

  v58 = MEMORY[0x277D84FA0];
  if (v3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v5 = 0;
    v55 = v3 & 0xFFFFFFFFFFFFFF8;
    v56 = v3 & 0xC000000000000001;
    v53 = v3;
    v54 = v3 + 32;
    v52 = i;
    while (1)
    {
      if (v56)
      {
        v6 = MEMORY[0x253052270](v5, v3);
      }

      else
      {
        if (v5 >= *(v55 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v54 + 8 * v5);
      }

      v7 = v6;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v9 = [v6 participants];
      sub_24E69A5C4(0, &qword_27F21DE28);
      v10 = sub_24F92B5A8();

      if (v10 >> 62)
      {
        v11 = sub_24F92C738();
        if (!v11)
        {
LABEL_22:

          v13 = MEMORY[0x277D84F90];
          goto LABEL_4;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v59 = MEMORY[0x277D84F90];
      sub_24F4578E0(0, v11 & ~(v11 >> 63), 0);
      if (v11 < 0)
      {
        goto LABEL_26;
      }

      v57 = v7;
      v12 = 0;
      v13 = v59;
      do
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x253052270](v12, v10);
        }

        else
        {
          v14 = *(v10 + 8 * v12 + 32);
        }

        v15 = v14;
        v16 = [v14 playerID];
        v17 = sub_24F92B0D8();
        v19 = v18;

        v59 = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_24F4578E0((v20 > 1), v21 + 1, 1);
          v13 = v59;
        }

        ++v12;
        *(v13 + 16) = v21 + 1;
        v22 = v13 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v11 != v12);

      i = v52;
      v3 = v53;
      v7 = v57;
LABEL_4:
      sub_24EAE9E40(v13);

      if (v5 == i)
      {
        v23 = v58;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v23 = MEMORY[0x277D84FA0];
LABEL_29:

  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = sub_24EAE678C(*(v23 + 16), 0);
    v26 = sub_24EAE7C84(&v59, v25 + 4, v24, v23);
    sub_24E6586B4();
    if (v26 == v24)
    {
      goto LABEL_33;
    }

    __break(1u);
  }

  v25 = MEMORY[0x277D84F90];
LABEL_33:
  v27 = v51[209];
  v28 = swift_allocObject();
  v51[220] = v28;
  *(v28 + 16) = v25;
  *(v28 + 24) = 0;
  *(v28 + 32) = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE30);
  swift_asyncLet_begin();
  v29 = [v50 details];
  v30 = sub_24F92B5A8();

  if (v30 >> 62)
  {
    v31 = sub_24F92C738();
    if (v31)
    {
      goto LABEL_35;
    }

LABEL_45:

    v37 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v31)
  {
    goto LABEL_45;
  }

LABEL_35:
  v59 = MEMORY[0x277D84F90];
  v32 = sub_24F4578E0(0, v31 & ~(v31 >> 63), 0);
  if (v31 < 0)
  {
    __break(1u);
    return MEMORY[0x282200930](v32, v33, v34, v35);
  }

  v36 = 0;
  v37 = v59;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v38 = MEMORY[0x253052270](v36, v30);
    }

    else
    {
      v38 = *(v30 + 8 * v36 + 32);
    }

    v39 = v38;
    v40 = [v38 bundleID];
    v41 = sub_24F92B0D8();
    v43 = v42;

    v59 = v37;
    v45 = *(v37 + 16);
    v44 = *(v37 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_24F4578E0((v44 > 1), v45 + 1, 1);
      v37 = v59;
    }

    ++v36;
    *(v37 + 16) = v45 + 1;
    v46 = v37 + 16 * v45;
    *(v46 + 32) = v41;
    *(v46 + 40) = v43;
  }

  while (v31 != v36);

LABEL_46:
  v47 = v51[209];
  v48 = swift_allocObject();
  v51[221] = v48;
  *(v48 + 16) = v37;
  *(v48 + 24) = 0;
  *(v48 + 32) = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DE38);
  swift_asyncLet_begin();
  v34 = sub_24F4157B4;
  v32 = (v51 + 2);
  v33 = v51 + 173;
  v35 = v51 + 162;

  return MEMORY[0x282200930](v32, v33, v34, v35);
}

uint64_t sub_24F415728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F4157B4()
{
  v1[222] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 179, sub_24F415C8C, v1 + 168);
  }

  else
  {
    v1[223] = v1[173];

    return MEMORY[0x282200930](v1 + 82, v1 + 179, sub_24F415868, v1 + 180);
  }
}

uint64_t sub_24F415868()
{
  *(v1 + 1792) = v0;
  if (v0)
  {
    v2 = sub_24F415D88;
  }

  else
  {
    v2 = sub_24F41589C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F41589C()
{
  v23 = v0;
  v1 = v0[218];
  v21 = v0[179];

  v2 = [v1 details];
  v3 = sub_24F92B5A8();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v5 = 0;
    v20 = v0[212];
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x253052270](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = i;
      v11 = v0[223];
      v12 = v0[211];
      v13 = v0[210];
      v22 = v7;
      sub_24F416078(&v22, v21, v11, v13);

      if ((*(v20 + 48))(v13, 1, v12) == 1)
      {
        sub_24E601704(v0[210], &qword_27F21DDF8);
        i = v10;
      }

      else
      {
        v14 = v0[214];
        v15 = v0[213];
        sub_24F4174B0(v0[210], v14, type metadata accessor for Challenge);
        sub_24F4174B0(v14, v15, type metadata accessor for Challenge);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_24E6177DC(0, v6[2] + 1, 1, v6);
        }

        v17 = v6[2];
        v16 = v6[3];
        i = v10;
        if (v17 >= v16 >> 1)
        {
          v6 = sub_24E6177DC(v16 > 1, v17 + 1, 1, v6);
        }

        v18 = v0[213];
        v6[2] = v17 + 1;
        sub_24F4174B0(v18, v6 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, type metadata accessor for Challenge);
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:
  v0[225] = v6;

  return MEMORY[0x282200920](v0 + 82, v0 + 179, sub_24F415B80, v0 + 198);
}

uint64_t sub_24F415BD8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1800);

  return v1(v2);
}

uint64_t sub_24F415CE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F415D88()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 1432, sub_24F415DF4, v0 + 1488);
}

uint64_t sub_24F415E4C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F415EF0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E7E3A7C;

  return sub_24E6473DC(a2, a3, a4);
}

uint64_t sub_24F415FB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24E67D244;

  return sub_24E64768C(a2, a3, a4);
}

uint64_t sub_24F416078@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v110 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08);
  MEMORY[0x28223BE20](v8 - 8);
  v96 = &v92 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v92 - v11;
  v109 = type metadata accessor for Challenge.Participant(0);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v111 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v92 - v15;
  v16 = sub_24F91F648();
  v101 = *(v16 - 8);
  v102 = v16;
  MEMORY[0x28223BE20](v16);
  v100 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v18 - 8);
  v98 = &v92 - v19;
  v20 = type metadata accessor for Game();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v99 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v24 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v97 = &v92 - v25;
  v26 = &off_279691000;
  v104 = *a1;
  v27 = [v104 bundleID];
  v28 = sub_24F92B0D8();
  v30 = v29;

  v31 = *(a2 + 16);
  v103 = a4;
  if (!v31)
  {

LABEL_20:
    if (qword_27F2113B8 == -1)
    {
LABEL_21:
      v65 = sub_24F9220D8();
      __swift_project_value_buffer(v65, qword_27F39E778);
      v66 = v104;
      v67 = sub_24F9220B8();
      v68 = sub_24F92BDB8();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v113 = v70;
        *v69 = 136315138;
        v71 = [v66 *(v26 + 2152)];
        v72 = sub_24F92B0D8();
        v74 = v73;

        v75 = sub_24E7620D4(v72, v74, &v113);

        *(v69 + 4) = v75;
        _os_log_impl(&dword_24E5DD000, v67, v68, "CompletedChallengesDataIntentImplementation skipped: %s not found", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v70);
        MEMORY[0x2530542D0](v70, -1, -1);
        MEMORY[0x2530542D0](v69, -1, -1);
      }

      v76 = type metadata accessor for Challenge(0);
      return (*(*(v76 - 8) + 56))(v103, 1, 1, v76);
    }

LABEL_26:
    swift_once();
    goto LABEL_21;
  }

  v32 = sub_24E76D644(v28, v30);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    goto LABEL_20;
  }

  v35 = *(a2 + 56) + *(v21 + 72) * v32;
  v36 = v97;
  sub_24E7E38E0(v35, v97, type metadata accessor for Game);
  v37 = v104;
  v38 = [v104 challengeVendorID];
  v39 = sub_24F92B0D8();
  v94 = v40;
  v95 = v39;

  v41 = [v37 scheduledEndDate];
  v42 = v98;
  sub_24F91F608();

  (*(v101 + 56))(v42, 0, 1, v102);
  v43 = [v37 challengeID];
  v44 = sub_24F92B0D8();
  v92 = v45;
  v93 = v44;

  v46 = [v37 endDate];
  sub_24F91F608();

  sub_24E7E38E0(v36, v99, type metadata accessor for Game);
  v47 = [v37 participants];
  sub_24E69A5C4(0, &qword_27F21DE28);
  v26 = sub_24F92B5A8();

  if (v26 >> 62)
  {
    v48 = sub_24F92C738();
    v49 = v4;
    if (v48)
    {
LABEL_5:
      v50 = v48;
      v51 = 0;
      v52 = v26 & 0xC000000000000001;
      v108 = v26 & 0xFFFFFFFFFFFFFF8;
      v53 = (v107 + 48);
      v112 = MEMORY[0x277D84F90];
      v105 = v26 & 0xC000000000000001;
      while (1)
      {
        if (v52)
        {
          v54 = MEMORY[0x253052270](v51, v26);
        }

        else
        {
          if (v51 >= *(v108 + 16))
          {
            goto LABEL_25;
          }

          v54 = *(v26 + 8 * v51 + 32);
        }

        v55 = v54;
        v56 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          break;
        }

        v113 = v54;
        v57 = v49;
        sub_24F416A74(&v113, v110, v12);

        if ((*v53)(v12, 1, v109) == 1)
        {
          sub_24E601704(v12, &qword_27F242CC0);
        }

        else
        {
          v58 = v50;
          v59 = v26;
          v60 = v106;
          sub_24F4174B0(v12, v106, type metadata accessor for Challenge.Participant);
          sub_24F4174B0(v60, v111, type metadata accessor for Challenge.Participant);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v112 = sub_24E61782C(0, v112[2] + 1, 1, v112);
          }

          v62 = v112[2];
          v61 = v112[3];
          if (v62 >= v61 >> 1)
          {
            v112 = sub_24E61782C(v61 > 1, v62 + 1, 1, v112);
          }

          v63 = v111;
          v64 = v112;
          v112[2] = v62 + 1;
          sub_24F4174B0(v63, v64 + ((*(v107 + 80) + 32) & ~*(v107 + 80)) + *(v107 + 72) * v62, type metadata accessor for Challenge.Participant);
          v49 = v57;
          v26 = v59;
          v50 = v58;
          v52 = v105;
        }

        ++v51;
        if (v56 == v50)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v48 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v49 = v4;
    if (v48)
    {
      goto LABEL_5;
    }
  }

  v112 = MEMORY[0x277D84F90];
LABEL_29:

  v78 = type metadata accessor for ChallengeDefinitionDetail(0);
  v79 = v96;
  (*(*(v78 - 8) + 56))(v96, 1, 1, v78);
  v80 = [v104 rank];
  v81 = v80;
  if (v80)
  {
    v82 = [v80 integerValue];
  }

  else
  {
    v82 = 0;
  }

  v84 = v94;
  v83 = v95;
  v85 = v81 == 0;
  sub_24F1B20A0(v97, type metadata accessor for Game);
  v86 = type metadata accessor for Challenge(0);
  v87 = v103;
  sub_24E6009C8(v98, &v103[v86[13]], &unk_27F22EC30);
  v88 = v92;
  *v87 = v93;
  *(v87 + 1) = v88;
  *(v87 + 2) = v83;
  *(v87 + 3) = v84;
  (*(v101 + 32))(&v87[v86[6]], v100, v102);
  sub_24F4174B0(v99, &v87[v86[7]], type metadata accessor for Game);
  *&v87[v86[8]] = v112;
  v89 = &v87[v86[9]];
  *v89 = 0;
  *(v89 + 1) = 0xE000000000000000;
  sub_24E6009C8(v79, &v87[v86[10]], &qword_27F212A08);
  v90 = &v87[v86[11]];
  *v90 = 0;
  v90[8] = 0;
  v91 = &v87[v86[12]];
  *v91 = v82;
  v91[8] = v85;
  return (*(*(v86 - 1) + 56))(v87, 0, 1, v86);
}

uint64_t sub_24F416A74@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a3;
  v5 = type metadata accessor for Player(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v36 - v14;
  v16 = *a1;
  v17 = [*a1 playerID];
  v18 = sub_24F92B0D8();
  v20 = v19;

  if (*(a2 + 16))
  {
    v21 = sub_24E76D644(v18, v20);
    v23 = v22;

    if (v23)
    {
      sub_24E7E38E0(*(a2 + 56) + *(v6 + 72) * v21, v11, type metadata accessor for Player);
      sub_24F4174B0(v11, v15, type metadata accessor for Player);
      sub_24E7E38E0(v15, v8, type metadata accessor for Player);
      v24 = [v16 rank];
      v25 = v24;
      if (v24)
      {
        v26 = [v24 integerValue];
      }

      else
      {
        v26 = 0;
      }

      sub_24F1B20A0(v15, type metadata accessor for Player);
      v33 = v37;
      sub_24F4174B0(v8, v37, type metadata accessor for Player);
      v34 = type metadata accessor for Challenge.Participant(0);
      v35 = v33 + *(v34 + 20);
      *v35 = v26;
      *(v35 + 8) = v25 == 0;
      return (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    }
  }

  else
  {
  }

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v27 = sub_24F9220D8();
  __swift_project_value_buffer(v27, qword_27F39E778);
  v28 = sub_24F9220B8();
  v29 = sub_24F92BDB8();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_24E5DD000, v28, v29, "CompletedChallengesDataIntentImplementation skipped: player not found", v30, 2u);
    MEMORY[0x2530542D0](v30, -1, -1);
  }

  v31 = type metadata accessor for Challenge.Participant(0);
  return (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
}

void sub_24F416DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - v10;
  v12 = [objc_opt_self() proxyForLocalPlayer];
  v19 = [v12 challengeServicePrivate];

  v13 = sub_24F92B098();
  v14 = sub_24F92B098();

  if (a6)
  {
    a6 = sub_24F92B098();
  }

  (*(v9 + 16))(v11, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v11, v8);
  aBlock[4] = sub_24F4175AC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24E6251C8;
  aBlock[3] = &block_descriptor_151;
  v17 = _Block_copy(aBlock);

  [v19 getLeaderboardChallengesCompletedWithPlayerID:v13 type:v14 bundleID:a6 completionHandler:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

uint64_t sub_24F41708C(void *a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v4 = sub_24F9220D8();
    __swift_project_value_buffer(v4, qword_27F39E778);
    v5 = a2;
    v6 = sub_24F9220B8();
    v7 = sub_24F92BDB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_24E5DD000, v6, v7, "CompletedChallengesDataIntentImplementation completed page internal fetch failed: %@", v8, 0xCu);
      sub_24E601704(v9, &qword_27F227B20);
      MEMORY[0x2530542D0](v9, -1, -1);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    goto LABEL_7;
  }

  if (!a1)
  {
    sub_24F417650();
    swift_allocError();
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8);
    return sub_24F92B788();
  }

  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8);
  return sub_24F92B798();
}

uint64_t sub_24F417270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24E7E3A7C;

  return CompletedChallengesDataIntentImplementation.perform(_:objectGraph:)(a2, a3);
}

uint64_t sub_24F417340(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F415EF0(a1, v4, v5, v6);
}

uint64_t sub_24F4173F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F415FB4(a1, v4, v5, v6);
}

uint64_t sub_24F4174B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F417518()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24F4175AC(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242CC8);

  return sub_24F41708C(a1, a2);
}

uint64_t block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F417650()
{
  result = qword_27F242CD0;
  if (!qword_27F242CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242CD0);
  }

  return result;
}

unint64_t sub_24F4176B8()
{
  result = qword_27F242CD8[0];
  if (!qword_27F242CD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F242CD8);
  }

  return result;
}

uint64_t sub_24F417720()
{
  v0 = sub_24F928AE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F210020 != -1)
  {
    swift_once();
  }

  v5[15] = 1;

  sub_24F923298();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510);
  (*(v1 + 104))(v3, *MEMORY[0x277D21CA8], v0);
  return sub_24F92A988();
}

unint64_t sub_24F417874()
{
  result = qword_27F216370;
  if (!qword_27F216370)
  {
    type metadata accessor for ResetTipDatastoreDebugSettingsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216370);
  }

  return result;
}

uint64_t sub_24F4178F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F417A14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_24F417B48()
{
  sub_24F41A580(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24F41A580(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F417CAC@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = sub_24F9275C8();
  a4[1] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242D88);
  sub_24F417DCC(a2, a3, a1, a4 + *(v9 + 44));
  v10 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242D90) + 36);
  v11 = *(sub_24F924258() + 20);
  v12 = *MEMORY[0x277CE0118];
  v13 = sub_24F924B38();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #28.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8) + 36)] = 256;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242D98);
  *(a4 + *(result + 36)) = 0x403C000000000000;
  return result;
}

uint64_t sub_24F417DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v152 = a3;
  v146 = a4;
  v137 = type metadata accessor for LargeBreakoutOverlayView(0);
  MEMORY[0x28223BE20](v137);
  v139 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DA0);
  MEMORY[0x28223BE20](v138);
  v143 = &v114 - v7;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DA8);
  MEMORY[0x28223BE20](v142);
  v145 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v141 = &v114 - v10;
  MEMORY[0x28223BE20](v11);
  v144 = &v114 - v12;
  v13 = sub_24F923E98();
  v134 = *(v13 - 8);
  v135 = v13;
  MEMORY[0x28223BE20](v13);
  v133 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F9234D8();
  v129 = *(v15 - 8);
  v130 = v15;
  MEMORY[0x28223BE20](v15);
  v128 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for LargeBreakoutOverlayViewModel();
  MEMORY[0x28223BE20](v126);
  v136 = &v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v127 = &v114 - v19;
  v131 = type metadata accessor for LargeBreakoutView.BackgroundView(0);
  MEMORY[0x28223BE20](v131);
  v140 = &v114 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v114 - v22;
  MEMORY[0x28223BE20](v24);
  v149 = &v114 - v25;
  v26 = sub_24F923F78();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v132 = &v114 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v115 = &v114 - v30;
  MEMORY[0x28223BE20](v31);
  v148 = &v114 - v32;
  MEMORY[0x28223BE20](v33);
  v151 = &v114 - v34;
  MEMORY[0x28223BE20](v35);
  v118 = &v114 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v114 - v38;
  v40 = *(type metadata accessor for LargeBreakoutView(0) + 20);
  sub_24F7699B0(v39);
  v156 = a1;
  v41 = sub_24ED15AB8();
  v124 = v42;
  v125 = v41;
  v123 = v43;
  v122 = v44;
  v154 = v27;
  v46 = *(v27 + 8);
  v45 = v27 + 8;
  v46(v39, v26);
  sub_24F7699B0(v39);
  LODWORD(a1) = sub_24EA12978();
  v46(v39, v26);
  v47 = a2;
  v48 = v26;
  v155 = v47;
  sub_24F7699B0(v39);
  v116 = v46;
  v46(v39, v26);
  v49 = *(v156 + 16);
  v150 = v49;
  v121 = a1;
  if (a1)
  {
    if (*(v49 + 93) == 1)
    {
      v50 = *(v49 + 88);
LABEL_6:
      v120 = v50;
      goto LABEL_8;
    }
  }

  else if (*(v49 + 93))
  {
    v50 = 1;
    goto LABEL_6;
  }

  v120 = 0;
LABEL_8:
  sub_24F923998();
  v52 = v51;
  v54 = v53;
  v153 = v40;
  sub_24F7699B0(v39);
  v119 = sub_24EA11A64();
  v55 = v116;
  v116(v39, v26);
  sub_24F7699B0(v39);
  v56 = sub_24EE6C54C(v157);
  v55(v39, v26, v56);
  v57 = v118;
  sub_24F7699B0(v118);
  v58 = *MEMORY[0x277CDFA90];
  v59 = v154 + 104;
  v152 = *(v154 + 104);
  v152(v39, v58, v48);
  v60 = sub_24F923F68();
  (v55)(v39, v48);
  (v55)(v57, v48);
  v61 = 48;
  if (v60)
  {
    v61 = 96;
  }

  v118 = *(v150 + v61);

  v62 = v151;
  sub_24F7699B0(v151);
  v152(v39, v58, v48);
  v63 = sub_24F923F68();
  (v55)(v39, v48);
  (v55)(v62, v48);
  v64 = 56;
  if (v63)
  {
    v64 = 104;
  }

  v117 = *(v150 + v64);

  sub_24F7699B0(v148);
  v152(v39, v58, v48);
  v65 = sub_24F923F68();
  v151 = v45;
  (v55)(v39, v48);
  v154 = v59;
  v147 = v58;
  v66 = v127;
  if (v65)
  {
    sub_24EA11CF4(v127);
  }

  else
  {
    sub_24EA12338(v127);
  }

  v68 = v128;
  v67 = v129;
  v69 = v130;
  (*(v129 + 104))(v128, *MEMORY[0x277CDF3C0], v130);
  v70 = sub_24F9234C8();
  (*(v67 + 8))(v68, v69);
  sub_24F41A1A4(v66, type metadata accessor for LargeBreakoutOverlayViewModel);
  (v55)(v148, v48);
  *v23 = v52;
  *(v23 + 1) = v54;
  v71 = v157[6];
  *(v23 + 136) = v157[7];
  v72 = v157[9];
  *(v23 + 152) = v157[8];
  *(v23 + 168) = v72;
  *(v23 + 184) = v157[10];
  v73 = v157[2];
  *(v23 + 72) = v157[3];
  v74 = v157[5];
  *(v23 + 88) = v157[4];
  *(v23 + 104) = v74;
  *(v23 + 120) = v71;
  v75 = v157[1];
  *(v23 + 24) = v157[0];
  *(v23 + 2) = v119;
  *(v23 + 40) = v75;
  *(v23 + 56) = v73;
  v23[200] = v121 & 1;
  v76 = v117;
  *(v23 + 26) = v118;
  *(v23 + 27) = v76;
  v23[224] = v120;
  v23[225] = v70 & 1;
  v77 = v124;
  *(v23 + 29) = v125;
  *(v23 + 30) = v77;
  *(v23 + 31) = v123;
  v23[256] = v122;
  v78 = *(v131 + 52);
  *&v23[v78] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  swift_storeEnumTagMultiPayload();
  sub_24F41A0CC(v23, v149, type metadata accessor for LargeBreakoutView.BackgroundView);
  v79 = v133;
  sub_24F769788(v133);
  LOBYTE(v78) = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v134 + 8))(v79, v135);
  if (v78)
  {
    v80 = v115;
    sub_24F7699B0(v115);
    v81 = v152;
    v152(v39, v147, v48);
    LODWORD(v148) = sub_24F923F68();
    (v55)(v39, v48);
    (v55)(v80, v48);
    v82 = 48;
    if (v148)
    {
      v82 = 96;
    }

    v150 = *(v150 + v82);
    swift_retain_n();
    v83 = v132;
  }

  else
  {
    v150 = 1;
    v83 = v132;
    v81 = v152;
  }

  sub_24F7699B0(v83);
  v81(v39, v147, v48);
  v84 = sub_24F923F68();
  (v55)(v39, v48);
  v85 = v136;
  if (v84)
  {
    sub_24EA11CF4(v136);
  }

  else
  {
    sub_24EA12338(v136);
  }

  (v55)(v83, v48);
  v86 = *(v137 + 20);
  KeyPath = swift_getKeyPath();
  v88 = v139;
  *&v139[v86] = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  swift_storeEnumTagMultiPayload();
  sub_24F41A0CC(v85, v88, type metadata accessor for LargeBreakoutOverlayViewModel);
  sub_24F9275C8();
  sub_24F9238C8();
  v89 = v143;
  sub_24F41A0CC(v88, v143, type metadata accessor for LargeBreakoutOverlayView);
  v90 = (v89 + *(v138 + 36));
  v91 = v157[12];
  *v90 = v157[11];
  v90[1] = v91;
  v90[2] = v157[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v93 = sub_24F925838();
  *(inited + 32) = v93;
  v94 = sub_24F925828();
  *(inited + 33) = v94;
  v95 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v93)
  {
    v95 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v94)
  {
    v95 = sub_24F925848();
  }

  sub_24F923318();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v141;
  sub_24E6009C8(v89, v141, &qword_27F242DA0);
  v105 = v104 + *(v142 + 36);
  *v105 = v95;
  *(v105 + 8) = v97;
  *(v105 + 16) = v99;
  *(v105 + 24) = v101;
  *(v105 + 32) = v103;
  *(v105 + 40) = 0;
  v106 = v144;
  sub_24E6009C8(v104, v144, &qword_27F242DA8);
  v107 = v149;
  v108 = v140;
  sub_24F41A13C(v149, v140, type metadata accessor for LargeBreakoutView.BackgroundView);
  v109 = v145;
  sub_24E60169C(v106, v145, &qword_27F242DA8);
  v110 = v146;
  sub_24F41A13C(v108, v146, type metadata accessor for LargeBreakoutView.BackgroundView);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DB0);
  v112 = v150;
  *(v110 + *(v111 + 48)) = v150;
  sub_24E60169C(v109, v110 + *(v111 + 64), &qword_27F242DA8);
  sub_24ED1931C(v112);
  sub_24ED1933C(v112);
  sub_24E601704(v106, &qword_27F242DA8);
  sub_24F41A1A4(v107, type metadata accessor for LargeBreakoutView.BackgroundView);
  sub_24E601704(v109, &qword_27F242DA8);
  sub_24ED1933C(v112);
  return sub_24F41A1A4(v108, type metadata accessor for LargeBreakoutView.BackgroundView);
}

uint64_t sub_24F418BD4@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v47 = sub_24F923F78();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DE8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v44 - v6);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DF0);
  MEMORY[0x28223BE20](v48);
  v9 = &v44 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242DF8);
  MEMORY[0x28223BE20](v49);
  v51 = &v44 - v10;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E00);
  MEMORY[0x28223BE20](v50);
  v53 = &v44 - v11;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E08);
  MEMORY[0x28223BE20](v52);
  v13 = &v44 - v12;
  *v7 = sub_24F927628();
  v7[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E10);
  sub_24F41918C(v1, v7 + *(v15 + 44));
  v46 = *(v1 + 224);
  if (*(v1 + 216))
  {
    v45 = 0;
  }

  else
  {
    v45 = *(v1 + 208) != 0;
  }

  v16 = *(v1 + 225);
  v17 = *v1;
  v18 = *(v1 + 8);
  type metadata accessor for LargeBreakoutView.BackgroundView(0);
  sub_24F7699B0(v4);
  v19.n128_u64[0] = v17;
  v20.n128_u64[0] = v18;
  v21 = sub_24EEF4E80(v16, v66, v19, v20);
  (*(v2 + 8))(v4, v47, v21);
  *v69 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B9C0);
  sub_24F926F28();
  *&v69[54] = v66[3];
  *&v69[70] = v66[4];
  *&v69[86] = *v67;
  *&v69[95] = *&v67[9];
  *&v69[6] = v66[0];
  *&v69[22] = v66[1];
  v22 = v55;
  *&v69[38] = v66[2];
  sub_24E6009C8(v7, v9, &qword_27F242DE8);
  v23 = &v9[*(v48 + 36)];
  v24 = *&v69[32];
  *(v23 + 50) = *&v69[48];
  v25 = *&v69[80];
  *(v23 + 66) = *&v69[64];
  *(v23 + 82) = v25;
  *(v23 + 97) = *&v69[95];
  v26 = *&v69[16];
  *(v23 + 2) = *v69;
  *(v23 + 18) = v26;
  v27 = v45;
  *v23 = v46;
  v23[1] = v27;
  *(v23 + 34) = v24;
  *(v23 + 29) = *&v68[3];
  *(v23 + 113) = *v68;
  *(v23 + 120) = v22;
  if (*(v1 + 16) || (v28 = *(v1 + 136), v29 = *(v1 + 168), v63 = *(v1 + 152), v64 = v29, v65 = *(v1 + 184), v30 = *(v1 + 72), v31 = *(v1 + 104), v59 = *(v1 + 88), v60 = v31, v61 = *(v1 + 120), v62 = v28, v32 = *(v1 + 40), v55 = *(v1 + 24), v56 = v32, v57 = *(v1 + 56), v58 = v30, sub_24EA7F2B4(&v55) != 1))
  {
    *&v55 = sub_24F926C98();
  }

  v33 = sub_24F9238D8();
  v34 = sub_24F925808();
  v35 = v51;
  sub_24E6009C8(v9, v51, &qword_27F242DF0);
  v36 = v35 + *(v49 + 36);
  *v36 = v33;
  *(v36 + 8) = v34;
  sub_24F927618();
  sub_24F9242E8();
  v37 = v53;
  sub_24E6009C8(v35, v53, &qword_27F242DF8);
  v38 = (v37 + *(v50 + 36));
  v39 = v60;
  v38[4] = v59;
  v38[5] = v39;
  v38[6] = v61;
  v40 = v56;
  *v38 = v55;
  v38[1] = v40;
  v41 = v58;
  v38[2] = v57;
  v38[3] = v41;
  sub_24E6009C8(v37, v13, &qword_27F242E00);
  *&v13[*(v52 + 36)] = 0;
  v42 = v54;
  sub_24E6009C8(v13, v54, &qword_27F242E08);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E18);
  *(v42 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_24F41918C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E20);
  MEMORY[0x28223BE20](v62);
  v5 = (&v58 - v4);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E28);
  MEMORY[0x28223BE20](v61);
  v7 = &v58 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = *(a1 + 17);
  v15 = *(a1 + 21);
  v150 = *(a1 + 19);
  v151 = v15;
  v152 = *(a1 + 23);
  v16 = *(a1 + 9);
  v17 = *(a1 + 13);
  v146 = *(a1 + 11);
  v147 = v17;
  v18 = *(a1 + 15);
  v149 = v14;
  v148 = v18;
  v19 = *(a1 + 5);
  v142 = *(a1 + 3);
  v143 = v19;
  v20 = *(a1 + 7);
  v145 = v16;
  v144 = v20;
  if (sub_24EA7F2B4(&v142) != 1)
  {
    v22 = *a1;
    v23 = a1[1];
    v82 = v150;
    v83 = v151;
    v84 = v152;
    v78 = v146;
    v79 = v147;
    v80 = v148;
    v81 = v149;
    v74 = v142;
    v75 = v143;
    v76 = v144;
    v77 = v145;
    v24 = *(a1 + 17);
    v25 = *(a1 + 21);
    v71 = *(a1 + 19);
    v72 = v25;
    v73 = *(a1 + 23);
    v26 = *(a1 + 9);
    v27 = *(a1 + 13);
    v67 = *(a1 + 11);
    v68 = v27;
    v69 = *(a1 + 15);
    v70 = v24;
    v28 = *(a1 + 5);
    v63 = *(a1 + 3);
    v64 = v28;
    v65 = *(a1 + 7);
    v66 = v26;
    sub_24F3DFD5C(&v63, &v126);
    sub_24F927618();
    sub_24F9238C8();
    v97 = v82;
    v98 = v83;
    v99 = v84;
    v93 = v78;
    v94 = v79;
    v95 = v80;
    v96 = v81;
    v90 = v74;
    v91 = v75;
    v92[0] = v76;
    v92[1] = v77;
    *&v100 = v22;
    *(&v100 + 1) = v23;
    sub_24F41AB5C(&v90);
    goto LABEL_5;
  }

  v21 = a1[2];
  if (v21)
  {

    sub_24F927618();
    sub_24F9238C8();
    LOBYTE(v74) = v122;
    LOBYTE(v63) = v124;
    *&v90 = v21;
    *(&v90 + 1) = v121;
    LOBYTE(v91) = v122;
    *(&v91 + 1) = v123;
    LOBYTE(v92[0]) = v124;
    *(v92 + 8) = v125;
    *(&v92[1] + 1) = 0x4000000000000000;
    sub_24F41A9B8(&v90);
LABEL_5:
    v117 = v101;
    v118 = v102;
    v119 = v103;
    v120 = v104;
    v113 = v97;
    v114 = v98;
    v115 = v99;
    v116 = v100;
    v109 = v93;
    v110 = v94;
    v111 = v95;
    v112 = v96;
    v105 = v90;
    v106 = v91;
    v107 = v92[0];
    v108 = v92[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E88);
    sub_24F41A9C4();
    sub_24F41AAA4();
    sub_24F924E28();
    v117 = v138;
    v118 = v139;
    v119 = v140;
    v120 = v141;
    v113 = v134;
    v114 = v135;
    v115 = v136;
    v116 = v137;
    v109 = v130;
    v110 = v131;
    v111 = v132;
    v112 = v133;
    v105 = v126;
    v106 = v127;
    v107 = v128;
    v108 = v129;
    CGSizeMake(&v105, v29, v30);
    v138 = v117;
    v139 = v118;
    v140 = v119;
    v141 = v120;
    v134 = v113;
    v135 = v114;
    v136 = v115;
    v137 = v116;
    v130 = v109;
    v131 = v110;
    v132 = v111;
    v133 = v112;
    v126 = v105;
    v127 = v106;
    v128 = v107;
    v129 = v108;
    goto LABEL_6;
  }

  sub_24F41A708(&v126);
LABEL_6:
  if (*(a1 + 200) == 1)
  {
    v31 = a1[31];
    v32 = *(a1 + 256);
    v60 = *(a1 + 29);
    *v7 = v60;
    *(v7 + 2) = v31;
    v7[24] = v32;
    *(v7 + 4) = 0x4000000000000000;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E40);
    sub_24F41A738();
    sub_24F41A844();
    sub_24F924E28();
  }

  else
  {
    v34 = a1[26];
    v33 = a1[27];
    v35 = type metadata accessor for MediaView();
    v59 = v10;
    v36 = v35[7];
    v37 = type metadata accessor for VideoConfiguration();
    (*(*(v37 - 8) + 56))(v5 + v36, 1, 1, v37);
    type metadata accessor for VideoPlaybackCoordinator();
    sub_24F419DA0(&qword_27F239098, type metadata accessor for VideoPlaybackCoordinator);
    *&v60 = v13;

    *v5 = sub_24F9243D8();
    v5[1] = v38;
    v5[2] = v34;
    v5[3] = v33;
    v39 = v5 + v35[8];
    *v39 = 0;
    *(v39 + 1) = 0;
    v39[16] = 1;
    *(v5 + v35[9]) = 0;
    sub_24F927618();
    sub_24F9238C8();
    v40 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E38) + 36));
    v41 = v64;
    *v40 = v63;
    v40[1] = v41;
    v40[2] = v65;
    *(v5 + *(v62 + 36)) = 0x4000000000000000;
    sub_24E60169C(v5, v7, &qword_27F242E20);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E40);
    sub_24F41A738();
    sub_24F41A844();
    sub_24F924E28();
    v10 = v59;
    v13 = v60;
    sub_24E601704(v5, &qword_27F242E20);
  }

  v86 = v138;
  v87 = v139;
  v88 = v140;
  v89 = v141;
  v82 = v134;
  v83 = v135;
  v84 = v136;
  v85 = v137;
  v78 = v130;
  v79 = v131;
  v80 = v132;
  v81 = v133;
  v74 = v126;
  v75 = v127;
  v76 = v128;
  v77 = v129;
  sub_24E60169C(v13, v10, &qword_27F242E30);
  v42 = v87;
  v101 = v86;
  v102 = v87;
  v43 = v88;
  v103 = v88;
  v44 = v82;
  v45 = v83;
  v97 = v82;
  v98 = v83;
  v46 = v84;
  v47 = v85;
  v99 = v84;
  v100 = v85;
  v48 = v78;
  v49 = v79;
  v93 = v78;
  v94 = v79;
  v50 = v80;
  v51 = v81;
  v95 = v80;
  v96 = v81;
  v52 = v74;
  v53 = v75;
  v90 = v74;
  v91 = v75;
  v54 = v76;
  v55 = v77;
  v92[0] = v76;
  v92[1] = v77;
  *(a2 + 192) = v86;
  *(a2 + 208) = v42;
  *(a2 + 224) = v43;
  *(a2 + 128) = v44;
  *(a2 + 144) = v45;
  *(a2 + 160) = v46;
  *(a2 + 176) = v47;
  *(a2 + 64) = v48;
  *(a2 + 80) = v49;
  *(a2 + 96) = v50;
  *(a2 + 112) = v51;
  *a2 = v52;
  *(a2 + 16) = v53;
  v104 = v89;
  *(a2 + 240) = v89;
  *(a2 + 32) = v54;
  *(a2 + 48) = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242E70);
  sub_24E60169C(v10, a2 + *(v56 + 48), &qword_27F242E30);
  sub_24E60169C(&v90, &v105, &qword_27F242E78);
  sub_24E601704(v13, &qword_27F242E30);
  sub_24E601704(v10, &qword_27F242E30);
  v117 = v86;
  v118 = v87;
  v119 = v88;
  v120 = v89;
  v113 = v82;
  v114 = v83;
  v115 = v84;
  v116 = v85;
  v109 = v78;
  v110 = v79;
  v111 = v80;
  v112 = v81;
  v105 = v74;
  v106 = v75;
  v107 = v76;
  v108 = v77;
  return sub_24E601704(&v105, &qword_27F242E78);
}

uint64_t sub_24F419AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = *v6;
  sub_24F41A13C(v8, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeBreakoutView);
  v9 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  sub_24F41A0CC(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for LargeBreakoutView);
  v11 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242D80) + 36);
  v12 = type metadata accessor for RoundedRectWithOutsetsModifer(0);
  v13 = v12[6];
  v14 = *MEMORY[0x277CE0118];
  v15 = sub_24F924B38();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 4) = 0x403C000000000000;
  v11[v12[7]] = 1;
  v16 = &v11[v12[8]];
  *v16 = 0;
  v16[8] = 1;
  *a3 = sub_24F41A020;
  a3[1] = v10;
}

uint64_t sub_24F419C80()
{
  MEMORY[0x28223BE20](v0);
  sub_24F41A13C(v2, &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LargeBreakoutView);
  sub_24F419DA0(&qword_27F215CA0, type metadata accessor for LargeBreakoutView);
  return sub_24F9218E8();
}

uint64_t sub_24F419DA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F419E94()
{
  v1 = type metadata accessor for LargeBreakoutView(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_24F923E98();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_24F923F78();
    (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24F41A020@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for LargeBreakoutView(0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24F417CAC(a1, v6, v7, a2);
}

uint64_t sub_24F41A0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F41A13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F41A1A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F41A228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 52);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F41A304(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F41A3B4()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F220EC0);
    if (v1 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F22E608);
      if (v2 <= 0x3F)
      {
        sub_24F41A580(319, &qword_27F22E600, type metadata accessor for Artwork, MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_24F41A580(319, &qword_27F232318, type metadata accessor for Video, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_24E66ECF0(319, &qword_27F242DC8);
            if (v5 <= 0x3F)
            {
              sub_24F41A580(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
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

void sub_24F41A580(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F41A5E8()
{
  result = qword_27F242DD0;
  if (!qword_27F242DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242D80);
    sub_24E602068(&qword_27F242DD8, &qword_27F242DE0);
    sub_24F419DA0(&qword_27F2245F0, type metadata accessor for RoundedRectWithOutsetsModifer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242DD0);
  }

  return result;
}

double sub_24F41A708(uint64_t a1)
{
  result = 0.0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 240) = -1;
  return result;
}

unint64_t sub_24F41A738()
{
  result = qword_27F242E48;
  if (!qword_27F242E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E40);
    sub_24F41A7F0();
    sub_24E602068(&qword_27F23A570, &qword_27F23A578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E48);
  }

  return result;
}

unint64_t sub_24F41A7F0()
{
  result = qword_27F242E50;
  if (!qword_27F242E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E50);
  }

  return result;
}

unint64_t sub_24F41A844()
{
  result = qword_27F242E58;
  if (!qword_27F242E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E20);
    sub_24F41A8FC();
    sub_24E602068(&qword_27F23A570, &qword_27F23A578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E58);
  }

  return result;
}

unint64_t sub_24F41A8FC()
{
  result = qword_27F242E60;
  if (!qword_27F242E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E38);
    sub_24F419DA0(&qword_27F242E68, type metadata accessor for MediaView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E60);
  }

  return result;
}

unint64_t sub_24F41A9C4()
{
  result = qword_27F242E90;
  if (!qword_27F242E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E80);
    sub_24F41AA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E90);
  }

  return result;
}

unint64_t sub_24F41AA50()
{
  result = qword_27F242E98;
  if (!qword_27F242E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242E98);
  }

  return result;
}

unint64_t sub_24F41AAA4()
{
  result = qword_27F242EA0;
  if (!qword_27F242EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E88);
    sub_24EB8F770();
    sub_24E602068(&qword_27F23A570, &qword_27F23A578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EA0);
  }

  return result;
}

unint64_t sub_24F41ABAC()
{
  result = qword_27F242EA8;
  if (!qword_27F242EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E18);
    sub_24F41AC64();
    sub_24E602068(&qword_27F212A60, &qword_27F223340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EA8);
  }

  return result;
}

unint64_t sub_24F41AC64()
{
  result = qword_27F242EB0;
  if (!qword_27F242EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E08);
    sub_24F41AD1C();
    sub_24E602068(&qword_27F2263F8, &qword_27F226400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EB0);
  }

  return result;
}

unint64_t sub_24F41AD1C()
{
  result = qword_27F242EB8;
  if (!qword_27F242EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242E00);
    sub_24F41ADA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EB8);
  }

  return result;
}

unint64_t sub_24F41ADA8()
{
  result = qword_27F242EC0;
  if (!qword_27F242EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242DF8);
    sub_24F41AE60();
    sub_24E602068(&qword_27F2186A0, &qword_27F2186A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EC0);
  }

  return result;
}

unint64_t sub_24F41AE60()
{
  result = qword_27F242EC8;
  if (!qword_27F242EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242DF0);
    sub_24E602068(&qword_27F242ED0, &qword_27F242DE8);
    sub_24EF80C44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EC8);
  }

  return result;
}

void *sub_24F41AF18(void *a1, int a2, int a3, int a4, int a5, int a6, uint64_t a7)
{
  v8 = v7;
  v106 = a7;
  LODWORD(v102) = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v92 = a2;
  v107 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290);
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v89 - v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D58);
  v98 = *(v99 - 1);
  MEMORY[0x28223BE20](v99);
  v97 = &v89 - v10;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216D60);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v89 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v89 - v18;
  v20 = qword_27F242ED8;
  v109 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  sub_24F923058();
  (*(v17 + 32))(v8 + v20, v19, v16);
  v21 = qword_27F39E5A0;
  *(v8 + qword_27F39E5A0) = 1;
  v22 = qword_27F242EE0;
  LOBYTE(v109) = 0;
  sub_24F923058();
  v23 = *(v13 + 32);
  v104 = v12;
  v24 = v12;
  v25 = v23;
  v23(v8 + v22, v15, v24);
  v105 = v8;
  *(v8 + qword_27F39E5A8) = 0;
  v26 = v107;
  if (!v107)
  {
    goto LABEL_17;
  }

  v103 = v107[30];
  if (!v103 || (v27 = v107[29]) == 0)
  {

LABEL_17:

    v87 = v105;
    (*(v17 + 8))(v105 + v20, v16);
    (*(v13 + 8))(v87 + v22, v104);
    type metadata accessor for LockupViewModel();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v28 = v105;
  v29 = v92;
  *(v105 + 24) = v92;
  v31 = v93 & 1;
  v30 = (v93 & 1) == 0;
  *(v28 + 25) = v93 & 1;
  *(v28 + 26) = v94;
  *(v28 + v21) = v95 & 1;
  v32 = v28;
  if (v30)
  {
    v33 = 1;
  }

  else
  {
    v33 = 3;
  }

  v95 = v33;
  if ((v31 & (v29 < 3u)) != 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v94 = v34;
  v35 = v27;
  type metadata accessor for OfferButtonViewModel();
  v36 = swift_allocObject();
  v37 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__disabled;
  LOBYTE(v109) = 0;
  swift_retain_n();
  swift_retain_n();
  v38 = v106;

  sub_24F923058();
  v25(v36 + v37, v15, v104);
  v39 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  *&v109 = 0;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DA8);
  v40 = v96;
  sub_24F923058();
  v41 = v100;
  v42 = v101;
  (*(v100 + 32))(v36 + v39, v40, v101);
  v43 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__theme;
  v109 = xmmword_24F943570;
  *&v110 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216DB0);
  v44 = v97;
  sub_24F923058();
  (*(v98 + 32))(v36 + v43, v44, v99);
  v45 = v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_presenter;
  *v45 = 0u;
  *(v45 + 16) = 0u;
  *(v45 + 32) = 0;
  v46 = (v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_redownloadSymbolName);
  *v46 = 0xD000000000000015;
  v46[1] = 0x800000024FA3FE10;
  v47 = (v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_accessibilityOfferButtonString);
  *v47 = 0;
  v47[1] = 0;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_placement) = v102;
  v48 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph;
  *(v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_objectGraph) = v38;
  v49 = OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel__action;
  swift_beginAccess();
  v50 = *(v41 + 8);

  v51 = v103;

  v50(v36 + v49, v42);
  *&v108[0] = v35;
  sub_24F923058();
  swift_endAccess();
  swift_beginAccess();
  v109 = xmmword_24F943590;
  v110 = 0uLL;
  *&v111 = 4;
  WORD6(v111) = 0;
  DWORD2(v111) = 0;
  BYTE14(v111) = 0;
  sub_24F923058();
  swift_endAccess();
  *(v36 + OBJC_IVAR____TtC12GameStoreKit20OfferButtonViewModel_displayProperties) = v51;
  type metadata accessor for ArcadeSubscriptionManager();
  v52 = sub_24F928FD8();

  sub_24F92A758();

  v53 = v109;
  if (OfferDisplayProperties.isArcadeOffer.getter())
  {
    v104 = v52;
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = swift_allocObject();
    swift_weakInit();
    v56 = v35;
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    *(v57 + 24) = v54;
    *(v57 + 32) = v51;
    *(v57 + 40) = v56;
    *(v57 + 48) = 0;
    *(v57 + 60) = 0;
    *(v57 + 56) = 3;
    *(v57 + 62) = v95;
    v58 = v94;
    *(v57 + 63) = 16843009 * v94;
    *(v57 + 67) = v58;
    v59 = *&v53[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_stateLock];

    [v59 lock];
    sub_24F213714(v36, sub_24E690EC8, v57, v53);
    [v59 unlock];

    v26 = v107;
    v35 = v56;
    v51 = v103;
  }

  v60 = &v53[OBJC_IVAR____TtC12GameStoreKit25ArcadeSubscriptionManager_subscriptionState];
  swift_beginAccess();
  LOBYTE(v60) = (v60[8] & 0xC0) == 128;
  WORD2(v109) = 0;
  LODWORD(v109) = 3;
  LOBYTE(v108[0]) = v95;
  *(v108 + 1) = 16843009 * v94;
  BYTE5(v108[0]) = v94;
  v61 = *(v36 + v48);

  sub_24EEFB79C(v60, v51, v35, 0, &v109, v108, v61);

  v32[4] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0);
  sub_24F92A758();
  v62 = v109;
  ObjectType = swift_getObjectType();
  v64 = v26[3];
  *&v109 = v26[2];
  *(&v109 + 1) = v64;
  v65 = *(*(&v62 + 1) + 56);

  v104 = v62;
  v102 = ObjectType;
  v66 = (v65)(&v109, ObjectType, *(&v62 + 1));
  v68 = v67;

  v32[5] = v66;
  v32[6] = v68;
  if (*(v51 + 126))
  {
    v99 = v65;
    v101 = v35;
    type metadata accessor for ASKBagContract();
    sub_24F92A758();
    v69 = v109;
    v70 = v107[2];
    v71 = v107[3];
    v72 = qword_27F210B10;

    swift_unknownObjectRetain();
    v73 = v51;
    if (v72 != -1)
    {
      swift_once();
    }

    v100 = v69;
    v74 = v89;
    sub_24F92A3B8();
    v75 = v91;
    sub_24F92A408();
    (*(v90 + 8))(v74, v75);
    LOBYTE(v75) = v109;
    type metadata accessor for OfferLabelPresenter();
    v76 = swift_allocObject();
    *(v76 + 64) = 0;
    *(v76 + 48) = 0;
    *(v76 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v76 + 16) = v70;
    *(v76 + 24) = v71;
    *(v76 + 32) = v73;
    *(v76 + 88) = v75;
    *&v109 = v70;
    *(&v109 + 1) = v71;

    v77 = (v99)(&v109, v102, *(&v62 + 1));
    v79 = v78;
    *(v76 + 72) = v77;
    *(v76 + 80) = v78;
    v80 = swift_getObjectType();
    v81 = swift_allocObject();
    swift_weakInit();
    v82 = *(v79 + 72);
    swift_retain_n();
    swift_unknownObjectRetain();

    v82(v76, sub_24F04CFEC, v81, v80, v79);

    (*(v79 + 16))(v108, v80, v79);
    v83 = sub_24F04CFF4(v108);
    v85 = v84;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v109 = v108[0];
    v110 = v108[1];
    v111 = v108[2];
    v112 = v108[3];
    sub_24E88D2AC(&v109);
    swift_beginAccess();
    *(v76 + 40) = v83;
    *(v76 + 48) = v85;

    v32 = v105;
    *(v105 + 56) = v76;
    v32[2] = v107;

    OfferLabelPresenter.view.setter(v86, &off_2862204D0);

    swift_unknownObjectRelease();
  }

  else
  {
    v32[7] = 0;
    v32[2] = v107;
    swift_unknownObjectRelease();
  }

  return v32;
}

uint64_t sub_24F41BD7C()
{

  swift_unknownObjectRelease();

  v1 = qword_27F242ED8;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = qword_27F242EE0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  v5 = *(*(v4 - 8) + 8);

  return v5(v0 + v3, v4);
}

uint64_t sub_24F41BE54()
{
  v1 = v0;
  v2 = *(v0 + 48);
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 80);
  swift_unknownObjectRetain();
  v4(v0, ObjectType, v2);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  v5 = qword_27F242ED8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B6E8);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);
  v7 = qword_27F242EE0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F237700);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t sub_24F41BF84()
{
  sub_24F41BE54();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LockupViewModel()
{
  result = qword_27F242EE8;
  if (!qword_27F242EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F41C028()
{
  sub_24F1AC3F8();
  if (v0 <= 0x3F)
  {
    sub_24EA22D84();
    if (v1 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_24F41C130()
{
  if (*(v0 + 25))
  {
    return 2;
  }

  if (*(v0 + 26) != 2)
  {
    return 1;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v23)
  {
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = *(*(v0 + 16) + 80);
  }

  v25 = v2;
  v26 = v3;
  v27 = sub_24F41C320();
  v28 = v4;
  v29 = sub_24F41C3E0();
  v30 = v5;
  result = sub_24F41C4F8();
  v6 = 0;
  v31 = result;
  v32 = v7;
  v8 = MEMORY[0x277D84F90];
LABEL_9:
  if (v6 <= 4)
  {
    v9 = 4;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9 + 1;
  v11 = 16 * v6 + 40;
  while (v6 != 4)
  {
    if (v10 == ++v6)
    {
      __break(1u);
      return result;
    }

    v12 = v11 + 16;
    v13 = *&v24[v11];
    v11 += 16;
    if (v13)
    {
      v14 = *&v24[v12 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v15 = *(v8 + 16);
      v16 = *(v8 + 24);
      v17 = v15 + 1;
      if (v15 >= v16 >> 1)
      {
        v22 = v15 + 1;
        v19 = v8;
        v20 = *(v8 + 16);
        result = sub_24E615CF4((v16 > 1), v15 + 1, 1, v19);
        v15 = v20;
        v17 = v22;
        v8 = result;
      }

      *(v8 + 16) = v17;
      v18 = v8 + 16 * v15;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  swift_arrayDestroy();
  v21 = *(v8 + 16);

  if (v21 == 1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_24F41C320()
{
  if ((sub_24F41C764() & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v1 = 112;
  if (v4)
  {
    v1 = 288;
  }

  v2 = *(*(v0 + 16) + v1);

  return v2;
}

uint64_t sub_24F41C3E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if ((v3 & 1) != 0 || *(v0 + 24) == 1)
  {
    return 0;
  }

  v2 = *(*(v0 + 16) + 312);

  return v2;
}

uint64_t sub_24F41C484()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F41C4F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (!v5)
  {
    return 0;
  }

  v1 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v1 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    return 0;
  }

  if (!*(v0 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    if ((v4 & 1) == 0)
    {
      if (*(*(v0 + 16) + 88))
      {
        sub_24F41C3E0();
        if (v2)
        {

          return 0;
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v4;
}

uint64_t sub_24F41C654()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v7)
  {
    return 0;
  }

  v1 = *(v0 + 16);
  if (!*(v1 + 88))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v2 = 104;
  if (v6)
  {
    v2 = 280;
  }

  if (!*(v1 + v2))
  {
    return 0;
  }

  sub_24F41C3E0();
  if (!v3)
  {
    return 0;
  }

  sub_24F41C4F8();
  if (!v4)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_24F41C764()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (v23)
  {
    v1 = 0;
    v2 = 0;
  }

  else
  {
    v1 = *(*(v0 + 16) + 80);
  }

  v25 = v1;
  v26 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v3 = *(v0 + 16);
  v4 = 96;
  if (v23)
  {
    v4 = 272;
  }

  v5 = 104;
  if (v23)
  {
    v5 = 280;
  }

  v6 = *(v3 + v5);
  v27 = *(v3 + v4);
  v28 = v6;

  v29 = sub_24F41C3E0();
  v30 = v7;
  result = sub_24F41C4F8();
  v9 = 0;
  v31 = result;
  v32 = v10;
  v11 = MEMORY[0x277D84F90];
LABEL_9:
  if (v9 <= 4)
  {
    v12 = 4;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 + 1;
  v14 = 16 * v9 + 40;
  while (v9 != 4)
  {
    if (v13 == ++v9)
    {
      __break(1u);
      return result;
    }

    v15 = v14 + 16;
    v16 = *&v24[v14];
    v14 += 16;
    if (v16)
    {
      v17 = *&v24[v15 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E615CF4(0, *(v11 + 16) + 1, 1, v11);
        v11 = result;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_24E615CF4((v18 > 1), v19 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740);
  swift_arrayDestroy();
  v21 = *(v0 + 26);
  v22 = *(v11 + 16);

  if (v21 == 2)
  {
    return v22 == 1;
  }

  else
  {
    return v22 < 3;
  }
}

uint64_t sub_24F41C9B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

unint64_t sub_24F41CA58()
{
  result = qword_27F242EF8;
  if (!qword_27F242EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242EF8);
  }

  return result;
}

unint64_t sub_24F41CAB0()
{
  result = qword_27F242F00;
  if (!qword_27F242F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F00);
  }

  return result;
}

unint64_t sub_24F41CB08()
{
  result = qword_27F242F08;
  if (!qword_27F242F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F08);
  }

  return result;
}

uint64_t sub_24F41CB5C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

double sub_24F41CBE0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_24F41CC64()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F41CCEC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a1 = v3;
  return result;
}

uint64_t sub_24F41CD70()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F41CDE8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24F41CE20()
{

  return swift_deallocObject();
}

uint64_t GameSource.jsRepresentation(in:)@<X0>(uint64_t a1@<X8>)
{
  v43[0] = a1;
  v2 = type metadata accessor for GameMAPI();
  MEMORY[0x28223BE20](v2);
  v4 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v5);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v8);
  v10 = (v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F41E898(v1, v10, type metadata accessor for GameSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v13 = v10[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93A400;
      *(inited + 32) = 0x646E696B24;
      v15 = MEMORY[0x277D22580];
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 80) = v15;
      *(inited + 40) = 0xE500000000000000;
      *(inited + 48) = 0x4449656C646E7562;
      *(inited + 56) = 0xE800000000000000;
      *(inited + 88) = 0x4449656C646E7562;
      *(inited + 96) = 0xE800000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EC10);
      v16 = swift_initStackObject();
      *(v16 + 16) = xmmword_24F93DE60;
      *(v16 + 32) = 25705;
      v17 = v16 + 32;
      *(v16 + 40) = 0xE200000000000000;
      *(v16 + 48) = v12;
      *(v16 + 56) = v13;
      v18 = sub_24E6086DC(v16);
      swift_setDeallocating();
      sub_24E601704(v17, &qword_27F219F90);
      *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20);
      *(inited + 136) = sub_24EC73450(&qword_27F21BD70, &qword_27F227A20);
      *(inited + 104) = v18;
      v19 = sub_24E607E40(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
      swift_arrayDestroy();
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
      v21 = v43[0];
      *(v43[0] + 24) = v20;
      result = sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
      v21[4] = result;
      *v21 = v19;
      return result;
    }

    sub_24F41EAB0(v10, v4, type metadata accessor for GameMAPI);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_24F93A400;
    *(v34 + 32) = 0x646E696B24;
    v35 = MEMORY[0x277D22580];
    *(v34 + 72) = MEMORY[0x277D837D0];
    *(v34 + 80) = v35;
    *(v34 + 40) = 0xE500000000000000;
    *(v34 + 48) = 0x495041616964656DLL;
    *(v34 + 56) = 0xE800000000000000;
    *(v34 + 88) = 0x495041616964656DLL;
    *(v34 + 96) = 0xE800000000000000;
    v36 = swift_initStackObject();
    *(v36 + 16) = xmmword_24F93DE60;
    *(v36 + 32) = 1701667175;
    *(v36 + 40) = 0xE400000000000000;
    *(v36 + 72) = v2;
    *(v36 + 80) = sub_24F41EB18(&qword_27F21C0B8, type metadata accessor for GameMAPI);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v36 + 48));
    sub_24F41E898(v4, boxed_opaque_existential_1, type metadata accessor for GameMAPI);
    v38 = sub_24E607E40(v36);
    swift_setDeallocating();
    sub_24E601704(v36 + 32, &qword_27F212FB0);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    *(v34 + 128) = v39;
    v40 = sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
    *(v34 + 136) = v40;
    *(v34 + 104) = v38;
    v41 = sub_24E607E40(v34);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
    swift_arrayDestroy();
    v42 = v43[0];
    *(v43[0] + 24) = v39;
    v42[4] = v40;
    *v42 = v41;
    v32 = type metadata accessor for GameMAPI;
    v33 = v4;
  }

  else
  {
    sub_24F41EAB0(v10, v7, type metadata accessor for Game);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_24F93A400;
    *(v23 + 32) = 0x646E696B24;
    v24 = MEMORY[0x277D22580];
    *(v23 + 72) = MEMORY[0x277D837D0];
    *(v23 + 80) = v24;
    *(v23 + 40) = 0xE500000000000000;
    *(v23 + 48) = 1701667175;
    *(v23 + 56) = 0xE400000000000000;
    *(v23 + 88) = 1701667175;
    *(v23 + 96) = 0xE400000000000000;
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_24F93DE60;
    *(v25 + 32) = 0x656D614774616877;
    *(v25 + 40) = 0xE800000000000000;
    *(v25 + 72) = v5;
    *(v25 + 80) = sub_24F41EB18(&qword_27F217960, type metadata accessor for Game);
    v26 = __swift_allocate_boxed_opaque_existential_1((v25 + 48));
    sub_24F41E898(v7, v26, type metadata accessor for Game);
    v27 = sub_24E607E40(v25);
    swift_setDeallocating();
    sub_24E601704(v25 + 32, &qword_27F212FB0);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20);
    *(v23 + 128) = v28;
    v29 = sub_24EC73450(&qword_27F212F28, &qword_27F212F20);
    *(v23 + 136) = v29;
    *(v23 + 104) = v27;
    v30 = sub_24E607E40(v23);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0);
    swift_arrayDestroy();
    v31 = v43[0];
    *(v43[0] + 24) = v28;
    v31[4] = v29;
    *v31 = v30;
    v32 = type metadata accessor for Game;
    v33 = v7;
  }

  return sub_24F41E900(v33, v32);
}

uint64_t type metadata accessor for GameSource()
{
  result = qword_27F242F70;
  if (!qword_27F242F70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F41D600(uint64_t a1)
{
  v2 = sub_24F41EA08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F41D63C(uint64_t a1)
{
  v2 = sub_24F41EA08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F41D678()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x495041616964656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667175;
  }
}

uint64_t sub_24F41D6CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F41F0FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F41D6F4(uint64_t a1)
{
  v2 = sub_24F41E960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F41D730(uint64_t a1)
{
  v2 = sub_24F41E960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F41D784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614774616877 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F41D80C(uint64_t a1)
{
  v2 = sub_24F41EA5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F41D848(uint64_t a1)
{
  v2 = sub_24F41EA5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F41D894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667175 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F41D91C(uint64_t a1)
{
  v2 = sub_24F41E9B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F41D958(uint64_t a1)
{
  v2 = sub_24F41E9B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameSource.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F10);
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v30 - v3;
  v35 = type metadata accessor for GameMAPI();
  MEMORY[0x28223BE20](v35);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F18);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F20);
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v30 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v30);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F28);
  v41 = *(v16 - 8);
  v42 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F41E960();
  sub_24F92D128();
  sub_24F41E898(v40, v15, type metadata accessor for GameSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = 1;
      sub_24F41EA08();
      v20 = v42;
      sub_24F92CC98();
      v21 = v34;
      sub_24F92CD08();

      (*(v33 + 8))(v7, v21);
      return (*(v41 + 8))(v18, v20);
    }

    v27 = v36;
    sub_24F41EAB0(v15, v36, type metadata accessor for GameMAPI);
    v45 = 2;
    sub_24F41E9B4();
    v28 = v37;
    v23 = v42;
    sub_24F92CC98();
    sub_24F41EB18(&qword_27F21C0D8, type metadata accessor for GameMAPI);
    v29 = v39;
    sub_24F92CD48();
    (*(v38 + 8))(v28, v29);
    v25 = type metadata accessor for GameMAPI;
    v26 = v27;
  }

  else
  {
    sub_24F41EAB0(v15, v12, type metadata accessor for Game);
    v43 = 0;
    sub_24F41EA5C();
    v23 = v42;
    sub_24F92CC98();
    sub_24F41EB18(&qword_27F214950, type metadata accessor for Game);
    v24 = v32;
    sub_24F92CD48();
    (*(v31 + 8))(v10, v24);
    v25 = type metadata accessor for Game;
    v26 = v12;
  }

  sub_24F41E900(v26, v25);
  return (*(v41 + 8))(v18, v23);
}

uint64_t GameSource.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F50);
  v4 = *(v3 - 8);
  v67 = v3;
  v68 = v4;
  MEMORY[0x28223BE20](v3);
  v69 = &v59 - v5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F58);
  v66 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F60);
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v59 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242F68);
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v10 = &v59 - v9;
  v11 = type metadata accessor for GameSource();
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v59 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v59 - v21;
  v23 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F41E960();
  v24 = v76;
  sub_24F92D108();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v77);
  }

  v60 = v16;
  v61 = v19;
  v62 = v13;
  v26 = v72;
  v25 = v73;
  v76 = 0;
  v63 = v22;
  v27 = v11;
  v28 = v74;
  v30 = v70;
  v29 = v71;
  v31 = sub_24F92CC78();
  v32 = (2 * *(v31 + 16)) | 1;
  v78 = v31;
  v79 = v31 + 32;
  v80 = 0;
  v81 = v32;
  v33 = sub_24E643434();
  v34 = v29;
  if (v33 == 3 || v80 != v81 >> 1)
  {
    v37 = sub_24F92C918();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20);
    *v39 = v27;
    sub_24F92CBB8();
    sub_24F92C908();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v75 + 8))(v10, v34);
    goto LABEL_9;
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v82 = 1;
      sub_24F41EA08();
      v35 = v29;
      v36 = v76;
      sub_24F92CBA8();
      if (v36)
      {
LABEL_7:
        (*(v75 + 8))(v10, v29);
LABEL_9:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v77);
      }

      v46 = v28;
      v47 = sub_24F92CC28();
      v76 = 0;
      v54 = v47;
      v56 = v55;
      (*(v66 + 8))(v26, v25);
      (*(v75 + 8))(v10, v35);
      swift_unknownObjectRelease();
      v57 = v60;
      *v60 = v54;
      v57[1] = v56;
      swift_storeEnumTagMultiPayload();
      v58 = v57;
    }

    else
    {
      v82 = 2;
      sub_24F41E9B4();
      v44 = v29;
      v45 = v76;
      sub_24F92CBA8();
      if (v45)
      {
        goto LABEL_7;
      }

      v46 = v28;
      v73 = v27;
      type metadata accessor for GameMAPI();
      sub_24F41EB18(&qword_27F21C0F0, type metadata accessor for GameMAPI);
      v50 = v62;
      v51 = v67;
      v52 = v69;
      sub_24F92CC68();
      v53 = v75;
      v76 = 0;
      (*(v68 + 8))(v52, v51);
      (*(v53 + 8))(v10, v44);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v58 = v50;
    }

    v43 = v63;
  }

  else
  {
    v82 = 0;
    sub_24F41EA5C();
    v41 = v29;
    v42 = v76;
    sub_24F92CBA8();
    v43 = v63;
    if (v42)
    {
      (*(v75 + 8))(v10, v41);
      goto LABEL_9;
    }

    v73 = v27;
    type metadata accessor for Game();
    sub_24F41EB18(&qword_27F214968, type metadata accessor for Game);
    v48 = v61;
    v49 = v65;
    sub_24F92CC68();
    (*(v64 + 8))(v30, v49);
    (*(v75 + 8))(v10, v41);
    swift_unknownObjectRelease();
    v76 = 0;
    swift_storeEnumTagMultiPayload();
    v46 = v28;
    v58 = v48;
  }

  sub_24F41EAB0(v58, v43, type metadata accessor for GameSource);
  sub_24F41EAB0(v43, v46, type metadata accessor for GameSource);
  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_24F41E898(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F41E900(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F41E960()
{
  result = qword_27F242F30;
  if (!qword_27F242F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F30);
  }

  return result;
}

unint64_t sub_24F41E9B4()
{
  result = qword_27F242F38;
  if (!qword_27F242F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F38);
  }

  return result;
}

unint64_t sub_24F41EA08()
{
  result = qword_27F242F40;
  if (!qword_27F242F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F40);
  }

  return result;
}

unint64_t sub_24F41EA5C()
{
  result = qword_27F242F48;
  if (!qword_27F242F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F48);
  }

  return result;
}

uint64_t sub_24F41EAB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F41EB18(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_24F41EB60()
{
  sub_24F41EC50(319, &qword_27F242F80, type metadata accessor for Game);
  if (v0 <= 0x3F)
  {
    sub_24F41EC20();
    if (v1 <= 0x3F)
    {
      sub_24F41EC50(319, &qword_27F242F90, type metadata accessor for GameMAPI);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F41EC20()
{
  result = qword_27F242F88;
  if (!qword_27F242F88)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27F242F88);
  }

  return result;
}

void sub_24F41EC50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F41ECE0()
{
  result = qword_27F242F98;
  if (!qword_27F242F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242F98);
  }

  return result;
}

unint64_t sub_24F41ED38()
{
  result = qword_27F242FA0;
  if (!qword_27F242FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FA0);
  }

  return result;
}

unint64_t sub_24F41ED90()
{
  result = qword_27F242FA8;
  if (!qword_27F242FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FA8);
  }

  return result;
}

unint64_t sub_24F41EDE8()
{
  result = qword_27F242FB0;
  if (!qword_27F242FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FB0);
  }

  return result;
}

unint64_t sub_24F41EE40()
{
  result = qword_27F242FB8;
  if (!qword_27F242FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FB8);
  }

  return result;
}

unint64_t sub_24F41EE98()
{
  result = qword_27F242FC0;
  if (!qword_27F242FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FC0);
  }

  return result;
}

unint64_t sub_24F41EEF0()
{
  result = qword_27F242FC8;
  if (!qword_27F242FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FC8);
  }

  return result;
}

unint64_t sub_24F41EF48()
{
  result = qword_27F242FD0;
  if (!qword_27F242FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FD0);
  }

  return result;
}

unint64_t sub_24F41EFA0()
{
  result = qword_27F242FD8;
  if (!qword_27F242FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FD8);
  }

  return result;
}

unint64_t sub_24F41EFF8()
{
  result = qword_27F242FE0;
  if (!qword_27F242FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FE0);
  }

  return result;
}

unint64_t sub_24F41F050()
{
  result = qword_27F242FE8;
  if (!qword_27F242FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FE8);
  }

  return result;
}

unint64_t sub_24F41F0A8()
{
  result = qword_27F242FF0;
  if (!qword_27F242FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242FF0);
  }

  return result;
}

uint64_t sub_24F41F0FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667175 && a2 == 0xE400000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x495041616964656DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F41F238(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 36);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F41F388(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 36);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ComingSoonPlatter()
{
  result = qword_27F242FF8;
  if (!qword_27F242FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F41F510()
{
  sub_24E61C7D0();
  if (v0 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v1 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8);
      if (v2 <= 0x3F)
      {
        sub_24E65B038(319, &qword_27F215458, &qword_27F215460);
        if (v3 <= 0x3F)
        {
          sub_24E61C938();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F41F62C@<X0>(char *a1@<X8>)
{
  v2 = sub_24F92CB88();

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

unint64_t sub_24F41F740()
{
  result = qword_27F243008;
  if (!qword_27F243008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243008);
  }

  return result;
}

uint64_t sub_24F41F794(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4217BC();
  sub_24F92D128();
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
  sub_24E602068(&qword_27F214040, &qword_27F213F18);
  sub_24F92CD48();
  if (!v2)
  {
    v10[14] = 1;
    sub_24F92CCA8();
    v10[13] = 2;
    sub_24F92CCA8();
    v10[12] = *(v3 + 72);
    v10[11] = 3;
    sub_24F421924();
    sub_24F92CD48();
    v10[10] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050);
    sub_24F92CD48();
    type metadata accessor for ComingSoonPlatter();
    v10[9] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
    sub_24E65CD0C();
    sub_24F92CD48();
    v10[8] = 6;
    sub_24F929608();
    sub_24F421978(&qword_27F214058, MEMORY[0x277D21F70]);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F41FB38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5);
  v7 = v34 - v6;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430B8);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v9 = v34 - v8;
  v10 = type metadata accessor for ComingSoonPlatter();
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 5) = 0u;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  *(v13 + 6) = 0u;
  *(v13 + 14) = 0;
  v42 = v13 + 80;
  sub_24E61DA68(&v45, (v13 + 80), qword_27F21B590);
  v14 = *(v11 + 44);
  v15 = sub_24F92A6D8();
  v16 = *(*(v15 - 8) + 56);
  v41 = v14;
  v16(&v13[v14], 1, 1, v15);
  v17 = *(v11 + 48);
  v18 = sub_24F929608();
  v19 = *(*(v18 - 8) + 56);
  v43 = v17;
  v19(&v13[v17], 1, 1, v18);
  v20 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_24F4217BC();
  v38 = v9;
  v21 = v40;
  sub_24F92D108();
  if (v21)
  {
    v23 = v41;
    v22 = v42;
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_24E601704(v22, qword_27F24EC90);
    sub_24E601704(&v13[v23], &qword_27F215440);
    return sub_24E601704(&v13[v43], &qword_27F213E68);
  }

  else
  {
    v40 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18);
    v48 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18);
    sub_24F92CC68();
    v24 = v46;
    *v13 = v45;
    *(v13 + 1) = v24;
    *(v13 + 4) = v47;
    LOBYTE(v45) = 1;
    v25 = sub_24F92CBC8();
    v27 = v41;
    v26 = v42;
    v28 = v37;
    *(v13 + 5) = v25;
    *(v13 + 6) = v29;
    LOBYTE(v45) = 2;
    *(v13 + 7) = sub_24F92CBC8();
    *(v13 + 8) = v30;
    v34[1] = v30;
    v48 = 3;
    sub_24F421810();
    sub_24F92CC68();
    v13[72] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90);
    v48 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40);
    sub_24F92CC68();
    sub_24E61DA68(&v45, v26, qword_27F24EC90);
    LOBYTE(v45) = 5;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v7, &v13[v27], &qword_27F215440);
    LOBYTE(v45) = 6;
    sub_24F421978(&qword_27F213F48, MEMORY[0x277D21F70]);
    v31 = v38;
    v32 = v39;
    sub_24F92CC18();
    (*(v28 + 8))(v31, v32);
    sub_24E61DA68(v36, &v13[v43], &qword_27F213E68);
    sub_24F421864(v13, v35);
    __swift_destroy_boxed_opaque_existential_1(v44);
    return sub_24F4218C8(v13);
  }
}

unint64_t sub_24F4201E8()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x4D747865746E6F63;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x795474756F79616CLL;
  if (v1 != 3)
  {
    v4 = 0x6575676573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x614E6C6F626D7973;
  if (v1 != 1)
  {
    v5 = 0x7470697263736564;
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

uint64_t sub_24F4202D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F421E68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4202FC(uint64_t a1)
{
  v2 = sub_24F4217BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F420338(uint64_t a1)
{
  v2 = sub_24F4217BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F420374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 36), &v9 - v6, &qword_27F215440);
  return sub_24E68039C(v7, a2);
}

unint64_t sub_24F4204A4()
{
  result = qword_27F243010;
  if (!qword_27F243010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243010);
  }

  return result;
}

uint64_t sub_24F4204F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243028);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243030);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243038);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v33 - v13;
  sub_24F420804(a1);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v6, v10, &qword_27F243028);
  v15 = &v10[*(v8 + 44)];
  v16 = v33[5];
  *(v15 + 4) = v33[4];
  *(v15 + 5) = v16;
  *(v15 + 6) = v33[6];
  v17 = v33[1];
  *v15 = v33[0];
  *(v15 + 1) = v17;
  v18 = v33[3];
  *(v15 + 2) = v33[2];
  *(v15 + 3) = v18;
  LOBYTE(v6) = sub_24F925808();
  sub_24E6009C8(v10, v14, &qword_27F243030);
  v19 = &v14[*(v12 + 44)];
  *v19 = v6;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243040) + 36));
  v21 = *(sub_24F924258() + 20);
  v22 = *MEMORY[0x277CE0118];
  v23 = sub_24F924B38();
  (*(*(v23 - 8) + 104))(&v20[v21], v22, v23);
  __asm { FMOV            V0.2D, #18.0 }

  *v20 = _Q0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48);
  v30 = *(v29 + 36);
  v31 = type metadata accessor for GradientBackground(0);
  (*(*(v31 - 8) + 56))(&v20[v30], 1, 1, v31);
  *&v20[*(v29 + 40)] = 0;
  return sub_24E6009C8(v14, a2, &qword_27F243038);
}

uint64_t sub_24F420804(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243048);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243050);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243058);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  if (*(a1 + 72))
  {
    *v4 = sub_24F9249A8();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243060);
    sub_24F4210B0(a1, &v4[*(v11 + 44)]);
    sub_24E60169C(v4, v7, &qword_27F243048);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F243068, &qword_27F243058);
    sub_24E602068(&qword_27F243070, &qword_27F243048);
    sub_24F924E28();
    v12 = v4;
    v13 = &qword_27F243048;
  }

  else
  {
    *v10 = sub_24F924C88();
    *(v10 + 1) = 0x4028000000000000;
    v10[16] = 0;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243078);
    sub_24F420B28(a1, &v10[*(v14 + 44)]);
    sub_24E60169C(v10, v7, &qword_27F243058);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F243068, &qword_27F243058);
    sub_24E602068(&qword_27F243070, &qword_27F243048);
    sub_24F924E28();
    v12 = v10;
    v13 = &qword_27F243058;
  }

  return sub_24E601704(v12, v13);
}

uint64_t sub_24F420B28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243080);
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v45 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243088);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243090);
  MEMORY[0x28223BE20](v12 - 8);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v44 - v15;
  if (a1[6])
  {

    v17 = sub_24F926E48();
    v18 = sub_24F9258F8();
    KeyPath = swift_getKeyPath();
    *&v57 = v17;
    *(&v57 + 1) = KeyPath;
    *&v58 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
    sub_24E60156C();
    sub_24F9268B8();

    (*(v9 + 32))(v16, v11, v8);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(&v44 - v15, 1, 1, v8);
  }

  v20 = a1[8];
  if (v20)
  {
    *&v57 = a1[7];
    *(&v57 + 1) = v20;
    sub_24E600AEC();

    v21 = sub_24F925E18();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = swift_getKeyPath();
    v29 = sub_24F9258D8();
    v30 = swift_getKeyPath();
    v56 = v25 & 1;
    *&v57 = v21;
    *(&v57 + 1) = v23;
    LOBYTE(v58) = v25 & 1;
    *(&v58 + 1) = v27;
    *&v59 = v28;
    BYTE8(v59) = 1;
    *&v60 = v30;
    *(&v60 + 1) = v29;
    v52 = v57;
    v53 = v58;
    v54 = v59;
    v55 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F168);
    sub_24E8532EC();
    v31 = v45;
    sub_24F9268B8();
    sub_24E601704(&v57, &qword_27F21F168);
    LOBYTE(v21) = sub_24F9257F8();
    sub_24F923318();
    v32 = v48;
    v33 = v49;
    v34 = v31 + *(v48 + 36);
    *v34 = v21;
    *(v34 + 8) = v35;
    *(v34 + 16) = v36;
    *(v34 + 24) = v37;
    *(v34 + 32) = v38;
    *(v34 + 40) = 0;
    sub_24E6009C8(v31, v33, &qword_27F243080);
    (*(v47 + 56))(v33, 0, 1, v32);
  }

  else
  {
    v33 = v49;
    (*(v47 + 56))(v49, 1, 1, v48);
  }

  v39 = v46;
  sub_24E60169C(v16, v46, &qword_27F243090);
  v40 = v50;
  sub_24E60169C(v33, v50, &qword_27F243088);
  v41 = v51;
  sub_24E60169C(v39, v51, &qword_27F243090);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243098);
  sub_24E60169C(v40, v41 + *(v42 + 48), &qword_27F243088);
  sub_24E601704(v33, &qword_27F243088);
  sub_24E601704(v16, &qword_27F243090);
  sub_24E601704(v40, &qword_27F243088);
  return sub_24E601704(v39, &qword_27F243090);
}

uint64_t sub_24F4210B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430A0);
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430A8);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v45 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241C80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243090);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v40 - v15;
  if (a1[6])
  {

    v17 = sub_24F926E48();
    v18 = sub_24F9258F8();
    KeyPath = swift_getKeyPath();
    *&v53 = v17;
    *(&v53 + 1) = KeyPath;
    *&v54 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F212AA0);
    sub_24E60156C();
    sub_24F9268B8();

    (*(v9 + 32))(v16, v11, v8);
    (*(v9 + 56))(v16, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(&v40 - v15, 1, 1, v8);
  }

  v20 = a1[8];
  if (v20)
  {
    *&v53 = a1[7];
    *(&v53 + 1) = v20;
    sub_24E600AEC();

    v21 = sub_24F925E18();
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = swift_getKeyPath();
    v29 = sub_24F9258D8();
    v30 = swift_getKeyPath();
    v52 = v25 & 1;
    *&v53 = v21;
    *(&v53 + 1) = v23;
    LOBYTE(v54) = v25 & 1;
    *(&v54 + 1) = v27;
    *&v55 = v28;
    BYTE8(v55) = 0;
    *&v56 = v30;
    *(&v56 + 1) = v29;
    v48 = v53;
    v49 = v54;
    v50 = v55;
    v51 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F168);
    sub_24E8532EC();
    v31 = v41;
    sub_24F9268B8();
    sub_24E601704(&v53, &qword_27F21F168);
    v32 = v43;
    v33 = v44;
    v34 = v45;
    (*(v43 + 32))(v45, v31, v44);
    (*(v32 + 56))(v34, 0, 1, v33);
  }

  else
  {
    v34 = v45;
    (*(v43 + 56))(v45, 1, 1, v44);
  }

  v35 = v42;
  sub_24E60169C(v16, v42, &qword_27F243090);
  v36 = v46;
  sub_24E60169C(v34, v46, &qword_27F2430A8);
  v37 = v47;
  sub_24E60169C(v35, v47, &qword_27F243090);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2430B0);
  sub_24E60169C(v36, v37 + *(v38 + 48), &qword_27F2430A8);
  sub_24E601704(v34, &qword_27F2430A8);
  sub_24E601704(v16, &qword_27F243090);
  sub_24E601704(v36, &qword_27F2430A8);
  return sub_24E601704(v35, &qword_27F243090);
}

uint64_t sub_24F42161C()
{
  sub_24F4204A4();

  return sub_24F9218E8();
}

unint64_t sub_24F4216AC()
{
  result = qword_27F243020;
  if (!qword_27F243020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243020);
  }

  return result;
}

unint64_t sub_24F4217BC()
{
  result = qword_27F2430C0;
  if (!qword_27F2430C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430C0);
  }

  return result;
}

unint64_t sub_24F421810()
{
  result = qword_27F2430C8;
  if (!qword_27F2430C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430C8);
  }

  return result;
}

uint64_t sub_24F421864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComingSoonPlatter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4218C8(uint64_t a1)
{
  v2 = type metadata accessor for ComingSoonPlatter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F421924()
{
  result = qword_27F2430D8;
  if (!qword_27F2430D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430D8);
  }

  return result;
}

uint64_t sub_24F421978(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24F4219C0()
{
  result = qword_27F2430E0;
  if (!qword_27F2430E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430E0);
  }

  return result;
}

unint64_t sub_24F421A28()
{
  result = qword_27F2430E8;
  if (!qword_27F2430E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243040);
    sub_24F421AE0();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430E8);
  }

  return result;
}

unint64_t sub_24F421AE0()
{
  result = qword_27F2430F0;
  if (!qword_27F2430F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243038);
    sub_24F421B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430F0);
  }

  return result;
}

unint64_t sub_24F421B6C()
{
  result = qword_27F2430F8;
  if (!qword_27F2430F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243030);
    sub_24F421BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2430F8);
  }

  return result;
}

unint64_t sub_24F421BF8()
{
  result = qword_27F243100;
  if (!qword_27F243100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243028);
    sub_24F421C7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243100);
  }

  return result;
}

unint64_t sub_24F421C7C()
{
  result = qword_27F243108;
  if (!qword_27F243108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243110);
    sub_24E602068(&qword_27F243068, &qword_27F243058);
    sub_24E602068(&qword_27F243070, &qword_27F243048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243108);
  }

  return result;
}

unint64_t sub_24F421D64()
{
  result = qword_27F243118;
  if (!qword_27F243118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243118);
  }

  return result;
}

unint64_t sub_24F421DBC()
{
  result = qword_27F243120;
  if (!qword_27F243120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243120);
  }

  return result;
}

unint64_t sub_24F421E14()
{
  result = qword_27F243128;
  if (!qword_27F243128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243128);
  }

  return result;
}

uint64_t sub_24F421E68(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E6C6F626D7973 && a2 == 0xEA0000000000656DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x795474756F79616CLL && a2 == 0xEA00000000006570 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24F4220D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Game();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F422218(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Game();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsChallengesShelfIntent()
{
  result = qword_27F243130;
  if (!qword_27F243130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F422394()
{
  type metadata accessor for Game();
  if (v0 <= 0x3F)
  {
    sub_24E7D231C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F422428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8);
  MEMORY[0x28223BE20](v3 - 8);
  v20 = v18 - v4;
  v5 = type metadata accessor for Game();
  MEMORY[0x28223BE20](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243140);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = v18 - v8;
  v10 = type metadata accessor for GameDetailsChallengesShelfIntent();
  MEMORY[0x28223BE20](v10);
  v12 = (v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F422950();
  v22 = v9;
  v13 = v24;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v14 = v21;
  v27 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v15;
  v18[1] = v15;
  v26 = 1;
  sub_24F4229A4(&qword_27F214968, type metadata accessor for Game);
  sub_24F92CC68();
  sub_24E636644(v7, v12 + *(v10 + 20));
  type metadata accessor for Page.Background(0);
  v25 = 2;
  sub_24F4229A4(&qword_27F21D930, type metadata accessor for Page.Background);
  v16 = v20;
  sub_24F92CC18();
  (*(v14 + 8))(v22, v23);
  sub_24E7DF71C(v16, v12 + *(v10 + 24));
  sub_24F4229EC(v12, v19);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_24F33B28C(v12, type metadata accessor for GameDetailsChallengesShelfIntent);
}

uint64_t sub_24F422824()
{
  v1 = 1701667175;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F422878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24F422B68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24F4228A0(uint64_t a1)
{
  v2 = sub_24F422950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4228DC(uint64_t a1)
{
  v2 = sub_24F422950();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F422950()
{
  result = qword_27F243148;
  if (!qword_27F243148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243148);
  }

  return result;
}

uint64_t sub_24F4229A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F4229EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsChallengesShelfIntent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F422A64()
{
  result = qword_27F243150;
  if (!qword_27F243150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243150);
  }

  return result;
}

unint64_t sub_24F422ABC()
{
  result = qword_27F243158;
  if (!qword_27F243158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243158);
  }

  return result;
}

unint64_t sub_24F422B14()
{
  result = qword_27F243160;
  if (!qword_27F243160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243160);
  }

  return result;
}

uint64_t sub_24F422B68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667175 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unsigned __int8 *PageLayout.MarginSpec.init(pageMargins:shelfMargins:shelfDisplayStyle:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X1>, unint64_t *a3@<X2>, char *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 <= 2)
  {
    if (*a2)
    {
      if (v4 == 1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = *result;
      if (v4 > 2)
      {
        if (*result <= 4u)
        {
          if (v4 == 3)
          {
            goto LABEL_4;
          }

LABEL_11:
          *a4 = 3;
          return result;
        }

        goto LABEL_12;
      }

      if (v4 == 1)
      {
LABEL_7:
        *a4 = 0;
        return result;
      }
    }

    *a4 = 1;
    return result;
  }

  if (*a2 <= 4u)
  {
    if (v4 == 3)
    {
LABEL_4:
      *a4 = 2;
      return result;
    }

    goto LABEL_11;
  }

LABEL_12:
  if (v4 == 5)
  {
    *a4 = 4;
  }

  else
  {
    if (v5 >> 62 != 1 || v5 >> 1 == 0xFFFFFFFF)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }

    *a4 = v7;
  }

  return result;
}

double PageLayout.MarginSpec.resolve(in:isVerticalSizeClassCompact:hasHorizontalSafeArea:maxContainerWidth:)@<D0>(char a1@<W0>, char a2@<W1>, double *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = *v5;
  if (a4 <= 1580.0)
  {
    v10 = a4;
  }

  else
  {
    v10 = 1580.0;
  }

  v11 = 0.0;
  if (*v5 <= 2u)
  {
    if (!*v5)
    {
      goto LABEL_47;
    }

    if (v9 != 1)
    {
      v13 = a1 & 1;
      goto LABEL_24;
    }

    if (a1)
    {
      if (a2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 16.0;
      }

      goto LABEL_47;
    }

    goto LABEL_33;
  }

  if (*v5 > 4u)
  {
    if (v9 == 5)
    {
      if (qword_27F210748 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if (byte_27F2301A8 == 1)
      {
        if (a1)
        {
          if (qword_27F210D60 != -1)
          {
            swift_once();
          }

          v11 = *&qword_27F39D300;
        }

        else
        {
          v16 = v10 >= 428.0 || v10 < 376.0;
          v17 = 46.0;
          if (!v16)
          {
            v17 = 38.0;
          }

          if (v10 >= 0.0 && v10 < 376.0)
          {
            v11 = 44.0;
          }

          else
          {
            v11 = v17;
          }
        }
      }

      else
      {
        v11 = 40.0;
      }
    }

    else
    {
      v11 = 14.0;
    }

    goto LABEL_47;
  }

  if (v9 != 3)
  {
    if (a1)
    {
      if (a2)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 16.0;
      }

      if (v10 + -420.0 > 0.0 && (v10 + -420.0) * 0.5 > v11)
      {
        v11 = (v10 + -420.0) * 0.5;
      }

      goto LABEL_47;
    }

LABEL_33:
    v11 = dbl_24F9F5CF8[sub_24E6B00B4(v10)];
    goto LABEL_47;
  }

  if (sub_24E6B00B4(v10) >= 4u)
  {
    v13 = a1 & 1;
LABEL_24:
    sub_24F422FFC(v13, v10);
    v11 = v15;
  }

LABEL_47:
  result = v10 - (v11 + v11);
  *a3 = a4;
  a3[1] = a5;
  a3[2] = v10;
  a3[3] = result;
  a3[4] = v11;
  a3[5] = (a4 - v10) * 0.5 + v11;
  return result;
}

id sub_24F422FFC(char a1, double a2)
{
  if ((a1 & 1) == 0)
  {
    sub_24E6B00B4(a2);
  }

  return [objc_opt_self() _readableWidth];
}

uint64_t PageLayout.MarginSpec.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

double sub_24F423108()
{
  result = 1580.0 - dbl_24F9F5CB0[sub_24E6B00B4(1580.0)];
  *&qword_27F243168 = result;
  return result;
}

double static PageLayout.MarginSpec.maxContentWidth.getter()
{
  if (qword_27F211268 != -1)
  {
    swift_once();
  }

  return *&qword_27F243168;
}

double sub_24F4231A4()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    return *(v0 + 24);
  }

  sub_24F92BDC8();
  v7 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E62A5EC(v5, 0);
  (*(v2 + 8))(v4, v1);
  return *&v8[1];
}

double sub_24F4232F0()
{
  v1 = sub_24F924848();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  if (*(v0 + 72) == 1)
  {
    return *(v0 + 40);
  }

  sub_24F92BDC8();
  v10 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();
  sub_24E669FC4(v6, v5, v8, v7, 0);
  (*(v2 + 8))(v4, v1);
  return v11;
}

__n128 sub_24F42346C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a1;
  v60 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243188);
  MEMORY[0x28223BE20](v55);
  v58 = &v51 - v3;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243190);
  MEMORY[0x28223BE20](v57);
  v59 = &v51 - v4;
  v5 = sub_24F925218();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20);
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - v18;
  v20 = *(v2 + 1);
  if (v20 > 2)
  {
    if (*(v2 + 1) > 4u)
    {
      if (v20 == 5)
      {
        v21 = 4;
      }

      else
      {
        v21 = 5;
      }
    }

    else if (v20 == 3)
    {
      v21 = 2;
    }

    else
    {
      v21 = 3;
    }

LABEL_15:
    v53 = v21;
    if (*(v2 + 16))
    {
      goto LABEL_16;
    }

LABEL_8:
    v22 = *(v2 + 8);
    goto LABEL_17;
  }

  if (!*(v2 + 1))
  {
    v21 = 0x5040302010001uLL >> (8 * *v2);
    goto LABEL_15;
  }

  if (v20 != 1)
  {
    v21 = 1;
    goto LABEL_15;
  }

  v53 = 0;
  if ((*(v2 + 16) & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_16:
  v22 = sub_24F4231A4();
LABEL_17:
  type metadata accessor for PageMarginsViewModifier();
  v54 = v2;
  sub_24F769764(v19);
  (*(v6 + 104))(v16, *MEMORY[0x277CE0558], v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v23 = *(v8 + 48);
  sub_24EDEBCCC(v19, v10);
  sub_24EDEBCCC(v16, &v10[v23]);
  v24 = *(v6 + 48);
  if (v24(v10, 1, v5) == 1)
  {
    sub_24E601704(v16, &qword_27F215598);
    sub_24E601704(v19, &qword_27F215598);
    if (v24(&v10[v23], 1, v5) == 1)
    {
      sub_24E601704(v10, &qword_27F215598);
      v25 = 1;
LABEL_23:
      v26 = v58;
      goto LABEL_25;
    }

LABEL_22:
    sub_24E601704(v10, &unk_27F254F20);
    v25 = 0;
    goto LABEL_23;
  }

  sub_24EDEBCCC(v10, v13);
  if (v24(&v10[v23], 1, v5) == 1)
  {
    sub_24E601704(v16, &qword_27F215598);
    sub_24E601704(v19, &qword_27F215598);
    (*(v6 + 8))(v13, v5);
    goto LABEL_22;
  }

  v27 = v52;
  (*(v6 + 32))(v52, &v10[v23], v5);
  sub_24EDEBD3C();
  v25 = sub_24F92AFF8();
  v28 = *(v6 + 8);
  v28(v27, v5);
  sub_24E601704(v16, &qword_27F215598);
  sub_24E601704(v19, &qword_27F215598);
  v28(v13, v5);
  sub_24E601704(v10, &qword_27F215598);
  v26 = v58;
LABEL_25:
  sub_24F4232F0();
  if (v22 > 1580.0)
  {
    v22 = 1580.0;
  }

  if (v53 > 2u)
  {
    if (v53 == 3)
    {
      if (sub_24E6B00B4(v22) >= 4u)
      {
        v29 = 3;
LABEL_39:
        LOBYTE(v68) = v29;
        sub_24F422FFC(v25 & 1, v22);
      }
    }

    else
    {
      if (v53 == 4)
      {
        if (v25)
        {
          goto LABEL_47;
        }

LABEL_46:
        sub_24E6B00B4(v22);
        goto LABEL_47;
      }

      if (qword_27F210748 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      if ((byte_27F2301A8 & 1) != 0 && (v25 & 1) != 0 && qword_27F210D60 != -1)
      {
        swift_once();
      }
    }
  }

  else if (v53)
  {
    if (v53 == 1)
    {
      if (v25)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    v29 = 2;
    goto LABEL_39;
  }

LABEL_47:
  v30 = sub_24F9257F8();
  sub_24F923318();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243198);
  (*(*(v39 - 8) + 16))(v26, v56, v39);
  v40 = v26 + *(v55 + 36);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  sub_24F927618();
  sub_24F9242E8();
  v41 = v59;
  sub_24E6009C8(v26, v59, &qword_27F243188);
  v42 = (v41 + *(v57 + 36));
  v43 = v66;
  v42[4] = v65;
  v42[5] = v43;
  v42[6] = v67;
  v44 = v62;
  *v42 = v61;
  v42[1] = v44;
  v45 = v64;
  v42[2] = v63;
  v42[3] = v45;
  sub_24F927618();
  sub_24F9242E8();
  v46 = v60;
  sub_24E6009C8(v41, v60, &qword_27F243190);
  v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2431A0) + 36);
  v48 = v73;
  *(v47 + 64) = v72;
  *(v47 + 80) = v48;
  *(v47 + 96) = v74;
  v49 = v69;
  *v47 = v68;
  *(v47 + 16) = v49;
  result = v71;
  *(v47 + 32) = v70;
  *(v47 + 48) = result;
  return result;
}

unint64_t sub_24F423E9C()
{
  result = qword_27F243170;
  if (!qword_27F243170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243170);
  }

  return result;
}

uint64_t sub_24F423F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 32);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F423FEC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 32) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PageMarginsViewModifier()
{
  result = qword_27F243178;
  if (!qword_27F243178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F4240E4()
{
  sub_24E819578(319, &qword_27F215E08, MEMORY[0x277D85048], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_24E819578(319, &qword_27F215590, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_24E819578(319, &qword_27F254DF0, MEMORY[0x277CDF310], MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        sub_24E684120();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24F424234()
{
  result = qword_27F2431A8;
  if (!qword_27F2431A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2431A0);
    sub_24F4242C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431A8);
  }

  return result;
}

unint64_t sub_24F4242C0()
{
  result = qword_27F2431B0;
  if (!qword_27F2431B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243190);
    sub_24F42434C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431B0);
  }

  return result;
}

unint64_t sub_24F42434C()
{
  result = qword_27F2431B8;
  if (!qword_27F2431B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243188);
    sub_24F4243D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431B8);
  }

  return result;
}

unint64_t sub_24F4243D8()
{
  result = qword_27F2431C0;
  if (!qword_27F2431C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F243198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431C0);
  }

  return result;
}

uint64_t sub_24F42443C()
{
  result = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  qword_27F2431C8 = result;
  return result;
}

uint64_t sub_24F424480()
{
  v0 = sub_24F926C08();
  MEMORY[0x28223BE20](v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_24F926D48();
  qword_27F2431D0 = result;
  return result;
}

uint64_t sub_24F424584(void *a1)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t ChallengesPlayerPickerPageInfo.init(pageID:pageMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_24F92A708();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = *(type metadata accessor for ChallengesPlayerPickerPageInfo() + 20);
  v8 = sub_24F928818();
  v9 = *(*(v8 - 8) + 32);

  return v9(a3 + v7, a2, v8);
}

uint64_t type metadata accessor for ChallengesPlayerPickerPageInfo()
{
  result = qword_27F2431F0;
  if (!qword_27F2431F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F424700()
{
  if (*v0)
  {
    return 0x7274654D65676170;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F424740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F42481C(uint64_t a1)
{
  v2 = sub_24F424A94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F424858(uint64_t a1)
{
  v2 = sub_24F424A94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesPlayerPickerPageInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2431D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F424A94();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92A708();
  sub_24F424F08(&qword_27F21F890, MEMORY[0x277D22408]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for ChallengesPlayerPickerPageInfo();
    v8[14] = 1;
    sub_24F928818();
    sub_24F424F08(&qword_27F21F898, MEMORY[0x277D21BF8]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F424A94()
{
  result = qword_27F2431E0;
  if (!qword_27F2431E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2431E0);
  }

  return result;
}

uint64_t ChallengesPlayerPickerPageInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_24F928818();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_24F92A708();
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2431E8);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F424A94();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v9;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_24F424F08(&qword_27F21F8C0, MEMORY[0x277D22408]);
  v15 = v25;
  sub_24F92CC68();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_24F424F08(&qword_27F21F8C8, MEMORY[0x277D21BF8]);
  sub_24F92CC68();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_24F424F50(v17, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F424FB4(v17);
}

uint64_t sub_24F424F08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24F424F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F424FB4(uint64_t a1)
{
  v2 = type metadata accessor for ChallengesPlayerPickerPageInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F425054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F92A708();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_24F928818();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_24F425158(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_24F92A708();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_24F928818();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_24F425254()
{
  result = sub_24F92A708();
  if (v1 <= 0x3F)
  {
    result = sub_24F928818();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F4252EC()
{
  result = qword_27F243200;
  if (!qword_27F243200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243200);
  }

  return result;
}

unint64_t sub_24F425344()
{
  result = qword_27F243208;
  if (!qword_27F243208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243208);
  }

  return result;
}

unint64_t sub_24F42539C()
{
  result = qword_27F243210;
  if (!qword_27F243210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243210);
  }

  return result;
}

uint64_t sub_24F425404(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F425484(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CompleteOnboardProfileCreationAction()
{
  result = qword_27F243218;
  if (!qword_27F243218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F425540@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243228);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CompleteOnboardProfileCreationAction();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4259A0();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F4259F4(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F4257AC(uint64_t a1)
{
  v2 = sub_24F4259A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4257E8(uint64_t a1)
{
  v2 = sub_24F4259A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F42583C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F243238);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4259A0();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F4259A0()
{
  result = qword_27F243230;
  if (!qword_27F243230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243230);
  }

  return result;
}

uint64_t sub_24F4259F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CompleteOnboardProfileCreationAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F425A6C()
{
  result = qword_27F243240;
  if (!qword_27F243240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243240);
  }

  return result;
}

unint64_t sub_24F425AC4()
{
  result = qword_27F243248;
  if (!qword_27F243248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243248);
  }

  return result;
}

unint64_t sub_24F425B1C()
{
  result = qword_27F243250[0];
  if (!qword_27F243250[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F243250);
  }

  return result;
}

uint64_t sub_24F425BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v51 = a2;
  v45 = sub_24F91F6B8();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - v6;
  v8 = sub_24F928AD8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  if (qword_27F211198 != -1)
  {
    swift_once();
  }

  sub_24E65864C(&unk_27F39E488, v60);
  v15 = type metadata accessor for InviteChallengeViaMessagesAction();
  v16 = *(v15 + 32);
  v48 = v9;
  v17 = *(v9 + 16);
  v17(v14, a1 + v16, v8);
  v18 = swift_allocObject();
  *(v18 + 16) = *(a1 + *(v15 + 28));
  v19 = v18 | 0x2000000000000004;

  v20 = sub_24F929CF8();
  v22 = v21;
  sub_24E60169C(v60, v59, &qword_27F235830);
  v23 = sub_24F91F4A8();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v58[3] = &type metadata for FlowDestination;
  v58[0] = v19;
  v47 = v14;
  v17(v11, v14, v8);
  v24 = type metadata accessor for FlowAction();
  v25 = swift_allocObject();
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v26 = v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  v27 = (v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v27 = 0;
  v27[1] = 0;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
  v49 = v7;
  sub_24E60169C(v7, v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530);
  v28 = (v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v28 = 0;
  v28[1] = 0;
  v29 = v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v29 = xmmword_24F9406F0;
  *(v29 + 24) = 0;
  *(v29 + 32) = 0;
  *(v29 + 16) = 0;
  *(v29 + 40) = 0;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v30 = (v25 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v30 = v20;
  v30[1] = v22;
  sub_24E60169C(v59, v57, &qword_27F235830);
  v46 = v11;
  v17((v25 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v11, v8);
  v31 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v32 = sub_24F929608();
  (*(*(v32 - 8) + 56))(v25 + v31, 1, 1, v32);
  v33 = (v25 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v33 = 0u;
  v33[1] = 0u;
  v34 = v25 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E60169C(v57, &v54, &qword_27F235830);
  if (*(&v55 + 1))
  {
    v35 = v55;
    *v34 = v54;
    *(v34 + 16) = v35;
    *(v34 + 32) = v56;
  }

  else
  {
    v36 = v43;
    sub_24F91F6A8();
    v37 = sub_24F91F668();
    v39 = v38;
    (*(v44 + 8))(v36, v45);
    v52 = v37;
    v53 = v39;
    sub_24F92C7F8();
    sub_24E601704(&v54, &qword_27F235830);
  }

  sub_24E601704(v57, &qword_27F235830);
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0u;

  FlowAction.setPageData(_:)(v58);

  v40 = *(v48 + 8);
  v40(v47, v8);
  sub_24E601704(v60, &qword_27F235830);
  v40(v46, v8);
  sub_24E601704(v49, &qword_27F228530);
  sub_24E601704(v59, &qword_27F235830);
  sub_24E601704(v58, &qword_27F2129B0);
  v60[3] = v24;
  v60[4] = sub_24F426334(&qword_27F216400, type metadata accessor for FlowAction);
  v60[0] = v25;
  type metadata accessor for InviteChallengeViaMessagesActionImplementation();

  swift_getWitnessTable();
  v41 = sub_24F1489C4(v60);

  __swift_destroy_boxed_opaque_existential_1(v60);
  return v41;
}

uint64_t sub_24F4262FC()
{

  return swift_deallocObject();
}

uint64_t sub_24F426334(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t RecentlyPlayedShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = type metadata accessor for GSKShelf();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for RecentlyPlayedShelfConstructionIntent();
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for GamesRecentlyPlayedDataIntent();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F426480, 0, 0);
}

uint64_t sub_24F426480()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);
  v3 = *(v0 + 64);
  v4 = type metadata accessor for RecentlyPlayedShelfIntent();
  v5 = v4[5];
  *(v0 + 192) = v5;
  v6 = *(v3 + v4[6]);
  v7 = *(v3 + v4[7]);
  sub_24E8C9414(v3 + v5, v2, type metadata accessor for Player);
  *(v2 + v1[5]) = v6;
  *(v2 + v1[6]) = v7;
  *(v2 + v1[7]) = 0;
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_24F426598;
  v9 = *(v0 + 128);
  v10 = *(v0 + 72);

  return sub_24E6483AC(v9, v10);
}

uint64_t sub_24F426598(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_24F426E10;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_24F4266C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F4266C0()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 64);
  v6 = *v4;
  v5 = v4[1];
  sub_24E8C9414(v4 + *(v0 + 192), v2 + *(v3 + 20), type metadata accessor for Player);
  *v2 = v6;
  v2[1] = v5;
  *(v2 + *(v3 + 24)) = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030);

  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_24F4267DC;

  return MEMORY[0x28217F228](v0 + 16, v7, v7);
}

uint64_t sub_24F4267DC()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_24F426B00;
  }

  else
  {
    v2 = sub_24F4268F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F4268F0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_24F3241D0(&qword_27F21D598, type metadata accessor for RecentlyPlayedShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24F4269EC;
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  v8 = v0[9];

  return MEMORY[0x28217F4B0](v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_24F4269EC()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_24F426D40;
  }

  else
  {
    v2 = sub_24F426BC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F426B00()
{
  v1 = v0[16];
  sub_24F426EB8(v0[14], type metadata accessor for RecentlyPlayedShelfConstructionIntent);
  sub_24F426EB8(v1, type metadata accessor for GamesRecentlyPlayedDataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F426BC8()
{
  v1 = v0[16];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[7];
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_24E8C9414(v3, v4, type metadata accessor for GSKShelf);
  sub_24F928138();
  sub_24F426EB8(v3, type metadata accessor for GSKShelf);
  sub_24F426EB8(v2, type metadata accessor for RecentlyPlayedShelfConstructionIntent);
  sub_24F426EB8(v1, type metadata accessor for GamesRecentlyPlayedDataIntent);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F426D40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v1 = v0[16];
  sub_24F426EB8(v0[14], type metadata accessor for RecentlyPlayedShelfConstructionIntent);
  sub_24F426EB8(v1, type metadata accessor for GamesRecentlyPlayedDataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F426E10()
{
  sub_24F426EB8(*(v0 + 128), type metadata accessor for GamesRecentlyPlayedDataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F426EB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F426F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return RecentlyPlayedShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t OpenURLAction.init(url:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for OpenURLAction() + 20);
  v7 = sub_24F928AD8();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for OpenURLAction()
{
  result = qword_27F2432F0;
  if (!qword_27F2432F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OpenURLAction.url.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t OpenURLAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for OpenURLAction() + 20);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_24F42719C()
{
  if (*v0)
  {
    return 0x654D6E6F69746361;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_24F4271DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F4272C0(uint64_t a1)
{
  v2 = sub_24F4274DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F4272FC(uint64_t a1)
{
  v2 = sub_24F4274DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t OpenURLAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2432D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4274DC();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    type metadata accessor for OpenURLAction();
    v8[14] = 1;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F4274DC()
{
  result = qword_27F2432E0;
  if (!qword_27F2432E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2432E0);
  }

  return result;
}

uint64_t OpenURLAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_24F928AD8();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2432E8);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for OpenURLAction();
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F4274DC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_24F92CC28();
  v10[1] = v13;
  v21 = 1;
  sub_24E674184(&qword_27F254CB0);
  sub_24F92CC68();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_24F427840(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F4278A4(v10);
}

uint64_t sub_24F427840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F4278A4(uint64_t a1)
{
  v2 = type metadata accessor for OpenURLAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F427944(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F427A04(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_24F427ABC()
{
  result = qword_27F243300;
  if (!qword_27F243300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243300);
  }

  return result;
}

unint64_t sub_24F427B14()
{
  result = qword_27F243308;
  if (!qword_27F243308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243308);
  }

  return result;
}

unint64_t sub_24F427B6C()
{
  result = qword_27F243310;
  if (!qword_27F243310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F243310);
  }

  return result;
}

uint64_t ChallengeDetailInvitedPlayersShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110);
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760);
  *(v3 + 144) = v6;
  *(v3 + 152) = *(v6 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  type metadata accessor for Player(0);
  *(v3 + 176) = swift_task_alloc();
  v7 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v7;
  *(v3 + 48) = *(a2 + 32);
  updated = type metadata accessor for ChallengesUpdateNotifier();
  v9 = swift_task_alloc();
  *(v3 + 184) = v9;
  *v9 = v3;
  v9[1] = sub_24F427D98;

  return MEMORY[0x28217F228](v3 + 80, updated, updated);
}

uint64_t sub_24F427D98()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_24F4283A4;
  }

  else
  {
    v2 = sub_24F427EAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F427EAC()
{
  v0[25] = v0[10];
  v0[26] = sub_24F92B7F8();
  v0[27] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F427F4C, v2, v1);
}

uint64_t sub_24F427F4C()
{

  type metadata accessor for LocalPlayerProvider();
  sub_24F928F28();
  *(v0 + 224) = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_24F427FD4, 0, 0);
}

uint64_t sub_24F427FD4()
{
  *(v0 + 232) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F428060, v2, v1);
}

uint64_t sub_24F428060()
{
  v1 = v0[28];
  v2 = v0[22];

  swift_getKeyPath();
  v0[12] = v1;
  sub_24F42AA10(&qword_27F247200, type metadata accessor for LocalPlayerProvider);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24E8C9414(v1 + v3, v2, type metadata accessor for Player);

  return MEMORY[0x2822009F8](sub_24F428190, 0, 0);
}

uint64_t sub_24F428190()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[19];
  v13 = v0[21];
  v14 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[16];
  v12 = v0[15];
  v7 = v0[14];
  v15 = v0[13];
  v8 = swift_task_alloc();
  v8[2] = v0 + 2;
  v8[3] = v1;
  v8[4] = v2;
  v8[5] = v7;
  type metadata accessor for GSKShelf();
  (*(v6 + 104))(v5, *MEMORY[0x277D85778], v12);
  sub_24F92B928();

  (*(v3 + 16))(v14, v13, v4);
  sub_24E613678();
  sub_24F9280F8();

  (*(v3 + 8))(v13, v4);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768);
  (*(*(v9 - 8) + 56))(v15, 0, 1, v9);
  sub_24F42AA58(v2, type metadata accessor for Player);

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F4283A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F428430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = a4;
  v46 = a5;
  v42 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778);
  v44 = *(v7 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v36 = &v36 - v9;
  v11 = type metadata accessor for Player(0);
  v43 = *(v11 - 8);
  v12 = *(v43 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v37 = &v36 - v14;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_24F92C888();
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);

  v47 = v16;
  v48 = v17;
  MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA752A0);
  v18 = v47;
  v19 = v48;
  v40 = v47;
  v20 = swift_allocObject();
  v38 = v19;
  v39 = a3;
  *(v20 + 16) = a3;
  v21 = *(a2 + 16);
  *(v20 + 24) = *a2;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a2 + 32);
  *(v20 + 64) = v18;
  *(v20 + 72) = v19;

  sub_24F42A024(a2, &v47);

  v22 = v42;
  sub_24F92B898();
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = v41;
  sub_24E8C9414(v45, v41, type metadata accessor for Player);
  v25 = v44;
  (*(v44 + 16))(v10, v22, v7);
  v26 = (*(v43 + 80) + 72) & ~*(v43 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v25 + 80) + v27 + 8) & ~*(v25 + 80);
  v29 = (v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v31 = *(a2 + 16);
  *(v30 + 32) = *a2;
  *(v30 + 48) = v31;
  *(v30 + 64) = *(a2 + 32);
  sub_24E61C0A8(v24, v30 + v26);
  *(v30 + v27) = v46;
  (*(v25 + 32))(v30 + v28, v36, v7);
  v32 = v40;
  *(v30 + v29) = v39;
  v33 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v34 = v38;
  *v33 = v32;
  v33[1] = v34;

  sub_24F42A024(a2, &v47);

  sub_24F1D3DA4(0, 0, v37, &unk_24F9F6460, v30);
}