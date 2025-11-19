uint64_t sub_2145E9ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2145EB038();
  *a1 = result;
  return result;
}

uint64_t sub_2145E9EF4(uint64_t a1)
{
  v2 = sub_2145EABC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145E9F30(uint64_t a1)
{
  v2 = sub_2145EABC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MBDRichCard.init(from:configuration:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916518, &qword_214767BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v87 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2145EABC4();
  sub_2146DAA08();
  if (!v2)
  {
    v12 = v6;
    v82 = 0;
    sub_2145EAC18();
    sub_2146DA0D8();
    v78 = v83;
    v79 = v84;
    v80 = v85;
    v81 = v86;
    v76[263] = 1;
    sub_2145EAC6C();
    sub_2146DA0C8();
    memcpy(v76, v77, 0x101uLL);
    LOBYTE(v53[0]) = 2;
    v13 = sub_2146DA0F8();
    v15 = v14;
    v52 = v13;
    LOBYTE(v53[0]) = 3;
    v46 = sub_2146DA0F8();
    v51 = v16;
    v73 = 4;
    sub_21409F598();
    sub_2146DA0C8();
    v38 = v74;
    v39 = v75;
    sub_2142FF3F8(&v78, v53);
    sub_2145EAD28(v76, v53);
    sub_21462CA80(v53);
    v49 = v53[2];
    v50 = v53[1];
    v47 = v53[0];
    v48 = v53[3];
    v18 = LOBYTE(v53[4]);
    sub_21462CBCC(&v65);
    v41 = v65;
    v43 = v67;
    v44 = v66;
    v45 = v68;
    v42 = v69;
    v70[0] = v78;
    v70[1] = v79;
    v70[2] = v80;
    LOBYTE(v70[3]) = v81;
    memcpy(&v70[3] + 8, v76, 0x101uLL);
    v65 = v52;
    v66 = v15;
    v37 = v18;
    v64 = v18;
    v35 = 0xD000000000000011;
    v36 = 0x800000021478F910;
    v53[0] = 0xD000000000000011;
    v53[1] = 0x800000021478F910;
    v53[2] = 0xD00000000000001CLL;
    v53[3] = 0x800000021478A360;
    v40 = 0x800000021478A360;

    sub_213FDC9D0(v49, v48);
    v19 = v47(&v65, &v64, v53);
    v20 = v35;
    if (v19)
    {
      sub_213FDC6D0(v49, v48);
      v21 = v40;

      sub_213FDC6D0(v49, v48);
      v65 = v46;
      v66 = v51;
      v64 = v42;
      v48 = 0xD00000000000001BLL;
      v49 = 0x800000021478F930;
      v53[0] = 0xD00000000000001BLL;
      v53[1] = 0x800000021478F930;
      v53[2] = 0xD00000000000001CLL;
      v53[3] = v21;

      sub_213FDC9D0(v43, v45);
      v22 = v41(&v65, &v64, v53);
      v28 = v49;
      if (v22)
      {
        v29 = v43;
        sub_213FDC6D0(v43, v45);

        sub_21405C980(&v78);
        sub_2145EACC0(v76);
        (*(v12 + 8))(v9, v5);
        v30 = v44;

        sub_213FDC6D0(v29, v45);
        memcpy(a2, v70, 0x140uLL);
        v31 = v50;
        *(a2 + 320) = v47;
        *(a2 + 328) = v31;
        *(a2 + 336) = v52;
        *(a2 + 344) = v15;
        *(a2 + 352) = v37;
        *(a2 + 360) = v41;
        *(a2 + 368) = v30;
        v32 = v51;
        *(a2 + 376) = v46;
        *(a2 + 384) = v32;
        *(a2 + 392) = v42;
        *(a2 + 400) = v38;
        *(a2 + 408) = v39;
        return __swift_destroy_boxed_opaque_existential_1(v87);
      }

      sub_214031C4C();
      swift_allocError();
      *v33 = v48;
      v33[1] = v28;
      v33[2] = 0xD00000000000001CLL;
      v33[3] = v40;
      swift_willThrow();

      sub_21405C980(&v78);
      sub_2145EACC0(v76);
      (*(v12 + 8))(v9, v5);

      sub_213FDC6D0(v43, v45);
      v26 = v52;
      v27 = v15;
      v25 = v50;
    }

    else
    {
      sub_214031C4C();
      swift_allocError();
      v23 = v36;
      *v24 = v20;
      v24[1] = v23;
      v24[2] = 0xD00000000000001CLL;
      v24[3] = v40;
      swift_willThrow();

      sub_21405C980(&v78);
      sub_2145EACC0(v76);
      (*(v12 + 8))(v9, v5);
      v25 = v50;

      v27 = v48;
      v26 = v49;
      sub_213FDC6D0(v49, v48);
    }

    memcpy(v53, v70, 0x140uLL);
    v53[40] = v47;
    v53[41] = v25;
    v53[42] = v26;
    v53[43] = v27;
    v54 = v37;
    *v55 = *v72;
    *&v55[3] = *&v72[3];
    v56 = v41;
    v57 = v44;
    v58 = v43;
    v59 = v45;
    v60 = v42;
    *v61 = v71[0];
    *&v61[3] = *(v71 + 3);
    v62 = v38;
    v63 = v39;
    sub_2142FF1F4(v53);
  }

  return __swift_destroy_boxed_opaque_existential_1(v87);
}

uint64_t MBDRichCard.encode(to:configuration:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916538, &qword_214767BD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - v6;
  v8 = v1[1];
  v34 = *v1;
  v35 = v8;
  v36 = v1[2];
  v37 = *(v1 + 48);
  memcpy(v38, v1 + 56, 0x101uLL);
  v9 = *(v1 + 43);
  v19 = *(v1 + 42);
  v20 = v9;
  v10 = *(v1 + 47);
  v17 = *(v1 + 48);
  v18 = v10;
  v21 = *(v1 + 50);
  HIDWORD(v16) = *(v1 + 408);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145EABC4();
  sub_2146DAA28();
  v30 = v34;
  v31 = v35;
  v32 = v36;
  v33 = v37;
  v29 = 0;
  sub_2142FF3F8(&v34, v26);
  sub_2145EAD98();
  v12 = v39;
  sub_2146DA2A8();
  if (v12)
  {
    v26[0] = v30;
    v26[1] = v31;
    v26[2] = v32;
    LOBYTE(v26[3]) = v33;
    sub_21405C980(v26);
    return (*(v4 + 8))(v7, v3);
  }

  else
  {
    v27[0] = v30;
    v27[1] = v31;
    v27[2] = v32;
    v28 = v33;
    sub_21405C980(v27);
    memcpy(v26, v38, 0x101uLL);
    v25[263] = 1;
    sub_2145EAD28(v38, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
    sub_2145EAE40(&qword_27C916548, &qword_27C908918, &qword_214767BD0, sub_2145EADEC);
    sub_2146DA2A8();
    memcpy(v25, v26, 0x101uLL);
    sub_2145EACC0(v25);
    if (v20 == 1)
    {
      goto LABEL_6;
    }

    v14 = v4;
    v23 = v19;
    v24 = v20;
    v22 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
    sub_214045AC0();
    sub_2146DA388();
    v15 = v21;
    if (v17 == 1)
    {
LABEL_6:
      result = sub_2146DA018();
      __break(1u);
    }

    else
    {
      v23 = v18;
      v24 = v17;
      v22 = 3;
      sub_2146DA388();
      v23 = v15;
      LOBYTE(v24) = BYTE4(v16);
      v22 = 4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908928, &qword_2146F5230);
      sub_2145EAE40(&qword_27C916558, &qword_27C908928, &qword_2146F5230, sub_2145EAEBC);
      sub_2146DA2A8();

      return (*(v14 + 8))(v7, 0);
    }
  }

  return result;
}

unint64_t sub_2145EABC4()
{
  result = qword_27C916520;
  if (!qword_27C916520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916520);
  }

  return result;
}

unint64_t sub_2145EAC18()
{
  result = qword_27C916528;
  if (!qword_27C916528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916528);
  }

  return result;
}

unint64_t sub_2145EAC6C()
{
  result = qword_27C916530;
  if (!qword_27C916530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916530);
  }

  return result;
}

uint64_t sub_2145EACC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2145EAD28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908918, &qword_214767BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2145EAD98()
{
  result = qword_27C916540;
  if (!qword_27C916540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916540);
  }

  return result;
}

unint64_t sub_2145EADEC()
{
  result = qword_27C916550;
  if (!qword_27C916550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916550);
  }

  return result;
}

uint64_t sub_2145EAE40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2145EAEBC()
{
  result = qword_27C916560;
  if (!qword_27C916560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916560);
  }

  return result;
}

unint64_t sub_2145EAF34()
{
  result = qword_27C916568;
  if (!qword_27C916568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916568);
  }

  return result;
}

unint64_t sub_2145EAF8C()
{
  result = qword_27C916570;
  if (!qword_27C916570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916570);
  }

  return result;
}

unint64_t sub_2145EAFE4()
{
  result = qword_27C916578;
  if (!qword_27C916578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916578);
  }

  return result;
}

uint64_t sub_2145EB038()
{
  v0 = sub_2146DA098();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_2145EB084()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2145EB0F8@<X0>(uint64_t a1@<X8>)
{
  v76 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916600, &qword_214767E88);
  v2 = *(v1 - 8);
  v72 = v1;
  v73 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = &v64 - v6;
  v82 = sub_2146D8D48();
  v84 = *(v82 - 8);
  v7 = *(v84 + 64);
  v8 = MEMORY[0x28223BE20](v82);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v64 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v78 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CF8, &unk_214757CD0);
  v20 = *(v19 - 8);
  v74 = v19;
  v75 = v20;
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v71 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v81 = &v64 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v83 = *(v25 - 8);
  v26 = *(v83 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v64 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v68 = &v64 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v80 = &v64 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = &v64 - v37;
  if (qword_27C903268 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v25, qword_27CA19F18);
  v65 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v39, v25, v65);
  v40 = sub_2146D8D88();
  v41 = *(*(v40 - 8) + 56);
  v79 = v38;
  v41(v78, 1, 1, v40);
  sub_2146D8C38();
  v41(v17, 1, 1, v40);
  sub_2146D8C38();
  sub_2145EB8F8(v29);
  v42 = v32;
  v67 = v32;
  v43 = MEMORY[0x277D83E40];
  sub_2146D8D28();
  v77 = *(v83 + 8);
  v83 += 8;
  v77(v29, v25);
  v44 = v12;
  v45 = *(v84 + 8);
  v84 += 8;
  v45(v10, v82);
  v46 = v45;
  v66 = v45;
  sub_214503110(v17);
  v47 = v69;
  MEMORY[0x216053B60](v42, v43);
  v48 = sub_21432076C(&qword_27C916608, &qword_27C916600, &qword_214767E88);
  v49 = v70;
  v50 = v72;
  MEMORY[0x216053AF0](v47, v72, v48);
  v51 = *(v73 + 8);
  v51(v47, v50);
  v52 = v68;
  sub_2146D8C08();
  v51(v49, v50);
  v53 = v80;
  v54 = v78;
  v55 = MEMORY[0x277D83E40];
  v64 = v25;
  sub_2146D8D38();
  v77(v52, v25);
  v46(v44, v82);
  sub_214503110(v54);
  v56 = v71;
  MEMORY[0x216053B10](v53, v55);
  v57 = sub_21432076C(&qword_27C914D00, &qword_27C914CF8, &unk_214757CD0);
  v58 = v74;
  MEMORY[0x216053AF0](v56, v74, v57);
  v78 = *(v75 + 8);
  (v78)(v56, v58);
  v59 = v64;
  sub_2146D8C08();
  sub_2146D8C38();
  v60 = v59;
  sub_2146D8D08();
  v61 = v67;
  sub_2146D8D08();
  sub_2146D8CD8();
  v62 = v77;
  v77(v61, v60);
  v62(v52, v60);
  v66(v44, v82);
  v62(v80, v60);
  (v78)(v81, v58);
  return (v62)(v79, v60);
}

