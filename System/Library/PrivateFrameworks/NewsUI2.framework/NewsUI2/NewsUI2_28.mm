unint64_t sub_2189E538C()
{
  result = qword_27CC0C540;
  if (!qword_27CC0C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C540);
  }

  return result;
}

unint64_t sub_2189E53E4()
{
  result = qword_27CC0C548;
  if (!qword_27CC0C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C548);
  }

  return result;
}

unint64_t sub_2189E543C()
{
  result = qword_27CC0C550;
  if (!qword_27CC0C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C550);
  }

  return result;
}

uint64_t sub_2189E5490()
{
  v0 = sub_219BF7614();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id BridgedNewsActivitySender.__allocating_init(viewController:presentationTransitionFactory:dismissalTransitionFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___TSNewsActivitySender_viewController] = a1;
  v12 = &v11[OBJC_IVAR___TSNewsActivitySender_presentationTransitionFactory];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v11[OBJC_IVAR___TSNewsActivitySender_dismissalTransitionFactory];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id BridgedNewsActivitySender.init(viewController:presentationTransitionFactory:dismissalTransitionFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR___TSNewsActivitySender_viewController] = a1;
  v12 = &v5[OBJC_IVAR___TSNewsActivitySender_presentationTransitionFactory];
  *v12 = a2;
  *(v12 + 1) = a3;
  v13 = &v5[OBJC_IVAR___TSNewsActivitySender_dismissalTransitionFactory];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v5;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id BridgedNewsActivitySender.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedNewsActivitySender.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2189E58A0()
{
  v1 = *v0;
  if (qword_27CC07D08 != -1)
  {
    swift_once();
  }

  sub_2189E5A38();
  sub_219BDC7D4();
  if (v6)
  {
    return 0;
  }

  v3 = *(*(v1 + 16) + OBJC_IVAR___TSNewsActivitySender_presentationTransitionFactory);

  v5 = v3(v4);

  return v5;
}

uint64_t sub_2189E5968(char a1)
{
  v3 = *v1;
  if (qword_27CC07D08 != -1)
  {
    swift_once();
  }

  sub_2189E5A38();
  sub_219BDC7D4();
  if (v7)
  {
    return 0;
  }

  v5 = *(*(v3 + 16) + OBJC_IVAR___TSNewsActivitySender_dismissalTransitionFactory);

  v6 = v5(a1 & 1);

  return v6;
}

unint64_t sub_2189E5A38()
{
  result = qword_27CC0C5E0;
  if (!qword_27CC0C5E0)
  {
    type metadata accessor for BridgedNewsActivitySender.Factory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C5E0);
  }

  return result;
}

id sub_2189E5A90()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_2189E5AC8(char a1)
{
  v2 = (*(*(v1 + 16) + 16))(*(v1 + 16), a1 & 1);

  return v2;
}

uint64_t sub_2189E5B08(uint64_t a1)
{
  v22 = a1;
  v21 = sub_219BE9944();
  v2 = *(v21 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v21);
  v20 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDCD34();
  v19 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - v9;
  v23 = &v19 - v9;
  sub_219BDD184();
  v11 = v21;
  (*(v2 + 16))(&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v21);
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v13 = (v3 + *(v5 + 80) + v12) & ~*(v5 + 80);
  v14 = swift_allocObject();
  (*(v2 + 32))(v14 + v12, v20, v11);
  v15 = v19;
  (*(v5 + 32))(v14 + v13, v8, v19);
  *(v14 + ((v6 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;

  sub_219BDD154();

  sub_219BDD134();
  v16 = v1[8];
  v17 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v17);
  (*(v16 + 56))(&v24, v17, v16);
  sub_219BE7884();
  sub_218932F9C(v24);
  return (*(v5 + 8))(v23, v15);
}

void *sub_2189E5DD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v36 = a4;
  v37 = a3;
  v41 = a1;
  v4 = sub_219BE1444();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_219BE14C4();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  v43 = v7;
  v44 = v8;
  MEMORY[0x28223BE20](v7);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDF074();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE1544();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE1524();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9924();
  (*(v14 + 104))(v16, *MEMORY[0x277D2F3B8], v13);
  sub_2189E63C0(v12);
  v21 = v36;
  sub_219BE1514();
  sub_2189E98A4(&qword_280EE7FE0, MEMORY[0x277D2F398]);
  sub_219BDCCC4();
  (*(v18 + 8))(v20, v17);
  v22 = v21[7];
  v23 = v21[8];
  __swift_project_boxed_opaque_existential_1(v21 + 4, v22);
  (*(v23 + 48))(&v45 + 1, v22, v23);
  (*(v40 + 104))(v39, **(&unk_278242258 + SBYTE1(v45)), v42);
  __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
  sub_219BE1D74();
  v24 = v38;
  sub_219BE1484();
  sub_2189E98A4(&qword_280EE8010, MEMORY[0x277D2F280]);
  v25 = v24;
  v26 = v43;
  sub_219BDCCC4();
  (*(v44 + 8))(v25, v26);
  v27 = v21[7];
  v28 = v21[8];
  __swift_project_boxed_opaque_existential_1(v21 + 4, v27);
  result = (*(v28 + 48))(&v45, v27, v28);
  if (v45 == 3)
  {
    __swift_project_boxed_opaque_existential_1(v21 + 4, v21[7]);
    sub_219BE1D74();
    v30 = v33;
    sub_219BE1424();
    sub_2189E98A4(&unk_280EE8030, MEMORY[0x277D2F260]);
    v31 = v35;
    sub_219BDCCC4();
    return (*(v34 + 8))(v30, v31);
  }

  return result;
}

uint64_t sub_2189E63C0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE15B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE9C04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE9934();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D6E830])
  {
    v11 = *MEMORY[0x277D2D868];
    v12 = sub_219BDF074();
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  else if (v10 == *MEMORY[0x277D6E840] || v10 == *MEMORY[0x277D6E848] || v10 == *MEMORY[0x277D6E838])
  {
    sub_2189E93A0(0, &unk_280E8C140, MEMORY[0x277CEAE60]);
    sub_219BDD0A4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    (*(v3 + 104))(v5, *MEMORY[0x277D2F548], v2);
    sub_219BDD094();
    (*(v3 + 8))(v5, v2);
    v16 = sub_219BDCD14();

    v17 = sub_219BDF074();
    if (v16)
    {
      v18 = MEMORY[0x277D2D820];
    }

    else
    {
      v18 = MEMORY[0x277D2D810];
    }

    return (*(*(v17 - 8) + 104))(a1, *v18, v17);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

unint64_t sub_2189E674C(uint64_t a1)
{
  v3 = sub_219BE8F74();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  (*(v4 + 32))(v7 + v6, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  sub_219BDD154();

  v8 = v1[8];
  v9 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v9);
  (*(v8 + 56))(&v12, v9, v8);
  sub_219BE7864();
  return sub_218932F9C(v12);
}

uint64_t sub_2189E68DC(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = sub_219BDBD34();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE1574();
  v6 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE9C04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_219BDF244();
  v32 = *(v16 - 8);
  v33 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_2189E98A4(&qword_280EE7F30, MEMORY[0x277D2F910]);
  memset(v37, 0, sizeof(v37));
  v36 = a1;
  sub_219BDCCE4();
  sub_218806FD0(v37);
  sub_219BE8F44();
  (*(v10 + 32))(v13, v15, v9);
  v19 = (*(v10 + 88))(v13, v9);
  if (v19 == *MEMORY[0x277D6E830])
  {
    (*(v6 + 104))(v8, *MEMORY[0x277D2F428], v30);
  }

  else
  {
    v20 = *(v6 + 104);
    if (v19 == *MEMORY[0x277D6E840] || v19 == *MEMORY[0x277D6E848] || v19 == *MEMORY[0x277D6E838])
    {
      v20(v8, *MEMORY[0x277D2F420], v30);
    }

    else
    {
      v20(v8, *MEMORY[0x277D2F430], v30);
      (*(v10 + 8))(v13, v9);
    }
  }

  sub_219BDF234();
  sub_2189E93A0(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
  v21 = sub_219BDCD44();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_219C09BA0;
  (*(v22 + 104))(v24 + v23, *MEMORY[0x277CEAD18], v21);
  sub_2189E98A4(&qword_280EE8810, MEMORY[0x277D2D9A8]);
  v25 = v33;
  sub_219BDCCC4();

  (*(v32 + 8))(v18, v25);
  sub_219BDF524();
  sub_219BE8F64();
  sub_2189E98A4(&qword_280EE8760, MEMORY[0x277D2DB18]);
  sub_219BDCC64();
  v26 = v35;
  v27 = *(v34 + 8);
  v27(v5, v35);
  sub_219BE8F54();
  sub_219BDCC74();
  return (v27)(v5, v26);
}

uint64_t sub_2189E6EDC(uint64_t a1)
{
  v2 = v1;
  sub_2189E9714(0, &qword_27CC0C5F0, MEMORY[0x277D6DA48]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v51 = &v45[-v8];
  v9 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v9);
  v11 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21897BFEC();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v53 = v5;
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v14 + 8))(v16, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = *v11;
  v52 = a1;
  v50 = v7;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4();
      v49 = *(v34 + 48);
      v35 = *&v11[*(v34 + 64) + 32];

      __swift_project_boxed_opaque_existential_1((v2 + 80), *(v2 + 104));
      v36 = [v18[2] identifier];
      sub_219BF5414();

      v33 = sub_219BF4774();

      v37 = sub_219BF0444();
      (*(*(v37 - 8) + 8))(&v11[v49], v37);
      goto LABEL_7;
    }

    v19 = v11[8];
    v48 = v11[9];
    LODWORD(v49) = v19;
    v20 = v11[10];
    v46 = v11[11];
    v47 = v20;
    v21 = v11[12];
    v22 = *(v11 + 2);
    v23 = v11[24];
    sub_2189E9530(*(v11 + 4), *(v11 + 5), *(v11 + 6));
    sub_2189E9570(0);
    v25 = 80;
    v26 = 64;
  }

  else
  {
    v27 = v11[8];
    v48 = v11[9];
    LODWORD(v49) = v27;
    v28 = v11[10];
    v46 = v11[11];
    v47 = v28;
    v21 = v11[12];
    v22 = *(v11 + 2);
    v23 = v11[24];
    sub_2189E96A0();
    v25 = 64;
    v26 = 48;
  }

  v29 = *(v24 + v26);
  v30 = *&v11[*(v24 + v25) + 32];

  v31 = sub_219BF0744();
  (*(*(v31 - 8) + 8))(&v11[v29], v31);
  v54 = v18;
  v55 = v49;
  v56 = v48;
  v57 = v47;
  v58 = v46;
  v59 = v21;
  v60 = v22;
  v61 = v23;
  __swift_project_boxed_opaque_existential_1((v2 + 80), *(v2 + 104));
  v32 = [v18 identifier];
  sub_219BF5414();

  v33 = sub_219BF4774();
  sub_218950D08(&v54);

LABEL_7:
  v38 = v51;
  v39 = v53;
  (*(v6 + 16))(v51, v52, v53);
  v40 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v41 = (v50 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  (*(v6 + 32))(v42 + v40, v38, v39);
  v43 = v42 + v41;
  *v43 = v2;
  *(v43 + 8) = v33 & 1;

  sub_219BDD154();
}

uint64_t sub_2189E73D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v147 = a4;
  v140 = a3;
  v175 = a1;
  v5 = sub_219BDF1E4();
  v163 = *(v5 - 8);
  v164 = v5;
  MEMORY[0x28223BE20](v5);
  v162 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BE1444();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v165 = &v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E9714(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v9 = v8;
  v170 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v166 = &v128 - v10;
  sub_2189E97D4();
  MEMORY[0x28223BE20](v11 - 8);
  v171 = &v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189E9714(0, &qword_27CC0AE58, MEMORY[0x277D6D710]);
  v173 = *(v13 - 8);
  *&v174 = v13;
  MEMORY[0x28223BE20](v13);
  v172 = &v128 - v14;
  v15 = sub_219BDBD34();
  v160 = *(v15 - 8);
  v161 = v15;
  MEMORY[0x28223BE20](v15);
  v159 = &v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BDF8A4();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_219BE0B64();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v128 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_219BE09E4();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v137 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_219BDF104();
  v135 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v134 = &v128 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BDF1A4();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_219BDFCE4();
  v157 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v156 = &v128 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BDBD64();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v128 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDFFB4();
  *&v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BE1714();
  v149 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v26 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v27);
  v29 = &v128 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC();
  v31 = v30;
  v32 = *(v30 - 8);
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v128 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v37 = &v128 - v36;
  sub_2189E9714(0, &qword_27CC0C5F0, MEMORY[0x277D6DA48]);
  v168 = a2;
  v169 = v38;
  sub_219BE7564();
  sub_219BE5FC4();
  v39 = *(v32 + 8);
  v39(v37, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v167 = *v29;
  if (!EnumCaseMultiPayload)
  {
    LODWORD(v174) = v29[8];
    LODWORD(v173) = v29[9];
    v41 = v29[10];
    v42 = v29[11];
    v43 = v29[12];
    v44 = *(v29 + 2);
    v45 = v29[24];
    sub_2189E96A0();
    v47 = 64;
    v48 = 48;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    LODWORD(v174) = v29[8];
    LODWORD(v173) = v29[9];
    v41 = v29[10];
    v42 = v29[11];
    v43 = v29[12];
    v44 = *(v29 + 2);
    v45 = v29[24];
    sub_2189E9530(*(v29 + 4), *(v29 + 5), *(v29 + 6));
    sub_2189E9570(0);
    v47 = 80;
    v48 = 64;
LABEL_5:
    v49 = *(v46 + v48);
    v50 = *&v29[*(v46 + v47) + 32];

    v51 = sub_219BF0744();
    (*(*(v51 - 8) + 8))(&v29[v49], v51);
    v176 = v167;
    v177 = v174;
    v178 = v173;
    v179 = v41;
    v180 = v42;
    v181 = v43;
    v130 = v44;
    v182 = v44;
    v183 = v45;
    v52 = v26;
    sub_21934C4BC();
    sub_2189E93A0(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
    v166 = v53;
    v54 = sub_219BDCD44();
    v55 = *(v54 - 8);
    v56 = *(v55 + 80);
    v57 = (v56 + 32) & ~v56;
    v172 = (v57 + *(v55 + 72));
    v58 = swift_allocObject();
    v174 = xmmword_219C09BA0;
    *(v58 + 16) = xmmword_219C09BA0;
    v59 = *MEMORY[0x277CEAD18];
    v60 = *(v55 + 104);
    (v60)(v58 + v57, v59, v54);
    v165 = "newsActivityManager";
    sub_2189E98A4(&unk_280EE7F60, MEMORY[0x277D2F890]);
    v61 = v148;
    sub_219BDCCC4();

    (*(v149 + 8))(v52, v61);
    v62 = v150;
    sub_219BDBD54();
    sub_219BDBD44();
    v151[1](v62, v152);
    v63 = v153;
    sub_219BDFFA4();
    v171 = v56;
    v64 = swift_allocObject();
    *(v64 + 16) = v174;
    v163 = v54;
    v164 = v57;
    LODWORD(v173) = v59;
    v170 = v60;
    (v60)(v64 + v57, v59, v54);
    sub_2189E98A4(&unk_280EE84F0, MEMORY[0x277D2E290]);
    v65 = v155;
    sub_219BDCCC4();

    (*(v154 + 8))(v63, v65);
    sub_2189E98A4(&qword_27CC0C620, type metadata accessor for MagazineGridItemModel);
    result = sub_219BE75B4();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v67 = v156;
      sub_219BDFCD4();
      v68 = swift_allocObject();
      *(v68 + 16) = v174;
      v70 = v163;
      v69 = v164;
      (v170)(v68 + v164, v173, v163);
      v162 = (v55 + 104);
      sub_2189E98A4(&unk_280EE8590, MEMORY[0x277D2E058]);
      v71 = v158;
      sub_219BDCCC4();

      (*(v157 + 8))(v67, v71);
      v72 = v131;
      sub_219BF6AC4();
      v73 = swift_allocObject();
      *(v73 + 16) = v174;
      v74 = v73 + v69;
      v75 = v173;
      v76 = v170;
      (v170)(v74, v173, v70);
      sub_2189E98A4(&unk_280EE8850, MEMORY[0x277D2D950]);
      v77 = v133;
      sub_219BDCCC4();

      (*(v132 + 8))(v72, v77);
      v158 = *(v140 + 24);
      v78 = v167;
      v79 = [v167 sourceChannel];
      v80 = v134;
      sub_219BE01F4();
      swift_unknownObjectRelease();
      v81 = swift_allocObject();
      *(v81 + 16) = v174;
      v83 = v163;
      v82 = v164;
      (v76)(v81 + v164, v75, v163);
      sub_2189E98A4(&unk_280EE8890, MEMORY[0x277D2D8B8]);
      v84 = v136;
      sub_219BDCCC4();

      (*(v135 + 8))(v80, v84);
      v85 = [v78 sourceChannel];
      v86 = v137;
      sub_219BE01E4();
      swift_unknownObjectRelease();
      sub_218950D08(&v176);
      v87 = swift_allocObject();
      *(v87 + 16) = v174;
      (v170)(v87 + v82, v173, v83);
      sub_2189E98A4(&qword_280EE8270, MEMORY[0x277D2E9C0]);
      v88 = v139;
      sub_219BDCCC4();

      (*(v138 + 8))(v86, v88);
      v89 = v141;
      sub_219BE0B54();
      v90 = swift_allocObject();
      *(v90 + 16) = v174;
      v92 = v163;
      v91 = v164;
      v93 = v170;
      (v170)(v90 + v164, v173, v163);
      sub_2189E98A4(&qword_27CC0C628, MEMORY[0x277D2EB60]);
      v94 = v143;
      sub_219BDCCC4();

      (*(v142 + 8))(v89, v94);
      v95 = v144;
      sub_219BDF894();
      v96 = swift_allocObject();
      *(v96 + 16) = v174;
      (v93)(v96 + v91, v173, v92);
      sub_2189E98A4(&qword_280EE8640, MEMORY[0x277D2DE40]);
      v97 = v146;
      sub_219BDCCC4();

      (*(v145 + 8))(v95, v97);
      sub_219BE0274();
      v98 = v159;
      sub_219BE75A4();
      sub_2189E98A4(&unk_280EE8460, MEMORY[0x277D2E418]);
      sub_219BDCC64();
      v99 = v161;
      v100 = *(v160 + 8);
      v100(v98, v161);
      sub_219BE7574();
      sub_219BDCC74();
      return (v100)(v98, v99);
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_2189E93F4();
  v155 = *(v101 + 48);
  v102 = *&v29[*(v101 + 64) + 32];

  v103 = v166;
  sub_219BE7594();
  sub_219BE7564();
  sub_219BE5F84();
  v39(v35, v31);
  v104 = v171;
  sub_219BEB244();

  (*(v170 + 1))(v103, v9);
  v106 = v173;
  v105 = v174;
  if ((*(v173 + 48))(v104, 1, v174) == 1)
  {

    sub_2189E9848(v104);
  }

  else
  {
    (*(v106 + 32))(v172, v104, v105);
    v107 = [v167[2] identifier];
    sub_219BF5414();

    sub_219BE1424();
    sub_2189E93A0(0, &qword_280E8C160, MEMORY[0x277CEAD20]);
    v171 = v108;
    v109 = sub_219BDCD44();
    v153 = v109;
    v110 = *(v109 - 8);
    v166 = *(v110 + 72);
    v111 = (*(v110 + 80) + 32) & ~*(v110 + 80);
    v112 = swift_allocObject();
    v154 = xmmword_219C09BA0;
    *(v112 + 16) = xmmword_219C09BA0;
    v113 = *MEMORY[0x277CEAD18];
    v114 = *(v110 + 104);
    (v114)(v112 + v111, v113, v109);
    v170 = "newsActivityManager";
    sub_2189E98A4(&unk_280EE8030, MEMORY[0x277D2F260]);
    v115 = v165;
    v116 = v130;
    sub_219BDCCC4();

    (*(v129 + 8))(v115, v116);
    sub_219BE6944();
    v117 = v162;
    sub_219BDF1C4();
    v118 = v153;
    v119 = swift_allocObject();
    *(v119 + 16) = v154;
    LODWORD(v152) = v113;
    v165 = (v110 + 104);
    v151 = v114;
    (v114)(v119 + v111, v113, v118);
    sub_2189E98A4(&unk_280EE8840, MEMORY[0x277D2D970]);
    v120 = v164;
    sub_219BDCCC4();

    (*(v163 + 8))(v117, v120);
    sub_2189E98A4(&qword_27CC0C620, type metadata accessor for MagazineGridItemModel);
    result = sub_219BE75B4();
    if (result < 0xFFFFFFFF80000000)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (result > 0x7FFFFFFF)
    {
LABEL_18:
      __break(1u);
      return result;
    }

    v121 = v156;
    sub_219BDFCD4();
    v122 = swift_allocObject();
    *(v122 + 16) = v154;
    (v151)(v122 + v111, v152, v118);
    sub_2189E98A4(&unk_280EE8590, MEMORY[0x277D2E058]);
    v123 = v158;
    sub_219BDCCC4();

    (*(v157 + 8))(v121, v123);
    sub_219BDFEC4();
    v124 = v159;
    sub_219BE75A4();
    sub_2189E98A4(&unk_280EE8520, MEMORY[0x277D2E1D0]);
    sub_219BDCC64();
    v125 = *(v160 + 8);
    v126 = v161;
    v125(v124, v161);
    sub_219BE7574();
    sub_219BDCC74();

    v125(v124, v126);
    (*(v173 + 8))(v172, v174);
  }

  v127 = sub_219BF0444();
  return (*(*(v127 - 8) + 8))(&v29[v155], v127);
}

uint64_t sub_2189E8E84()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for MagazineGridItemModel();
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21897BFEC();
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v6;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_2189E9530(*(v6 + 4), *(v6 + 5), *(v6 + 6));
      sub_2189E9570(0);
      v10 = *(v9 + 64);
      v11 = *&v6[*(v9 + 80) + 32];

      v12 = sub_219BF0744();
    }

    else
    {

      sub_2189E93F4();
      v10 = *(v18 + 48);
      v19 = *&v6[*(v18 + 64) + 32];

      v12 = sub_219BF0444();
    }

    (*(*(v12 - 8) + 8))(&v6[v10]);
    *v3 = 6775156;
    v3[1] = 0xE300000000000000;
    (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
    sub_219BDD204();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {

    sub_2189E96A0();
    v14 = *(v13 + 48);
    v15 = *&v6[*(v13 + 64) + 32];

    *v3 = 0x6575737369;
    v3[1] = 0xE500000000000000;
    (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
    sub_219BDD204();
    (*(v1 + 8))(v3, v0);
    v16 = sub_219BF0744();
    return (*(*(v16 - 8) + 8))(&v6[v14], v16);
  }
}

uint64_t sub_2189E91B4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);

  return swift_deallocClassInstance();
}

void *sub_2189E9230(uint64_t a1)
{
  v3 = *(sub_219BE9944() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDCD34() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2189E5DD8(a1, v1 + v4, v1 + v7, v8);
}

uint64_t sub_2189E9330(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2189E68DC(a1, v4);
}

void sub_2189E93A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2189E93F4()
{
  if (!qword_27CC0C5F8)
  {
    type metadata accessor for TagModel();
    sub_219BF0444();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC0C5F8);
    }
  }
}

