uint64_t sub_251F58700()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_251F63894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_251F58860()
{
  v1 = sub_251F63894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_251F63834();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return MEMORY[0x2821FE8E8](v0, v11 + 16, v10 | 7);
}

uint64_t sub_251F589D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_251F63924();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_251F58A8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_251F63924();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_251F58B44()
{
  v1 = (type metadata accessor for TopicRegistryListEvaluator() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  v6 = sub_251F63924();
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(v5 + v1[7]);

  v8 = *(v0 + v4 + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_251F58C44()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_251F58C7C()
{
  v1 = *(v0 + 16);
  v2 = sub_251F63894();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v4 | v8;
  v12 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v2);
  v13 = *(v0 + v6 + 8);

  (*(v7 + 8))(v0 + v9, v1);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_251F58DDC()
{
  v1 = sub_251F63894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v9 = *(v0 + v5 + 8);

  v10 = *(v0 + v6);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_251F58EE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_251F58F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v79 = a6;
  v81 = a3;
  v82 = a4;
  v77 = a1;
  v10 = *v7;
  v11 = sub_251F63964();
  v87 = *(v11 - 8);
  v88 = v11;
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v11);
  v86 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251F63984();
  v84 = *(v14 - 8);
  v85 = v14;
  v15 = *(v84 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v83 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = a5;
  v76 = *(a5 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v16);
  v74 = v19;
  v75 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_251F63894();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v89 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v67 - v25;
  v27 = sub_251F63954();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v32 = *(v21 + 16);
  v78 = a2;
  v90 = v20;
  v71 = v32;
  v32(v26, a2, v20);

  v33 = sub_251F63944();
  v34 = sub_251F63A54();

  v35 = os_log_type_enabled(v33, v34);
  v73 = v21;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v68 = v34;
    v37 = v36;
    v70 = swift_slowAlloc();
    v91 = v7;
    aBlock[0] = v70;
    *v37 = 136315394;

    v38 = sub_251F639D4();
    v67 = v33;
    v40 = sub_251F5C368(v38, v39, aBlock);
    v69 = v27;
    v41 = v40;

    *(v37 + 4) = v41;
    *(v37 + 12) = 2082;
    sub_251F5A744(&qword_27F4C5278, MEMORY[0x277D125D0]);
    v42 = v28;
    v43 = v90;
    v44 = sub_251F63B84();
    v46 = v45;
    (*(v21 + 8))(v26, v43);
    v47 = sub_251F5C368(v44, v46, aBlock);

    *(v37 + 14) = v47;
    v48 = v67;
    _os_log_impl(&dword_251F57000, v67, v68, "%s: Execute request for %{public}s", v37, 0x16u);
    v49 = v70;
    swift_arrayDestroy();
    MEMORY[0x253094780](v49, -1, -1);
    MEMORY[0x253094780](v37, -1, -1);

    (*(v42 + 8))(v31, v69);
  }

  else
  {

    (*(v21 + 8))(v26, v90);
    (*(v28 + 8))(v31, v27);
  }

  v70 = v7[5];
  v50 = v76;
  v51 = v75;
  v52 = v80;
  (*(v76 + 16))(v75, v77, v80);
  v53 = v90;
  v71(v89, v78, v90);
  v54 = (*(v50 + 80) + 40) & ~*(v50 + 80);
  v55 = v73;
  v56 = (v74 + *(v73 + 80) + v54) & ~*(v73 + 80);
  v57 = (v72 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v79;
  *(v58 + 2) = v52;
  *(v58 + 3) = v59;
  *(v58 + 4) = v7;
  (*(v50 + 32))(&v58[v54], v51, v52);
  (*(v55 + 32))(&v58[v56], v89, v53);
  v60 = &v58[v57];
  v61 = v82;
  *v60 = v81;
  *(v60 + 1) = v61;
  aBlock[4] = sub_251F5A5C8;
  aBlock[5] = v58;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251F59854;
  aBlock[3] = &block_descriptor;
  v62 = _Block_copy(aBlock);

  v63 = v83;
  sub_251F63974();
  v91 = MEMORY[0x277D84F90];
  sub_251F5A744(&qword_27F4C5260, MEMORY[0x277D85198]);
  sub_251F5A6EC();
  sub_251F5A744(&qword_27F4C5270, sub_251F5A6EC);
  v64 = v86;
  v65 = v88;
  sub_251F63AB4();
  MEMORY[0x253094140](0, v63, v64, v62);
  _Block_release(v62);
  (*(v87 + 8))(v64, v65);
  (*(v84 + 8))(v63, v85);
}

uint64_t sub_251F59718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[1] = a7;
  v8 = sub_251F63834();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 24);
  (*(v9 + 104))(v12, *MEMORY[0x277D125B0], v8);
  sub_251F63864();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_251F59854(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_251F59898(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v75 = a4;
  v76 = a5;
  v74 = a3;
  v86 = a1;
  v8 = *v6;
  v9 = sub_251F63964();
  v81 = *(v9 - 8);
  v82 = v9;
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v9);
  v80 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251F63984();
  v78 = *(v12 - 8);
  v79 = v12;
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v12);
  v77 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_251F63834();
  v71 = *(v72 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = v16;
  v85 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251F63894();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v68 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v21;
  MEMORY[0x28223BE20](v20);
  v23 = &v63 - v22;
  v24 = sub_251F63954();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = &v63 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v29 = *(v18 + 16);
  v73 = a2;
  v84 = v17;
  v66 = v29;
  v29(v23, a2, v17);

  v30 = v6;
  v31 = sub_251F63944();
  v32 = sub_251F63A54();

  v33 = os_log_type_enabled(v31, v32);
  v83 = v30;
  v69 = v18;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v65 = v25;
    v35 = v34;
    v64 = swift_slowAlloc();
    v87 = v30;
    aBlock[0] = v64;
    *v35 = 136315394;

    v36 = sub_251F639D4();
    v38 = sub_251F5C368(v36, v37, aBlock);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    sub_251F5A744(&qword_27F4C5278, MEMORY[0x277D125D0]);
    v63 = v24;
    v39 = v84;
    v40 = sub_251F63B84();
    v42 = v41;
    (*(v18 + 8))(v23, v39);
    v43 = sub_251F5C368(v40, v42, aBlock);

    *(v35 + 14) = v43;
    v30 = v83;
    _os_log_impl(&dword_251F57000, v31, v32, "%s: Execute remote request for %{public}s", v35, 0x16u);
    v44 = v64;
    swift_arrayDestroy();
    MEMORY[0x253094780](v44, -1, -1);
    MEMORY[0x253094780](v35, -1, -1);

    (*(v65 + 8))(v28, v63);
  }

  else
  {

    (*(v18 + 8))(v23, v84);
    (*(v25 + 8))(v28, v24);
  }

  v65 = v30[5];
  v45 = v68;
  v46 = v84;
  v66(v68, v73, v84);
  v47 = v71;
  v48 = v72;
  (*(v71 + 16))(v85, v74, v72);
  v49 = v69;
  v50 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v51 = (v67 + *(v47 + 80) + v50) & ~*(v47 + 80);
  v52 = (v70 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v54 = v86;
  *(v53 + 16) = v30;
  *(v53 + 24) = v54;
  (*(v49 + 32))(v53 + v50, v45, v46);
  (*(v47 + 32))(v53 + v51, v85, v48);
  v55 = (v53 + v52);
  v56 = v76;
  *v55 = v75;
  v55[1] = v56;
  aBlock[4] = sub_251F5A78C;
  aBlock[5] = v53;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251F59854;
  aBlock[3] = &block_descriptor_9;
  v57 = _Block_copy(aBlock);

  v58 = v86;

  v59 = v77;
  sub_251F63974();
  v87 = MEMORY[0x277D84F90];
  sub_251F5A744(&qword_27F4C5260, MEMORY[0x277D85198]);
  sub_251F5A6EC();
  sub_251F5A744(&qword_27F4C5270, sub_251F5A6EC);
  v60 = v80;
  v61 = v82;
  sub_251F63AB4();
  MEMORY[0x253094140](0, v59, v60, v57);
  _Block_release(v57);
  (*(v81 + 8))(v60, v61);
  (*(v78 + 8))(v59, v79);
}

uint64_t sub_251F5A0A8()
{
  v1 = v0;
  v2 = sub_251F63794();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = *(v1 + 16);
  sub_251F5AA88(&v28 - v8);
  sub_251F5A888();
  (*(v3 + 16))(v7, v9, v2);
  v11 = sub_251F63A74();
  v12 = *(v1 + 24);
  v13 = sub_251F63844();
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_251F63B24();
  MEMORY[0x2530940B0](0xD000000000000013, 0x8000000251F649C0);
  v14 = *(sub_251F63784() + 16);

  v29 = v14;
  v15 = sub_251F63B84();
  MEMORY[0x2530940B0](v15);

  MEMORY[0x2530940B0](657961, 0xE300000000000000);
  v16 = [v11 formattedTable];
  v17 = sub_251F639C4();
  v19 = v18;

  MEMORY[0x2530940B0](v17, v19);

  MEMORY[0x2530940B0](0xD000000000000013, 0x8000000251F649E0);
  v29 = *(v13 + 16);
  v20 = sub_251F63B84();
  MEMORY[0x2530940B0](v20);

  MEMORY[0x2530940B0](657961, 0xE300000000000000);
  v21 = sub_251F63A64();
  v22 = [v21 formattedTable];

  v23 = sub_251F639C4();
  v25 = v24;

  MEMORY[0x2530940B0](v23, v25);

  v26 = v30;
  (*(v3 + 8))(v9, v2);
  return v26;
}

uint64_t sub_251F5A388()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_251F5A55C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_251F5A5C8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(sub_251F63894() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0[4];
  v8 = (v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_251F59718(v7, v0 + v3, v0 + v6, v9, v10, v1, v2);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251F5A6EC()
{
  if (!qword_27F4C5268)
  {
    sub_251F63964();
    v0 = sub_251F63A34();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5268);
    }
  }
}

uint64_t sub_251F5A744(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251F5A78C()
{
  v1 = *(sub_251F63894() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_251F63834() - 8);
  v5 = *(v0 + 24);
  v6 = (v0 + ((*(v4 + 64) + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = *(*(v0 + 16) + 32);
  return sub_251F638B4();
}

unint64_t sub_251F5A888()
{
  result = qword_27F4C52E0;
  if (!qword_27F4C52E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C52E0);
  }

  return result;
}

void *sub_251F5A8D4(uint64_t a1)
{
  v2 = v1;
  v1[2] = a1;
  v3 = sub_251F63874();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  swift_retain_n();
  v1[3] = sub_251F63824();
  v6 = sub_251F638C4();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();

  v1[4] = sub_251F638A4();
  v9 = sub_251F639B4();
  v10 = HKCreateSerialDispatchQueue();

  v2[5] = v10;
  v2[6] = [objc_allocWithZone(type metadata accessor for HealthTopicsDiagnostics()) init];
  swift_weakAssign();
  return v2;
}

uint64_t sub_251F5A9E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251F5AA08(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2813DD578[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_2813DD578);
    }
  }
}

uint64_t sub_251F5AA88@<X0>(uint64_t a1@<X8>)
{
  sub_251F5AF34();
  v55 = v2;
  v3 = *(*(v2 - 8) + 64);
  v4 = (MEMORY[0x28223BE20])();
  v54 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v53 = v44 - v6;
  v52 = sub_251F63764();
  v7 = *(v52 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v52);
  v10 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251F637D4();
  v12 = *(v11 + 16);
  if (v12)
  {
    v44[1] = a1;
    v58 = MEMORY[0x277D84F90];
    sub_251F5B580(0, v12, 0);
    v13 = v58;
    v14 = v11 + 64;
    v15 = -1 << *(v11 + 32);
    result = sub_251F63AC4();
    v17 = result;
    v18 = 0;
    v19 = *(v11 + 36);
    v50 = v7 + 32;
    v51 = v7;
    v45 = v11 + 72;
    v46 = v12;
    v47 = v19;
    v48 = v11 + 64;
    v49 = v11;
    while ((v17 & 0x8000000000000000) == 0 && v17 < 1 << *(v11 + 32))
    {
      v21 = v17 >> 6;
      if ((*(v14 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_22;
      }

      if (v19 != *(v11 + 36))
      {
        goto LABEL_23;
      }

      v56 = v18;
      v57 = 1 << v17;
      v22 = v55;
      v23 = *(v55 + 48);
      v24 = *(v11 + 48);
      v25 = sub_251F63924();
      v26 = *(v25 - 8);
      v27 = v13;
      v28 = v10;
      v29 = v26;
      v30 = v24 + *(v26 + 72) * v17;
      v31 = v53;
      (*(v26 + 16))(v53, v30, v25);
      sub_251F5B76C(*(v11 + 56) + 40 * v17, &v31[v23]);
      v32 = v54;
      (*(v29 + 32))(v54, v31, v25);
      v10 = v28;
      v13 = v27;
      v33 = (v32 + *(v22 + 48));
      sub_251F5B7D0(&v31[v23], v33);
      v34 = v33[4];
      __swift_project_boxed_opaque_existential_1(v33, v33[3]);
      sub_251F5B14C();
      sub_251F5BCE4(v32, sub_251F5AF34);
      v58 = v27;
      v36 = *(v27 + 16);
      v35 = *(v27 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_251F5B580(v35 > 1, v36 + 1, 1);
        v13 = v58;
      }

      *(v13 + 16) = v36 + 1;
      result = (*(v51 + 32))(v13 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v36, v10, v52);
      v11 = v49;
      v20 = 1 << *(v49 + 32);
      if (v17 >= v20)
      {
        goto LABEL_24;
      }

      v14 = v48;
      v37 = *(v48 + 8 * v21);
      if ((v37 & v57) == 0)
      {
        goto LABEL_25;
      }

      LODWORD(v19) = v47;
      if (v47 != *(v49 + 36))
      {
        goto LABEL_26;
      }

      v38 = v37 & (-2 << (v17 & 0x3F));
      if (v38)
      {
        v20 = __clz(__rbit64(v38)) | v17 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v39 = v21 << 6;
        v40 = v21 + 1;
        v41 = (v45 + 8 * v21);
        while (v40 < (v20 + 63) >> 6)
        {
          v43 = *v41++;
          v42 = v43;
          v39 += 64;
          ++v40;
          if (v43)
          {
            result = sub_251F5B82C(v17, v47, 0);
            v20 = __clz(__rbit64(v42)) + v39;
            goto LABEL_4;
          }
        }

        result = sub_251F5B82C(v17, v47, 0);
      }

LABEL_4:
      v18 = v56 + 1;
      v17 = v20;
      if (v56 + 1 == v46)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:

    return sub_251F63774();
  }

  return result;
}

void sub_251F5AF34()
{
  if (!qword_27F4C5350)
  {
    sub_251F63924();
    sub_251F5BC88(255, &unk_2813DD7A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4C5350);
    }
  }
}

uint64_t sub_251F5AFB8(uint64_t a1, void (*a2)(char *, uint64_t))
{
  sub_251F5BC08();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251F63794();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *(type metadata accessor for TopicRegistryListEvaluator() + 20));
  sub_251F5AA88(v12);
  (*(v9 + 16))(v7, v12, v8);
  swift_storeEnumTagMultiPayload();
  a2(v7, 1);
  sub_251F5BCE4(v7, sub_251F5BC08);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_251F5B14C()
{
  v0 = *(*(sub_251F63924() - 8) + 64);
  MEMORY[0x28223BE20]();
  sub_251F63814();
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  sub_251F639E4();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getMetatypeMetadata();
  sub_251F639E4();
  swift_getMetatypeMetadata();
  sub_251F639E4();
  return sub_251F63754();
}

uint64_t sub_251F5B304@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251F63924();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_251F5B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_251F63744();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  (*(v15 + 16))(&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  sub_251F5BAB0(v5, v11);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  sub_251F5BB14(v11, v18 + v16);
  v19 = (v18 + v17);
  *v19 = a2;
  v19[1] = a3;
  sub_251F5BA68(&qword_27F4C5370, MEMORY[0x277D12558]);

  return sub_251F638D4();
}

size_t sub_251F5B580(size_t a1, int64_t a2, char a3)
{
  result = sub_251F5B5A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_251F5B5A0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_251F5B838();
  v10 = *(sub_251F63764() - 8);
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
  v15 = *(sub_251F63764() - 8);
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

uint64_t sub_251F5B76C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_251F5B7D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_251F5B82C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void sub_251F5B838()
{
  if (!qword_27F4C5358)
  {
    sub_251F63764();
    v0 = sub_251F63B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5358);
    }
  }
}

uint64_t type metadata accessor for TopicRegistryListEvaluator()
{
  result = qword_2813DD600;
  if (!qword_2813DD600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251F5B908()
{
  result = sub_251F63924();
  if (v1 <= 0x3F)
  {
    result = sub_251F63804();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_251F5B9D4()
{
  if (!qword_27F4C5368)
  {
    sub_251F63744();
    sub_251F5BA68(&qword_27F4C5370, MEMORY[0x277D12558]);
    v0 = sub_251F638E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5368);
    }
  }
}

uint64_t sub_251F5BA68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251F5BAB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListEvaluator();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F5BB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRegistryListEvaluator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251F5BB78()
{
  v1 = *(type metadata accessor for TopicRegistryListEvaluator() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return sub_251F5AFB8(v0 + v2, v4);
}

void sub_251F5BC08()
{
  if (!qword_27F4C5378)
  {
    sub_251F63794();
    sub_251F5BC88(255, &qword_27F4C5380);
    v0 = sub_251F63BC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5378);
    }
  }
}

uint64_t sub_251F5BC88(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_251F5BCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_251F5BDF8(void *a1)
{
  swift_getObjectType();
  v2 = sub_251F63954();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  sub_251F63934();
  v10 = sub_251F63944();
  v11 = sub_251F63A54();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34 = v3;
    v35 = v2;
    v14 = v13;
    v36 = v13;
    *v12 = 136446210;
    v15 = sub_251F63BD4();
    v17 = sub_251F5C368(v15, v16, &v36);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_251F57000, v10, v11, "[%{public}s] returning extension for profile", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v18 = v14;
    v3 = v34;
    v2 = v35;
    MEMORY[0x253094780](v18, -1, -1);
    MEMORY[0x253094780](v12, -1, -1);
  }

  v19 = *(v3 + 8);
  v19(v9, v2);
  v20 = [a1 profileIdentifier];
  v21 = [v20 type];

  if (v21 == 1 && (objc_opt_self(), (v22 = swift_dynamicCastObjCClass()) != 0))
  {
    v23 = v22;
    objc_allocWithZone(type metadata accessor for DaemonTopicsProfileExtension());
    v24 = a1;
    return sub_251F61DDC(v23);
  }

  else
  {
    sub_251F63934();
    v26 = sub_251F63944();
    v27 = sub_251F63A54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136446210;
      v30 = sub_251F63BD4();
      v32 = sub_251F5C368(v30, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_251F57000, v26, v27, "[%{public}s] profile extension not supported for non-primary profile", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x253094780](v29, -1, -1);
      MEMORY[0x253094780](v28, -1, -1);
    }

    v19(v7, v2);
    return 0;
  }
}

id HealthTopicsDaemonPluginObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthTopicsDaemonPluginObject.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthTopicsDaemonPluginObject();
  return objc_msgSendSuper2(&v2, sel_init);
}

id HealthTopicsDaemonPluginObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthTopicsDaemonPluginObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthTopicsDaemonPluginObject.taskServerClasses()()
{
  sub_251F5CB1C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251F64670;
  *(v0 + 32) = type metadata accessor for HealthTopicsTaskServer();
  return v0;
}

uint64_t sub_251F5C368(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251F5C434(v11, 0, 0, 1, a1, a2);
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
    sub_251F5CC74(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_251F5C434(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251F5C540(a5, a6);
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
    result = sub_251F63B54();
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

uint64_t sub_251F5C540(uint64_t a1, unint64_t a2)
{
  v4 = sub_251F5C58C(a1, a2);
  sub_251F5C6BC(&unk_286432198);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251F5C58C(uint64_t a1, unint64_t a2)
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

  v6 = sub_251F5C7A8(v5, 0);
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

  result = sub_251F63B54();
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
        v10 = sub_251F63A04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251F5C7A8(v10, 0);
        result = sub_251F63B14();
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

uint64_t sub_251F5C6BC(uint64_t result)
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

  result = sub_251F5C810(result, v12, 1, v3);
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

void *sub_251F5C7A8(uint64_t a1, uint64_t a2)
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

  sub_251F5CCD0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_251F5C810(char *result, int64_t a2, char a3, char *a4)
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
    sub_251F5CCD0();
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

uint64_t sub_251F5C8F8()
{
  swift_getObjectType();
  v0 = sub_251F63954();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v5 = sub_251F63944();
  v6 = sub_251F63A54();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = sub_251F63BD4();
    v11 = sub_251F5C368(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_251F57000, v5, v6, "[%{public}s] returning extension for healthd", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x253094780](v8, -1, -1);
    MEMORY[0x253094780](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return 0;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_251F5CB1C()
{
  if (!qword_2813DD540)
  {
    sub_251F5CB74();
    v0 = sub_251F63B94();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DD540);
    }
  }
}

unint64_t sub_251F5CB74()
{
  result = qword_2813DD538;
  if (!qword_2813DD538)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2813DD538);
  }

  return result;
}

uint64_t dispatch thunk of HealthTopicsDaemonPluginObject.extension(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

uint64_t sub_251F5CC74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_251F5CCD0()
{
  if (!qword_27F4C5448)
  {
    v0 = sub_251F63B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5448);
    }
  }
}

uint64_t sub_251F5CD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v68 = a2;
  v69 = a3;
  v62 = *v7;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](a1);
  v66 = v14;
  v76 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_251F63894();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v72 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v65 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v58[-v20];
  v22 = sub_251F63954();
  v63 = *(v22 - 8);
  v64 = v22;
  v23 = *(v63 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v58[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79[3] = a4;
  v79[4] = a5;
  v71 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v79);
  v67 = v12;
  v27 = *(v12 + 16);
  v75 = a1;
  v70 = a4;
  v27(boxed_opaque_existential_1, a1, a4);
  sub_251F63884();
  sub_251F63934();
  v73 = v16;
  v74 = v15;
  v28 = *(v16 + 16);
  v77 = a6;
  v28(v21, a6, v15);

  v29 = sub_251F63944();
  v30 = sub_251F63A54();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v61 = v28;
    v32 = v31;
    v60 = swift_slowAlloc();
    v78 = v7;
    v79[0] = v60;
    *v32 = 136446466;

    v33 = sub_251F639D4();
    v59 = v30;
    v35 = sub_251F5C368(v33, v34, v79);
    v62 = v27;
    v36 = v35;

    *(v32 + 4) = v36;
    *(v32 + 12) = 2082;
    sub_251F5DDB8();
    v37 = v74;
    v38 = sub_251F63B84();
    v40 = v39;
    (*(v73 + 8))(v21, v37);
    v41 = sub_251F5C368(v38, v40, v79);

    *(v32 + 14) = v41;
    v27 = v62;
    _os_log_impl(&dword_251F57000, v29, v59, "%{public}s: start request for %{public}s", v32, 0x16u);
    v42 = v60;
    swift_arrayDestroy();
    MEMORY[0x253094780](v42, -1, -1);
    v43 = v32;
    v28 = v61;
    MEMORY[0x253094780](v43, -1, -1);
  }

  else
  {

    (*(v73 + 8))(v21, v74);
  }

  (*(v63 + 8))(v25, v64);
  v64 = v7[2];
  v44 = v74;
  v28(v72, v77, v74);
  v45 = v70;
  v27(v76, v75, v70);
  v46 = v73;
  v47 = (*(v73 + 80) + 40) & ~*(v73 + 80);
  v48 = (v65 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = v7;
  v50 = v67;
  v51 = (*(v67 + 80) + v48 + 16) & ~*(v67 + 80);
  v52 = swift_allocObject();
  v54 = v71;
  v53 = v72;
  *(v52 + 2) = v45;
  *(v52 + 3) = v54;
  *(v52 + 4) = v49;
  (*(v46 + 32))(&v52[v47], v53, v44);
  v55 = &v52[v48];
  v56 = v69;
  *v55 = v68;
  *(v55 + 1) = v56;
  (*(v50 + 32))(&v52[v51], v76, v45);

  sub_251F58F18(v75, v77, sub_251F5DEAC, v52, v45, v54);
}

uint64_t sub_251F5D294(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v60 = a2;
  v59 = *v4;
  v64 = sub_251F63894();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v64);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v57 - v12;
  v14 = sub_251F63954();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = *(v62 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  sub_251F5DFEC();
  v20 = sub_251F63BC4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = (&v57 - v23);
  (*(v21 + 16))(&v57 - v23, a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    sub_251F63934();
    (*(v7 + 16))(v11, a3, v64);

    v26 = v25;
    v27 = sub_251F63944();
    v28 = sub_251F63A44();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v65 = v4;
      v66 = v58;
      *v29 = 136446978;

      v31 = sub_251F639D4();
      v33 = sub_251F5C368(v31, v32, &v66);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      sub_251F5DDB8();
      v34 = v64;
      v35 = sub_251F63B84();
      v37 = v36;
      (*(v7 + 8))(v11, v34);
      v38 = sub_251F5C368(v35, v37, &v66);

      *(v29 + 14) = v38;
      *(v29 + 22) = 1026;
      *(v29 + 24) = v60 & 1;
      *(v29 + 28) = 2114;
      v39 = v25;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 30) = v40;
      *v30 = v40;
      _os_log_impl(&dword_251F57000, v27, v28, "%{public}s: Deliver failure response for %{public}s, finished = %{BOOL,public}d: %{public}@", v29, 0x26u);
      sub_251F5E050(v30);
      MEMORY[0x253094780](v30, -1, -1);
      v41 = v58;
      swift_arrayDestroy();
      MEMORY[0x253094780](v41, -1, -1);
      MEMORY[0x253094780](v29, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v64);
    }

    return (*(v62 + 8))(v61, v63);
  }

  else
  {
    sub_251F63934();
    (*(v7 + 16))(v13, a3, v64);

    v42 = sub_251F63944();
    v43 = sub_251F63A54();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v58 = v42;
      v45 = v44;
      v61 = swift_slowAlloc();
      v65 = v4;
      v66 = v61;
      *v45 = 136446722;

      v46 = sub_251F639D4();
      LODWORD(v59) = v43;
      v48 = sub_251F5C368(v46, v47, &v66);

      *(v45 + 4) = v48;
      *(v45 + 12) = 2082;
      sub_251F5DDB8();
      v49 = v64;
      v50 = sub_251F63B84();
      v52 = v51;
      (*(v7 + 8))(v13, v49);
      v53 = sub_251F5C368(v50, v52, &v66);

      *(v45 + 14) = v53;
      *(v45 + 22) = 1026;
      *(v45 + 24) = v60 & 1;
      v54 = v58;
      _os_log_impl(&dword_251F57000, v58, v59, "%{public}s: Deliver sucess response for %{public}s, finished = %{BOOL,public}d", v45, 0x1Cu);
      v55 = v61;
      swift_arrayDestroy();
      MEMORY[0x253094780](v55, -1, -1);
      MEMORY[0x253094780](v45, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v13, v64);
    }

    (*(v62 + 8))(v19, v63);
    return (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_251F5D938(uint64_t a1)
{
  v2 = v1;
  v30 = *v1;
  v4 = sub_251F63894();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251F63954();
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  (*(v5 + 16))(v8, a1, v4);

  v13 = sub_251F63944();
  v14 = sub_251F63A54();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v29 = v9;
    v16 = v15;
    v28 = swift_slowAlloc();
    v32 = v1;
    v33 = v28;
    *v16 = 136446466;

    v17 = sub_251F639D4();
    v19 = sub_251F5C368(v17, v18, &v33);
    v30 = a1;
    v20 = v19;

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    sub_251F5DDB8();
    v21 = sub_251F63B84();
    v23 = v22;
    (*(v5 + 8))(v8, v4);
    v24 = sub_251F5C368(v21, v23, &v33);

    *(v16 + 14) = v24;
    _os_log_impl(&dword_251F57000, v13, v14, "%{public}s: cancel request for token %{public}s", v16, 0x16u);
    v25 = v28;
    swift_arrayDestroy();
    MEMORY[0x253094780](v25, -1, -1);
    MEMORY[0x253094780](v16, -1, -1);

    (*(v31 + 8))(v12, v29);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
    (*(v31 + 8))(v12, v9);
  }

  v26 = *(v2[2] + 24);
  return sub_251F63854();
}

uint64_t sub_251F5DC80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_251F5DCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a2;
  v13[5] = a3;
  v14 = *v6;

  sub_251F5CD20(a1, sub_251F5DE10, v13, a4, a5, a6);
}

unint64_t sub_251F5DDB8()
{
  result = qword_27F4C5278;
  if (!qword_27F4C5278)
  {
    sub_251F63894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4C5278);
  }

  return result;
}