uint64_t sub_2145EB8F8@<X0>(uint64_t a1@<X8>)
{
  v24[1] = a1;
  v1 = sub_2146D8D48();
  v25 = *(v1 - 8);
  v26 = v1;
  v2 = *(v25 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v24 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v24 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v24 - v17;
  v27 = 58;
  v28 = 0xE100000000000000;
  v19 = sub_2145031D0();
  MEMORY[0x216053AF0](v29, &v27, MEMORY[0x277D837D0], v19);
  if (qword_27C903270 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_27CA19F30);
  v21 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  MEMORY[0x216053AF0](v20, v5, v21);
  v27 = v29[0];
  v28 = v29[1];
  sub_2146D8C08();

  sub_2146D8C38();
  sub_2146D8D08();
  sub_2146D8D08();
  sub_2146D8CD8();
  v22 = *(v6 + 8);
  v22(v10, v5);
  v22(v13, v5);
  (*(v25 + 8))(v4, v26);
  v22(v16, v5);
  return (v22)(v18, v5);
}

uint64_t sub_2145EBC5C@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v10 = *(v9 - 8);
  v48 = v9;
  v49 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v45 = &v41 - v14;
  v15 = sub_2146D8D48();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = *(v46 + 64);
  MEMORY[0x28223BE20](v15);
  v42 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CB8, &qword_214757CB0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CC0, &qword_214757CB8);
  v44 = *(v22 - 8);
  v23 = *(v44 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v41 - v27;
  v29 = sub_2146D8D88();
  (*(*(v29 - 8) + 56))(v21, 1, 1, v29);
  sub_2146D8C38();
  sub_2146D8C88();
  v30 = sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  MEMORY[0x216053AF0](v6, v1, v30);
  v31 = *(v2 + 8);
  v31(v6, v1);
  v32 = v43;
  sub_2146D8C08();
  v31(v8, v1);
  sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = v45;
  v34 = v32;
  v35 = MEMORY[0x277D83E40];
  v36 = v48;
  v37 = v42;
  sub_2146D8D18();
  (*(v49 + 8))(v34, v36);
  (*(v46 + 8))(v37, v47);
  sub_214503110(v21);
  MEMORY[0x216053B90](v33, v35);
  v38 = sub_21432076C(&qword_27C914CC8, &qword_27C914CC0, &qword_214757CB8);
  MEMORY[0x216053AF0](v26, v22, v38);
  v39 = *(v44 + 8);
  v39(v26, v22);
  sub_2146D8C08();
  return (v39)(v28, v22);
}

uint64_t sub_2145EC190@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = sub_2146D8D48();
  v40 = *(v1 - 8);
  v41 = v1;
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v1);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914CA0, &qword_214757CA8);
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v31 - v6;
  v7 = sub_2146D8C48();
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  v36 = *(v15 - 8);
  v16 = *(v36 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  if (qword_27C9031D8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v15, qword_27CA19E08);
  v23 = sub_21432076C(&qword_27C914C98, &qword_27C908F50, &qword_2146F54F0);
  v33 = v15;
  MEMORY[0x216053AD0](v22, v15, v23);
  v43 = 11615;
  v44 = 0xE200000000000000;
  sub_2146D8D58();
  sub_2146D8D78();
  v24 = sub_2145030B8();
  MEMORY[0x216053AD0](v12, v7, v24);
  v32 = v21;
  v25 = *(v34 + 8);
  v25(v12, v7);
  v26 = v35;
  sub_2146D8BE8();
  v27 = v37;
  sub_2146D8C38();
  sub_21432076C(&qword_27C914CA8, &qword_27C914CA0, &qword_214757CA8);
  v28 = MEMORY[0x277D83E40];
  v29 = v39;
  sub_2146D8CF8();
  (*(v40 + 8))(v27, v41);
  MEMORY[0x216053B70](v19, v28);
  (*(v38 + 8))(v26, v29);
  v25(v14, v7);
  return (*(v36 + 8))(v32, v33);
}

uint64_t sub_2145EC62C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2145EC674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145EC6C8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2145EC6F8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_2145EC70C()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_2145EC718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146DA428();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_2145EC774(uint64_t a1)
{
  v2 = sub_2144EE044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145EC7B0(uint64_t a1)
{
  v2 = sub_2144EE044();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2145EC7F0()
{
  result = qword_280B34838;
  if (!qword_280B34838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34838);
  }

  return result;
}

unint64_t sub_2145EC848()
{
  result = qword_280B34840;
  if (!qword_280B34840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B34840);
  }

  return result;
}

unint64_t sub_2145EC8C4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916610, &qword_214779300);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = sub_2142E43D0();
  *(v4 + 32) = &type metadata for BaseWritingDirectionAttribute;
  *(v4 + 40) = v5;
  v6 = sub_2142E4328();
  *(v4 + 48) = &type metadata for MessagePartAttribute;
  *(v4 + 56) = v6;
  v7 = sub_2142E3A1C();
  *(v4 + 64) = &type metadata for FileTransferAttribute;
  *(v4 + 72) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C70, &qword_2147319F0);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  *(v8 + 16) = sub_2145ED9C0;
  *(v8 + 24) = v9;
  *(v3 + 32) = v8;
  v10 = sub_2142E037C(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904100, &unk_2146EAA50);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_2145ED9C8;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214043C30(inited, a1);
}

unint64_t sub_2145ECA68@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21438EDCC;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

uint64_t BasicMessage.$content.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  return sub_2142E5A68(v3);
}

__n128 BasicMessage.$content.setter(uint64_t a1)
{
  v10 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_214032578(v6);
  result = v10;
  *(v1 + 32) = *a1;
  *(v1 + 48) = v10;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  return result;
}

uint64_t BasicMessage.$participantDestinationIdentifiers.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v3 = *(v1 + 96);
  v4 = *(v1 + 104);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 BasicMessage.$participantDestinationIdentifiers.setter(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = v1[5].n128_u64[1];
  v6 = v1[6].n128_u64[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u8[8] = v4;
  return result;
}

uint64_t BasicMessage.content.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  if (v2 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v3 = v1[7];
    v4 = v1[8];
    *a1 = v2;
    a1[1] = v3;
    a1[2] = v4;

    return sub_214031CA0(v2);
  }

  return result;
}

uint64_t BasicMessage.participantDestinationIdentifiers.getter()
{
  if (*(v0 + 96))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t BasicMessage.plainTextBody.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t BasicMessage.plainTextBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BasicMessage.plainTextSubject.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t BasicMessage.plainTextSubject.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2145ECF54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[6];
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = a1[7];
    v6 = a1[8];
    *a2 = v4;
    a2[1] = v5;
    a2[2] = v6;

    return sub_214031CA0(v4);
  }

  return result;
}

uint64_t sub_2145ECFCC(uint64_t *a1)
{
  sub_21403220C(*a1, a1[1], a1[2], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t BasicMessage.content.setter(uint64_t *a1)
{
  v1 = *a1;
  sub_21403220C(*a1, a1[1], a1[2], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_214031CE0(v1);
}

uint64_t (*BasicMessage.content.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[3] = v1;
  v3 = v1[6];
  if (v3 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = v1[7];
    v5 = v1[8];
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    sub_214031CA0(v3);
    return sub_2145ED1FC;
  }

  return result;
}

uint64_t sub_2145ED1FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  if (a2)
  {
    sub_214031CA0(*a1);
    sub_21403220C(v2, v3, v5, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_214031CE0(v2);
  }

  else
  {
    sub_21403220C(*a1, v3, v5, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_214031CE0(v2);
}

uint64_t sub_2145ED350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  *a2 = *(a1 + 32);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;

  return sub_2142E5A68(v3);
}

uint64_t sub_2145ED3B8(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v13 = *(a1 + 40);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);

  sub_2142E5A68(v5);

  result = sub_214032578(v9);
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v13;
  return result;
}

void (*BasicMessage.$content.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  *v4 = *(v1 + 32);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  *(v4 + 40) = v9;

  sub_2142E5A68(v6);
  return sub_2145ED50C;
}

void sub_2145ED50C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[1];
  v17 = **a1;
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v18 = *(*a1 + 40);
  v9 = *(v3 + 40);
  v8 = *(v3 + 48);
  v10 = *(v3 + 56);
  v11 = *(v3 + 64);
  if (a2)
  {

    sub_2142E5A68(v6);

    sub_214032578(v8);
    *(v3 + 32) = v17;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = v7;
    *(v3 + 72) = v18;
    v12 = v2[1];
    v13 = v2[2];
    v14 = v2[3];
    v15 = v2[4];

    sub_214032578(v13);
  }

  else
  {
    v16 = *(v3 + 40);

    sub_214032578(v8);
    *(v3 + 32) = v17;
    *(v3 + 40) = v4;
    *(v3 + 48) = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = v7;
    *(v3 + 72) = v18;
  }

  free(v2);
}

uint64_t BasicMessage.participantDestinationIdentifiers.setter(uint64_t a1)
{
  v2 = v1;
  v11 = a1;
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  v10 = *(v2 + 104);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v4(&v11, &v10, v9))
  {
    v6 = *(v2 + 96);

    *(v2 + 96) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*BasicMessage.participantDestinationIdentifiers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 96);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214394968;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*BasicMessage.$participantDestinationIdentifiers.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 88);
  v6 = *(v1 + 96);
  v7 = *(v1 + 104);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_214394C54;
}

unint64_t sub_2145ED8B8(uint64_t a1)
{
  *(a1 + 8) = sub_214322730();
  result = sub_214322508();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145ED90C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145ED954(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145EDAC0@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  v7 = *(v3 + 20);
  v8 = *(v3 + 21);
  LOBYTE(v3) = *(v3 + 22);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 20) = v7;
  *(a1 + 16) = v6;
  *(a1 + 21) = v8;
  *(a1 + 22) = v3;
}

__n128 sub_2145EDB48(__n128 *a1)
{
  v3 = a1[1].n128_u32[0];
  v4 = a1[1].n128_u8[4];
  v5 = a1[1].n128_u8[5];
  v6 = a1[1].n128_u8[6];
  v7 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36));
  v8 = v7->n128_u64[1];

  result = *a1;
  *v7 = *a1;
  v7[1].n128_u8[4] = v4;
  v7[1].n128_u32[0] = v3;
  v7[1].n128_u8[5] = v5;
  v7[1].n128_u8[6] = v6;
  return result;
}

unint64_t sub_2145EDBC0()
{
  v1 = v0 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36);
  if ((*(v1 + 21) & 1) == 0)
  {
    return *(v1 + 16) | ((*(v1 + 20) & 1) << 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2145EDD20@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 112);
  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  *a1 = *(v1 + 96);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EDD78(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[6].n128_u64[1];
  v7 = v1[7].n128_i64[0];
  v8 = v1[7].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[6] = *a1;
  v1[7].n128_u64[0] = v3;
  v1[7].n128_u64[1] = v4;
  v1[8].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EDE30()
{
  if (*(v0 + 120) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 112);

    return v1;
  }

  return result;
}

unint64_t sub_2145EDEC8@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_21439DF24;
  *(v4 + 24) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21439DF24;
  *(v5 + 24) = 0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2146EAEB0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21439DF28;
  *(v7 + 24) = v4;
  *(v6 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21439DF60;
  *(v8 + 24) = v5;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v9 + 16) = sub_21439DF54;
  *(v9 + 24) = v10;
  *(v3 + 32) = v9;
  v11 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145EE0D8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 408);
  v3 = *(v1 + 416);
  v4 = *(v1 + 424);
  v5 = *(v1 + 432);
  *a1 = *(v1 + 400);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EE130(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[25].n128_u64[1];
  v7 = v1[26].n128_i64[0];
  v8 = v1[26].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[25] = *a1;
  v1[26].n128_u64[0] = v3;
  v1[26].n128_u64[1] = v4;
  v1[27].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EE198()
{
  if (*(v0 + 424) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 416);

    return v1;
  }

  return result;
}

unint64_t sub_2145EE254@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E0070(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a3);
}

unint64_t sub_2145EE43C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904148, qword_21476AE20);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 0x3E800000001;
  *(v8 + 16) = a1;
  *(v8 + 24) = v9;
  *(v7 + 32) = v8;
  v10 = sub_2142E05D4(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E8, &unk_2147319D0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = a2;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214045004(inited, a3);
}

uint64_t sub_2145EE578@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EE5D0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EE638@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EE690(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_2145EE6F8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

__n128 sub_2145EE784(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36));
  v7 = v6->n128_u64[1];
  v8 = v6[1].n128_i64[0];
  v9 = v6[1].n128_i64[1];

  sub_213FDC6D0(v8, v9);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EE814@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 40));
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v4 + 4);
  v8 = *(v4 + 20);
  v9 = *(v4 + 21);
  LOBYTE(v4) = *(v4 + 22);
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 20) = v8;
  *(a2 + 16) = v7;
  *(a2 + 21) = v9;
  *(a2 + 22) = v4;
}

__n128 sub_2145EE89C(__n128 *a1, uint64_t (*a2)(void))
{
  v4 = a1[1].n128_u32[0];
  v5 = a1[1].n128_u8[4];
  v6 = a1[1].n128_u8[5];
  v7 = a1[1].n128_u8[6];
  v8 = (v2 + *(a2(0) + 40));
  v9 = v8->n128_u64[1];

  result = *a1;
  *v8 = *a1;
  v8[1].n128_u8[4] = v5;
  v8[1].n128_u32[0] = v4;
  v8[1].n128_u8[5] = v6;
  v8[1].n128_u8[6] = v7;
  return result;
}

