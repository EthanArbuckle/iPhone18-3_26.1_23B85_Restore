id _s11NotesShared7ICQueryC012makeQueryForbA0_21allowsRecentlyDeletedACSb_SbtFZ_0(char a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = v4 | 0x9000000000000000;
  if ((a2 & 1) == 0)
  {
    v6 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2150C29C0;
    *(v7 + 32) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v7 + 40) = v8 | 0x5000000000000000;
    *(v6 + 16) = v7;
    v5 = v6;
  }

  v9 = type metadata accessor for ICQuery();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___ICQueryObjC_type] = v5;
  v12.receiver = v10;
  v12.super_class = v9;
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_214FF7D64()
{
  result = qword_27CA439B0;
  if (!qword_27CA439B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439B0);
  }

  return result;
}

unint64_t sub_214FF7DBC()
{
  result = qword_27CA439B8;
  if (!qword_27CA439B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439B8);
  }

  return result;
}

unint64_t sub_214FF7E14()
{
  result = qword_27CA439C0;
  if (!qword_27CA439C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439C0);
  }

  return result;
}

uint64_t sub_214FF7E68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FF7ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FF7F30(uint64_t a1)
{
  v2 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_214FF7F8C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v106 = sub_2150A4340();
  v103 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v89 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2150A42C0();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v97 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v100 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v107 = &v87 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60);
  MEMORY[0x28223BE20](v12 - 8);
  v95 = &v87 - v13;
  v102 = sub_2150A42D0();
  v94 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v96 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = &v87 - v16;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70);
  MEMORY[0x28223BE20](v93);
  v105 = &v87 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v18 - 8);
  v91 = &v87 - v19;
  v20 = sub_2150A4360();
  v109 = *(v20 - 8);
  v110 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v90 = &v87 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v108 = &v87 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v87 - v25;
  v27 = sub_2150A3750();
  v104 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v87 - v31;
  v33 = a1;
  v117 = a1;
  v118 = a2;
  v34 = a2;
  v115 = 58;
  v116 = 0xE100000000000000;
  v35 = sub_214F57844();
  sub_214F57898();
  v101 = v35;
  sub_2150A4A00();
  if (v112)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  v88 = a3;
  v87 = *(&v111 + 1);
  v36 = sub_2150A4D40();
  MEMORY[0x216061730](v36);

  v37 = sub_2150A4A90();

  v38 = ICIsNotesURLScheme(v37);

  if ((v38 & 1) == 0)
  {
    goto LABEL_29;
  }

  v39 = v34;
  sub_2150A3720();
  v40 = v104;
  if ((*(v104 + 48))(v26, 1, v27) == 1)
  {
    sub_214F302D4(v26, &qword_27CA41D40);
    v42 = v105;
    v41 = v106;
    v43 = v110;
  }

  else
  {
    (*(v40 + 32))(v32, v26, v27);
    (*(v40 + 16))(v30, v32, v27);
    FolderID.init(url:)(v30, &v111);
    (*(v40 + 8))(v32, v27);
    v44 = v112;
    v42 = v105;
    v41 = v106;
    v43 = v110;
    if (v112)
    {
      v45 = v88;
      *v88 = v111;
      *(v45 + 2) = v44;
      return;
    }
  }

  v115 = v33;
  v116 = v39;
  v113 = 63;
  v114 = 0xE100000000000000;
  sub_2150A4A00();
  if (v112)
  {
    v46 = sub_214F56B68(v87, v33, v39);
    v47 = v102;
    v48 = v103;
  }

  else
  {
    v47 = v102;
    v48 = v103;
    if (v111 >> 14 < v87 >> 14)
    {
      __break(1u);
      return;
    }

    v46 = sub_2150A4D40();
  }

  v49 = MEMORY[0x216061730](v46);
  v51 = v50;

  v117 = v49;
  v118 = v51;

  v52 = sub_2150A4CD0();

  if (v52)
  {
    sub_214F56BB4(2);
  }

  v53 = v108;
  MEMORY[0x216060F30](v117, v118);
  v54 = sub_2150A42E0();
  v55 = 1;
  (*(*(v54 - 8) + 56))(v91, 1, 1, v54);
  sub_2150A4300();
  (*(v109 + 16))(v90, v53, v43);
  v56 = v96;
  sub_2150A42B0();
  v57 = *(v94 + 32);
  v58 = v95;
  v57(v95, v56, v47);
  v59 = v92;
  v57(v92, v58, v47);
  v57(v56, v59, v47);
  v60 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8]);
  sub_2150A4D60();
  v61 = (v42 + *(v93 + 44));
  *v61 = sub_214F56C3C;
  v61[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78);
  sub_214F578EC(&qword_280C24258, v60);
  v62 = v97;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498]);
  v63 = v99;
  LOBYTE(v57) = sub_2150A4A80();
  (*(v98 + 8))(v62, v63);
  if ((v57 & 1) == 0)
  {
    v64 = sub_2150A5470();
    (*(v48 + 16))(v107);
    v64(&v111, 0);
    sub_2150A5410();
    v55 = 0;
  }

  v65 = v107;
  (*(v48 + 56))(v107, v55, 1, v41);
  v66 = v100;
  sub_214F57934(v65, v100);
  if ((*(v48 + 48))(v66, 1, v41) != 1)
  {
    v67 = v89;
    (*(v48 + 32))(v89, v66, v41);
    *&v111 = sub_2150A4330();
    *(&v111 + 1) = v68;
    sub_214D6E6C4();
    v69 = sub_2150A58C0();
    v71 = v70;

    if (!v71)
    {
      v69 = sub_2150A4330();
      v71 = v72;
    }

    (*(v48 + 8))(v67, v41);
    if (v69 == 0x7265646C6F66 && v71 == 0xE600000000000000)
    {

      goto LABEL_24;
    }

    v73 = sub_2150A6270();

    if (v73)
    {
LABEL_24:
      v74 = sub_214F56CC8();
      if (v75)
      {
        v76 = v74;
        v77 = v75;
        v78 = sub_2150A5EE0();
        v79 = v110;
        if (v78 == 1)
        {
          v80 = 1;
        }

        else
        {
          if (v78)
          {
            sub_214F302D4(v42, &qword_27CA41F70);
            (*(v109 + 8))(v108, v79);
            v86 = v88;
            *v88 = 0;
            *(v86 + 1) = v76;
            *(v86 + 2) = v77;
            return;
          }

          v80 = 0;
        }

        v82 = sub_214F56CC8();
        v84 = v83;
        sub_214F302D4(v42, &qword_27CA41F70);
        (*(v109 + 8))(v108, v79);
        if (v84)
        {
          v85 = v88;
          *v88 = v80;
          *(v85 + 1) = v82;
          *(v85 + 2) = v84;
          return;
        }

        goto LABEL_29;
      }
    }
  }

  sub_214F302D4(v42, &qword_27CA41F70);
  (*(v109 + 8))(v108, v110);
LABEL_29:
  v81 = v88;
  *v88 = 0;
  *(v81 + 1) = 0;
  *(v81 + 2) = 0;
}

void sub_214FF8C98(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2150A4340();
  v94 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v81 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A42C0();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v91 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v77 - v15;
  v95 = sub_2150A42D0();
  v84 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v86 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v77 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70);
  MEMORY[0x28223BE20](v83);
  v93 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v77 - v21;
  v97 = sub_2150A4360();
  v92 = *(v97 - 8);
  v23 = MEMORY[0x28223BE20](v97);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v96 = &v77 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v77 - v28;
  v105 = a1;
  v106 = a2;
  v103 = 58;
  v104 = 0xE100000000000000;
  sub_214F57844();
  sub_214F57898();
  sub_2150A4A00();
  if (v100)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    return;
  }

  v79 = v6;
  v80 = a3;
  v78 = v99;
  v30 = sub_2150A4D40();
  MEMORY[0x216061730](v30);

  v31 = sub_2150A4A90();

  v32 = ICIsNotesURLScheme(v31);

  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2150A3720();
  sub_214F302D4(v29, &qword_27CA41D40);
  v103 = a1;
  v104 = a2;
  v101 = 63;
  v102 = 0xE100000000000000;
  sub_2150A4A00();
  if (v100)
  {
    v33 = sub_214F56B68(v78, a1, a2);
    v34 = v95;
  }

  else
  {
    v34 = v95;
    if (v98 >> 14 < v78 >> 14)
    {
      __break(1u);
      return;
    }

    v33 = sub_2150A4D40();
  }

  v35 = MEMORY[0x216061730](v33);
  v37 = v36;

  v105 = v35;
  v106 = v37;

  v38 = sub_2150A4CD0();

  v39 = v97;
  v40 = v92;
  if (v38)
  {
    sub_214F56BB4(2);
  }

  v41 = v96;
  MEMORY[0x216060F30](v105, v106);
  v42 = sub_2150A42E0();
  v43 = 1;
  (*(*(v42 - 8) + 56))(v22, 1, 1, v42);
  sub_2150A4300();
  (*(v40 + 16))(v25, v41, v39);
  v44 = v86;
  sub_2150A42B0();
  v45 = *(v84 + 32);
  v46 = v85;
  v45(v85, v44, v34);
  v47 = v82;
  v45(v82, v46, v34);
  v45(v44, v47, v34);
  v48 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8]);
  v49 = v93;
  sub_2150A4D60();
  v50 = (v49 + *(v83 + 44));
  *v50 = sub_214F56C3C;
  v50[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78);
  sub_214F578EC(&qword_280C24258, v48);
  v51 = v87;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498]);
  v52 = v89;
  LOBYTE(v46) = sub_2150A4A80();
  (*(v88 + 8))(v51, v52);
  v53 = v94;
  v54 = v90;
  if ((v46 & 1) == 0)
  {
    v55 = sub_2150A5470();
    (*(v53 + 16))(v54);
    v55(&v98, 0);
    sub_2150A5410();
    v43 = 0;
  }

  v56 = v79;
  (*(v53 + 56))(v54, v43, 1, v79);
  v57 = v91;
  sub_214F57934(v54, v91);
  if ((*(v53 + 48))(v57, 1, v56) != 1)
  {
    v58 = v81;
    (*(v53 + 32))(v81, v57, v56);
    v98 = sub_2150A4330();
    v99 = v59;
    sub_214D6E6C4();
    v60 = sub_2150A58C0();
    v62 = v61;

    if (!v62)
    {
      v60 = sub_2150A4330();
      v62 = v63;
    }

    (*(v53 + 8))(v58, v79);
    if (v60 == 1702129518 && v62 == 0xE400000000000000)
    {

      goto LABEL_19;
    }

    v64 = sub_2150A6270();

    if (v64)
    {
LABEL_19:
      v65 = sub_214F56CC8();
      if (v66)
      {
        v67 = v65;
        v68 = v66;
        v69 = sub_2150A5EE0();
        if (v69 == 1)
        {
          v70 = 1;
        }

        else
        {
          if (v69)
          {
            sub_214F302D4(v49, &qword_27CA41F70);
            (*(v40 + 8))(v96, v97);
            v76 = v80;
            *v80 = 0;
            *(v76 + 1) = v67;
            *(v76 + 2) = v68;
            return;
          }

          v70 = 0;
        }

        v72 = sub_214F56CC8();
        v74 = v73;
        sub_214F302D4(v49, &qword_27CA41F70);
        (*(v40 + 8))(v96, v97);
        if (v74)
        {
          v75 = v80;
          *v80 = v70;
          *(v75 + 1) = v72;
          *(v75 + 2) = v74;
          return;
        }

        goto LABEL_24;
      }
    }
  }

  sub_214F302D4(v49, &qword_27CA41F70);
  (*(v40 + 8))(v96, v97);
LABEL_24:
  v71 = v80;
  *v80 = 0;
  *(v71 + 1) = 0;
  *(v71 + 2) = 0;
}

void sub_214FF9804(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2150A4340();
  v94 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A42C0();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v91 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v76 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60);
  MEMORY[0x28223BE20](v14 - 8);
  v84 = &v76 - v15;
  v86 = sub_2150A42D0();
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = &v76 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70);
  MEMORY[0x28223BE20](v82);
  v93 = &v76 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v76 - v21;
  v92 = sub_2150A4360();
  v96 = *(v92 - 8);
  v23 = MEMORY[0x28223BE20](v92);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v95 = &v76 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v76 - v28;
  v104 = a1;
  v105 = a2;
  v102 = 58;
  v103 = 0xE100000000000000;
  sub_214F57844();
  sub_214F57898();
  sub_2150A4A00();
  if (v99)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    return;
  }

  v78 = v6;
  v79 = a3;
  v77 = v98;
  v30 = sub_2150A4D40();
  MEMORY[0x216061730](v30);

  v31 = sub_2150A4A90();

  v32 = ICIsNotesURLScheme(v31);

  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2150A3720();
  sub_214F302D4(v29, &qword_27CA41D40);
  v102 = a1;
  v103 = a2;
  v100 = 63;
  v101 = 0xE100000000000000;
  sub_2150A4A00();
  if (v99)
  {
    v33 = sub_214F56B68(v77, a1, a2);
  }

  else
  {
    if (v97 >> 14 < v77 >> 14)
    {
      __break(1u);
      return;
    }

    v33 = sub_2150A4D40();
  }

  v34 = MEMORY[0x216061730](v33);
  v36 = v35;

  v104 = v34;
  v105 = v36;

  v37 = sub_2150A4CD0();

  v38 = v92;
  if (v37)
  {
    sub_214F56BB4(2);
  }

  v39 = v95;
  MEMORY[0x216060F30](v104, v105);
  v40 = sub_2150A42E0();
  v41 = 1;
  (*(*(v40 - 8) + 56))(v22, 1, 1, v40);
  sub_2150A4300();
  (*(v96 + 16))(v25, v39, v38);
  v42 = v85;
  sub_2150A42B0();
  v43 = *(v83 + 32);
  v44 = v84;
  v45 = v86;
  v43(v84, v42, v86);
  v46 = v81;
  v43(v81, v44, v45);
  v43(v42, v46, v45);
  v47 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8]);
  v48 = v93;
  sub_2150A4D60();
  v49 = (v48 + *(v82 + 44));
  *v49 = sub_214F56C3C;
  v49[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78);
  sub_214F578EC(&qword_280C24258, v47);
  v50 = v87;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498]);
  v51 = v89;
  LOBYTE(v44) = sub_2150A4A80();
  (*(v88 + 8))(v50, v51);
  v52 = v94;
  v53 = v90;
  if ((v44 & 1) == 0)
  {
    v54 = sub_2150A5470();
    (*(v52 + 16))(v53);
    v54(&v97, 0);
    sub_2150A5410();
    v41 = 0;
  }

  v55 = v78;
  (*(v52 + 56))(v53, v41, 1, v78);
  v56 = v91;
  sub_214F57934(v53, v91);
  if ((*(v52 + 48))(v56, 1, v55) != 1)
  {
    v57 = v80;
    (*(v52 + 32))(v80, v56, v55);
    v97 = sub_2150A4330();
    v98 = v58;
    sub_214D6E6C4();
    v59 = sub_2150A58C0();
    v61 = v60;

    if (!v61)
    {
      v59 = sub_2150A4330();
      v61 = v62;
    }

    (*(v52 + 8))(v57, v78);
    if (v59 == 0x656D686361747461 && v61 == 0xEA0000000000746ELL)
    {

      goto LABEL_19;
    }

    v63 = sub_2150A6270();

    if (v63)
    {
LABEL_19:
      v64 = sub_214F56CC8();
      if (v65)
      {
        v66 = v64;
        v67 = v65;
        v68 = sub_2150A5EE0();
        if (v68 == 1)
        {
          v69 = 1;
        }

        else
        {
          if (v68)
          {
            sub_214F302D4(v48, &qword_27CA41F70);
            (*(v96 + 8))(v95, v38);
            v75 = v79;
            *v79 = 0;
            *(v75 + 1) = v66;
            *(v75 + 2) = v67;
            return;
          }

          v69 = 0;
        }

        v71 = sub_214F56CC8();
        v73 = v72;
        sub_214F302D4(v48, &qword_27CA41F70);
        (*(v96 + 8))(v95, v38);
        if (v73)
        {
          v74 = v79;
          *v79 = v69;
          *(v74 + 1) = v71;
          *(v74 + 2) = v73;
          return;
        }

        goto LABEL_24;
      }
    }
  }

  sub_214F302D4(v48, &qword_27CA41F70);
  (*(v96 + 8))(v95, v38);
LABEL_24:
  v70 = v79;
  *v79 = 0;
  *(v70 + 1) = 0;
  *(v70 + 2) = 0;
}