uint64_t sub_251F5DE10(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = a1;
  return v2(&v5);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_251F5DEAC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = *(v3 + 2);
  v7 = *(v3 + 3);
  v8 = *(sub_251F63894() - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + *(*(v6 - 8) + 80) + 16) & ~*(*(v6 - 8) + 80);
  v12 = *(v3 + 4);
  v13 = &v3[v10];
  v15 = *v13;
  v14 = *(v13 + 1);
  swift_getAssociatedTypeWitness();
  sub_251F5D294(a1, a2, &v3[v9]);
  return v15(v12, &v3[v9], &v3[v11], a1);
}

unint64_t sub_251F5DFEC()
{
  result = qword_27F4C5380;
  if (!qword_27F4C5380)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C5380);
  }

  return result;
}

uint64_t sub_251F5E050(uint64_t a1)
{
  sub_251F5E0AC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251F5E0AC()
{
  if (!qword_27F4C5450)
  {
    sub_251F5E104();
    v0 = sub_251F63A94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5450);
    }
  }
}

unint64_t sub_251F5E104()
{
  result = qword_27F4C5458;
  if (!qword_27F4C5458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4C5458);
  }

  return result;
}

id sub_251F5E33C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [objc_opt_self() interfaceWithProtocol_];

  return v3;
}

