uint64_t sub_213FB14A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_213FB157C(uint64_t a1)
{
  v1 = *(*(*(a1 + 16) - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Untrusted();
  sub_213FB1620(v4, v3);
  return sub_2146D9608();
}

uint64_t sub_213FB1620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_2146D9D38();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v7 + 16))(&v13 - v9, v2 + *(a1 + 28), v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v10, 1, v5) != 1)
  {
    return (*(v11 + 32))(a2, v10, v5);
  }

  (*(v7 + 8))(v10, v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_213FB17C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D9D38();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = (MEMORY[0x28223BE20])();
  v9 = &v19 - v8;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v7);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, a2) == 1)
  {
    (*(v5 + 8))(v9, v4);
    return 7104878;
  }

  else
  {
    (*(v10 + 32))(v16, v9, a2);
    (*(v10 + 16))(v14, v16, a2);
    v18 = sub_2146D9618();
    (*(v10 + 8))(v16, a2);
    return v18;
  }
}

uint64_t sub_213FB19EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t), uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a9, uint64_t a10)
{
  v124 = a8;
  v130 = a6;
  v131 = a5;
  v129 = a4;
  v123 = a3;
  v127 = a2;
  v125 = a1;
  v11 = type metadata accessor for EncoderErrorResponseMessage(0);
  v12 = *(v11 - 8);
  v135 = v11;
  v136 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v112 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F70, &unk_2146F0900);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v122 = &v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v120 = &v107 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v118 = &v107 - v22;
  MEMORY[0x28223BE20](v21);
  v132 = &v107 - v23;
  v115 = sub_2146D9D38();
  v117 = *(v115 - 8);
  v24 = *(v117 + 64);
  v25 = MEMORY[0x28223BE20](v115);
  v109 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v113 = &v107 - v28;
  v114 = *(a7 - 8);
  v29 = *(v114 + 64);
  MEMORY[0x28223BE20](v27);
  v110 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = a9;
  v31 = type metadata accessor for UnpackResponseMessage();
  v116 = *(v31 - 1);
  v32 = *(v116 + 64);
  MEMORY[0x28223BE20](v31);
  v133 = &v107 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v121 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v139 = &v107 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v134 = a7;
  v111 = v39;
  v138 = sub_2146DA9C8();
  v126 = *(v138 - 8);
  v40 = *(v126 + 64);
  v41 = MEMORY[0x28223BE20](v138);
  v119 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v108 = (&v107 - v44);
  MEMORY[0x28223BE20](v43);
  v140 = (&v107 - v45);
  v46 = sub_2146DA008();
  v47 = *(v46 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v46);
  v50 = &v107 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for XPCDecoder();
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v52 = sub_214046008(MEMORY[0x277D84F90]);
  v137 = v51;
  *(v51 + 24) = v52;
  swift_beginAccess();
  *(v51 + 16) = 1;
  (*(a10 + 24))(v141, v124, a10);
  v53 = v141[0];
  if (LOBYTE(v141[0]) != 2)
  {
    if (qword_27C903238 != -1)
    {
      swift_once();
    }

    v54 = __swift_project_value_buffer(v46, qword_27CA19EC8);
    (*(v47 + 16))(v50, v54, v46);
    v142 = &type metadata for ValidatorContext;
    LOBYTE(v141[0]) = v53 & 1;
    swift_beginAccess();
    sub_214480430(v141, v50);
    swift_endAccess();
  }

  v55 = sub_21404A6EC();
  v56 = swift_allocError();
  *v57 = 0xD000000000000026;
  v57[1] = 0x800000021478C210;
  v57[2] = 0x546E776F6E6B6E55;
  v57[3] = 0xEB00000000657079;
  v57[4] = 0;
  v57[5] = 0;
  *v140 = v56;
  swift_storeEnumTagMultiPayload();
  v58 = sub_2146D8B88();
  v59 = *(v58 - 8);
  v124 = *(v59 + 56);
  v123 = v59 + 56;
  v124(v139, 1, 1, v58);
  WitnessTable = swift_getWitnessTable();
  v61 = v133;
  sub_2144DFF68(v31, v125, v31, WitnessTable, v133);
  v62 = v117;
  v63 = v113;
  v64 = v115;
  (*(v117 + 16))(v113, v61, v115);
  v65 = v114;
  v66 = v134;
  if ((*(v114 + 48))(v63, 1, v134) == 1)
  {
    v136 = v55;
    (*(v62 + 8))(v63, v64);
    v67 = (v61 + v31[9]);
    v68 = v67[1];
    v69 = v67[3];
    v70 = v67[4];
    v71 = v67[5];
    if (v68)
    {
      v72 = v67[5];
    }

    else
    {
      v72 = 0;
    }

    if (v68)
    {
      v73 = v67[4];
    }

    else
    {
      v73 = 0;
    }

    if (v68)
    {
      v74 = v67[3];
    }

    else
    {
      v74 = 0xEB00000000657079;
    }

    if (v68)
    {
      v75 = v67[2];
    }

    else
    {
      v75 = 0x546E776F6E6B6E55;
    }

    if (v68)
    {
      v76 = v67[1];
    }

    else
    {
      v76 = 0x800000021478C210;
    }

    if (v68)
    {
      v77 = *v67;
    }

    else
    {
      v77 = 0xD000000000000026;
    }

    sub_214082A9C(*v67, v68);
    LODWORD(v135) = sub_2146D9BA8();
    v78 = v140;
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    v132 = qword_280B35408;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_2146EA710;
    v141[0] = v77;
    v141[1] = v76;
    v141[2] = v75;
    v142 = v74;
    v143 = v73;
    v144 = v72;

    v80 = sub_2146D9618();
    v125 = v72;
    v81 = v75;
    v82 = v80;
    v83 = v73;
    v85 = v84;
    *(v79 + 56) = MEMORY[0x277D837D0];
    *(v79 + 64) = sub_213FB2DA0();
    *(v79 + 32) = v82;
    *(v79 + 40) = v85;
    sub_2146D91D8();

    v86 = swift_allocError();
    *v87 = v77;
    v87[1] = v76;
    v87[2] = v81;
    v87[3] = v74;
    v88 = v125;
    v87[4] = v83;
    v87[5] = v88;
    v89 = v139;
    sub_213FB2DF4(v139, &unk_27C904F30, &unk_2146EFA20);
    v90 = v126;
    v91 = *(v126 + 8);
    v92 = v138;
    v91(v78, v138);
    v93 = v108;
    *v108 = v86;
    v94 = 1;
    swift_storeEnumTagMultiPayload();
    (*(v90 + 32))(v78, v93, v92);
    v95 = v133;
    v96 = v92;
    sub_213FB2E54(v133 + v31[10], v89, &unk_27C904F30, &unk_2146EFA20);
    (*(v116 + 8))(v95, v31);
  }

  else
  {
    v97 = v110;
    v136 = *(v65 + 32);
    v136(v110, v63, v66);
    LODWORD(v135) = sub_2146D9B88();
    v78 = v140;
    if (qword_280B35358 != -1)
    {
      swift_once();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_2146EA710;
    v99 = v109;
    (*(v65 + 16))(v109, v97, v66);
    (*(v65 + 56))(v99, 0, 1, v66);
    v100 = sub_213FB17C8(v99, v66);
    v101 = v97;
    v103 = v102;
    (*(v117 + 8))(v99, v64);
    *(v98 + 56) = MEMORY[0x277D837D0];
    *(v98 + 64) = sub_213FB2DA0();
    *(v98 + 32) = v100;
    *(v98 + 40) = v103;
    v104 = v134;
    sub_2146D91D8();

    v89 = v139;
    sub_213FB2DF4(v139, &unk_27C904F30, &unk_2146EFA20);
    v91 = *(v126 + 8);
    v96 = v138;
    v91(v78, v138);
    v136(v78, v101, v104);
    swift_storeEnumTagMultiPayload();
    v105 = v133;
    sub_213FB2E54(v133 + v31[10], v89, &unk_27C904F30, &unk_2146EFA20);
    v94 = *(v105 + v31[11]);
    (*(v116 + 8))(v105, v31);
  }

  sub_213FB2F04(v127, v129, v78);
  v131(v78, v89, v94);

  sub_213FB2DF4(v89, &unk_27C904F30, &unk_2146EFA20);
  return (v91)(v78, v96);
}

uint64_t sub_213FB2C90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata();
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