void sub_214FFA378(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_2150A4340();
  v94 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v81 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A42C0();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D50);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v91 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v90 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F60);
  MEMORY[0x28223BE20](v14 - 8);
  v85 = &v77 - v15;
  v95 = sub_2150A42D0();
  v84 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v86 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F68);
  MEMORY[0x28223BE20](v17 - 8);
  v82 = &v77 - v18;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F70);
  MEMORY[0x28223BE20](v83);
  v93 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D48);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v77 - v21;
  v97 = sub_2150A4360();
  v92 = *(v97 - 8);
  v23 = MEMORY[0x28223BE20](v97);
  v25 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v96 = &v77 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v77 - v28;
  v105 = a1;
  v106 = a2;
  v103 = 58;
  v104 = 0xE100000000000000;
  sub_214F57844();
  sub_214F57898();
  sub_2150A4A00();
  if (v100)
  {
    *a3 = 0;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    return;
  }

  v79 = v6;
  v80 = a3;
  v78 = v99;
  v30 = sub_2150A4D40();
  MEMORY[0x216061730](v30);

  v31 = sub_2150A4A90();

  v32 = ICIsNotesURLScheme(v31);

  if ((v32 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2150A3720();
  sub_214F302D4(v29, &qword_27CA41D40);
  v103 = a1;
  v104 = a2;
  v101 = 63;
  v102 = 0xE100000000000000;
  sub_2150A4A00();
  if (v100)
  {
    v33 = sub_214F56B68(v78, a1, a2);
    v34 = v95;
  }

  else
  {
    v34 = v95;
    if (v98 >> 14 < v78 >> 14)
    {
      __break(1u);
      return;
    }

    v33 = sub_2150A4D40();
  }

  v35 = MEMORY[0x216061730](v33);
  v37 = v36;

  v105 = v35;
  v106 = v37;

  v38 = sub_2150A4CD0();

  v39 = v97;
  v40 = v92;
  if (v38)
  {
    sub_214F56BB4(2);
  }

  v41 = v96;
  MEMORY[0x216060F30](v105, v106);
  v42 = sub_2150A42E0();
  v43 = 1;
  (*(*(v42 - 8) + 56))(v22, 1, 1, v42);
  sub_2150A4300();
  (*(v40 + 16))(v25, v41, v39);
  v44 = v86;
  sub_2150A42B0();
  v45 = *(v84 + 32);
  v46 = v85;
  v45(v85, v44, v34);
  v47 = v82;
  v45(v82, v46, v34);
  v45(v44, v47, v34);
  v48 = MEMORY[0x277D854A8];
  sub_214F578EC(&qword_280C24260, MEMORY[0x277D854A8]);
  v49 = v93;
  sub_2150A4D60();
  v50 = (v49 + *(v83 + 44));
  *v50 = sub_214F56C3C;
  v50[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA41F78);
  sub_214F578EC(&qword_280C24258, v48);
  v51 = v87;
  sub_2150A5400();
  sub_214F578EC(&unk_280C24268, MEMORY[0x277D85498]);
  v52 = v89;
  LOBYTE(v46) = sub_2150A4A80();
  (*(v88 + 8))(v51, v52);
  v53 = v94;
  v54 = v90;
  if ((v46 & 1) == 0)
  {
    v55 = sub_2150A5470();
    (*(v53 + 16))(v54);
    v55(&v98, 0);
    sub_2150A5410();
    v43 = 0;
  }

  v56 = v79;
  (*(v53 + 56))(v54, v43, 1, v79);
  v57 = v91;
  sub_214F57934(v54, v91);
  if ((*(v53 + 48))(v57, 1, v56) != 1)
  {
    v58 = v81;
    (*(v53 + 32))(v81, v57, v56);
    v98 = sub_2150A4330();
    v99 = v59;
    sub_214D6E6C4();
    v60 = sub_2150A58C0();
    v62 = v61;

    if (!v62)
    {
      v60 = sub_2150A4330();
      v62 = v63;
    }

    (*(v53 + 8))(v58, v79);
    if (v60 == 0x656C626174 && v62 == 0xE500000000000000)
    {

      goto LABEL_19;
    }

    v64 = sub_2150A6270();

    if (v64)
    {
LABEL_19:
      v65 = sub_214F56CC8();
      if (v66)
      {
        v67 = v65;
        v68 = v66;
        v69 = sub_2150A5EE0();
        if (v69 == 1)
        {
          v70 = 1;
        }

        else
        {
          if (v69)
          {
            sub_214F302D4(v49, &qword_27CA41F70);
            (*(v40 + 8))(v96, v97);
            v76 = v80;
            *v80 = 0;
            *(v76 + 1) = v67;
            *(v76 + 2) = v68;
            return;
          }

          v70 = 0;
        }

        v72 = sub_214F56CC8();
        v74 = v73;
        sub_214F302D4(v49, &qword_27CA41F70);
        (*(v40 + 8))(v96, v97);
        if (v74)
        {
          v75 = v80;
          *v80 = v70;
          *(v75 + 1) = v72;
          *(v75 + 2) = v74;
          return;
        }

        goto LABEL_24;
      }
    }
  }

  sub_214F302D4(v49, &qword_27CA41F70);
  (*(v40 + 8))(v96, v97);
LABEL_24:
  v71 = v80;
  *v80 = 0;
  *(v71 + 1) = 0;
  *(v71 + 2) = 0;
}

uint64_t static ICAppURLUtilities.entityURI(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17[-v5 - 8];
  v7 = sub_2150A3750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_214F5EBF0(v17);
  sub_214F30070(v17[0], v18, v19, v6);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_214F302D4(v6, &qword_27CA41D40);
    v11 = 1;
  }

  else
  {
    v12 = *(v8 + 32);
    v12(v10, v6, v7);
    v13 = [a1 ownerRecordName];
    if (v13)
    {
      v14 = v13;
      v16 = sub_2150A4AD0();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA439C8);
      sub_2150A3120();
      *(swift_allocObject() + 16) = xmmword_2150C25D0;
      sub_2150A30F0();

      sub_2150A3710();
    }

    v12(a2, v10, v7);
    v11 = 0;
  }

  return (*(v8 + 56))(a2, v11, 1, v7);
}

uint64_t sub_214FFB348(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t))
{
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  LOBYTE(a4) = sub_214FFBE34(v8, a4);
  (*(v6 + 8))(v8, v5);
  return a4 & 1;
}

uint64_t static ICAppURLUtilities.objectIDURIRepresentation(forHTMLNoteEntityURI:context:)@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3650();
  sub_214FF8C98(v4, v5, v14);

  if (v15)
  {
    if (v14[0] == 2 || (v14[0] & 1) == 0)
    {
    }

    else
    {
      v6 = sub_2150A4A90();

      v7 = [a1 noteForIdentifier_];

      if (v7)
      {
        v8 = [v7 objectID];
        v9 = [v8 URIRepresentation];

        sub_2150A36F0();
        swift_unknownObjectRelease();

        v10 = 0;
        goto LABEL_8;
      }
    }
  }

  v10 = 1;
LABEL_8:
  v11 = sub_2150A3750();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, v10, 1, v11);
}

uint64_t sub_214FFB870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_2150A3750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  LOBYTE(a4) = a4(v8);
  (*(v6 + 8))(v8, v5);
  return a4 & 1;
}

uint64_t _sSo17ICAppURLUtilitiesC11NotesSharedE19isHTMLNoteEntityURIySb10Foundation3URLVFZ_0()
{
  v0 = sub_2150A3650();
  sub_214FF8C98(v0, v1, v5);

  result = v6;
  if (v6)
  {
    v3 = v5[0];

    if (v3 == 2)
    {
      return 0;
    }

    else if (v3)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    else
    {
      v4 = sub_2150A6270();

      return v4 & 1;
    }
  }

  return result;
}

uint64_t _sSo17ICAppURLUtilitiesC11NotesSharedE20modernNoteIdentifier13fromEntityURISSSg10Foundation3URLV_tFZ_0()
{
  v0 = sub_2150A3650();
  sub_214FF8C98(v0, v1, v3);

  if (!v5)
  {
    return 0;
  }

  if (v3[0] != 2 && (v3[0] & 1) == 0)
  {
    return v4;
  }

  return 0;
}

uint64_t _sSo17ICAppURLUtilitiesC11NotesSharedE21isHTMLFolderEntityURIySb10Foundation3URLVFZ_0()
{
  v0 = sub_2150A3650();
  sub_214FF7F8C(v0, v1, v5);

  if (v5[2])
  {
    if (LOBYTE(v5[0]) == 2)
    {

      v2 = 1;
    }

    else
    {
      if (v5[0])
      {
        v3 = sub_2150A6270();

        v2 = v3 ^ 1;
      }

      else
      {
        swift_bridgeObjectRelease_n();
        v2 = 0;
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_214FFBE34(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t))
{
  v3 = sub_2150A3650();
  a2(&v7, v3);

  result = v8;
  if (v8)
  {
    v5 = v7;

    if (v5 == 2)
    {
      return 0;
    }

    else if (v5)
    {
      v6 = sub_2150A6270();

      return v6 & 1;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }
  }

  return result;
}

id _sSo17ICAppURLUtilitiesC11NotesSharedE8objectID22forHTMLFolderEntityURI7contextSo015NSManagedObjectF0CSg10Foundation3URLVSg_So15ICLegacyContext_ptFZ_0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  v10 = sub_2150A3750();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  sub_214FE4C9C(a1, v9);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = v9;
LABEL_3:
    sub_214F302D4(v18, &qword_27CA41D40);
    return 0;
  }

  v34 = a2;
  v35 = v14;
  v19 = *(v11 + 32);
  v19(v16, v9, v10);
  v20 = sub_2150A3650();
  sub_214FF7F8C(v20, v21, v36);

  if (!v36[2])
  {
    goto LABEL_15;
  }

  if (LOBYTE(v36[0]) != 2)
  {
    if (v36[0])
    {

      v22 = sub_2150A4A90();

      v23 = [v34 folderForIdentifier_];

      if (v23)
      {
        v24 = [v23 objectID];

        swift_unknownObjectRelease();
      }

      else
      {

        v24 = 0;
      }

      (*(v11 + 8))(v16, v10);
      return v24;
    }

LABEL_15:
    (*(v11 + 8))(v16, v10);
    return 0;
  }

  sub_2150A3720();

  if (v17(v7, 1, v10) == 1)
  {

    (*(v11 + 8))(v16, v10);
    v18 = v7;
    goto LABEL_3;
  }

  v19(v35, v7, v10);
  v25 = [v34 managedObjectContext];
  if (v25 && (v26 = v25, v27 = [v25 persistentStoreCoordinator], v26, v27))
  {
    v28 = v35;
    v29 = sub_2150A36B0();
    v30 = [v27 managedObjectIDForURIRepresentation_];
  }

  else
  {

    v30 = 0;
    v28 = v35;
  }

  v32 = *(v11 + 8);
  v32(v28, v10);
  v32(v16, v10);
  return v30;
}

id _sSo17ICAppURLUtilitiesC11NotesSharedE8objectID24forModernFolderEntityURI11noteContextSo015NSManagedObjectF0CSg10Foundation3URLVSg_So06ICNoteM0CtFZ_0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19[-1] - v5;
  v7 = sub_2150A3750();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FE4C9C(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_214F302D4(v6, &qword_27CA41D40);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v12 = sub_2150A3650();
    sub_214FF7F8C(v12, v13, v19);

    if (v19[2])
    {
      if (LOBYTE(v19[0]) == 2 || (v19[0] & 1) != 0)
      {
        (*(v8 + 8))(v10, v7);

        return 0;
      }

      else
      {
        v14 = [a2 managedObjectContext];
        v15 = sub_2150A4A90();

        v16 = [objc_opt_self() folderWithIdentifier:v15 context:v14];

        if (v16)
        {
          v17 = [v16 objectID];
        }

        else
        {
          v17 = 0;
        }

        (*(v8 + 8))(v10, v7);
        return v17;
      }
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      return 0;
    }
  }
}

uint64_t sub_214FFC5B8()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FFC614()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_214FFC65C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_214FFC6D4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_214FFC72C(uint64_t a1)
{
  v2 = sub_214FFC944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FFC768(uint64_t a1)
{
  v2 = sub_214FFC944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FastSync.NoteContentMessage.recordBatchData.getter()
{
  v1 = *v0;
  sub_214FCA120(*v0, *(v0 + 8));
  return v1;
}

uint64_t FastSync.NoteContentMessage.init(recordBatchData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FastSync.NoteContentMessage.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA439D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FCA120(v7, v8);
  sub_214FFC944();
  sub_2150A65B0();
  v10 = v7;
  v11 = v8;
  sub_214FEED30();
  sub_2150A60A0();
  sub_214F7EDE4(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_214FFC944()
{
  result = qword_27CA439D8;
  if (!qword_27CA439D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439D8);
  }

  return result;
}

uint64_t FastSync.NoteContentMessage.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA439E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FFC944();
  sub_2150A6590();
  if (!v2)
  {
    sub_214FEED84();
    sub_2150A5FC0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_214FFCB08(uint64_t a1)
{
  *(a1 + 8) = sub_214FFCB38();
  result = sub_214FFCB8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214FFCB38()
{
  result = qword_27CA439E8;
  if (!qword_27CA439E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439E8);
  }

  return result;
}

unint64_t sub_214FFCB8C()
{
  result = qword_27CA439F0;
  if (!qword_27CA439F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439F0);
  }

  return result;
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

uint64_t sub_214FFCC2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214FFCC80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_214FFCCF0()
{
  result = qword_27CA439F8;
  if (!qword_27CA439F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA439F8);
  }

  return result;
}

unint64_t sub_214FFCD48()
{
  result = qword_27CA43A00;
  if (!qword_27CA43A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A00);
  }

  return result;
}

unint64_t sub_214FFCDA0()
{
  result = qword_27CA43A08;
  if (!qword_27CA43A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A08);
  }

  return result;
}

uint64_t sub_214FFCDF4()
{
  sub_2150A4BB0();
}

uint64_t PersistedActivityEvent.Activities.type.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v2, v6);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 3)
  {
    if (result > 1)
    {
      if (result == 2)
      {
        result = sub_214FFD174(v6);
        v8 = 2;
      }

      else
      {
        result = sub_214FFD174(v6);
        v8 = 4;
      }
    }

    else
    {
      if (!result)
      {
        result = sub_214FFD174(v6);
        *a1 = 0;
        return result;
      }

      result = sub_214FFD174(v6);
      v8 = 1;
    }
  }

  else if (result <= 5)
  {
    if (result == 4)
    {
      result = sub_214FFD174(v6);
      v8 = 5;
    }

    else
    {
      result = sub_214FFD174(v6);
      v8 = 6;
    }
  }

  else
  {
    if (result == 6)
    {
      *a1 = 7;
      v9 = sub_2150A3A00();
      return (*(*(v9 - 8) + 8))(v6, v9);
    }

    if (result == 7)
    {
      result = sub_214FFD174(v6);
      v8 = 8;
    }

    else
    {
      v8 = 3;
    }
  }

  *a1 = v8;
  return result;
}

uint64_t type metadata accessor for PersistedActivityEvent.Activities()
{
  result = qword_280C24438;
  if (!qword_280C24438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214FFD110(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistedActivityEvent.Activities();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FFD174(uint64_t a1)
{
  v2 = type metadata accessor for PersistedActivityEvent.Activities();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PersistedActivityEvent.Activities.participants.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_214FFD110(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    sub_214FFD174(v3);
  }

  else if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      return *v3;
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 4) < 2)
    {
      v6 = v3[2];
      v5 = v3[3];
      v10 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720);
      result = swift_allocObject();
      v8 = v10;
      *(result + 16) = xmmword_2150C25D0;
      *(result + 32) = v8;
      *(result + 48) = v6;
      *(result + 56) = v5;
      return result;
    }

    v9 = sub_2150A3A00();
    (*(*(v9 - 8) + 8))(v3, v9);
  }

  return MEMORY[0x277D84F90];
}