void sub_251F5E390()
{
  v1 = sub_251F63894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = v31 - v7;
  v33 = v0;
  v8 = *&v0[OBJC_IVAR___HDHealthTopicsTaskServer_protectedState];
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);
  *(v8 + 16) = MEMORY[0x277D84FA0];
  os_unfair_lock_unlock((v8 + 24));
  v10 = 0;
  v12 = v9 + 56;
  v11 = *(v9 + 56);
  v34 = v9;
  v13 = 1 << *(v9 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  v31[1] = v2 + 32;
  v31[2] = v2 + 16;
  v31[0] = v2 + 8;
  while (v15)
  {
LABEL_10:
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v19 = v32;
    (*(v2 + 16))(v32, *(v34 + 48) + *(v2 + 72) * (v18 | (v10 << 6)), v1);
    (*(v2 + 32))(v6, v19, v1);
    v20 = [v33 profile];
    if (!v20)
    {
      goto LABEL_4;
    }

    v21 = v20;
    sub_251F637A4();
    v22 = sub_251F639B4();

    v23 = [v21 profileExtensionWithIdentifier_];

    if (v23)
    {
      sub_251F63AA4();
      swift_unknownObjectRelease();
    }

    else
    {

      v36 = 0u;
      v37 = 0u;
    }

    v38[0] = v36;
    v38[1] = v37;
    if (*(&v37 + 1))
    {
      sub_251F61C08();
      if (swift_dynamicCast())
      {
        v24 = v35;
        v25 = *(v35 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
        os_unfair_lock_lock((v25 + 20));
        v26 = *(v25 + 16);
        *(v25 + 16) = 0;
        os_unfair_lock_unlock((v25 + 20));
        if (v26 == 1)
        {
          Strong = swift_unknownObjectUnownedLoadStrong();
          v28 = *(*(*(v24 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

          sub_251F61FBC(Strong, v28);
        }

        v29 = *(*(v24 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16);

        swift_unknownObjectRelease();
        v30 = *(v29 + 24);
        sub_251F63854();
        (*v31[0])(v6, v1);
      }

      else
      {
LABEL_4:
        (*v31[0])(v6, v1);
      }
    }

    else
    {
      (*v31[0])(v6, v1);
      sub_251F61B58(v38);
    }
  }

  while (1)
  {
    v17 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v17 >= v16)
    {

      return;
    }

    v15 = *(v12 + 8 * v17);
    ++v10;
    if (v15)
    {
      v10 = v17;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_251F5E7B8(uint64_t (*a1)(void), const char *a2)
{
  v5 = sub_251F63954();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v10 = v2;
  v11 = sub_251F63944();
  v12 = a1();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = a2;
    v14 = v13;
    v23 = swift_slowAlloc();
    v25 = v23;
    *v14 = 136446210;
    v15 = v10;
    v16 = [v15 description];
    v17 = sub_251F639C4();
    v22 = v5;
    v19 = v18;

    v20 = sub_251F5C368(v17, v19, &v25);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_251F57000, v11, v12, v24, v14, 0xCu);
    v21 = v23;
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x253094780](v21, -1, -1);
    MEMORY[0x253094780](v14, -1, -1);

    (*(v6 + 8))(v9, v22);
  }

  else
  {

    (*(v6 + 8))(v9, v5);
  }

  sub_251F5E390();
}

uint64_t sub_251F5EA38()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v14 = sub_251F61AD4;
  v15 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251F5EF98;
  v13 = &block_descriptor_0;
  v2 = _Block_copy(aBlock);
  v3 = v0;

  v4 = [v3 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_251F63AA4();
  swift_unknownObjectRelease();
  sub_251F5CC74(aBlock, v11);
  sub_251F61AF4();
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(aBlock);
    return v10;
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_251F63B24();
    v6 = [v3 description];
    v7 = sub_251F639C4();
    v9 = v8;

    MEMORY[0x2530940B0](v7, v9);

    MEMORY[0x2530940B0](0xD000000000000010, 0x8000000251F64D30);
    __swift_project_boxed_opaque_existential_1(aBlock, v13);
    sub_251F63BA4();
    MEMORY[0x2530940B0](0xD00000000000002ALL, 0x8000000251F64D50);
    MEMORY[0x2530940B0](0xD00000000000001ELL, 0x8000000251F64D80);
    MEMORY[0x2530940B0](0xD00000000000004ALL, 0x8000000251F64DA0);
    result = sub_251F63B64();
    __break(1u);
  }

  return result;
}

uint64_t sub_251F5ECA8(void *a1, void *a2)
{
  v4 = sub_251F63954();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F63934();
  v9 = a2;
  v10 = a1;
  v11 = sub_251F63944();
  v12 = sub_251F63A44();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33 = v31;
    *v13 = 136446466;
    v14 = v9;
    v15 = [v14 description];
    v16 = sub_251F639C4();
    v30 = v4;
    v18 = v17;

    v19 = sub_251F5C368(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2082;
    ErrorValue = swift_getErrorValue();
    v21 = *(*(v32 - 8) + 64);
    MEMORY[0x28223BE20](ErrorValue);
    (*(v23 + 16))(&v29 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = sub_251F639D4();
    v26 = sub_251F5C368(v24, v25, &v33);

    *(v13 + 14) = v26;
    _os_log_impl(&dword_251F57000, v11, v12, "%{public}s: remoteObjectProxyWithErrorHandler error: %{public}s", v13, 0x16u);
    v27 = v31;
    swift_arrayDestroy();
    MEMORY[0x253094780](v27, -1, -1);
    MEMORY[0x253094780](v13, -1, -1);

    return (*(v5 + 8))(v8, v30);
  }

  else
  {

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_251F5EF98(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_251F5F000(uint64_t a1, uint64_t a2)
{
  v3 = sub_251F63894();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v12 - v9;
  (*(v4 + 16))(v8, a2, v3);
  sub_251F60484(v10, v8);
  return (*(v4 + 8))(v10, v3);
}

uint64_t sub_251F5F128(void *a1, void *a2, uint64_t a3)
{
  v76 = a3;
  v80 = a1;
  v86 = sub_251F63834();
  v83 = *(v86 - 8);
  v5 = *(v83 + 64);
  MEMORY[0x28223BE20](v86);
  v82 = (&v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_251F63954();
  v68 = *(v69 - 8);
  v7 = *(v68 + 64);
  MEMORY[0x28223BE20](v69);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251F63894();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v79 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v65 - v16;
  v78 = v18;
  MEMORY[0x28223BE20](v15);
  v20 = &v65 - v19;
  v21 = v3;
  v22 = [v21 description];
  v23 = sub_251F639C4();
  v25 = v24;

  v77 = sub_251F5EA38();
  v81 = a2;
  sub_251F63904();
  v66 = v21;
  v26 = *&v21[OBJC_IVAR___HDHealthTopicsTaskServer_protectedState];
  v87 = v20;
  os_unfair_lock_lock(v26 + 6);
  sub_251F618D4(&v26[4]);
  v73 = v26;
  os_unfair_lock_unlock(v26 + 6);
  sub_251F63934();
  v84 = v20;
  v85 = v11;
  v71 = *(v11 + 16);
  v72 = v11 + 16;
  v71(v17, v20, v10);

  v67 = v9;
  v27 = v25;
  v28 = sub_251F63944();
  v29 = sub_251F63A54();

  v30 = os_log_type_enabled(v28, v29);
  v74 = v25;
  v75 = v23;
  if (v30)
  {
    v31 = v10;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v88[0] = v33;
    *v32 = 136315394;
    *(v32 + 4) = sub_251F5C368(v23, v27, v88);
    *(v32 + 12) = 2082;
    sub_251F619C4(&qword_27F4C5278, MEMORY[0x277D125D0]);
    v34 = sub_251F63B84();
    v36 = v35;
    v37 = v17;
    v38 = v31;
    v70 = *(v85 + 8);
    v70(v37, v31);
    v39 = sub_251F5C368(v34, v36, v88);

    *(v32 + 14) = v39;
    _os_log_impl(&dword_251F57000, v28, v29, "%s: Execute request for %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x253094780](v33, -1, -1);
    MEMORY[0x253094780](v32, -1, -1);
  }

  else
  {

    v40 = v17;
    v38 = v10;
    v70 = *(v85 + 8);
    v70(v40, v10);
  }

  (*(v68 + 8))(v67, v69);
  v41 = v76;
  v42 = *(v76 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
  os_unfair_lock_lock((v42 + 20));
  v43 = *(v42 + 16);
  *(v42 + 16) = 0;
  os_unfair_lock_unlock((v42 + 20));
  if (v43 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v45 = *(*(*(v41 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

    sub_251F61FBC(Strong, v45);
  }

  v76 = *(*(v41 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16);

  v46 = [v66 client];
  v47 = [v46 process];

  v48 = [v47 name];
  v49 = sub_251F639C4();
  v51 = v50;

  v52 = v82;
  *v82 = v49;
  *(v52 + 8) = v51;
  (*(v83 + 104))(v52, *MEMORY[0x277D125B8], v86);
  v53 = v79;
  v71(v79, v84, v38);
  v54 = v85;
  v55 = (*(v85 + 80) + 24) & ~*(v85 + 80);
  v56 = (v78 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (v56 + 23) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  *(v58 + 16) = v73;
  (*(v54 + 32))(v58 + v55, v53, v38);
  v59 = (v58 + v56);
  v60 = v74;
  *v59 = v75;
  v59[1] = v60;
  *(v58 + v57) = v77;
  v61 = v81;
  *(v58 + ((v57 + 15) & 0xFFFFFFFFFFFFFFF8)) = v81;

  swift_unknownObjectRetain();
  v62 = v61;
  v63 = v84;
  sub_251F59898(v80, v84, v52, sub_251F618F0, v58);
  swift_unknownObjectRelease();

  (*(v83 + 8))(v52, v86);
  return (v70)(v63, v38);
}

void sub_251F5F83C(void *a1, int a2, int a3, os_unfair_lock_s *a4, char *a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9)
{
  v65 = a7;
  v62 = a6;
  LODWORD(v64) = a2;
  v66 = a9;
  v67 = a8;
  v13 = sub_251F63894();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  v21 = sub_251F63954();
  v68 = *(v21 - 8);
  v69 = v21;
  v22 = *(v68 + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v61 - v27;
  v70 = a1;
  v63 = a3;
  if (a3)
  {
    v61 = v20;
    v29 = v18;
    v30 = &v61 - v27;
    MEMORY[0x28223BE20](v26);
    *(&v61 - 2) = a5;
    os_unfair_lock_lock(a4 + 6);
    sub_251F61CC8(&a4[4]);
    os_unfair_lock_unlock(a4 + 6);
    v28 = v30;
    v18 = v29;
    v20 = v61;
    a1 = v70;
  }

  v31 = (v14 + 16);
  if (v64)
  {
    sub_251F63934();
    (*v31)(v18, a5, v13);
    v32 = v65;

    sub_251F61A0C(a1);
    v33 = sub_251F63944();
    v34 = sub_251F63A54();

    sub_251F61A18(a1);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v64 = v25;
      v36 = v35;
      v37 = v18;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v71 = v39;
      *v36 = 136315906;
      *(v36 + 4) = sub_251F5C368(v62, v32, &v71);
      *(v36 + 12) = 2082;
      sub_251F619C4(&qword_27F4C5278, MEMORY[0x277D125D0]);
      v40 = sub_251F63B84();
      v42 = v41;
      (*(v14 + 8))(v37, v13);
      v43 = sub_251F5C368(v40, v42, &v71);

      *(v36 + 14) = v43;
      v44 = v70;
      *(v36 + 22) = 1026;
      *(v36 + 24) = v63 & 1;
      *(v36 + 28) = 2114;
      v45 = v44;
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 30) = v46;
      *v38 = v46;
      _os_log_impl(&dword_251F57000, v33, v34, "%s: Deliver failure response for %{public}s, finished = %{BOOL,public}d: %{public}@", v36, 0x26u);
      sub_251F61A24(v38, &qword_27F4C5450, sub_251F5E104);
      MEMORY[0x253094780](v38, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x253094780](v39, -1, -1);
      MEMORY[0x253094780](v36, -1, -1);

      (*(v68 + 8))(v64, v69);
    }

    else
    {

      (*(v14 + 8))(v18, v13);
      (*(v68 + 8))(v25, v69);
    }

    v59 = sub_251F63704();
    v60 = sub_251F63704();

    [v67 client:v60 deliverWithError:v66 for:?];
  }

  else
  {
    sub_251F63934();
    (*v31)(v20, a5, v13);
    v47 = v65;

    v48 = sub_251F63944();
    v49 = sub_251F63A54();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v64 = v28;
      v51 = v13;
      v52 = v50;
      v53 = swift_slowAlloc();
      v71 = v53;
      *v52 = 136315650;
      *(v52 + 4) = sub_251F5C368(v62, v47, &v71);
      *(v52 + 12) = 2082;
      sub_251F619C4(&qword_27F4C5278, MEMORY[0x277D125D0]);
      v54 = sub_251F63B84();
      v56 = v55;
      (*(v14 + 8))(v20, v51);
      v57 = sub_251F5C368(v54, v56, &v71);

      *(v52 + 14) = v57;
      *(v52 + 22) = 1026;
      v58 = v63;
      *(v52 + 24) = v63 & 1;
      _os_log_impl(&dword_251F57000, v48, v49, "%s: Deliver sucess response for %{public}s, finished = %{BOOL,public}d", v52, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x253094780](v53, -1, -1);
      MEMORY[0x253094780](v52, -1, -1);

      (*(v68 + 8))(v64, v69);
    }

    else
    {

      (*(v14 + 8))(v20, v13);
      (*(v68 + 8))(v28, v69);
      v58 = v63;
    }

    [v67 client:v70 deliverWithResponse:v58 & 1 finished:v66 for:?];
  }
}

uint64_t sub_251F5FF18(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D125D0];
  sub_251F61A80(0, &qword_27F4C5468, MEMORY[0x277D125D0]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v9 - v6;
  sub_251F61290(a2, &v9 - v6);
  return sub_251F61A24(v7, &qword_27F4C5468, v3);
}

uint64_t sub_251F5FFDC()
{
  v1 = sub_251F63894();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_251F63904();
  v6 = *&v0[OBJC_IVAR___HDHealthTopicsTaskServer_protectedState];
  v18 = v5;
  os_unfair_lock_lock(v6 + 6);
  sub_251F60468(&v6[4]);
  os_unfair_lock_unlock(v6 + 6);
  v7 = [v0 profile];
  if (v7)
  {
    v8 = v7;
    v9 = sub_251F61CE0();

    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
      os_unfair_lock_lock((v10 + 20));
      v11 = *(v10 + 16);
      *(v10 + 16) = 0;
      os_unfair_lock_unlock((v10 + 20));
      if (v11 == 1)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
        v13 = *(*(*(v9 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

        sub_251F61FBC(Strong, v13);
      }

      v14 = *(*(v9 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16);

      swift_unknownObjectRelease();
      v15 = *(v14 + 24);
      sub_251F63854();
    }
  }

  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_251F60484(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251F63894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0]);
  v36 = a2;
  v13 = sub_251F63994();
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
      sub_251F619C4(&qword_27F4C5478, MEMORY[0x277D125D0]);
      v23 = sub_251F639A4();
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
    sub_251F60AB4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_251F60764(uint64_t a1)
{
  v2 = v1;
  v41 = sub_251F63894();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_251F61840();
  result = sub_251F63AF4();
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
      sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0]);
      result = sub_251F63994();
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

uint64_t sub_251F60AB4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_251F63894();
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
    sub_251F60764(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_251F60D58();
      goto LABEL_12;
    }

    sub_251F60F80(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0]);
  v15 = sub_251F63994();
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
      sub_251F619C4(&qword_27F4C5478, MEMORY[0x277D125D0]);
      v23 = sub_251F639A4();
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
  result = sub_251F63BB4();
  __break(1u);
  return result;
}

void *sub_251F60D58()
{
  v1 = v0;
  v2 = sub_251F63894();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251F61840();
  v7 = *v0;
  v8 = sub_251F63AE4();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v7 + 56 + 8 * v11)
    {
      result = memmove(result, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_21;
      }

      v20 = *(v7 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v9;
  }

  return result;
}

uint64_t sub_251F60F80(uint64_t a1)
{
  v2 = v1;
  v37 = sub_251F63894();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_251F61840();
  v10 = sub_251F63AF4();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0]);
      result = sub_251F63994();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_251F61290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_251F63894();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0]);
  v35 = a1;
  v13 = sub_251F63994();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_251F619C4(&qword_27F4C5478, MEMORY[0x277D125D0]);
      v22 = sub_251F639A4();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_251F60D58();
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_251F61538(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

uint64_t sub_251F61538(int64_t a1)
{
  v3 = sub_251F63894();
  v4 = *(v3 - 8);
  v5 = v4[8];
  result = MEMORY[0x28223BE20](v3);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;
    v14 = *v1;

    v15 = sub_251F63AD4();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v16 = v13;
      v17 = (v15 + 1) & v13;
      v38 = v4[2];
      v39 = v4 + 2;
      v18 = v4[9];
      v36 = (v4 + 1);
      v37 = v10;
      v19 = v18;
      do
      {
        v20 = v19;
        v21 = v19 * v12;
        v38(v8, *(v9 + 48) + v19 * v12, v3);
        v22 = v9;
        v23 = v17;
        v24 = v16;
        v25 = v22;
        v26 = *(v22 + 40);
        sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0]);
        v27 = sub_251F63994();
        (*v36)(v8, v3);
        v28 = v27 & v24;
        v16 = v24;
        v17 = v23;
        if (a1 >= v23)
        {
          if (v28 >= v23 && a1 >= v28)
          {
LABEL_16:
            v9 = v25;
            v31 = *(v25 + 48);
            v19 = v20;
            v32 = v20 * a1;
            if (v20 * a1 < v21 || v31 + v20 * a1 >= (v31 + v21 + v20))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v32 != v21)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v28 >= v23 || a1 >= v28)
        {
          goto LABEL_16;
        }

        v9 = v25;
        v19 = v20;
LABEL_5:
        v12 = (v12 + 1) & v16;
        v10 = v37;
      }

      while (((*(v37 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v33 = *(v9 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v35;
    ++*(v9 + 36);
  }

  return result;
}

void sub_251F61840()
{
  if (!qword_27F4C5480)
  {
    sub_251F63894();
    sub_251F619C4(&qword_27F4C5470, MEMORY[0x277D125D0]);
    v0 = sub_251F63B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5480);
    }
  }
}

void sub_251F618F0(void *a1, char a2, int a3)
{
  v7 = *(sub_251F63894() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_251F5F83C(a1, a2 & 1, a3, *(v3 + 16), (v3 + v8), *(v3 + v9), *(v3 + v9 + 8), *(v3 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_251F619C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251F61A24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251F61A80(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251F61A80(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251F63A94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251F61AF4()
{
  result = qword_27F4C5490;
  if (!qword_27F4C5490)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C5490);
  }

  return result;
}

uint64_t sub_251F61B58(uint64_t a1)
{
  sub_251F61BB4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251F61BB4()
{
  if (!qword_27F4C5498)
  {
    v0 = sub_251F63A94();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C5498);
    }
  }
}

unint64_t sub_251F61C08()
{
  result = qword_27F4C5540;
  if (!qword_27F4C5540)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4C5540);
  }

  return result;
}

void sub_251F61C68()
{
  if (!qword_27F4C54A0)
  {
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_251F63B44();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4C54A0);
    }
  }
}

uint64_t sub_251F61CE0()
{
  sub_251F637A4();
  v1 = sub_251F639B4();

  v2 = [v0 profileExtensionWithIdentifier_];

  if (v2)
  {
    sub_251F63AA4();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_251F63648(0, &qword_27F4C5540);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_251F61B58(v7);
    return 0;
  }
}

id sub_251F61DDC(void *a1)
{
  v2 = v1;
  swift_unknownObjectUnownedInit();
  v4 = sub_251F63804();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = sub_251F637F4();
  type metadata accessor for TopicExecutionEngine();
  swift_allocObject();
  v8 = sub_251F5A8D4(v7);

  type metadata accessor for DaemonTopicStore();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *&v2[OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation] = v9;
  sub_251F636A4();
  v10 = swift_allocObject();
  *(v10 + 20) = 0;
  *(v10 + 16) = 1;
  *&v2[OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState] = v10;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for DaemonTopicsProfileExtension();
  v11 = objc_msgSendSuper2(&v13, sel_init);
  [a1 registerProfileReadyObserver:v11 queue:0];

  return v11;
}

void sub_251F61F08()
{
  v1 = *(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 20));
  if (v2 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v4 = *(*(*(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

    sub_251F61FBC(Strong, v4);
  }
}

uint64_t sub_251F61FBC(void *a1, uint64_t a2)
{
  v78 = a2;
  v72 = sub_251F63924();
  v75 = *(v72 - 8);
  v3 = *(v75 + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_251F63954();
  v76 = *(v77 - 8);
  v5 = *(v76 + 64);
  v6 = MEMORY[0x28223BE20](v77);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v62 - v9;
  v11 = [a1 allProfileExtensions];
  sub_251F634A8();
  v12 = sub_251F63A24();

  if (v12 >> 62)
  {
    goto LABEL_38;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v73 = v8;
  v74 = v10;
  if (v13)
  {
    v14 = 0;
    v8 = (v12 & 0xFFFFFFFFFFFFFF8);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x2530941F0](v14, v12);
        v10 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v17 = *(v12 + 8 * v14 + 32);
        v18 = swift_unknownObjectRetain();
        v10 = (v14 + 1);
        if (__OFADD__(v14, 1))
        {
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          v13 = sub_251F63B74();
          goto LABEL_3;
        }
      }

      *&v89 = v18;
      sub_251F63648(0, &qword_2813DD798);
      if (swift_dynamicCast())
      {
        if (*(&v87 + 1))
        {
          sub_251F5B7D0(&v86, &v89);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v15 = sub_251F63338(0, v15[2] + 1, 1, v15);
          }

          v20 = v15[2];
          v19 = v15[3];
          v21 = v15;
          if (v20 >= v19 >> 1)
          {
            v21 = sub_251F63338((v19 > 1), v20 + 1, 1, v15);
          }

          v21[2] = v20 + 1;
          v15 = v21;
          sub_251F5B7D0(&v89, &v21[5 * v20 + 4]);
          goto LABEL_7;
        }
      }

      else
      {
        v88 = 0;
        v86 = 0u;
        v87 = 0u;
      }

      sub_251F6350C(&v86);
LABEL_7:
      ++v14;
      v16 = v10 == v13;
      v10 = v74;
      if (v16)
      {
        goto LABEL_22;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_22:

  v65 = v15[2];
  if (v65)
  {
    v23 = 0;
    v12 = 0;
    v64 = v15 + 4;
    v76 += 8;
    v70 = (v75 + 8);
    *&v22 = 136446978;
    v68 = v22;
    *&v22 = 136447234;
    v69 = v22;
    v63 = v15;
    while (v23 < v15[2])
    {
      sub_251F5B76C(&v64[5 * v23], &v89);
      v8 = __swift_project_boxed_opaque_existential_1(&v89, v90);
      v24 = sub_251F638F4();
      v25 = *(v24 + 16);
      if (v25)
      {
        v67 = v23;
        v66 = v24;
        v26 = v24 + 32;
        do
        {
          sub_251F5B76C(v26, &v86);
          __swift_project_boxed_opaque_existential_1(&v86, *(&v87 + 1));
          sub_251F637E4();
          sub_251F63934();
          sub_251F5B76C(&v86, &v84);
          sub_251F5B76C(&v86, v83);
          sub_251F5B76C(&v89, v81);
          v27 = v79;
          v8 = v10;
          v28 = sub_251F63944();
          v29 = sub_251F63A54();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v80 = v75;
            *v30 = v68;
            v31 = v27;
            v32 = [v31 description];
            v33 = sub_251F639C4();
            v35 = v34;

            v36 = sub_251F5C368(v33, v35, &v80);

            *(v30 + 4) = v36;
            *(v30 + 12) = 2082;
            v37 = v85;
            v38 = __swift_project_boxed_opaque_existential_1(&v84, v85);
            v39 = *(*(v37 - 8) + 64);
            MEMORY[0x28223BE20](v38);
            (*(v41 + 16))(&v62 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
            v42 = sub_251F639D4();
            v44 = v43;
            __swift_destroy_boxed_opaque_existential_0(&v84);
            v45 = sub_251F5C368(v42, v44, &v80);

            *(v30 + 14) = v45;
            *(v30 + 22) = 2082;
            __swift_project_boxed_opaque_existential_1(v83, v83[3]);
            v46 = v71;
            sub_251F63814();
            sub_251F63600(&qword_2813DD788, MEMORY[0x277D12628]);
            v47 = v72;
            v48 = sub_251F63B84();
            v50 = v49;
            (*v70)(v46, v47);
            __swift_destroy_boxed_opaque_existential_0(v83);
            v51 = sub_251F5C368(v48, v50, &v80);

            *(v30 + 24) = v51;
            *(v30 + 32) = 2082;
            v52 = v82;
            v53 = __swift_project_boxed_opaque_existential_1(v81, v82);
            v54 = *(*(v52 - 8) + 64);
            MEMORY[0x28223BE20](v53);
            (*(v56 + 16))(&v62 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
            v57 = sub_251F639D4();
            v59 = v58;
            __swift_destroy_boxed_opaque_existential_0(v81);
            v60 = sub_251F5C368(v57, v59, &v80);
            v10 = v74;

            *(v30 + 34) = v60;
            _os_log_impl(&dword_251F57000, v28, v29, "%{public}s: registered %{public}s for topic=%{public}s provided by %{public}s", v30, 0x2Au);
            v8 = v75;
            swift_arrayDestroy();
            MEMORY[0x253094780](v8, -1, -1);
            MEMORY[0x253094780](v30, -1, -1);

            (*v76)(v10, v77);
          }

          else
          {

            (*v76)(v10, v77);
            __swift_destroy_boxed_opaque_existential_0(v83);
            __swift_destroy_boxed_opaque_existential_0(&v84);
            __swift_destroy_boxed_opaque_existential_0(v81);
          }

          __swift_destroy_boxed_opaque_existential_0(&v86);
          v26 += 40;
          --v25;
        }

        while (v25);

        v15 = v63;
        v23 = v67;
      }

      else
      {
      }

      ++v23;
      __swift_destroy_boxed_opaque_existential_0(&v89);
      if (v23 == v65)
      {
      }
    }

    goto LABEL_37;
  }
}

uint64_t sub_251F62E7C()
{
  sub_251F63594(0, &unk_2813DD558, &unk_2813DD7A0, MEMORY[0x277D12598], MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_251F64670;
  v2 = *(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_protectedState);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 20));
  if (v3 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    v5 = *(*(*(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);

    sub_251F61FBC(Strong, v5);
  }

  v6 = *(*(*(v0 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation) + 16) + 16);
  v7 = type metadata accessor for TopicRegistryListEvaluator();
  *(v1 + 56) = v7;
  *(v1 + 64) = sub_251F63600(qword_2813DD618, type metadata accessor for TopicRegistryListEvaluator);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 32));

  sub_251F63914();
  *(boxed_opaque_existential_1 + *(v7 + 20)) = v6;
  return v1;
}

id sub_251F6301C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonTopicsProfileExtension();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for DaemonTopicsProfileExtension.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonTopicsProfileExtension.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_251F632A8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_251F61F08();
  v4 = *(v3 + OBJC_IVAR____TtC24HealthTopicsDaemonPlugin28DaemonTopicsProfileExtension_topicStoreImplementation);
  a1[3] = type metadata accessor for DaemonTopicStore();
  a1[4] = sub_251F63600(&unk_27F4C5530, type metadata accessor for DaemonTopicStore);
  *a1 = v4;
}

void *sub_251F63338(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_251F63594(0, &qword_2813DD550, &qword_2813DD798, MEMORY[0x277D12610], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_251F63648(0, &qword_2813DD798);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_251F634A8()
{
  result = qword_2813DD570;
  if (!qword_2813DD570)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813DD570);
  }

  return result;
}

uint64_t sub_251F6350C(uint64_t a1)
{
  sub_251F63594(0, &qword_2813DD790, &qword_2813DD798, MEMORY[0x277D12610], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251F63594(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_251F63648(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251F63600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251F63648(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_251F636A4()
{
  if (!qword_2813DD568)
  {
    type metadata accessor for os_unfair_lock_s();
    v0 = sub_251F63B44();
    if (!v1)
    {
      atomic_store(v0, &qword_2813DD568);
    }
  }
}