uint64_t sub_2145EE910()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_2145EE990()
{
  if (*(v0 + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 72);

    return v1;
  }

  return result;
}

uint64_t sub_2145EEA10()
{
  v1 = v0 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);

    return v2;
  }

  return result;
}

unint64_t sub_2145EEAB8(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 40);
  if ((*(v2 + 21) & 1) == 0)
  {
    return *(v2 + 16) | ((*(v2 + 20) & 1) << 32);
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

unint64_t sub_2145EEB40@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_214059900;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_214032610;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145EEC60@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EECB8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EED20()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

unint64_t sub_2145EEDA0@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_214059900;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_214032610;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  sub_214042A28(inited, a1);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2146E9BF0;
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_2146E9BF0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_214059900;
  *(v10 + 24) = 0;
  *(v9 + 32) = v10;
  v11 = sub_2142E0070(v9);
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v12 + 16) = sub_214032610;
  *(v12 + 24) = v13;
  *(v8 + 32) = v12;
  return sub_214042A28(v8, a1 + 40);
}

uint64_t sub_2145EEFC0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EF018(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_u64[1];
  v7 = v1[2].n128_i64[0];
  v8 = v1[2].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EF080()
{
  if (*(v0 + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    return v1;
  }

  return result;
}

unint64_t sub_2145EF100@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282654088);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_2140598E4;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_2826541C8);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_2140598E8;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_214032610;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  sub_214042A28(inited, a1);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_2146EAEB0;
  v15 = sub_214069764(&unk_282654128);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = sub_2140598E4;
  *(v16 + 24) = v17;
  *(v14 + 32) = v16;
  v18 = sub_214069888(&unk_282654218);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v19 + 16) = sub_2140598E8;
  *(v19 + 24) = v20;
  *(v14 + 40) = v19;
  v21 = sub_2142E0070(v14);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = sub_214032610;
  *(v22 + 24) = v23;
  *(v13 + 32) = v22;
  return sub_214042A28(v13, a1 + 40);
}

uint64_t sub_2145EF400@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EF45C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_2145EF4CC()
{
  if (*(v0 + 64) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 56);

    return v1;
  }

  return result;
}

unint64_t sub_2145EF54C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282654268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_214059810;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_282654308);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_214059818;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_21403254C;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_214042A28(inited, a1);
}

uint64_t sub_2145EF6FC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2145EF758(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_u64[1];
  v7 = v1[2].n128_i64[0];
  v8 = v1[2].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145EF7C4()
{
  if (*(v0 + 40) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);

    return v1;
  }

  return result;
}

unint64_t sub_2145EF844@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A572C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5730;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

unint64_t sub_2145EF9AC@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C60, &unk_21476AE10);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2147680A0;
  *(v4 + 16) = sub_21438F468;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E07B4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E0, &unk_2146EAA30);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2145FF1A8;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044EAC(inited, a1);
}

uint64_t sub_2145EFAF0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145EFB48(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 96);

  sub_214032564(v7, v8);
  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 104) = v5;
  return result;
}

uint64_t sub_2145EFBB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 136);
  v5 = *(v1 + 137);
  v6 = *(v1 + 138);
  *a1 = *(v1 + 112);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2145EFBDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = v1[7].n128_u64[1];

  result = *a1;
  v1[7] = *a1;
  v1[8].n128_u64[0] = v3;
  v1[8].n128_u8[8] = v4;
  v1[8].n128_u8[9] = v5;
  v1[8].n128_u8[10] = v6;
  return result;
}

uint64_t sub_2145EFC3C()
{
  v1 = *(v0 + 96);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 88);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145EFCC4()
{
  if (*(v0 + 137))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 128);
    v2 = *(v0 + 136) & 1;
  }

  return result;
}

unint64_t sub_2145EFD30@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C60, &unk_21476AE10);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2147680B0;
  *(v4 + 16) = sub_2142E10E8;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E07B4(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040E0, &unk_2146EAA30);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2145FF0B4;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214044EAC(inited, a1);
}

uint64_t sub_2145EFE74@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  v6 = *(v1 + 98);
  *a1 = *(v1 + 72);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 25) = v5;
  *(a1 + 26) = v6;
}

__n128 sub_2145EFEA0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];
  v5 = a1[1].n128_u8[9];
  v6 = a1[1].n128_u8[10];
  v7 = *(v1 + 80);

  result = *a1;
  *(v1 + 72) = *a1;
  *(v1 + 88) = v3;
  *(v1 + 96) = v4;
  *(v1 + 97) = v5;
  *(v1 + 98) = v6;
  return result;
}

uint64_t sub_2145EFF00()
{
  if (*(v0 + 97))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    result = *(v0 + 88);
    v2 = *(v0 + 96) & 1;
  }

  return result;
}

unint64_t sub_2145EFF6C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904178, &qword_2146F42E0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  v5[2] = sub_214059908;
  v5[3] = 0;
  v5[4] = 16;
  v5[5] = sub_21403C354;
  v5[6] = 0;
  *(v4 + 16) = sub_2143A571C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142E00AC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040C0, &unk_2146EAA10);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_2143A5724;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_214042E28(inited, a1);
}

uint64_t sub_2145F00D4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

__n128 sub_2145F012C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1->n128_u64[1];
  v7 = v1[1].n128_i64[0];
  v8 = v1[1].n128_u64[1];

  sub_214032564(v7, v8);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2145F0194()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    sub_213FDCA18(v2, v1);
    return v2;
  }

  return result;
}

uint64_t sub_2145F047C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  return sub_21431326C(v4, v5, v6, v7);
}

__n128 sub_2145F04D4(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 32);
  v5 = *(v4 + 32);
  sub_214313220(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  result = *a1;
  v7 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v7;
  *(v4 + 32) = v3;
  return result;
}

uint64_t sub_2145F0574@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 36));
  v4 = v3[3];
  v11 = v3[2];
  v12[0] = v4;
  *(v12 + 9) = *(v3 + 57);
  v5 = *(v12 + 9);
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  *(a1 + 57) = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_213FB2E54(v10, &v9, &qword_27C9074A0, &qword_2146F4A68);
}

__n128 sub_2145F05EC(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 36));
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 57);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_213FB2DF4(v8, &qword_27C9074A0, &qword_2146F4A68);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

void sub_2145F06B4(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 40);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  sub_2144D6614(v4, v5, v6, v7, v8, v9);
}

__n128 sub_2145F0714(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v1 + *(type metadata accessor for IDSActivitySharingInvitation(0) + 40);
  v7 = *(v6 + 48);
  sub_2144D6660(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40));
  result = *a1;
  v9 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v9;
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  return result;
}

uint64_t sub_2145F07DC(uint64_t a1)
{
  v2 = sub_2145F155C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0818(uint64_t a1)
{
  v2 = sub_2145F155C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2145F0854()
{
  v1 = 0xD000000000000019;
  v2 = 0xD000000000000018;
  v3 = 0xD000000000000015;
  if (*v0 != 6)
  {
    v3 = 0xD000000000000016;
  }

  if (*v0 <= 5u)
  {
    v3 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0 <= 1u)
  {
    v1 = v2;
  }

  if (*v0 <= 3u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_2145F0928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2145FEAEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2145F0950(uint64_t a1)
{
  v2 = sub_2145F14B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F098C(uint64_t a1)
{
  v2 = sub_2145F14B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F09C8(uint64_t a1)
{
  v2 = sub_2145F1508();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0A04(uint64_t a1)
{
  v2 = sub_2145F1508();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0A40(uint64_t a1)
{
  v2 = sub_2145F15B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0A7C(uint64_t a1)
{
  v2 = sub_2145F15B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0AB8(uint64_t a1)
{
  v2 = sub_2145F1754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0AF4(uint64_t a1)
{
  v2 = sub_2145F1754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0B30(uint64_t a1)
{
  v2 = sub_2145F1700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0B6C(uint64_t a1)
{
  v2 = sub_2145F1700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0BA8(uint64_t a1)
{
  v2 = sub_2145F1658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0BE4(uint64_t a1)
{
  v2 = sub_2145F1658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0C20(uint64_t a1)
{
  v2 = sub_2145F1604();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0C5C(uint64_t a1)
{
  v2 = sub_2145F1604();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0C98(uint64_t a1)
{
  v2 = sub_2145F16AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F0CD4(uint64_t a1)
{
  v2 = sub_2145F16AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F0D10(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916618, &qword_2147680D0);
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  MEMORY[0x28223BE20](v3);
  v61 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916620, &qword_2147680D8);
  v59 = *(v6 - 8);
  v60 = v6;
  v7 = *(v59 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916628, &qword_2147680E0);
  v56 = *(v9 - 8);
  v57 = v9;
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v9);
  v55 = &v43 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916630, &qword_2147680E8);
  v53 = *(v12 - 8);
  v54 = v12;
  v13 = *(v53 + 64);
  MEMORY[0x28223BE20](v12);
  v52 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916638, &qword_2147680F0);
  v50 = *(v15 - 8);
  v51 = v15;
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v15);
  v49 = &v43 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916640, &qword_2147680F8);
  v47 = *(v18 - 8);
  v48 = v18;
  v19 = *(v47 + 64);
  MEMORY[0x28223BE20](v18);
  v46 = &v43 - v20;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916648, &qword_214768100);
  v44 = *(v45 - 8);
  v21 = *(v44 + 64);
  MEMORY[0x28223BE20](v45);
  v23 = &v43 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916650, &qword_214768108);
  v43 = *(v24 - 8);
  v25 = *(v43 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v43 - v26;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916658, &qword_214768110);
  v28 = *(v64 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v64);
  v30 = *v1;
  v32 = a1[3];
  v31 = a1[4];
  v33 = a1;
  v35 = &v43 - v34;
  __swift_project_boxed_opaque_existential_1(v33, v32);
  sub_2145F14B4();
  sub_2146DAA28();
  v36 = (v28 + 8);
  if (v30 > 3)
  {
    if (v30 > 5)
    {
      if (v30 == 6)
      {
        v71 = 6;
        sub_2145F155C();
        v38 = v58;
        v37 = v64;
        sub_2146DA288();
        v40 = v59;
        v39 = v60;
      }

      else
      {
        v72 = 7;
        sub_2145F1508();
        v38 = v61;
        v37 = v64;
        sub_2146DA288();
        v40 = v62;
        v39 = v63;
      }
    }

    else if (v30 == 4)
    {
      v69 = 4;
      sub_2145F1604();
      v38 = v52;
      v37 = v64;
      sub_2146DA288();
      v40 = v53;
      v39 = v54;
    }

    else
    {
      v70 = 5;
      sub_2145F15B0();
      v38 = v55;
      v37 = v64;
      sub_2146DA288();
      v40 = v56;
      v39 = v57;
    }

    goto LABEL_16;
  }

  if (v30 > 1)
  {
    if (v30 == 2)
    {
      v67 = 2;
      sub_2145F16AC();
      v38 = v46;
      v37 = v64;
      sub_2146DA288();
      v40 = v47;
      v39 = v48;
    }

    else
    {
      v68 = 3;
      sub_2145F1658();
      v38 = v49;
      v37 = v64;
      sub_2146DA288();
      v40 = v50;
      v39 = v51;
    }

LABEL_16:
    (*(v40 + 8))(v38, v39);
    return (*v36)(v35, v37);
  }

  if (v30)
  {
    v66 = 1;
    sub_2145F1700();
    v41 = v64;
    sub_2146DA288();
    (*(v44 + 8))(v23, v45);
    return (*v36)(v35, v41);
  }

  v65 = 0;
  sub_2145F1754();
  v37 = v64;
  sub_2146DA288();
  (*(v43 + 8))(v27, v24);
  return (*v36)(v35, v37);
}

unint64_t sub_2145F14B4()
{
  result = qword_27C916660;
  if (!qword_27C916660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916660);
  }

  return result;
}

unint64_t sub_2145F1508()
{
  result = qword_27C916668;
  if (!qword_27C916668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916668);
  }

  return result;
}

unint64_t sub_2145F155C()
{
  result = qword_27C916670;
  if (!qword_27C916670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916670);
  }

  return result;
}

unint64_t sub_2145F15B0()
{
  result = qword_27C916678;
  if (!qword_27C916678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916678);
  }

  return result;
}

unint64_t sub_2145F1604()
{
  result = qword_27C916680;
  if (!qword_27C916680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916680);
  }

  return result;
}

unint64_t sub_2145F1658()
{
  result = qword_27C916688;
  if (!qword_27C916688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916688);
  }

  return result;
}

unint64_t sub_2145F16AC()
{
  result = qword_27C916690;
  if (!qword_27C916690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916690);
  }

  return result;
}

unint64_t sub_2145F1700()
{
  result = qword_27C916698;
  if (!qword_27C916698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916698);
  }

  return result;
}

unint64_t sub_2145F1754()
{
  result = qword_27C9166A0;
  if (!qword_27C9166A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9166A0);
  }

  return result;
}

uint64_t sub_2145F17D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v94 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166A8, &qword_214768118);
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x28223BE20](v3);
  v89 = &v68 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166B0, &qword_214768120);
  v84 = *(v6 - 8);
  v85 = v6;
  v7 = *(v84 + 64);
  MEMORY[0x28223BE20](v6);
  v93 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166B8, &qword_214768128);
  v82 = *(v9 - 8);
  v83 = v9;
  v10 = *(v82 + 64);
  MEMORY[0x28223BE20](v9);
  v92 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166C0, &qword_214768130);
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v91 = &v68 - v15;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166C8, &qword_214768138);
  v78 = *(v79 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v90 = &v68 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166D0, &qword_214768140);
  v76 = *(v77 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v88 = &v68 - v19;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166D8, &qword_214768148);
  v74 = *(v75 - 8);
  v20 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166E0, &qword_214768150);
  v73 = *(v23 - 8);
  v24 = *(v73 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166E8, &unk_214768158);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v68 - v30;
  v33 = a1[3];
  v32 = a1[4];
  v96 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_2145F14B4();
  v34 = v95;
  sub_2146DAA08();
  if (!v34)
  {
    v69 = v26;
    v68 = v23;
    v70 = v22;
    v36 = v90;
    v35 = v91;
    v38 = v92;
    v37 = v93;
    v95 = v28;
    v39 = v94;
    v72 = v27;
    v71 = v31;
    v40 = sub_2146DA238();
    v41 = (2 * *(v40 + 16)) | 1;
    v97 = v40;
    v98 = v40 + 32;
    v99 = 0;
    v100 = v41;
    v42 = sub_214396F68();
    if (v42 != 8 && v99 == v100 >> 1)
    {
      v101 = v42;
      if (v42 > 3u)
      {
        v54 = v72;
        v55 = v71;
        if (v42 > 5u)
        {
          v63 = v95;
          if (v42 == 6)
          {
            v102 = 6;
            sub_2145F155C();
            sub_2146DA0B8();
            (*(v84 + 8))(v37, v85);
          }

          else
          {
            v102 = 7;
            sub_2145F1508();
            v67 = v89;
            sub_2146DA0B8();
            (*(v86 + 8))(v67, v87);
          }

          (*(v63 + 8))(v55, v54);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        v56 = v95;
        if (v42 == 4)
        {
          v102 = 4;
          sub_2145F1604();
          sub_2146DA0B8();
          v57 = v80;
          v58 = v81;
        }

        else
        {
          v102 = 5;
          sub_2145F15B0();
          v35 = v38;
          sub_2146DA0B8();
          v58 = v82;
          v57 = v83;
        }

        (*(v58 + 8))(v35, v57);
        (*(v56 + 8))(v55, v54);
      }

      else
      {
        if (v42 > 1u)
        {
          v59 = v95;
          if (v42 == 2)
          {
            v102 = 2;
            sub_2145F16AC();
            v60 = v88;
            v61 = v72;
            v62 = v71;
            sub_2146DA0B8();
            (*(v76 + 8))(v60, v77);
          }

          else
          {
            v102 = 3;
            sub_2145F1658();
            v61 = v72;
            v62 = v71;
            sub_2146DA0B8();
            (*(v78 + 8))(v36, v79);
          }

          (*(v59 + 8))(v62, v61);
          swift_unknownObjectRelease();
          v43 = v39;
          goto LABEL_25;
        }

        v43 = v39;
        if (v42)
        {
          v102 = 1;
          sub_2145F1700();
          v64 = v70;
          v65 = v72;
          v66 = v71;
          sub_2146DA0B8();
          (*(v74 + 8))(v64, v75);
          (*(v95 + 8))(v66, v65);
        }

        else
        {
          v102 = 0;
          sub_2145F1754();
          v44 = v69;
          v45 = v72;
          v46 = v71;
          sub_2146DA0B8();
          (*(v73 + 8))(v44, v68);
          (*(v95 + 8))(v46, v45);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v43 = v101;
      return __swift_destroy_boxed_opaque_existential_1(v96);
    }

    v47 = sub_2146D9F58();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v49 = &type metadata for IDSActivitySharingInvitation.ActivitySharingTransportItem;
    v51 = v72;
    v52 = v71;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84160], v47);
    swift_willThrow();
    (*(v95 + 8))(v52, v51);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v96);
}