uint64_t PersistedActivityEvent.Activities.Types.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  v4 = 9;
  if (v2 < 9)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t PersistedActivityEvent.Activities.Types.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x657461657263;
    v7 = 2037411683;
    if (v1 != 2)
    {
      v7 = 0x656D616E6572;
    }

    if (*v0)
    {
      v6 = 1702260589;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000011;
    v3 = 0xD000000000000013;
    if (v1 != 7)
    {
      v3 = 0x6E6F69746E656DLL;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x6574656C6564;
    if (v1 != 4)
    {
      v4 = 0x6974726150646461;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_214FFD498(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x657261506D6F7266;
    v6 = 0x746E657261506E69;
    if (a1 != 2)
    {
      v6 = 0x656E6F447369;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7069636974726170;
    v2 = 0x746E657261506F74;
    if (a1 != 7)
    {
      v2 = 1701869940;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6C616E696769726FLL;
    if (a1 != 4)
    {
      v3 = 0x7069636974726170;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_214FFD5CC()
{
  sub_2150A64B0();
  sub_214FFCDF4();
  return sub_2150A64E0();
}

uint64_t sub_214FFD61C()
{
  sub_2150A64B0();
  sub_214FFCDF4();
  return sub_2150A64E0();
}

unint64_t sub_214FFD66C@<X0>(unint64_t *a1@<X8>)
{
  result = PersistedActivityEvent.Activities.Types.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_214FFD74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_215000E24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214FFD780(uint64_t a1)
{
  v2 = sub_215000580();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FFD7BC(uint64_t a1)
{
  v2 = sub_215000580();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersistedActivityEvent.Activities.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A10);
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v4 = &v70 - v3;
  v75 = type metadata accessor for PersistedActivityEvent.Activities();
  v5 = MEMORY[0x28223BE20](v75);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v70 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v77 = &v70 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v70 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v70 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v70 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v70 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v70 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v70 - v25;
  v27 = a1[3];
  v83 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_215000580();
  v80 = v4;
  v28 = v82;
  sub_2150A6590();
  if (v28)
  {
    return __swift_destroy_boxed_opaque_existential_0(v83);
  }

  v82 = v15;
  v29 = v76;
  v72 = v21;
  v30 = v77;
  v31 = v78;
  v71 = v18;
  v32 = v79;
  LOBYTE(v86) = 8;
  sub_2150005D4();
  v33 = v80;
  v34 = v81;
  sub_2150A5FC0();
  v70 = 0;
  if (v88 > 3u)
  {
    if (v88 <= 5u)
    {
      v63 = v26;
      if (v88 == 4)
      {
        LOBYTE(v86) = 0;
        sub_214F848DC();
        v44 = v70;
        sub_2150A5FC0();
        if (v44)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v33, v34);
        v45 = v89;
        v46 = v90;
        v47 = v82;
        *v82 = v88;
        *(v47 + 1) = v45;
        *(v47 + 2) = v46;
        swift_storeEnumTagMultiPayload();
        v69 = v47;
      }

      else
      {
        LOBYTE(v86) = 5;
        sub_214F84930();
        v55 = v70;
        sub_2150A5FC0();
        if (v55)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v33, v34);
        v56 = v89;
        *v29 = v88;
        *(v29 + 1) = v56;
        *(v29 + 1) = v90;
        swift_storeEnumTagMultiPayload();
        v69 = v29;
      }
    }

    else
    {
      v82 = v26;
      if (v88 == 6)
      {
        LOBYTE(v86) = 5;
        sub_214F84930();
        v48 = v70;
        sub_2150A5FC0();
        if (v48)
        {
          goto LABEL_3;
        }

        (*(v32 + 8))(v33, v34);
        v49 = v89;
        *v30 = v88;
        *(v30 + 1) = v49;
        *(v30 + 1) = v90;
        swift_storeEnumTagMultiPayload();
        v69 = v30;
      }

      else
      {
        if (v88 == 7)
        {
          sub_2150A3A00();
          LOBYTE(v88) = 1;
          sub_215000818(&qword_27CA43008, MEMORY[0x277CC95F0]);
          v36 = v70;
          sub_2150A5FC0();
          if (!v36)
          {
            LOBYTE(v88) = 3;
            v60 = sub_2150A5F90();
            v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20) + 48);
            (*(v32 + 8))(v33, v34);
            v62 = v73;
            v73[v61] = v60 & 1;
            swift_storeEnumTagMultiPayload();
            v63 = v82;
            sub_214F84734(v62, v82);
            v64 = v74;
LABEL_34:
            sub_214F84734(v63, v64);
            return __swift_destroy_boxed_opaque_existential_0(v83);
          }

          goto LABEL_3;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA421A0);
        LOBYTE(v86) = 6;
        sub_21500067C(&qword_27CA43A28, sub_214F84930);
        v54 = v70;
        sub_2150A5FC0();
        if (v54)
        {
LABEL_3:
          (*(v32 + 8))(v33, v34);
          return __swift_destroy_boxed_opaque_existential_0(v83);
        }

        (*(v32 + 8))(v33, v34);
        *v31 = v88;
        swift_storeEnumTagMultiPayload();
        v69 = v31;
      }

      v63 = v82;
    }

    v57 = v63;
LABEL_33:
    sub_214F84734(v69, v57);
    v64 = v74;
    goto LABEL_34;
  }

  if (v88 > 1u)
  {
    v64 = v74;
    if (v88 != 2)
    {
      (*(v32 + 8))(v33, v34);
      v63 = v26;
      swift_storeEnumTagMultiPayload();
      goto LABEL_34;
    }

    LOBYTE(v86) = 4;
    sub_214F848DC();
    v40 = v70;
    sub_2150A5FC0();
    if (v40)
    {
      goto LABEL_3;
    }

    v41 = v88;
    v43 = v89;
    v42 = v90;
    LOBYTE(v84) = 0;
    sub_2150A5F60();
    v77 = v86;
    v78 = v43;
    v76 = *(&v86 + 1);
    v82 = v87;
    v91 = 7;
    sub_2150A5F60();
    (*(v32 + 8))(v33, v34);
    v65 = v85;
    v66 = v71;
    *v71 = v41;
    v67 = v77;
    *(v66 + 1) = v78;
    *(v66 + 2) = v42;
    v68 = v76;
    *(v66 + 3) = v67;
    *(v66 + 4) = v68;
    *(v66 + 5) = v82;
    *(v66 + 3) = v84;
    *(v66 + 8) = v65;
    swift_storeEnumTagMultiPayload();
    v69 = v66;
LABEL_35:
    v63 = v26;
    v57 = v26;
    goto LABEL_33;
  }

  if (v88)
  {
    LOBYTE(v86) = 0;
    sub_214F848DC();
    v50 = v70;
    sub_2150A5F60();
    if (v50)
    {
      goto LABEL_3;
    }

    v51 = v88;
    v52 = v89;
    v53 = v90;
    LOBYTE(v84) = 7;
    sub_2150A5F60();
    (*(v32 + 8))(v33, v34);
    v58 = v87;
    v59 = v72;
    *v72 = v51;
    v59[1] = v52;
    v59[2] = v53;
    *(v59 + 3) = v86;
    v59[5] = v58;
    swift_storeEnumTagMultiPayload();
    v69 = v59;
    goto LABEL_35;
  }

  LOBYTE(v86) = 2;
  sub_214F848DC();
  v37 = v70;
  sub_2150A5FC0();
  (*(v32 + 8))(v33, v34);
  v64 = v74;
  if (!v37)
  {
    v38 = v89;
    v39 = v90;
    *v24 = v88;
    *(v24 + 1) = v38;
    *(v24 + 2) = v39;
    swift_storeEnumTagMultiPayload();
    v63 = v26;
    sub_214F84734(v24, v26);
    goto LABEL_34;
  }

  return __swift_destroy_boxed_opaque_existential_0(v83);
}

uint64_t PersistedActivityEvent.Activities.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2150A3A00();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v42);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A30);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_215000580();
  sub_2150A65B0();
  v12 = v2;
  PersistedActivityEvent.Activities.type.getter(&v46);
  v49 = 8;
  sub_215000628();
  v13 = v45;
  sub_2150A60A0();
  if (v13)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = v41;
  v17 = v43;
  v16 = v44;
  v45 = v9;
  sub_214FFD110(v12, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v34 = v11;
        v36 = *(v7 + 2);
        v35 = *(v7 + 3);
        v37 = *(v7 + 5);
        v44 = *(v7 + 4);
        v46 = *v7;
        v47 = v36;
        v49 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A48);
        sub_2150006F4();
        sub_2150A60A0();

        *&v46 = v35;
        *(&v46 + 1) = v44;
        v47 = v37;
        v49 = 7;
        sub_2150A60A0();
        (*(v45 + 8))(v34, v8);
      }

      else
      {
        v19 = *(v7 + 1);
        v20 = *(v7 + 2);
        LOBYTE(v46) = *v7;
        *(&v46 + 1) = v19;
        v47 = v20;
        v49 = 2;
        sub_214F847EC();
        sub_2150A60A0();
        (*(v45 + 8))(v11, v8);
      }
    }

    if (EnumCaseMultiPayload != 2)
    {
      v38 = *(v7 + 1);
      v39 = *(v7 + 2);
      LOBYTE(v46) = *v7;
      *(&v46 + 1) = v38;
      v47 = v39;
      v49 = 0;
      sub_214F847EC();
      goto LABEL_18;
    }

    v21 = *v7;
    v22 = *(v7 + 1);
    v23 = *(v7 + 2);
    v24 = *(v7 + 3);
    v43 = *(v7 + 4);
    v44 = v24;
    v25 = v11;
    v27 = *(v7 + 5);
    v26 = *(v7 + 6);
    v28 = *(v7 + 7);
    v29 = *(v7 + 8);
    LOBYTE(v46) = v21;
    *(&v46 + 1) = v22;
    v47 = v23;
    v49 = 4;
    sub_214F847EC();
    sub_2150A60A0();
    v40 = v28;
    v41 = v26;
    v42 = v29;

    *&v46 = v44;
    *(&v46 + 1) = v43;
    v47 = v27;
    v49 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A48);
    sub_2150006F4();
    sub_2150A60A0();

    *&v46 = v41;
    *(&v46 + 1) = v40;
    v47 = v42;
    v49 = 7;
    sub_2150A60A0();
    (*(v45 + 8))(v25, v8);
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        LODWORD(v42) = v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20) + 48)];
        (*(v17 + 32))(v15, v7, v16);
        LOBYTE(v46) = 1;
        sub_215000818(&qword_280C241B8, MEMORY[0x277CC95F0]);
        sub_2150A60A0();
        LOBYTE(v46) = 3;
        sub_2150A6070();
        (*(v17 + 8))(v15, v16);
      }

      else if (EnumCaseMultiPayload == 7)
      {
        *&v46 = *v7;
        v49 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA421A0);
        sub_21500067C(&qword_27CA43A40, sub_214F84840);
LABEL_18:
        sub_2150A60A0();
        (*(v45 + 8))(v11, v8);
      }

      return (*(v45 + 8))(v11, v8);
    }

    v30 = v11;
    v31 = *(v7 + 1);
    v32 = *(v7 + 2);
    v33 = *(v7 + 3);
    *&v46 = *v7;
    *(&v46 + 1) = v31;
    v47 = v32;
    v48 = v33;
    v49 = 5;
    sub_214F84840();
    sub_2150A60A0();
    (*(v45 + 8))(v30, v8);
  }
}

uint64_t PersistedActivityEvent.Activities.isSharedRootActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  sub_214FFD110(v0, &v15 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
LABEL_7:
    sub_214FFD174(v6);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((EnumCaseMultiPayload - 4) < 2)
  {
    v8 = v6;
LABEL_25:
    sub_214FFD174(v8);
    return 1;
  }

  v13 = sub_2150A3A00();
  (*(*(v13 - 8) + 8))(v6, v13);
LABEL_8:
  sub_214FFD110(v0, v4);
  v9 = swift_getEnumCaseMultiPayload();
  if (v9 > 3)
  {
    if (v9 > 5)
    {
      if (v9 == 6)
      {
        v14 = sub_2150A3A00();
        (*(*(v14 - 8) + 8))(v4, v14);
        return 0;
      }

      if (v9 != 7)
      {
        return 0;
      }
    }

    goto LABEL_20;
  }

  if (v9 <= 1)
  {
    if (!v9)
    {
LABEL_20:
      sub_214FFD174(v4);
      return 0;
    }

    v10 = *(v4 + 5);

    if (!v10)
    {
      return 1;
    }

LABEL_19:

    return 0;
  }

  if (v9 != 2)
  {
    v8 = v4;
    goto LABEL_25;
  }

  v11 = *(v4 + 8);

  if (v11)
  {
    goto LABEL_19;
  }

  return 1;
}

uint64_t PersistedActivityEvent.Activities.isParticipantActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      return 0;
    }

LABEL_7:
    sub_214FFD174(v3);
    return 0;
  }

  if ((EnumCaseMultiPayload - 4) < 2)
  {
    sub_214FFD174(v3);
    return 1;
  }

  v6 = sub_2150A3A00();
  (*(*(v6 - 8) + 8))(v3, v6);
  return 0;
}

uint64_t PersistedActivityEvent.Activities.isRemoveActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v8 = sub_2150A3A00();
        (*(*(v8 - 8) + 8))(v3, v8);
        return 0;
      }

      if (EnumCaseMultiPayload != 7)
      {
        return 0;
      }
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
LABEL_13:
      sub_214FFD174(v3);
      return 0;
    }

    v5 = *(v3 + 5);

    if (!v5)
    {
      return 1;
    }

LABEL_12:

    return 0;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_214FFD174(v3);
    return 1;
  }

  v6 = *(v3 + 8);

  if (v6)
  {
    goto LABEL_12;
  }

  return 1;
}

uint64_t PersistedActivityEvent.Activities.isAddActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v7 = sub_2150A3A00();
        (*(*(v7 - 8) + 8))(v3, v7);
        return 0;
      }

      if (EnumCaseMultiPayload != 7)
      {
        return 0;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_12:
      sub_214FFD174(v3);
      return 0;
    }

    v6 = *(v3 + 5);

    if (!v6)
    {
      return 1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_214FFD174(v3);
      return 1;
    }

    v8 = *(v3 + 2);

    if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t PersistedActivityEvent.Activities.isNoteActivity.getter()
{
  v1 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FFD110(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 6)
  {
    sub_214FFD174(v3);
    return 0;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v6 = sub_2150A3A00();
    (*(*(v6 - 8) + 8))(v3, v6);
    return 1;
  }

  if (EnumCaseMultiPayload != 7)
  {
    return 0;
  }

  sub_214FFD174(v3);
  return 1;
}

uint64_t PersistedActivityEvent.Activities.hash(into:)()
{
  v1 = v0;
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PersistedActivityEvent.Activities();
  MEMORY[0x28223BE20](v6);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_214FFD110(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v17 = 5;
      }

      else
      {
        v17 = 6;
      }

      MEMORY[0x216063080](v17);
      sub_2150A4BB0();
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20);
        (*(v3 + 32))(v5, v8, v2);
        MEMORY[0x216063080](7);
        sub_215000818(&qword_280C241B0, MEMORY[0x277CC95F0]);
        sub_2150A49B0();
        sub_2150A64D0();
        return (*(v3 + 8))(v5, v2);
      }

      if (EnumCaseMultiPayload != 7)
      {
        return MEMORY[0x216063080](3);
      }

      v10 = *v8;
      MEMORY[0x216063080](8);
      MEMORY[0x216063080](*(v10 + 16));
      v11 = *(v10 + 16);
      if (v11)
      {
        v12 = v10 + 56;
        do
        {
          v12 += 32;

          sub_2150A4BB0();

          --v11;
        }

        while (v11);
      }
    }
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v13 = 4;
      goto LABEL_22;
    }

    v15 = v8[5];
    v14 = v8[6];
    v21[1] = v8[4];
    v21[2] = v14;
    v16 = v8[8];
    v21[3] = v8[7];
    MEMORY[0x216063080](2);
    sub_2150A4BB0();

    sub_2150A4BB0();

    sub_2150A64D0();
    if (v15)
    {
      sub_2150A4BB0();

      sub_2150A4BB0();
    }

    if (v16)
    {
      goto LABEL_29;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v13 = 0;
LABEL_22:
      MEMORY[0x216063080](v13);
      sub_2150A4BB0();

      sub_2150A4BB0();
    }

    v19 = v8[2];
    v20 = v8[5];
    MEMORY[0x216063080](1);
    if (v19)
    {
      sub_2150A64D0();
      sub_2150A4BB0();

      sub_2150A4BB0();

      if (!v20)
      {
        return sub_2150A64D0();
      }

LABEL_29:
      sub_2150A64D0();
      sub_2150A4BB0();

      sub_2150A4BB0();
    }

    sub_2150A64D0();
    if (v20)
    {
      goto LABEL_29;
    }
  }

  return sub_2150A64D0();
}

uint64_t PersistedActivityEvent.Activities.hashValue.getter()
{
  sub_2150A64B0();
  PersistedActivityEvent.Activities.hash(into:)();
  return sub_2150A64E0();
}

uint64_t sub_214FFF6C4()
{
  sub_2150A64B0();
  PersistedActivityEvent.Activities.hash(into:)();
  return sub_2150A64E0();
}

uint64_t sub_214FFF708()
{
  sub_2150A64B0();
  PersistedActivityEvent.Activities.hash(into:)();
  return sub_2150A64E0();
}

uint64_t _s11NotesShared22PersistedActivityEventV10ActivitiesO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v3 = sub_2150A3A00();
  v135 = *(v3 - 8);
  v136 = v3;
  MEMORY[0x28223BE20](v3);
  v133 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PersistedActivityEvent.Activities();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v128 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v134 = &v128 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v128 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v128 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v128 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v128 - v21);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = (&v128 - v24);
  MEMORY[0x28223BE20](v23);
  v27 = &v128 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A88);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v31 = (&v128 + *(v29 + 56) - v30);
  v32 = a1;
  v33 = &v128 - v30;
  sub_214FFD110(v32, &v128 - v30);
  sub_214FFD110(v137, v31);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_214FFD110(v33, v27);
        v38 = *(v27 + 1);
        v37 = *(v27 + 2);
        if (!swift_getEnumCaseMultiPayload())
        {
          v39 = *v27;
LABEL_65:
          v89 = *v31;
          v91 = v31[1];
          v90 = v31[2];
          if (v39)
          {
            v92 = 1702129518;
          }

          else
          {
            v92 = 0x7265646C6F66;
          }

          if (v39)
          {
            v93 = 0xE400000000000000;
          }

          else
          {
            v93 = 0xE600000000000000;
          }

          if (v89)
          {
            v94 = 1702129518;
          }

          else
          {
            v94 = 0x7265646C6F66;
          }

          if (v89)
          {
            v95 = 0xE400000000000000;
          }

          else
          {
            v95 = 0xE600000000000000;
          }

          if (v92 == v94 && v93 == v95)
          {
          }

          else
          {
            v97 = sub_2150A6270();

            if ((v97 & 1) == 0)
            {

              goto LABEL_104;
            }
          }

          if (v38 != v91 || v37 != v90)
          {
            v100 = sub_2150A6270();

            if ((v100 & 1) == 0)
            {
              goto LABEL_104;
            }

LABEL_100:
            v98 = v33;
LABEL_101:
            sub_214FFD174(v98);
            v36 = 1;
            return v36 & 1;
          }

LABEL_99:

          goto LABEL_100;
        }

        goto LABEL_87;
      }

      sub_214FFD110(v33, v25);
      v72 = *v25;
      v73 = v25[1];
      v75 = v25[2];
      v74 = v25[3];
      v76 = v25[4];
      v77 = v25[5];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