uint64_t sub_213FB2D4C()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t type metadata accessor for Metadata()
{
  result = qword_280B2FEA8;
  if (!qword_280B2FEA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_213FB2DA0()
{
  result = qword_280B35420;
  if (!qword_280B35420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B35420);
  }

  return result;
}

uint64_t sub_213FB2DF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_213FB2E54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_213FB2EBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_213FB2F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v6 = sub_2146DA9C8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = sub_2146D9438();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D9428();
  v15 = sub_2146D9418();
  v16 = sub_2146D9418();
  if (v15 < v16)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = (v15 - v16) / 1000000000.0;
  (*(v7 + 16))(v10, a3, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 8))(v10, v6);
    sub_2146D9B88();
    if (qword_280B35358 == -1)
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_2146E6910;
      v35 = a1;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v19 = sub_213FB17C8(&v35, MetatypeMetadata);
      v21 = v20;
      *(v17 + 56) = MEMORY[0x277D837D0];
      *(v17 + 64) = sub_213FB2DA0();
      v22 = MEMORY[0x277D839F8];
      *(v17 + 32) = v19;
      *(v17 + 40) = v21;
      v23 = MEMORY[0x277D83A80];
      *(v17 + 96) = v22;
      *(v17 + 104) = v23;
      *(v17 + 72) = v3;
      sub_2146D91D8();

      return (*(v33 + 8))(v14, v34);
    }

LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  sub_2146D9BC8();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2146E6910;
  v35 = a1;
  v26 = swift_getMetatypeMetadata();
  v27 = sub_213FB17C8(&v35, v26);
  v29 = v28;
  *(v25 + 56) = MEMORY[0x277D837D0];
  *(v25 + 64) = sub_213FB2DA0();
  v30 = MEMORY[0x277D839F8];
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  v31 = MEMORY[0x277D83A80];
  *(v25 + 96) = v30;
  *(v25 + 104) = v31;
  *(v25 + 72) = v3;
  sub_2146D91D8();

  (*(v33 + 8))(v14, v34);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_213FB3320(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v2 = sub_2146DA9C8();
  v3 = sub_2146D9D38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = swift_projectBox();
  v9 = *(v2 - 8);
  (*(v9 + 16))(v7, a1, v2);
  (*(v9 + 56))(v7, 0, 1, v2);
  swift_beginAccess();
  return (*(v4 + 40))(v8, v7, v3);
}

uint64_t sub_213FB34B4(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_213FB3320(a1);
}

uint64_t XPCDecoder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_213FB34FC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v116 = a5;
  v117 = a4;
  v118 = a3;
  v114 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904F40, &qword_21477E730);
  v6 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109);
  v110 = v96 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v115 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v108 = v96 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v111 = v96 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v96 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v96 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v96 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v96 - v25;
  v27 = sub_2146D8B88();
  v119 = *(v27 - 8);
  v120 = v27;
  v28 = *(v119 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v112 = v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v96 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = v96 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v113 = v96 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = v96 - v39;
  swift_getObjectType();
  v41 = a1;
  v42 = sub_21408FD98();
  if (v42 != 7)
  {
    v44 = v119;
    v43 = v120;
    v45 = v118;
    v46 = a1;
    if (v42 == 13)
    {
      sub_2146A1BDC();
    }

    goto LABEL_20;
  }

  v104 = v36;
  v105 = v21;
  v103 = v18;
  v101 = v33;
  v106 = v40;
  v107 = v24;
  v45 = v118;
  sub_213FB2E54(v118, v26, &unk_27C904F30, &unk_2146EFA20);
  v47 = v119;
  v43 = v120;
  v49 = v119 + 48;
  v48 = *(v119 + 48);
  if (v48(v26, 1, v120) == 1)
  {
    sub_213FB2DF4(v26, &unk_27C904F30, &unk_2146EFA20);
    v44 = v47;
    v46 = v41;
    goto LABEL_20;
  }

  v50 = *(v47 + 32);
  v51 = v106;
  v98 = v47 + 32;
  v97 = v50;
  v50(v106, v26, v120);
  v52 = v107;
  v46 = v41;
  v102 = v48;
  sub_2140902B8(v107);
  v53 = *(v47 + 16);
  v54 = v105;
  v55 = v51;
  v43 = v120;
  v100 = v47 + 16;
  v99 = v53;
  v53(v105, v55, v120);
  (*(v47 + 56))(v54, 0, 1, v43);
  v56 = v110;
  v57 = *(v109 + 48);
  sub_213FB2E54(v54, v110, &unk_27C904F30, &unk_2146EFA20);
  v109 = v57;
  v58 = v56 + v57;
  v59 = v102;
  sub_213FB2E54(v52, v58, &unk_27C904F30, &unk_2146EFA20);
  v60 = v59(v56, 1, v43);
  v44 = v47;
  v96[1] = v49;
  if (v60 == 1)
  {
    sub_213FB2DF4(v54, &unk_27C904F30, &unk_2146EFA20);
    v61 = v59(v56 + v109, 1, v43);
    v62 = v107;
    v63 = v111;
    if (v61 == 1)
    {
      sub_213FB2DF4(v56, &unk_27C904F30, &unk_2146EFA20);
LABEL_19:
      sub_213FB2DF4(v62, &unk_27C904F30, &unk_2146EFA20);
      (*(v44 + 8))(v106, v43);
LABEL_20:
      v117(v46);
      v89 = v115;
      sub_213FB2E54(v45, v115, &unk_27C904F30, &unk_2146EFA20);
      if ((*(v44 + 48))(v89, 1, v43) == 1)
      {
        return sub_213FB2DF4(v89, &unk_27C904F30, &unk_2146EFA20);
      }

      v90 = v112;
      (*(v44 + 32))(v112, v89, v43);
      v91 = v113;
      v92 = *(v114 + 80);
      (*(v44 + 16))(v113, v90, v43);

      sub_2146A0560(0, 0, v91);

      return (*(v44 + 8))(v90, v43);
    }

    goto LABEL_11;
  }

  v64 = v103;
  sub_213FB2E54(v56, v103, &unk_27C904F30, &unk_2146EFA20);
  v65 = v109;
  v66 = v59(v56 + v109, 1, v43);
  v63 = v111;
  if (v66 == 1)
  {
    sub_213FB2DF4(v105, &unk_27C904F30, &unk_2146EFA20);
    (*(v44 + 8))(v64, v43);
    v62 = v107;
LABEL_11:
    sub_213FB2DF4(v56, &qword_27C904F40, &qword_21477E730);
    goto LABEL_12;
  }

  v85 = v56 + v65;
  v86 = v56;
  v87 = v113;
  v97(v113, v85, v43);
  sub_2146A2884(&qword_27C904F48, MEMORY[0x277CC95F0]);
  LODWORD(v109) = sub_2146D9578();
  v88 = *(v119 + 8);
  v88(v87, v43);
  sub_213FB2DF4(v105, &unk_27C904F30, &unk_2146EFA20);
  v88(v64, v43);
  v59 = v102;
  v44 = v119;
  sub_213FB2DF4(v86, &unk_27C904F30, &unk_2146EFA20);
  v62 = v107;
  if (v109)
  {
    goto LABEL_19;
  }

LABEL_12:
  v67 = sub_2146D9BA8();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v68 = qword_280B35410;
  v69 = v104;
  v70 = v106;
  v99(v104, v106, v43);
  sub_213FB2E54(v62, v63, &unk_27C904F30, &unk_2146EFA20);
  if (os_log_type_enabled(v68, v67))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v121[0] = v72;
    *v71 = 136446466;
    sub_2146A2884(&qword_27C918120, MEMORY[0x277CC95F0]);
    v73 = v59;
    v74 = sub_2146DA428();
    v75 = v69;
    v76 = v44;
    v78 = v77;
    v119 = *(v76 + 8);
    (v119)(v75, v43);
    v79 = sub_2144AEA38(v74, v78, v121);

    *(v71 + 4) = v79;
    *(v71 + 12) = 2082;
    v80 = v108;
    sub_213FB2E54(v63, v108, &unk_27C904F30, &unk_2146EFA20);
    if (v73(v80, 1, v43) == 1)
    {
      sub_213FB2DF4(v80, &unk_27C904F30, &unk_2146EFA20);
      v81 = 0xE300000000000000;
      v82 = 7104878;
    }

    else
    {
      v93 = v101;
      v97(v101, v80, v43);
      v99(v113, v93, v43);
      v82 = sub_2146D9618();
      v81 = v94;
      (v119)(v93, v43);
    }

    sub_213FB2DF4(v111, &unk_27C904F30, &unk_2146EFA20);
    v95 = sub_2144AEA38(v82, v81, v121);

    *(v71 + 14) = v95;
    _os_log_impl(&dword_213FAF000, v68, v67, "Passed in session (%{public}s) is not the same as the response (%{public}s)", v71, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216056AC0](v72, -1, -1);
    MEMORY[0x216056AC0](v71, -1, -1);
    sub_213FB2DF4(v107, &unk_27C904F30, &unk_2146EFA20);
    return (v119)(v106, v43);
  }

  else
  {
    sub_213FB2DF4(v63, &unk_27C904F30, &unk_2146EFA20);
    v83 = *(v44 + 8);
    v83(v69, v43);
    sub_213FB2DF4(v62, &unk_27C904F30, &unk_2146EFA20);
    return (v83)(v70, v43);
  }
}