uint64_t sub_2145F231C()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2145F2328(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t (*sub_2145F2358(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145FF164;
  }

  return result;
}

uint64_t (*sub_2145F2430(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF168;
}

void (*sub_2145F24D4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145F25AC;
  }

  return result;
}

void (*sub_2145F25B0(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F2650;
}

void (*sub_2145F2658(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 112);
  *(v3 + 24) = v5;
  v6 = *(v1 + 120);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145F2730;
  }

  return result;
}

void (*sub_2145F2734(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F27D4;
}

uint64_t sub_2145F2870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0);
  v5 = a1 + *(result + 36);
  if (*(v5 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v6 = *(v5 + 20);
    *a2 = *(v5 + 16);
    *(a2 + 4) = v6 & 1;
  }

  return result;
}

uint64_t (*sub_2145F294C(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 20);
    *(a1 + 8) = *(v4 + 16);
    *(a1 + 12) = v5 & 1;
    return sub_2145F2A00;
  }

  return result;
}

uint64_t sub_2145F2A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 4);
  v7 = *(v3 + 20);
  v8 = *(v3 + 21);
  LOBYTE(v3) = *(v3 + 22);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 20) = v7;
  *(a2 + 16) = v6;
  *(a2 + 21) = v8;
  *(a2 + 22) = v3;
}

uint64_t sub_2145F2A70(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a1 + 21);
  v7 = *(a1 + 22);
  v8 = a2 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36);
  v9 = *(v8 + 8);

  *v8 = v3;
  *(v8 + 8) = v2;
  *(v8 + 20) = v5;
  *(v8 + 16) = v4;
  *(v8 + 21) = v6;
  *(v8 + 22) = v7;
  return result;
}

uint64_t (*sub_2145F2AF4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 20);
  v10 = *(v6 + 4);
  v11 = *(v6 + 21);
  LOBYTE(v6) = *(v6 + 22);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v10;
  *(v4 + 20) = v9;
  *(v4 + 21) = v11;
  *(v4 + 22) = v6;

  return sub_2145F2BA8;
}

uint64_t (*sub_2145F2BCC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145FF164;
  }

  return result;
}

uint64_t (*sub_2145F2CA4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF168;
}

void (*sub_2145F2D44(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145FF16C;
  }

  return result;
}

void (*sub_2145F2E1C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF170;
}

uint64_t sub_2145F2EBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);
  v11 = *(v3 + 128);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 112), *(v3 + 120));

    *(v3 + 112) = a1;
    *(v3 + 120) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145F3000(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 112);
  *(v3 + 24) = v5;
  v6 = *(v1 + 120);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145FF174;
  }

  return result;
}

void (*sub_2145F30D8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = *(v1 + 128);
  *v4 = *(v1 + 96);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF178;
}

uint64_t (*sub_2145F32A0(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 20);
    *(a1 + 8) = *(v4 + 16);
    *(a1 + 12) = v5 & 1;
    return sub_2145FF17C;
  }

  return result;
}

uint64_t (*sub_2145F3354(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 20);
  v10 = *(v6 + 4);
  v11 = *(v6 + 21);
  LOBYTE(v6) = *(v6 + 22);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v10;
  *(v4 + 20) = v9;
  *(v4 + 21) = v11;
  *(v4 + 22) = v6;

  return sub_2145FF180;
}

uint64_t sub_2145F3408@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x189uLL);
  memcpy(a1, v1, 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145F346C(const void *a1)
{
  memcpy(__dst, v1, 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy(v1, a1, 0x189uLL);
}

uint64_t sub_2145F34EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 424);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 416);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145F3560(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145F3610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 400);
  v7 = *(v2 + 408);
  v11 = *(v3 + 432);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 416), *(v3 + 424));

    *(v3 + 416) = a1;
    *(v3 + 424) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145F3754(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 416);
  *(v3 + 24) = v5;
  v6 = *(v1 + 424);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145F382C;
  }

  return result;
}

void sub_2145F382C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 400);
    v11 = *(v3 + 408);
    v16 = *(v3 + 432);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 416) = v5;
      *(v12 + 424) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 400);
  v6 = *(v3 + 408);
  v16 = *(v3 + 432);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 416) = v5;
  *(v8 + 424) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t sub_2145F39FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 408);
  v3 = *(a1 + 416);
  v4 = *(a1 + 424);
  v5 = *(a1 + 432);
  *a2 = *(a1 + 400);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145F3A50(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 408);
  v9 = *(a2 + 416);
  v10 = *(a2 + 424);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 400) = v4;
  *(a2 + 408) = v3;
  *(a2 + 416) = v5;
  *(a2 + 424) = v6;
  *(a2 + 432) = v7;
  return result;
}

void (*sub_2145F3AD8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 408);
  v6 = *(v1 + 416);
  v7 = *(v1 + 424);
  v8 = *(v1 + 432);
  *v4 = *(v1 + 400);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F3B78;
}

void sub_2145F3B78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 408);
  v9 = *(v3 + 416);
  v11 = *(v3 + 424);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 400) = v5;
    *(v3 + 408) = v4;
    *(v3 + 416) = v7;
    *(v3 + 424) = v6;
    *(v3 + 432) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 408);

    sub_213FDC6D0(v9, v11);
    *(v3 + 400) = v5;
    *(v3 + 408) = v4;
    *(v3 + 416) = v7;
    *(v3 + 424) = v6;
    *(v3 + 432) = v8;
  }

  free(v2);
}

uint64_t sub_2145F3C58@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 488);
  v9 = *(v1 + 472);
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 497);
  v3 = *(v10 + 9);
  v4 = *(v1 + 456);
  v8[0] = *(v1 + 440);
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C909E68, &qword_214761070);
}

__n128 sub_2145F3CB8(uint64_t a1)
{
  v3 = (v1 + 440);
  v4 = v3[3];
  v8[2] = v3[2];
  v9[0] = v4;
  *(v9 + 9) = *(v3 + 57);
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_213FB2DF4(v8, &qword_27C909E68, &qword_214761070);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

uint64_t sub_2145F3EC8()
{
  if (*v0)
  {
    result = 0x65736E6F70736572;
  }

  else
  {
    result = 0x74736575716572;
  }

  *v0;
  return result;
}

uint64_t sub_2145F3F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

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

uint64_t sub_2145F3FE0(uint64_t a1)
{
  v2 = sub_2145F43F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F401C(uint64_t a1)
{
  v2 = sub_2145F43F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F4058(uint64_t a1)
{
  v2 = sub_2145F44A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F4094(uint64_t a1)
{
  v2 = sub_2145F44A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F40D0(uint64_t a1)
{
  v2 = sub_2145F444C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F410C(uint64_t a1)
{
  v2 = sub_2145F444C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F4148(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166F0, &qword_214768168);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9166F8, &qword_214768170);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916700, &qword_214768178);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145F43F8();
  sub_2146DAA28();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_2145F444C();
    v18 = v22;
    sub_2146DA288();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_2145F44A0();
    sub_2146DA288();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_2145F43F8()
{
  result = qword_27C916708;
  if (!qword_27C916708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916708);
  }

  return result;
}

unint64_t sub_2145F444C()
{
  result = qword_27C916710;
  if (!qword_27C916710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916710);
  }

  return result;
}

unint64_t sub_2145F44A0()
{
  result = qword_27C916718;
  if (!qword_27C916718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916718);
  }

  return result;
}

uint64_t sub_2145F4520()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1);
  return sub_2146DA9B8();
}