LABEL_86:

        goto LABEL_87;
      }

      v137 = v76;
      v78 = v33;
      v80 = v31[2];
      v79 = v31[3];
      v81 = v31[5];
      if (v75)
      {
        if (v80)
        {
          v134 = v31[4];
          v135 = v79;
          v82 = *v31;
          v136 = v31[1];
          if (v72)
          {
            v83 = 1702129518;
          }

          else
          {
            v83 = 0x7265646C6F66;
          }

          if (v72)
          {
            v84 = 0xE400000000000000;
          }

          else
          {
            v84 = 0xE600000000000000;
          }

          if (v82)
          {
            v85 = 1702129518;
          }

          else
          {
            v85 = 0x7265646C6F66;
          }

          if (v82)
          {
            v86 = 0xE400000000000000;
          }

          else
          {
            v86 = 0xE600000000000000;
          }

          if (v83 == v85 && v84 == v86)
          {
            swift_bridgeObjectRetain_n();
          }

          else
          {
            v88 = sub_2150A6270();
            swift_bridgeObjectRetain_n();

            if ((v88 & 1) == 0)
            {
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
LABEL_132:

              sub_214FFD174(v78);
              goto LABEL_89;
            }
          }

          if (v73 == v136 && v75 == v80)
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          else
          {
            v110 = sub_2150A6270();
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            if ((v110 & 1) == 0)
            {
              goto LABEL_132;
            }
          }

LABEL_142:
          v111 = v78;
          if (v77)
          {
            if (v81)
            {
              if (v74)
              {
                v112 = 1702129518;
              }

              else
              {
                v112 = 0x7265646C6F66;
              }

              if (v74)
              {
                v113 = 0xE400000000000000;
              }

              else
              {
                v113 = 0xE600000000000000;
              }

              if (v135)
              {
                v114 = 1702129518;
              }

              else
              {
                v114 = 0x7265646C6F66;
              }

              if (v135)
              {
                v115 = 0xE400000000000000;
              }

              else
              {
                v115 = 0xE600000000000000;
              }

              if (v112 == v114 && v113 == v115)
              {
                swift_bridgeObjectRetain_n();
              }

              else
              {
                v117 = sub_2150A6270();
                swift_bridgeObjectRetain_n();

                if ((v117 & 1) == 0)
                {
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  goto LABEL_164;
                }
              }

              if (v137 == v134 && v77 == v81)
              {
                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                v98 = v111;
                goto LABEL_101;
              }

              v125 = sub_2150A6270();
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              if ((v125 & 1) == 0)
              {
LABEL_164:
                sub_214FFD174(v111);
                goto LABEL_89;
              }

LABEL_203:
              v98 = v111;
              goto LABEL_101;
            }
          }

          else if (!v81)
          {

            goto LABEL_203;
          }

          goto LABEL_164;
        }
      }

      else if (!v80)
      {
        v134 = v31[4];
        v135 = v79;

        goto LABEL_142;
      }

      goto LABEL_132;
    }

    if (EnumCaseMultiPayload != 2)
    {
      sub_214FFD110(v33, v19);
      v38 = *(v19 + 1);
      v37 = *(v19 + 2);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v39 = *v19;
        goto LABEL_65;
      }

LABEL_87:

      goto LABEL_88;
    }

    v137 = v33;
    sub_214FFD110(v33, v22);
    v40 = v22[1];
    v41 = v22[2];
    v42 = v22[4];
    v136 = v22[3];
    v43 = v22[5];
    v44 = v22[6];
    v45 = v22[7];
    v46 = v22[8];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      v33 = v137;
      goto LABEL_88;
    }

    v133 = v42;
    v134 = v44;
    v130 = v45;
    v47 = v46;
    v48 = *v22;
    v49 = *v31;
    v51 = v31[1];
    v50 = v31[2];
    v132 = v31[3];
    v52 = v31[5];
    v131 = v31[4];
    v129 = v31[6];
    v128 = v31[7];
    v135 = v31[8];
    if (v48)
    {
      v53 = 1702129518;
    }

    else
    {
      v53 = 0x7265646C6F66;
    }

    if (v48)
    {
      v54 = 0xE400000000000000;
    }

    else
    {
      v54 = 0xE600000000000000;
    }

    if (v49)
    {
      v55 = 1702129518;
    }

    else
    {
      v55 = 0x7265646C6F66;
    }

    if (v49)
    {
      v56 = 0xE400000000000000;
    }

    else
    {
      v56 = 0xE600000000000000;
    }

    if (v53 == v55 && v54 == v56)
    {
    }

    else
    {
      v58 = sub_2150A6270();

      if ((v58 & 1) == 0)
      {

LABEL_127:

        sub_214FFD174(v137);
        goto LABEL_89;
      }
    }

    if (v40 == v51 && v41 == v50)
    {

      v101 = v47;
      v102 = v134;
    }

    else
    {
      v103 = sub_2150A6270();

      v101 = v47;
      v102 = v134;
      if ((v103 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

    if (v43)
    {
      if (v52)
      {
        if (v136)
        {
          v104 = 1702129518;
        }

        else
        {
          v104 = 0x7265646C6F66;
        }

        if (v136)
        {
          v105 = 0xE400000000000000;
        }

        else
        {
          v105 = 0xE600000000000000;
        }

        if (v132)
        {
          v106 = 1702129518;
        }

        else
        {
          v106 = 0x7265646C6F66;
        }

        if (v132)
        {
          v107 = 0xE400000000000000;
        }

        else
        {
          v107 = 0xE600000000000000;
        }

        if (v104 == v106 && v105 == v107)
        {
          swift_bridgeObjectRetain_n();

          v108 = v137;
          v109 = v133;
        }

        else
        {
          v118 = sub_2150A6270();
          swift_bridgeObjectRetain_n();

          v108 = v137;
          v109 = v133;
          if ((v118 & 1) == 0)
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            goto LABEL_198;
          }
        }

        if (v109 == v131 && v43 == v52)
        {
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
        }

        else
        {
          v119 = sub_2150A6270();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if ((v119 & 1) == 0)
          {
            goto LABEL_198;
          }
        }

        goto LABEL_174;
      }
    }

    else if (!v52)
    {

      v108 = v137;
LABEL_174:
      v120 = v135;
      if (v101)
      {
        if (v135)
        {
          if (v102)
          {
            v121 = 1702129518;
          }

          else
          {
            v121 = 0x7265646C6F66;
          }

          if (v102)
          {
            v122 = 0xE400000000000000;
          }

          else
          {
            v122 = 0xE600000000000000;
          }

          if (v129)
          {
            v123 = 1702129518;
          }

          else
          {
            v123 = 0x7265646C6F66;
          }

          if (v129)
          {
            v124 = 0xE400000000000000;
          }

          else
          {
            v124 = 0xE600000000000000;
          }

          if (v121 == v123 && v122 == v124)
          {
            swift_bridgeObjectRetain_n();
          }

          else
          {
            v126 = sub_2150A6270();
            swift_bridgeObjectRetain_n();

            if ((v126 & 1) == 0)
            {
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              goto LABEL_199;
            }
          }

          if (v130 == v128 && v101 == v120)
          {
            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
            v98 = v108;
            goto LABEL_101;
          }

          v127 = sub_2150A6270();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          if (v127)
          {
LABEL_211:
            v98 = v108;
            goto LABEL_101;
          }

LABEL_199:
          sub_214FFD174(v108);
          goto LABEL_89;
        }
      }

      else if (!v135)
      {

        goto LABEL_211;
      }

LABEL_198:

      goto LABEL_199;
    }

    v108 = v137;

    goto LABEL_198;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      sub_214FFD110(v33, v16);
      v60 = *v16;
      v59 = v16[1];
      if (swift_getEnumCaseMultiPayload() == 4)
      {
LABEL_33:
        if (v60 != *v31 || v59 != v31[1])
        {
          v62 = sub_2150A6270();

          if ((v62 & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_100;
        }

        goto LABEL_99;
      }
    }

    else
    {
      sub_214FFD110(v33, v13);
      v60 = *v13;
      v59 = v13[1];
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_86;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v63 = v134;
    sub_214FFD110(v33, v134);
    v64 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B20) + 48);
    v65 = *(v63 + v64);
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      (*(v135 + 8))(v63, v136);
      goto LABEL_88;
    }

    v66 = *(v31 + v64);
    v68 = v135;
    v67 = v136;
    v69 = v133;
    (*(v135 + 32))(v133, v31, v136);
    v70 = sub_2150A39B0();
    v71 = *(v68 + 8);
    v71(v69, v67);
    v71(v63, v67);
    if (v70)
    {
      sub_214FFD174(v33);
      v36 = v65 ^ v66 ^ 1;
      return v36 & 1;
    }

LABEL_104:
    sub_214FFD174(v33);
    goto LABEL_89;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() != 8)
    {
LABEL_88:
      sub_21500115C(v33);
LABEL_89:
      v36 = 0;
      return v36 & 1;
    }

    goto LABEL_100;
  }

  sub_214FFD110(v33, v8);
  v35 = *v8;
  if (swift_getEnumCaseMultiPayload() != 7)
  {
    goto LABEL_87;
  }

  v36 = sub_214F8F7B0(v35, *v31);

  sub_214FFD174(v33);
  return v36 & 1;
}

unint64_t sub_215000580()
{
  result = qword_27CA43A18;
  if (!qword_27CA43A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A18);
  }

  return result;
}

unint64_t sub_2150005D4()
{
  result = qword_27CA43A20;
  if (!qword_27CA43A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A20);
  }

  return result;
}

unint64_t sub_215000628()
{
  result = qword_27CA43A38;
  if (!qword_27CA43A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A38);
  }

  return result;
}

uint64_t sub_21500067C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA421A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2150006F4()
{
  result = qword_27CA43A50;
  if (!qword_27CA43A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43A48);
    sub_214F847EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A50);
  }

  return result;
}

unint64_t sub_21500077C()
{
  result = qword_27CA43A58;
  if (!qword_27CA43A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A58);
  }

  return result;
}

uint64_t sub_215000818(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_215000860()
{
  sub_215000938();
  if (v0 <= 0x3F)
  {
    sub_215000968();
    if (v1 <= 0x3F)
    {
      sub_2150009DC();
      if (v2 <= 0x3F)
      {
        sub_215000A58();
        if (v3 <= 0x3F)
        {
          sub_215000A88();
          if (v4 <= 0x3F)
          {
            sub_215000AB8();
            if (v5 <= 0x3F)
            {
              sub_215000B24();
              if (v6 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_215000938()
{
  result = qword_280C24628;
  if (!qword_280C24628)
  {
    result = &type metadata for ActivityEventObject;
    atomic_store(&type metadata for ActivityEventObject, &qword_280C24628);
  }

  return result;
}

void sub_215000968()
{
  if (!qword_280C24448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43A48);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C24448);
    }
  }
}

void sub_2150009DC()
{
  if (!qword_280C24450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43A48);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_280C24450);
    }
  }
}

ValueMetadata *sub_215000A58()
{
  result = qword_280C24458;
  if (!qword_280C24458)
  {
    result = &type metadata for ActivityEventObject;
    atomic_store(&type metadata for ActivityEventObject, &qword_280C24458);
  }

  return result;
}

ValueMetadata *sub_215000A88()
{
  result = qword_280C24300[0];
  if (!qword_280C24300[0])
  {
    result = &type metadata for ActivityEventParticipant;
    atomic_store(&type metadata for ActivityEventParticipant, qword_280C24300);
  }

  return result;
}

void sub_215000AB8()
{
  if (!qword_280C24460)
  {
    sub_2150A3A00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_280C24460);
    }
  }
}

void sub_215000B24()
{
  if (!qword_280C24250)
  {
    sub_215000B6C();
    if (!v1)
    {
      atomic_store(v0, &qword_280C24250);
    }
  }
}

void sub_215000B6C()
{
  if (!qword_280C24248)
  {
    v0 = sub_2150A4FD0();
    if (!v1)
    {
      atomic_store(v0, &qword_280C24248);
    }
  }
}

uint64_t sub_215000BCC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_215000C5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_215000D20()
{
  result = qword_27CA43A68;
  if (!qword_27CA43A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A68);
  }

  return result;
}

unint64_t sub_215000D78()
{
  result = qword_27CA43A70;
  if (!qword_27CA43A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A70);
  }

  return result;
}

unint64_t sub_215000DD0()
{
  result = qword_27CA43A78;
  if (!qword_27CA43A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A78);
  }

  return result;
}

uint64_t sub_215000E24(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657261506D6F7266 && a2 == 0xEA0000000000746ELL || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E657261506E69 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F447369 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616E696769726FLL && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEB00000000746E61 || (sub_2150A6270() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_2150A6270() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x746E657261506F74 && a2 == 0xE800000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v5 = sub_2150A6270();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_215001108()
{
  result = qword_27CA43A80;
  if (!qword_27CA43A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43A80);
  }

  return result;
}

uint64_t sub_21500115C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSAttributedString __swiftcall ICTTMergeableAttributedString.authorAttributedString(for:object:)(__C::_NSRange a1, ICCloudSyncingObject *object)
{
  v3 = v2;
  length = a1.length;
  location = a1.location;
  result.super.isa = [v3 attributedString];
  if (result.super.isa)
  {
    isa = result.super.isa;
    v9 = [(objc_class *)result.super.isa attributedSubstringFromRange:location, length];

    v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v11 = swift_allocObject();
    v11[2] = v3;
    v11[3] = v10;
    v11[4] = object;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_2150017AC;
    *(v12 + 24) = v11;
    v18[4] = sub_2150017B8;
    v18[5] = v12;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 1107296256;
    v18[2] = sub_2150017E0;
    v18[3] = &block_descriptor_11;
    v13 = _Block_copy(v18);
    v14 = v3;
    v15 = v10;
    v16 = object;

    [v14 enumerateEditsInRange:location usingBlock:{length, v13}];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return v15;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2150013C8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v45 = a5;
  v47 = a3;
  v46 = sub_2150A3960();
  v44 = *(v46 - 8);
  v7 = MEMORY[0x28223BE20](v46);
  v43 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v43 - v9;
  v10 = sub_2150A3A00();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v43 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v20 = [a1 replicaID];
  sub_2150A39C0();

  v21 = [objc_opt_self() CR_unserialized];
  sub_2150A39C0();

  v22 = sub_2150A39B0();
  v23 = *(v11 + 8);
  v23(v14, v10);
  v23(v17, v10);
  if (v22)
  {
    v24 = v47;
  }

  else
  {
    v24 = a1;
  }

  v25 = &selRef_replicaUUID;
  if ((v22 & 1) == 0)
  {
    v25 = &selRef_replicaID;
  }

  v26 = [v24 *v25];
  sub_2150A39C0();

  v27 = ICTTAttributeNameReplicaID;
  v28 = sub_2150A39A0();
  v29 = [a1 range];
  v30 = a4;
  [a4 addAttribute:v27 value:v28 range:{v29, v31}];

  v32 = [a1 timestamp];
  if (v32)
  {
    v33 = v43;
    v34 = v32;
    sub_2150A3930();

    v35 = v44;
    v36 = v46;
    (*(v44 + 32))(v48, v33, v46);
    v37 = sub_2150A39A0();
    LODWORD(v33) = [v45 trustsTimestampsFromReplicaID_];

    if (v33)
    {
      v38 = ICTTAttributeNameTimestamp;
      sub_2150A3910();
      v39 = sub_2150A5290();
      v40 = [a1 range];
      [v30 addAttribute:v38 value:v39 range:{v40, v41}];
    }

    (*(v35 + 8))(v48, v36);
  }

  return (v23)(v19, v10);
}

void sub_2150017E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

Swift::Void __swiftcall ICTTMergeableAttributedString.insertAuthorAttributedString(_:at:)(NSAttributedString _, Swift::Int at)
{
  v14 = at;
  v4 = ICTTAttributeNameReplicaID;
  v5 = [(objc_class *)_.super.isa ic_range];
  v7 = v6;
  v8 = swift_allocObject();
  v8[2].super.isa = v2;
  v8[3].super.isa = _.super.isa;
  v8[4].super.isa = &v14;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_215001E0C;
  *(v9 + 24) = v8;
  aBlock[4] = sub_215001E18;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_215001D60;
  aBlock[3] = &block_descriptor_12;
  v10 = _Block_copy(aBlock);
  v11 = v2;
  v12 = _.super.isa;

  [(objc_class *)v12 enumerateAttribute:v4 inRange:v5 options:v7 usingBlock:0, v10];

  _Block_release(v10);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }
}

uint64_t sub_2150019F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v32 = a6;
  v33 = a3;
  v31 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42360);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_2150A3A00();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214FA9E9C(a1, v34);
  if (v35)
  {
    v17 = swift_dynamicCast();
    (*(v14 + 56))(v12, v17 ^ 1u, 1, v13);
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      (*(v14 + 32))(v16, v12, v13);
      goto LABEL_7;
    }
  }

  else
  {
    sub_214F302D4(v34, &qword_27CA42178);
    (*(v14 + 56))(v12, 1, 1, v13);
  }

  v18 = [a5 replicaUUID];
  sub_2150A39C0();

  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_214F302D4(v12, &unk_27CA42360);
  }

LABEL_7:
  v19 = [a5 serialize];
  v20 = sub_2150A37B0();
  v22 = v21;

  v23 = objc_allocWithZone(ICTTMergeableAttributedString);
  v24 = sub_2150A3790();
  v25 = sub_2150A39A0();
  v26 = [v23 initWithData:v24 replicaID:v25];

  sub_214F7EDE4(v20, v22);
  v27 = v33;
  v28 = [v32 attributedSubstringFromRange_];
  [v26 insertAttributedString:v28 atIndex:*a7];

  [a5 mergeWithString_];
  result = (*(v14 + 8))(v16, v13);
  if (__OFADD__(*a7, v27))
  {
    __break(1u);
  }

  else
  {
    *a7 += v27;
  }

  return result;
}

uint64_t sub_215001D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_214D72488(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_214F302D4(v13, &qword_27CA42178);
}

void *Commands.defaultCommand()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (qword_27CA41630 != -1)
  {
    swift_once();
  }

  v7 = off_27CA42E00;
  swift_beginAccess();
  v7[16] = 1;
  result = (*(*(a2 + 8) + 40))(&v14, MEMORY[0x277D84F90], a1);
  if (!v3)
  {
    sub_214F6163C(&v14, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A98);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v12);
      result = sub_214D7A458(&v14, a3);
    }

    else
    {
      __swift_project_boxed_opaque_existential_1(&v14, v15);
      DynamicType = swift_getDynamicType();
      v10 = v16;
      v11 = *(v16 + 8);
      a3[3] = DynamicType;
      a3[4] = v10;
      __swift_allocate_boxed_opaque_existential_1(a3);
      v11(DynamicType, v10);
      result = __swift_destroy_boxed_opaque_existential_0(&v14);
    }
  }

  v7[16] = 0;
  return result;
}