uint64_t sub_2189E9470(uint64_t a1)
{
  sub_2189E9714(0, &qword_27CC0C5F0, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *v6;
  v8 = *(v6 + 8);

  return sub_2189E73D8(a1, v1 + v5, v7, v8);
}

void sub_2189E9530(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

void sub_2189E9570(uint64_t a1)
{
  if (!qword_27CC0C600)
  {
    MEMORY[0x28223BE20](a1);
    sub_2186DEEA0(255, &qword_27CC0C608);
    sub_219BF0744();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27CC0C600);
    }
  }
}

void sub_2189E96A0()
{
  if (!qword_27CC0C610)
  {
    sub_219BF0744();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC0C610);
    }
  }
}

void sub_2189E9714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel();
    v8[2] = sub_21895164C();
    v8[3] = sub_2189E98A4(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189E97D4()
{
  if (!qword_27CC0C618)
  {
    sub_2189E9714(255, &qword_27CC0AE58, MEMORY[0x277D6D710]);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C618);
    }
  }
}

uint64_t sub_2189E9848(uint64_t a1)
{
  sub_2189E97D4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189E98A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189E9954(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  v3 = MEMORY[0x277D30320];
  sub_2189EB45C(0, &qword_27CC0C630, MEMORY[0x277D30320], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  v7 = sub_219BDED54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = *(v8 + 16);
  v10(v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  sub_2189EB45C(0, &qword_27CC0C638, v3, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
  v10(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  sub_2189E9B7C(v6);
  sub_2189EB358(v6, &qword_27CC0C630, v3);
  v11 = sub_219BE31C4();

  return v11;
}

uint64_t sub_2189E9B7C(uint64_t a1)
{
  v2 = sub_219BF4534();
  MEMORY[0x28223BE20](v2 - 8);
  v35[1] = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2189EB45C(0, &qword_27CC0C640, MEMORY[0x277D33238], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - v6;
  v8 = sub_219BF1274();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BF1254();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v35[0] = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189EB45C(0, &qword_27CC0C630, MEMORY[0x277D30320], v4);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v35 - v16;
  sub_2189EB3C8(a1, v35 - v16);
  v18 = sub_219BDED54();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v20 = &qword_27CC0C630;
    v21 = MEMORY[0x277D30320];
    v22 = v17;
LABEL_5:
    sub_2189EB358(v22, v20, v21);
    v36 = 0;
    sub_2189EB45C(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v23 = sub_219BDED44();
  v24 = v17;
  v25 = v23;
  (*(v19 + 8))(v24, v18);
  sub_219BF6CA4();
  sub_219BF1264();
  (*(v9 + 8))(v11, v8);
  v26 = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {

    v20 = &qword_27CC0C640;
    v21 = MEMORY[0x277D33238];
    v22 = v7;
    goto LABEL_5;
  }

  v28 = *(v13 + 32);
  v29 = v35[0];
  v28(v35[0], v7, v12);
  v30 = sub_219BF1244();
  v37 = sub_2186C6148(0, &qword_280E8E770);
  v38 = sub_2189EB528();
  v36 = v30;
  v31 = [objc_opt_self() mainScreen];
  [v31 scale];

  sub_219BF4524();
  sub_219BF4544();
  swift_allocObject();
  v32 = sub_219BF4514();
  v33 = MEMORY[0x28223BE20](v32);
  v35[-4] = v35[2];
  v35[-3] = v33;
  v35[-2] = v25;
  sub_2189EB45C(0, &qword_280EE6918, sub_2189EB4C0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v34 = sub_219BE30B4();

  (*(v26 + 8))(v29, v12);
  return v34;
}

id sub_2189EA114(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, int a5)
{
  v104 = a5;
  v8 = sub_219BDBD64();
  v106 = *(v8 - 8);
  v107 = v8;
  MEMORY[0x28223BE20](v8);
  v105 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDED54();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_2189EAD9C();
    v57 = swift_allocError();
    *v58 = 0;
    *v16 = v57;
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_2189EB45C(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v18 = Strong;
  v94 = v14;
  v95 = v16;
  v100 = v11;
  v92 = *(v11 + 16);
  v93 = v11 + 16;
  v92(v13, a1, v10);
  v19 = *(v18 + 344);
  v101 = v18;
  __swift_project_boxed_opaque_existential_1((v18 + 320), v19);
  v20 = sub_219B7D048();
  v21 = sub_219BDED44();
  v102 = v10;
  v103 = a1;
  v22 = v21;
  v23 = [v21 identifier];
  v24 = sub_219BF5414();
  v98 = v25;
  v99 = v24;

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [objc_opt_self() bundleForClass_];
  v28 = sub_219BDB5E4();
  v96 = v29;
  v97 = v28;

  v30 = [v22 title];
  v31 = sub_219BF5414();
  v32 = a2;
  v34 = v33;

  v35 = [v22 coverDate];
  v36 = sub_219BF5414();
  v38 = v37;

  v39 = sub_2189DCA74(v36, v38, v31, v34);
  v41 = v40;

  v42 = v105;
  sub_219BDBD54();
  v43 = sub_219BDBD44();
  v45 = v44;
  (*(v106 + 8))(v42, v107);
  (*(v100 + 8))(v13, v102);
  LOBYTE(v108) = v104 & 1;
  *&v113 = v99;
  *(&v113 + 1) = v98;
  *&v114 = v22;
  BYTE8(v114) = 1;
  *(&v114 + 9) = v111;
  HIDWORD(v114) = *(&v111 + 3);
  *&v115 = v97;
  *(&v115 + 1) = v96;
  *&v116 = v39;
  *(&v116 + 1) = v41;
  *&v117 = a4;
  BYTE8(v117) = v104 & 1;
  *(&v117 + 9) = v109;
  HIDWORD(v117) = *(&v109 + 3);
  *&v118 = v43;
  *(&v118 + 1) = v45;
  *&v119 = v32;
  *(&v119 + 1) = v20;
  v120 = 0;
  sub_2189EB258(a4, v104 & 1);
  v46 = v32;
  v47 = sub_219BDED44();
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE93F0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v111)
  {
    if (qword_280E8D8F0 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_219C09BA0;
    v49 = [v47 identifier];
    v50 = sub_219BF5414();
    v52 = v51;

    *(v48 + 56) = MEMORY[0x277D837D0];
    *(v48 + 64) = sub_2186FC3BC();
    *(v48 + 32) = v50;
    *(v48 + 40) = v52;
    sub_219BF6214();
    sub_219BE5314();

    goto LABEL_8;
  }

  v60 = v101;
  v61 = *(v101 + 128);
  swift_unknownObjectRetain();
  v62 = [v47 isPaid];
  v63 = [v47 isBundlePaid];
  v64 = [objc_msgSend(v47 sourceChannel)];
  swift_unknownObjectRelease();
  v65 = sub_219BF5414();
  v67 = v66;

  if (v62)
  {
    v68 = [objc_msgSend(v61 purchaseProvider)];
    v69 = sub_219BF5D44();

    LOBYTE(v68) = sub_2188537B8(v65, v67, v69);

    swift_unknownObjectRelease();
    if (v68)
    {

      swift_unknownObjectRelease();
      goto LABEL_37;
    }

    if (!v63)
    {
      goto LABEL_34;
    }
  }

  else if ((v63 & 1) == 0)
  {
    swift_unknownObjectRelease();

    goto LABEL_37;
  }

  v70 = [objc_msgSend(v61 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v70, v70 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111 = v109;
  v112 = v110;
  if (!*(&v110 + 1))
  {
    sub_218806FD0(&v111);
    goto LABEL_24;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v71 = 0;
    v73 = 0;
    goto LABEL_25;
  }

  v71 = v108;
  v72 = [v108 integerValue];
  if (v72 == -1)
  {

    v60 = v101;
    goto LABEL_36;
  }

  v73 = v72;
LABEL_25:
  if (objc_getAssociatedObject(v70, ~v73))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v109 = 0u;
    v110 = 0u;
  }

  v111 = v109;
  v112 = v110;
  if (!*(&v110 + 1))
  {
    sub_218806FD0(&v111);
LABEL_33:

    v60 = v101;
    if (v73)
    {
      goto LABEL_36;
    }

LABEL_34:

    swift_unknownObjectRelease();
LABEL_43:
    v92(v95, v103, v102);
    type metadata accessor for ContinueReadingIneligibilityReason(0);
    goto LABEL_44;
  }

  sub_2186C6148(0, &qword_280E8DA20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_33;
  }

  v74 = v108;
  v75 = [v74 integerValue];

  v76 = v75 ^ v73;
  v60 = v101;
  if ((v76 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_36:
  v77 = [objc_msgSend(v61 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v78 = [v77 bundleChannelIDs];

  v79 = sub_219BF53D4();
  v80 = [v78 containsObject_];

  swift_unknownObjectRelease();
  if ((v80 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_37:
  v81 = [objc_msgSend(v47 sourceChannel)];
  swift_unknownObjectRelease();
  v82 = sub_219BF5414();
  v84 = v83;

  result = [*(v60 + 120) mutedTagIDs];
  if (result)
  {
    v85 = result;
    v86 = sub_219BF5D44();

    LOBYTE(v85) = sub_2188537B8(v82, v84, v86);

    if (v85)
    {

      v92(v95, v103, v102);
      type metadata accessor for ContinueReadingIneligibilityReason(0);
LABEL_44:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_2189EB45C(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
      swift_allocObject();
      goto LABEL_45;
    }

    result = [*(v60 + 120) ignoredTagIDs];
    if (result)
    {
      v87 = result;
      v88 = sub_219BF5D44();

      v89 = sub_2188537B8(v82, v84, v88);

      if ((v89 & 1) == 0)
      {
LABEL_8:
        v53 = v118;
        v54 = v95;
        *(v95 + 4) = v117;
        *(v54 + 5) = v53;
        *(v54 + 6) = v119;
        *(v54 + 112) = v120;
        v55 = v114;
        *v54 = v113;
        *(v54 + 1) = v55;
        v56 = v116;
        *(v54 + 2) = v115;
        *(v54 + 3) = v56;
        swift_storeEnumTagMultiPayload();
        sub_2189EB45C(0, &qword_280EE6D58, type metadata accessor for ContinueReadingEligibility, MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_2189EB2A8(&v113, &v111);
LABEL_45:
        v90 = sub_219BE3014();

        sub_2189EB304(&v113);

        return v90;
      }

      goto LABEL_43;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2189EAD9C()
{
  result = qword_27CC0D4A0;
  if (!qword_27CC0D4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D4A0);
  }

  return result;
}

uint64_t sub_2189EADF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  __swift_project_boxed_opaque_existential_1((a5 + 176), *(a5 + 200));
  v16[3] = sub_219BF4544();
  v16[4] = sub_2189EB5A4();
  v16[0] = a6;
  v13 = swift_allocObject();
  v13[2] = a7;
  v13[3] = sub_2189EB59C;
  v13[4] = v12;

  v14 = a7;
  sub_219BE6254();

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

void sub_2189EAF08(void *a1, void *a2, id a3, void (*a4)(void *))
{
  v7 = [a3 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  if (a1)
  {
    v11 = qword_280E8D8F0;
    v12 = a1;
    if (v11 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = sub_2186FC3BC();
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
    sub_219BF6214();
    sub_219BE5314();

    v19 = v12;
    a4(a1);
  }

  else
  {
    if (a2)
    {
      v14 = a2;
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      sub_219BF61F4();
      sub_2186F20D4();
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_219C09EC0;
      v16 = MEMORY[0x277D837D0];
      *(v15 + 56) = MEMORY[0x277D837D0];
      v17 = sub_2186FC3BC();
      *(v15 + 64) = v17;
      *(v15 + 32) = v8;
      *(v15 + 40) = v10;
      sub_2186CFDE4(0, &qword_280E8B580);
      sub_219BF7484();
      *(v15 + 96) = v16;
      *(v15 + 104) = v17;
      *(v15 + 72) = 0;
      *(v15 + 80) = 0xE000000000000000;
      sub_219BE5314();
    }

    else
    {
      if (qword_280E8D8F0 != -1)
      {
        swift_once();
      }

      sub_2186F20D4();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_219C09BA0;
      *(v18 + 56) = MEMORY[0x277D837D0];
      *(v18 + 64) = sub_2186FC3BC();
      *(v18 + 32) = v8;
      *(v18 + 40) = v10;
      sub_219BF6214();
      sub_219BE5314();
    }

    a4(0);
  }
}

id sub_2189EB258(unint64_t result, char a2)
{
  if (a2)
  {
    return sub_2189EB264(result);
  }

  else
  {
    return result;
  }
}

unint64_t sub_2189EB264(unint64_t result)
{
  switch((result >> 58) & 0x3C | (result >> 1) & 3)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2189EB358(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2189EB45C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2189EB3C8(uint64_t a1, uint64_t a2)
{
  sub_2189EB45C(0, &qword_27CC0C630, MEMORY[0x277D30320], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2189EB45C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2189EB4C0()
{
  if (!qword_280E8DA60)
  {
    sub_2186C6148(255, &qword_280E8DA68);
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8DA60);
    }
  }
}

unint64_t sub_2189EB528()
{
  result = qword_280E8E780;
  if (!qword_280E8E780)
  {
    sub_2186C6148(255, &qword_280E8E770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E780);
  }

  return result;
}

unint64_t sub_2189EB5A4()
{
  result = qword_27CC0C648;
  if (!qword_27CC0C648)
  {
    sub_219BF4544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C648);
  }

  return result;
}

uint64_t sub_2189EB608(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE9414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = sub_219BF53D4();

  v11 = [a1 objectForKey_];

  if (v11)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v18, v19);
    sub_2186CF94C();
    swift_dynamicCast();
    v12 = swift_allocObject();
    v12[2] = a1;
    v12[3] = a2;
    v12[4] = a3;
    v13 = a1;

    sub_219BE6454();

    v14 = sub_219BF53D4();

    v15 = [v13 objectForKey_];

    if (v15)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v18, v19);
      swift_dynamicCast();
      *&v19[0] = 0xF000000000000018;
      (*(v7 + 104))(v9, *MEMORY[0x277D6E598], v6);
      sub_219BE6474();
      (*(v7 + 8))(v9, v6);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  (*(v7 + 8))(v9, v6);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_2189EB914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v5 = sub_219BED174();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED214();
  v29 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  sub_2186C6148(0, &qword_280E8E3B0);
  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v28 = *(v12 + 8);
  v28(v15, v11);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = v21;
  aBlock[4] = sub_2189EC390;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_13;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98);
  sub_219BF7164();
  MEMORY[0x21CECD420](v17, v10, v7, v22);
  _Block_release(v22);

  (*(v32 + 8))(v7, v5);
  (*(v30 + 8))(v10, v31);
  return (v28)(v17, v29);
}

void sub_2189EBCF4(void *a1, void (*a2)(id))
{

  v4 = sub_219BF53D4();

  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v15, &v16);
    sub_2186C6148(0, &qword_280E8E480);
    swift_dynamicCast();
    type metadata accessor for HistoryFeedViewController();
    sub_219BF6584();

    v6 = v17;
    if (v17)
    {
      sub_219BE8664();
      v7 = sub_219BE7BC4();

      v8 = v7;

      v9 = sub_219BF53D4();

      [a1 setObject:v8 forKey:v9];

      v10 = 0;
    }

    else
    {
      v11 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v12 = sub_219BF53D4();
      v13 = [v11 initWithMessage_];

      v10 = v13;
      v8 = v13;
    }

    a2(v10);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2189EBF98(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = a3;
  v4 = sub_219BED174();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED1D4();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BED214();
  v28 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_2186C6148(0, &qword_280E8E3B0);
  v17 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v27 = *(v11 + 8);
  v27(v14, v10);
  v18 = swift_allocObject();
  v19 = v25;
  v20 = v26;
  v18[2] = a1;
  v18[3] = v19;
  v18[4] = v20;
  aBlock[4] = sub_2189EC378;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_4;
  v21 = _Block_copy(aBlock);
  v22 = a1;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21874E060(&qword_280E927E0, MEMORY[0x277D85198]);
  sub_21879DD98();
  sub_21874E060(&qword_280E8EFA0, sub_21879DD98);
  sub_219BF7164();
  MEMORY[0x21CECD420](v16, v9, v6, v21);
  _Block_release(v21);

  (*(v31 + 8))(v6, v4);
  (*(v29 + 8))(v9, v30);
  return (v27)(v16, v28);
}

uint64_t sub_2189EC3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a1;
  v9 = swift_task_alloc();
  *(v5 + 72) = v9;
  *v9 = v5;
  v9[1] = sub_2189EC464;

  return sub_2189EC5C0(v5 + 16, a3, a4, a5);
}

uint64_t sub_2189EC464()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2189EC594, 0, 0);
  }
}

uint64_t sub_2189EC594()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 48);
  v1[1] = *(v0 + 32);
  v1[2] = v3;
  *v1 = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2189EC5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[13] = v4;
  v5[10] = a2;
  v5[11] = a3;
  v5[9] = a1;
  v6 = sub_219BED684();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v7 = sub_219BED624();
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v8 = sub_219BED6B4();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2189EC740, 0, 0);
}

uint64_t sub_2189EC740()
{
  sub_2189EEA80(*(v0 + 80), *(v0 + 88));
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  *(v0 + 184) = CACurrentMediaTime();
  *v1 = v6;
  (*(v2 + 104))(v1, *MEMORY[0x277D31BF0], v3);
  v7 = *(v5 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange);
  v8 = v4[1];
  *(v0 + 192) = v8;
  v9 = v4[2];
  *(v0 + 200) = v9;
  *(v0 + 208) = v4[5];
  *(v0 + 216) = v4[4];
  v10 = *MEMORY[0x277D30BC0];
  v11 = qword_280E8D7F8;
  swift_bridgeObjectRetain_n();
  v12 = v6;
  swift_unknownObjectRetain();
  v7;
  v13 = v8;
  v14 = v9;
  v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 104);
  v16 = qword_280F61708;
  *(v0 + 224) = qword_280F61708;
  v16;
  sub_219BED6A4();
  v17 = v15[35];
  v18 = v15[36];
  __swift_project_boxed_opaque_existential_1(v15 + 32, v17);
  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  *v19 = v0;
  v19[1] = sub_2189ECADC;
  v20 = *(v0 + 176);
  v21 = *(v0 + 128);

  return MEMORY[0x28218FB20](v21, v20, v17, v18);
}

uint64_t sub_2189ECADC()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_2189ED144;
  }

  else
  {
    v2 = sub_2189ECBF8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2189ECBF8()
{
  v50 = v0;
  v1 = *(*(v0 + 96) + 24);
  v2 = sub_219BED674();
  v49 = v1;

  sub_2191ED6C8(v2);
  sub_2186F20D4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C0EE20;
  if (v1 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83C10];
  *(v3 + 56) = MEMORY[0x277D83B88];
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;
  if (v1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 96) = v5;
  *(v3 + 104) = v6;
  *(v3 + 72) = v7;
  v8 = sub_219BED634();
  if (v8 >> 62)
  {
    v9 = sub_219BF7214();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 136) = v5;
  *(v3 + 144) = v6;
  *(v3 + 112) = v9;
  v10 = sub_21988DFA0();
  v12 = v11;
  *(v3 + 176) = MEMORY[0x277D837D0];
  v48 = sub_2186FC3BC();
  *(v3 + 184) = v48;
  *(v3 + 152) = v10;
  *(v3 + 160) = v12;
  sub_219BF6214();
  sub_219BE5314();

  v13 = sub_219BED654();
  v14 = sub_219BED664();
  if (sub_219BED644())
  {

    v47 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  if (!v13)
  {
    v47 = *(v0 + 192);
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_13:
    v15 = *(v0 + 200);
    goto LABEL_14;
  }

  v16 = *(v0 + 96);
  v17 = v13;
  v18 = [v17 bottom];
  v19 = [*v16 bottom];
  v47 = [objc_opt_self() feedRangeWithTop:v18 bottom:v19];

  if (!v14)
  {
    goto LABEL_13;
  }

LABEL_11:
  v20 = *(v0 + 96);
  v21 = v14;
  v22 = [v21 &_OBJC_LABEL_PROTOCOL___FCShortcutListObserving];
  v23 = [*v20 &_OBJC_LABEL_PROTOCOL___FCShortcutListObserving];
  v15 = [objc_opt_self() &off_278247290 + 5];

LABEL_14:
LABEL_15:
  v24 = *(v0 + 240);

  v49 = sub_219758F7C(v25);
  sub_2189ED798(&v49);
  if (v24)
  {
  }

  else
  {
    v45 = *(v0 + 216);
    v46 = *(v0 + 208);
    v27 = *(v0 + 168);
    v42 = *(v0 + 160);
    v43 = *(v0 + 176);
    v28 = *(v0 + 120);
    v39 = *(v0 + 128);
    v40 = *(v0 + 112);
    v29 = *(v0 + 72);

    v44 = v49;
    v41 = sub_219BED634();
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_219C0B8C0;
    sub_2189EEB80(v47, v15);
    v31 = sub_21988DFA0();
    v32 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = v48;
    *(v30 + 32) = v31;
    *(v30 + 40) = v33;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0xE000000000000000;
    *(v0 + 48) = v47;
    *(v0 + 56) = v15;
    sub_219BF7484();
    sub_2189EEBC0(v47, v15);
    v34 = *(v0 + 32);
    v35 = *(v0 + 40);
    *(v30 + 96) = v32;
    *(v30 + 104) = v48;
    *(v30 + 72) = v34;
    *(v30 + 80) = v35;
    sub_219BF5CD4();
    v36 = MEMORY[0x277D83A80];
    *(v30 + 136) = MEMORY[0x277D839F8];
    *(v30 + 144) = v36;
    *(v30 + 112) = v37;
    sub_219BF6214();
    sub_219BE5314();

    (*(v28 + 8))(v39, v40);
    (*(v27 + 8))(v43, v42);

    *v29 = v44;
    v29[1] = v41;
    v29[2] = v45;
    v29[3] = v47;
    v29[4] = v15;
    v29[5] = v46;
    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_2189ED144()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2189ED1E0(void **a1, void **a2)
{
  sub_2186DCF58();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v54 = &v49 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v49 - v12;
  v14 = sub_219BDBD34();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v53 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  v23 = *a1;
  v52 = *a2;
  v24 = [v23 displayDate];
  if (v24)
  {
    v25 = v24;
    sub_219BDBCA4();

    v26 = *(v15 + 32);
    v26(v13, v20, v14);
    v27 = *(v15 + 56);
    v27(v13, 0, 1, v14);
    v26(v22, v13, v14);
    v28 = v52;
  }

  else
  {
    v51 = v22;
    v27 = *(v15 + 56);
    v27(v13, 1, 1, v14);
    v29 = [v23 publishDate];
    if (v29)
    {
      v30 = v29;
      sub_219BDBCA4();

      v31 = *(v15 + 32);
      v31(v11, v20, v14);
      v27(v11, 0, 1, v14);
      v31(v51, v11, v14);
      v32 = (*(v15 + 48))(v13, 1, v14);
    }

    else
    {
      v27(v11, 1, 1, v14);
      sub_219BDBD24();
      v33 = *(v15 + 48);
      if (v33(v11, 1, v14) != 1)
      {
        sub_2189DD39C(v11);
      }

      v32 = v33(v13, 1, v14);
    }

    v28 = v52;
    if (v32 != 1)
    {
      sub_2189DD39C(v13);
    }

    v22 = v51;
  }

  v34 = [v28 displayDate];
  v35 = v54;
  if (v34)
  {
    v36 = v34;
    sub_219BDBCA4();

    v37 = *(v15 + 32);
    v37(v35, v20, v14);
    v27(v35, 0, 1, v14);
    v38 = v53;
    v37(v53, v35, v14);
  }

  else
  {
    v27(v54, 1, 1, v14);
    v39 = [v28 publishDate];
    if (v39)
    {
      v40 = v39;
      sub_219BDBCA4();

      v51 = v22;
      v41 = *(v15 + 32);
      v42 = v50;
      v41(v50, v20, v14);
      v27(v42, 0, 1, v14);
      v38 = v53;
      v41(v53, v42, v14);
      v22 = v51;
      v43 = (*(v15 + 48))(v35, 1, v14);
    }

    else
    {
      v44 = v50;
      v27(v50, 1, 1, v14);
      v38 = v53;
      sub_219BDBD24();
      v45 = *(v15 + 48);
      if (v45(v44, 1, v14) != 1)
      {
        sub_2189DD39C(v44);
      }

      v43 = v45(v35, 1, v14);
    }

    if (v43 != 1)
    {
      sub_2189DD39C(v35);
    }
  }

  v46 = sub_219BDBC14();
  v47 = *(v15 + 8);
  v47(v38, v14);
  v47(v22, v14);
  return v46 & 1;
}

uint64_t sub_2189ED798(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2189ED814(v6);
  return sub_219BF73E4();
}

uint64_t sub_2189ED814(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218731D50();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2189EDA08(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_2189ED918(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2189ED918(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = result - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v15 = v7;
    while (1)
    {
      v17 = v9;
      v16 = *v7;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v11 = sub_2189ED1E0(&v17, &v16);
      swift_unknownObjectRelease();
      result = swift_unknownObjectRelease();
      if (v4)
      {
        break;
      }

      if (v11)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v12 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v12;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v15 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_2189EDA08(void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v150 = a1;
  sub_2186DCF58();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v164 = &v147 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v147 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v147 - v17;
  v171 = sub_219BDBD34();
  v19 = MEMORY[0x28223BE20](v171);
  v21 = &v147 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v167 = &v147 - v23;
  result = MEMORY[0x28223BE20](v22);
  v169 = &v147 - v26;
  v27 = *(a3 + 8);
  v153 = a3;
  if (v27 >= 1)
  {
    v158 = v11;
    v148 = a4;
    v28 = 0;
    v165 = (v25 + 56);
    v166 = (v25 + 32);
    v159 = (v25 + 48);
    v161 = (v25 + 8);
    v29 = MEMORY[0x277D84F90];
    v157 = v16;
    v160 = v18;
    v163 = v21;
    v30 = v18;
    while (1)
    {
      v31 = v28++;
      if (v28 >= v27)
      {
        v151 = v31;
      }

      else
      {
        v32 = v27;
        v149 = v29;
        v11 = *a3;
        v33 = *(*a3 + 8 * v28);
        v172 = *(*a3 + 8 * v31);
        v173[0] = v33;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        LODWORD(v170) = sub_2189ED1E0(v173, &v172);
        if (v5)
        {

          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        result = swift_unknownObjectRelease();
        v34 = v31 + 2;
        v35 = 8 * v31;
        v36 = (v11 + 8 * v31 + 16);
        while (v32 != v34)
        {
          v37 = *v36;
          v172 = *(v36 - 1);
          v173[0] = v37;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v11 = sub_2189ED1E0(v173, &v172);
          swift_unknownObjectRelease();
          result = swift_unknownObjectRelease();
          ++v34;
          ++v36;
          if ((v170 ^ v11))
          {
            v38 = v34 - 1;
            goto LABEL_12;
          }
        }

        v38 = v32;
LABEL_12:
        v5 = 0;
        v29 = v149;
        v30 = v160;
        v151 = v31;
        if (v170)
        {
          if (v38 < v31)
          {
            goto LABEL_144;
          }

          if (v31 < v38)
          {
            v39 = 8 * v38 - 8;
            v40 = v38;
            v41 = v31;
            do
            {
              if (v41 != --v40)
              {
                v43 = *v153;
                if (!*v153)
                {
                  goto LABEL_148;
                }

                v42 = *(v43 + v35);
                *(v43 + v35) = *(v43 + v39);
                *(v43 + v39) = v42;
              }

              ++v41;
              v39 -= 8;
              v35 += 8;
            }

            while (v41 < v40);
          }
        }

        v28 = v38;
        a3 = v153;
      }

      v44 = *(a3 + 8);
      if (v28 < v44)
      {
        if (__OFSUB__(v28, v151))
        {
          goto LABEL_140;
        }

        if (v28 - v151 < v148)
        {
          v45 = v151 + v148;
          if (__OFADD__(v151, v148))
          {
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
            goto LABEL_147;
          }

          if (v45 >= v44)
          {
            v45 = *(a3 + 8);
          }

          if (v45 < v151)
          {
            goto LABEL_143;
          }

          if (v28 != v45)
          {
            v149 = v29;
            v147 = v5;
            v162 = *a3;
            v46 = v162 + 8 * v28 - 8;
            v47 = v151 - v28;
            v152 = v45;
            do
            {
              v155 = v46;
              v156 = v28;
              v48 = v47;
              v49 = *(v162 + 8 * v28);
              v154 = v47;
              do
              {
                v168 = v48;
                v50 = *v46;
                swift_unknownObjectRetain();
                swift_unknownObjectRetain();
                v51 = [v49 displayDate];
                v170 = v50;
                if (v51)
                {
                  v52 = v167;
                  v53 = v51;
                  sub_219BDBCA4();

                  v54 = *v166;
                  v55 = v52;
                  v50 = v170;
                  v56 = v171;
                  (*v166)(v30, v55, v171);
                  v57 = *v165;
                  (*v165)(v30, 0, 1, v56);
                  v54(v169, v30, v56);
                }

                else
                {
                  v57 = *v165;
                  (*v165)(v30, 1, 1, v171);
                  v58 = [v49 publishDate];
                  if (v58)
                  {
                    v59 = v167;
                    v60 = v58;
                    sub_219BDBCA4();

                    v61 = *v166;
                    v62 = v157;
                    v63 = v59;
                    v64 = v171;
                    (*v166)(v157, v63, v171);
                    v57(v62, 0, 1, v64);
                    v61(v169, v62, v64);
                    v65 = *v159;
                  }

                  else
                  {
                    v66 = v157;
                    v67 = v171;
                    v57(v157, 1, 1, v171);
                    sub_219BDBD24();
                    v65 = *v159;
                    if ((*v159)(v66, 1, v67) != 1)
                    {
                      sub_2189DD39C(v66);
                    }
                  }

                  v30 = v160;
                  if (v65(v160, 1, v171) != 1)
                  {
                    sub_2189DD39C(v30);
                  }
                }

                v68 = [v50 displayDate];
                if (v68)
                {
                  v69 = v167;
                  v70 = v68;
                  sub_219BDBCA4();

                  v71 = *v166;
                  v72 = v30;
                  v73 = v164;
                  v74 = v69;
                  v75 = v171;
                  (*v166)(v164, v74, v171);
                  v57(v73, 0, 1, v75);
                  v76 = v163;
                  v77 = v73;
                  v30 = v72;
                  v71(v163, v77, v75);
                  v78 = v76;
                }

                else
                {
                  v57(v164, 1, 1, v171);
                  v79 = [v50 publishDate];
                  v80 = v159;
                  if (v79)
                  {
                    v81 = v167;
                    v82 = v79;
                    sub_219BDBCA4();

                    v83 = *v166;
                    v84 = v158;
                    v85 = v81;
                    v86 = v171;
                    (*v166)(v158, v85, v171);
                    v57(v84, 0, 1, v86);
                    v83(v163, v84, v86);
                    v87 = (*v80)(v164, 1, v171);
                  }

                  else
                  {
                    v88 = v158;
                    v89 = v171;
                    v57(v158, 1, 1, v171);
                    sub_219BDBD24();
                    v90 = *v80;
                    if ((*v80)(v88, 1, v89) != 1)
                    {
                      sub_2189DD39C(v88);
                    }

                    v87 = v90(v164, 1, v171);
                  }

                  v30 = v160;
                  v78 = v163;
                  if (v87 != 1)
                  {
                    sub_2189DD39C(v164);
                  }
                }

                v91 = v169;
                v11 = sub_219BDBC14();
                v92 = *v161;
                v93 = v171;
                (*v161)(v78, v171);
                v92(v91, v93);
                swift_unknownObjectRelease();
                result = swift_unknownObjectRelease();
                if ((v11 & 1) == 0)
                {
                  break;
                }

                v94 = v168;
                if (!v162)
                {
                  goto LABEL_145;
                }

                v95 = *v46;
                v49 = *(v46 + 8);
                *v46 = v49;
                *(v46 + 8) = v95;
                v46 -= 8;
                v96 = __CFADD__(v94, 1);
                v48 = v94 + 1;
              }

              while (!v96);
              v28 = v156 + 1;
              v46 = v155 + 8;
              v47 = v154 - 1;
            }

            while (v156 + 1 != v152);
            v28 = v152;
            v5 = v147;
            a3 = v153;
            v29 = v149;
          }
        }
      }

      if (v28 < v151)
      {
        goto LABEL_139;
      }

      v97 = v29;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v29 = v97;
      }

      else
      {
        result = sub_2191F6B60(0, *(v97 + 16) + 1, 1, v97);
        v29 = result;
      }

      v11 = *(v29 + 16);
      v98 = *(v29 + 24);
      v30 = v11 + 1;
      if (v11 >= v98 >> 1)
      {
        result = sub_2191F6B60((v98 > 1), v11 + 1, 1, v29);
        v29 = result;
      }

      *(v29 + 16) = v30;
      v99 = v29 + 16 * v11;
      *(v99 + 32) = v151;
      *(v99 + 40) = v28;
      if (!*v150)
      {
        goto LABEL_149;
      }

      if (v11)
      {
        v100 = *v150;
        while (1)
        {
          v101 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v102 = *(v29 + 32);
            v103 = *(v29 + 40);
            v112 = __OFSUB__(v103, v102);
            v104 = v103 - v102;
            v105 = v112;
LABEL_77:
            if (v105)
            {
              goto LABEL_128;
            }

            v118 = (v29 + 16 * v30);
            v120 = *v118;
            v119 = v118[1];
            v121 = __OFSUB__(v119, v120);
            v122 = v119 - v120;
            v123 = v121;
            if (v121)
            {
              goto LABEL_131;
            }

            v124 = (v29 + 32 + 16 * v101);
            v126 = *v124;
            v125 = v124[1];
            v112 = __OFSUB__(v125, v126);
            v127 = v125 - v126;
            if (v112)
            {
              goto LABEL_134;
            }

            if (__OFADD__(v122, v127))
            {
              goto LABEL_135;
            }

            if (v122 + v127 >= v104)
            {
              if (v104 < v127)
              {
                v101 = v30 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          v128 = (v29 + 16 * v30);
          v130 = *v128;
          v129 = v128[1];
          v112 = __OFSUB__(v129, v130);
          v122 = v129 - v130;
          v123 = v112;
LABEL_91:
          if (v123)
          {
            goto LABEL_130;
          }

          v131 = v29 + 16 * v101;
          v133 = *(v131 + 32);
          v132 = *(v131 + 40);
          v112 = __OFSUB__(v132, v133);
          v134 = v132 - v133;
          if (v112)
          {
            goto LABEL_133;
          }

          if (v134 < v122)
          {
            goto LABEL_3;
          }

LABEL_98:
          v11 = v101 - 1;
          if (v101 - 1 >= v30)
          {
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
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            result = sub_218C81048(v11);
            goto LABEL_113;
          }

          if (!*a3)
          {
            goto LABEL_146;
          }

          v139 = v29;
          v30 = *(v29 + 32 + 16 * v11);
          v140 = *(v29 + 32 + 16 * v101 + 8);
          sub_2189EE6E8((*a3 + 8 * v30), (*a3 + 8 * *(v29 + 32 + 16 * v101)), (*a3 + 8 * v140), v100);
          if (v5)
          {
          }

          if (v140 < v30)
          {
            goto LABEL_124;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v141 = v139;
          }

          else
          {
            v141 = sub_218C81048(v139);
          }

          if (v11 >= *(v141 + 2))
          {
            goto LABEL_125;
          }

          v142 = &v141[16 * v11];
          *(v142 + 4) = v30;
          *(v142 + 5) = v140;
          v174 = v141;
          v11 = &v174;
          result = sub_218C80FBC(v101);
          v29 = v174;
          v30 = *(v174 + 16);
          if (v30 <= 1)
          {
            goto LABEL_3;
          }
        }

        v106 = v29 + 32 + 16 * v30;
        v107 = *(v106 - 64);
        v108 = *(v106 - 56);
        v112 = __OFSUB__(v108, v107);
        v109 = v108 - v107;
        if (v112)
        {
          goto LABEL_126;
        }

        v111 = *(v106 - 48);
        v110 = *(v106 - 40);
        v112 = __OFSUB__(v110, v111);
        v104 = v110 - v111;
        v105 = v112;
        if (v112)
        {
          goto LABEL_127;
        }

        v113 = (v29 + 16 * v30);
        v115 = *v113;
        v114 = v113[1];
        v112 = __OFSUB__(v114, v115);
        v116 = v114 - v115;
        if (v112)
        {
          goto LABEL_129;
        }

        v112 = __OFADD__(v104, v116);
        v117 = v104 + v116;
        if (v112)
        {
          goto LABEL_132;
        }

        if (v117 >= v109)
        {
          v135 = (v29 + 32 + 16 * v101);
          v137 = *v135;
          v136 = v135[1];
          v112 = __OFSUB__(v136, v137);
          v138 = v136 - v137;
          if (v112)
          {
            goto LABEL_138;
          }

          if (v104 < v138)
          {
            v101 = v30 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_77;
      }

LABEL_3:
      v27 = *(a3 + 8);
      v30 = v160;
      if (v28 >= v27)
      {
        goto LABEL_110;
      }
    }
  }

  v29 = MEMORY[0x277D84F90];
LABEL_110:
  v30 = *v150;
  if (*v150)
  {
    v11 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_141;
    }

    result = v11;
LABEL_113:
    v174 = result;
    v11 = *(result + 16);
    if (v11 < 2)
    {
    }

    while (1)
    {
      v143 = *a3;
      if (!*a3)
      {
        break;
      }

      a3 = *(result + 16 * v11);
      v144 = result;
      v145 = *(result + 16 * (v11 - 1) + 40);
      sub_2189EE6E8((v143 + 8 * a3), (v143 + 8 * *(result + 16 * (v11 - 1) + 32)), (v143 + 8 * v145), v30);
      if (v5)
      {
      }

      if (v145 < a3)
      {
        goto LABEL_136;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_218C81048(v144);
      }

      if (v11 - 2 >= *(v144 + 2))
      {
        goto LABEL_137;
      }

      v146 = &v144[16 * v11];
      *v146 = a3;
      *(v146 + 1) = v145;
      v174 = v144;
      sub_218C80FBC(v11 - 1);
      result = v174;
      v11 = *(v174 + 16);
      a3 = v153;
      if (v11 <= 1)
      {
      }
    }

LABEL_147:
    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2189EE6E8(void **__dst, void **__src, void **a3, void **a4)
{
  v5 = a4;
  v6 = a3;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v15 = (v5 + 8 * v10);
    if (v8 < 8 || __src >= v6)
    {
LABEL_21:
      v21 = v7;
      goto LABEL_53;
    }

    v16 = __src;
    while (1)
    {
      v45 = *v16;
      v44 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v17 = sub_2189ED1E0(&v45, &v44);
      if (v4)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v33 = v15 - v5 + 7;
        if ((v15 - v5) >= 0)
        {
          v33 = v15 - v5;
        }

        if (v7 < v5 || v7 >= v5 + (v33 & 0xFFFFFFFFFFFFFFF8) || v7 != v5)
        {
          v34 = 8 * (v33 >> 3);
          v35 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v18 = v17;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v18 & 1) == 0)
      {
        break;
      }

      v19 = v16;
      v20 = v7 == v16++;
      if (!v20)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v5 >= v15 || v16 >= v6)
      {
        goto LABEL_21;
      }
    }

    v19 = v5;
    v20 = v7 == v5;
    v5 += 8;
    if (v20)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v19;
    goto LABEL_19;
  }

  v21 = __src;
  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = (v5 + 8 * v13);
  if (v11 < 8 || v21 <= v7)
  {
LABEL_53:
    v39 = v15 - v5 + 7;
    if ((v15 - v5) >= 0)
    {
      v39 = v15 - v5;
    }

    if (v21 >= v5 && v21 < v5 + (v39 & 0xFFFFFFFFFFFFFFF8) && v21 == v5)
    {
      return 1;
    }

    v34 = 8 * (v39 >> 3);
    v35 = v21;
LABEL_59:
    v38 = v5;
LABEL_60:
    memmove(v35, v38, v34);
    return 1;
  }

  v43 = v5;
  v22 = -v5;
  v41 = -v5;
LABEL_28:
  v42 = v21;
  v23 = v21 - 1;
  v24 = v15 + v22;
  --v6;
  v25 = v15;
  v26 = v15;
  while (1)
  {
    v27 = *--v26;
    v45 = v27;
    v28 = v23;
    v44 = *v23;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v29 = sub_2189ED1E0(&v45, &v44);
    if (v4)
    {
      break;
    }

    v30 = v29;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v31 = v6 + 1;
    if (v30)
    {
      v32 = v28;
      if (v31 != v42)
      {
        *v6 = *v28;
      }

      v5 = v43;
      v15 = v25;
      if (v25 <= v43 || (v21 = v32, v22 = v41, v32 <= v7))
      {
        v21 = v32;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v31 != v25)
    {
      *v6 = *v26;
    }

    v24 -= 8;
    --v6;
    v25 = v26;
    v23 = v28;
    if (v26 <= v43)
    {
      v15 = v26;
      v21 = v42;
      v5 = v43;
      goto LABEL_53;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v24 >= 0)
  {
    v36 = v24;
  }

  else
  {
    v36 = v24 + 7;
  }

  v37 = v36 >> 3;
  v35 = v42;
  v38 = v43;
  if (v42 < v43 || v42 >= (v43 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v42, v43, 8 * v37);
    return 1;
  }

  if (v42 != v43)
  {
    v34 = 8 * v37;
    goto LABEL_60;
  }

  return 1;
}

id sub_2189EEA80(void *a1, uint64_t a2)
{
  v4 = sub_219BED694();
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = [a1 backingTag];
  swift_getObjectType();
  v7 = sub_219BF6254();
  swift_unknownObjectRelease();
  v8 = *(a2 + 64);
  if (v7)
  {
    if ([v8 respondsToSelector_])
    {
      result = [v8 singleTopicFeedMinFeedItemsPerRequest];
      goto LABEL_9;
    }

LABEL_12:
    sub_2189EEC00();
    swift_allocError();
    *v10 = 1;
    return swift_willThrow();
  }

  if (([v8 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_12;
  }

  result = [v8 singleChannelFeedMinFeedItemsPerRequest];
LABEL_9:
  if (result <= v5)
  {
    return v5;
  }

  return result;
}

id sub_2189EEB80(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

void sub_2189EEBC0(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_2189EEC00()
{
  result = qword_280ED2660;
  if (!qword_280ED2660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ED2660);
  }

  return result;
}

uint64_t sub_2189EEC54()
{
  v1 = v0;
  v2 = sub_219BECB44();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  type metadata accessor for SearchHomeViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v0;
  v6 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v6)
  {
    __break(1u);
    goto LABEL_23;
  }

  v123 = v6;
  v124 = v4;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_2186C709C(0, &unk_280ED7980);
  sub_219BE1E34();
  if (!v132)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_2186CB1F0(&v131, v133);
  v7 = __swift_project_boxed_opaque_existential_1(v133, v133[3]);
  v9 = v0[11];
  v8 = v0[12];
  v5 = v0[13];
  v10 = *v7;
  __swift_project_boxed_opaque_existential_1((*v7 + 16), *(*v7 + 40));
  type metadata accessor for SearchViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v122 = v9;
  v12 = v5;
  v11[4] = v8;
  v11[5] = v5;
  v125 = v8;
  swift_unknownObjectRetain();
  v13 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = sub_219BED0C4();
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  if (v14)
  {
    sub_2186C709C(0, &qword_280EDC810);
    sub_219BE1E34();
    if (v132)
    {
      v15 = __swift_mutable_project_boxed_opaque_existential_1(&v131, v132);
      MEMORY[0x28223BE20](v15);
      v17 = (&v119 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17);
      v19 = *v17;
      v20 = type metadata accessor for BaseStyler();
      v129 = v20;
      v21 = sub_218704030(&qword_280EDFED0, type metadata accessor for BaseStyler);
      v130 = v21;
      v128[0] = v19;
      type metadata accessor for SearchHomeContainerStyler();
      v22 = swift_allocObject();
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v128, v20);
      MEMORY[0x28223BE20](v23);
      v25 = (&v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v26 + 16))(v25);
      v27 = *v25;
      v22[5] = v20;
      v22[6] = v21;
      v22[2] = v27;
      __swift_destroy_boxed_opaque_existential_1(v128);
      __swift_destroy_boxed_opaque_existential_1(&v131);
      __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
      sub_2186C709C(0, &qword_280EE5150);
      sub_219BE1E34();
      v28 = v131;
      if (v131)
      {
        v29 = *(&v131 + 1);
        v121 = type metadata accessor for SearchHomeContainerController();
        v30 = objc_allocWithZone(v121);
        swift_unknownObjectWeakInit();
        *&v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate + 8] = 0;
        swift_unknownObjectWeakInit();
        v31 = &v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_currentSearchTerm];
        *v31 = 0;
        v31[1] = 0xE000000000000000;
        *&v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_currentFilteredTagIDs] = 0;
        v32 = &v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_windowTitle];
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v34 = [objc_opt_self() bundleForClass_];
        v118 = 0x8000000219CDE940;
        v35 = sub_219BDB5E4();
        v37 = v36;

        *v32 = v35;
        v32[1] = v37;
        v38 = &v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_previousWindowTitle];
        *v38 = 0;
        v38[1] = 0;
        v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_shouldUpdateWindowTitle] = 1;
        *&v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_styler] = v22;
        v39 = &v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController];
        v40 = v123;
        *v39 = v123;
        v39[8] = 0;
        v41 = &v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchResultsViewController];
        *v41 = v13;
        v41[8] = 0;
        v42 = &v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_toolbarManager];
        *v42 = v28;
        v42[1] = v29;
        *&v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchOrigination] = v122;
        v43 = &v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider];
        *v43 = v125;
        v43[1] = v12;
        type metadata accessor for SearchFilterBarViewModel(0);
        v44 = swift_allocObject();
        *(v44 + 24) = 0;
        swift_unknownObjectWeakInit();
        v45 = OBJC_IVAR____TtC7NewsUI224SearchFilterBarViewModel___observationRegistrar;
        swift_unknownObjectRetain();

        v46 = v40;
        v123 = v13;
        swift_unknownObjectRetain();
        v122 = v45;
        sub_219BDC234();
        v128[0] = MEMORY[0x277D84F90];
        v5 = 0;
        sub_2189F05F8(v128);
        *(v44 + 32) = v128[0];
        *&v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarViewModel] = v44;
        v128[0] = v44;
        sub_2189F082C();
        v48 = objc_allocWithZone(v47);
        swift_retain_n();
        v49 = sub_219BEC9B4();
        v50 = OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarHostingController;
        *&v30[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarHostingController] = v49;
        v51 = v49;
        sub_219BECB34();
        sub_219BEC9A4();

        if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
        {
LABEL_10:
          v124 = v46;
          v126.receiver = v30;
          v126.super_class = v121;
          v56 = objc_msgSendSuper2(&v126, sel_initWithNibName_bundle_, 0, 0);
          v57 = *&v56[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController];
          v58 = v56[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController + 8];
          v59 = v56;
          v60 = v57;
          v120 = v22;
          v119 = v28;
          if (v58 == 1)
          {
            v61 = sub_219BE7964();

            v60 = v61;
          }

          *&v60[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_delegate + 8] = &off_282AA06B8;
          swift_unknownObjectWeakAssign();
          v62 = v59;

          swift_getObjectType();
          v63 = v12[3];
          v64 = v62;
          v63(v64, &off_282AA0698);

          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v119 - 4) = v44;
          *(&v119 - 3) = v59;
          v118 = &off_282AA06A8;
          v128[0] = v44;
          sub_218704030(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
          sub_219BDC1F4();

LABEL_21:
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v133);
          return v64;
        }

        v52 = [*&v30[v50] view];
        if (v52)
        {
          v53 = v52;
          sub_219BE8664();
          v54 = sub_219BE7BC4();

          v55 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v54 edge:1 style:0];

          [v53 addInteraction_];
          goto LABEL_10;
        }

        goto LABEL_29;
      }

      goto LABEL_27;
    }

    goto LABEL_25;
  }

  sub_2186C709C(0, &qword_280EDC810);
  sub_219BE1E34();
  if (!v132)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v66 = __swift_mutable_project_boxed_opaque_existential_1(&v131, v132);
  MEMORY[0x28223BE20](v66);
  v68 = (&v119 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v69 + 16))(v68);
  v70 = *v68;
  v71 = type metadata accessor for BaseStyler();
  v129 = v71;
  v72 = sub_218704030(&qword_280EDFED0, type metadata accessor for BaseStyler);
  v130 = v72;
  v128[0] = v70;
  type metadata accessor for SearchHomeContainerStyler();
  v73 = swift_allocObject();
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v128, v71);
  v5 = &v119;
  MEMORY[0x28223BE20](v74);
  v76 = (&v119 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v77 + 16))(v76);
  v78 = *v76;
  v73[5] = v71;
  v73[6] = v72;
  v73[2] = v78;
  __swift_destroy_boxed_opaque_existential_1(v128);
  __swift_destroy_boxed_opaque_existential_1(&v131);
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  sub_2186C709C(0, &qword_280EE5150);
  sub_219BE1E34();
  v79 = v131;
  if (!v131)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v80 = *(&v131 + 1);
  v121 = type metadata accessor for SearchHomeContainerController();
  v81 = objc_allocWithZone(v121);
  swift_unknownObjectWeakInit();
  *&v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v82 = &v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_currentSearchTerm];
  *v82 = 0;
  v82[1] = 0xE000000000000000;
  *&v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_currentFilteredTagIDs] = 0;
  v83 = &v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_windowTitle];
  type metadata accessor for Localized();
  v84 = swift_getObjCClassFromMetadata();
  v85 = [objc_opt_self() bundleForClass_];
  v118 = 0x8000000219CDE940;
  v86 = sub_219BDB5E4();
  v88 = v87;

  *v83 = v86;
  v83[1] = v88;
  v89 = &v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_previousWindowTitle];
  *v89 = 0;
  v89[1] = 0;
  v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_shouldUpdateWindowTitle] = 1;
  *&v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_styler] = v73;
  v90 = &v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController];
  v91 = v123;
  *v90 = v123;
  v90[8] = 0;
  v92 = &v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchResultsViewController];
  *v92 = v13;
  v92[8] = 0;
  v93 = &v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_toolbarManager];
  *v93 = v79;
  v93[1] = v80;
  *&v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchOrigination] = v122;
  v94 = &v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterProvider];
  *v94 = v125;
  v94[1] = v12;
  type metadata accessor for SearchFilterBarViewModel(0);
  v95 = swift_allocObject();
  *(v95 + 24) = 0;
  swift_unknownObjectWeakInit();
  v96 = OBJC_IVAR____TtC7NewsUI224SearchFilterBarViewModel___observationRegistrar;
  swift_unknownObjectRetain();
  v97 = v91;
  v123 = v13;

  swift_unknownObjectRetain();
  v122 = v96;
  sub_219BDC234();
  v128[0] = MEMORY[0x277D84F90];
  v5 = 0;
  sub_2189F05F8(v128);
  *(v95 + 32) = v128[0];
  *&v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarViewModel] = v95;
  v128[0] = v95;
  sub_2189F082C();
  v99 = objc_allocWithZone(v98);
  swift_retain_n();
  v100 = sub_219BEC9B4();
  v101 = OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarHostingController;
  *&v81[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_filterBarHostingController] = v100;
  v102 = v100;
  sub_219BECB34();
  sub_219BEC9A4();

  if ((_UISolariumFeatureFlagEnabled() & 1) == 0)
  {
LABEL_18:
    v124 = v73;
    v107 = v12;
    v127.receiver = v81;
    v127.super_class = v121;
    v108 = objc_msgSendSuper2(&v127, sel_initWithNibName_bundle_, 0, 0, v97);
    v109 = *&v108[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController];
    v110 = v108[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_searchHomeViewController + 8];
    v111 = v108;
    v112 = v109;
    v120 = v79;
    if (v110 == 1)
    {
      v113 = sub_219BE7964();

      v112 = v113;
    }

    *&v112[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_delegate + 8] = &off_282AA06B8;
    swift_unknownObjectWeakAssign();
    v114 = v111;

    swift_getObjectType();
    v115 = v107[3];
    v64 = v114;
    v115();

    v116 = swift_getKeyPath();
    MEMORY[0x28223BE20](v116);
    *(&v119 - 4) = v95;
    *(&v119 - 3) = v111;
    v118 = &off_282AA06A8;
    v128[0] = v95;
    sub_218704030(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
    sub_219BDC1F4();

    goto LABEL_21;
  }

  v103 = [*&v81[v101] view];
  if (v103)
  {
    v104 = v103;
    sub_219BE8664();
    v105 = sub_219BE7BC4();

    v106 = [objc_allocWithZone(MEMORY[0x277D76220]) initWithScrollView:v105 edge:1 style:0];

    [v104 addInteraction_];
    goto LABEL_18;
  }

LABEL_30:
  __break(1u);

  __break(1u);
  return result;
}