uint64_t sub_2145F4568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916720, &qword_214768180);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916728, &qword_214768188);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916730, &qword_214768190);
  v35 = *(v11 - 8);
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145F43F8();
  v16 = v36;
  sub_2146DAA08();
  if (v16)
  {
    v17 = a1;
  }

  else
  {
    v30 = v7;
    v36 = a1;
    v18 = v33;
    v19 = v34;
    v20 = sub_2146DA238();
    v21 = (2 * *(v20 + 16)) | 1;
    v37 = v20;
    v38 = v20 + 32;
    v39 = 0;
    v40 = v21;
    v22 = sub_21439DF70();
    if (v22 == 2 || v39 != v40 >> 1)
    {
      v24 = sub_2146D9F58();
      swift_allocError();
      v26 = v25;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v26 = &type metadata for IDSActivitySharingInvitation.SecureCloudUpgradeMessageType;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v35 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v41 = v22;
      if (v22)
      {
        v42 = 1;
        sub_2145F444C();
        sub_2146DA0B8();
        v23 = v35;
        (*(v32 + 8))(v6, v18);
      }

      else
      {
        v42 = 0;
        sub_2145F44A0();
        sub_2146DA0B8();
        v23 = v35;
        (*(v31 + 8))(v10, v30);
      }

      (*(v23 + 8))(v14, v11);
      swift_unknownObjectRelease();
      *v19 = v41 & 1;
    }

    v17 = v36;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_2145F4A54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145F4B98(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

uint64_t (*sub_2145F4C70(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF184;
}

uint64_t sub_2145F4D10()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_2145F4D1C(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_2145F4D4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  v11 = *(v3 + 88);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 72), *(v3 + 80));

    *(v3 + 72) = a1;
    *(v3 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145F4E90(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145FF16C;
  }

  return result;
}

void (*sub_2145F4F68(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF170;
}

uint64_t sub_2145F5184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145F5220(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
  sub_214031B48(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145F52E8(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v5;
  v7 = *(v5 + 8);
  v11 = *(v5 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145F5438(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_2145F5524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2145F5594(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v9, v10);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

void (*sub_2145F562C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 36);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

uint64_t sub_2145F56D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(0);
  v6 = a1 + *(result + 40);
  if (*(v6 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v7 = *(v6 + 20);
    *a3 = *(v6 + 16);
    *(a3 + 4) = v7 & 1;
  }

  return result;
}

uint64_t (*sub_2145F57D4(uint64_t a1))()
{
  *a1 = v1;
  v3 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  if (*(v4 + 21))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 20);
    *(a1 + 8) = *(v4 + 16);
    *(a1 + 12) = v5 & 1;
    return sub_2145FF17C;
  }

  return result;
}

uint64_t sub_2145F58C8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 40));
  v6 = *v4;
  v5 = v4[1];
  v7 = *(v4 + 4);
  v8 = *(v4 + 20);
  v9 = *(v4 + 21);
  LOBYTE(v4) = *(v4 + 22);
  *a3 = v6;
  *(a3 + 8) = v5;
  *(a3 + 20) = v8;
  *(a3 + 16) = v7;
  *(a3 + 21) = v9;
  *(a3 + 22) = v4;
}

uint64_t sub_2145F5938(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *(a1 + 4);
  v8 = *(a1 + 20);
  v9 = *(a1 + 21);
  v10 = *(a1 + 22);
  v11 = a2 + *(a5(0) + 40);
  v12 = *(v11 + 8);

  *v11 = v6;
  *(v11 + 8) = v5;
  *(v11 + 20) = v8;
  *(v11 + 16) = v7;
  *(v11 + 21) = v9;
  *(v11 + 22) = v10;
  return result;
}

uint64_t (*sub_2145F59C0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 20);
  v10 = *(v6 + 4);
  v11 = *(v6 + 21);
  LOBYTE(v6) = *(v6 + 22);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v10;
  *(v4 + 20) = v9;
  *(v4 + 21) = v11;
  *(v4 + 22) = v6;

  return sub_2145FF180;
}

void sub_2145F5A74(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3] + *(*a1 + 8);
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 4) | (*(*a1 + 20) << 32);
  v7 = *(*a1 + 21);
  v8 = *(*a1 + 22);
  v9 = *(v3 + 8);
  if (a2)
  {
    v10 = (*a1)[1];

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 20) = BYTE4(v6);
    *(v3 + 16) = v6;
    *(v3 + 21) = v7;
    *(v3 + 22) = v8;
    v11 = v2[1];
  }

  else
  {
    v12 = *(v3 + 8);

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 20) = BYTE4(v6);
    *(v3 + 21) = v7;
    *(v3 + 22) = v8;
  }

  free(v2);
}

uint64_t sub_2145F5B40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *v2;
  v7 = *(v2 + 8);
  v11 = *(v3 + 32);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 16), *(v3 + 24));

    *(v3 + 16) = a1;
    *(v3 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145F5C84(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

uint64_t (*sub_2145F5D5C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF184;
}

void (*sub_2145F5DFC(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439DFB0;
  }

  return result;
}

uint64_t (*sub_2145F5ED4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF184;
}

void (*sub_2145F5F74(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145DF56C;
  }

  return result;
}

void (*sub_2145F604C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145DF570;
}

uint64_t sub_2145F60EC()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_2145F60F8(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_2145F6128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 32);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_2145F619C(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145F624C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v11 = *(v3 + 48);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 32), *(v3 + 40));

    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145F6390(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145FF164;
  }

  return result;
}

uint64_t sub_2145F6468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  *a2 = *(a1 + 16);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_2145F64BC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v9, v10);
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t (*sub_2145F6544(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145FF168;
}

uint64_t sub_2145F65E4(uint64_t a1)
{
  v2 = sub_2145F706C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F6620(uint64_t a1)
{
  v2 = sub_2145F706C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2145F665C()
{
  v1 = *v0;
  v2 = 0x747065636361;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x4164696C61766E69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2145F6708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2145FEEF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2145F6730(uint64_t a1)
{
  v2 = sub_2145F6EC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F676C(uint64_t a1)
{
  v2 = sub_2145F6EC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F67A8(uint64_t a1)
{
  v2 = sub_2145F7018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F67E4(uint64_t a1)
{
  v2 = sub_2145F7018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F6820(uint64_t a1)
{
  v2 = sub_2145F6FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F685C(uint64_t a1)
{
  v2 = sub_2145F6FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F6898(uint64_t a1)
{
  v2 = sub_2145F6F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F68D4(uint64_t a1)
{
  v2 = sub_2145F6F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F6910(uint64_t a1)
{
  v2 = sub_2145F6F1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F694C(uint64_t a1)
{
  v2 = sub_2145F6F1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F6988(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916738, &qword_214768198);
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  MEMORY[0x28223BE20](v3);
  v46 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916740, &qword_2147681A0);
  v44 = *(v6 - 8);
  v45 = v6;
  v7 = *(v44 + 64);
  MEMORY[0x28223BE20](v6);
  v43 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916748, &qword_2147681A8);
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916750, &qword_2147681B0);
  v50 = *(v12 - 8);
  v51 = v12;
  v13 = *(v50 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916758, &qword_2147681B8);
  v49 = *(v16 - 8);
  v17 = *(v49 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916760, &qword_2147681C0);
  v20 = *(v52 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v52);
  v22 = *v1;
  v24 = a1[3];
  v23 = a1[4];
  v25 = a1;
  v27 = &v40 - v26;
  __swift_project_boxed_opaque_existential_1(v25, v24);
  sub_2145F6EC8();
  sub_2146DAA28();
  v28 = (v20 + 8);
  if (v22 <= 1)
  {
    v33 = v27;
    v35 = v49;
    v34 = v50;
    v36 = v15;
    v37 = v51;
    if (v22)
    {
      v54 = 1;
      sub_2145F7018();
      v38 = v52;
      sub_2146DA288();
      (*(v34 + 8))(v36, v37);
    }

    else
    {
      v53 = 0;
      sub_2145F706C();
      v38 = v52;
      sub_2146DA288();
      (*(v35 + 8))(v19, v16);
    }

    return (*v28)(v33, v38);
  }

  else
  {
    if (v22 == 2)
    {
      v55 = 2;
      sub_2145F6FC4();
      v29 = v40;
      v30 = v52;
      sub_2146DA288();
      v32 = v41;
      v31 = v42;
    }

    else if (v22 == 3)
    {
      v56 = 3;
      sub_2145F6F70();
      v29 = v43;
      v30 = v52;
      sub_2146DA288();
      v32 = v44;
      v31 = v45;
    }

    else
    {
      v57 = 4;
      sub_2145F6F1C();
      v29 = v46;
      v30 = v52;
      sub_2146DA288();
      v32 = v47;
      v31 = v48;
    }

    (*(v32 + 8))(v29, v31);
    return (*v28)(v27, v30);
  }
}

unint64_t sub_2145F6EC8()
{
  result = qword_27C916768;
  if (!qword_27C916768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916768);
  }

  return result;
}

unint64_t sub_2145F6F1C()
{
  result = qword_27C916770;
  if (!qword_27C916770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916770);
  }

  return result;
}

unint64_t sub_2145F6F70()
{
  result = qword_27C916778;
  if (!qword_27C916778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916778);
  }

  return result;
}

unint64_t sub_2145F6FC4()
{
  result = qword_27C916780;
  if (!qword_27C916780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916780);
  }

  return result;
}

unint64_t sub_2145F7018()
{
  result = qword_27C916788;
  if (!qword_27C916788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916788);
  }

  return result;
}

unint64_t sub_2145F706C()
{
  result = qword_27C916790;
  if (!qword_27C916790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916790);
  }

  return result;
}

uint64_t sub_2145F70C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v67 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916798, &qword_2147681C8);
  v60 = *(v63 - 8);
  v3 = *(v60 + 64);
  MEMORY[0x28223BE20](v63);
  v64 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167A0, &qword_2147681D0);
  v6 = *(v5 - 8);
  v61 = v5;
  v62 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v53 - v8;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167A8, &qword_2147681D8);
  v56 = *(v59 - 8);
  v9 = *(v56 + 64);
  MEMORY[0x28223BE20](v59);
  v65 = &v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167B0, &qword_2147681E0);
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167B8, &qword_2147681E8);
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167C0, &unk_2147681F0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v53 - v22;
  v25 = a1[3];
  v24 = a1[4];
  v68 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_2145F6EC8();
  v26 = v69;
  sub_2146DAA08();
  if (v26)
  {
    goto LABEL_11;
  }

  v27 = v18;
  v53 = v15;
  v54 = 0;
  v29 = v65;
  v28 = v66;
  v69 = v20;
  v30 = v67;
  v31 = v19;
  v32 = sub_2146DA238();
  v33 = (2 * *(v32 + 16)) | 1;
  v70 = v32;
  v71 = v32 + 32;
  v72 = 0;
  v73 = v33;
  v34 = sub_214396FD0();
  if (v34 == 5 || v72 != v73 >> 1)
  {
    v39 = sub_2146D9F58();
    swift_allocError();
    v41 = v40;
    v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
    *v41 = &type metadata for IDSActivitySharingInvitation.SecureCloudInviteResponseType;
    sub_2146DA0E8();
    sub_2146D9F28();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
    swift_willThrow();
    (*(v69 + 8))(v23, v19);
    goto LABEL_10;
  }

  v74 = v34;
  if (v34 <= 1u)
  {
    if (v34)
    {
      v75 = 1;
      sub_2145F7018();
      v51 = v14;
      v46 = v19;
      v52 = v54;
      sub_2146DA0B8();
      if (v52)
      {
        v48 = v69;
        goto LABEL_23;
      }

      (*(v57 + 8))(v51, v58);
      (*(v69 + 8))(v23, v19);
    }

    else
    {
      v75 = 0;
      sub_2145F706C();
      v45 = v54;
      sub_2146DA0B8();
      if (v45)
      {
        (*(v69 + 8))(v23, v19);
        goto LABEL_10;
      }

      (*(v55 + 8))(v27, v53);
      (*(v69 + 8))(v23, v19);
    }

    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
    goto LABEL_30;
  }

  v35 = v30;
  if (v34 == 2)
  {
    v75 = 2;
    sub_2145F6FC4();
    v46 = v31;
    v47 = v54;
    sub_2146DA0B8();
    v48 = v69;
    if (!v47)
    {
      (*(v56 + 8))(v29, v59);
      (*(v48 + 8))(v23, v46);
LABEL_25:
      swift_unknownObjectRelease();
      v43 = v68;
      goto LABEL_30;
    }

LABEL_23:
    (*(v48 + 8))(v23, v46);
    goto LABEL_10;
  }

  v36 = v23;
  v37 = v69;
  if (v34 != 3)
  {
    v75 = 4;
    sub_2145F6F1C();
    v49 = v64;
    v50 = v54;
    sub_2146DA0B8();
    if (v50)
    {
      (*(v37 + 8))(v36, v31);
      goto LABEL_10;
    }

    (*(v60 + 8))(v49, v63);
    (*(v37 + 8))(v36, v31);
    swift_unknownObjectRelease();
    v43 = v68;
    v35 = v30;
LABEL_30:
    *v35 = v74;
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v75 = 3;
  sub_2145F6F70();
  v38 = v54;
  sub_2146DA0B8();
  if (!v38)
  {
    (*(v62 + 8))(v28, v61);
    (*(v37 + 8))(v36, v31);
    goto LABEL_25;
  }

  (*(v37 + 8))(v36, v31);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v43 = v68;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_2145F78EC@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x169uLL);
  memcpy(a1, v1, 0x169uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909F60, &qword_2146F5B98);
}