uint64_t static Commands.command(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v57 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v18 = &v57 - v17;
  v19 = v13[2];
  if (v19)
  {
    v58 = v16;
    v59 = v15;
    v74 = v14;
    v69 = v13[4];
    v20 = v13[5];
    v61 = v13;
    sub_214F6E4D8(v13, (v13 + 4), 1, (2 * v19) | 1);
    v22 = v21;
    v23 = *(v21 + 16);
    v70 = v20;

    v65 = v3;
    v63 = v5;
    v62 = a3;
    v64 = v22;
    if (v23)
    {
      v24 = v74;
      v60 = sub_215002694();
    }

    else
    {
      v60 = 0;
      v24 = v74;
    }

    v31 = (*(v24 + 16))(a2, v24);
    if (sub_2150A4F80())
    {
      v32 = 0;
      v67 = (v8 + 16);
      v68 = (v8 + 32);
      v66 = (v8 + 8);
      while (1)
      {
        v33 = sub_2150A4F60();
        sub_2150A4F00();
        if (v33)
        {
          (*(v8 + 16))(v18, v31 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v32, a2);
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_16;
          }
        }

        else
        {
          result = sub_2150A5BB0();
          if (v58 != 8)
          {
            __break(1u);
            return result;
          }

          *&v73[0] = result;
          (*v67)(v18, v73, a2);
          swift_unknownObjectRelease();
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
LABEL_16:
            __break(1u);
            goto LABEL_17;
          }
        }

        v35 = *v68;
        (*v68)(v12, v18, a2);
        if (sub_215002704(v69, v70, a2, v74))
        {
          break;
        }

        (*v66)(v12, a2);
        ++v32;
        if (v34 == sub_2150A4F80())
        {
          goto LABEL_17;
        }
      }

      v49 = v63;
      (*(*(v74 + 8) + 40))(v73, v64, a2);
      if (v49)
      {

        if (v60)
        {

          v50 = v59;
          v35(v59, v12, a2);
          v51 = type metadata accessor for HelpCommand();
          v52 = v62;
          v62[3] = v51;
          v52[4] = &off_282710EC8;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
          return sub_214F8535C(v50, a2, boxed_opaque_existential_1);
        }

        else
        {
          swift_willThrow();
          return (*v66)(v12, a2);
        }
      }

      else
      {

        sub_214F6163C(v73, v72);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A90);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43A98);
        if (swift_dynamicCast())
        {
          (*v66)(v12, a2);
          __swift_destroy_boxed_opaque_existential_0(v71);
          v54 = v62;
        }

        else
        {
          v54 = v62;
          if (v60)
          {
            __swift_destroy_boxed_opaque_existential_0(v73);
            v55 = v59;
            v35(v59, v12, a2);
            v54[3] = type metadata accessor for HelpCommand();
            v54[4] = &off_282710EC8;
            v56 = __swift_allocate_boxed_opaque_existential_1(v54);
            return sub_214F8535C(v55, a2, v56);
          }

          (*v66)(v12, a2);
        }

        return sub_214D7A458(v73, v54);
      }
    }

    else
    {
LABEL_17:

      v36 = v65;
      v37 = sub_215002694();

      if (v37)
      {
        sub_214F8B378();
        v39 = v38;
        v41 = v40;
        result = type metadata accessor for GroupHelpCommand();
        v42 = v62;
        v62[3] = result;
        v42[4] = &off_2827110A8;
        *v42 = v39;
        *(v42 + 8) = v41 & 1;
      }

      else
      {
        google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(v36);
        v44 = v43;
        v46 = v45;
        v47 = type metadata accessor for UnknownCommand();
        v48 = v62;
        v62[3] = v47;
        v48[4] = &off_282710578;
        *v48 = v44;
        v48[1] = v46;
      }
    }
  }

  else
  {
    sub_214F8B378();
    v25 = a3;
    v27 = v26;
    v29 = v28;
    result = type metadata accessor for GroupHelpCommand();
    v25[3] = result;
    v25[4] = &off_2827110A8;
    *v25 = v27;
    *(v25 + 8) = v29 & 1;
  }

  return result;
}

BOOL sub_215002694()
{
  sub_214D6E6C4();
  v0 = sub_2150A58B0();

  return v0 == 0;
}

BOOL sub_215002704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a4 + 8) + 32))(a3);
  v4 = sub_2150A4D30();
  sub_214FBDA8C(v4, v5);

  sub_214D6E6C4();
  v6 = sub_2150A58B0();

  return v6 == 0;
}

uint64_t Commands.decode<A>(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v5 = a3;
  if (qword_27CA41630 != -1)
  {
    v7 = a1;
    v8 = a2;
    v10 = a4;
    v11 = a5;
    swift_once();
    a5 = v11;
    a4 = v10;
    a1 = v7;
    a2 = v8;
    v5 = a3;
  }

  return ArgumentDecoder.decode<A>(_:from:)(a1, a2, v5, *(a4 + 16), a5);
}

uint64_t NSFileManager.itemExists(at:)()
{
  v1 = swift_slowAlloc();
  sub_2150A3700();
  v2 = sub_2150A4A90();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:v1];

  if (v3)
  {
    if (*v1)
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

id NSFileManager.createDirectory(at:withIntermediateDirectories:)(uint64_t a1, char a2)
{
  v3 = v2;
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2150A36B0();
  v8[0] = 0;
  LODWORD(v3) = [v3 createDirectoryAtURL:v5 withIntermediateDirectories:a2 & 1 attributes:0 error:v8];

  if (v3)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_2150A35D0();

  return swift_willThrow();
}

void NSFileManager.url(for:)(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  v2 = [v1 URLForDirectory:a1 inDomain:1 appropriateForURL:0 create:1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = v2;
    sub_2150A36F0();
    v5 = v3;
  }

  else
  {
    v6 = v7[0];
    sub_2150A35D0();

    swift_willThrow();
  }
}

uint64_t NSFileManager.subdirectoriesOfDirectory(at:)()
{
  v2 = v0;
  v51[6] = *MEMORY[0x277D85DE8];
  v44 = sub_2150A3470();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2150A3750();
  v48 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v37 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v50 = &v36 - v9;
  v10 = sub_2150A36B0();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43AA0);
  v11 = swift_allocObject();
  v46 = xmmword_2150C25D0;
  *(v11 + 16) = xmmword_2150C25D0;
  v12 = *MEMORY[0x277CBE868];
  *(v11 + 32) = *MEMORY[0x277CBE868];
  type metadata accessor for URLResourceKey(0);
  v45 = v12;
  v13 = sub_2150A4EB0();

  v51[0] = 0;
  v14 = [v2 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:v13 options:0 error:v51];

  v15 = v51[0];
  if (v14)
  {
    v49 = v6;
    v16 = sub_2150A4ED0();
    v17 = v15;

    v18 = v16;
    v43 = *(v16 + 16);
    if (v43)
    {
      v19 = 0;
      v40 = (v3 + 8);
      v41 = v48 + 16;
      v36 = (v48 + 32);
      v39 = (v48 + 8);
      v38 = MEMORY[0x277D84F90];
      v20 = v49;
      v42 = v18;
      while (1)
      {
        if (v19 >= *(v18 + 16))
        {
          __break(1u);
        }

        v21 = (*(v48 + 80) + 32) & ~*(v48 + 80);
        v22 = *(v48 + 72);
        (*(v48 + 16))(v50, v18 + v21 + v22 * v19, v20);
        inited = swift_initStackObject();
        *(inited + 16) = v46;
        v24 = v5;
        v25 = v45;
        *(inited + 32) = v45;
        v26 = v25;
        sub_214F80E70(inited);
        swift_setDeallocating();
        sub_215003364(inited + 32);
        sub_2150A3660();
        if (v1)
        {
          break;
        }

        v27 = sub_2150A3450();
        (*v40)(v5, v44);
        if (v27 == 2 || (v27 & 1) == 0)
        {
          v20 = v49;
          (*v39)(v50, v49);
        }

        else
        {
          v28 = *v36;
          v20 = v49;
          (*v36)(v37, v50, v49);
          v29 = v38;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51[0] = v29;
          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = v29;
          }

          else
          {
            sub_214F86FCC(0, v29[2] + 1, 1);
            v20 = v49;
            v31 = v51[0];
          }

          v33 = v31[2];
          v32 = v31[3];
          if (v33 >= v32 >> 1)
          {
            sub_214F86FCC(v32 > 1, v33 + 1, 1);
            v20 = v49;
            v31 = v51[0];
          }

          v31[2] = v33 + 1;
          v38 = v31;
          v28(v31 + v21 + v33 * v22, v37, v20);
          v5 = v24;
        }

        ++v19;
        v18 = v42;
        if (v43 == v19)
        {
          goto LABEL_18;
        }
      }

      (*v39)(v50, v49);
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
LABEL_18:

      return v38;
    }
  }

  else
  {
    v34 = v51[0];
    sub_2150A35D0();

    return swift_willThrow();
  }
}

id sub_2150030F4()
{
  v1 = v0;
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2150A36B0();
  v5[0] = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:v5];

  if (v1)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_2150A35D0();

  return swift_willThrow();
}

id sub_2150031D0()
{
  v1 = v0;
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2150A36B0();
  v3 = sub_2150A36B0();
  v6[0] = 0;
  LODWORD(v1) = [v1 copyItemAtURL:v2 toURL:v3 error:v6];

  if (v1)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_2150A35D0();

  return swift_willThrow();
}

uint64_t sub_2150032B4()
{
  v1 = swift_slowAlloc();
  sub_2150A3700();
  v2 = sub_2150A4A90();

  v3 = [v0 fileExistsAtPath:v2 isDirectory:v1];

  if (v3)
  {
    if (*v1)
    {
      v4 = 256;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_215003364(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FastSyncError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 32);
  if (v3 > 3)
  {
    if (*(v0 + 32) > 5u)
    {
      v7 = *(v0 + 16);
      v6 = *(v0 + 24);
      if (v3 != 6)
      {
        if (!(v7 | v2 | v1 | v6))
        {
          return 0xD000000000000033;
        }

        v10 = v7 | v2 | v6;
        if (v1 == 1 && !v10)
        {
          return 0xD000000000000035;
        }

        if (v1 != 2 || v10)
        {
          return 0xD000000000000020;
        }

        return 0xD000000000000036;
      }

      v11 = 0;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0x7069636974726150, 0xEC00000020746E61);
      MEMORY[0x2160617E0](v1, v2);
      MEMORY[0x2160617E0](0xD000000000000023, 0x80000002150E6690);
      v4 = v7;
      v5 = v6;
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_12;
      }

      sub_2150A5B20();

      v11 = 0xD000000000000013;
      MEMORY[0x2160617E0](v1, v2);
      v4 = 0xD000000000000017;
      v5 = 0x80000002150E6710;
    }

LABEL_14:
    MEMORY[0x2160617E0](v4, v5);
    return v11;
  }

  if (*(v0 + 32) <= 1u)
  {
    if (*(v0 + 32))
    {
      sub_2150A5B20();

      v8 = 0xD000000000000020;
LABEL_13:
      v11 = v8;
      v4 = v1;
      v5 = v2;
      goto LABEL_14;
    }

LABEL_12:
    sub_2150A5B20();

    v8 = 0xD000000000000028;
    goto LABEL_13;
  }

  return v1;
}

unint64_t sub_215003804()
{
  result = qword_27CA43AA8;
  if (!qword_27CA43AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43AA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared13FastSyncErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 32) & 7;
  }
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

uint64_t sub_215003898(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2150038E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_215003928(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t URL.init(stringLiteral:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  sub_2150A5B70();
  sub_2150A3720();

  sub_214F43C14(v7, v5, &qword_27CA41D40);
  v8 = sub_2150A3750();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v5, 1, v8) == 1)
  {
    result = sub_214F302D4(v5, &qword_27CA41D40);
    __break(1u);
  }

  else
  {
    sub_214F302D4(v7, &qword_27CA41D40);
    return (*(v9 + 32))(a1, v5, v8);
  }

  return result;
}

uint64_t sub_215003AD8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  sub_2150A5B70();
  sub_2150A3720();

  sub_214F43C14(v9, v7, &qword_27CA41D40);
  v10 = *(a1 - 8);
  if ((*(v10 + 48))(v7, 1, a1) == 1)
  {
    result = sub_214F302D4(v7, &qword_27CA41D40);
    __break(1u);
  }

  else
  {
    sub_214F302D4(v9, &qword_27CA41D40);
    return (*(v10 + 32))(a2, v7, a1);
  }

  return result;
}

uint64_t URL.fileSize.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43AB0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  v7 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v8 = v7;
  sub_214F80E70(inited);
  swift_setDeallocating();
  sub_215003364(inited + 32);
  sub_2150A3660();

  v9 = sub_2150A3470();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_214F43C14(v5, v3, &qword_27CA43AB0);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    sub_214F302D4(v5, &qword_27CA43AB0);
    sub_214F302D4(v3, &qword_27CA43AB0);
    return 0;
  }

  else
  {
    v12 = sub_2150A3460();
    sub_214F302D4(v5, &qword_27CA43AB0);
    (*(v10 + 8))(v3, v9);
    return v12;
  }
}

uint64_t URL.deletingFragment()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  sub_2150A3730();
  if (v9)
  {
    sub_2150A3650();
    sub_2150A3650();
    v10 = sub_2150A4BC0();

    v11 = sub_2150A4BC0();

    v13 = v10 - v11;
    if (__OFSUB__(v10, v11))
    {
      __break(1u);
    }

    else if (!__OFSUB__(v13, 1))
    {
      v14 = sub_2150238C4(v13 - 1);
      v16 = v15;
      v18 = v17;
      v20 = v19;

      MEMORY[0x216061730](v14, v16, v18, v20);

      sub_2150A3720();

      sub_214F43C14(v8, v6, &qword_27CA41D40);
      v21 = sub_2150A3750();
      v22 = *(v21 - 8);
      v23 = (*(v22 + 48))(v6, 1, v21);
      v12 = &qword_27CA41D40;
      if (v23 != 1)
      {
        sub_214F302D4(v8, &qword_27CA41D40);
        return (*(v22 + 32))(a1, v6, v21);
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    result = sub_214F302D4(v6, v12);
    __break(1u);
    return result;
  }

  v25 = sub_2150A3750();
  v26 = *(*(v25 - 8) + 16);

  return v26(a1, v1, v25);
}

id sub_21500415C(void *a1)
{
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v6 = a1;
  v7 = URL.fileSize.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = 0;
  if ((v9 & 1) == 0)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return v10;
}

id NSURL.fileSize.getter()
{
  v0 = sub_2150A3750();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  v4 = URL.fileSize.getter();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  result = 0;
  if ((v6 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  }

  return result;
}

uint64_t NSURL.deletingFragment()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A36F0();
  URL.deletingFragment()(a1);
  return (*(v3 + 8))(v5, v2);
}

id sub_215004460()
{
  v0 = sub_2150A3750();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - v5;
  sub_2150A36F0();
  URL.deletingFragment()(v6);
  v7 = *(v1 + 8);
  v7(v4, v0);
  v8 = sub_2150A36B0();
  v7(v6, v0);

  return v8;
}

uint64_t sub_215004600(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2150A3750();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215004674()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA43AC8);
  v1 = __swift_project_value_buffer(v0, qword_27CA43AC8);
  if (qword_27CA415E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42B58);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id ICFolder.smartFolderQuery.getter()
{
  v1 = v0;
  v2 = sub_2150A4B20();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v1 smartFolderQueryJSON];
  if (result)
  {
    v7 = result;
    sub_2150A4AD0();

    sub_2150A4B10();
    v8 = sub_2150A4AE0();
    v10 = v9;

    (*(v3 + 8))(v5, v2);
    if (v10 >> 60 == 15)
    {
      if (qword_27CA416A0 != -1)
      {
        swift_once();
      }

      v11 = sub_2150A3F30();
      __swift_project_value_buffer(v11, qword_27CA43AC8);
      v12 = sub_2150A3F10();
      v13 = sub_2150A5550();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_214D51000, v12, v13, "Could not create JSON data from smartFolderQueryJSON", v14, 2u);
        MEMORY[0x216064AF0](v14, -1, -1);
      }

      return 0;
    }

    else
    {
      sub_2150A2F80();
      swift_allocObject();
      sub_2150A2F70();
      type metadata accessor for ICQuery();
      sub_215005A8C(&qword_27CA43AE0);
      sub_2150A2F60();

      sub_214FE1228(v8, v10);
      return v15[1];
    }
  }

  return result;
}

id ICFolder.smartFolderQuery.setter(void *a1)
{
  v2 = v1;
  v4 = sub_2150A4B20();
  MEMORY[0x28223BE20](v4 - 8);
  if (a1)
  {
    sub_2150A2FE0();
    swift_allocObject();
    sub_2150A2FD0();
    type metadata accessor for ICQuery();
    sub_215005A8C(&qword_27CA43AE8);
    v6 = sub_2150A2FC0();
    v8 = v7;
    sub_2150A4B10();
    sub_2150A4AF0();
    if (v9)
    {
      v10 = sub_2150A4A90();
    }

    else
    {
      v10 = 0;
    }

    [v2 setSmartFolderQueryJSON_];

    sub_214F7EDE4(v6, v8);
  }

  else
  {

    return [v1 setSmartFolderQueryJSON_];
  }
}