void sub_213FB403C(void *a1, int a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v76 = a3;
  v71 = a4;
  v70 = a2;
  v74 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v69 = &v61 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v61 - v12;
  v14 = sub_2146D8B88();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v67 = &v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v61 - v22;
  v24 = sub_2146D9B88();
  if (qword_280B35360 != -1)
  {
    swift_once();
  }

  v25 = qword_280B35410;
  v26 = os_log_type_enabled(qword_280B35410, v24);
  v72 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = a5;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 136446210;
    v65 = v7;
    v66 = v14;
    v29 = v21;
    v77 = *(v75 + 32);
    v30 = v77;
    aBlock[0] = v28;
    type metadata accessor for BlastDoorInstanceType(0);
    v31 = v30;
    v32 = sub_2146D9618();
    v34 = sub_2144AEA38(v32, v33, aBlock);

    *(v27 + 4) = v34;
    v21 = v29;
    v7 = v65;
    v14 = v66;
    _os_log_impl(&dword_213FAF000, v25, v24, "Sending xpc to BlastDoor instance type (%{public}s)", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v35 = v28;
    a5 = v73;
    MEMORY[0x216056AC0](v35, -1, -1);
    v36 = v27;
    v9 = v72;
    MEMORY[0x216056AC0](v36, -1, -1);
  }

  sub_213FB2E54(v76, v13, &unk_27C904F30, &unk_2146EFA20);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_213FB2DF4(v13, &unk_27C904F30, &unk_2146EFA20);
    v37 = v75;
    v38 = v71;
  }

  else
  {
    (*(v15 + 32))(v23, v13, v14);
    v39 = sub_2146D9B88();
    v65 = *(v15 + 16);
    v66 = v23;
    v65(v21, v23, v14);
    if (os_log_type_enabled(v25, v39))
    {
      v40 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock[0] = v63;
      *v40 = 136446210;
      sub_2146A2884(&qword_27C918120, MEMORY[0x277CC95F0]);
      v41 = sub_2146DA428();
      v42 = v21;
      v43 = v41;
      v62 = v25;
      v45 = v44;
      v64 = *(v15 + 8);
      v64(v42, v14);
      v46 = sub_2144AEA38(v43, v45, aBlock);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_213FAF000, v62, v39, "Stashing reply block for session (%{public}s)", v40, 0xCu);
      v47 = v63;
      __swift_destroy_boxed_opaque_existential_1(v63);
      MEMORY[0x216056AC0](v47, -1, -1);
      MEMORY[0x216056AC0](v40, -1, -1);
    }

    else
    {
      v64 = *(v15 + 8);
      v64(v21, v14);
    }

    v37 = v75;
    v48 = *(v75 + 80);
    v49 = v66;
    v50 = v67;
    v65(v67, v66, v14);
    v51 = swift_allocObject();
    v38 = v71;
    a5 = v73;
    *(v51 + 16) = v71;
    *(v51 + 24) = a5;

    sub_2146A0560(sub_2146A2858, v51, v50);

    v64(v49, v14);
    v9 = v72;
  }

  v52 = v69;
  sub_213FB2E54(v76, v69, &unk_27C904F30, &unk_2146EFA20);
  sub_213FB2E54(v52, v9, &unk_27C904F30, &unk_2146EFA20);
  v53 = (*(v68 + 80) + 24) & ~*(v68 + 80);
  v54 = swift_allocObject();
  *(v54 + 16) = v37;
  sub_214080CE0(v52, v54 + v53);
  v55 = (v54 + ((v7 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v55 = v38;
  v55[1] = a5;
  if (v70)
  {
    v56 = *(v37 + 16);

    v57 = xpc_connection_send_message_with_reply_sync(v56, v74);
    sub_213FB34FC(v57, v37, v9, v38, a5);

    swift_unknownObjectRelease();
    sub_213FB2DF4(v9, &unk_27C904F30, &unk_2146EFA20);
  }

  else
  {

    sub_213FB2DF4(v9, &unk_27C904F30, &unk_2146EFA20);
    v58 = *(v37 + 16);
    v59 = *(v37 + 24);
    aBlock[4] = sub_2146A27A8;
    aBlock[5] = v54;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_213FB14A8;
    aBlock[3] = &block_descriptor_26;
    v60 = _Block_copy(aBlock);

    xpc_connection_send_message_with_reply(v58, v74, v59, v60);

    _Block_release(v60);
  }
}

uint64_t sub_213FB47A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8 + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v2 | 7);
}

uint64_t sub_213FB48E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_213FB4944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F50, &unk_2146F08E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t XPCEncoder.__deallocating_deinit()
{
  sub_213FB4944(v0 + 24);
  v1 = *(v0 + 64);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_213FB49EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v44 = a8;
  v40 = a6;
  v41 = a4;
  v42 = a5;
  v32 = a3;
  v43 = a2;
  v35 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v13 = sub_2146DA9C8();
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v30 = &v29 - v17;
  v39 = sub_2146D9438();
  v36 = *(v39 - 8);
  v18 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2146D9428();
  type metadata accessor for XPCEncoder();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 40) = 0u;
  *(v21 + 56) = 0u;
  *(v21 + 24) = 0u;
  v46[3] = type metadata accessor for BlastDoorService();
  v46[4] = &off_282660BD8;
  v46[0] = v10;
  swift_beginAccess();
  v33 = v10;

  sub_21408AA0C(v46, v21 + 24);
  swift_endAccess();
  swift_beginAccess();
  *(v21 + 16) = 1;
  v37 = a1;
  v38 = a7;
  v45 = a1;
  swift_getMetatypeMetadata();
  sub_2146D9608();
  v31 = a10;
  sub_21467B1D8(v43, v44, *(a10 + 16));
  v22 = xpc_dictionary_create(0, 0, 0);
  swift_getObjectType();
  sub_21408FA70();
  v23 = swift_unknownObjectRetain();
  sub_214090484(v23);
  swift_unknownObjectRelease();
  v24 = v41;
  v25 = v30;
  sub_213FB2E54(v41, v30, &unk_27C904F30, &unk_2146EFA20);
  sub_21408FB88(v25);
  v26 = v33;
  v27 = v33[8];
  sub_2146D95B8();
  sub_21408FA70();
  sub_214086740(0, v26, v22, v32 & 1, v24, v37, v20, v42, v40, v43, v38, v44, v35, v31);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return (*(v36 + 8))(v20, v39);
}

uint64_t sub_213FB4E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v41 = a7;
  v49 = a2;
  v47 = a4;
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v10 = sub_2146DA9C8();
  v44 = sub_2146D9D38();
  v46 = *(v44 - 8);
  v11 = *(v46 + 64);
  v12 = MEMORY[0x28223BE20](v44);
  v45 = &v41 - v13;
  v14 = *(v10 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v12);
  v43 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v42 = &v41 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v41 - v21;
  v23 = swift_allocBox();
  v25 = v24;
  (*(v14 + 56))(v24, 1, 1, v10);
  v26 = sub_2146D8B88();
  (*(*(v26 - 8) + 56))(v22, 1, 1, v26);
  v27 = swift_allocObject();
  v28 = v47;
  v27[2] = a3;
  v27[3] = v28;
  v27[4] = a5;
  v27[5] = a6;
  v27[6] = v23;
  v50 = v23;

  v40 = a6;
  v29 = v14;
  v30 = v45;
  v31 = v49;
  v49 = a3;
  sub_213FB49EC(v48, v31, 1, v22, sub_213FB34B4, v27, a3, v28, a5, v40);
  v32 = v46;

  sub_213FB2DF4(v22, &unk_27C904F30, &unk_2146EFA20);
  swift_beginAccess();
  v33 = v25;
  v34 = v44;
  (*(v32 + 16))(v30, v33, v44);
  if ((*(v29 + 48))(v30, 1, v10) == 1)
  {
    (*(v32 + 8))(v30, v34);
    sub_21404A6EC();
    swift_allocError();
    *v35 = 0;
    v35[1] = 0xE000000000000000;
    v35[2] = 0;
    v35[3] = 0xE000000000000000;
    v35[4] = 0;
    v35[5] = 0;
    swift_willThrow();
  }

  v36 = v42;
  (*(v29 + 32))(v42, v30, v10);
  v37 = v43;
  (*(v29 + 16))(v43, v36, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v38 = *v37;
    swift_willThrow();
    (*(v29 + 8))(v36, v10);
  }

  (*(v29 + 8))(v36, v10);
  (*(*(v49 - 8) + 32))(v41, v37);
}