void *sub_2145F7950(const void *a1)
{
  memcpy(__dst, v1, 0x169uLL);
  sub_213FB2DF4(__dst, &qword_27C909F60, &qword_2146F5B98);
  return memcpy(v1, a1, 0x169uLL);
}

uint64_t sub_2145F79D8(uint64_t a1)
{
  v3 = *(v1 + 368);

  *(v1 + 368) = a1;
  return result;
}

uint64_t sub_2145F7A2C(uint64_t a1)
{
  v3 = *(v1 + 376);

  *(v1 + 376) = a1;
  return result;
}

uint64_t sub_2145F7A78()
{
  result = *(v0 + 384);
  v2 = *(v0 + 392);
  return result;
}

uint64_t sub_2145F7A84(uint64_t result, char a2)
{
  *(v2 + 384) = result;
  *(v2 + 392) = a2 & 1;
  return result;
}

void (*sub_2145F7AB8(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21439BAB0;
  }

  return result;
}

void (*sub_2145F7B90(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F7C30;
}

uint64_t sub_2145F7C60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v11 = *(v3 + 72);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 56), *(v3 + 64));

    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2145F7DA4(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 56);
  *(v3 + 24) = v5;
  v6 = *(v1 + 64);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144F652C;
  }

  return result;
}

void (*sub_2145F7E7C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2144F65D0;
}

uint64_t sub_2145F7F1C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2145F7F4C(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2145F7FA8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12[0] = a1;
  v12[1] = a2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v11 = *(v3 + 48);
  v10[0] = 0x6E776F6E6B6E753CLL;
  v10[1] = 0xE90000000000003ELL;
  v10[2] = 0xD00000000000001CLL;
  v10[3] = 0x800000021478A360;
  if (v6(v12, &v11, v10))
  {
    sub_213FDC6D0(*(v3 + 32), *(v3 + 40));

    *(v3 + 32) = a1;
    *(v3 + 40) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v9 = 0x6E776F6E6B6E753CLL;
    v9[1] = 0xE90000000000003ELL;
    v9[2] = 0xD00000000000001CLL;
    v9[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2145F80EC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 32);
  *(v3 + 24) = v5;
  v6 = *(v1 + 40);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2145F81C4;
  }

  return result;
}

void sub_2145F81C8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v14 = **a1;
    v15 = v4;
    v10 = *(v3 + 16);
    v11 = *(v3 + 24);
    v16 = *(v3 + 48);
    v17 = 0x6E776F6E6B6E753CLL;
    v18 = 0xE90000000000003ELL;
    v19 = 0xD00000000000001CLL;
    v20 = 0x800000021478A360;
    if (v10(&v14, &v16, &v17))
    {
      v12 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v12 + 32) = v5;
      *(v12 + 40) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v13 = 0x6E776F6E6B6E753CLL;
    v13[1] = 0xE90000000000003ELL;
    v13[2] = 0xD00000000000001CLL;
    v13[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v14 = **a1;
  v15 = v4;
  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  v16 = *(v3 + 48);
  v17 = 0x6E776F6E6B6E753CLL;
  v18 = 0xE90000000000003ELL;
  v19 = 0xD00000000000001CLL;
  v20 = 0x800000021478A360;

  if ((v7(&v14, &v16, &v17) & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  v9 = v2[1];

LABEL_6:

  free(v2);
}

uint64_t (*sub_2145F8398(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  *v4 = *(v1 + 16);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2145F8438;
}

void sub_2145F843C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 24);
  v9 = *(v3 + 32);
  v11 = *(v3 + 40);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v11);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_213FDC6D0(v14, v15);
  }

  else
  {
    v16 = *(v3 + 24);

    sub_213FDC6D0(v9, v11);
    *(v3 + 16) = v5;
    *(v3 + 24) = v4;
    *(v3 + 32) = v7;
    *(v3 + 40) = v6;
    *(v3 + 48) = v8;
  }

  free(v2);
}

uint64_t sub_2145F8680@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v8, v7, &qword_27C90A020, &qword_2146F5BE0);
}

__n128 sub_2145F86DC(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A020, &qword_2146F5BE0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_2145F876C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 96);
  if (v3 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(a1 + 88);
    *a2 = v4;
    a2[1] = v3;

    return sub_213FDCA18(v4, v3);
  }

  return result;
}

uint64_t sub_2145F87E0(uint64_t a1)
{
  sub_214032118(*a1, *(a1 + 8), 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_2145F8890(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145F895C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 96);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 88);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2145F89FC;
  }

  return result;
}

uint64_t sub_2145F89FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    sub_213FDCA18(*a1, v3);
    sub_214032118(v2, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

    sub_213FDC6BC(v2, v3);
  }

  else
  {
    sub_214032118(*a1, v3, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
  }

  return sub_213FDC6BC(v2, v3);
}

uint64_t sub_2145F8B3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  v4 = *(a1 + 96);
  v5 = *(a1 + 104);
  *a2 = *(a1 + 72);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_21404F7E0(v3, v4);
}

uint64_t sub_2145F8B90(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);

  sub_21404F7E0(v5, v6);

  result = sub_214032564(v9, v10);
  *(a2 + 72) = v4;
  *(a2 + 80) = v3;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 104) = v7;
  return result;
}

void (*sub_2145F8C18(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 104);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145F8CB8;
}

void sub_2145F8CB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v10 = *(v3 + 80);
  v9 = *(v3 + 88);
  v11 = *(v3 + 96);
  if (a2)
  {
    v12 = (*a1)[1];

    sub_21404F7E0(v7, v6);

    sub_214032564(v9, v11);
    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v7;
    *(v3 + 96) = v6;
    *(v3 + 104) = v8;
    v13 = v2[1];
    v14 = v2[2];
    v15 = v2[3];

    sub_214032564(v14, v15);
  }

  else
  {
    v16 = *(v3 + 80);

    sub_214032564(v9, v11);
    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v7;
    *(v3 + 96) = v6;
    *(v3 + 104) = v8;
  }

  free(v2);
}

uint64_t sub_2145F8D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 137))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 136);
    *a2 = *(result + 128);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2145F8E2C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 137))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 136);
    *a1 = *(v1 + 128);
    *(a1 + 8) = v2 & 1;
    return sub_2145F8EC0;
  }

  return result;
}

uint64_t sub_2145F8EF4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 120);

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  *(a2 + 128) = v5;
  *(a2 + 136) = v6;
  *(a2 + 137) = v7;
  *(a2 + 138) = v8;
  return result;
}

void (*sub_2145F8F68(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 120);
  v6 = *(v1 + 128);
  v7 = *(v1 + 136);
  v8 = *(v1 + 137);
  v9 = *(v1 + 138);
  *v4 = *(v1 + 112);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2145F9008;
}

void sub_2145F9008(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 120);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    *(v3 + 137) = v8;
    *(v3 + 138) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 120);

    *(v3 + 112) = v5;
    *(v3 + 120) = v4;
    *(v3 + 128) = v6;
    *(v3 + 136) = v7;
    *(v3 + 137) = v8;
    *(v3 + 138) = v9;
  }

  free(v2);
}

uint64_t sub_2145F90C8()
{
  result = *(v0 + 144);
  v2 = *(v0 + 152);
  return result;
}

uint64_t sub_2145F90D4(uint64_t result, char a2)
{
  *(v2 + 144) = result;
  *(v2 + 152) = a2 & 1;
  return result;
}

uint64_t sub_2145F9104()
{
  result = *(v0 + 160);
  v2 = *(v0 + 168);
  return result;
}

uint64_t sub_2145F9110(uint64_t result, char a2)
{
  *(v2 + 160) = result;
  *(v2 + 168) = a2 & 1;
  return result;
}

uint64_t sub_2145F9140()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t sub_2145F914C(uint64_t result, char a2)
{
  *(v2 + 176) = result;
  *(v2 + 184) = a2 & 1;
  return result;
}

uint64_t sub_2145F917C()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t sub_2145F9188(uint64_t result, char a2)
{
  *(v2 + 192) = result;
  *(v2 + 200) = a2 & 1;
  return result;
}

uint64_t sub_2145F91B8()
{
  result = *(v0 + 208);
  v2 = *(v0 + 216);
  return result;
}

uint64_t sub_2145F91C4(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

uint64_t sub_2145F91F4()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t sub_2145F9200(uint64_t result, char a2)
{
  *(v2 + 224) = result;
  *(v2 + 232) = a2 & 1;
  return result;
}

uint64_t sub_2145F9230()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t sub_2145F923C(uint64_t result, char a2)
{
  *(v2 + 240) = result;
  *(v2 + 248) = a2 & 1;
  return result;
}

uint64_t sub_2145F926C()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t sub_2145F9278(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t sub_2145F92A8()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t sub_2145F92B4(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t sub_2145F92E4()
{
  result = *(v0 + 288);
  v2 = *(v0 + 296);
  return result;
}

uint64_t sub_2145F92F0(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t sub_2145F9320()
{
  result = *(v0 + 304);
  v2 = *(v0 + 312);
  return result;
}

uint64_t sub_2145F932C(uint64_t result, char a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2 & 1;
  return result;
}

uint64_t sub_2145F935C()
{
  result = *(v0 + 320);
  v2 = *(v0 + 328);
  return result;
}

uint64_t sub_2145F9368(uint64_t result, char a2)
{
  *(v2 + 320) = result;
  *(v2 + 328) = a2 & 1;
  return result;
}

uint64_t sub_2145F9398()
{
  result = *(v0 + 336);
  v2 = *(v0 + 344);
  return result;
}

uint64_t sub_2145F93A4(uint64_t result, char a2)
{
  *(v2 + 336) = result;
  *(v2 + 344) = a2 & 1;
  return result;
}

uint64_t sub_2145F93D4()
{
  result = *(v0 + 352);
  v2 = *(v0 + 360);
  return result;
}

uint64_t sub_2145F93E0(uint64_t result, char a2)
{
  *(v2 + 352) = result;
  *(v2 + 360) = a2 & 1;
  return result;
}

uint64_t sub_2145F9410@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v8, v7, &qword_27C90A020, &qword_2146F5BE0);
}

__n128 sub_2145F946C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A020, &qword_2146F5BE0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_2145F94FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 97))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(result + 96);
    *a2 = *(result + 88);
    *(a2 + 8) = v2 & 1;
  }

  return result;
}

uint64_t (*sub_2145F9590(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  if (*(v1 + 97))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 96);
    *a1 = *(v1 + 88);
    *(a1 + 8) = v2 & 1;
    return sub_2145F9624;
  }

  return result;
}

uint64_t sub_2145F9658(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *(a1 + 26);
  v9 = *(a2 + 80);

  *(a2 + 72) = v4;
  *(a2 + 80) = v3;
  *(a2 + 88) = v5;
  *(a2 + 96) = v6;
  *(a2 + 97) = v7;
  *(a2 + 98) = v8;
  return result;
}

void (*sub_2145F96CC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 96);
  v8 = *(v1 + 97);
  v9 = *(v1 + 98);
  *v4 = *(v1 + 72);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 25) = v8;
  *(v4 + 26) = v9;

  return sub_2145F976C;
}

void sub_2145F976C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 25);
  v9 = *(*a1 + 26);
  v10 = *(v3 + 80);
  if (a2)
  {
    v11 = (*a1)[1];

    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v6;
    *(v3 + 96) = v7;
    *(v3 + 97) = v8;
    *(v3 + 98) = v9;
    v12 = v2[1];
  }

  else
  {
    v13 = *(v3 + 80);

    *(v3 + 72) = v5;
    *(v3 + 80) = v4;
    *(v3 + 88) = v6;
    *(v3 + 96) = v7;
    *(v3 + 97) = v8;
    *(v3 + 98) = v9;
  }

  free(v2);
}

uint64_t sub_2145F982C()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t sub_2145F9838(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_2145F9868()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_2145F9874(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_2145F98A4()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t sub_2145F98B0(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

uint64_t sub_2145F98E0()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t sub_2145F98EC(uint64_t result, char a2)
{
  *(v2 + 152) = result;
  *(v2 + 160) = a2 & 1;
  return result;
}

uint64_t sub_2145F991C()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t sub_2145F9928(uint64_t result, char a2)
{
  *(v2 + 168) = result;
  *(v2 + 176) = a2 & 1;
  return result;
}

uint64_t sub_2145F9958()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t sub_2145F9964(uint64_t result, char a2)
{
  *(v2 + 184) = result;
  *(v2 + 192) = a2 & 1;
  return result;
}

uint64_t sub_2145F9994()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);

  return v1;
}

uint64_t sub_2145F99C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 208);

  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return result;
}