char *ICFolder.smartFolderDescription.getter()
{
  v1 = v0;
  if ([v0 isSmartFolder])
  {
    result = [v0 smartFolderQueryObjC];
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = OBJC_IVAR___ICQueryObjC_type;
    swift_beginAccess();
    v5 = *&v3[v4];
    v54[0] = v5;

    v56.value.super.isa = [v0 managedObjectContext];
    isa = v56.value.super.isa;
    ICQueryType.tagSelection(managedObjectContext:)(v7, v56);
    v9 = v8;

    v10 = [v9 tagIdentifiers];
    v11 = sub_2150A4ED0();

    v51 = v11;
    if (*(v11 + 16))
    {
      v12 = [v1 managedObjectContext];
      if (v12)
      {
        v48 = v12;
        v13 = [objc_opt_self() canonicalHashtagsInContext_];
        sub_214D55670(0, &qword_27CA43AF0);
        v14 = sub_2150A4ED0();

        v55 = MEMORY[0x277D84F90];
        if (v14 >> 62)
        {
          goto LABEL_26;
        }

        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v49 = v5;
        for (i = v3; v15; i = v3)
        {
          v16 = 0;
          v52 = v14 & 0xFFFFFFFFFFFFFF8;
          v53 = v14 & 0xC000000000000001;
          while (1)
          {
            if (v53)
            {
              v17 = MEMORY[0x216062780](v16, v14);
            }

            else
            {
              if (v16 >= *(v52 + 16))
              {
                goto LABEL_25;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            v5 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            v19 = [v17 standardizedContent];
            if (v19)
            {
              v3 = v15;
              v20 = v14;
              v21 = v19;
              v22 = sub_2150A4AD0();
              v24 = v23;

              v54[0] = v22;
              v54[1] = v24;
              MEMORY[0x28223BE20](v25);
              v47[2] = v54;
              LOBYTE(v21) = sub_215068408(sub_214F73280, v47, v51);

              if (v21)
              {
                sub_2150A5CB0();
                sub_2150A5CF0();
                sub_2150A5D00();
                sub_2150A5CC0();
              }

              else
              {
              }

              v14 = v20;
              v15 = v3;
            }

            else
            {
            }

            ++v16;
            if (v5 == v15)
            {
              v26 = v55;
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          v15 = sub_2150A59D0();
          v49 = v5;
        }

        v26 = MEMORY[0x277D84F90];
LABEL_28:

        if (v26 < 0 || (v26 & 0x4000000000000000) != 0)
        {
LABEL_49:
          v27 = sub_2150A59D0();
          if (v27)
          {
LABEL_31:
            v28 = 0;
            v29 = MEMORY[0x277D84F90];
            v30 = &selRef_dictionaryWithObjects_forKeys_count_;
            do
            {
              v31 = v28;
              while (1)
              {
                if ((v26 & 0xC000000000000001) != 0)
                {
                  v32 = MEMORY[0x216062780](v31, v26);
                }

                else
                {
                  if (v31 >= *(v26 + 16))
                  {
                    goto LABEL_48;
                  }

                  v32 = *(v26 + 8 * v31 + 32);
                }

                v33 = v32;
                v28 = v31 + 1;
                if (__OFADD__(v31, 1))
                {
                  __break(1u);
LABEL_48:
                  __break(1u);
                  goto LABEL_49;
                }

                v34 = [v32 v30[41]];
                if (v34)
                {
                  break;
                }

                ++v31;
                if (v28 == v27)
                {
                  goto LABEL_51;
                }
              }

              v35 = v34;
              sub_2150A4AD0();

              v36 = sub_2150A4A90();

              v37 = v29;
              v38 = [v36 ic_withHashtagPrefix];

              v39 = sub_2150A4AD0();
              v41 = v40;

              v29 = v37;
              v42 = v39;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v29 = sub_21505F4D0(0, *(v29 + 2) + 1, 1, v29);
              }

              v44 = *(v29 + 2);
              v43 = *(v29 + 3);
              if (v44 >= v43 >> 1)
              {
                v29 = sub_21505F4D0((v43 > 1), v44 + 1, 1, v29);
              }

              *(v29 + 2) = v44 + 1;
              v45 = &v29[16 * v44];
              *(v45 + 4) = v42;
              *(v45 + 5) = v41;
              v30 = &selRef_dictionaryWithObjects_forKeys_count_;
            }

            while (v28 != v27);
            goto LABEL_51;
          }
        }

        else
        {
          v27 = *(v26 + 16);
          if (v27)
          {
            goto LABEL_31;
          }
        }

        v29 = MEMORY[0x277D84F90];
LABEL_51:

        v54[0] = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
        sub_214F86A40();
        v46 = sub_2150A4A20();

        return v46;
      }
    }
  }

  return 0;
}

id sub_215005340(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_2150A4A90();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id ICFolder.smartFolderShortDescription.getter()
{
  if ([v0 isSmartFolder])
  {
    result = [v0 smartFolderQueryObjC];
    if (!result)
    {
      return result;
    }

    v2 = result;
    swift_beginAccess();

    v17.value.super.isa = [v0 managedObjectContext];
    isa = v17.value.super.isa;
    ICQueryType.tagSelection(managedObjectContext:)(v4, v17);
    v6 = v5;

    if ([v6 isNonEmpty])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      v8 = [v6 selectedTagCount];
      v9 = MEMORY[0x277D83C10];
      *(inited + 56) = MEMORY[0x277D83B88];
      *(inited + 64) = v9;
      *(inited + 32) = v8;
      v10 = objc_opt_self();
      v11 = sub_2150A4A90();
      v12 = [v10 localizedFrameworkStringForKey:v11 value:0 table:0 allowSiri:0];

      v13 = sub_2150A4AD0();
      v15 = v14;

      v16 = sub_215005B28(inited, v13, v15);

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
      swift_arrayDestroy();
      return v16;
    }
  }

  return 0;
}

id static ICFolder.makeSmartFolder(with:titleComponents:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [swift_getObjCClassFromMetadata() newFolderInAccount_];
  [v5 setSmartFolderQueryObjC_];
  if (*(a2 + 16))
  {
    v6 = objc_opt_self();
    v7 = sub_2150A4EB0();
    v8 = [v6 objc:v7 defaultSmartFolderTitleWithComponents:?];

    [v5 setTitle_];
  }

  return v5;
}

id static ICFolder.makeSmartFolder(with:in:)(uint64_t a1, uint64_t a2)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_2150A4EB0();
  v6 = [ObjCClassFromMetadata objc:a1 smartFolderWithQuery:v5 titleComponents:a2 account:?];

  return v6;
}

id sub_215005914(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_2150A4A90();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = *(v7 - 8);
    MEMORY[0x28223BE20](v8);
    v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v11);
    v12 = sub_2150A6260();
    (*(v9 + 8))(v11, v7);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFormat:v6 locale:v12 arguments:a4];

  swift_unknownObjectRelease();
  return v13;
}

uint64_t sub_215005A8C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ICQuery();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_215005AD0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270() & 1;
  }
}

uint64_t sub_215005B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2150A5DA0();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = sub_2150A5D90();
    sub_214D55670(0, &qword_27CA42350);
    v29[3] = sub_2150A3AC0();
    __swift_allocate_boxed_opaque_existential_1(v29);

    sub_2150A3A70();
    v25 = sub_215005914(a2, a3, v29, v24);
    v26 = sub_2150A4AD0();

    return v26;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    result = sub_2150A6570();
    v10 = *v5;
    v11 = *(result + 16);
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_2150A5D80();
      result = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t _sSo8ICFolderC11NotesSharedE23defaultSmartFolderTitle10componentsSSSaySSG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 <= 2)
  {
    v16 = a1;

    sub_214FB240C(&v16);
    v11 = v16;
    v12 = [objc_allocWithZone(MEMORY[0x277CCAAF0]) init];
    sub_2150680E0(v11);

    v13 = sub_2150A4EB0();

    v14 = [v12 stringFromItems_];

    if (v14)
    {
      v10 = sub_2150A4AD0();
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    v3 = MEMORY[0x277D83C10];
    *(inited + 56) = MEMORY[0x277D83B88];
    *(inited + 64) = v3;
    *(inited + 32) = v1;
    v4 = objc_opt_self();
    v5 = sub_2150A4A90();
    v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:0];

    v7 = sub_2150A4AD0();
    v9 = v8;

    v10 = sub_215005B28(inited, v7, v9);
    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268);
    swift_arrayDestroy();
  }

  return v10;
}

Swift::Void __swiftcall ICHashtag.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = v1;
  v3 = [v1 displayText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A4AD0();
    v7 = v6;

    sub_2150A4AD0();
    MEMORY[0x2160617E0](58, 0xE100000000000000);
    MEMORY[0x2160617E0](6775156, 0xE300000000000000);
    MEMORY[0x2160617E0](47, 0xE100000000000000);
    MEMORY[0x2160617E0](v5, v7);

    v8 = [v2 displayText];
    if (v8)
    {
      v9 = v8;
      sub_2150A4AD0();
    }

    sub_214F301C4(MEMORY[0x277D84F90]);
    sub_2150A5710();
  }

  else
  {
    __break(1u);
  }
}

Swift::String __swiftcall Duration.formattedTime(fractionalSeconds:)(Swift::Bool fractionalSeconds)
{
  v3 = v2;
  v4 = v1;
  v22[1] = fractionalSeconds;
  v5 = sub_2150A6240();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2150A65F0();
  v9 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2150A6600();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v4;
  v25 = v3;
  v16 = sub_2150A6620();
  v17 = (v6 + 104);
  v18 = *MEMORY[0x277D84688];
  if (v16 >= 3600)
  {
    (*v17)(v8, v18, v5);
    sub_2150A65E0();
  }

  else
  {
    (*v17)(v8, v18, v5);
    sub_2150A65D0();
  }

  (*(v6 + 8))(v8, v5);
  sub_2150A2F50();
  (*(v9 + 8))(v11, v23);
  sub_215006470();
  sub_2150A6610();
  (*(v13 + 8))(v15, v12);
  v19 = v26;
  v20 = v27;
  result._object = v20;
  result._countAndFlagsBits = v19;
  return result;
}

unint64_t sub_215006470()
{
  result = qword_27CA43AF8;
  if (!qword_27CA43AF8)
  {
    sub_2150A6600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43AF8);
  }

  return result;
}

void sub_2150064C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_2150A35C0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t NotesInvernessClient.Environments.init(rawValue:)(uint64_t result)
{
  if ((result - 4) < 0xFFFFFFFFFFFFFFFDLL)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_215006544@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result - 4;
  v4 = __CFADD__(v3, 3);
  v5 = v3 < 0xFFFFFFFFFFFFFFFDLL;
  if (!v4)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  return result;
}

uint64_t NotesInvernessClient.localURLString.getter()
{
  v1 = *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_localURLString);

  return v1;
}

uint64_t sub_215006640()
{
  v1 = *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_environment);
  if ((v1 - 1) >= 3)
  {
    result = sub_2150A63B0();
    __break(1u);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_container);
    v4 = v1 - 1;
    return sub_2150082A0(v2, &v4, *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_localURLString), *(v0 + OBJC_IVAR___ICNotesInvernessClientObjc_localURLString + 8));
  }

  return result;
}

id NotesInvernessClient.__allocating_init(container:environment:localURLString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR___ICNotesInvernessClientObjc_container] = a1;
  *&v9[OBJC_IVAR___ICNotesInvernessClientObjc_environment] = a2;
  v10 = &v9[OBJC_IVAR___ICNotesInvernessClientObjc_localURLString];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id NotesInvernessClient.init(container:environment:localURLString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___ICNotesInvernessClientObjc_container] = a1;
  *&v4[OBJC_IVAR___ICNotesInvernessClientObjc_environment] = a2;
  v5 = &v4[OBJC_IVAR___ICNotesInvernessClientObjc_localURLString];
  *v5 = a3;
  *(v5 + 1) = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for NotesInvernessClient();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_215006850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v28 = a8;
  v27 = a7;
  v29 = a14;
  v30 = a15;
  v26[2] = a11;
  v26[1] = a10;
  v26[0] = a9;
  v21 = type metadata accessor for MentionNotificationRequestV2(0);
  MEMORY[0x28223BE20](v21);
  v23 = v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = v27;
  v38 = v28;
  v39 = a9;
  v40 = a10;
  v41 = a11;
  v42 = a12;
  v43 = a13;
  sub_215007384(&qword_27CA432C8, type metadata accessor for MentionNotificationRequestV2);
  sub_2150A3DB0();
  sub_215006640();
  v24 = swift_allocObject();
  *(v24 + 16) = v29;
  *(v24 + 24) = v30;

  sub_214FC97AC(v23);

  return sub_215008A3C(v23, type metadata accessor for MentionNotificationRequestV2);
}

uint64_t sub_215006A6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  *a1 = a2;
  a1[1] = a3;

  a1[2] = a4;
  a1[3] = a5;

  a1[4] = a6;
  a1[5] = a7;

  a1[6] = a8;
  a1[7] = a9;

  a1[8] = a10;
  a1[9] = a11;

  a1[10] = a12;
  a1[11] = a13;

  a1[12] = a14;
  a1[13] = a15;

  a1[14] = a16;
  a1[15] = a17;
  return result;
}

void sub_215006BF8(uint64_t a1, void (*a2)(void *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B30);
  MEMORY[0x28223BE20](v4);
  v6 = (&v8 - v5);
  sub_214F43C14(a1, &v8 - v5, &qword_27CA43B30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v6;
  }

  else
  {
    sub_214F302D4(v6, &qword_27CA43B30);
    v7 = 0;
  }

  a2(v7);
}

uint64_t sub_215007078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v26 = a6;
  v25 = a8;
  v27 = a12;
  v28 = a13;
  v24 = a9;
  updated = type metadata accessor for DidCompleteInstallOrUpdateRequest(0);
  MEMORY[0x28223BE20](updated);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v30 = a2;
  v31 = a3;
  v32 = a4;
  v33 = a7;
  v34 = v25;
  v35 = a5;
  v36 = v26;
  v37 = a9;
  v38 = a10;
  v39 = a11;
  sub_215007384(qword_280C23720, type metadata accessor for DidCompleteInstallOrUpdateRequest);
  sub_2150A3DB0();
  sub_215006640();
  v22 = swift_allocObject();
  *(v22 + 16) = v27;
  *(v22 + 24) = v28;

  sub_214FC9984(v21);

  return sub_215008A3C(v21, type metadata accessor for DidCompleteInstallOrUpdateRequest);
}

uint64_t sub_215007248(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{

  *a1 = a2;
  a1[1] = a3;

  a1[2] = a4;
  a1[3] = a5;

  a1[6] = a6;
  a1[7] = a7;

  a1[4] = a8;
  a1[5] = a9;

  a1[8] = a10;
  a1[9] = a11;
  v19 = a1[10];
  v20 = a1[11];
  sub_214FCA120(a12, a13);
  result = sub_214F7EDE4(v19, v20);
  a1[10] = a12;
  a1[11] = a13;
  return result;
}

uint64_t sub_215007384(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2150073CC(uint64_t a1, void (*a2)(void *, void, unint64_t, uint64_t), uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v4 = sub_2150A3BC0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - v9;
  updated = type metadata accessor for DidCompleteInstallOrUpdateResponse(0);
  MEMORY[0x28223BE20](updated - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B28);
  MEMORY[0x28223BE20](v14);
  v16 = (&v29 - v15);
  sub_214F43C14(a1, &v29 - v15, &qword_27CA43B28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    v18 = v17;
    v32(v17, 0, 0xF000000000000000, 0);
  }

  else
  {
    sub_2150089D8(v16, v13);
    v30 = v13;
    v19 = *(v13 + 2);
    v36 = MEMORY[0x277D84F90];
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = sub_2150088F4();
      v24 = *(v5 + 16);
      v22 = v5 + 16;
      v23 = v24;
      v25 = (v19 + ((*(v22 + 64) + 32) & ~*(v22 + 64)));
      v34 = *(v22 + 56);
      v35 = v21;
      v33 = MEMORY[0x277D84F90];
      v24(v10, v25, v4);
      while (1)
      {
        v23(v8, v10, v4);
        v26 = sub_2150A5740();
        v27 = (*(v22 - 8))(v10, v4);
        if (v26)
        {
          MEMORY[0x216061A60](v27);
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v33 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_2150A4F10();
          }

          sub_2150A4F70();
          v33 = v36;
        }

        v25 += v34;
        if (!--v20)
        {
          break;
        }

        v23(v10, v25, v4);
      }
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    v28 = v30;
    v32(0, *v30, v30[1], v33);

    sub_215008A3C(v28, type metadata accessor for DidCompleteInstallOrUpdateResponse);
  }
}

void sub_2150079E0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = sub_2150A35C0();
  }

  else
  {
    v8 = 0;
  }

  if (a3 >> 60 == 15)
  {
    v9 = 0;
    if (a4)
    {
LABEL_6:
      sub_2150088F4();
      v10 = sub_2150A4EB0();
      goto LABEL_9;
    }
  }

  else
  {
    v9 = sub_2150A3790();
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v10 = 0;
LABEL_9:
  v11 = v10;
  (*(a5 + 16))(a5, v8, v9);
}

void sub_215007B60(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v11 = type metadata accessor for RunGarbageCollectorRequest(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && ([a1 isCancelled] & 1) != 0)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
    a4();
    v14 = v23;
  }

  else
  {
    *v13 = xmmword_2150C8880;
    _s11NotesShared11PingRequestVACycfC_0();
    if (a3 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v15 = a2;
    }

    v23 = a4;
    if (a3 >> 60 == 15)
    {
      v16 = 0xC000000000000000;
    }

    else
    {
      v16 = a3;
    }

    v17 = *v13;
    v18 = *(v13 + 1);
    sub_214FE1214(a2, a3);
    sub_214F7EDE4(v17, v18);
    *v13 = v15;
    *(v13 + 1) = v16;
    sub_215006640();
    v19 = swift_allocObject();
    v19[2] = v5;
    v19[3] = a1;
    v19[4] = v23;
    v19[5] = a5;
    v20 = v5;
    v21 = a1;

    sub_214FC9B5C(v13);

    sub_215008A3C(v13, type metadata accessor for RunGarbageCollectorRequest);
  }
}