id sub_2189EFDBC(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 64);
  if (v3)
  {
    v4 = *(v1 + 64);
  }

  else
  {
    v5 = sub_2189EEC54();
    v6 = *(v1 + 64);
    *(v2 + 64) = v5;
    v4 = v5;
  }

  v7 = type metadata accessor for SearchHomeCoordinatingController();
  v8 = objc_allocWithZone(v7);
  swift_unknownObjectWeakInit();
  *&v8[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = &v8[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchTerm];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v8[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_pendingSearchOrigination];
  *v10 = 0;
  v10[8] = 1;
  *&v8[OBJC_IVAR____TtC7NewsUI232SearchHomeCoordinatingController_searchHomeContainerController] = v4;
  v41.receiver = v8;
  v41.super_class = v7;
  v11 = v3;
  v12 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  v13 = [objc_allocWithZone(MEMORY[0x277D759F0]) initWithSearchResultsController_];
  [v13 setDelegate_];
  v14 = [v13 searchBar];
  [v14 setDelegate_];

  [v13 setShowsSearchResultsController_];
  v15 = [v13 searchBar];
  [v15 setAutocorrectionType_];

  v16 = [v13 searchBar];
  [v16 setAutocapitalizationType_];

  v17 = [v13 searchBar];
  [v17 setLookToDictateEnabled_];

  v18 = [v13 searchBar];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = objc_opt_self();
  v21 = [v20 bundleForClass_];
  sub_219BDB5E4();

  v22 = sub_219BF53D4();

  [v18 setPlaceholder_];

  if ([*(v2 + 72) useOfflineMode])
  {
    v23 = [v13 searchBar];
    v24 = [v23 searchTextField];

    [v24 setEnabled_];
  }

  v25 = swift_allocObject();
  swift_weakInit();
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v13;
  v27 = v13;

  swift_unknownObjectWeakAssign();
  v28 = v27;
  sub_21903F5E8();
  if (sub_219BED0C4())
  {
    v29 = a1;
  }

  else
  {
    v29 = v12;
  }

  v30 = [v29 navigationItem];
  [v30 setSearchController_];

  v31 = 2;
  if (sub_219BED0C4())
  {
    v32 = 3;
  }

  else
  {
    v32 = 2;
  }

  [v30 setPreferredSearchBarPlacement_];
  [v30 setHidesSearchBarWhenScrolling_];
  if ((sub_219BED0C4() & 1) == 0)
  {
    v33 = [v20 bundleForClass_];
    sub_219BDB5E4();

    v34 = sub_219BF53D4();

    [v30 setTitle_];

    v31 = 1;
  }

  [v30 setLargeTitleDisplayMode_];
  if ((sub_219BED0C4() & 1) == 0)
  {
    v35 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    v36 = [v35 navigationBar];
    [v36 setPrefersLargeTitles_];

    sub_219BE9D54();
    v37 = v35;
    v38 = sub_219BE9CE4();

    v30 = v28;
    v28 = v12;
    v12 = v38;
  }

  return v12;
}