uint64_t sub_2145F9A7C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);

  return v1;
}

uint64_t sub_2145F9AAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 232);

  *(v2 + 224) = a1;
  *(v2 + 232) = a2;
  return result;
}

uint64_t sub_2145F9B04()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  return v1;
}

uint64_t sub_2145F9B34(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 248);

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t sub_2145F9B8C()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t sub_2145F9B98(uint64_t result, char a2)
{
  *(v2 + 256) = result;
  *(v2 + 264) = a2 & 1;
  return result;
}

uint64_t sub_2145F9BC8()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return v1;
}

uint64_t sub_2145F9BF8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 280);

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
  return result;
}

uint64_t sub_2145F9C88()
{
  v1 = 0x7552646564697567;
  v2 = 0x697461746964656DLL;
  if (*v0 != 2)
  {
    v2 = 0x6F65646976;
  }

  if (*v0)
  {
    v1 = 0x6157646564697567;
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

uint64_t sub_2145F9D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2145FED80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2145F9D38(uint64_t a1)
{
  v2 = sub_2145FA3C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9D74(uint64_t a1)
{
  v2 = sub_2145FA3C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9DB0(uint64_t a1)
{
  v2 = sub_2145FA518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9DEC(uint64_t a1)
{
  v2 = sub_2145FA518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9E28(uint64_t a1)
{
  v2 = sub_2145FA4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9E64(uint64_t a1)
{
  v2 = sub_2145FA4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9EA0(uint64_t a1)
{
  v2 = sub_2145FA470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9EDC(uint64_t a1)
{
  v2 = sub_2145FA470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9F18(uint64_t a1)
{
  v2 = sub_2145FA41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2145F9F54(uint64_t a1)
{
  v2 = sub_2145FA41C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2145F9F90(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167C8, &qword_214768200);
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167D0, &qword_214768208);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167D8, &qword_214768210);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9);
  v30 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167E0, &qword_214768218);
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9167E8, &qword_214768220);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  v21 = *v1;
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2145FA3C8();
  sub_2146DAA28();
  v23 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v41 = 2;
      sub_2145FA470();
      v24 = v33;
      sub_2146DA288();
      v26 = v34;
      v25 = v35;
    }

    else
    {
      v42 = 3;
      sub_2145FA41C();
      v24 = v36;
      sub_2146DA288();
      v26 = v37;
      v25 = v38;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v40 = 1;
    sub_2145FA4C4();
    v24 = v30;
    sub_2146DA288();
    v26 = v31;
    v25 = v32;
LABEL_8:
    (*(v26 + 8))(v24, v25);
    return (*v23)(v20, v16);
  }

  v39 = 0;
  sub_2145FA518();
  sub_2146DA288();
  (*(v28 + 8))(v15, v29);
  return (*v23)(v20, v16);
}

unint64_t sub_2145FA3C8()
{
  result = qword_27C9167F0;
  if (!qword_27C9167F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9167F0);
  }

  return result;
}

unint64_t sub_2145FA41C()
{
  result = qword_27C9167F8;
  if (!qword_27C9167F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9167F8);
  }

  return result;
}

unint64_t sub_2145FA470()
{
  result = qword_27C916800;
  if (!qword_27C916800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916800);
  }

  return result;
}

unint64_t sub_2145FA4C4()
{
  result = qword_27C916808;
  if (!qword_27C916808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916808);
  }

  return result;
}

unint64_t sub_2145FA518()
{
  result = qword_27C916810;
  if (!qword_27C916810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916810);
  }

  return result;
}

uint64_t sub_2145FA56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916818, &qword_214768228);
  v46 = *(v48 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x28223BE20](v48);
  v51 = &v41 - v4;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916820, &qword_214768230);
  v45 = *(v49 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v49);
  v50 = &v41 - v6;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916828, &qword_214768238);
  v43 = *(v47 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v47);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916830, &qword_214768240);
  v44 = *(v10 - 8);
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C916838, &qword_214768248);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_2145FA3C8();
  v21 = v53;
  sub_2146DAA08();
  if (!v21)
  {
    v22 = v13;
    v41 = v10;
    v42 = 0;
    v23 = v9;
    v24 = v50;
    v25 = v51;
    v53 = v15;
    v26 = v52;
    v27 = v18;
    v28 = sub_2146DA238();
    v29 = (2 * *(v28 + 16)) | 1;
    v55 = v28;
    v56 = v28 + 32;
    v57 = 0;
    v58 = v29;
    v30 = sub_21439DF6C();
    if (v30 == 4 || v57 != v58 >> 1)
    {
      v32 = sub_2146D9F58();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A20, qword_21473BDD0) + 48);
      *v34 = &type metadata for IDSActivitySharingInvitation.ActivitySharingSeymourMediaType;
      sub_2146DA0E8();
      sub_2146D9F28();
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
LABEL_9:
      (*(v53 + 8))(v18, v14);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v54);
    }

    v59 = v30;
    if (v30 <= 1u)
    {
      if (v30)
      {
        v60 = 1;
        sub_2145FA4C4();
        v39 = v42;
        sub_2146DA0B8();
        if (!v39)
        {
          (*(v43 + 8))(v23, v47);
          goto LABEL_17;
        }
      }

      else
      {
        v60 = 0;
        sub_2145FA518();
        v31 = v42;
        sub_2146DA0B8();
        if (!v31)
        {
          (*(v44 + 8))(v22, v41);
LABEL_17:
          (*(v53 + 8))(v18, v14);
LABEL_22:
          swift_unknownObjectRelease();
          *v26 = v59;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }

      goto LABEL_9;
    }

    v37 = v53;
    if (v30 == 2)
    {
      v60 = 2;
      sub_2145FA470();
      v38 = v42;
      sub_2146DA0B8();
      if (!v38)
      {
        (*(v45 + 8))(v24, v49);
LABEL_21:
        (*(v37 + 8))(v27, v14);
        goto LABEL_22;
      }
    }

    else
    {
      v60 = 3;
      sub_2145FA41C();
      v40 = v42;
      sub_2146DA0B8();
      if (!v40)
      {
        (*(v46 + 8))(v25, v48);
        goto LABEL_21;
      }
    }

    (*(v37 + 8))(v27, v14);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_2145FABF8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_213FB2E54(v8, v7, &qword_27C90A020, &qword_2146F5BE0);
}

__n128 sub_2145FAC54(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C90A020, &qword_2146F5BE0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_2145FACE4()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_2145FACF0(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t sub_2145FAD20()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t sub_2145FAD2C(uint64_t result, char a2)
{
  *(v2 + 88) = result;
  *(v2 + 96) = a2 & 1;
  return result;
}

uint64_t sub_2145FAD5C()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t sub_2145FAD68(uint64_t result, char a2)
{
  *(v2 + 104) = result;
  *(v2 + 112) = a2 & 1;
  return result;
}

uint64_t sub_2145FAD98()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t sub_2145FADA4(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_2145FADD4()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t sub_2145FAE04(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 144);

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t sub_2145FAE5C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t sub_2145FAE8C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t sub_2145FAEE4(uint64_t a1, unint64_t a2)
{
  sub_214032118(a1, a2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return sub_213FDC6BC(a1, a2);
}

uint64_t (*sub_2145FAFAC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v2 = *(v1 + 24);
  if (v2 >> 60 == 11)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v4 = *(v1 + 16);
    *a1 = v4;
    a1[1] = v2;
    sub_213FDCA18(v4, v2);
    return sub_2143DCEB8;
  }

  return result;
}

void (*sub_2145FB04C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_21404F7E0(v6, v7);
  return sub_2145FB0EC;
}

void sub_2145FB118(uint64_t **a1, char a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[5];
  v8 = **a1;
  v7 = (*a1)[1];
  v10 = (*a1)[2];
  v9 = (*a1)[3];
  v20 = *(*a1 + 32);
  v12 = *(v6 + 8);
  v11 = *(v6 + 16);
  v13 = *(v6 + 24);
  if (a2)
  {

    a4(v10, v9);

    a3(v11, v13);
    *v6 = v8;
    *(v6 + 8) = v7;
    *(v6 + 16) = v10;
    *(v6 + 24) = v9;
    *(v6 + 32) = v20;
    v15 = v5[1];
    v16 = v5[2];
    v17 = v5[3];

    a3(v16, v17);
  }

  else
  {
    v18 = *(v6 + 8);

    a3(v11, v13);
    *v6 = v8;
    *(v6 + 8) = v7;
    *(v6 + 16) = v10;
    *(v6 + 24) = v9;
    *(v6 + 32) = v20;
  }

  free(v5);
}

uint64_t sub_2145FB22C()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_2145FB238(uint64_t result, char a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2 & 1;
  return result;
}

uint64_t sub_2145FB268()
{
  result = *(v0 + 56);
  v2 = *(v0 + 64);
  return result;
}

uint64_t sub_2145FB274(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

uint64_t sub_2145FB2A4()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2145FB2D4(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2145FB32C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_2145FB35C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_2145FB3B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_2145FB3E4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2145FB43C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_2145FB46C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_2145FB4E4(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 68) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2145FB514@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 72), 0x189uLL);
  memcpy(a1, (v1 + 72), 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145FB578(const void *a1)
{
  memcpy(__dst, (v1 + 72), 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy((v1 + 72), a1, 0x189uLL);
}

uint64_t sub_2145FB5F8()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2145FB628(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2145FB6A0(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 20) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2145FB6D0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_2145FB700(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2145FB758@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10[0] = v3;
  *(v10 + 9) = *(v1 + 97);
  v4 = *(v10 + 9);
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  *(a1 + 57) = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_213FB2E54(v8, &v7, &qword_27C909E68, &qword_214761070);
}

__n128 sub_2145FB7BC(__int128 *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v9[0] = v4;
  *(v9 + 9) = *(v1 + 97);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  sub_213FB2DF4(v8, &qword_27C909E68, &qword_214761070);
  v5 = *a1;
  *(v1 + 56) = a1[1];
  v6 = a1[3];
  *(v1 + 72) = a1[2];
  *(v1 + 88) = v6;
  result = *(a1 + 57);
  *(v1 + 97) = result;
  *(v1 + 40) = v5;
  return result;
}

uint64_t sub_2145FB85C()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t sub_2145FB88C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 128);

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t sub_2145FB904(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 140) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2145FB934@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 144), 0x189uLL);
  memcpy(a1, (v1 + 144), 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145FB998(const void *a1)
{
  memcpy(__dst, (v1 + 144), 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy((v1 + 144), a1, 0x189uLL);
}

uint64_t sub_2145FBA18()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2145FBA48(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_2145FBAA0@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10[0] = v2;
  *(v10 + 9) = *(v1 + 73);
  v3 = *(v10 + 9);
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  *(a1 + 57) = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_213FB2E54(v8, &v7, &qword_27C909E68, &qword_214761070);
}

__n128 sub_2145FBAFC(uint64_t a1)
{
  v3 = v1[4];
  v7[2] = v1[3];
  v8[0] = v3;
  *(v8 + 9) = *(v1 + 73);
  v4 = v1[2];
  v7[0] = v1[1];
  v7[1] = v4;
  sub_213FB2DF4(v7, &qword_27C909E68, &qword_214761070);
  v5 = *(a1 + 48);
  v1[3] = *(a1 + 32);
  v1[4] = v5;
  *(v1 + 73) = *(a1 + 57);
  result = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = result;
  return result;
}

uint64_t sub_2145FBB8C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), 0x189uLL);
  memcpy(a1, (v1 + 96), 0x189uLL);
  return sub_213FB2E54(__dst, v4, &qword_27C909E50, &unk_2146F5B30);
}

void *sub_2145FBBF0(const void *a1)
{
  memcpy(__dst, (v1 + 96), 0x189uLL);
  sub_213FB2DF4(__dst, &qword_27C909E50, &unk_2146F5B30);
  return memcpy((v1 + 96), a1, 0x189uLL);
}

uint64_t sub_2145FBC70()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2145FBCA0(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_2145FBCFC()
{
  result = qword_27C916840;
  if (!qword_27C916840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916840);
  }

  return result;
}

uint64_t sub_2145FBD7C(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C907460, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  result = sub_2145FBE00(&qword_27C9074F0, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145FBE00(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2145FBE48(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C907470, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  result = sub_2145FBE00(&qword_27C907500, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2145FBECC(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C909DD8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
  result = sub_2145FBE00(&qword_27C909DF0, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145FBF54()
{
  result = qword_27C916848;
  if (!qword_27C916848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916848);
  }

  return result;
}

uint64_t sub_2145FBFD4(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C907480, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  result = sub_2145FBE00(&qword_27C907510, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145FC0E0()
{
  result = qword_27C916850;
  if (!qword_27C916850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916850);
  }

  return result;
}

uint64_t sub_2145FC1B8(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C909E88, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  result = sub_2145FBE00(&qword_27C909EC0, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145FC298()
{
  result = qword_27C916858;
  if (!qword_27C916858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916858);
  }

  return result;
}

unint64_t sub_2145FC39C()
{
  result = qword_27C916860;
  if (!qword_27C916860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916860);
  }

  return result;
}

unint64_t sub_2145FC3F0()
{
  result = qword_27C916868;
  if (!qword_27C916868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916868);
  }

  return result;
}

unint64_t sub_2145FC470()
{
  result = qword_27C916870;
  if (!qword_27C916870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916870);
  }

  return result;
}

unint64_t sub_2145FC4C4()
{
  result = qword_27C916878;
  if (!qword_27C916878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916878);
  }

  return result;
}

unint64_t sub_2145FC544()
{
  result = qword_27C916880;
  if (!qword_27C916880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916880);
  }

  return result;
}

unint64_t sub_2145FC598()
{
  result = qword_27C916888;
  if (!qword_27C916888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916888);
  }

  return result;
}

uint64_t sub_2145FC618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2145FC654()
{
  result = qword_27C916890;
  if (!qword_27C916890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916890);
  }

  return result;
}

unint64_t sub_2145FC6A8()
{
  result = qword_27C916898;
  if (!qword_27C916898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916898);
  }

  return result;
}

uint64_t sub_2145FC6FC(uint64_t a1)
{
  *(a1 + 8) = sub_2145FBE00(&qword_27C90CB08, type metadata accessor for IDSActivitySharingInvitation);
  result = sub_2145FBE00(&qword_27C90CAD0, type metadata accessor for IDSActivitySharingInvitation);
  *(a1 + 16) = result;
  return result;
}

uint64_t keypath_set_77Tm(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = *a1;
  v6 = *(a1 + 4);
  v7 = *(a5(0) + 40);
  return sub_2140300F8(v5 | (v6 << 32));
}

void sub_2145FC804()
{
  sub_21403BEC8(319, &qword_27C9168B0);
  if (v0 <= 0x3F)
  {
    sub_2145FC994(319, &qword_27C9168B8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteRequest);
    if (v1 <= 0x3F)
    {
      sub_2145FC994(319, &qword_27C9168C0, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteResponse);
      if (v2 <= 0x3F)
      {
        sub_2145FC994(319, &qword_27C9168C8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudUpgradeMessage);
        if (v3 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_27C9168D0);
          if (v4 <= 0x3F)
          {
            sub_21403BEC8(319, &qword_27C9168D8);
            if (v5 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_27C9168E0);
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

void sub_2145FC994(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2145FCA20()
{
  sub_21403BEC8(319, &qword_280B34BD0);
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v1 <= 0x3F)
    {
      sub_2145FC994(319, &qword_27C9168F8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
      if (v2 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_27C916900, &qword_27C905AC0, &unk_2146F3F90);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145FCB60()
{
  sub_21403BEC8(319, &qword_280B34BD0);
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C916918);
      if (v2 <= 0x3F)
      {
        sub_2145FC994(319, &qword_27C9168F8, type metadata accessor for IDSActivitySharingInvitation.SecureCloudInviteUserInfo);
        if (v3 <= 0x3F)
        {
          sub_21409A2B4(319, &qword_27C916900, &qword_27C905AC0, &unk_2146F3F90);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2145FCCC8()
{
  sub_21403BEC8(319, &qword_27C916930);
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C916938);
      if (v2 <= 0x3F)
      {
        sub_2145FC994(319, &qword_27C916940, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2145FCE08()
{
  sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
  if (v0 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BD0);
    if (v1 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C916958);
      if (v2 <= 0x3F)
      {
        sub_2145FC994(319, &qword_27C916940, type metadata accessor for IDSActivitySharingInvitation.SecureCloudShareItem);
        if (v3 <= 0x3F)
        {
          sub_21409A2B4(319, &qword_27C916900, &qword_27C905AC0, &unk_2146F3F90);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2145FCF8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 393))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 368);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145FCFD4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 392) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 393) = 1;
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
      *(result + 368) = (a2 - 1);
      return result;
    }

    *(result + 393) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2145FD0C4()
{
  sub_21403BEC8(319, &qword_280B34BE0);
  if (v0 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v1 <= 0x3F)
    {
      sub_2145FC994(319, &qword_27C9052F8, type metadata accessor for CloudKitSharingToken);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2145FD1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 361))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145FD1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 360) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 361) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 361) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145FD2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 289))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2145FD2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *(result + 288) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 289) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 289) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145FD3B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_2145FD3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2145FD468(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 465))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2145FD4C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 456) = 0;
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
    *(result + 464) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 465) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 465) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2145FD5A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 537))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2145FD600(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 536) = 0;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 537) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 537) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2145FD6FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 489))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2145FD758(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 488) = 0;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 489) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 489) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2145FD9C0()
{
  result = qword_27C916970;
  if (!qword_27C916970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916970);
  }

  return result;
}