void sub_215007D6C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v22[1] = a2;
  v9 = type metadata accessor for RunGarbageCollectorResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B20);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = v22 - v16;
  sub_214F43C14(a1, v22 - v16, &qword_27CA43B20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_215008844(v17, v11);
    v18 = *v11;
    v19 = v11[1];
    v20 = v19 >> 62;
    if ((v19 >> 62) > 1)
    {
      if (v20 != 2 || *(v18 + 16) == *(v18 + 24))
      {
        goto LABEL_11;
      }
    }

    else if (v20)
    {
      if (v18 == v18 >> 32)
      {
LABEL_11:
        sub_215008A3C(v11, type metadata accessor for RunGarbageCollectorResponse);
        sub_215008A3C(v17, type metadata accessor for RunGarbageCollectorResponse);
        goto LABEL_12;
      }
    }

    else if ((v19 & 0xFF000000000000) == 0)
    {
      goto LABEL_11;
    }

    sub_215007B60(a3, v18, v19, a4, a5);
    sub_215008A3C(v11, type metadata accessor for RunGarbageCollectorResponse);
    sub_215008A3C(v17, type metadata accessor for RunGarbageCollectorResponse);
    return;
  }

  sub_214F302D4(v17, &qword_27CA43B20);
LABEL_12:
  sub_214F43C14(a1, v15, &qword_27CA43B20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v15;
  }

  else
  {
    sub_214F302D4(v15, &qword_27CA43B20);
    v21 = 0;
  }

  (a4)(v21);
}

id NotesInvernessClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotesInvernessClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NotesInvernessClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2150080C0()
{
  result = qword_27CA43B18;
  if (!qword_27CA43B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43B18);
  }

  return result;
}

uint64_t dispatch thunk of NotesInvernessClient.sendMentionNotification(recipientUserId:senderName:noteTitle:mentionSnippet:shareRecordName:shareOwnerUserId:noteRecordName:inlineAttachmentRecordName:callback:)()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x78);

  return v2();
}

uint64_t sub_2150082A0(void *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_2150A3750();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2 + 1;
  if (*a2 == 1)
  {
    v14 = 6254687;
  }

  else
  {
    v14 = 6251615;
  }

  strcpy(v23, "NotesService");
  HIBYTE(v23[6]) = 0;
  v23[7] = -5120;
  MEMORY[0x2160617E0](v14, 0xE300000000000000);

  MEMORY[0x2160617E0](0x302E302E31, 0xE500000000000000);

  v15 = sub_2150A4A90();
  v16 = [a1 codeServiceWithName:v15 databaseScope:{2, v21, v22}];

  if (v13 != 3)
  {

    goto LABEL_8;
  }

  sub_2150A3720();
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {

    (*(v10 + 32))(v12, v8, v9);
    v17 = sub_2150A4A90();

    v18 = sub_2150A36B0();
    v19 = [a1 codeServiceWithName:v17 databaseScope:2 serviceInstanceURL:v18];

    (*(v10 + 8))(v12, v9);
    v16 = v19;
LABEL_8:
    type metadata accessor for NotesServiceAPIAsyncClient();
    result = swift_allocObject();
    *(result + 16) = v16;
    return result;
  }

  sub_214F302D4(v8, &qword_27CA41D40);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

void sub_2150085D4(void *a1, uint64_t a2, unint64_t a3, void *a4, void (**a5)(void, void))
{
  v10 = type metadata accessor for RunGarbageCollectorRequest(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  if (a1)
  {
    _Block_copy(a5);
    if ([a1 isCancelled])
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:3072 userInfo:0];
      v24 = sub_2150A35C0();
      a5[2](a5, v24);

      v15 = v24;

      return;
    }
  }

  else
  {
    _Block_copy(a5);
  }

  *v12 = xmmword_2150C8880;
  _s11NotesShared11PingRequestVACycfC_0();
  if (a3 >> 60 == 15)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2;
  }

  if (a3 >> 60 == 15)
  {
    v17 = 0xC000000000000000;
  }

  else
  {
    v17 = a3;
  }

  v18 = *v12;
  v19 = *(v12 + 1);
  sub_214FE1214(a2, a3);
  sub_214F7EDE4(v18, v19);
  *v12 = v16;
  *(v12 + 1) = v17;
  sub_215006640();
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a1;
  v20[4] = sub_214FE2BD4;
  v20[5] = v13;
  v21 = a4;
  v22 = a1;

  sub_214FC9B5C(v12);

  sub_215008A3C(v12, type metadata accessor for RunGarbageCollectorRequest);
}

uint64_t sub_215008844(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunGarbageCollectorResponse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2150088F4()
{
  result = qword_280C230F0;
  if (!qword_280C230F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C230F0);
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2150089D8(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for DidCompleteInstallOrUpdateResponse(0);
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_215008A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static NSBundle.sharedFramework.getter()
{
  v1 = ICSharedFrameworkBundleIdentifier();
  if (!v1)
  {
    sub_2150A4AD0();
    v1 = sub_2150A4A90();
  }

  v2 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  v3 = v0;
  if (!v2)
  {
    v3 = 0;
    v5[1] = 0;
    v5[2] = 0;
  }

  v5[0] = v2;
  v5[3] = v3;
  castOrFatalError<A>(_:as:)(v5, v0, v0, &v6);
  sub_214FBC238(v5);
  return v6;
}

uint64_t ICQueryEntity.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_215008C00()
{
  result = qword_27CA43B38;
  if (!qword_27CA43B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43B38);
  }

  return result;
}

uint64_t sub_215008C54()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_215008CB0()
{
  sub_2150A64B0();
  sub_2150A4BB0();
  return sub_2150A64E0();
}

uint64_t sub_215008CF8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2150A5EE0();

  *a1 = v2 != 0;
  return result;
}

unint64_t sub_215008E20()
{
  result = qword_27CA43B40;
  if (!qword_27CA43B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43B40);
  }

  return result;
}

uint64_t sub_215008E74(void (*a1)(void))
{
  a1();

  return swift_continuation_throwingResume();
}

uint64_t static ICPaperAttachmentCreationHelper.copyNewPaperBundle(to:from:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = sub_2150A3750();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v3[21] = *(v5 + 64);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215009018, 0, 0);
}

uint64_t sub_215009018()
{
  v1 = sub_215009674(*(v0 + 192), *(v0 + 128));
  *(v0 + 208) = v1;
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 168);
  v19 = *(v4 + 32);
  v6 = *(v0 + 200);
  v19();
  v18 = [objc_opt_self() ic_fileCoordinationOperationQueue];
  *(v0 + 216) = v18;
  v7 = *(v4 + 16);
  v7(v3, v16, v5);
  v7(v2, v6, v5);
  v8 = *(v4 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (v17 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + v10 + 8) & ~v8;
  v12 = swift_allocObject();
  *(v0 + 224) = v12;
  (v19)(v12 + v9, v3, v5);
  *(v12 + v10) = v1;
  (v19)(v12 + v11, v2, v5);
  v13 = v1;
  v14 = v18;

  return MEMORY[0x2822009F8](sub_215009244, 0, 0);
}

uint64_t sub_215009244()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v7 = v0 + 27;
  v6 = v0[27];
  v5 = v7[1];
  v1[2] = v2;
  v1[3] = sub_2150093AC;
  v8 = swift_continuation_init();
  v9 = swift_allocObject();
  v9[2] = sub_215009984;
  v9[3] = v5;
  v9[4] = v8;
  v1[14] = sub_215009A2C;
  v1[15] = v9;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_214F44018;
  v1[13] = &block_descriptor_12;
  v10 = _Block_copy(v4);

  [v6 addOperationWithBlock_];
  _Block_release(v10);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2150093AC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_215009598;
  }

  else
  {
    v4 = *(v1 + 216);

    v3 = sub_2150094E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2150094E0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_215009598()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[19];
  v5 = v0[20];
  swift_willThrow();

  (*(v5 + 8))(v3, v4);

  v6 = v0[1];

  return v6();
}

id sub_215009674(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 paperBundleModel];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 paperBundleURL];

    sub_2150A36F0();
    (*(v7 + 32))(a1, v9, v6);
    v13 = type metadata accessor for ICSystemPaperDocument();
    v14 = objc_allocWithZone(v13);
    *&v14[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] = a2;
    v21.receiver = v14;
    v21.super_class = v13;
    v15 = a2;
    v16 = objc_msgSendSuper2(&v21, sel_init);
    v17 = [*&v16[OBJC_IVAR____TtC11NotesShared21ICSystemPaperDocument_attachment] managedObjectContext];
    if (v17 && (v18 = v17, MEMORY[0x28223BE20](v17), *(&v21 - 2) = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43500), sub_2150A56D0(), v18, (v3 = v22) != 0))
    {
    }

    else
    {
      v3 = v15;
      sub_21507C17C(2, v3);

      swift_willThrow();
      (*(v7 + 8))(a1, v6);
    }
  }

  else
  {
    v19 = a2;
    sub_21507C17C(1, v19);

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_215009904()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0);
  result = sub_2150A4710();
  if (!v0)
  {
  }

  return result;
}

uint64_t sub_215009BC4(void *a1, uint64_t a2, const void *a3)
{
  v3[2] = a1;
  v6 = sub_2150A3750();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a3);
  sub_2150A36F0();
  swift_getObjCClassMetadata();
  v8 = a1;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_215009D0C;

  return static ICPaperAttachmentCreationHelper.copyNewPaperBundle(to:from:)(v8, v7);
}

uint64_t sub_215009D0C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *(*v1 + 24);
  v8 = *(*v1 + 16);
  v9 = *v1;

  (*(v6 + 8))(v5, v7);

  if (v2)
  {
    if (v4)
    {
      v10 = *(v3 + 48);
      v11 = sub_2150A35C0();

      (v10)[2](v10, v11);
      _Block_release(v10);
    }

    else
    {
    }
  }

  else if (v4)
  {
    v12 = *(v3 + 48);
    v12[2](v12, 0);
    _Block_release(v12);
  }

  v13 = *(v9 + 8);

  return v13();
}

uint64_t static ICPaperAttachmentCreationHelper.createPaperDocument(for:fromLegacyMediaAt:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B48);
  v3[20] = swift_task_alloc();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40) - 8);
  v3[21] = v4;
  v3[22] = *(v4 + 64);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v5 = sub_2150A3750();
  v3[25] = v5;
  v6 = *(v5 - 8);
  v3[26] = v6;
  v3[27] = *(v6 + 64);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21500A0B0, 0, 0);
}

uint64_t sub_21500A0B0()
{
  v1 = [*(v0 + 128) managedObjectContext];
  v2 = *(v0 + 160);
  if (!v1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B50);
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    goto LABEL_5;
  }

  v3 = v1;
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  sub_2150A56D0();
  v8 = *(v0 + 160);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B50);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  if (v10 == 1)
  {
LABEL_5:
    sub_214F302D4(*(v0 + 160), &qword_27CA43B48);

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 232);
  v14 = *(v0 + 240);
  v30 = v13;
  v32 = *(v0 + 224);
  v33 = *(v0 + 216);
  v16 = *(v0 + 200);
  v15 = *(v0 + 208);
  v17 = *(v0 + 192);
  v34 = *(v0 + 168);
  v18 = *(v0 + 160);
  v37 = *(v18 + *(v9 + 48));
  v38 = *(v0 + 184);
  v36 = *(v0 + 144);
  v31 = *(v0 + 136);
  *(v0 + 248) = v37;
  v19 = *(v9 + 64);
  v20 = *(v15 + 32);
  v20(v14, v18, v16);
  sub_214F48094(v18 + v19, v17);
  v35 = [objc_opt_self() ic_fileCoordinationOperationQueue];
  *(v0 + 256) = v35;
  v21 = *(v15 + 16);
  v21(v13, v14, v16);
  v21(v32, v31, v16);
  sub_214FE4C9C(v17, v38);
  v22 = *(v15 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = (v33 + v22 + v23) & ~v22;
  v25 = (v33 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (*(v34 + 80) + v25 + 8) & ~*(v34 + 80);
  v27 = swift_allocObject();
  *(v0 + 264) = v27;
  *(v27 + 16) = v36;
  v20(v27 + v23, v30, v16);
  v20(v27 + v24, v32, v16);
  *(v27 + v25) = v37;
  sub_214F48094(v38, v27 + v26);
  v28 = v37;
  v29 = v35;

  return MEMORY[0x2822009F8](sub_21500A4D4, 0, 0);
}

uint64_t sub_21500A4D4()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v7 = v0 + 32;
  v6 = v0[32];
  v5 = v7[1];
  v1[2] = v2;
  v1[3] = sub_21500A63C;
  v8 = swift_continuation_init();
  v9 = swift_allocObject();
  v9[2] = sub_21500AC10;
  v9[3] = v5;
  v9[4] = v8;
  v1[14] = sub_21500CAE0;
  v1[15] = v9;
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_214F44018;
  v1[13] = &block_descriptor_15;
  v10 = _Block_copy(v4);

  [v6 addOperationWithBlock_];
  _Block_release(v10);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_21500A63C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_21500A858;
  }

  else
  {
    v4 = *(v1 + 256);

    v3 = sub_21500A770;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21500A770()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);

  sub_214F302D4(v4, &qword_27CA41D40);
  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21500A858()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[24];
  swift_willThrow();

  sub_214F302D4(v6, &qword_27CA41D40);
  (*(v5 + 8))(v3, v4);

  v7 = v0[1];

  return v7();
}

id sub_21500A970@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v26 - v8;
  v10 = sub_2150A3750();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v26 - v15;
  result = sub_215009674(v14, a1);
  if (!v2)
  {
    v18 = result;
    v26[0] = *(v11 + 32);
    v26[1] = 0;
    (v26[0])(v16, v14, v10);
    v19 = [a1 fallbackPDFURL];
    if (v19)
    {
      v20 = v19;
      sub_2150A36F0();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = v27;
    (*(v11 + 56))(v7, v21, 1, v10);
    sub_214F48094(v7, v9);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B50);
    v24 = *(v23 + 48);
    v25 = *(v23 + 64);
    (v26[0])(v22, v16, v10);
    *(v22 + v24) = v18;
    sub_214F48094(v9, v22 + v25);
    return (*(*(v23 - 8) + 56))(v22, 0, 1, v23);
  }

  return result;
}

uint64_t sub_21500AC10()
{
  v1 = *(sub_2150A3750() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = (v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40) - 8);
  return sub_21500C06C(v0 + v4, v0 + v5, *(v0 + v6), v0 + ((*(v7 + 80) + v6 + 8) & ~*(v7 + 80)));
}

uint64_t sub_21500AE90(void *a1, uint64_t a2, const void *a3)
{
  v3[2] = a1;
  v6 = sub_2150A3750();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v3[6] = _Block_copy(a3);
  sub_2150A36F0();
  swift_getObjCClassMetadata();
  v8 = a1;
  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_21500CAD8;

  return static ICPaperAttachmentCreationHelper.createPaperDocument(for:fromLegacyMediaAt:)(v8, v7);
}

id static ICPaperAttachmentCreationHelper.createPaperDocument(for:fromLegacyMediaAt:)(void *a1, uint64_t a2)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = sub_2150A3750();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  result = sub_215009674(v11, a1);
  if (!v2)
  {
    v15 = result;
    v20 = 0;
    (*(v8 + 32))(v13, v11, v7);
    v16 = [a1 managedObjectContext];
    if (v16)
    {
      v17 = v16;
      MEMORY[0x28223BE20](v16);
      *(&v19 - 2) = a1;
      v18 = v20;
      sub_2150A56D0();
      v20 = v18;
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7);
    }

    sub_21500C06C(v13, v21, v15, v6);

    sub_214F302D4(v6, &qword_27CA41D40);
    return (*(v8 + 8))(v13, v7);
  }

  return result;
}

uint64_t sub_21500B244@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 fallbackPDFURL];
  if (v3)
  {
    v4 = v3;
    sub_2150A36F0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_2150A3750();
  return (*(*(v6 - 8) + 56))(a2, v5, 1, v6);
}

id static ICPaperAttachmentCreationHelper.createSystemPaperAttachment(with:in:)(uint64_t a1, void *a2)
{
  v23[1] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA434F0);
  v23[0] = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v23 - v4;
  v6 = sub_2150A3750();
  v24 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v25 = v23 - v10;
  v11 = sub_2150A3A00();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  (*(v12 + 8))(v14, v11);
  v15 = sub_2150A4A90();

  v16 = [a2 addSystemPaperAttachmentWithIdentifier_];

  v17 = sub_215009674(v9, v16);
  v26 = v3;
  (*(v24 + 32))(v25, v9, v6);
  sub_2150A45B0();
  sub_2150A48D0();
  v18 = sub_2150A4590();
  sub_2150A4830();
  v19 = objc_opt_self();
  v20 = [v19 sharedState];
  [v20 beginBlockingDeauthentication];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0);
  sub_2150A4750();
  v22 = [v19 sharedState];
  [v22 endBlockingDeauthentication];

  (*(v23[0] + 8))(v5, v26);
  (*(v24 + 8))(v25, v6);
  return v16;
}

ICPaperAttachmentCreationHelper __swiftcall ICPaperAttachmentCreationHelper.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_21500BB9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_2150A3750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43B60);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = *(v4 + 16);
  v19 = a1;
  v10(v6, a1, v3);

  sub_2150A4840();
  sub_2150A4510();
  v11 = sub_2150A4550();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(v18, v9, v11);
  }

  sub_214F302D4(v9, &qword_27CA43B60);
  type metadata accessor for ICPaperDocumentError(0);
  v20 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = sub_2150A4AD0();
  *(inited + 40) = v14;
  *(inited + 72) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  v10(boxed_opaque_existential_1, v19, v3);
  sub_214FA4BBC(inited);
  swift_setDeallocating();
  sub_214F302D4(inited + 32, &qword_27CA41D60);
  sub_21500CA8C(&qword_27CA41B88, type metadata accessor for ICPaperDocumentError);
  sub_2150A35B0();
  return swift_willThrow();
}

void sub_21500BE8C()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  v2 = sub_2150A36B0();
  v3 = sub_2150A36B0();
  v14[0] = 0;
  v4 = [v1 linkItemAtURL:v2 toURL:v3 error:v14];

  if (v4)
  {
    v5 = v14[0];
  }

  else
  {
    v6 = v14[0];
    v7 = sub_2150A35D0();

    swift_willThrow();
    v8 = [v0 defaultManager];
    v9 = sub_2150A36B0();
    v10 = sub_2150A36B0();
    v14[0] = 0;
    v11 = [v8 copyItemAtURL:v9 toURL:v10 error:v14];

    if (v11)
    {
      v12 = v14[0];
    }

    else
    {
      v13 = v14[0];
      sub_2150A35D0();

      swift_willThrow();
    }
  }
}