uint64_t sub_213FB5334()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FB536C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = *a4;
  sub_2146D9B88();
  if (qword_280B35358 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F00, &unk_2146EF9C0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2146EA710;
  v21 = a1;
  MetatypeMetadata = swift_getMetatypeMetadata();
  v13 = sub_213FB17C8(&v21, MetatypeMetadata);
  v15 = v14;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_213FB2DA0();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  sub_2146D91D8();

  v21 = a2;
  v22 = a3;
  v23 = v18;
  sub_21402D9F8(a2, a3);
  v16 = sub_21408A5E8();
  sub_213FB4E90(a1, &v21, a5, &type metadata for UnpackRequestMessage, a6, v16, a7);
  return sub_213FB54FC(v21, v22);
}

uint64_t sub_213FB54FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_213FB55AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void *a5, uint64_t (*a6)(void))
{
  v11 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(v6, v13, v14);
  v15 = a4(0);
  v16 = objc_allocWithZone(v15);
  sub_213FB568C(v13, v16 + *a5, a3);
  v19.receiver = v16;
  v19.super_class = v15;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  sub_213FB5844(v13, a6);
  return v17;
}

uint64_t sub_213FB568C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for ReadReceipt()
{
  result = qword_280B30AE0;
  if (!qword_280B30AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213FB5760(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_213FB57B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_213FB5844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_213FB5CE8()
{
  result = sub_2146D8B88();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_213FB5DF4@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t *sub_213FB5E10@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_213FB5E34@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_213FB6E44(a1);
  *a2 = result;
  return result;
}

unint64_t sub_213FB5E5C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_213FB6E44(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_213FB6040(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_213FB6060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FB61A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9036F0, "а\r");
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FB630C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 44);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213FB643C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 32);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 48) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213FB6694(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8DF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9037B8, &unk_2147598F0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 48) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 32);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FB67B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213FB68DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8DF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FB69F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FB6B34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903858, &unk_2146E6F50);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FB6C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FB6D34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BitmapImage(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BitmapImage(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_213FB6E44(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_213FB6E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 32) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213FB6F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8DF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C903788, "Į\r");
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 32) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FB7104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  v6 = *(a1 + 26);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
  *(a2 + 26) = v6;
}