uint64_t sub_2189F0398(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if ([*(result + 72) useOfflineMode])
    {
      v5 = [a3 searchBar];
      v6 = [v5 searchTextField];

      [v6 setEnabled_];
    }
  }

  return result;
}

uint64_t sub_2189F0464(void *a1)
{
  swift_unownedRetainStrong();

  sub_219BDD224();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  sub_219BE1BA4();
}

uint64_t sub_2189F056C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2189F05F8(void **a1)
{
  v2 = *(type metadata accessor for SearchHomeFilterItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C81184(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_2189F08FC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_2189F06A0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_218704030(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
  sub_219BDC204();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2189F0750()
{
  swift_getKeyPath();
  sub_218704030(&qword_280EC05B0, type metadata accessor for SearchFilterBarViewModel);
  sub_219BDC1F4();
}

void sub_2189F082C()
{
  if (!qword_280E927F8)
  {
    sub_2189F0888();
    v0 = sub_219BEC9C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E927F8);
    }
  }
}

unint64_t sub_2189F0888()
{
  result = qword_280ED05A0[0];
  if (!qword_280ED05A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ED05A0);
  }

  return result;
}

uint64_t sub_2189F08FC(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_219BF7884();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for SearchHomeFilterItem(0);
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for SearchHomeFilterItem(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_2189F0C28(v8, v9, a1, v4);
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
    return sub_2189F0A28(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2189F0A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for SearchHomeFilterItem(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x28223BE20](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_2189F1C54(v24, v18);
      sub_2189F1C54(v21, v14);
      v25 = sub_219BDBC14();
      sub_2189F1CB8(v14);
      result = sub_2189F1CB8(v18);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_2189F1D14(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_2189F1D14(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2189F0C28(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = type metadata accessor for SearchHomeFilterItem(0);
  v110 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v113 = &v99 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v99 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = &v99 - v18;
  v112 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_218C81048(a4);
    }

    v115 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *(result + 16 * a4);
        v96 = result;
        v97 = *(result + 16 * (a4 - 1) + 40);
        sub_2189F1488(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *(result + 16 * (a4 - 1) + 32), *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_218C81048(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_218C80FBC(a4 - 1);
        result = v115;
        a4 = *(v115 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x277D84F90];
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v105 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v112;
      v26 = v23;
      v27 = *(v110 + 72);
      v5 = *v112 + v27 * v24;
      sub_2189F1C54(v5, v19);
      sub_2189F1C54(v25 + v27 * v26, v16);
      LODWORD(v109) = sub_219BDBC14();
      sub_2189F1CB8(v16);
      result = sub_2189F1CB8(v19);
      v100 = v26;
      v28 = v26 + 2;
      v111 = v27;
      v29 = v25 + v27 * v28;
      v30 = v109;
      while (v20 != v28)
      {
        sub_2189F1C54(v29, v19);
        sub_2189F1C54(v5, v16);
        v31 = sub_219BDBC14() & 1;
        sub_2189F1CB8(v16);
        result = sub_2189F1CB8(v19);
        ++v28;
        v29 += v111;
        v5 += v111;
        if ((v30 & 1) != v31)
        {
          v32 = v30;
          v20 = v28 - 1;
          goto LABEL_11;
        }
      }

      v32 = v30;
LABEL_11:
      v23 = v100;
      a4 = v101;
      if (v32)
      {
        if (v20 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v20)
        {
          v99 = v6;
          v33 = v111 * (v20 - 1);
          v34 = v20 * v111;
          v109 = v20;
          v35 = v20;
          v36 = v100;
          v37 = v100 * v111;
          do
          {
            if (v36 != --v35)
            {
              v38 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v38 + v37;
              sub_2189F1D14(v38 + v37, v104);
              if (v37 < v33 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_2189F1D14(v104, v38 + v33);
            }

            ++v36;
            v33 -= v111;
            v34 -= v111;
            v37 += v111;
          }

          while (v36 < v35);
          v6 = v99;
          v23 = v100;
          a4 = v101;
          v20 = v109;
        }
      }
    }

    v39 = v112[1];
    if (v20 < v39)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v39)
        {
          v40 = v112[1];
        }

        else
        {
          v40 = v23 + a4;
        }

        if (v40 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v40)
        {
          break;
        }
      }
    }

    v41 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v105;
    }

    else
    {
      result = sub_2191F6B60(0, *(v105 + 2) + 1, 1, v105);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v42 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_2191F6B60((v42 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v43 = &v22[16 * a4];
    *(v43 + 4) = v23;
    *(v43 + 5) = v41;
    v44 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v41;
    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v22 + 4);
          v47 = *(v22 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_54:
          if (v49)
          {
            goto LABEL_113;
          }

          v62 = &v22[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_116;
          }

          v68 = &v22[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_120;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v72 = &v22[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_68:
        if (v67)
        {
          goto LABEL_115;
        }

        v75 = &v22[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
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
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v83 = v22;
        v84 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v45 + 40];
        sub_2189F1488(*v112 + *(v110 + 72) * v84, *v112 + *(v110 + 72) * *&v22[16 * v45 + 32], *v112 + *(v110 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_218C81048(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_110;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v115 = v83;
        result = sub_218C80FBC(v45);
        v22 = v115;
        v5 = *(v115 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v22[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_111;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_112;
      }

      v57 = &v22[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_114;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_117;
      }

      if (v61 >= v53)
      {
        v79 = &v22[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_121;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v20 = v112[1];
    v21 = v106;
    a4 = v101;
    if (v106 >= v20)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v23;
  a4 = *v112;
  v86 = *(v110 + 72);
  v87 = *v112 + v86 * (v20 - 1);
  v88 = v20;
  v89 = -v86;
  v90 = v23 - v88;
  v109 = v88;
  v103 = v86;
  v5 = a4 + v88 * v86;
  v106 = v40;
LABEL_86:
  v107 = v5;
  v108 = v90;
  v111 = v87;
  v91 = v87;
  while (1)
  {
    sub_2189F1C54(v5, v19);
    sub_2189F1C54(v91, v16);
    v92 = sub_219BDBC14();
    sub_2189F1CB8(v16);
    result = sub_2189F1CB8(v19);
    if ((v92 & 1) == 0)
    {
LABEL_85:
      v87 = v111 + v103;
      v90 = v108 - 1;
      v41 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v23 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v93 = v113;
    sub_2189F1D14(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_2189F1D14(v93, v91);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_2189F1488(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  v43 = type metadata accessor for SearchHomeFilterItem(0);
  v8 = MEMORY[0x28223BE20](v43);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v40 = v24;
      v41 = a4;
      do
      {
        v38[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v44;
          if (v27 <= a1)
          {
            v47 = v27;
            v45 = v38[0];
            goto LABEL_59;
          }

          v39 = v26;
          v44 += v24;
          v31 = v25 + v24;
          sub_2189F1C54(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v42;
          sub_2189F1C54(v33, v42);
          v36 = sub_219BDBC14();
          v37 = v35;
          v12 = v34;
          sub_2189F1CB8(v37);
          sub_2189F1CB8(v34);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v44 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v40;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v44 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v24 = v40;
        }

        else
        {
          v26 = v39;
          v24 = v40;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_2189F1C54(a2, v12);
        v21 = v42;
        sub_2189F1C54(a4, v42);
        v22 = sub_219BDBC14();
        sub_2189F1CB8(v21);
        sub_2189F1CB8(v12);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_2189F1B6C(&v47, &v46, &v45, type metadata accessor for SearchHomeFilterItem);
  return 1;
}

void sub_2189F19EC(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(uint64_t), void (*a6)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  sub_2189F1DCC(0, a4, a5, a6);
  v10 = *(*(v9 - 8) + 72);
  if (!v10)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v8 - v7 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_17;
  }

  if (v6 < v7 || v6 >= v7 + (v8 - v7) / v10 * v10)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v6 != v7)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_2189F1B6C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_2189F1C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHomeFilterItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189F1CB8(uint64_t a1)
{
  v2 = type metadata accessor for SearchHomeFilterItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2189F1D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchHomeFilterItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189F1D78()
{
  result = qword_280E8E800;
  if (!qword_280E8E800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E800);
  }

  return result;
}

void sub_2189F1DCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_2189F1E48()
{
  if (!qword_27CC0C660)
  {
    type metadata accessor for MyRecipesModel();
    sub_218704030(&qword_27CC1AE10, type metadata accessor for MyRecipesModel);
    v0 = sub_219BE5FE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C660);
    }
  }
}

uint64_t sub_2189F1EF4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE93D0 = result;
  return result;
}

uint64_t sub_2189F20E4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE93F8 = result;
  return result;
}

uint64_t sub_2189F22D4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9410 = result;
  return result;
}

uint64_t sub_2189F24C4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6588(0, &qword_280EE9068);
  v5[2] = 0;
  v5[3] = 1036831949;
  v5[1] = 0x40000000;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9D4();
  qword_280EE93E8 = result;
  return result;
}

uint64_t sub_2189F26C4()
{
}

uint64_t Settings.Options.Masthead.Overrides.deinit()
{
  v0 = _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesCfd_0();

  return v0;
}

uint64_t Settings.Options.Masthead.Overrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_2189F2814()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D040], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE93A8 = result;
  return result;
}

uint64_t sub_2189F29E4()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 1;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0C668 = result;
  return result;
}

uint64_t sub_2189F2BD8()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BF5414();
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0C670 = result;
  return result;
}

uint64_t sub_2189F2DF0()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  MEMORY[0x28223BE20](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098]);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v8[15] = 0;
  sub_2186C6588(0, &qword_280EE9078);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC0C678 = result;
  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2189F30A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2189F30EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189F3150(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v76 = a3;
  v77 = a2;
  v75 = sub_219BE6DF4();
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F3FDC(0, &qword_280EE4B18, MEMORY[0x277D6DF88]);
  v71 = v6;
  v70 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v69 = &v68 - v7;
  v82 = type metadata accessor for CuratedAudioFeedGroup();
  MEMORY[0x28223BE20](v82);
  v81 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AudioFeedSectionDescriptor();
  v10 = MEMORY[0x28223BE20](v9);
  v91 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v92 = &v68 - v12;
  sub_218953904();
  v14 = v13;
  v80 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v79 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v78 = &v68 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v93 = &v68 - v20;
  MEMORY[0x28223BE20](v19);
  v88 = &v68 - v21;
  sub_2189F3F28();
  v90 = v22 - 8;
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F3FBC(0);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v68 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AudioFeedServiceConfig();
  sub_2189F3EE0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
  v30 = sub_219BEF3E4();
  v86 = v3;
  v95 = v3;
  v31 = sub_218944AE0(sub_2189F40D0, v94, v30);

  v96 = v31;
  sub_2189F40F0();
  v89 = v32;
  sub_2189F3EE0(&qword_280E8F4E8, sub_2189F40F0);
  sub_2189F3EE0(&qword_280EE5800, sub_218953904);
  v85 = sub_219BF56C4();

  v68 = v27;
  v33 = *(v27 + 16);
  v74 = a1;
  v34 = a1;
  v35 = v9;
  v36 = v26;
  v33(v29, v34, v26);
  v33(v24, v29, v26);
  v37 = *(v90 + 44);
  sub_2189F3EE0(&qword_280EE3698, sub_2189F3FBC);
  v84 = v29;
  sub_219BF5DF4();
  sub_219BF5E84();
  if (*&v24[v37] != v96)
  {
    v89 = (v80 + 32);
    v90 = v80 + 16;
    v87 = (v80 + 8);
    v83 = v35;
    while (1)
    {
      v45 = sub_219BF5EC4();
      v46 = *v90;
      v47 = v88;
      (*v90)(v88);
      v45(&v96, 0);
      v48 = v36;
      sub_219BF5E94();
      v49 = *v89;
      (*v89)(v93, v47, v14);
      v50 = v92;
      sub_219BE6934();
      sub_2189F4148(v50, v91);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v55 = 3;
LABEL_20:
        sub_2189F4210(v92, type metadata accessor for AudioFeedSectionDescriptor);
        sub_2189F4210(v91, type metadata accessor for AudioFeedSectionDescriptor);
        goto LABEL_21;
      }

      if (EnumCaseMultiPayload != 3)
      {
        sub_2189F4210(v92, type metadata accessor for AudioFeedSectionDescriptor);
LABEL_5:
        (*v87)(v93, v14);
        v36 = v48;
        goto LABEL_6;
      }

      v52 = v81;
      sub_2189F41AC(v91, v81);
      v53 = sub_219BF7614();
      sub_2189F4210(v52, type metadata accessor for CuratedAudioFeedGroup);
      sub_2189F4210(v92, type metadata accessor for AudioFeedSectionDescriptor);
      if (v53 == 1)
      {
        v54 = 5;
      }

      else
      {
        v54 = 4;
      }

      if (v53)
      {
        v55 = v54;
      }

      else
      {
        v55 = 0;
      }

LABEL_21:
      if ((sub_218C30E0C(v55, *(v86 + 16)) & 1) == 0)
      {
        goto LABEL_5;
      }

      v56 = sub_219BE6944();
      if (!*(v85 + 16))
      {

LABEL_26:
        v67 = v93;
        sub_219BE6944();
        v36 = v48;
        sub_219BEB214();

        (*v87)(v67, v14);
        goto LABEL_6;
      }

      v58 = sub_21870F700(v56, v57);
      v60 = v59;

      if ((v60 & 1) == 0)
      {
        goto LABEL_26;
      }

      v61 = v80;
      v62 = *(v85 + 56) + *(v80 + 72) * v58;
      v63 = v79;
      (v46)(v79, v62, v14);
      v64 = v78;
      v49(v78, v63, v14);
      v65 = v93;
      v36 = v48;
      sub_219BEB234();
      v66 = *(v61 + 8);
      v66(v64, v14);
      v66(v65, v14);
LABEL_6:
      sub_219BF5E84();
      if (*&v24[v37] == v96)
      {
        goto LABEL_2;
      }
    }

    if (EnumCaseMultiPayload)
    {
      v55 = 2;
    }

    else
    {
      v55 = 1;
    }

    goto LABEL_20;
  }

LABEL_2:
  sub_2189F4210(v24, sub_2189F3F28);

  v38 = v36;
  v39 = v73;
  v40 = v72;
  v41 = v75;
  (*(v73 + 104))(v72, *MEMORY[0x277D6D868], v75);
  type metadata accessor for AudioFeedModel(0);
  sub_2189F3EE0(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
  sub_2189F3EE0(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
  sub_2189F3EE0(&qword_280EBC458, type metadata accessor for AudioFeedSectionDescriptor);
  v42 = v69;
  v43 = v84;
  sub_219BE85E4();
  (*(v39 + 8))(v40, v41);
  v77(v42);
  (*(v70 + 8))(v42, v71);
  return (*(v68 + 8))(v43, v38);
}

uint64_t sub_2189F3C8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v12 = a1;
  v5 = sub_219BF0BD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v9 = a2[4];
  type metadata accessor for AudioFeedServiceConfig();
  sub_2189F3EE0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig);
  sub_219BEF3A4();
  sub_218AB609C(v12, v9, v8, a3);
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2189F3DFC()
{
  result = qword_280EA6D98;
  if (!qword_280EA6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6D98);
  }

  return result;
}

uint64_t sub_2189F3EE0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2189F3F28()
{
  if (!qword_280E8D488)
  {
    sub_2189F3FBC(255);
    sub_2189F3EE0(&qword_280EE3698, sub_2189F3FBC);
    v0 = sub_219BF7494();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8D488);
    }
  }
}

void sub_2189F3FDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor();
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_2189F3EE0(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor);
    v8[3] = sub_2189F3EE0(&qword_280EDCBF0, type metadata accessor for AudioFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189F40F0()
{
  if (!qword_280E8F4F0)
  {
    sub_218953904();
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F4F0);
    }
  }
}

uint64_t sub_2189F4148(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedSectionDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189F41AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedAudioFeedGroup();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189F4210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_13TeaFoundation6ResultOy7NewsUI28TagModelCGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2189F42B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2189F42F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2189F4358(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v21 = a1;
  v24 = sub_219BE6DF4();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F4DD8(0, &qword_27CC0C688, MEMORY[0x277D6DF88]);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  sub_2189F4D0C();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2189F4DD8(0, &qword_27CC0AE38, MEMORY[0x277D6EC60]);
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  v30 = v3;
  v14 = sub_218944B34(sub_2189F4ECC, v29);
  sub_218950D5C();
  v16 = v15;
  v17 = sub_2189F4FB8(&qword_27CC0C698, sub_218950D5C);
  v18 = sub_2189F4FB8(&qword_27CC0C6A0, sub_218950D5C);
  MEMORY[0x21CEB9170](v14, v16, v17, v18);
  type metadata accessor for MagazineCatalogSectionDescriptor(0);
  type metadata accessor for MagazineCatalogModel();
  sub_2189F4FB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
  sub_2189F4FB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
  sub_219BEB2D4();
  v19 = v24;
  (*(v4 + 104))(v6, *MEMORY[0x277D6D868], v24);
  sub_2189F4FB8(&qword_27CC0C6A8, type metadata accessor for MagazineCatalogSectionDescriptor);
  sub_219BE85E4();
  (*(v4 + 8))(v6, v19);
  v28(v9);
  (*(v25 + 8))(v9, v26);
  return (*(v22 + 8))(v13, v23);
}

uint64_t sub_2189F47B4(uint64_t a1, uint64_t a2)
{
  sub_2189F4EEC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = type metadata accessor for MagazineCatalogSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  sub_218950D5C();
  sub_219BE6934();
  v12 = a2;
  v5 = sub_218944E70(sub_2189F5000, v11);
  sub_2189537DC();
  v7 = v6;
  v8 = sub_2189F4FB8(&qword_27CC0C6B8, sub_2189537DC);
  v9 = sub_2189F4FB8(&qword_27CC0C6C0, sub_2189537DC);
  MEMORY[0x21CEB9170](v5, v7, v8, v9);
  type metadata accessor for MagazineCatalogModel();
  sub_2189F4FB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
  sub_2189F4FB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
  return sub_219BE6924();
}

uint64_t sub_2189F49F4(uint64_t a1, unint64_t *a2)
{
  v3 = type metadata accessor for MagazineGridItemModel();
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = type metadata accessor for MagazineCatalogModel();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v18 - v13;
  sub_2189537DC();
  sub_219BE5FC4();
  sub_2189F5020(v14, v8);
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  v15 = *a2;
  if (v15 >> 62)
  {
    v16 = v15 & 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v16 = v15;
  }

  sub_2189F5084(v15);
  sub_218BA57B8(v8, v16, v6);
  sub_2189F50B4(v15);
  sub_2189F50E4(v6, v12);
  sub_2189F4FB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
  sub_219BE5FB4();
  sub_21897C080(v6);
  return sub_21897C080(v8);
}

uint64_t sub_2189F4BE8(uint64_t a1)
{
  v2 = sub_2189F5148();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2189F4C28()
{
  result = qword_27CC0C680;
  if (!qword_27CC0C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C680);
  }

  return result;
}

void sub_2189F4D0C()
{
  if (!qword_27CC0C690)
  {
    sub_218950D5C();
    sub_2189F4FB8(&qword_27CC0C698, sub_218950D5C);
    sub_2189F4FB8(&qword_27CC0C6A0, sub_218950D5C);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C690);
    }
  }
}

void sub_2189F4DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineCatalogSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineCatalogModel();
    v8[2] = sub_2189F4FB8(&unk_27CC0AE10, type metadata accessor for MagazineCatalogSectionDescriptor);
    v8[3] = sub_2189F4FB8(&qword_27CC0B870, type metadata accessor for MagazineCatalogModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2189F4EEC()
{
  if (!qword_27CC0C6B0)
  {
    sub_2189537DC();
    sub_2189F4FB8(&qword_27CC0C6B8, sub_2189537DC);
    sub_2189F4FB8(&qword_27CC0C6C0, sub_2189537DC);
    v0 = sub_219BE2454();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC0C6B0);
    }
  }
}

uint64_t sub_2189F4FB8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2189F5020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189F5084(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

unint64_t sub_2189F50B4(unint64_t result)
{
  if ((result >> 62) <= 2)
  {
  }

  return result;
}

uint64_t sub_2189F50E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2189F5148()
{
  result = qword_27CC0C6C8;
  if (!qword_27CC0C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C6C8);
  }

  return result;
}

uint64_t sub_2189F51B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 490))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 472);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2189F51FC(uint64_t result, int a2, int a3)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 490) = 1;
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
      *(result + 472) = (a2 - 1);
      return result;
    }

    *(result + 490) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2189F52D8()
{
  result = qword_27CC0C6D0;
  if (!qword_27CC0C6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C6D0);
  }

  return result;
}