uint64_t sub_21500C06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v35 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_2150A3750();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2150A48B0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43548);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - v15;
  sub_2150A48A0();
  v36 = a2;
  v37 = a3;
  v34 = a3;
  sub_2150A4550();
  sub_21500CA8C(&qword_27CA435D0, MEMORY[0x277CD94D0]);
  v17 = v38;
  result = sub_2150A47F0();
  if (!v17)
  {
    v28 = v11;
    v29 = v8;
    v30 = v9;
    v31 = v14;
    v19 = v33;
    v38 = v13;
    v20 = objc_opt_self();
    v21 = [v20 sharedState];
    [v21 beginBlockingDeauthentication];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA436A8);
    sub_2150A4750();
    v22 = [v20 sharedState];
    [v22 endBlockingDeauthentication];

    v23 = v29;
    sub_214FE4C9C(v32, v29);
    v24 = v30;
    if ((*(v19 + 48))(v23, 1, v30) == 1)
    {
      (*(v31 + 8))(v16, v38);
      return sub_214F302D4(v23, &qword_27CA41D40);
    }

    else
    {
      v25 = v28;
      (*(v19 + 32))(v28, v23, v24);
      sub_21500BE8C();
      v26 = v38;
      v27 = v31;
      (*(v19 + 8))(v25, v24);
      return (*(v27 + 8))(v16, v26);
    }
  }

  return result;
}

uint64_t sub_21500C610()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214F557A8;

  return sub_21500AE90(v2, v3, v4);
}

uint64_t sub_21500C6D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214F557A8;

  return sub_2150175CC(v2, v3, v4);
}

uint64_t sub_21500C790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214F557A8;

  return sub_2150176B4(a1, v4, v5, v6);
}

uint64_t objectdestroy_18Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21500C8A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_214F557A8;

  return sub_215009BC4(v2, v3, v4);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21500C9A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214F53FB0;

  return sub_2150176B4(a1, v4, v5, v6);
}

uint64_t sub_21500CA8C(unint64_t *a1, void (*a2)(uint64_t))
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

NotesShared::TableFormat::Formats_optional sub_21500CAE4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = TableFormat.Formats.init(rawValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t ArgumentDecodable<>.init(fromArgument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v36 = a2;
  v37 = a6;
  v10 = sub_2150A57E0();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v35 = &v31 - v11;
  v34 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_2150A57E0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v31 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v19 = MEMORY[0x28223BE20](v15);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  (*(a5 + 24))(a1, v36, AssociatedTypeWitness, a5);
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v24 = *(a3 - 8);
  }

  else
  {
    (*(v18 + 32))(v23, v17, AssociatedTypeWitness);
    (*(v18 + 16))(v21, v23, AssociatedTypeWitness);
    v25 = v35;
    sub_2150A4E00();
    (*(v18 + 8))(v23, AssociatedTypeWitness);
    v24 = *(a3 - 8);
    v26 = v24;
    if (!(*(v24 + 48))(v25, 1, a3))
    {
      v30 = v37;
      (*(v24 + 32))(v37, v25, a3);
      v28 = v30;
      v27 = 0;
      return (*(v26 + 56))(v28, v27, 1, a3);
    }

    (*(v32 + 8))(v25, v33);
  }

  v26 = v24;
  v27 = 1;
  v28 = v37;
  return (*(v26 + 56))(v28, v27, 1, a3);
}

uint64_t static ArgumentDecodable<>.typeSummary(forName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v25[-v14];
  sub_2150A5B40();
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = sub_214F86288(sub_21500EEDC, v25, AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v17);
  (*(v13 + 8))(v15, AssociatedTypeWitness);
  v34 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_2150118F0(&qword_280C24540);
  v19 = sub_2150A4A20();
  v21 = v20;

  v34 = 0;
  v35 = 0xE000000000000000;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v31 = 0;
  v22 = sub_2150A6100();
  MEMORY[0x2160617E0](v22);

  sub_2150A49F0();
  v34 = v32;
  v35 = v33;
  MEMORY[0x2160617E0](40, 0xE100000000000000);
  MEMORY[0x2160617E0](v19, v21);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v31 = 0;
  v23 = sub_2150A6100();
  MEMORY[0x2160617E0](v23);

  sub_2150A49F0();
  MEMORY[0x2160617E0](v32, v33);

  return v34;
}

uint64_t sub_21500D250@<X0>(_BYTE *a1@<X8>)
{
  result = _sSb11NotesSharedE12fromArgumentSbSgSS_tcfC_0();
  *a1 = result;
  return result;
}

uint64_t sub_21500D298@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

Swift::Int_optional __swiftcall Int.init(fromArgument:)(Swift::String fromArgument)
{
  v1 = sub_2150100FC(fromArgument._countAndFlagsBits, fromArgument._object);
  v3 = v2 & 1;
  result.value = v1;
  result.is_nil = v3;
  return result;
}

void __swiftcall Float.init(fromArgument:)(Swift::Float_optional *__return_ptr retstr, Swift::String fromArgument)
{
  v2 = 0;
  sub_21500FA00(fromArgument._countAndFlagsBits, fromArgument._object, &v2, MEMORY[0x277D84FB0]);
}

uint64_t sub_21500D448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_21500FA00(a1, a2, &v7, MEMORY[0x277D84FB0]);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 4) = !v4;
  return result;
}

Swift::Double_optional __swiftcall Double.init(fromArgument:)(Swift::String fromArgument)
{
  v4 = 0;
  v1 = sub_21500FA00(fromArgument._countAndFlagsBits, fromArgument._object, &v4, MEMORY[0x277D84FA8]);

  v3 = v1 && v4;
  result.value = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_21500D5C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = 0;
  v4 = sub_21500FA00(a1, a2, &v7, MEMORY[0x277D84FA8]);

  v6 = v7;
  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  *(a3 + 8) = !v4;
  return result;
}

uint64_t Data.init(fromArgument:)()
{
  v0 = sub_2150A3770();
  v2 = v1;
  sub_214FE1214(v0, v1);

  if (v2 >> 60 != 15)
  {
    sub_214FE1228(v0, v2);
  }

  return v0;
}

double sub_21500D720@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2150C8880;
  return result;
}

uint64_t sub_21500D730@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2150A3770();
  v4 = v3;
  sub_214FE1214(v2, v3);

  if (v4 >> 60 != 15)
  {
    result = sub_214FE1228(v2, v4);
  }

  *a1 = v2;
  a1[1] = v4;
  return result;
}

uint64_t Date.init(fromArgument:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a3;
  v35 = sub_2150A37E0();
  MEMORY[0x28223BE20](v35);
  v33 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2150A38D0();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v36 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v37 = &v33 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v34 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  v16 = sub_2150A3960();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v21 = sub_2150A4B40();
  v22 = v20;
  if (v21 == 1953718640 && v20 == 0xE400000000000000 || (sub_2150A6270() & 1) != 0)
  {

    sub_2150A37F0();
    goto LABEL_5;
  }

  if (v21 == 7827310 && v22 == 0xE300000000000000 || (sub_2150A6270() & 1) != 0)
  {

    _s10Foundation4DateV11NotesSharedE15defaultArgumentACvgZ_0();
    goto LABEL_5;
  }

  if (v21 == 0x657275747566 && v22 == 0xE600000000000000)
  {

LABEL_15:

    sub_2150A3860();
    goto LABEL_5;
  }

  v25 = sub_2150A6270();

  if (v25)
  {
    goto LABEL_15;
  }

  v40 = v38;
  v41 = a2;

  MEMORY[0x21605FD00](v26);
  sub_215011A70(&qword_27CA43B68, MEMORY[0x277CC94A0]);
  sub_2150A3970();
  v27 = v37;
  v28 = v34;
  v29 = *(v17 + 56);
  v30 = v29(v15, 0, 1, v16);
  v40 = v38;
  v41 = a2;
  MEMORY[0x21605FCF0](v30);
  sub_215011A70(&qword_27CA43B70, MEMORY[0x277CC9428]);
  sub_2150A3970();
  v31 = v36;
  v29(v28, 0, 1, v16);
  sub_214F71500(v15, v31);
  v32 = *(v17 + 48);
  if (v32(v31, 1, v16) == 1)
  {
    sub_214F71500(v28, v27);
    if (v32(v31, 1, v16) != 1)
    {
      sub_214F302D4(v31, &qword_27CA41DD0);
    }
  }

  else
  {
    sub_214F302D4(v28, &qword_27CA41DD0);
    (*(v17 + 32))(v27, v31, v16);
    v29(v27, 0, 1, v16);
  }

  if (v32(v27, 1, v16) == 1)
  {
    sub_214F302D4(v27, &qword_27CA41DD0);
    return v29(v39, 1, 1, v16);
  }

  (*(v17 + 32))(v19, v27, v16);
LABEL_5:
  v23 = v39;
  (*(v17 + 32))(v39, v19, v16);
  return (*(v17 + 56))(v23, 0, 1, v16);
}

uint64_t sub_21500DEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19 - v13;
  a4(a1, a2);

  v15 = a5(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    sub_214F302D4(v14, a3);
    v17 = 1;
  }

  else
  {
    (*(v16 + 32))(a6, v14, v15);
    v17 = 0;
  }

  return (*(v16 + 56))(a6, v17, 1, v15);
}

uint64_t sub_21500E0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X4>, void (*a5)(uint64_t, uint64_t)@<X6>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  a5(a1, a2);

  v15 = *(a3 - 8);
  if ((*(v15 + 48))(v14, 1, a3))
  {
    sub_214F302D4(v14, a4);
    v16 = 1;
  }

  else
  {
    (*(v15 + 32))(a6, v14, a3);
    v16 = 0;
  }

  return (*(v15 + 56))(a6, v16, 1, a3);
}

uint64_t Optional<A>.init(fromArgument:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  (*(a1 + 24))();
  v3 = sub_2150A57E0();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Array<A>.init(fromArgument:)(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x277D84F90];
  v5 = sub_214FA4CEC(MEMORY[0x277D84F90]);
  type metadata accessor for ArgumentDecoder.Decoder();
  inited = swift_initStackObject();
  *(inited + 40) = v4;
  *(inited + 48) = sub_214FA4E00(v4);
  *(inited + 16) = v4;
  *(inited + 24) = v5;
  *(inited + 32) = 0;

  sub_214FA5CE8(v7, v4, a1, a2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  sub_2150118F0(&qword_27CA43B78);
  v8 = sub_2150A4D80();

  swift_setDeallocating();

  return v8;
}

uint64_t sub_21500E4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = (*(a4 + 32))();
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](a6, a7);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return v12;
}

uint64_t sub_21500E664@<X0>(uint64_t *a1@<X8>)
{
  result = static Array<A>.defaultArgument.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21500E690@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Array<A>.init(fromArgument:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t static Set<>.defaultArgument.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2150A4F40();
  if (sub_2150A4F80())
  {
    v6 = sub_2150103FC(v5, a1, a3);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t Set<>.init(fromArgument:)(uint64_t a1, unint64_t a2)
{
  result = Array<A>.init(fromArgument:)(a1, a2);
  if (result)
  {
    sub_2150A4FD0();
    swift_getWitnessTable();
    return sub_2150A5340();
  }

  return result;
}

uint64_t sub_21500E7C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = static Set<>.defaultArgument.getter(*(a1 + 16), a2, *(a1 + 24));
  *a3 = result;
  return result;
}

uint64_t sub_21500E7F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Set<>.init(fromArgument:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t static ArgumentDecodable<>.defaultArgument.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = sub_2150A57E0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(a2 + 16))(AssociatedTypeWitness, a2);
  sub_2150A4E00();
  (*(v8 + 16))(v11, v13, v7);
  v14 = *(a1 - 8);
  v15 = (*(v14 + 48))(v11, 1, a1);
  v16 = *(v8 + 8);
  if (v15 == 1)
  {
    result = v16(v11, v7);
    __break(1u);
  }

  else
  {
    v16(v13, v7);
    return (*(v14 + 32))(a3, v11, a1);
  }

  return result;
}

uint64_t sub_21500EA78()
{
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v0 = sub_2150A6100();
  MEMORY[0x2160617E0](v0);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A5DB0();

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v1 = sub_2150A6100();
  MEMORY[0x2160617E0](v1);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return 0;
}

uint64_t sub_21500EC7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v12 = a2;
  v11[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = v11 - v4;
  v15 = 0;
  v16 = 0xE000000000000000;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v17 = 35;
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](v13, v14);

  sub_2150A4DF0();
  sub_2150A6250();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v17 = 0;
  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  sub_2150A49F0();
  MEMORY[0x2160617E0](v13, v14);

  v9 = v16;
  v10 = v12;
  *v12 = v15;
  v10[1] = v9;
  return result;
}

void *sub_21500EF04(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42300);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_21500EF78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_2150A4D30();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21500F504();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2150A5C80();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21500F504()
{
  v0 = sub_2150A4D40();
  v4 = sub_21500F584(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_21500F584(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_2150A5820();
    if (!v9 || (v10 = v9, v11 = sub_21500EF04(v9, 0), v12 = sub_21500F6DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2150A4BA0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2150A4BA0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2150A5C80();
LABEL_4:

  return sub_2150A4BA0();
}

unint64_t sub_21500F6DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21500F8FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2150A4C80();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2150A5C80();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21500F8FC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_2150A4C60();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_21500F8FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2150A4CC0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x216061830](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

BOOL sub_21500FA00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_2150A5AF0();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t _sSS11NotesSharedE11typeSummary7forNameS2S_tFZ_0(uint64_t a1, uint64_t a2)
{
  sub_2150A5B20();
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  sub_2150A49F0();

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](60, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](a1, a2);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v8 = sub_2150A6100();
  MEMORY[0x2160617E0](v8);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  MEMORY[0x2160617E0](62, 0xE100000000000000);
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v10 = sub_2150A6100();
  MEMORY[0x2160617E0](v10);

  sub_2150A49F0();
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  return 0;
}

uint64_t _sSb11NotesSharedE12fromArgumentSbSgSS_tcfC_0()
{
  v0 = sub_2150A4B40();
  v2 = v1;

  if (v0 == 7562617 && v2 == 0xE300000000000000 || (sub_2150A6270() & 1) != 0 || v0 == 1702195828 && v2 == 0xE400000000000000 || (sub_2150A6270() & 1) != 0 || v0 == 49 && v2 == 0xE100000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (v0 == 28526 && v2 == 0xE200000000000000 || (sub_2150A6270() & 1) != 0 || v0 == 0x65736C6166 && v2 == 0xE500000000000000 || (sub_2150A6270() & 1) != 0 || v0 == 48 && v2 == 0xE100000000000000)
  {

    return 0;
  }

  else
  {
    v4 = sub_2150A6270();

    result = 0;
    if ((v4 & 1) == 0)
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_2150100FC(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_2150A5C80();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_21500EF78(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2150103FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v50 = &v38 - v11;
  v39 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v38 - v13;
  if (sub_2150A4F80())
  {
    sub_2150A5AD0();
    v15 = sub_2150A5AC0();
  }

  else
  {
    v15 = MEMORY[0x277D84FA0];
  }

  v43 = sub_2150A4F80();
  if (!v43)
  {
    return v15;
  }

  v16 = 0;
  v48 = (v6 + 16);
  v49 = v15 + 56;
  v45 = v6 + 32;
  v47 = (v6 + 8);
  v40 = v6;
  v41 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_2150A4F60();
    sub_2150A4F00();
    if (v17)
    {
      v18 = *(v6 + 16);
      v18(v14, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16), a2);
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
        goto LABEL_20;
      }
    }

    else
    {
      result = sub_2150A5BB0();
      if (v39 != 8)
      {
        goto LABEL_23;
      }

      v51 = result;
      v18 = *v48;
      (*v48)(v14, &v51, a2);
      swift_unknownObjectRelease();
      v19 = __OFADD__(v16, 1);
      v20 = v16 + 1;
      if (v19)
      {
LABEL_20:
        __break(1u);
        return v15;
      }
    }

    v46 = v20;
    v44 = *(v6 + 32);
    v44(v50, v14, a2);
    v21 = sub_2150A49A0();
    v22 = v15;
    v23 = -1 << *(v15 + 32);
    v24 = v21 & ~v23;
    v25 = v24 >> 6;
    v26 = *(v49 + 8 * (v24 >> 6));
    v27 = 1 << v24;
    v28 = *(v6 + 72);
    if (((1 << v24) & v26) != 0)
    {
      v29 = ~v23;
      do
      {
        v18(v9, (*(v22 + 48) + v28 * v24), a2);
        v30 = a3;
        v31 = sub_2150A4A80();
        v32 = *v47;
        (*v47)(v9, a2);
        if (v31)
        {
          v32(v50, a2);
          a3 = v30;
          v6 = v40;
          v5 = v41;
          v15 = v22;
          goto LABEL_7;
        }

        v24 = (v24 + 1) & v29;
        v25 = v24 >> 6;
        v26 = *(v49 + 8 * (v24 >> 6));
        v27 = 1 << v24;
        a3 = v30;
      }

      while (((1 << v24) & v26) != 0);
      v6 = v40;
      v5 = v41;
    }

    v33 = v50;
    *(v49 + 8 * v25) = v27 | v26;
    v34 = *(v22 + 48) + v28 * v24;
    v15 = v22;
    result = (v44)(v34, v33, a2);
    v36 = *(v22 + 16);
    v19 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v19)
    {
      break;
    }

    *(v22 + 16) = v37;
LABEL_7:
    v14 = v42;
    v16 = v46;
    if (v46 == v43)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}