uint64_t sub_213FB7170(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_213FB7180()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB71D0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_213FB7284(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F58, &qword_2146F4150);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB74C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[11] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[62];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_213FB7610(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[11] + 8) = a2;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[62];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_213FB77C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_213FB77E0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB79A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB79DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FB7A68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FB7B20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213FB7BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FB7C44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FB7CB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FB7D20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FB7DB8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB7E34(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2 + *(type metadata accessor for BalloonPlugin(0) + 52);
  return sub_214032618(v2, v3);
}

uint64_t sub_213FB7E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for BalloonPlugin.Payload(0);
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

uint64_t sub_213FB7F44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BalloonPlugin.Payload(0);
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

uint64_t sub_213FB800C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FB8064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FB80C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FB8134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FB820C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904860, &qword_2146EDB50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213FB82D0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_3:
    v10 = *(v8 + 48);

    return v10(a1 + v9, a2, v7);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
    if (*(*(v14 - 8) + 84) == a2)
    {
      v7 = v14;
      v8 = *(v14 - 8);
      v9 = a3[22];
      goto LABEL_3;
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
    if (*(*(v15 - 8) + 84) == a2)
    {
      v7 = v15;
      v8 = *(v15 - 8);
      v9 = a3[24];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
    if (*(*(v16 - 8) + 84) == a2)
    {
      v7 = v16;
      v8 = *(v16 - 8);
      v9 = a3[27];
      goto LABEL_3;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
    if (*(*(v17 - 8) + 84) == a2)
    {
      v7 = v17;
      v8 = *(v17 - 8);
      v9 = a3[30];
      goto LABEL_3;
    }

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
    if (*(*(v18 - 8) + 84) == a2)
    {
      v7 = v18;
      v8 = *(v18 - 8);
      v9 = a3[31];
      goto LABEL_3;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
    if (*(*(v19 - 8) + 84) == a2)
    {
      v7 = v19;
      v8 = *(v19 - 8);
      v9 = a3[32];
      goto LABEL_3;
    }

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
    if (*(*(v20 - 8) + 84) == a2)
    {
      v7 = v20;
      v8 = *(v20 - 8);
      v9 = a3[33];
      goto LABEL_3;
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
    if (*(*(v21 - 8) + 84) == a2)
    {
      v7 = v21;
      v8 = *(v21 - 8);
      v9 = a3[41];
      goto LABEL_3;
    }

    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
    v23 = *(*(v22 - 8) + 48);
    v24 = a1 + a3[43];

    return v23(v24, a2, v22);
  }
}

uint64_t sub_213FB86C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[5];
LABEL_3:
    v12 = *(v10 + 56);

    return v12(a1 + v11, a2, a2, v9);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C38, &qword_2146EE6B8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[22];
    goto LABEL_3;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C40, &qword_2146EE6C0);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[24];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C48, &qword_2146EE6C8);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[27];
    goto LABEL_3;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v9 = v16;
    v10 = *(v16 - 8);
    v11 = a4[30];
    goto LABEL_3;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C50, &unk_2146EE6D0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v9 = v17;
    v10 = *(v17 - 8);
    v11 = a4[31];
    goto LABEL_3;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C58, &unk_2146F6450);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v9 = v18;
    v10 = *(v18 - 8);
    v11 = a4[32];
    goto LABEL_3;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C60, &qword_2146EE6E0);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v9 = v19;
    v10 = *(v19 - 8);
    v11 = a4[33];
    goto LABEL_3;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904870, &qword_2146EDB60);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v9 = v20;
    v10 = *(v20 - 8);
    v11 = a4[41];
    goto LABEL_3;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904C68, &qword_2146EE6E8);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[43];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_213FB8AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_213FB8B88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_213FB8C54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 44);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 48);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FB8D9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB8F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FB9050(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB918C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FB9254(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904888, &unk_2146EDB80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB9304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 40);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FB944C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 40);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB9588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 36);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 44);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FB96D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 44);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FB980C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FB98D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB9984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FB9A4C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904878, &unk_2146EDB68);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB9AFC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for CloudKitSharingToken();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FB9BA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CloudKitSharingToken();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor16LinkPresentationO13PostalAddressVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t sub_213FB9CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FB9D68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FB9E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FB9F20(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FB9FE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FBA0C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FBA198()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBA240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FBA2F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metadata();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_213FBA3DC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FBA498(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FBA548(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FBA614(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213FBA6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_213FBA824(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FBA960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FBAA1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FBAAE4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBAB30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_213FBABB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904EC8, "</\r");
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_213FBAC3C()
{
  v1 = *(v0 + 16);
  v2 = sub_2146D8B88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = v5 + *(v3 + 64);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C917FA0, &qword_2146ED5E0);
  v7 = sub_2146D9A78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  (*(v3 + 8))(v0 + v5, v2);
  (*(v8 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0, v10 + v11, v12 | 7);
}

uint64_t sub_213FBADAC()
{
  v1 = *(v0 + 3);
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20) - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 73) & ~v3;
  v22 = *(v2 + 64);
  v5 = sub_2146D9438();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v21 = *(v6 + 64);
  v24 = v1;
  v8 = *(v1 - 8);
  v9 = v8;
  v10 = *(v8 + 80);
  v23 = *(v8 + 64);
  v11 = *(v0 + 7);
  swift_unknownObjectRelease();
  v12 = *(v0 + 8);

  v13 = sub_2146D8B88();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(&v0[v4], 1, v13))
  {
    (*(v14 + 8))(&v0[v4], v13);
  }

  v15 = v3 | v7 | v10;
  v16 = (((v22 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v17 = (v21 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + v10 + 16) & ~v10;
  (*(v6 + 8))(&v0[v16], v5);
  v19 = *&v0[v17 + 8];

  (*(v9 + 8))(&v0[v18], v24);

  return MEMORY[0x2821FE8E8](v0, v18 + v23, v15 | 7);
}

uint64_t sub_213FBB018()
{
  v1 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_213FBB268@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FBB2BC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FBB314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FBB368(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FBB3D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FBB444(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FBB500(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FBB5B0(char *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for IDSInvitationContextType(0);
    v8 = *(a3 + 24);
    v9 = type metadata accessor for IDSDictionaryContext(0);
    v10 = *(*(v9 - 8) + 48);

    return v10(&a1[v8], a2, v9);
  }
}

char *sub_213FBB664(char *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for IDSInvitationContextType(0);
    v7 = *(a4 + 24);
    v8 = type metadata accessor for IDSDictionaryContext(0);
    v9 = *(*(v8 - 8) + 56);

    return v9(&v5[v7], a2, a2, v8);
  }

  return result;
}

uint64_t sub_213FBB710(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSInvitationContext(0);
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

uint64_t sub_213FBB7CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for IDSInvitationContext(0);
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

uint64_t sub_213FBB8EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_213FBBA28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041D8, &qword_2146ED5C0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FBBB64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905280, &qword_2146F1C60);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FBBC20(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905280, &qword_2146F1C60);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FBBCD8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBBD10()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FBBDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_213FBBE64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metadata();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FBBF1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FBBF5C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBBFA0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_213FBBFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FBC090(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FBC168(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FBC1E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FBC290(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FBC368(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FBC404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 448);
  v3 = *(a1 + 456);
  v4 = *(a1 + 464);
  v5 = *(a1 + 465);
  *a2 = *(a1 + 440);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FBC430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if ((*(a1 + *(a3 + 20) + 272) >> 1) > 0x80000000)
  {
    return -(*(a1 + *(a3 + 20) + 272) >> 1);
  }

  else
  {
    return 0;
  }
}

double sub_213FBC4FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9055E0, &unk_2146F4F50);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = a1 + *(a4 + 20);
    *(v12 + 248) = 0;
    *(v12 + 256) = 0;
    *(v12 + 264) = 0;
    *(v12 + 272) = 2 * -a2;
    v12 += 280;
    result = 0.0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 0u;
    *(v12 + 64) = 0u;
    *(v12 + 80) = 0u;
    *(v12 + 96) = 0u;
    *(v12 + 112) = 0u;
    *(v12 + 128) = 0u;
    *(v12 + 144) = 0u;
  }

  return result;
}

uint64_t sub_213FBCAAC()
{
  if (*v0)
  {
    result = 1954047348;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_213FBCAF0()
{
  if (*v0)
  {
    result = 0x6B6361626C6C6166;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_213FBCB98()
{
  if (*v0)
  {
    result = 0x6867696C68676968;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_213FBCBDC()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x726564616568;
  }

  *v0;
  return result;
}

uint64_t sub_213FBCC3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214366364(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBCE90()
{
  if (*v0)
  {
    result = 0x64757469676E6F6CLL;
  }

  else
  {
    result = 0x656475746974616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_213FBD1C4()
{
  if (*v0)
  {
    result = 0x656C707061;
  }

  else
  {
    result = 0x44636972656E6567;
  }

  *v0;
  return result;
}

uint64_t sub_213FBD208()
{
  v1 = *v0;
  v2 = 0x656D686361747461;
  v3 = 0x444972656E776FLL;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x6974707972636E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x727574616E676973;
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

uint64_t sub_213FBD2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214377B6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBD394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214379B40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBD3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437A03C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBD3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437A25C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBD414()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B616873646E6168;
  }
}

uint64_t sub_213FBD488@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21437A4C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBD4B4()
{
  if (*v0)
  {
    return 121;
  }

  else
  {
    return 120;
  }
}

unint64_t sub_213FBD55C()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_213FBD5A4()
{
  if (*v0)
  {
    result = 0x6365646F63;
  }

  else
  {
    result = 0x614E74616D726F66;
  }

  *v0;
  return result;
}

uint64_t sub_213FBD698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21438127C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBD6C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214381BD0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBD74C()
{
  v1 = 0x65707954656D696DLL;
  if (*v0 != 1)
  {
    v1 = 0x69747265706F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_213FBD7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214383DCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBD7D4()
{
  if (*v0)
  {
    result = 0x73656972746E65;
  }

  else
  {
    result = 0x5479616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_213FBD81C()
{
  if (*v0)
  {
    result = 0x6B6361626C6C6166;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_213FBD870()
{
  if (*v0)
  {
    result = 0x746E65746E6F63;
  }

  else
  {
    result = 0x74756F79616CLL;
  }

  *v0;
  return result;
}

uint64_t sub_213FBD8AC()
{
  v1 = 0x616964656DLL;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x6974736567677573;
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

uint64_t sub_213FBD930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214385818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_213FBDF20()
{
  *v0;
  sub_2146D9698();
}

void sub_213FBDF8C(uint64_t *a1@<X8>)
{
  v2 = 0x796C706572;
  if (*v1)
  {
    v2 = 0x6E6F69746361;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_213FBDFD4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 80);

  if (*(v0 + 96) != 1)
  {
  }

  v3 = *(v0 + 120);

  v10 = *(v0 + 416);
  v11 = *(v0 + 432);
  v8 = *(v0 + 384);
  v9 = *(v0 + 400);
  v7 = *(v0 + 352);
  sub_2142E3A70(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 240), *(v0 + 248), *(v0 + 256), *(v0 + 264), *(v0 + 272), *(v0 + 280), *(v0 + 288), *(v0 + 296), *(v0 + 304), *(v0 + 312), *(v0 + 320), *(v0 + 328), *(v0 + 336), *(v0 + 344), v7, *(&v7 + 1), *(v0 + 368), *(v0 + 376), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1), v11, *(&v11 + 1), *(v0 + 448), *(v0 + 456));
  v4 = *(v0 + 472);

  v5 = *(v0 + 488);

  return MEMORY[0x2821FE8E8](v0, 497, 7);
}

uint64_t sub_213FBE0B0()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_213FBE0FC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FBE134(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_213FBE144()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FBE180()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBE1C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FBE210()
{
  if (v0[2])
  {
    v1 = v0[3];

    v2 = v0[5];
  }

  if (v0[7])
  {
    v3 = v0[8];

    v4 = v0[10];

    v5 = v0[13];
  }

  if (v0[16])
  {
    v6 = v0[17];

    v7 = v0[19];

    v8 = v0[22];
  }

  if (v0[25])
  {
    v9 = v0[26];

    v10 = v0[28];

    v11 = v0[31];
  }

  if (v0[34])
  {
    v12 = v0[35];

    v13 = v0[37];
  }

  if (v0[39])
  {
    v14 = v0[40];

    v15 = v0[42];

    v16 = v0[45];
  }

  if (v0[48])
  {
    v17 = v0[49];

    v18 = v0[51];

    v19 = v0[54];
  }

  if (v0[57])
  {
    v20 = v0[58];

    v21 = v0[60];

    v22 = v0[63];
  }

  if (v0[66])
  {
    v23 = v0[67];

    v24 = v0[69];
  }

  if (v0[71])
  {
    v25 = v0[72];

    v26 = v0[74];

    v27 = v0[77];
  }

  if (v0[80])
  {
    v28 = v0[81];

    v29 = v0[83];

    v30 = v0[86];
  }

  if (v0[89])
  {
    v31 = v0[90];

    v32 = v0[92];

    v33 = v0[95];
  }

  if (v0[98])
  {
    v34 = v0[99];

    v35 = v0[101];
  }

  if (v0[103])
  {
    v36 = v0[104];

    v37 = v0[106];

    v38 = v0[109];
  }

  if (v0[112])
  {
    v39 = v0[113];

    v40 = v0[115];

    v41 = v0[118];
  }

  if (v0[121])
  {
    v42 = v0[122];

    v43 = v0[124];

    v44 = v0[127];
  }

  if (v0[130])
  {
    v45 = v0[131];

    v46 = v0[133];
  }

  if (v0[135])
  {
    v47 = v0[136];

    v48 = v0[138];

    v49 = v0[141];
  }

  if (v0[144])
  {
    v50 = v0[145];

    v51 = v0[147];

    v52 = v0[150];
  }

  if (v0[153])
  {
    v53 = v0[154];

    v54 = v0[156];

    v55 = v0[159];
  }

  if (v0[162])
  {
    v56 = v0[163];

    v57 = v0[165];
  }

  if (v0[167])
  {
    v58 = v0[168];

    v59 = v0[170];

    v60 = v0[173];
  }

  if (v0[176])
  {
    v61 = v0[177];

    v62 = v0[179];

    v63 = v0[182];
  }

  if (v0[185])
  {
    v64 = v0[186];

    v65 = v0[188];

    v66 = v0[191];
  }

  if (v0[194])
  {
    v67 = v0[195];

    v68 = v0[197];
  }

  if (v0[199])
  {
    v69 = v0[200];

    v70 = v0[202];

    v71 = v0[205];
  }

  if (v0[208])
  {
    v72 = v0[209];

    v73 = v0[211];

    v74 = v0[214];
  }

  if (v0[217])
  {
    v75 = v0[218];

    v76 = v0[220];

    v77 = v0[223];
  }

  if (v0[226])
  {
    v78 = v0[227];

    v79 = v0[229];
  }

  if (v0[231])
  {
    v80 = v0[232];

    v81 = v0[234];

    v82 = v0[237];
  }

  if (v0[240])
  {
    v83 = v0[241];

    v84 = v0[243];

    v85 = v0[246];
  }

  if (v0[249])
  {
    v86 = v0[250];

    v87 = v0[252];

    v88 = v0[255];
  }

  if (v0[258])
  {
    v89 = v0[259];

    v90 = v0[261];
  }

  if (v0[263])
  {
    v91 = v0[264];

    v92 = v0[266];

    v93 = v0[269];
  }

  if (v0[272])
  {
    v94 = v0[273];

    v95 = v0[275];

    v96 = v0[278];
  }

  if (v0[281])
  {
    v97 = v0[282];

    v98 = v0[284];

    v99 = v0[287];
  }

  if (v0[290])
  {
    v100 = v0[291];

    v101 = v0[293];
  }

  if (v0[295])
  {
    v102 = v0[296];

    v103 = v0[298];

    v104 = v0[301];
  }

  if (v0[304])
  {
    v105 = v0[305];

    v106 = v0[307];

    v107 = v0[310];
  }

  if (v0[313])
  {
    v108 = v0[314];

    v109 = v0[316];

    v110 = v0[319];
  }

  if (v0[322])
  {
    v111 = v0[323];

    v112 = v0[325];
  }

  if (v0[327])
  {
    v113 = v0[328];

    v114 = v0[330];

    v115 = v0[333];
  }

  if (v0[336])
  {
    v116 = v0[337];

    v117 = v0[339];

    v118 = v0[342];
  }

  if (v0[345])
  {
    v119 = v0[346];

    v120 = v0[348];

    v121 = v0[351];
  }

  if (v0[354])
  {
    v122 = v0[355];

    v123 = v0[357];
  }

  if (v0[359])
  {
    v124 = v0[360];

    v125 = v0[362];

    v126 = v0[365];
  }

  if (v0[368])
  {
    v127 = v0[369];

    v128 = v0[371];

    v129 = v0[374];
  }

  if (v0[377])
  {
    v130 = v0[378];

    v131 = v0[380];

    v132 = v0[383];
  }

  if (v0[386])
  {
    v133 = v0[387];

    v134 = v0[389];
  }

  if (v0[391])
  {
    v135 = v0[392];

    v136 = v0[394];

    v137 = v0[397];
  }

  if (v0[400])
  {
    v138 = v0[401];

    v139 = v0[403];

    v140 = v0[406];
  }

  if (v0[409])
  {
    v141 = v0[410];

    v142 = v0[412];

    v143 = v0[415];
  }

  if (v0[418])
  {
    v144 = v0[419];

    v145 = v0[421];
  }

  if (v0[423])
  {
    v146 = v0[424];

    v147 = v0[426];

    v148 = v0[429];
  }

  if (v0[432])
  {
    v149 = v0[433];

    v150 = v0[435];

    v151 = v0[438];
  }

  if (v0[441])
  {
    v152 = v0[442];

    v153 = v0[444];

    v154 = v0[447];
  }

  if (v0[450])
  {
    v155 = v0[451];

    v156 = v0[453];
  }

  if (v0[455])
  {
    v157 = v0[456];

    v158 = v0[458];

    v159 = v0[461];
  }

  if (v0[464])
  {
    v160 = v0[465];

    v161 = v0[467];

    v162 = v0[470];
  }

  if (v0[473])
  {
    v163 = v0[474];

    v164 = v0[476];

    v165 = v0[479];
  }

  if (v0[482])
  {
    v166 = v0[483];

    v167 = v0[485];
  }

  if (v0[487])
  {
    v168 = v0[488];

    v169 = v0[490];

    v170 = v0[493];
  }

  if (v0[496])
  {
    v171 = v0[497];

    v172 = v0[499];

    v173 = v0[502];
  }

  if (v0[505])
  {
    v174 = v0[506];

    v175 = v0[508];

    v176 = v0[511];
  }

  if (v0[514])
  {
    v177 = v0[515];

    v178 = v0[517];
  }

  if (v0[519])
  {
    v179 = v0[520];

    v180 = v0[522];

    v181 = v0[525];
  }

  if (v0[528])
  {
    v182 = v0[529];

    v183 = v0[531];

    v184 = v0[534];
  }

  if (v0[537])
  {
    v185 = v0[538];

    v186 = v0[540];

    v187 = v0[543];
  }

  if (v0[546])
  {
    v188 = v0[547];

    v189 = v0[549];
  }

  if (v0[551])
  {
    v190 = v0[552];

    v191 = v0[554];

    v192 = v0[557];
  }

  if (v0[560])
  {
    v193 = v0[561];

    v194 = v0[563];

    v195 = v0[566];
  }

  if (v0[569])
  {
    v196 = v0[570];

    v197 = v0[572];

    v198 = v0[575];
  }

  if (v0[578])
  {
    v199 = v0[579];

    v200 = v0[581];
  }

  if (v0[583])
  {
    v201 = v0[584];

    v202 = v0[586];

    v203 = v0[589];
  }

  if (v0[592])
  {
    v204 = v0[593];

    v205 = v0[595];

    v206 = v0[598];
  }

  if (v0[601])
  {
    v207 = v0[602];

    v208 = v0[604];

    v209 = v0[607];
  }

  if (v0[610])
  {
    v210 = v0[611];

    v211 = v0[613];
  }

  if (v0[615])
  {
    v212 = v0[616];

    v213 = v0[618];

    v214 = v0[621];
  }

  if (v0[624])
  {
    v215 = v0[625];

    v216 = v0[627];

    v217 = v0[630];
  }

  if (v0[633])
  {
    v218 = v0[634];

    v219 = v0[636];

    v220 = v0[639];
  }

  if (v0[642])
  {
    v221 = v0[643];

    v222 = v0[645];
  }

  if (v0[647])
  {
    v223 = v0[648];

    v224 = v0[650];

    v225 = v0[653];
  }

  if (v0[656])
  {
    v226 = v0[657];

    v227 = v0[659];

    v228 = v0[662];
  }

  if (v0[665])
  {
    v229 = v0[666];

    v230 = v0[668];

    v231 = v0[671];
  }

  if (v0[674])
  {
    v232 = v0[675];

    v233 = v0[677];
  }

  if (v0[679])
  {
    v234 = v0[680];

    v235 = v0[682];

    v236 = v0[685];
  }

  if (v0[688])
  {
    v237 = v0[689];

    v238 = v0[691];

    v239 = v0[694];
  }

  if (v0[697])
  {
    v240 = v0[698];

    v241 = v0[700];

    v242 = v0[703];
  }

  if (v0[706])
  {
    v243 = v0[707];

    v244 = v0[709];
  }

  if (v0[711])
  {
    v245 = v0[712];

    v246 = v0[714];

    v247 = v0[717];
  }

  if (v0[720])
  {
    v248 = v0[721];

    v249 = v0[723];

    v250 = v0[726];
  }

  if (v0[729])
  {
    v251 = v0[730];

    v252 = v0[732];

    v253 = v0[735];
  }

  if (v0[738])
  {
    v254 = v0[739];

    v255 = v0[741];
  }

  if (v0[743])
  {
    v256 = v0[744];

    v257 = v0[746];

    v258 = v0[749];
  }

  if (v0[752])
  {
    v259 = v0[753];

    v260 = v0[755];

    v261 = v0[758];
  }

  if (v0[761])
  {
    v262 = v0[762];

    v263 = v0[764];

    v264 = v0[767];
  }

  if (v0[770])
  {
    v265 = v0[771];

    v266 = v0[773];
  }

  if (v0[775])
  {
    v267 = v0[776];

    v268 = v0[778];

    v269 = v0[781];
  }

  if (v0[784])
  {
    v270 = v0[785];

    v271 = v0[787];

    v272 = v0[790];
  }

  if (v0[793])
  {
    v273 = v0[794];

    v274 = v0[796];

    v275 = v0[799];
  }

  if (v0[802])
  {
    v276 = v0[803];

    v277 = v0[805];
  }

  if (v0[807])
  {
    v278 = v0[808];

    v279 = v0[810];

    v280 = v0[813];
  }

  if (v0[816])
  {
    v281 = v0[817];

    v282 = v0[819];

    v283 = v0[822];
  }

  if (v0[825])
  {
    v284 = v0[826];

    v285 = v0[828];

    v286 = v0[831];
  }

  if (v0[834])
  {
    v287 = v0[835];

    v288 = v0[837];
  }

  if (v0[839])
  {
    v289 = v0[840];

    v290 = v0[842];

    v291 = v0[845];
  }

  if (v0[848])
  {
    v292 = v0[849];

    v293 = v0[851];

    v294 = v0[854];
  }

  if (v0[857])
  {
    v295 = v0[858];

    v296 = v0[860];

    v297 = v0[863];
  }

  if (v0[866])
  {
    v298 = v0[867];

    v299 = v0[869];
  }

  if (v0[871])
  {
    v300 = v0[872];

    v301 = v0[874];

    v302 = v0[877];
  }

  if (v0[880])
  {
    v303 = v0[881];

    v304 = v0[883];

    v305 = v0[886];
  }

  if (v0[889])
  {
    v306 = v0[890];

    v307 = v0[892];

    v308 = v0[895];
  }

  if (v0[898])
  {
    v309 = v0[899];

    v310 = v0[901];
  }

  if (v0[903])
  {
    v311 = v0[904];

    v312 = v0[906];

    v313 = v0[909];
  }

  if (v0[912])
  {
    v314 = v0[913];

    v315 = v0[915];

    v316 = v0[918];
  }

  if (v0[921])
  {
    v317 = v0[922];

    v318 = v0[924];

    v319 = v0[927];
  }

  if (v0[930])
  {
    v320 = v0[931];

    v321 = v0[933];
  }

  if (v0[935])
  {
    v322 = v0[936];

    v323 = v0[938];

    v324 = v0[941];
  }

  if (v0[944])
  {
    v325 = v0[945];

    v326 = v0[947];

    v327 = v0[950];
  }

  if (v0[953])
  {
    v328 = v0[954];

    v329 = v0[956];

    v330 = v0[959];
  }

  if (v0[962])
  {
    v331 = v0[963];

    v332 = v0[965];
  }

  if (v0[967])
  {
    v333 = v0[968];

    v334 = v0[970];

    v335 = v0[973];
  }

  if (v0[976])
  {
    v336 = v0[977];

    v337 = v0[979];

    v338 = v0[982];
  }

  if (v0[985])
  {
    v339 = v0[986];

    v340 = v0[988];

    v341 = v0[991];
  }

  if (v0[994])
  {
    v342 = v0[995];

    v343 = v0[997];
  }

  if (v0[999])
  {
    v344 = v0[1000];

    v345 = v0[1002];

    v346 = v0[1005];
  }

  if (v0[1008])
  {
    v347 = v0[1009];

    v348 = v0[1011];

    v349 = v0[1014];
  }

  if (v0[1017])
  {
    v350 = v0[1018];

    v351 = v0[1020];

    v352 = v0[1023];
  }

  if (v0[1026])
  {
    v353 = v0[1027];

    v354 = v0[1029];
  }

  if (v0[1031])
  {
    v355 = v0[1032];

    v356 = v0[1034];

    v357 = v0[1037];
  }

  if (v0[1040])
  {
    v358 = v0[1041];

    v359 = v0[1043];

    v360 = v0[1046];
  }

  if (v0[1049])
  {
    v361 = v0[1050];

    v362 = v0[1052];

    v363 = v0[1055];
  }

  if (v0[1058])
  {
    v364 = v0[1059];

    v365 = v0[1061];
  }

  if (v0[1063])
  {
    v366 = v0[1064];

    v367 = v0[1066];

    v368 = v0[1069];
  }

  if (v0[1072])
  {
    v369 = v0[1073];

    v370 = v0[1075];

    v371 = v0[1078];
  }

  if (v0[1081])
  {
    v372 = v0[1082];

    v373 = v0[1084];

    v374 = v0[1087];
  }

  if (v0[1090])
  {
    v375 = v0[1091];

    v376 = v0[1093];
  }

  if (v0[1095])
  {
    v377 = v0[1096];

    v378 = v0[1098];

    v379 = v0[1101];
  }

  if (v0[1104])
  {
    v380 = v0[1105];

    v381 = v0[1107];

    v382 = v0[1110];
  }

  if (v0[1113])
  {
    v383 = v0[1114];

    v384 = v0[1116];

    v385 = v0[1119];
  }

  if (v0[1122])
  {
    v386 = v0[1123];

    v387 = v0[1125];
  }

  if (v0[1127])
  {
    v388 = v0[1128];

    v389 = v0[1130];

    v390 = v0[1133];
  }

  if (v0[1136])
  {
    v391 = v0[1137];

    v392 = v0[1139];

    v393 = v0[1142];
  }

  if (v0[1145])
  {
    v394 = v0[1146];

    v395 = v0[1148];

    v396 = v0[1151];
  }

  if (v0[1154])
  {
    v397 = v0[1155];

    v398 = v0[1157];
  }

  if (v0[1159])
  {
    v399 = v0[1160];

    v400 = v0[1162];

    v401 = v0[1165];
  }

  if (v0[1168])
  {
    v402 = v0[1169];

    v403 = v0[1171];

    v404 = v0[1174];
  }

  if (v0[1177])
  {
    v405 = v0[1178];

    v406 = v0[1180];

    v407 = v0[1183];
  }

  if (v0[1186])
  {
    v408 = v0[1187];

    v409 = v0[1189];
  }

  if (v0[1191])
  {
    v410 = v0[1192];

    v411 = v0[1194];

    v412 = v0[1197];
  }

  if (v0[1200])
  {
    v413 = v0[1201];

    v414 = v0[1203];

    v415 = v0[1206];
  }

  if (v0[1209])
  {
    v416 = v0[1210];

    v417 = v0[1212];

    v418 = v0[1215];
  }

  if (v0[1218])
  {
    v419 = v0[1219];

    v420 = v0[1221];
  }

  if (v0[1223])
  {
    v421 = v0[1224];

    v422 = v0[1226];

    v423 = v0[1229];
  }

  if (v0[1232])
  {
    v424 = v0[1233];

    v425 = v0[1235];

    v426 = v0[1238];
  }

  if (v0[1241])
  {
    v427 = v0[1242];

    v428 = v0[1244];

    v429 = v0[1247];
  }

  if (v0[1250])
  {
    v430 = v0[1251];

    v431 = v0[1253];
  }

  if (v0[1255])
  {
    v432 = v0[1256];

    v433 = v0[1258];

    v434 = v0[1261];
  }

  if (v0[1264])
  {
    v435 = v0[1265];

    v436 = v0[1267];

    v437 = v0[1270];
  }

  if (v0[1273])
  {
    v438 = v0[1274];

    v439 = v0[1276];

    v440 = v0[1279];
  }

  return MEMORY[0x2821FE8E8](v0, 10250, 7);
}

uint64_t sub_213FBF500()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_213FBF94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FBF9FC(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FBFAD4(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FBFB44@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_213FBFBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  v4 = *(a1 + 104);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FBFCAC(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[18]];

  return v15(v16, a2, v14);
}

char *sub_213FBFE3C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907568, &unk_2146F4AA0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[18]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_213FBFFCC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC0088(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907570, &qword_214732A10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC0138()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC01B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RCSFileInfo();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213FC02D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for RCSFileInfo();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908E90, &qword_2146F54A0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FC03E4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FC041C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC0538(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for CloudKitSharingToken() + 24);

  return sub_2143A56AC(a1, v3);
}

uint64_t sub_213FC0590(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9121F8, &unk_214734DB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FC064C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9121F8, &unk_214734DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC06FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC0774(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2146D8DF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FC0820(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC08C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2146D8DF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213FC09C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9122F8, &qword_214735780);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2146D8DF8();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_213FC0AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FC0B74(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC0C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_2146D8DF8();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213FC0CD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = a2 + 1;
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_213FC0D88(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "backgroundColorDescription";
  }

  else
  {
    v3 = "gions";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

void sub_213FC0DD4(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 6579570;
  v4 = 0xE400000000000000;
  v5 = 1702194274;
  if (*v1 != 2)
  {
    v5 = 0x6168706C61;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E65657267;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_213FC0E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  v4 = *(a1 + 136);
  v3 = *(a1 + 144);
  v5 = *(a1 + 152);
  *a2 = *(a1 + 120);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC0EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 168);
  v4 = *(a1 + 176);
  v3 = *(a1 + 184);
  v5 = *(a1 + 192);
  *a2 = *(a1 + 160);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC0F00()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FC0F40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC0F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC0FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  *a2 = *(a1 + 96);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC1030()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_213FC110C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 26);
  v5 = *(a1 + 27);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 18) = v4;
  *(a2 + 19) = v5;
}

uint64_t sub_213FC1140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC119C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC121C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 21);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 21) = v5;
}

uint64_t sub_213FC1274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 44);
  v5 = *(a1 + 45);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 21) = v5;
}

uint64_t sub_213FC12CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  v4 = *(a1 + 84);
  v5 = *(a1 + 85);
  *a2 = *(a1 + 64);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 21) = v5;
}

uint64_t sub_213FC1360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 20);
  v5 = *(a1 + 21);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 20) = v4;
  *(a2 + 21) = v5;
}

uint64_t sub_213FC138C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalTouchHeader(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DigitalTouchMessage(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_213FC147C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DigitalTouchHeader(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DigitalTouchMessage(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_213FC1578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FC1644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2 + 1;
  }

  return result;
}

uint64_t _s9BlastDoor11StrokePointVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 6))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s9BlastDoor11StrokePointVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
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

  *(result + 6) = v3;
  return result;
}

uint64_t sub_213FC1750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_213FC181C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9068F0, &unk_2146F45C0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_213FC18E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalTouchHeader(0);
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

uint64_t sub_213FC19A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DigitalTouchHeader(0);
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

uint64_t sub_213FC1A8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC1ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC1B20()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

__n128 sub_213FC1B98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_213FC1BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC1C3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Metadata();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC1D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC1D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC1E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2146D8B08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC1EA4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 244)
  {
    v4 = *a1;
    if (v4 >= 0xC)
    {
      return v4 - 11;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_213FC1F48(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 244)
  {
    *result = a2 + 11;
  }

  else
  {
    v7 = type metadata accessor for CPIMMessage.EncapsulatedMessage.Content(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC1FF0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC2090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D9C68();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = sub_2146D9C88();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FC21C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D9C68();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = sub_2146D9C88();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FC22F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC23DC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC244C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 <= 2)
    {
      v5 = 2;
    }

    else
    {
      v5 = *a1;
    }

    v6 = v5 - 2;
    if (v4 >= 2)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 20)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_213FC24FC(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = type metadata accessor for PhotosSharedAlbumMessage.PhotosSharedAlbum(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC259C(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[10];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[11];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[15]];

  return v15(v16, a2, v14);
}

char *sub_213FC272C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[10];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[11];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9052D8, &unk_2146F2000);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[15]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_213FC28BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC28F4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_213FC29FC@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2143FFAA4(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

void sub_213FC2A4C(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_2143EE118(*a1, a3);
  if (v3)
  {
    *a2 = v3;
  }
}

uint64_t sub_213FC2AAC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC2AF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FC2B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FC2C08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FC2CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_213FC2DA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 24));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_213FC2E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FC2F2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_213FC2FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_213FC30AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 32));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_213FC3194()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC32CC(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC33A4(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC3414(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC34D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D90, &qword_2146F4E00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC3580(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC363C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC37C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC387C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = *(a1 + 112);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC38D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC39F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3AA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC3B5C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907C08, &qword_21473BF00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC3C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC3CE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C912F30, &unk_21477C740);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC3DA0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC3E8C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC3EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC3F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_213FC400C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8B88();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_213FC40C4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC4100()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_213FC416C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_213FC41A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC4250(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC4328(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC43A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 448);
  v4 = *(a1 + 456);
  v3 = *(a1 + 464);
  v5 = *(a1 + 472);
  *a2 = *(a1 + 440);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC4420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
}

uint64_t sub_213FC4438(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
}

uint64_t sub_213FC448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC44E0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_213FC4594(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9082D8, &unk_21476AE70);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC46C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientMessageType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC4734(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSClientMessageType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC47AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC4808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  v4 = *(a1 + 120);
  *a2 = *(a1 + 96);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
}

uint64_t sub_213FC48BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_213FC4984(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_213FC4A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FC4B8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FC4CC0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913608, &qword_21473F468);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_213FC4DF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913608, &qword_21473F468);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_213FC4F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 40) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_213FC5048(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8DF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913638, "z\t\t");
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 40) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FC5168(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[11];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_213FC5304(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_213FC54A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_213FC563C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5] + 8) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913670, "8\t\t");
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9135E8, &unk_21473F440);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_213FC58F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_213FC5928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 36);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FC5A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 36);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FC5B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 40);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_213FC5CDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913940, &unk_214740F40);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 40);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_213FC5E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FC5EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FC5F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FC6064(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FC617C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC61D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 57);
  *a2 = *(a1 + 32);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC6224()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C914D60, &qword_214757E20);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_213FC62F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC636C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913AB8, &unk_2147417A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC63E8()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_213FC6420()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_213FC647C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FC6544(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904DD0, &unk_214741A90);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC65FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC676C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 56);
  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  *a2 = *(a1 + 48);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC67C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC6870(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC6948(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC69C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 488);
  v4 = *(a1 + 496);
  v3 = *(a1 + 504);
  v5 = *(a1 + 512);
  *a2 = *(a1 + 480);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6A1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  *a2 = *(a1 + 8);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 25) = v5;
}