unint64_t sub_2145FDA18()
{
  result = qword_27C916978;
  if (!qword_27C916978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916978);
  }

  return result;
}

unint64_t sub_2145FDA70()
{
  result = qword_27C916980;
  if (!qword_27C916980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916980);
  }

  return result;
}

unint64_t sub_2145FDAC8()
{
  result = qword_27C916988;
  if (!qword_27C916988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916988);
  }

  return result;
}

unint64_t sub_2145FDB20()
{
  result = qword_27C916990;
  if (!qword_27C916990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916990);
  }

  return result;
}

unint64_t sub_2145FDB78()
{
  result = qword_27C916998;
  if (!qword_27C916998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916998);
  }

  return result;
}

unint64_t sub_2145FDBD0()
{
  result = qword_27C9169A0;
  if (!qword_27C9169A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169A0);
  }

  return result;
}

unint64_t sub_2145FDC28()
{
  result = qword_27C9169A8;
  if (!qword_27C9169A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169A8);
  }

  return result;
}

unint64_t sub_2145FDC80()
{
  result = qword_27C9169B0;
  if (!qword_27C9169B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169B0);
  }

  return result;
}

unint64_t sub_2145FDCD8()
{
  result = qword_27C9169B8;
  if (!qword_27C9169B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169B8);
  }

  return result;
}

unint64_t sub_2145FDD30()
{
  result = qword_27C9169C0;
  if (!qword_27C9169C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169C0);
  }

  return result;
}

unint64_t sub_2145FDD88()
{
  result = qword_27C9169C8;
  if (!qword_27C9169C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169C8);
  }

  return result;
}

unint64_t sub_2145FDDE0()
{
  result = qword_27C9169D0;
  if (!qword_27C9169D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169D0);
  }

  return result;
}

unint64_t sub_2145FDE38()
{
  result = qword_27C9169D8;
  if (!qword_27C9169D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169D8);
  }

  return result;
}

unint64_t sub_2145FDE90()
{
  result = qword_27C9169E0;
  if (!qword_27C9169E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169E0);
  }

  return result;
}

unint64_t sub_2145FDEE8()
{
  result = qword_27C9169E8;
  if (!qword_27C9169E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169E8);
  }

  return result;
}

unint64_t sub_2145FDF40()
{
  result = qword_27C9169F0;
  if (!qword_27C9169F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169F0);
  }

  return result;
}

unint64_t sub_2145FDF98()
{
  result = qword_27C9169F8;
  if (!qword_27C9169F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C9169F8);
  }

  return result;
}

unint64_t sub_2145FDFF0()
{
  result = qword_27C916A00;
  if (!qword_27C916A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A00);
  }

  return result;
}

unint64_t sub_2145FE048()
{
  result = qword_27C916A08;
  if (!qword_27C916A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A08);
  }

  return result;
}

unint64_t sub_2145FE0A0()
{
  result = qword_27C916A10;
  if (!qword_27C916A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A10);
  }

  return result;
}

unint64_t sub_2145FE0F8()
{
  result = qword_27C916A18;
  if (!qword_27C916A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A18);
  }

  return result;
}

unint64_t sub_2145FE150()
{
  result = qword_27C916A20;
  if (!qword_27C916A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A20);
  }

  return result;
}

unint64_t sub_2145FE1A8()
{
  result = qword_27C916A28;
  if (!qword_27C916A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A28);
  }

  return result;
}

unint64_t sub_2145FE200()
{
  result = qword_27C916A30;
  if (!qword_27C916A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A30);
  }

  return result;
}

unint64_t sub_2145FE258()
{
  result = qword_27C916A38;
  if (!qword_27C916A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A38);
  }

  return result;
}

unint64_t sub_2145FE2B0()
{
  result = qword_27C916A40;
  if (!qword_27C916A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A40);
  }

  return result;
}

unint64_t sub_2145FE308()
{
  result = qword_27C916A48;
  if (!qword_27C916A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A48);
  }

  return result;
}

unint64_t sub_2145FE360()
{
  result = qword_27C916A50;
  if (!qword_27C916A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A50);
  }

  return result;
}

unint64_t sub_2145FE3B8()
{
  result = qword_27C916A58;
  if (!qword_27C916A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A58);
  }

  return result;
}

unint64_t sub_2145FE410()
{
  result = qword_27C916A60;
  if (!qword_27C916A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A60);
  }

  return result;
}

unint64_t sub_2145FE468()
{
  result = qword_27C916A68;
  if (!qword_27C916A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A68);
  }

  return result;
}

unint64_t sub_2145FE4C0()
{
  result = qword_27C916A70;
  if (!qword_27C916A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A70);
  }

  return result;
}

unint64_t sub_2145FE518()
{
  result = qword_27C916A78;
  if (!qword_27C916A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A78);
  }

  return result;
}

unint64_t sub_2145FE570()
{
  result = qword_27C916A80;
  if (!qword_27C916A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A80);
  }

  return result;
}

unint64_t sub_2145FE5C8()
{
  result = qword_27C916A88;
  if (!qword_27C916A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A88);
  }

  return result;
}

unint64_t sub_2145FE620()
{
  result = qword_27C916A90;
  if (!qword_27C916A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A90);
  }

  return result;
}

unint64_t sub_2145FE678()
{
  result = qword_27C916A98;
  if (!qword_27C916A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916A98);
  }

  return result;
}

unint64_t sub_2145FE6D0()
{
  result = qword_27C916AA0;
  if (!qword_27C916AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AA0);
  }

  return result;
}

unint64_t sub_2145FE728()
{
  result = qword_27C916AA8;
  if (!qword_27C916AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AA8);
  }

  return result;
}

unint64_t sub_2145FE780()
{
  result = qword_27C916AB0;
  if (!qword_27C916AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AB0);
  }

  return result;
}

unint64_t sub_2145FE7D8()
{
  result = qword_27C916AB8;
  if (!qword_27C916AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AB8);
  }

  return result;
}

unint64_t sub_2145FE830()
{
  result = qword_27C916AC0;
  if (!qword_27C916AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AC0);
  }

  return result;
}

unint64_t sub_2145FE888()
{
  result = qword_27C916AC8;
  if (!qword_27C916AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AC8);
  }

  return result;
}

unint64_t sub_2145FE8E0()
{
  result = qword_27C916AD0;
  if (!qword_27C916AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AD0);
  }

  return result;
}

unint64_t sub_2145FE938()
{
  result = qword_27C916AD8;
  if (!qword_27C916AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AD8);
  }

  return result;
}

unint64_t sub_2145FE990()
{
  result = qword_27C916AE0;
  if (!qword_27C916AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AE0);
  }

  return result;
}

unint64_t sub_2145FE9E8()
{
  result = qword_27C916AE8;
  if (!qword_27C916AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AE8);
  }

  return result;
}

unint64_t sub_2145FEA40()
{
  result = qword_27C916AF0;
  if (!qword_27C916AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AF0);
  }

  return result;
}

unint64_t sub_2145FEA98()
{
  result = qword_27C916AF8;
  if (!qword_27C916AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C916AF8);
  }

  return result;
}

uint64_t sub_2145FEAEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000018 && 0x8000000214794B00 == a2;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000214794B20 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002147A52E0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002147A5300 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002147A5320 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002147A5340 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002147A5360 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002147A5380 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_2145FED80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7552646564697567 && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6157646564697567 && a2 == 0xEA00000000006B6CLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x697461746964656DLL && a2 == 0xEA00000000006E6FLL || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F65646976 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

uint64_t sub_2145FEEF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747065636361 && a2 == 0xE600000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021479A990 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000021479A970 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000021479A9B0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEE00737365726464)
  {

    return 4;
  }

  else
  {
    v6 = sub_2146DA6A8();

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