uint64_t sub_2189F532C(uint64_t a1)
{
  v2 = v1;
  v45 = *v2;
  sub_2189F7934(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v5 = v4;
  v6 = *(v4 - 8);
  v43 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v35 - v7;
  v8 = sub_219BE22B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE22F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v5;
  v44 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  (*(v13 + 8))(v15, v12);
  v16 = sub_219BE22C4();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  if (v18)
  {
    sub_2189F7934(0, &qword_27CC0C6D8, sub_21873FA4C, MEMORY[0x277D6CF30]);
    v19 = swift_allocObject();
    v19[2] = v2;
    v19[3] = v16;
    v19[4] = v18;

    v38 = sub_219BE2F54();
    sub_2186C6148(0, &qword_280E8E3B0);
    v35 = sub_219BF66A4();
    v39 = v16;
    v42 = v2;
    v37 = *(v6 + 16);
    v20 = v18;
    v21 = v40;
    v22 = v41;
    v37(v40, v44, v41);
    v23 = *(v6 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = v16;
    *(v24 + 24) = v20;
    v36 = v20;
    v25 = *(v6 + 32);
    v25(v24 + ((v23 + 32) & ~v23), v21, v22);

    v26 = v35;
    sub_219BE2F94();

    v37(v21, v44, v22);
    v27 = (v23 + 16) & ~v23;
    v28 = (v43 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = swift_allocObject();
    v25(v29 + v27, v21, v22);
    v30 = (v29 + v28);
    v31 = v36;
    *v30 = v39;
    v30[1] = v31;
    v32 = sub_219BE2E54();
    v33 = sub_219BE3084();

    return v33;
  }

  else
  {
    v46 = 0;
    sub_21870F240(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2189F5848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2189F586C, 0, 0);
}

uint64_t sub_2189F586C()
{
  v1 = v0[3];
  v2 = v1[7];
  v3 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2189F592C;
  v6 = v0[4];
  v5 = v0[5];

  return MEMORY[0x282192258](v6, v5, v2, v3);
}

uint64_t sub_2189F592C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_2189F5A78, 0, 0);
  }
}

id sub_2189F5A9C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v91 = a2;
  v88 = a4;
  v89 = a5;
  v87 = a3;
  v90 = a6;
  v79 = type metadata accessor for PuzzleModel();
  MEMORY[0x28223BE20](v79);
  v80 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF2624();
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_219BF1D74();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v73 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF2CB4();
  v82 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = (&v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BF2634();
  v81 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F7D74(0, &unk_27CC0C6E0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v72 - v18;
  v20 = sub_219BF1584();
  v21 = *(v20 - 8);
  v85 = v20;
  v86 = v21;
  MEMORY[0x28223BE20](v20);
  v83 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = [*a1 puzzleType];
  v25 = objc_opt_self();
  swift_getObjectType();
  if (![v25 isTagAllowedInContentStoreFront_])
  {
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v31 = sub_219BE5434();
    __swift_project_value_buffer(v31, qword_27CCD8BA0);
    v32 = v88;

    v33 = sub_219BE5414();
    v34 = sub_219BF61F4();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v92 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_2186D1058(v87, v32, &v92);
      _os_log_impl(&dword_2186C1000, v33, v34, "Cannot navigate to Puzzle: %s. Content not allowed in StoreFront.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x21CECF960](v36, -1, -1);
      MEMORY[0x21CECF960](v35, -1, -1);
    }

    v37 = swift_allocObject();
    *(v37 + 40) = &type metadata for AlertContentRegionUnavailable;
    *(v37 + 48) = sub_2189F7F2C();
    *(v37 + 56) = 1;
    v92 = v37;
    v38 = sub_2189F6690(&v92);
    goto LABEL_18;
  }

  v84 = v24;
  if (![v25 isTagAllowedForNewsVersion_])
  {
    goto LABEL_13;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v27 = result;
    v28 = [result isNewsVersionAllowed_];

    if (v28)
    {
      if (sub_219BF68F4())
      {
        v29 = v91;
        sub_219BF1B74();
        v30 = v85;
        if ((*(v86 + 48))(v19, 1, v85) == 1)
        {
          sub_2189F7BE8(v19);
          goto LABEL_27;
        }

        (*(v86 + 32))(v83, v19, v30);
        v51 = *(v29 + 104);
        v88 = *(v29 + 112);
        __swift_project_boxed_opaque_existential_1((v29 + 80), v51);
        *v13 = v23;
        v52 = v82;
        (*(v82 + 104))(v13, *MEMORY[0x277D33BA8], v11);
        swift_unknownObjectRetain();
        sub_219BF4794();
        (*(v52 + 8))(v13, v11);
        LOBYTE(v51) = sub_219BF2614();
        (*(v81 + 8))(v16, v14);
        if (v51)
        {
          (*(v86 + 8))(v83, v85);
LABEL_27:
          if ([*(v29 + 160) puzzlesEnabled])
          {
            v53 = v79;
            v54 = *(v79 + 20);
            v55 = sub_219BF24E4();
            v56 = v80;
            (*(*(v55 - 8) + 56))(&v80[v54], 1, 1, v55);
            *v56 = v23;
            *(v56 + 8) = 0;
            *(v56 + 16) = 1;
            v57 = (v56 + v53[6]);
            *v57 = 0;
            v57[1] = 0;
            v58 = (v56 + v53[7]);
            *v58 = 0;
            v58[1] = 0;
            v59 = (v56 + v53[8]);
            *v59 = 0;
            v59[1] = 0;
            v60 = swift_allocBox();
            sub_2189F7F80(v56, v61);
            v92 = v60 | 0xE000000000000006;
            swift_unknownObjectRetain();
            v38 = sub_2189F6690(&v92);
            swift_unknownObjectRelease();
            sub_218932F9C(v92);
            result = sub_2189F7FE4(v56);
          }

          else
          {
            result = swift_unknownObjectRelease();
            v38 = 1;
          }

          goto LABEL_19;
        }

        v62 = *(v29 + 144);
        v88 = *(v29 + 152);
        __swift_project_boxed_opaque_existential_1((v29 + 120), v62);
        v63 = v73;
        v64 = v74;
        v65 = v76;
        (*(v74 + 104))(v73, *MEMORY[0x277D335F0], v76);
        v67 = v77;
        v66 = v78;
        v68 = v75;
        (*(v77 + 104))(v75, *MEMORY[0x277D33990], v78);
        v69 = sub_219BF4984();
        (*(v67 + 8))(v68, v66);
        (*(v64 + 8))(v63, v65);
        v70 = swift_allocObject();
        *(v70 + 16) = v69;
        *(v70 + 56) = 2;
        v92 = v70;
        v71 = v69;
        v38 = sub_2189F6690(&v92);

        swift_unknownObjectRelease();
        sub_218932F9C(v92);
        result = (*(v86 + 8))(v83, v85);
LABEL_19:
        *v90 = v38 & 1;
        return result;
      }

      if (qword_27CC08628 != -1)
      {
        swift_once();
      }

      v46 = sub_219BE5434();
      __swift_project_value_buffer(v46, qword_27CCD8BA0);
      v47 = v88;

      v41 = sub_219BE5414();
      v48 = sub_219BF61F4();

      if (os_log_type_enabled(v41, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v92 = v50;
        *v49 = 136315138;
        *(v49 + 4) = sub_2186D1058(v87, v47, &v92);
        _os_log_impl(&dword_2186C1000, v41, v48, "Cannot navigate to Puzzle: %s. Content not allowed in public build.", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x21CECF960](v50, -1, -1);
        MEMORY[0x21CECF960](v49, -1, -1);
      }

      goto LABEL_17;
    }

LABEL_13:
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v39 = sub_219BE5434();
    __swift_project_value_buffer(v39, qword_27CCD8BA0);
    v40 = v88;

    v41 = sub_219BE5414();
    v42 = sub_219BF61F4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v92 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_2186D1058(v87, v40, &v92);
      _os_log_impl(&dword_2186C1000, v41, v42, "Cannot navigate to Puzzle: %s. Content not allowed for News version.", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x21CECF960](v44, -1, -1);
      MEMORY[0x21CECF960](v43, -1, -1);
    }

LABEL_17:

    v45 = swift_allocObject();
    *(v45 + 40) = &type metadata for AlertContentUnavailable;
    *(v45 + 48) = sub_2189F7CD8();
    *(v45 + 56) = 1;
    v92 = v45;
    v38 = sub_2189F6690(&v92);
LABEL_18:
    swift_unknownObjectRelease();
    result = sub_218932F9C(v92);
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_2189F6690(unint64_t *a1)
{
  sub_2189F7934(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v7 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v28 - v8;
  v10 = *a1;
  v11 = sub_218DB24B0();
  v12 = *(v1 + 24);
  if ((v11 & 1) != 0 || !((v10 >> 58) & 0x3C | (v10 >> 1) & 3))
  {
    v13 = sub_219BDFA44();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    memset(v36, 0, 40);
    v35 = 0;
    memset(v34, 0, sizeof(v34));
    v33 = v12;
    sub_2187B153C(v34, &v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (*(&v30 + 1))
    {
      sub_21875F93C(&v29, v31);
      *&v29 = v10;
      v14 = sub_2194DA78C(v31);
      v16 = v15;
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1(v31);
    }

    else
    {
      sub_2189F7DDC(&v29, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v14 = qword_280ED32D8;
      v16 = qword_280ED32E0;
      v18 = qword_280ED32E8;

      sub_2188202A8(v16);
    }

    v28[1] = v10;
    v30 = 0u;
    v29 = 0u;
    sub_2189B4E2C(v9, v7);
    sub_2187B153C(v36, v31, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
    v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    sub_2189B4EAC(v7, v22 + v19);
    v23 = v22 + v20;
    v24 = v31[1];
    *v23 = v31[0];
    *(v23 + 16) = v24;
    *(v23 + 32) = v32;
    v25 = (v22 + v21);
    v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v25 = 0;
    v25[1] = 0;
    *v26 = v14;
    v26[1] = v16;
    v26[2] = v18;

    sub_2188202A8(v16);
    sub_2189F7D74(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    sub_2189B4DD4();
    sub_219BEB464();

    sub_2187FABEC(v16);
    sub_2189F7DDC(v34, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186CFDE4);
    sub_2189F7DDC(v36, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186CFDE4);
    sub_218744930(v9, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_2189F7934);
    sub_218744930(&v29, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21870F240);
  }

  else
  {
    v36[0] = v12;
    *&v34[0] = v10;
    sub_2189F7D74(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    sub_2189B4DD4();
    sub_219BEB484();
  }

  return 1;
}

void sub_2189F6E98(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v83 = a2;
  v76 = a5;
  v70 = a4;
  v79 = a3;
  v8 = sub_219BF2624();
  v74 = *(v8 - 8);
  v75 = v8;
  MEMORY[0x28223BE20](v8);
  v72 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BF1D74();
  v10 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F7D74(0, &unk_27CC0C6E0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v69 - v13;
  v82 = sub_219BF1584();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F7934(0, &unk_27CC0C6F0, MEMORY[0x277D338D8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v69 - v17;
  v19 = sub_219BF2504();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v69 - v24;
  v84 = a1;
  v77 = a1;
  v26 = a1;
  sub_2186CFDE4(0, &qword_280E8B580);
  v27 = swift_dynamicCast();
  v28 = *(v20 + 56);
  if (v27)
  {
    v69 = v10;
    v78 = a6;
    v28(v18, 0, 1, v19);
    (*(v20 + 32))(v25, v18, v19);
    v29 = *(v20 + 104);
    v29(v23, *MEMORY[0x277D338C8], v19);
    v30 = sub_219BF24F4();
    v31 = *(v20 + 8);
    v31(v23, v19);
    if (v30)
    {
      v32 = swift_allocObject();
      if (qword_27CC08A10 != -1)
      {
        swift_once();
      }

      v33 = v82;
      v34 = __swift_project_value_buffer(v82, qword_27CCD9060);
      *(v32 + 40) = type metadata accessor for AlertDeviceOffline();
      *(v32 + 48) = sub_2189F7D2C(&qword_27CC0C708, 255, type metadata accessor for AlertDeviceOffline);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v32 + 16));
      (*(v80 + 16))(boxed_opaque_existential_1, v34, v33);
      goto LABEL_16;
    }

    v29(v23, *MEMORY[0x277D338D0], v19);
    v68 = sub_219BF24F4();
    v31(v23, v19);
    if (v68)
    {
      v32 = swift_allocObject();
      *(v32 + 40) = &type metadata for AlertContentUnavailable;
      *(v32 + 48) = sub_2189F7CD8();
LABEL_16:
      *(v32 + 56) = 1;
      v84 = v32;
      v54 = sub_2189F6690(&v84);
      sub_218932F9C(v84);
      v31(v25, v19);
      v37 = v78;
      goto LABEL_17;
    }

    v31(v25, v19);
    v36 = v83;
    v37 = v78;
    v10 = v69;
  }

  else
  {
    v28(v18, 1, 1, v19);
    sub_218744930(v18, &unk_27CC0C6F0, MEMORY[0x277D338D8], MEMORY[0x277D83D88], sub_2189F7934);
    v36 = v83;
    v37 = a6;
  }

  sub_219BF1B74();
  v38 = v80;
  v39 = v82;
  if ((*(v80 + 48))(v14, 1, v82) == 1)
  {
    sub_2189F7BE8(v14);
    if (qword_27CC08628 != -1)
    {
      swift_once();
    }

    v40 = sub_219BE5434();
    __swift_project_value_buffer(v40, qword_27CCD8BA0);
    v41 = v77;
    v42 = v77;
    v43 = v76;

    v44 = sub_219BE5414();
    v45 = sub_219BF61F4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = v37;
      v48 = v43;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v84 = v50;
      *v46 = 136315394;
      v51 = v48;
      v37 = v47;
      *(v46 + 4) = sub_2186D1058(v70, v51, &v84);
      *(v46 + 12) = 2112;
      v52 = v41;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v53;
      *v49 = v53;
      _os_log_impl(&dword_2186C1000, v44, v45, "Cannot navigate to Puzzle: %s. %@", v46, 0x16u);
      sub_2189F7DDC(v49, &qword_280E8D9F0, &qword_280E8DA00, 0x277D82BB8, sub_2186C6148);
      MEMORY[0x21CECF960](v49, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x21CECF960](v50, -1, -1);
      MEMORY[0x21CECF960](v46, -1, -1);
    }

    v54 = 1;
  }

  else
  {
    (*(v38 + 32))(v81, v14, v39);
    v55 = v36[18];
    v77 = v36[19];
    __swift_project_boxed_opaque_existential_1(v36 + 15, v55);
    v56 = v71;
    v57 = v73;
    (*(v10 + 104))(v71, *MEMORY[0x277D335F0], v73);
    v58 = *MEMORY[0x277D33990];
    v59 = v74;
    v60 = *(v74 + 104);
    v61 = v10;
    v62 = v72;
    v78 = v37;
    v63 = v75;
    v60(v72, v58, v75);
    v64 = sub_219BF4984();
    v65 = v63;
    v37 = v78;
    (*(v59 + 8))(v62, v65);
    (*(v61 + 8))(v56, v57);
    v66 = swift_allocObject();
    *(v66 + 16) = v64;
    *(v66 + 56) = 2;
    v84 = v66;
    v67 = v64;
    v54 = sub_2189F6690(&v84);

    sub_218932F9C(v84);
    (*(v38 + 8))(v81, v82);
  }

LABEL_17:
  *v37 = v54 & 1;
}

uint64_t sub_2189F783C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2189F7934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2189F7998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_2189F5848(a1, v4, v5, v6);
}

void sub_2189F7B04(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_2189F7934(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v8 = (*(*(v7 - 8) + 80) + 16) & ~*(*(v7 - 8) + 80);
  v9 = v3 + ((*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_2189F6E98(a1, a2, v3 + v8, *v9, *(v9 + 8), a3);
}

uint64_t sub_2189F7BE8(uint64_t a1)
{
  sub_2189F7D74(0, &unk_27CC0C6E0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2189F7C7C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2189F7CD8()
{
  result = qword_27CC0C700;
  if (!qword_27CC0C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C700);
  }

  return result;
}

uint64_t sub_2189F7D2C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2189F7D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_2189F7DDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2189F7C7C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2189F7E38(void *a1)
{
  sub_2189F7934(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_2189F7F2C()
{
  result = qword_27CC1DF50;
  if (!qword_27CC1DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DF50);
  }

  return result;
}

uint64_t sub_2189F7F80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2189F7FE4(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_2189F8040()
{
  sub_21899E550();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D743F8];
  v5 = v2;
  v6 = [v3 systemFontOfSize:20.0 weight:v4];
  v7 = sub_2186C6148(0, &qword_280E8DB00);
  *(inited + 40) = v6;
  v8 = *MEMORY[0x277D740C0];
  *(inited + 64) = v7;
  *(inited + 72) = v8;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v9 = v0[7];
  v10 = v8;
  v11 = sub_2195C990C(v9, 0);
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80);
  *(inited + 80) = v11;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588();
  swift_arrayDestroy();
  v12 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v13 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v14 = sub_219BF5204();

  v15 = [v12 initWithString:v13 attributes:v14];

  return v15;
}

uint64_t sub_2189F8224()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2189F8288()
{
  v1 = [*(v0 + 16) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -32;
    return (v6 ^ v3) & 1;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 32;
  return (v6 ^ v3) & 1;
}

uint64_t sub_2189F8438(uint64_t a1)
{
  v3 = sub_219BF2CB4();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BF2634();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0614();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEEA34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[8];
  v17 = [v16 useOfflineMode];
  if (!v17)
  {
    return v17 & 1;
  }

  if ((sub_2189F8288() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    if (sub_219BEED44())
    {
      LOBYTE(v17) = [v16 dimNonSubscriberContentOffline];
    }

    else
    {
      LOBYTE(v17) = 0;
    }

    return v17 & 1;
  }

  (*(v13 + 16))(v15, a1, v12);
  v18 = (*(v13 + 88))(v15, v12);
  if (v18 == *MEMORY[0x277D321F8])
  {
    (*(v13 + 96))(v15, v12);
    (*(v9 + 32))(v11, v15, v8);
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    (*(v9 + 16))(v5, v11, v8);
    v20 = v37;
    v19 = v38;
    (*(v37 + 104))(v5, *MEMORY[0x277D33BB8], v38);
    v21 = v39;
    sub_219BF4794();
    (*(v20 + 8))(v5, v19);
    v22 = sub_219BF2614();
    (*(v40 + 8))(v21, v41);
    (*(v9 + 8))(v11, v8);
LABEL_5:
    LOBYTE(v17) = v22 ^ 1;
    return v17 & 1;
  }

  if (v18 == *MEMORY[0x277D32210])
  {
    (*(v13 + 96))(v15, v12);
    v23 = *v15;
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    *v5 = v23;
    v24 = MEMORY[0x277D33BC0];
LABEL_13:
    v27 = v37;
    v26 = v38;
    (*(v37 + 104))(v5, *v24, v38);
    swift_unknownObjectRetain();
    v28 = v39;
    sub_219BF4794();
    (*(v27 + 8))(v5, v26);
    v29 = sub_219BF2614();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v28, v41);
    LOBYTE(v17) = v29 ^ 1;
    return v17 & 1;
  }

  if (v18 == *MEMORY[0x277D32208])
  {
    (*(v13 + 96))(v15, v12);
    v25 = *v15;
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    *v5 = v25;
    v24 = MEMORY[0x277D33B98];
    goto LABEL_13;
  }

  if (v18 == *MEMORY[0x277D32200])
  {
    (*(v13 + 96))(v15, v12);
    v31 = *v15;
    v32 = v15[1];
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    *v5 = v31;
    v5[1] = v32;
    v34 = v37;
    v33 = v38;
    (*(v37 + 104))(v5, *MEMORY[0x277D33B80], v38);
    v35 = v39;
    sub_219BF4794();
    (*(v34 + 8))(v5, v33);
    v22 = sub_219BF2614();
    (*(v40 + 8))(v35, v41);
    goto LABEL_5;
  }

  result = sub_219BF78E4();
  __break(1u);
  return result;
}

uint64_t sub_2189F8A28()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return swift_deallocClassInstance();
}

uint64_t sub_2189F8AA0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_219BE1EF4();
  v4 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F8F78();
  MEMORY[0x28223BE20](v6 - 8);
  v35 = sub_219BE1CA4();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2[5];
  v33 = v2[6];
  v11 = __swift_project_boxed_opaque_existential_1(v2 + 2, v10);
  v12 = a1;
  v13 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v31[0] = v11;
    v15 = sub_21947D1C0(v13, 0);
    v16 = sub_2194ABD64(v40, v15 + 4, v13, v12);
    v31[4] = *&v40[8];
    v32 = v16;
    v31[3] = *&v40[16];
    v31[2] = *&v40[24];
    v31[1] = v41;

    result = sub_21892DE98();
    if (v32 != v13)
    {
      __break(1u);
      return result;
    }

    v14 = MEMORY[0x277D84F90];
  }

  v18 = sub_219BF1E54();

  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  v19 = sub_21945CCB8(v18);

  v20 = *(v19 + 16);
  if (v20)
  {
    v39 = v14;
    sub_218C34898(0, v20, 0);
    v21 = v39;
    v22 = (v4 + 16);
    v33 = v7 + 32;
    v23 = v20 - 1;
    for (i = 32; ; i += 32)
    {
      v25 = v19;
      v26 = *(v19 + i);
      *&v40[9] = *(v19 + i + 9);
      *v40 = v26;
      v38[0] = v26;
      *(v38 + 9) = *&v40[9];
      sub_218950CAC(v40, v37);
      sub_218950CAC(v40, v37);
      if (qword_280EE7CB0 != -1)
      {
        swift_once();
      }

      v27 = v36;
      v28 = __swift_project_value_buffer(v36, qword_280EE7CB8);
      (*v22)(v34, v28, v27);
      swift_getKeyPath();
      sub_219BE3374();
      sub_219BE1C94();
      sub_218950D08(v40);
      v39 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_218C34898(v29 > 1, v30 + 1, 1);
        v21 = v39;
      }

      *(v21 + 16) = v30 + 1;
      (*(v7 + 32))(v21 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v30, v9, v35);
      if (!v23)
      {
        break;
      }

      --v23;
      v19 = v25;
    }
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  *v40 = v21;
  sub_2189F8FFC(0, &qword_280EE6AA8, sub_2189F8FC8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void sub_2189F8F78()
{
  if (!qword_280EE6878)
  {
    v0 = sub_219BE3474();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE6878);
    }
  }
}

void sub_2189F8FFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2189F9060(uint64_t isUniquelyReferenced_nonNull_native, void *a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v127 = a6;
  v142 = a3;
  v129 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v129);
  v19 = (&v115 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_219BF0BD4();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = v20;
  v124 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x277D83D88];
  sub_2189FEFB4(0, &unk_280EE8530, MEMORY[0x277D2E1C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v22 - 8);
  v121 = &v115 - v23;
  sub_2189FEFB4(0, &qword_280EE80F8, MEMORY[0x277D2EF98], v21);
  MEMORY[0x28223BE20](v24 - 8);
  v120 = &v115 - v25;
  v134 = sub_219BE0FE4();
  v128 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v136 = &v115 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189FEFB4(0, &qword_280EE8150, MEMORY[0x277D2EDE8], v21);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v133 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v137 = &v115 - v30;
  CACurrentMediaTime();
  sub_219BE2CF4();
  v131 = a5;
  v31 = *(a5 + 24);
  v140 = v145;
  v132 = a7;
  v123 = a8;
  v135 = a9;
  sub_2189FE1B8(v145, v31, a7, a8, a9);
  v130 = v32;
  if (v32 >> 62)
  {
LABEL_30:
    v59 = sub_219BF7214();
    v33 = v140;
    if (v59)
    {
      goto LABEL_3;
    }

LABEL_31:

    sub_2189FE9D0();
    v60 = swift_allocError();
    *v61 = 1;
    v142();

    return;
  }

  v33 = v140;
  if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_31;
  }

LABEL_3:
  v146 = MEMORY[0x277D84F98];
  v116 = v33 >> 62;
  v119 = isUniquelyReferenced_nonNull_native;
  v118 = a2;
  v117 = v19;
  if (v33 >> 62)
  {
    isUniquelyReferenced_nonNull_native = sub_219BF7214();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_5;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_5:
      v34 = 0;
      v141 = *(v131 + 16);
      v142 = (v33 & 0xC000000000000001);
      v138 = v33 & 0xFFFFFFFFFFFFFF8;
      v19 = MEMORY[0x277D84F98];
      v139 = isUniquelyReferenced_nonNull_native;
      while (1)
      {
        if (v142)
        {
          v35 = MEMORY[0x21CECE0F0](v34, v33);
        }

        else
        {
          if (v34 >= *(v138 + 16))
          {
            goto LABEL_28;
          }

          v35 = *(v33 + 8 * v34 + 32);
        }

        a2 = v35;
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        sub_219BE2CF4();
        v37 = v145;
        v38 = [v145 objectForKey_];

        if (v38)
        {
          break;
        }

LABEL_7:
        ++v34;
        if (v36 == isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_33;
        }
      }

      v39 = [a2 itemID];
      v40 = sub_219BF5414();
      v42 = v41;

      v43 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v146;
      *&v145 = v146;
      v46 = sub_21870F700(v40, v42);
      v47 = *(v44 + 16);
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        goto LABEL_27;
      }

      v50 = v45;
      if (*(v44 + 24) < v49)
      {
        sub_21947DE54(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_21870F700(v40, v42);
        if ((v50 & 1) != (v52 & 1))
        {
          sub_219BF79A4();
          __break(1u);
          goto LABEL_45;
        }

        v46 = v51;
        if ((v50 & 1) == 0)
        {
          goto LABEL_18;
        }

LABEL_22:

        v19 = v145;
        v57 = *(v145 + 56);
        v58 = *(v57 + 8 * v46);
        *(v57 + 8 * v46) = v43;

LABEL_23:
        v146 = v19;
        isUniquelyReferenced_nonNull_native = v139;
        v33 = v140;
        goto LABEL_7;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v45)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_219490304();
        if (v50)
        {
          goto LABEL_22;
        }
      }

LABEL_18:
      v19 = v145;
      *(v145 + 8 * (v46 >> 6) + 64) |= 1 << v46;
      v53 = (v19[6] + 16 * v46);
      *v53 = v40;
      v53[1] = v42;
      *(v19[7] + 8 * v46) = v43;

      v54 = v19[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_29;
      }

      v19[2] = v56;
      goto LABEL_23;
    }
  }

LABEL_33:
  *&v145 = v130;
  sub_2189FE7E4();
  sub_2189FE94C(&qword_280E8ED60, sub_2189FE7E4);
  v62 = sub_219BF56E4();

  MEMORY[0x28223BE20](v63);
  v113 = &v146;
  v64 = v131;
  v114 = v131;
  sub_2189451AC(sub_2189FE84C, &v115 - 4, v62);
  v66 = v65;

  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v68 = MEMORY[0x277D83A80];
  *(v67 + 56) = MEMORY[0x277D839F8];
  *(v67 + 64) = v68;
  *(v67 + 32) = v69;
  v70 = *(v66 + 16);
  v71 = MEMORY[0x277D83C10];
  *(v67 + 96) = MEMORY[0x277D83B88];
  *(v67 + 104) = v71;
  *(v67 + 72) = v70;
  sub_219BF6214();
  sub_219BE5314();

  v72 = *(v135 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  if (([v72 respondsToSelector_] & 1) != 0 && (v73 = objc_msgSend(v72, sel_numberOfFetchedHeadlinesToReport), v73 >= 1))
  {
    sub_2189FA304(v135, v33, v73);
    sub_2189FDE70(v74, v75, v76, &v146);
    sub_219BE0F14();
    swift_unknownObjectRelease();
    v77 = 0;
  }

  else
  {
    v77 = 1;
  }

  v78 = sub_219BE0F24();
  (*(*(v78 - 8) + 56))(v137, v77, 1, v78);
  CACurrentMediaTime();
  v79 = (v64 + *(_s19FeedItemFetchResultVMa(0) + 36));
  sub_219BDB174();
  sub_219BE2CF4();

  v142 = v66;
  if (v116)
  {
    v141 = sub_219BF7214();
  }

  else
  {
    v141 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v140 = sub_219BF5CC4();
  MetricsVMa = _s20FeedItemFetchMetricsVMa(0);
  MEMORY[0x28223BE20](MetricsVMa);
  v113 = v79;
  sub_218F8B624(sub_2189FE86C, (&v115 - 4), v81);
  v82 = objc_opt_self();
  sub_219BDB184();
  v83 = sub_219BF5904();

  [v82 fc:v83 durationOfDateIntervalsIgnoringOverlap:?];

  v138 = sub_219BF5CC4();
  MEMORY[0x28223BE20](v138);
  v113 = v79;
  sub_218F8B624(sub_2189FF09C, (&v115 - 4), v84);
  v85 = sub_219BF5904();

  [v82 fc:v85 durationOfDateIntervalsIgnoringOverlap:?];

  sub_219BF5CC4();
  sub_219BE2CF4();

  sub_219BF5CC4();
  v86 = *(v79 + *(MetricsVMa + 20));
  if (v86 >= 3)
  {
LABEL_45:
    *&v145 = v86;
    sub_219BF7974();
    __break(1u);
  }

  else
  {
    v139 = a13;
    v87 = **(&unk_2782422A8 + v86);
    v88 = sub_219BE11A4();
    v89 = *(v88 - 8);
    v90 = v120;
    (*(v89 + 104))(v120, v87, v88);
    (*(v89 + 56))(v90, 0, 1, v88);
    v91 = v121;
    sub_218BA7880(v121);
    v113 = v90;
    v114 = v91;
    sub_219BE0FD4();
    v141 = MEMORY[0x277D2EDE8];
    sub_2189FEA94(v137, v133, &qword_280EE8150, MEMORY[0x277D2EDE8]);
    [v123 decayedPublisherDiversificationPenalty];
    v93 = v92;
    v94 = v125;
    v95 = v124;
    v96 = v126;
    (*(v125 + 16))(v124, a10, v126);
    sub_218718690(a11, &v145);
    sub_218718690(a12, v144);
    v97 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v98 = (v122 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
    v99 = (v98 + 15) & 0xFFFFFFFFFFFFFFF8;
    v100 = (v99 + 47) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    v102 = v132;
    *(v101 + 16) = v127;
    *(v101 + 24) = v102;
    (*(v94 + 32))(v101 + v97, v95, v96);
    *(v101 + v98) = v135;
    sub_2186CB1F0(&v145, v101 + v99);
    sub_2186CB1F0(v144, v101 + v100);
    *(v101 + ((v100 + 47) & 0xFFFFFFFFFFFFFFF8)) = v139;
    _s11MyHeadlinesCMa();
    v103 = swift_allocObject();
    v104 = OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResult;
    v143 = MEMORY[0x277D84F90];
    v138 = sub_2189FE94C(&qword_280EE7E70, MEMORY[0x277D6CA70]);
    sub_2189FEFB4(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    v131 = v105;
    v140 = sub_218711654();

    v106 = v132;

    sub_219BF7164();
    sub_2189FEFB4(0, &qword_280EE7188, sub_2189FE994, MEMORY[0x277D6CEE8]);
    swift_allocObject();
    *(v103 + v104) = sub_219BE2D14();
    v107 = v128;
    (*(v128 + 16))(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_analyticsData, v136, v134);
    v108 = v133;
    v109 = v141;
    sub_2189FEA94(v133, v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_articleScoreSummaryDataList, &qword_280EE8150, v141);
    v110 = MEMORY[0x277D84F90];
    *(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_consumedScoredItems) = MEMORY[0x277D84F90];
    *(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_decayedPublisherDiversificationPenalty) = v93;
    *(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_scoredItems) = v142;
    v111 = (v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResultProvider);
    *v111 = sub_2189FE888;
    v111[1] = v101;
    swift_allocObject();
    swift_weakInit();
    v143 = v110;

    sub_219BF7164();
    swift_allocObject();
    v112 = sub_219BE2D14();

    sub_2189FEA24(v108, &qword_280EE8150, v109);
    (*(v107 + 8))(v136, v134);
    *(v103 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_clusteringResult) = v112;

    *&v145 = v103;
    v119(&v145);
    sub_2189FEA24(v137, &qword_280EE8150, v109);
  }
}

void sub_2189FA13C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_2189FA1A4(id *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a1;
  v6 = [v5 identifier];
  v7 = sub_219BF5414();
  v9 = v8;

  v10 = *a2;
  if (*(v10 + 16))
  {
    v11 = sub_21870F700(v7, v9);
    v13 = v12;

    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v11);
    }
  }

  else
  {
  }

  v15 = *(a3 + 24);
  v16 = [v5 feedID];
  if (v16)
  {
    v17 = v16;
    v18 = sub_219BF5414();
    v20 = v19;

    if (*(v15 + 16))
    {
      goto LABEL_7;
    }

LABEL_10:

    return sub_219BEDBD4();
  }

  v18 = 0;
  v20 = 0xE000000000000000;
  if (!*(v15 + 16))
  {
    goto LABEL_10;
  }

LABEL_7:
  v21 = sub_21870F700(v18, v20);
  v23 = v22;

  if (v23)
  {
    v24 = *(*(v15 + 56) + 8 * v21);
  }

  return sub_219BEDBD4();
}

uint64_t sub_2189FA304(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = *(a1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  v7 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  if (([v6 respondsToSelector_] & 1) == 0 || objc_msgSend(v6, sel_shouldShuffleReportedHeadlines))
  {

    v24 = sub_219758FA8(v8);
    sub_218D28FEC();
    if (a3 < 0)
    {
      __break(1u);
    }

    else
    {
      a2 = v24;
      LODWORD(v7) = v24 < 0 || (v24 & 0x4000000000000000) != 0;
      if (v7 != 1)
      {
        v9 = *(v24 + 16);
        if (v9 >= a3)
        {
          v10 = a3;
        }

        else
        {
          v10 = *(v24 + 16);
        }

        if (a3)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v9 >= v11)
        {
LABEL_15:
          if ((a2 & 0xC000000000000001) != 0 && v11)
          {
            sub_2186C6148(0, &qword_280E8E800);

            v12 = 0;
            do
            {
              v13 = v12 + 1;
              sub_219BF7334();
              v12 = v13;
            }

            while (v11 != v13);
          }

          else
          {
          }

          if (v7)
          {
            v14 = sub_219BF7564();

            return v14;
          }

          return a2;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }
    }

    v20 = sub_219BF7214();
    result = sub_219BF7214();
    if (result < 0)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v20 >= a3)
    {
      v21 = a3;
    }

    else
    {
      v21 = v20;
    }

    if (v20 < 0)
    {
      v21 = a3;
    }

    if (a3)
    {
      v11 = v21;
    }

    else
    {
      v11 = 0;
    }

    if (sub_219BF7214() >= v11)
    {
      goto LABEL_15;
    }

    goto LABEL_53;
  }

  if (a3 < 0)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v3 = a2 >> 62;
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= a3)
    {
      v16 = a3;
    }

    else
    {
      v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (a3)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (result < v17)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

LABEL_33:
    if ((a2 & 0xC000000000000001) != 0 && v17)
    {
      sub_2186C6148(0, &qword_280E8E800);

      v18 = 0;
      do
      {
        v19 = v18 + 1;
        sub_219BF7334();
        v18 = v19;
      }

      while (v17 != v19);
      if (!v3)
      {
        goto LABEL_38;
      }
    }

    else
    {

      if (!v3)
      {
LABEL_38:
        a2 &= 0xFFFFFFFFFFFFFF8uLL;
        return a2;
      }
    }

    return sub_219BF7564();
  }

LABEL_55:
  v22 = sub_219BF7214();
  result = sub_219BF7214();
  if ((result & 0x8000000000000000) == 0)
  {
    if (v22 >= a3)
    {
      v23 = a3;
    }

    else
    {
      v23 = v22;
    }

    if (v22 < 0)
    {
      v23 = a3;
    }

    if (a3)
    {
      v17 = v23;
    }

    else
    {
      v17 = 0;
    }

    result = sub_219BF7214();
    if (result < v17)
    {
      goto LABEL_65;
    }

    goto LABEL_33;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_2189FA5E4@<X0>(id *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = sub_219BE1774();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  sub_2189FEFB4(0, &qword_280EE7F38, MEMORY[0x277D2F8F0], MEMORY[0x277D83D88]);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = [*a1 itemID];
  v14 = sub_219BF5414();
  v16 = v15;

  v17 = *a2;
  if (*(v17 + 16) && (v18 = sub_21870F700(v14, v16), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
    if ([v20 hasShadowScores])
    {
      [v20 shadowTabiScore];
      [v20 shadowAgedPersonalizationScore];
      sub_219BE1764();
      (*(v6 + 56))(v12, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v12, 1, 1, v5);
    }

    [v20 tabiScore];
    [v20 agedPersonalizationScore];
    sub_219BE1764();
    v23 = MEMORY[0x277D2F8F0];
    sub_2189FEA94(v12, v10, &qword_280EE7F38, MEMORY[0x277D2F8F0]);
    v24 = v27;
    sub_219BE0A14();

    sub_2189FEA24(v12, &qword_280EE7F38, v23);
    v25 = sub_219BE0A24();
    return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
  }

  else
  {

    v21 = sub_219BE0A24();
    return (*(*(v21 - 8) + 56))(v27, 1, 1, v21);
  }
}

uint64_t sub_2189FA970(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v43 = a6;
  v50 = a4;
  v51 = a1;
  v52 = a3;
  v53 = a2;
  v48 = sub_219BF0BD4();
  v56 = *(v48 - 8);
  v49 = *(v56 + 64);
  MEMORY[0x28223BE20](v48);
  v55 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TopicTodayFeedGroupKnobs();
  v47 = *(v11 - 8);
  v46 = *(v47 + 64);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v57 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - v14;
  v16 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v40 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  v21 = a5 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v22 = *(v21 + *(type metadata accessor for TodayConfig() + 20));
  v44 = v20;
  sub_2189FEB14(v22 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelKnobs, v20, type metadata accessor for ChannelTodayFeedGroupKnobs);
  v42 = v15;
  sub_2189FEB14(v22 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_topicKnobs, v15, type metadata accessor for TopicTodayFeedGroupKnobs);
  v58 = a7;
  type metadata accessor for FCSportsOnboardingState(0);
  sub_219BE3204();
  sub_218718690(v43, v59);
  v23 = swift_allocObject();
  v41 = a5;
  *(v23 + 16) = a5;
  sub_2186CB1F0(v59, v23 + 24);

  v24 = sub_219BE2E54();
  sub_2186E2394();
  v43 = sub_219BE2F64();

  sub_2189FEB14(v20, &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ChannelTodayFeedGroupKnobs);
  v25 = v56;
  v26 = v48;
  (*(v56 + 16))(v55, v50, v48);
  sub_2189FEB14(v15, v57, type metadata accessor for TopicTodayFeedGroupKnobs);
  v27 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v28 = (v17 + *(v25 + 80) + v27) & ~*(v25 + 80);
  v29 = (v49 + *(v47 + 80) + v28) & ~*(v47 + 80);
  v30 = (v46 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = v41;
  sub_2189FEF4C(v40, v33 + v27, type metadata accessor for ChannelTodayFeedGroupKnobs);
  (*(v56 + 32))(v33 + v28, v55, v26);
  sub_2189FEF4C(v57, v33 + v29, type metadata accessor for TopicTodayFeedGroupKnobs);
  *(v33 + v30) = v51;
  v35 = v52;
  v34 = v53;
  *(v33 + v31) = v52;
  *(v33 + v32) = v34;
  *(v33 + ((v32 + 15) & 0xFFFFFFFFFFFFFFF8)) = v54;

  v36 = v35;

  v37 = sub_219BE2E54();
  sub_219BEFE34();
  v38 = sub_219BE2F64();

  sub_2189FEE28(v42, type metadata accessor for TopicTodayFeedGroupKnobs);
  sub_2189FEE28(v44, type metadata accessor for ChannelTodayFeedGroupKnobs);
  return v38;
}

uint64_t sub_2189FAEEC(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1 != 1)
  {
    if (qword_280E8D910 != -1)
    {
LABEL_38:
      swift_once();
    }

    sub_219BF6214();
    goto LABEL_12;
  }

  v5 = [*(a2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) mySportsTagID];
  if (!v5)
  {
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_219BF61F4();
LABEL_12:
    sub_219BE5314();
LABEL_13:
    sub_2189FEFB4(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  v6 = v5;
  v7 = sub_219BF5414();
  v9 = v8;
  v10 = *(a2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController);
  v11 = [v10 hasMutedSubscriptionForTagID_];

  if (v11)
  {
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09BA0;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_2186FC3BC();
    *(v12 + 32) = v7;
    *(v12 + 40) = v9;
    sub_219BF6214();
    sub_219BE5314();

    goto LABEL_13;
  }

  v14 = [v10 cachedSubscribedTags];
  if (v14)
  {
    v15 = v14;
    sub_2186D8870();
    v16 = sub_219BF5924();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v16 >> 62)
  {
    v17 = sub_219BF7214();
    if (v17)
    {
LABEL_19:
      v18 = 0;
      v35 = MEMORY[0x277D84F90];
      do
      {
        v19 = v18;
        while (1)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x21CECE0F0](v19, v16);
            v18 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_37;
            }

            v20 = *(v16 + 8 * v19 + 32);
            swift_unknownObjectRetain();
            v18 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
              goto LABEL_38;
            }
          }

          v21 = [v20 asSports];
          if (v21)
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v19;
          if (v18 == v17)
          {
            goto LABEL_41;
          }
        }

        v34 = v3;
        v22 = [v21 identifier];
        swift_unknownObjectRelease();
        v23 = sub_219BF5414();
        v33 = v24;

        swift_unknownObjectRelease();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_218840D24(0, *(v35 + 2) + 1, 1, v35);
        }

        v26 = *(v35 + 2);
        v25 = *(v35 + 3);
        if (v26 >= v25 >> 1)
        {
          v35 = sub_218840D24((v25 > 1), v26 + 1, 1, v35);
        }

        *(v35 + 2) = v26 + 1;
        v27 = &v35[16 * v26];
        v3 = v34;
        *(v27 + 4) = v23;
        *(v27 + 5) = v33;
      }

      while (v18 != v17);
      goto LABEL_41;
    }
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_19;
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_41:

  v28 = sub_218845F78(v35);

  MEMORY[0x28223BE20](v29);
  sub_219BF29D4();
  sub_219BE3204();
  *(swift_allocObject() + 16) = v28;

  v30 = sub_219BE2E54();
  sub_2186E2394();
  sub_219BE2F64();

  *(swift_allocObject() + 16) = v28;
  v31 = sub_219BE2E54();
  v32 = sub_219BE3054();

  return v32;
}

uint64_t sub_2189FB4B4()
{
  v0 = sub_219BF29C4();
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  v2 = *(v0 + 16);
  v3 = MEMORY[0x277D83C10];
  *(v1 + 56) = MEMORY[0x277D83B88];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  sub_219BF6214();
  sub_219BE5314();

  sub_2194796A0(v4, v0);
  sub_2189FEFB4(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2189FB608()
{
  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580);
  sub_219BF7484();
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 64) = sub_2186FC3BC();
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  sub_219BE5314();

  sub_2189FEFB4(0, &qword_280EE69E0, sub_2186E2394, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

id sub_2189FB7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8)
{
  v92 = a8;
  v101 = a7;
  v90 = a5;
  v103 = a4;
  v11 = sub_219BEED94();
  v93 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEFD94();
  MEMORY[0x28223BE20](v14 - 8);
  v99 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189FEFB4(0, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v97 = v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v95 = v82 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v98 = v82 - v22;
  MEMORY[0x28223BE20](v21);
  v96 = v82 - v23;
  v24 = sub_219BEEDB4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v88 = v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for ChannelTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v105);
  v102 = v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for TopicTodayFeedGroupKnobs();
  MEMORY[0x28223BE20](v100);
  v94 = v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_21960A8D8();

  v31 = sub_2194796A0(v30, v29);

  v33 = sub_2194796A0(v32, v31);
  v104 = a2;
  v34 = *(a2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  result = [v34 respondsToSelector_];
  if (result)
  {
    v84 = v24;
    v85 = a6;
    v36 = [v34 deprecatedSportsTopicTagIds];
    if (v36)
    {
      v37 = v36;
      v38 = sub_219BF5924();
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
    }

    v83 = v25;
    v39 = sub_2194B1FF0(v38, v33);

    v40 = a3;
    v41 = sub_219BEEDF4();
    v42 = sub_2194796A0(v41, v39);
    v43 = v90;
    v44 = sub_219BEEDF4();
    v106[14] = sub_2194796A0(v44, v42);
    if ([*(v104 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability) useFood])
    {
      v45 = [v34 foodHubTagID];
      if (v45)
      {
        v46 = v45;
        v47 = sub_219BF5414();
        v49 = v48;

        sub_219497B60(v106, v47, v49);
      }
    }

    v87 = v11;
    v89 = v13;
    v50 = v94;
    v51 = v102;
    sub_2189FC4A8(v94, v102, v104, v43, v40);
    sub_219BE1CC4();
    if (sub_219BE1CB4())
    {
      v52 = sub_2189FD370(type metadata accessor for TopicTodayFeedGroupKnobs, sub_2189FEF18);
      if (v53)
      {
        v54 = v52;
        v55 = v53;
        if (qword_280E8D7E8 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_219C09BA0;
        *(v56 + 56) = MEMORY[0x277D837D0];
        *(v56 + 64) = sub_2186FC3BC();
        *(v56 + 32) = v54;
        *(v56 + 40) = v55;
        sub_219BF6214();
        sub_219BE5314();

        v51 = v102;
      }

      v57 = sub_2189FD370(type metadata accessor for ChannelTodayFeedGroupKnobs, sub_2189FEEE4);
      if (v58)
      {
        v59 = v57;
        v60 = v58;
        if (qword_280E8D7E8 != -1)
        {
          swift_once();
        }

        sub_2186F20D4();
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_219C09BA0;
        *(v61 + 56) = MEMORY[0x277D837D0];
        *(v61 + 64) = sub_2186FC3BC();
        *(v61 + 32) = v59;
        *(v61 + 40) = v60;
        sub_219BF6214();
        sub_219BE5314();

        v51 = v102;
      }
    }

    v82[1] = [objc_msgSend(v101 appConfigurationManager)];
    swift_unknownObjectRelease();
    v62 = v100;
    v63 = v103;
    sub_219BEF524();
    v82[0] = v106[9];
    sub_2189FD708(v50 + v62[9], v63, 0x766146206F747541, 0xEE0073657469726FLL, v96);
    v64 = v105;
    v65 = sub_2189FD708(v51 + *(v105 + 24), v63, 0x6C656E6E616843, 0xE700000000000000, v98);
    v90 = v82;
    v86 = *(v51 + *(v64 + 28));
    MEMORY[0x28223BE20](v65);
    sub_219BEF814();
    sub_219BEED84();
    v66 = v91;
    v91 = sub_219BF5254();
    MEMORY[0x28223BE20](v91);
    v67 = v102;
    v86 = sub_219BF5254();
    v90 = v66;
    sub_2189FD708(v50 + v62[10], v63, 0x6C6172656E6547, 0xE700000000000000, v95);
    sub_2189FD708(v50 + v62[11], v63, 0x726F462065726F4DLL, 0xEC000000756F5920, v97);

    sub_219BEF524();
    sub_219BEF524();
    sub_219BEF524();
    sub_219BEF524();
    sub_219BEF524();
    v68 = [objc_msgSend(v101 appConfigurationManager)];
    swift_unknownObjectRelease();
    if ([v68 respondsToSelector_])
    {
      v69 = [v68 allowAnyChannelForTodayChannelGroups];
    }

    else
    {
      v69 = 0;
    }

    v70 = v89;
    v71 = v87;
    swift_unknownObjectRelease();
    sub_219BEF524();
    v72 = v106[0];
    *v70 = v69;
    v70[1] = v72;
    (*(v93 + 104))(v70, *MEMORY[0x277D32350], v71);
    v73 = sub_219BEE6F4();
    v106[3] = v73;
    v106[4] = MEMORY[0x277D320F0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v106);
    v75 = v67;
    v76 = *MEMORY[0x277D329E0];
    v77 = sub_219BEFBD4();
    (*(*(v77 - 8) + 104))(boxed_opaque_existential_1, v76, v77);
    (*(*(v73 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D320E8], v73);
    result = [*(v104 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController) autoFavoriteTagIDs];
    if (result)
    {
      v78 = result;

      v79 = sub_219BF5924();

      sub_218845F78(v79);

      v80 = v88;
      sub_219BEEDA4();
      v81 = sub_219BEFF64();
      (*(v83 + 8))(v80, v84);
      sub_2189FEE28(v75, type metadata accessor for ChannelTodayFeedGroupKnobs);
      sub_2189FEE28(v94, type metadata accessor for TopicTodayFeedGroupKnobs);
      return v81;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2189FC4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides();
  MEMORY[0x28223BE20](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  if (([v13 respondsToSelector_] & 1) != 0 && (v14 = objc_msgSend(v13, sel_todayFeedGroupClusteringKnobOverrides)) != 0)
  {
    v53 = a1;
    v55 = a4;
    v56 = a2;
    v57 = a5;
    v15 = v14;
    sub_219BF5214();

    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v52 = v16;
    v17 = swift_allocObject();
    v51 = xmmword_219C09BA0;
    *(v17 + 16) = xmmword_219C09BA0;
    v18 = sub_219BF5224();
    v20 = v19;
    *(v17 + 56) = MEMORY[0x277D837D0];
    v54 = sub_2186FC3BC();
    *(v17 + 64) = v54;
    *(v17 + 32) = v18;
    *(v17 + 40) = v20;
    sub_219BF6214();
    sub_219BE5314();

    v21 = objc_opt_self();
    v22 = sub_219BF5204();
    v59 = 0;
    v23 = [v21 dataWithJSONObject:v22 options:0 error:&v59];

    v24 = v59;
    if (v23)
    {
      v25 = sub_219BDBA04();
      v27 = v26;

      sub_219BF6214();
      sub_219BE5314();
      sub_219BDAFF4();
      swift_allocObject();
      sub_219BDAFE4();
      sub_2189FE94C(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
      v28 = v25;
      v29 = v27;
      sub_219BDAFC4();
      v30 = v55;
      v31 = v53;

      v46 = swift_allocObject();
      *(v46 + 16) = v51;
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_219BF7484();
      v47 = v59;
      v48 = v60;
      v49 = v54;
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = v49;
      *(v46 + 32) = v47;
      *(v46 + 40) = v48;
      sub_219BF6214();
      sub_219BE5314();

      sub_2189FCB14(v12, v30, v31);
      sub_2189FCF48(v12, v57, v56);
      sub_2186C6190(v28, v29);
      return sub_2189FEE28(v12, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
    }

    v34 = v24;
    v35 = sub_219BDB724();

    swift_willThrow();
    v36 = v55;
    v37 = v53;
    sub_219BF61F4();
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_219C09EC0;
    v39 = sub_219BF5224();
    v41 = v40;

    v42 = MEMORY[0x277D837D0];
    v43 = v54;
    *(v38 + 56) = MEMORY[0x277D837D0];
    *(v38 + 64) = v43;
    *(v38 + 32) = v39;
    *(v38 + 40) = v41;
    v59 = 0;
    v60 = 0xE000000000000000;
    v58 = v35;
    sub_2186CFDE4(0, &qword_280E8B580);
    sub_219BF7484();
    v44 = v59;
    v45 = v60;
    *(v38 + 96) = v42;
    *(v38 + 104) = v43;
    *(v38 + 72) = v44;
    *(v38 + 80) = v45;
    sub_219BE5314();

    sub_2189FEB14(v36, v37, type metadata accessor for TopicTodayFeedGroupKnobs);
    v33 = v56;
    v32 = v57;
  }

  else
  {
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    sub_2189FEB14(a4, a1, type metadata accessor for TopicTodayFeedGroupKnobs);
    v32 = a5;
    v33 = a2;
  }

  return sub_2189FEB14(v32, v33, type metadata accessor for ChannelTodayFeedGroupKnobs);
}

uint64_t sub_2189FCB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2189FEFB4(0, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v25 - v7;
  v9 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides();
  sub_2189FEA94(a1 + *(v13 + 28), v8, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2189FEA24(v8, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    return sub_2189FEB14(a2, a3, type metadata accessor for TopicTodayFeedGroupKnobs);
  }

  else
  {
    v25[1] = a2;
    v26 = a3;
    sub_2189FEF4C(v8, v12, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    v25[2] = qword_280F61700;
    sub_2186F20D4();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_219C09EC0;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_219BF7484();
    v16 = v27;
    v17 = v28;
    v18 = MEMORY[0x277D837D0];
    *(v15 + 56) = MEMORY[0x277D837D0];
    v19 = sub_2186FC3BC();
    *(v15 + 64) = v19;
    *(v15 + 32) = v16;
    *(v15 + 40) = v17;
    v27 = 0;
    v28 = 0xE000000000000000;
    type metadata accessor for TopicTodayFeedGroupKnobs();
    sub_219BF7484();
    v20 = v27;
    v21 = v28;
    *(v15 + 96) = v18;
    *(v15 + 104) = v19;
    *(v15 + 72) = v20;
    *(v15 + 80) = v21;
    sub_219BF6214();
    sub_219BE5314();

    sub_219965FB0(v12, v26);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09BA0;
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_219BF7484();
    v23 = v27;
    v24 = v28;
    *(v22 + 56) = v18;
    *(v22 + 64) = v19;
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    sub_219BF6214();
    sub_219BE5314();

    return sub_2189FEE28(v12, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
  }
}

uint64_t sub_2189FCF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2189FEFB4(0, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189FEA94(a1, v8, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2189FEA24(v8, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    sub_219BF6214();
    sub_219BE5314();
    return sub_2189FEB14(a2, a3, type metadata accessor for ChannelTodayFeedGroupKnobs);
  }

  else
  {
    v24[2] = a2;
    v25 = a3;
    sub_2189FEF4C(v8, v12, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
    if (qword_280E8D7E8 != -1)
    {
      swift_once();
    }

    v24[1] = qword_280F61700;
    sub_2186F20D4();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_219BF7484();
    v15 = v26;
    v16 = v27;
    v17 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v18 = sub_2186FC3BC();
    *(v14 + 64) = v18;
    *(v14 + 32) = v15;
    *(v14 + 40) = v16;
    v26 = 0;
    v27 = 0xE000000000000000;
    type metadata accessor for ChannelTodayFeedGroupKnobs();
    sub_219BF7484();
    v19 = v26;
    v20 = v27;
    *(v14 + 96) = v17;
    *(v14 + 104) = v18;
    *(v14 + 72) = v19;
    *(v14 + 80) = v20;
    sub_219BF6214();
    sub_219BE5314();

    sub_218CC5018(v12, v25);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_219BF7484();
    v22 = v26;
    v23 = v27;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = v18;
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    sub_219BF6214();
    sub_219BE5314();

    return sub_2189FEE28(v12, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
  }
}

uint64_t sub_2189FD370(void (*a1)(void), void (*a2)(void))
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = sub_219BF5474();
  MEMORY[0x28223BE20](v4 - 8);
  sub_219BDB084();
  swift_allocObject();
  sub_219BDB074();
  a1(0);
  a2();
  v9 = sub_219BDB064();
  v11 = v10;

  v12 = objc_opt_self();
  v13 = sub_219BDB9E4();
  v28[0] = 0;
  v14 = [v12 JSONObjectWithData:v13 options:0 error:v28];

  v15 = v28[0];
  if (v14)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(&v29, v31);
    v16 = sub_219BF78D4();
    v28[0] = 0;
    v17 = [v12 dataWithJSONObject:v16 options:1 error:v28];
    swift_unknownObjectRelease();
    v18 = v28[0];
    if (v17)
    {
      v19 = sub_219BDBA04();
      v21 = v20;

      sub_219BF5464();
      v22 = sub_219BF5434();
      sub_2186C6190(v9, v11);
      sub_2186C6190(v19, v21);
      __swift_destroy_boxed_opaque_existential_1(&v29);
      return v22;
    }

    v26 = v18;
    v27 = sub_219BDB724();

    swift_willThrow();
    v25 = v27;
    sub_2186C6190(v9, v11);
    __swift_destroy_boxed_opaque_existential_1(&v29);
  }

  else
  {
    v23 = v15;
    v24 = sub_219BDB724();

    swift_willThrow();
    v25 = v24;
    sub_2186C6190(v9, v11);
  }

  if (qword_280E8D7E8 != -1)
  {
    swift_once();
  }

  sub_219BF61F4();
  sub_2186F20D4();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_219BF7484();
  v6 = v29;
  v7 = v30;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_219BE5314();

  return 0;
}

uint64_t sub_2189FD708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a3;
  v44 = a5;
  v8 = sub_219BF0BD4();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  v40 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D32720];
  sub_2189FEFB4(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v36 - v15;
  v17 = sub_219BEF814();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189FEA94(a1, v16, &qword_280E912E0, v10);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2189FEA24(v16, &qword_280E912E0, MEMORY[0x277D32720]);
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    sub_2186F20D4();
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09BA0;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_2186FC3BC();
    *(v21 + 32) = v43;
    *(v21 + 40) = a4;

    sub_219BF6214();
    sub_219BE5314();

    v22 = sub_219BEED84();
    return (*(*(v22 - 8) + 56))(v44, 1, 1, v22);
  }

  else
  {
    v39 = a2;
    v24 = a4;
    (*(v18 + 32))(v20, v16, v17);
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    v38 = qword_280F617C0;
    sub_2186F20D4();
    v36[1] = v25;
    v26 = swift_allocObject();
    v37 = xmmword_219C09EC0;
    *(v26 + 16) = xmmword_219C09EC0;
    v27 = MEMORY[0x277D837D0];
    *(v26 + 56) = MEMORY[0x277D837D0];
    v28 = sub_2186FC3BC();
    *(v26 + 64) = v28;
    v29 = v43;
    *(v26 + 32) = v43;
    *(v26 + 40) = v24;
    v45 = 0;
    v46 = 0xE000000000000000;

    sub_219BF7484();
    v30 = v45;
    v31 = v46;
    *(v26 + 96) = v27;
    *(v26 + 104) = v28;
    *(v26 + 72) = v30;
    *(v26 + 80) = v31;
    sub_219BF6214();
    sub_219BE5314();

    (*(v18 + 16))(v14, v20, v17);
    (*(v18 + 56))(v14, 0, 1, v17);
    (*(v41 + 16))(v40, v39, v42);
    sub_219BEED74();
    v32 = swift_allocObject();
    *(v32 + 16) = v37;
    v33 = MEMORY[0x277D837D0];
    *(v32 + 56) = MEMORY[0x277D837D0];
    *(v32 + 64) = v28;
    *(v32 + 32) = v29;
    *(v32 + 40) = v24;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_2189FEFB4(0, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);

    sub_219BF7484();
    v34 = v45;
    v35 = v46;
    *(v32 + 96) = v33;
    *(v32 + 104) = v28;
    *(v32 + 72) = v34;
    *(v32 + 80) = v35;
    sub_219BF6214();
    sub_219BE5314();

    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_2189FDCC8(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a6;
  v25 = a5;
  v23 = a2;
  v13 = MEMORY[0x277D32720];
  sub_2189FEFB4(0, &qword_280E912E0, MEMORY[0x277D32720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  v18 = *a3;
  v17 = a3[1];
  *a1 = v18;
  a1[1] = v17;
  v19 = sub_219BEF814();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v16, a4, v19);
  (*(v20 + 56))(v16, 0, 1, v19);
  v26 = a7;
  v27 = a8;

  MEMORY[0x21CECC330](v18, v17);
  sub_2189FD708(v16, v24, v26, v27, v23);

  return sub_2189FEA24(v16, &qword_280E912E0, v13);
}

uint64_t sub_2189FDE70(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  sub_2189FEFB4(0, &unk_280EE8240, MEMORY[0x277D2E9F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v31 - v10;
  v12 = sub_219BE0A24();
  v13 = MEMORY[0x28223BE20](v12);
  v38 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v35 = &v31 - v17;
  v18 = a3 >> 1;
  v19 = (a3 >> 1) - a2;
  if (a3 >> 1 == a2)
  {
    return MEMORY[0x277D84F90];
  }

  else
  {
    v32 = v16;
    v36 = (v16 + 32);
    v37 = (v16 + 48);
    if (a2 > v18)
    {
      v18 = a2;
    }

    v21 = v18 - a2;
    v22 = (a1 + 8 * a2);
    v20 = MEMORY[0x277D84F90];
    v33 = v12;
    v34 = a4;
    v31 = v11;
    while (v21)
    {
      v39 = *v22;
      v23 = v39;
      sub_2189FA5E4(&v39, a4, v11);
      if (v4)
      {

        return v20;
      }

      if ((*v37)(v11, 1, v12) == 1)
      {
        result = sub_2189FEA24(v11, &unk_280EE8240, MEMORY[0x277D2E9F0]);
      }

      else
      {
        v24 = v12;
        v25 = v35;
        v26 = *v36;
        (*v36)(v35, v11, v24);
        v26(v38, v25, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2191F7028(0, v20[2] + 1, 1, v20);
        }

        v28 = v20[2];
        v27 = v20[3];
        v11 = v31;
        if (v28 >= v27 >> 1)
        {
          v20 = sub_2191F7028(v27 > 1, v28 + 1, 1, v20);
        }

        v20[2] = v28 + 1;
        v29 = v20 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28;
        v30 = v33;
        result = (v26)(v29, v38, v33);
        v12 = v30;
        a4 = v34;
      }

      --v21;
      ++v22;
      if (!--v19)
      {
        return v20;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2189FE1B8(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    sub_2186C6148(0, &qword_280E8E760);
    v10 = sub_219BF5204();
  }

  else
  {
    v10 = 0;
  }

  v11 = [a3 subscriptionController];
  if (!v11)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 autoFavoriteTagIDs];

  if (v13)
  {
    v14 = sub_219BF5924();
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v15 = objc_opt_self();
  sub_218845F78(v14);

  v16 = sub_219BF5D34();

  v17 = [v15 transformationWithFeedContextByFeedID:v10 autoFavoriteTagIDs:v16];

  v18 = sub_2191F7014(0, 1, 1, MEMORY[0x277D84F90]);
  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = sub_2191F7014((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  v21 = &v18[40 * v20];
  *(v21 + 4) = 0xD000000000000017;
  *(v21 + 5) = 0x8000000219CDF4A0;
  *(v21 + 6) = v17;
  *(v21 + 7) = 0;
  v21[64] = 0;
  v22 = [a3 subscriptionController];
  if (!v22)
  {
    goto LABEL_38;
  }

  v23 = v22;
  v24 = [v22 newlySubscribedTagIDsInDateRange_];

  if (v24)
  {
    v25 = sub_219BF5924();
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
  }

  sub_218845F78(v25);

  v26 = MEMORY[0x277D837D0];
  v27 = sub_219BF5D34();

  if (a2)
  {
    sub_2186C6148(0, &qword_280E8E760);
    v28 = sub_219BF5204();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_opt_self() transformationWithTagIDs:v27 feedContextByFeedID:v28];

  if (!v29)
  {
    goto LABEL_39;
  }

  v31 = *(v18 + 2);
  v30 = *(v18 + 3);
  if (v31 >= v30 >> 1)
  {
    v18 = sub_2191F7014((v30 > 1), v31 + 1, 1, v18);
  }

  *(v18 + 2) = v31 + 1;
  v32 = &v18[40 * v31];
  *(v32 + 2) = xmmword_219C12320;
  *(v32 + 6) = v29;
  *(v32 + 7) = 0;
  v32[64] = 0;
  v33 = [objc_opt_self() transformationWithPersonalizer_];
  if (!v33)
  {
    goto LABEL_40;
  }

  v35 = *(v18 + 2);
  v34 = *(v18 + 3);
  if (v35 >= v34 >> 1)
  {
    v57 = v33;
    v18 = sub_2191F7014((v34 > 1), v35 + 1, 1, v18);
    v33 = v57;
  }

  *(v18 + 2) = v35 + 1;
  v36 = &v18[40 * v35];
  *(v36 + 2) = xmmword_219C12330;
  *(v36 + 6) = v33;
  *(v36 + 7) = 0;
  v36[64] = 0;
  v37 = NewsCoreUserDefaults();
  v38 = [v37 BOOLForKey_];

  v39 = objc_opt_self();
  if (v38)
  {
    v40 = 0x64022513ELL;
  }

  else
  {
    v40 = 0x64022113ELL;
  }

  v41 = [v39 transformationWithFilterOptions:v40 configuration:*(a5 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) context:a3];
  v43 = *(v18 + 2);
  v42 = *(v18 + 3);
  if (v43 >= v42 >> 1)
  {
    v58 = v41;
    v18 = sub_2191F7014((v42 > 1), v43 + 1, 1, v18);
    v41 = v58;
  }

  *(v18 + 2) = v43 + 1;
  v44 = &v18[40 * v43];
  *(v44 + 4) = v41;
  *(v44 + 5) = 0;
  *(v44 + 6) = 0;
  *(v44 + 7) = 0;
  v44[64] = 1;
  v45 = sub_218FD1490(a1, v18);
  v47 = v46;

  if (qword_280E8D910 != -1)
  {
    swift_once();
  }

  sub_2186F20D4();
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_219C0B8C0;
  if (a1 >> 62)
  {
    v59 = v48;
    v49 = sub_219BF7214();
    v48 = v59;
  }

  else
  {
    v49 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = MEMORY[0x277D83B88];
  v51 = MEMORY[0x277D83C10];
  *(v48 + 56) = MEMORY[0x277D83B88];
  *(v48 + 64) = v51;
  *(v48 + 32) = v49;
  if (v45 >> 62)
  {
    v60 = v48;
    v52 = sub_219BF7214();
    v48 = v60;
  }

  else
  {
    v52 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v48 + 96) = v50;
  *(v48 + 104) = v51;
  *(v48 + 72) = v52;
  v53 = v48;
  v54 = sub_218FD25C8(v47);
  v56 = v55;
  v53[17] = v26;
  v53[18] = sub_2186FC3BC();
  v53[14] = v54;
  v53[15] = v56;
  sub_219BF6214();
  sub_219BE5314();
}

void sub_2189FE7E4()
{
  if (!qword_280E8ED70)
  {
    sub_2186C6148(255, &qword_280E8E800);
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8ED70);
    }
  }
}

uint64_t sub_2189FE888(uint64_t a1)
{
  v3 = *(sub_219BF0BD4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 47) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v5);
  v11 = *(v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_2189FA970(a1, v8, v9, v1 + v4, v10, v1 + v6, v1 + v7, v11);
}

uint64_t sub_2189FE94C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2189FE9D0()
{
  result = qword_280EBCB60[0];
  if (!qword_280EBCB60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBCB60);
  }

  return result;
}

uint64_t sub_2189FEA24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2189FEFB4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2189FEA94(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2189FEFB4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2189FEB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2189FEB7C()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 8))(v2, v3);
}

void sub_2189FEBF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig();
    v7 = sub_2189FE94C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

id sub_2189FEC94(uint64_t a1)
{
  v3 = *(type metadata accessor for ChannelTodayFeedGroupKnobs() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BF0BD4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for TopicTodayFeedGroupKnobs() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2189FB7A8(a1, *(v1 + 16), v1 + v4, v1 + v7, (v1 + v10), *(v1 + v11), *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2189FEE28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2189FEF4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2189FEFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2189FF0C4(uint64_t a1)
{
  v32 = sub_219BF1D54();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x277D84F90];
  v33 = *(a1 + 16);
  if (v33)
  {
    v6 = a1;
    v25 = v1;
    v35 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v7 = a1 + 64;
    result = sub_219BF7174();
    v8 = result;
    v9 = 0;
    v10 = *(a1 + 36);
    v29 = a1;
    v30 = v3;
    v27 = v3 + 8;
    v28 = v3 + 16;
    v26 = a1 + 72;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_21;
      }

      if (v10 != *(v6 + 36))
      {
        goto LABEL_22;
      }

      v34 = v9;
      v13 = *(v6 + 56);
      v15 = v30;
      v14 = v31;
      v16 = v32;
      (*(v30 + 16))(v31, v13 + *(v30 + 72) * v8, v32);
      sub_219BF1D34();
      (*(v15 + 8))(v14, v16);
      sub_219BF73D4();
      sub_219BF7414();
      v17 = v29;
      sub_219BF7424();
      result = sub_219BF73E4();
      v11 = 1 << *(v17 + 32);
      if (v8 >= v11)
      {
        goto LABEL_23;
      }

      v18 = *(v7 + 8 * v12);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v6 = v17;
      if (v10 != *(v17 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v12 << 6;
        v21 = v12 + 1;
        v22 = (v26 + 8 * v12);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_2187BC250(v8, v10, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_2187BC250(v8, v10, 0);
      }

LABEL_4:
      v9 = v34 + 1;
      v8 = v11;
      if (v34 + 1 == v33)
      {
        return v35;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}