uint64_t sub_213FC6B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC6BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1 + 32, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC6C90(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2 + 32, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 224) = v22;
  *(a2 + 240) = v3;
  *(a2 + 256) = v24;
  *(a2 + 272) = v25;
  v4 = v19;
  *(a2 + 160) = v18;
  *(a2 + 176) = v4;
  v5 = v21;
  *(a2 + 192) = v20;
  *(a2 + 208) = v5;
  v6 = v15;
  *(a2 + 96) = v14;
  *(a2 + 112) = v6;
  v7 = v17;
  *(a2 + 128) = v16;
  *(a2 + 144) = v7;
  v8 = v11[1];
  *(a2 + 32) = v11[0];
  *(a2 + 48) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 64) = v12;
  *(a2 + 80) = v10;
  return result;
}

void *sub_213FC6D6C(uint64_t a1, uint64_t a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2 + 32, &qword_27C905500, &qword_2146F2BE0);
  return memcpy((a2 + 32), __src, 0x1B8uLL);
}

uint64_t sub_213FC6DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 184);
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
    v9 = sub_2146D8B88();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_213FC6E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 184) = a2;
  }

  else
  {
    v7 = sub_2146D8B88();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC6F60()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC6FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Metadata();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_213FC70AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Metadata();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_213FC7168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMS3GPPCharacteristic();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC71D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IMS3GPPCharacteristic();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC7244(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_213FC7300(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C909230, &unk_214747860);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC7458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8B88();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_2146D8B08();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 64);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_213FC7568(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_2146D8B08();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 64) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_213FC7674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_213FB2E54(a1, &v11, &qword_27C904858, &qword_214736F00);
  if (*(&v12 + 1))
  {
    v4 = v24;
    *(a2 + 192) = v23;
    *(a2 + 208) = v4;
    *(a2 + 224) = v25;
    *(a2 + 240) = v26;
    v5 = v20;
    *(a2 + 128) = v19;
    *(a2 + 144) = v5;
    v6 = v22;
    *(a2 + 160) = v21;
    *(a2 + 176) = v6;
    v7 = v16;
    *(a2 + 64) = v15;
    *(a2 + 80) = v7;
    v8 = v18;
    *(a2 + 96) = v17;
    *(a2 + 112) = v8;
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
    v10 = v14;
    *(a2 + 32) = v13;
    *(a2 + 48) = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_213FC7724(uint64_t a1, uint64_t a2)
{
  sub_21407CF14(a1, v11);
  sub_213FB2DF4(a2, &qword_27C904858, &qword_214736F00);
  v3 = v23;
  *(a2 + 192) = v22;
  *(a2 + 208) = v3;
  *(a2 + 224) = v24;
  *(a2 + 240) = v25;
  v4 = v19;
  *(a2 + 128) = v18;
  *(a2 + 144) = v4;
  v5 = v21;
  *(a2 + 160) = v20;
  *(a2 + 176) = v5;
  v6 = v15;
  *(a2 + 64) = v14;
  *(a2 + 80) = v6;
  v7 = v17;
  *(a2 + 96) = v16;
  *(a2 + 112) = v7;
  v8 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v8;
  result = *&v12;
  v10 = v13;
  *(a2 + 32) = v12;
  *(a2 + 48) = v10;
  return result;
}

void *sub_213FC77FC(uint64_t a1, void *a2)
{
  sub_213FB2E54(a1, __src, &qword_27C905500, &qword_2146F2BE0);
  sub_213FB2DF4(a2, &qword_27C905500, &qword_2146F2BE0);
  return memcpy(a2, __src, 0x1B8uLL);
}

uint64_t sub_213FC7874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2146D8DF8();
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

uint64_t sub_213FC7930(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2146D8DF8();
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

uint64_t sub_213FC79E8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_2146D8DF8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC7A94(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2146D8DF8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC7BE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_213FC7CA4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_213FC7D54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessageType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_213FC7DC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessageType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_213FC7E40()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_213FC7E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC7EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC7F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  v5 = *(a1 + 72);
  *a2 = *(a1 + 40);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}

uint64_t sub_213FC7FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 88);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = *(a1 + 112);
  *a2 = *(a1 + 80);
  *(a2 + 8) = v2;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
}