uint64_t sub_252A34D1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BB0, &qword_252E41DA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252A39AE0();
  sub_252E37F74();
  if (!v2)
  {
    LOBYTE(v80) = 0;
    *&v55 = sub_252E37BA4();
    *(&v55 + 1) = v22;
    LOBYTE(v80) = 1;
    v23 = sub_252E37BA4();
    v53 = v24;
    v54 = v23;
    LOBYTE(v80) = 2;
    *&v52 = sub_252E37BA4();
    *(&v52 + 1) = v25;
    LOBYTE(v80) = 3;
    v51 = sub_252E37BA4();
    v57 = v26;
    LOBYTE(v80) = 4;
    v27 = sub_252E37BA4();
    v67 = 0;
    *&v66 = v27;
    *(&v66 + 1) = v28;
    LOBYTE(v68) = 5;
    sub_25298270C();
    v29 = v67;
    sub_252E37BE4();
    if (v29)
    {
      v67 = v29;
      (*(v6 + 8))(v9, v5);
      v62 = 0;
      v63 = 0;
      v60 = 0;
      v61 = 0;
      v64 = 0;
      v65 = 0;
      v59 = 52;
      v19 = 0;
    }

    else
    {
      v30 = a2;
      v31 = v80;
      LOBYTE(v80) = 6;
      v32 = sub_252E37BA4();
      v59 = v31;
      v64 = v32;
      v65 = v33;
      LOBYTE(v80) = 7;
      v61 = sub_252E37BA4();
      v63 = v34;
      LOBYTE(v80) = 8;
      v35 = sub_252E37BA4();
      v67 = 0;
      v60 = v35;
      v62 = v36;
      LOBYTE(v80) = 9;
      sub_252E37C24();
      v67 = 0;
      v19 = v37;
      LOBYTE(v68) = 10;
      sub_252A39B34();
      v38 = v67;
      sub_252E37C64();
      v67 = v38;
      if (!v38)
      {
        v58 = v80;
        v78 = 11;
        sub_252A39B88();
        v39 = v67;
        sub_252E37C64();
        v67 = v39;
        if (!v39)
        {
          (*(v6 + 8))(v9, v5);
          HIDWORD(v50) = v79;
          v40 = v55;
          v68 = v55;
          v41 = v53;
          *&v69 = v54;
          *(&v69 + 1) = v53;
          v42 = v52;
          v70 = v52;
          v43 = v51;
          v44 = v57;
          *&v71 = v51;
          *(&v71 + 1) = v57;
          v72 = v66;
          LOBYTE(v73) = v59;
          *(&v73 + 1) = v64;
          *&v74 = v65;
          *(&v74 + 1) = v61;
          *&v75 = v63;
          *(&v75 + 1) = v60;
          *&v76 = v62;
          *(&v76 + 1) = v19;
          LOBYTE(v77) = v58;
          HIBYTE(v77) = v79;
          v45 = v76;
          *(v30 + 112) = v75;
          *(v30 + 128) = v45;
          v46 = v74;
          *(v30 + 80) = v73;
          *(v30 + 96) = v46;
          v47 = v69;
          *v30 = v68;
          *(v30 + 16) = v47;
          v48 = v70;
          v49 = v72;
          *(v30 + 48) = v71;
          *(v30 + 64) = v49;
          *(v30 + 32) = v48;
          *(v30 + 144) = v77;
          sub_25297DE08(&v68, &v80);
          __swift_destroy_boxed_opaque_existential_1(v56);
          v80 = v40;
          v81 = v54;
          v82 = v41;
          v83 = v42;
          v84 = v43;
          v85 = v44;
          v86 = v66;
          v87 = v59;
          v89 = v64;
          v90 = v65;
          v91 = v61;
          v92 = v63;
          v93 = v60;
          v94 = v62;
          v95 = v19;
          v96 = v58;
          v20 = BYTE4(v50);
          goto LABEL_5;
        }

        (*(v6 + 8))(v9, v5);
        goto LABEL_9;
      }

      (*(v6 + 8))(v9, v5);
    }

    v58 = 2;
LABEL_9:
    v17 = *(&v55 + 1);
    v18 = v55;
    v15 = v53;
    v16 = v54;
    v13 = *(&v52 + 1);
    v14 = v52;
    v12 = v51;
    goto LABEL_4;
  }

  v67 = v2;
  v62 = 0;
  v63 = 0;
  v60 = 0;
  v61 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0uLL;
  v57 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v58 = 2;
  v59 = 52;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v56);
  *&v80 = v18;
  *(&v80 + 1) = v17;
  v81 = v16;
  v82 = v15;
  *&v83 = v14;
  *(&v83 + 1) = v13;
  v84 = v12;
  v85 = v57;
  v86 = v66;
  v87 = v59;
  *v88 = v98[0];
  *&v88[3] = *(v98 + 3);
  v89 = v64;
  v90 = v65;
  v91 = v61;
  v92 = v63;
  v93 = v60;
  v94 = v62;
  v95 = v19;
  v96 = v58;
  v20 = 5;
LABEL_5:
  v97 = v20;
  return sub_2529AEC80(&v80);
}

uint64_t sub_252A35494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252A3EEE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252A354C8(uint64_t a1)
{
  v2 = sub_252A39AE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252A35504(uint64_t a1)
{
  v2 = sub_252A39AE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252A35540()
{
  sub_252E37EC4();
  sub_252A34930();
  return sub_252E37F14();
}

uint64_t sub_252A35584()
{
  sub_252E37EC4();
  sub_252A34930();
  return sub_252E37F14();
}

unint64_t sub_252A355F8()
{
  result = qword_27F541BA8;
  if (!qword_27F541BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541BA8);
  }

  return result;
}

uint64_t sub_252A3564C@<X0>(void (*a1)(char *, char *, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v59 = a1;
  v3 = sub_252E36CA4();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_252E36D04();
  v47 = *(v49 - 8);
  v6 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36CB4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_252E36C24();
  v43 = *(v60 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x28223BE20](v60);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_252E36B34();
  v45 = *(v46 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x28223BE20](v46);
  v44 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_252E36AB4();
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F650 != -1)
  {
    swift_once();
  }

  v23 = qword_27F544FD8;
  sub_252E36A94();
  sub_252E375D4();
  v54 = v23;
  sub_252E36A84();
  sub_252A35E88(v59, &aBlock);
  v52 = aBlock;
  v51 = v63;
  v24 = MEMORY[0x277D84F90];
  v53 = BYTE1(v63);
  v55 = v22;
  if ((v63 & 0x100) != 0)
  {
    v50 = v19;
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544E98);
    sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E72A50, 0xD000000000000075, 0x8000000252E72A80);
    sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
    (*(v10 + 104))(v13, *MEMORY[0x277D851C0], v9);
    v26 = sub_252E375A4();
    (*(v10 + 8))(v13, v9);
    v66 = sub_252A39C84;
    v67 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v63 = 1107296256;
    v64 = sub_252AD686C;
    v65 = &block_descriptor_4;
    v27 = _Block_copy(&aBlock);
    sub_252E36CD4();
    v61 = v24;
    sub_252A3E6C0(qword_2814B0298, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
    v28 = v48;
    v29 = v58;
    sub_252E37824();
    MEMORY[0x2530ADA30](0, v8, v28, v27);
    _Block_release(v27);

    (*(v57 + 8))(v28, v29);
    (*(v47 + 8))(v8, v49);

    v30 = v24;
    v31 = v24;
    v19 = v50;
  }

  else
  {
    v32 = sub_252A3C1E0();
    sub_252A3E31C(v32);
    v33 = *(v32 + 2);
    if (v33)
    {
      v49 = a2;
      v50 = v19;
      aBlock = v24;
      sub_252E37AB4();
      v34 = *(v45 + 16);
      v35 = *(v45 + 80);
      v48 = v32;
      v36 = &v32[(v35 + 32) & ~v35];
      v58 = *(v45 + 72);
      v59 = v34;
      v57 = v43 + 8;
      v37 = (v45 + 8);
      v38 = v46;
      v39 = v44;
      do
      {
        v59(v39, v36, v38);
        sub_252E36B24();
        sub_252E36C14();
        (*v57)(v16, v60);
        (*v37)(v39, v38);
        sub_252E37A94();
        v40 = *(aBlock + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v36 += v58;
        --v33;
      }

      while (v33);

      v24 = aBlock;
      a2 = v49;
      v19 = v50;
    }

    else
    {
    }

    v30 = sub_252B05604(v24);
    v31 = sub_252B058DC(v24);
  }

  *a2 = v52;
  *(a2 + 8) = v51;
  *(a2 + 9) = v53;
  *(a2 + 16) = v30;
  *(a2 + 24) = v31;
  sub_252E375C4();
  v41 = v55;
  sub_252E36A74();
  return (*(v56 + 8))(v41, v19);
}

uint64_t sub_252A35E88@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v2 = sub_252B05484(a1);
  v3 = v2;
  if (v2 >> 62)
  {
LABEL_41:
    v26 = v3 & 0xFFFFFFFFFFFFFF8;
    v27 = sub_252E378C4();
  }

  else
  {
    v26 = v2 & 0xFFFFFFFFFFFFFF8;
    v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v25 = 4;
  while (1)
  {
    v5 = v4;
    if (v27 == v4)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v4, v3);
      if (__OFADD__(v5, 1))
      {
        goto LABEL_39;
      }
    }

    else
    {
      if (v4 >= *(v26 + 16))
      {
        goto LABEL_40;
      }

      v6 = *(v3 + 8 * v4 + 32);

      if (__OFADD__(v5, 1))
      {
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }
    }

    v7 = sub_252A39CA0();
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544E98);
    sub_252E379F4();

    v9 = sub_252E359E4();
    MEMORY[0x2530AD570](v9);

    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E72FB0);
    if (v7)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v7)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v10, v11);

    sub_252CC3D90(0xD000000000000012, 0x8000000252E72F90, 0xD000000000000075, 0x8000000252E72A80);

    v4 = v5 + 1;
    if (v7)
    {
      v12 = 5;
      goto LABEL_22;
    }
  }

  v25 = 0;
  v12 = 3;
LABEL_22:
  v13 = sub_252A39DB8(v3);

  if (qword_27F53F550 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544E98);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E72FD0);
  if (v13)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (v13)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  if ((v13 & 1) == 0)
  {
    v12 = v25;
  }

  MEMORY[0x2530AD570](v15, v16);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E72FF0);
  v17 = v27 == v5;
  v18 = v27 != v5;
  if (v27 == v5)
  {
    v19 = 0x65736C6166;
  }

  else
  {
    v19 = 1702195828;
  }

  v20 = (v27 == v5) & ~v13;
  v21 = (v13 | v18) & 1;
  if (v17)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v19, v22);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E72A80);

  *a2 = v12;
  *(a2 + 8) = v21;
  *(a2 + 9) = v20;
  return result;
}

uint64_t sub_252A3625C()
{
  v0 = sub_252B680FC();
  swift_beginAccess();
  v1 = *(v0 + 208);
  [v1 lock];
  *(v0 + 200) = 1;
  [v1 unlock];
  swift_endAccess();

  v2 = sub_252A3C1E0();
  sub_252A3E31C(v2);
}

void *sub_252A362EC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v11 = MEMORY[0x277D84F90];
  if (!(*result >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_21:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_20:
  result = sub_252E378C4();
  v3 = result;
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v2);
        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v2 + 8 * v6 + 32);

        v4 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      sub_252E349D4();

      if (v10)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    MEMORY[0x2530AD700](result);
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v8 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    result = sub_252E372D4();
    v5 = v11;
  }

  while (v4 != v3);
LABEL_22:
  *a2 = v5;
  return result;
}

void sub_252A36464(__int128 *a1@<X8>)
{
  v144 = a1;
  v3 = sub_252E34B94();
  v135 = *(v3 - 8);
  v4 = *(v135 + 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E34804();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v123 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v123 - v16;
  type metadata accessor for HomeFilter();
  v18 = sub_252E36BD4();
  v141 = v3;
  v142 = v8;
  v131 = v15;
  v132 = v17;
  v143 = v7;
  if (v18)
  {
    v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    v156 = 0u;
    LOBYTE(v161[0]) = 52;
    *(v161 + 1) = v170[0];
    DWORD1(v161[0]) = *(v170 + 3);
    *(v161 + 8) = 0u;
    *(&v161[1] + 8) = 0u;
    *(&v161[2] + 8) = 0u;
    *(&v161[3] + 1) = 0;
    v162 = 1282;
    v20 = v18;
    sub_2529AEC80(&v156);
    v125 = v20;
    sub_252A379FC(&v163);
    v21 = *(&v163 + 1);
    v22 = v163;
    v23 = *(&v164 + 1);
    v24 = v164;
    v25 = *(&v165 + 1);
    v6 = v165;
    v142 = *(&v166 + 1);
    v143 = v166;
    v140 = *(&v167 + 1);
    v141 = v167;
    LODWORD(v139) = LOBYTE(v168[0]);
    v170[0] = *(v168 + 1);
    *(v170 + 3) = DWORD1(v168[0]);
    v26 = *(&v168[0] + 1);
    v27 = *&v168[1];
    v131 = *&v168[2];
    v132 = *(&v168[1] + 1);
    v127 = *&v168[3];
    v128 = *(&v168[2] + 1);
    v2 = *(&v168[3] + 1);
    v126 = v169;
    v124 = HIBYTE(v169);
    if (qword_27F53F550 != -1)
    {
      goto LABEL_86;
    }

    goto LABEL_3;
  }

  v24 = v1;
  sub_252E36C14();
  v51 = sub_252E35A04();

  v52 = v51;
  v53 = *(v51 + 16);
  v133 = v1;
  v25 = v144;
  v140 = v53;
  if (v53)
  {
    v54 = 0;
    v55 = v142;
    v56 = v143;
    v139 = v52 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
    v138 = (v142 + 16);
    LODWORD(v137) = *MEMORY[0x277D5E6D8];
    v57 = v135;
    v135 = (v135 + 8);
    v136 = v57 + 104;
    v134 = (v142 + 8);
    v58 = v141;
    do
    {
      if (v54 >= *(v52 + 16))
      {
        __break(1u);
        swift_once();
        v19 = sub_252E36AD4();
        __swift_project_value_buffer(v19, qword_27F544E98);
        *&v163 = 0;
        *(&v163 + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E72BA0);
        *&v156 = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
        sub_252E37AE4();
        sub_252CC4050(v163, *(&v163 + 1), 0xD000000000000075, 0x8000000252E72A80, 0xD000000000000019, 0x8000000252E72BD0, 485);

        v38 = 0;
        v39 = 0;
        v37 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v36 = 0;
        v44 = 0;
        v45 = 0;
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v29 = 0;
        v49 = 0;
        v31 = 0;
        v32 = 0;
        v43 = 5;
        v33 = 2;
        v2 = 0;
        v50 = 52;
        v25 = v144;
        goto LABEL_102;
      }

      v59 = v52;
      (*(v55 + 16))(v12, v139 + *(v55 + 72) * v54, v56);
      v60 = sub_252E347F4();
      v62 = v61;
      (*v136)(v6, v137, v58);
      v63 = sub_252E34B84();
      v65 = v64;
      (*v135)(v6, v58);
      if (v62)
      {
        if (v60 == v63 && v62 == v65)
        {

LABEL_59:

          v102 = v143;
          v103 = v131;
          v104 = *(v142 + 32);
          v104(v131, v12, v143);
          v163 = 0u;
          v164 = 0u;
          v165 = 0u;
          v166 = 0u;
          v167 = 0u;
          LOBYTE(v168[0]) = 52;
          *(v168 + 1) = v170[0];
          v21 = &v163;
          DWORD1(v168[0]) = *(v170 + 3);
          *(v168 + 8) = 0u;
          *(&v168[1] + 8) = 0u;
          *(&v168[2] + 8) = 0u;
          *(&v168[3] + 1) = 0;
          v169 = 1282;
          sub_2529AEC80(&v163);
          v6 = v132;
          v104(v132, v103, v102);
          sub_252E36C14();
          v105 = sub_252E359F4();

          v25 = v144;
          if (!*(v105 + 16))
          {
            goto LABEL_67;
          }

          v106 = sub_252A44A10(1701667182, 0xE400000000000000);
          if ((v107 & 1) == 0)
          {
            goto LABEL_67;
          }

          v91 = *(*(v105 + 56) + 8 * v106);

          if (!(v91 >> 62))
          {
            if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_63;
            }

LABEL_67:

            v38 = 0;
            v138 = 0;
LABEL_68:
            sub_252E347E4();
            v110 = sub_252A3C504();
            if (v110 <= 2u)
            {
              v111 = v110;
              goto LABEL_77;
            }

            if (v110 > 4u)
            {
              if (v110 == 5)
              {
                v111 = v110;
                goto LABEL_77;
              }

              v111 = 5;
            }

            else
            {
              if (v110 == 3)
              {

                goto LABEL_78;
              }

              v111 = v110;
LABEL_77:
              v112 = sub_252E37DB4();

              if (v112)
              {
LABEL_78:
                *&v148 = v38;
                *(&v148 + 1) = v138;
                v149 = 0u;
                v150 = 0u;
                v151 = 0u;
                v152 = 0u;
                LOBYTE(v153[0]) = 52;
                *(v153 + 1) = v170[0];
                DWORD1(v153[0]) = *(v21 + 171);
                *(v153 + 8) = 0u;
                *(&v153[1] + 8) = 0u;
                *(&v153[2] + 8) = 0u;
                *(&v153[3] + 1) = 0;
                v154 = 1282;
                sub_2529AEC80(&v148);
                if (qword_27F53F550 == -1)
                {
LABEL_79:
                  v113 = sub_252E36AD4();
                  __swift_project_value_buffer(v113, qword_27F544E98);
                  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E72C80, 0xD000000000000075, 0x8000000252E72A80);
                  (*v134)(v6, v143);
                  sub_25297DE88(&v156);
                  v114 = v161[2];
                  v25[6] = v161[1];
                  v25[7] = v114;
                  v25[8] = v161[3];
                  *(v25 + 72) = v162;
                  v115 = v159;
                  v25[2] = v158;
                  v25[3] = v115;
                  v116 = v161[0];
                  v25[4] = v160;
                  v25[5] = v116;
                  v117 = v156;
                  v118 = v157;
                  goto LABEL_103;
                }

LABEL_91:
                swift_once();
                goto LABEL_79;
              }
            }

            (*v134)(v6, v143);
            v37 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v36 = 0;
            v44 = 0;
            v45 = 0;
            v46 = 0;
            v47 = 0;
            v48 = 0;
            v29 = 0;
            v49 = 0;
            v31 = 0;
            v32 = 0;
            v33 = 2;
            v2 = 0;
            v50 = 52;
            v39 = v138;
            v43 = v111;
            goto LABEL_102;
          }

          if (!sub_252E378C4())
          {
            goto LABEL_67;
          }

LABEL_63:
          if ((v91 & 0xC000000000000001) == 0)
          {
            if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v108 = *(v91 + 32);

LABEL_66:

              v38 = sub_252E358E4();
              v138 = v109;

              goto LABEL_68;
            }

            __break(1u);
LABEL_108:
            swift_once();
LABEL_101:
            v119 = sub_252E36AD4();
            __swift_project_value_buffer(v119, qword_27F544E98);
            *&v148 = 0;
            *(&v148 + 1) = 0xE000000000000000;
            sub_252E379F4();
            v147[0] = v148;
            MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E72C40);
            v153[1] = v168[1];
            v153[2] = v168[2];
            v153[3] = v168[3];
            v154 = v169;
            v150 = v165;
            v151 = v166;
            v152 = v167;
            v153[0] = v168[0];
            v148 = v163;
            v149 = v164;
            sub_252E37AE4();
            sub_252CC3D90(*&v147[0], *(&v147[0] + 1), 0xD000000000000075, 0x8000000252E72A80);

            v39 = *(&v163 + 1);
            v38 = v163;
            v40 = *(&v164 + 1);
            v37 = v164;
            v42 = *(&v165 + 1);
            v41 = v165;
            v44 = *(&v166 + 1);
            v36 = v166;
            v46 = *(&v167 + 1);
            v45 = v167;
            v50 = v168[0];
            v170[0] = *(v168 + 1);
            *(v170 + 3) = DWORD1(v168[0]);
            v47 = *(&v168[0] + 1);
            v29 = *(&v168[1] + 1);
            v48 = *&v168[1];
            v31 = *(&v168[2] + 1);
            v49 = *&v168[2];
            v2 = *(&v168[3] + 1);
            v32 = *&v168[3];
            v33 = v169;
            v43 = HIBYTE(v169);
            goto LABEL_102;
          }

LABEL_106:
          MEMORY[0x2530ADF00](0, v91);
          goto LABEL_66;
        }

        v66 = sub_252E37DB4();

        if (v66)
        {
          goto LABEL_59;
        }
      }

      else
      {
      }

      ++v54;
      v56 = v143;
      (*v134)(v12, v143);
      v55 = v142;
      v52 = v59;
    }

    while (v140 != v54);

    v25 = v144;
    v21 = &v163;
    v24 = v133;
  }

  else
  {

    v21 = &v163;
  }

  v67 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v67 + 288), &v163);

  v68 = *(&v164 + 1);
  v27 = v165;
  __swift_project_boxed_opaque_existential_1(&v163, *(&v164 + 1));
  v69 = (*(v27 + 88))(v68, v27);
  __swift_destroy_boxed_opaque_existential_1(&v163);
  if ((v69 & 1) == 0)
  {
LABEL_43:
    sub_252E36C14();
    v86 = sub_252E359F4();

    if (*(v86 + 16))
    {
      v87 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000);
      if (v88)
      {
        v76 = *(*(v86 + 56) + 8 * v87);

        if ((v76 & 0xC000000000000001) != 0)
        {
LABEL_89:
          MEMORY[0x2530ADF00](0, v76);
        }

        else
        {
          if (!*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_91;
          }

          v89 = *(v76 + 32);
        }

        v90 = sub_252E358F4();

        if (*(v90 + 16))
        {
          v91 = sub_252B0AB50();

          if (v91 >> 62)
          {
            if (sub_252E378C4())
            {
LABEL_51:
              v166 = 0u;
              v167 = 0u;
              v164 = 0u;
              v165 = 0u;
              v163 = 0u;
              LOBYTE(v168[0]) = 52;
              *(v21 + 81) = v170[0];
              DWORD1(v168[0]) = *(v21 + 171);
              *(v21 + 88) = 0u;
              *(v21 + 104) = 0u;
              *(v21 + 120) = 0u;
              *(&v168[3] + 1) = 0;
              v169 = 1282;
              sub_2529AEC80(&v163);
              if ((v91 & 0xC000000000000001) != 0)
              {
                v92 = MEMORY[0x2530ADF00](0, v91);
              }

              else
              {
                if (!*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_106;
                }

                v92 = *(v91 + 32);
              }

              v139 = v92;

              v93 = sub_252968368();
              sub_252A379FC(&v156);

              v94 = v156;
              v95 = v157;
              v136 = v158;
              v137 = *(&v157 + 1);
              v96 = *(&v158 + 1);
              v142 = *(&v159 + 1);
              v143 = v159;
              v140 = *(&v160 + 1);
              v141 = v160;
              v50 = v161[0];
              v170[0] = *(v161 + 1);
              *(v21 + 171) = DWORD1(v161[0]);
              v134 = *(&v161[0] + 1);
              v135 = v96;
              v132 = *(&v161[1] + 1);
              v133 = *&v161[1];
              v31 = *(&v161[2] + 1);
              v131 = *&v161[2];
              v2 = *(&v161[3] + 1);
              v32 = *&v161[3];
              v33 = v162;
              v97 = HIBYTE(v162);
              if (qword_27F53F550 != -1)
              {
                swift_once();
              }

              v98 = sub_252E36AD4();
              v128 = __swift_project_value_buffer(v98, qword_27F544E98);
              *&v156 = 0;
              *(&v156 + 1) = 0xE000000000000000;
              sub_252E379F4();
              v155 = v156;
              MEMORY[0x2530AD570](0xD000000000000046, 0x8000000252E72BF0);
              v129 = v95;
              v138 = (v94 >> 64);
              v130 = v94;
              v156 = v94;
              *&v157 = v95;
              *(&v157 + 1) = v137;
              *&v158 = v136;
              *(&v158 + 1) = v135;
              *&v159 = v143;
              *(&v159 + 1) = v142;
              *&v160 = v141;
              *(&v160 + 1) = v140;
              LOBYTE(v161[0]) = v50;
              *(v161 + 1) = v170[0];
              DWORD1(v161[0]) = *(v170 + 3);
              *(&v161[0] + 1) = v134;
              *&v161[1] = v133;
              v99 = v131;
              *(&v161[1] + 1) = v132;
              *&v161[2] = v131;
              *(&v161[2] + 1) = v31;
              *&v161[3] = v32;
              *(&v161[3] + 1) = v2;
              LOBYTE(v162) = v33;
              v100 = v97;
              HIBYTE(v162) = v97;
              v153[1] = v161[1];
              v153[2] = v161[2];
              v153[3] = v161[3];
              v154 = v162;
              v152 = v160;
              v153[0] = v161[0];
              v150 = v158;
              v151 = v159;
              v148 = v94;
              v149 = v157;
              sub_25297DE08(&v156, v147);
              v101 = sub_252E36F94();
              MEMORY[0x2530AD570](v101);

              sub_252CC3D90(v155, *(&v155 + 1), 0xD000000000000075, 0x8000000252E72A80);

              v36 = v143;
              v25 = v144;
              v37 = v129;
              v38 = v130;
              v39 = v138;
              v40 = v137;
              v42 = v135;
              v41 = v136;
              v43 = v100;
              v45 = v141;
              v44 = v142;
              v46 = v140;
              v48 = v133;
              v47 = v134;
              v29 = v132;
              v49 = v99;
              goto LABEL_102;
            }
          }

          else if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }
        }
      }
    }

    v38 = 0;
    v39 = 0;
    v37 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v36 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v29 = 0;
    v49 = 0;
    v31 = 0;
    v32 = 0;
    v43 = 5;
    v33 = 2;
    v2 = 0;
    v50 = 52;
    goto LABEL_102;
  }

  sub_252E36C14();
  v70 = sub_252E359F4();

  if (!*(v70 + 16) || (v71 = sub_252A44A10(0x73656D616ELL, 0xE500000000000000), (v72 & 1) == 0))
  {
LABEL_42:

    goto LABEL_43;
  }

  v26 = *(*(v70 + 56) + 8 * v71);

  if (v26 >> 62)
  {
    v73 = sub_252E378C4();
    if (v73)
    {
      goto LABEL_21;
    }

    goto LABEL_97;
  }

  v73 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v73)
  {
LABEL_97:
    v23 = MEMORY[0x277D84F90];
LABEL_98:

    sub_252A37CB0(v23, v145);

    v168[1] = v145[6];
    v168[2] = v145[7];
    v168[3] = v145[8];
    v169 = v146;
    v165 = v145[2];
    v166 = v145[3];
    v167 = v145[4];
    v168[0] = v145[5];
    v163 = v145[0];
    v164 = v145[1];
    if (sub_25297DE64(&v163) != 1)
    {
      v159 = 0u;
      v160 = 0u;
      v157 = 0u;
      v158 = 0u;
      v156 = 0u;
      LOBYTE(v161[0]) = 52;
      *(v161 + 1) = v170[0];
      DWORD1(v161[0]) = *(v170 + 3);
      *(v161 + 8) = 0u;
      *(&v161[1] + 8) = 0u;
      *(&v161[2] + 8) = 0u;
      *(&v161[3] + 1) = 0;
      v162 = 1282;
      sub_2529AEC80(&v156);
      if (qword_27F53F550 != -1)
      {
        goto LABEL_108;
      }

      goto LABEL_101;
    }

    v21 = &v163;
    goto LABEL_43;
  }

LABEL_21:
  v22 = 0;
  v142 = v26 & 0xFFFFFFFFFFFFFF8;
  v143 = v26 & 0xC000000000000001;
  v23 = MEMORY[0x277D84F90];
  v141 = v73;
  while (v143)
  {
    v21 = v25;
    MEMORY[0x2530ADF00](v22, v26);
    v25 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

LABEL_27:
    v27 = sub_252E35914();

    v76 = *(v27 + 16);
    v6 = v23[2];
    v24 = &v6[v76];
    if (__OFADD__(v6, v76))
    {
      goto LABEL_84;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v24 > v23[3] >> 1)
    {
      if (v6 <= v24)
      {
        v78 = &v6[v76];
      }

      else
      {
        v78 = v6;
      }

      v23 = sub_2529F85F4(isUniquelyReferenced_nonNull_native, v78, 1, v23);
    }

    v24 = v133;
    if (*(v27 + 16))
    {
      v6 = v23[2];
      v79 = (v23[3] >> 1) - v6;
      v80 = *(sub_252E34724() - 8);
      if (v79 < v76)
      {
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
      v82 = *(v80 + 72);
      swift_arrayInitWithCopy();

      v24 = v133;
      if (v76)
      {
        v83 = v23[2];
        v84 = __OFADD__(v83, v76);
        v85 = v83 + v76;
        if (v84)
        {
          goto LABEL_88;
        }

        v23[2] = v85;
      }
    }

    else
    {

      if (v76)
      {
        goto LABEL_85;
      }
    }

    ++v22;
    v74 = v25 == v141;
    v25 = v21;
    if (v74)
    {
      goto LABEL_98;
    }
  }

  if (v22 < *(v142 + 16))
  {
    v21 = v25;
    v75 = v26[v22 + 4];

    v25 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      goto LABEL_41;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  swift_once();
LABEL_3:
  v28 = sub_252E36AD4();
  v123 = __swift_project_value_buffer(v28, qword_27F544E98);
  *&v163 = 0;
  *(&v163 + 1) = 0xE000000000000000;
  sub_252E379F4();
  v155 = v163;
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E72CA0);
  v129 = v24;
  v130 = v22;
  *&v163 = v22;
  v137 = v23;
  v138 = v21;
  *(&v163 + 1) = v21;
  *&v164 = v24;
  *(&v164 + 1) = v23;
  v135 = v25;
  v136 = v6;
  *&v165 = v6;
  *(&v165 + 1) = v25;
  *&v166 = v143;
  *(&v166 + 1) = v142;
  *&v167 = v141;
  *(&v167 + 1) = v140;
  LOBYTE(v168[0]) = v139;
  *(v168 + 1) = v170[0];
  DWORD1(v168[0]) = *(v170 + 3);
  v133 = v27;
  v134 = v26;
  *(&v168[0] + 1) = v26;
  *&v168[1] = v27;
  v30 = v131;
  v29 = v132;
  *(&v168[1] + 1) = v132;
  *&v168[2] = v131;
  v32 = v127;
  v31 = v128;
  *(&v168[2] + 1) = v128;
  *&v168[3] = v127;
  *(&v168[3] + 1) = v2;
  v33 = v126;
  LOBYTE(v169) = v126;
  v34 = v124;
  HIBYTE(v169) = v124;
  v153[1] = v168[1];
  v153[2] = v168[2];
  v153[3] = v168[3];
  v154 = v169;
  v152 = v167;
  v153[0] = v168[0];
  v150 = v165;
  v151 = v166;
  v148 = v163;
  v149 = v164;
  sub_25297DE08(&v163, v147);
  v35 = sub_252E36F94();
  MEMORY[0x2530AD570](v35);

  sub_252CC3D90(v155, *(&v155 + 1), 0xD000000000000075, 0x8000000252E72A80);

  v36 = v143;
  v25 = v144;
  v37 = v129;
  v38 = v130;
  v39 = v138;
  v40 = v137;
  v42 = v135;
  v41 = v136;
  v43 = v34;
  v45 = v141;
  v44 = v142;
  v46 = v140;
  v48 = v133;
  v47 = v134;
  v49 = v30;
  v50 = v139;
LABEL_102:
  *&v163 = v38;
  *(&v163 + 1) = v39;
  *&v164 = v37;
  *(&v164 + 1) = v40;
  *&v165 = v41;
  *(&v165 + 1) = v42;
  *&v166 = v36;
  *(&v166 + 1) = v44;
  *&v167 = v45;
  *(&v167 + 1) = v46;
  LOBYTE(v168[0]) = v50;
  *(v168 + 1) = v170[0];
  DWORD1(v168[0]) = *(v170 + 3);
  *(&v168[0] + 1) = v47;
  *&v168[1] = v48;
  *(&v168[1] + 1) = v29;
  *&v168[2] = v49;
  *(&v168[2] + 1) = v31;
  *&v168[3] = v32;
  *(&v168[3] + 1) = v2;
  LOBYTE(v169) = v33;
  HIBYTE(v169) = v43;
  GEOLocationCoordinate2DMake(&v163);
  v120 = v168[2];
  v25[6] = v168[1];
  v25[7] = v120;
  v25[8] = v168[3];
  *(v25 + 72) = v169;
  v121 = v166;
  v25[2] = v165;
  v25[3] = v121;
  v122 = v168[0];
  v25[4] = v167;
  v25[5] = v122;
  v117 = v163;
  v118 = v164;
LABEL_103:
  *v25 = v117;
  v25[1] = v118;
}

void sub_252A379FC(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 groupName];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v46 = v7;
    v47 = v6;
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  if ([v2 entityType] == 7 && (v8 = objc_msgSend(v2, sel_homeEntityName)) != 0)
  {
    v9 = v8;
    v10 = sub_252E36F34();
    v44 = v11;
    v45 = v10;
  }

  else
  {
    v44 = 0;
    v45 = 0;
  }

  if ([v2 entityType] == 5 && (v12 = objc_msgSend(v2, sel_homeEntityName)) != 0)
  {
    v13 = v12;
    v14 = sub_252E36F34();
    v42 = v15;
    v43 = v14;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v16 = [v2 outerDeviceName];
  if (v16)
  {
    v17 = v16;
    v41 = sub_252E36F34();
    v19 = v18;
  }

  else
  {
    v41 = 0;
    v19 = 0;
  }

  v20 = [v2 deviceType];
  if (qword_27F53F2A0 != -1)
  {
    v40 = v20;
    swift_once();
    v20 = v40;
  }

  v21 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v22 = sub_252A488EC(v20), (v23 & 1) != 0))
  {
    v24 = *(v21[7] + v22);
  }

  else
  {
    v24 = 52;
  }

  v25 = [v2 roomName];
  if (v25)
  {
    v26 = v25;
    v27 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0;
  }

  v30 = [v2 zoneName];
  if (v30)
  {
    v31 = v30;
    v32 = sub_252E36F34();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  v35 = [v2 homeName];
  if (v35)
  {
    v36 = v35;
    v37 = sub_252E36F34();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v47;
  *(a1 + 24) = v46;
  *(a1 + 32) = v45;
  *(a1 + 40) = v44;
  *(a1 + 48) = v43;
  *(a1 + 56) = v42;
  *(a1 + 64) = v41;
  *(a1 + 72) = v19;
  *(a1 + 80) = v24;
  *(a1 + 88) = v27;
  *(a1 + 96) = v29;
  *(a1 + 104) = v32;
  *(a1 + 112) = v34;
  *(a1 + 120) = v37;
  *(a1 + 128) = v39;
  *(a1 + 136) = 0;
  *(a1 + 144) = 1282;
}

void sub_252A37CB0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v149 = sub_252E34B94();
  v5 = *(v149 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v149);
  v138 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v116 - v9;
  v153 = sub_252E34694();
  v11 = *(v153 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v153);
  v140 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v120 = &v116 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v152 = &v116 - v18;
  MEMORY[0x28223BE20](v17);
  v124 = &v116 - v19;
  v20 = sub_252E34724();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v116 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = *(a1 + 16);
  if (v133)
  {
    v135 = v24;
    v25 = 0;
    v27 = *(v22 + 16);
    v26 = v22 + 16;
    v131 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v132 = v27;
    v148 = v11 + 16;
    v142 = *MEMORY[0x277D5E6E0];
    v146 = (v5 + 8);
    v147 = (v5 + 104);
    v145 = (v11 + 8);
    v125 = (v11 + 32);
    v136 = *MEMORY[0x277D5E6E8];
    v127 = (v26 - 8);
    v130 = *(v26 + 56);
    v121 = MEMORY[0x277D84F90];
    v137 = v10;
    v141 = v11;
    v128 = v26;
    v129 = v20;
    do
    {
      v134 = v25;
      v132(v135, v131 + v130 * v25, v20);
      v28 = sub_252E346D4();
      v150 = *(v28 + 16);
      if (v150)
      {
        v29 = 0;
        v151 = v28;
        while (1)
        {
          if (v29 >= *(v28 + 16))
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }

          v30 = (*(v11 + 80) + 32) & ~*(v11 + 80);
          v143 = *(v11 + 72);
          *(&v144 + 1) = *(v11 + 16);
          (*(&v144 + 1))(v152, v28 + v30 + v143 * v29, v153);
          v3 = sub_252E34674();
          v2 = v31;
          v32 = v149;
          *&v144 = *v147;
          (v144)(v10, v142, v149);
          v33 = sub_252E34B84();
          v35 = v34;
          v36 = *v146;
          (*v146)(v10, v32);
          if (v3 == v33 && v2 == v35)
          {
            break;
          }

          v37 = sub_252E37DB4();

          if (v37)
          {
            goto LABEL_14;
          }

          ++v29;
          (*v145)(v152, v153);
          v28 = v151;
          v11 = v141;
          if (v150 == v29)
          {
            goto LABEL_3;
          }
        }

LABEL_14:
        v38 = v124;
        v3 = *v125;
        v39 = v153;
        (*v125)(v124, v152, v153);
        v2 = sub_252E34654();
        v41 = v40;
        v139 = *v145;
        v139(v38, v39);
        if (v41)
        {
          v122 = v2;
          v123 = v3;
          v126 = v41;
          v42 = 0;
          v43 = v151;
          v2 = v151 + v30;
          while (1)
          {
            if (v42 >= *(v43 + 16))
            {
              goto LABEL_71;
            }

            (*(&v144 + 1))(v140, v2, v153);
            v44 = sub_252E34674();
            v46 = v45;
            v47 = v138;
            v48 = v149;
            (v144)(v138, v136, v149);
            v3 = sub_252E34B84();
            v50 = v49;
            v36(v47, v48);
            if (v44 == v3 && v46 == v50)
            {
              break;
            }

            v51 = sub_252E37DB4();

            if (v51)
            {
              goto LABEL_24;
            }

            ++v42;
            v139(v140, v153);
            v2 += v143;
            v43 = v151;
            v10 = v137;
            if (v150 == v42)
            {

              v20 = v129;
              (*v127)(v135, v129);
              v11 = v141;
              goto LABEL_4;
            }
          }

LABEL_24:

          v10 = v137;
          v52 = v120;
          v53 = v153;
          (v123)(v120, v140, v153);
          v2 = sub_252E34654();
          v55 = v54;
          v139(v52, v53);
          v20 = v129;
          if (!v55)
          {
            (*v127)(v135, v129);
            goto LABEL_38;
          }

          v56 = v135;
          v57 = sub_252E346C4();
          if (!v58)
          {
            (*v127)(v56, v20);

            goto LABEL_38;
          }

          v59 = v57;
          v60 = v58;
          if (qword_27F53F270 != -1)
          {
            swift_once();
          }

          v61 = off_27F541BA0;
          if (!*(off_27F541BA0 + 2))
          {

            goto LABEL_40;
          }

          v62 = sub_252A44A10(v2, v55);
          v64 = v63;

          if ((v64 & 1) == 0)
          {
            goto LABEL_40;
          }

          v65 = *(v61[7] + 8 * v62);
          if (v65 <= 4)
          {
            if (v65 <= 2)
            {
              if (v65 == 1)
              {
                v66 = 0;
                v67 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v77 = 0;
                v78 = 0;
                v71 = 0;
                v72 = 0;
                v73 = 0;
                v74 = 0;
                v75 = 0;
                v76 = 52;
                v80 = v126;
                v79 = v122;
                goto LABEL_55;
              }

              if (v65 != 2)
              {
                goto LABEL_40;
              }

              v66 = 0;
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v77 = 0;
              v78 = 0;
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v76 = 52;
              v74 = v122;
              v75 = v126;
              goto LABEL_54;
            }

            if (v65 == 3)
            {
              v67 = 0;
              v68 = 0;
              v69 = 0;
              v70 = 0;
              v77 = 0;
              v78 = 0;
              v71 = 0;
              v72 = 0;
              v74 = 0;
              v75 = 0;
              v76 = 52;
              v66 = v122;
              v73 = v126;
              goto LABEL_54;
            }
          }

          else
          {
            if (v65 <= 7)
            {
              if (v65 != 5)
              {
                if (v65 != 7)
                {
                  goto LABEL_40;
                }

                v81._countAndFlagsBits = v122;
                v81._object = v126;
                AccessoryTypeSemantic.init(rawValue:)(v81);
                v66 = 0;
                v67 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v77 = 0;
                v78 = 0;
                v71 = 0;
                v72 = 0;
                v73 = 0;
                v74 = 0;
                v75 = 0;
                v79 = 0;
                v80 = 0;
                v76 = v165;
LABEL_55:
                *&v165 = v59;
                *(&v165 + 1) = v60;
                v3 = v60;
                v119 = v72;
                *&v166 = v72;
                *(&v166 + 1) = v71;
                v139 = v71;
                *&v144 = v78;
                *(&v144 + 1) = v77;
                *&v167 = v78;
                *(&v167 + 1) = v77;
                v150 = v70;
                v151 = v66;
                *&v168 = v70;
                *(&v168 + 1) = v69;
                v82 = v69;
                v2 = v68;
                *&v169 = v68;
                *(&v169 + 1) = v67;
                v83 = v67;
                v117 = v76;
                LOBYTE(v170) = v76;
                *(&v170 + 1) = v66;
                *&v171 = v73;
                v143 = v73;
                v122 = v79;
                v123 = v74;
                *(&v171 + 1) = v74;
                *&v172 = v75;
                v118 = v75;
                *(&v172 + 1) = v79;
                v173 = v80;
                v126 = v80;
                v174 = 1282;
                sub_25297DE08(&v165, &v155);
                v84 = v59;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v121 = sub_2529F84A8(0, *(v121 + 2) + 1, 1, v121);
                }

                v86 = *(v121 + 2);
                v85 = *(v121 + 3);
                if (v86 >= v85 >> 1)
                {
                  v121 = sub_2529F84A8((v85 > 1), v86 + 1, 1, v121);
                }

                (*v127)();
                v87 = v121;
                *(v121 + 2) = v86 + 1;
                v88 = &v87[152 * v86];
                v89 = v166;
                *(v88 + 2) = v165;
                *(v88 + 3) = v89;
                v90 = v167;
                v91 = v168;
                v92 = v170;
                *(v88 + 6) = v169;
                *(v88 + 7) = v92;
                *(v88 + 4) = v90;
                *(v88 + 5) = v91;
                v93 = v171;
                v94 = v172;
                v95 = v173;
                *(v88 + 88) = v174;
                *(v88 + 9) = v94;
                *(v88 + 10) = v95;
                *(v88 + 8) = v93;
                *&v155 = v84;
                *(&v155 + 1) = v3;
                *&v156 = v119;
                *(&v156 + 1) = v139;
                v157 = v144;
                *&v158 = v150;
                *(&v158 + 1) = v82;
                *&v159 = v2;
                *(&v159 + 1) = v83;
                LOBYTE(v160) = v117;
                *(&v160 + 1) = *v154;
                DWORD1(v160) = *&v154[3];
                *(&v160 + 1) = v151;
                *&v161 = v143;
                *(&v161 + 1) = v123;
                *&v162 = v118;
                *(&v162 + 1) = v122;
                v163 = v126;
                v164 = 1282;
                sub_2529AEC80(&v155);
                v11 = v141;
                goto LABEL_4;
              }

              v66 = 0;
              v67 = 0;
              v68 = 0;
              v77 = 0;
              v78 = 0;
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = 0;
              v75 = 0;
              v76 = 52;
              v69 = v126;
              v70 = v122;
LABEL_54:
              v79 = 0;
              v80 = 0;
              goto LABEL_55;
            }

            if (v65 != 8)
            {
              if (v65 != 9)
              {
                if (v65 == 10)
                {
                  v66 = 0;
                  v67 = 0;
                  v68 = 0;
                  v69 = 0;
                  v70 = 0;
                  v71 = 0;
                  v72 = 0;
                  v73 = 0;
                  v74 = 0;
                  v75 = 0;
                  v76 = 52;
                  v77 = v126;
                  v78 = v122;
                  goto LABEL_54;
                }

LABEL_40:

                v66 = 0;
                v67 = 0;
                v68 = 0;
                v69 = 0;
                v70 = 0;
                v77 = 0;
                v78 = 0;
                v71 = 0;
                v72 = 0;
                v73 = 0;
                v74 = 0;
                v75 = 0;
                v79 = 0;
                v80 = 0;
                v76 = 52;
                goto LABEL_55;
              }

              v66 = 0;
              v69 = 0;
              v70 = 0;
              v77 = 0;
              v78 = 0;
              v71 = 0;
              v72 = 0;
              v73 = 0;
              v74 = 0;
              v75 = 0;
              v76 = 52;
              v67 = v126;
              v68 = v122;
              goto LABEL_54;
            }
          }

          v66 = 0;
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v70 = 0;
          v77 = 0;
          v78 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v76 = 52;
          v71 = v126;
          v72 = v122;
          goto LABEL_54;
        }

        v20 = v129;
        (*v127)(v135, v129);
LABEL_38:

        v11 = v141;
      }

      else
      {
LABEL_3:

        v20 = v129;
        (*v127)(v135, v129);
      }

LABEL_4:
      v25 = v134 + 1;
    }

    while (v134 + 1 != v133);
  }

  else
  {
    v121 = MEMORY[0x277D84F90];
  }

  v2 = 0xD00000000000001FLL;
  v96 = *(v121 + 2);
  v10 = "/Library/Caches/com.apple.xbs/Sources/SiriHomeAutomation/HomeAutomationInternal/Flow/NL/SiriReferenceResolution.swift";
  v3 = "getReferencedEntityValue(from:)";
  if (v96 < 2)
  {
    if (v96)
    {
      v99 = *(v121 + 9);
      v161 = *(v121 + 8);
      v162 = v99;
      v163 = *(v121 + 10);
      v164 = *(v121 + 88);
      v100 = *(v121 + 5);
      v157 = *(v121 + 4);
      v158 = v100;
      v101 = *(v121 + 7);
      v159 = *(v121 + 6);
      v160 = v101;
      v102 = *(v121 + 3);
      v155 = *(v121 + 2);
      v156 = v102;
      sub_25297DE08(&v155, &v165);

      v171 = v161;
      v172 = v162;
      v173 = v163;
      v174 = v164;
      v167 = v157;
      v168 = v158;
      v169 = v159;
      v170 = v160;
      v165 = v155;
      v166 = v156;
      GEOLocationCoordinate2DMake(&v165);
      v103 = v172;
      v104 = v116;
      *(v116 + 96) = v171;
      *(v104 + 112) = v103;
      *(v104 + 128) = v173;
      *(v104 + 144) = v174;
      v105 = v168;
      *(v104 + 32) = v167;
      *(v104 + 48) = v105;
      v106 = v170;
      *(v104 + 64) = v169;
      *(v104 + 80) = v106;
      v107 = v165;
      v108 = v166;
      goto LABEL_69;
    }
  }

  else
  {
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v97 = sub_252E36AD4();
    __swift_project_value_buffer(v97, qword_27F544E98);
    *&v165 = 0;
    *(&v165 + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000004CLL, 0x8000000252E72D40);
    v98 = MEMORY[0x2530AD730](v121, &type metadata for ReferencedEntityValue);
    MEMORY[0x2530AD570](v98);

    sub_252CC4050(v165, *(&v165 + 1), 0xD000000000000075, 0x8000000252E72A80, 0xD00000000000001FLL, 0x8000000252E72D20, 549);
  }

  if (qword_27F53F550 != -1)
  {
LABEL_72:
    swift_once();
  }

  v109 = sub_252E36AD4();
  __swift_project_value_buffer(v109, qword_27F544E98);
  *&v165 = 0;
  *(&v165 + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](v2 + 24, 0x8000000252E72CE0);
  v110 = MEMORY[0x2530AD730](v121, &type metadata for ReferencedEntityValue);
  v112 = v111;

  MEMORY[0x2530AD570](v110, v112);

  sub_252CC4050(v165, *(&v165 + 1), v2 + 86, (v10 - 32) | 0x8000000000000000, 0xD00000000000001FLL, (v3 - 32) | 0x8000000000000000, 556);

  sub_25297DE88(&v165);
  v113 = v172;
  v104 = v116;
  *(v116 + 96) = v171;
  *(v104 + 112) = v113;
  *(v104 + 128) = v173;
  *(v104 + 144) = v174;
  v114 = v168;
  *(v104 + 32) = v167;
  *(v104 + 48) = v114;
  v115 = v170;
  *(v104 + 64) = v169;
  *(v104 + 80) = v115;
  v107 = v165;
  v108 = v166;
LABEL_69:
  *v104 = v107;
  *(v104 + 16) = v108;
}

uint64_t sub_252A38B98(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      do
      {
LABEL_8:
        v11 = *(a1 + 48) + 152 * (__clz(__rbit64(v6)) | (v9 << 6));
        v27 = *(v11 + 96);
        v28 = *(v11 + 112);
        v29 = *(v11 + 128);
        v30 = *(v11 + 144);
        v23 = *(v11 + 32);
        v24 = *(v11 + 48);
        v25 = *(v11 + 64);
        v26 = *(v11 + 80);
        v21 = *v11;
        v22 = *(v11 + 16);
        v12 = sub_252A33F8C();
        MEMORY[0x2530AD700](v12, v13, v14, v15, v16, v17, v18, v19, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, *(&v23 + 1), v24, *(&v24 + 1), v25, *(&v25 + 1), v26);
        if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v20 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        v6 &= v6 - 1;
        result = sub_252E372D4();
        v2 = v31;
      }

      while (v6);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252A38D08()
{
  v0 = sub_252E34874();
  v1 = *(v0 - 8);
  v2 = v1[8];
  v3 = MEMORY[0x28223BE20](v0);
  v61 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v60 = &v55 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v59 = &v55 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v58 = &v55 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v57 = &v55 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v56 = &v55 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v55 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v55 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BE8, &qword_252E41DB8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E419C0;
  v21 = v1[13];
  v21(v19, *MEMORY[0x277D5E508], v0);
  v22 = sub_252E34854();
  v24 = v23;
  v25 = v1[1];
  v25(v19, v0);
  *(inited + 32) = v22;
  *(inited + 40) = v24;
  *(inited + 48) = 1;
  v21(v17, *MEMORY[0x277D5E530], v0);
  v26 = sub_252E34854();
  v28 = v27;
  v25(v17, v0);
  *(inited + 56) = v26;
  *(inited + 64) = v28;
  *(inited + 72) = 2;
  v29 = v56;
  v21(v56, *MEMORY[0x277D5E528], v0);
  v30 = sub_252E34854();
  v32 = v31;
  v25(v29, v0);
  *(inited + 80) = v30;
  *(inited + 88) = v32;
  *(inited + 96) = 3;
  v33 = v57;
  v21(v57, *MEMORY[0x277D5E550], v0);
  v34 = sub_252E34854();
  v36 = v35;
  v25(v33, v0);
  *(inited + 104) = v34;
  *(inited + 112) = v36;
  *(inited + 120) = 4;
  v37 = v58;
  v21(v58, *MEMORY[0x277D5E540], v0);
  v38 = sub_252E34854();
  v40 = v39;
  v25(v37, v0);
  *(inited + 128) = v38;
  *(inited + 136) = v40;
  *(inited + 144) = 6;
  v41 = v59;
  v21(v59, *MEMORY[0x277D5E538], v0);
  v42 = sub_252E34854();
  v44 = v43;
  v25(v41, v0);
  *(inited + 152) = v42;
  *(inited + 160) = v44;
  *(inited + 168) = 5;
  v45 = v60;
  v21(v60, *MEMORY[0x277D5E558], v0);
  v46 = sub_252E34854();
  v48 = v47;
  v25(v45, v0);
  *(inited + 176) = v46;
  *(inited + 184) = v48;
  *(inited + 192) = 9;
  v49 = v61;
  v21(v61, *MEMORY[0x277D5E548], v0);
  v50 = sub_252E34854();
  v52 = v51;
  v25(v49, v0);
  *(inited + 200) = v50;
  *(inited + 208) = v52;
  *(inited + 216) = 10;
  v53 = sub_252CC643C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BF0, &qword_252E41DC0);
  result = swift_arrayDestroy();
  off_27F541BA0 = v53;
  return result;
}

uint64_t sub_252A39200(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[3];
  v188 = a1[4];
  v196 = a1[5];
  v182 = a1[6];
  v192 = a1[7];
  v6 = a1[9];
  v180 = a1[8];
  v7 = *(a1 + 80);
  v9 = a1[11];
  v8 = a1[12];
  v11 = a1[13];
  v10 = a1[14];
  v13 = a1[15];
  v12 = a1[16];
  v14 = *(a1 + 144);
  v15 = *(a1 + 145);
  v17 = *a2;
  v16 = a2[1];
  v18 = a2[3];
  v186 = a2[4];
  v19 = a2[5];
  v181 = a2[6];
  v190 = a2[7];
  v179 = a2[8];
  v184 = a2[9];
  v20 = *(a2 + 80);
  v22 = a2[11];
  v21 = a2[12];
  v23 = a2[13];
  v24 = a2[14];
  v26 = a2[15];
  v25 = a2[16];
  v27 = *(a2 + 144);
  v28 = *(a2 + 145);
  if (v5)
  {
    if (!v18)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v5 != v18)
    {
      v166 = a2[13];
      v133 = a1[1];
      v172 = *(a1 + 144);
      v150 = *(a2 + 144);
      v161 = *(a2 + 145);
      v140 = a2[1];
      v145 = *a2;
      v137 = *(a1 + 145);
      v29 = *a1;
      v30 = a1[16];
      v121 = a1[12];
      v123 = a1[15];
      v125 = a2[12];
      v127 = a1[9];
      v31 = a2[16];
      v32 = a2[15];
      v33 = a1[14];
      v34 = a1[13];
      v35 = a2[14];
      v156 = a2[11];
      v36 = a1[11];
      v37 = sub_252E37DB4();
      v9 = v36;
      v22 = v156;
      v8 = v121;
      v13 = v123;
      v23 = v166;
      v24 = v35;
      v11 = v34;
      v10 = v33;
      v26 = v32;
      v25 = v31;
      v21 = v125;
      v6 = v127;
      v12 = v30;
      v4 = v29;
      v15 = v137;
      v16 = v140;
      v17 = v145;
      v28 = v161;
      v27 = v150;
      v14 = v172;
      v3 = v133;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v196)
  {
    if (!v19)
    {
      return 0;
    }

    if (v188 != v186 || v196 != v19)
    {
      v167 = v23;
      v134 = v3;
      v130 = v7;
      v38 = v4;
      v197 = v12;
      v151 = v27;
      v39 = v13;
      v141 = v16;
      v146 = v17;
      v138 = v15;
      v40 = v25;
      v126 = v21;
      v128 = v6;
      v41 = v26;
      v162 = v28;
      v42 = v10;
      v173 = v14;
      v43 = v11;
      v44 = v24;
      v45 = v8;
      v157 = v22;
      v46 = v9;
      v47 = sub_252E37DB4();
      v9 = v46;
      v22 = v157;
      v8 = v45;
      v23 = v167;
      v24 = v44;
      v11 = v43;
      v14 = v173;
      v10 = v42;
      v28 = v162;
      v26 = v41;
      v21 = v126;
      v6 = v128;
      v25 = v40;
      v15 = v138;
      v16 = v141;
      v17 = v146;
      v13 = v39;
      v27 = v151;
      v12 = v197;
      v4 = v38;
      v7 = v130;
      v3 = v134;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v192)
  {
    if (!v190)
    {
      return 0;
    }

    if (v182 != v181 || v192 != v190)
    {
      v168 = v23;
      v135 = v3;
      v131 = v7;
      v48 = v4;
      v198 = v12;
      v152 = v27;
      v49 = v13;
      v142 = v16;
      v147 = v17;
      v193 = v25;
      v129 = v6;
      v50 = v26;
      v163 = v28;
      v51 = v10;
      v174 = v14;
      v52 = v11;
      v53 = v24;
      v54 = v8;
      v158 = v22;
      v55 = v9;
      v56 = v21;
      v57 = sub_252E37DB4();
      v21 = v56;
      v9 = v55;
      v22 = v158;
      v8 = v54;
      v23 = v168;
      v24 = v53;
      v11 = v52;
      v14 = v174;
      v10 = v51;
      v28 = v163;
      v26 = v50;
      v6 = v129;
      v25 = v193;
      v12 = v198;
      v16 = v142;
      v17 = v147;
      v13 = v49;
      v27 = v152;
      v4 = v48;
      v7 = v131;
      v3 = v135;
      if ((v57 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v190)
  {
    return 0;
  }

  if (v6)
  {
    if (!v184)
    {
      return 0;
    }

    if (v180 != v179 || v6 != v184)
    {
      v169 = v23;
      v136 = v3;
      v132 = v7;
      v58 = v4;
      v199 = v12;
      v153 = v27;
      v59 = v13;
      v143 = v16;
      v148 = v17;
      v194 = v25;
      v60 = v26;
      v164 = v28;
      v61 = v10;
      v175 = v14;
      v62 = v11;
      v63 = v24;
      v64 = v8;
      v159 = v22;
      v65 = v9;
      v66 = v21;
      v67 = sub_252E37DB4();
      v21 = v66;
      v9 = v65;
      v22 = v159;
      v8 = v64;
      v23 = v169;
      v24 = v63;
      v11 = v62;
      v14 = v175;
      v10 = v61;
      v28 = v164;
      v26 = v60;
      v25 = v194;
      v12 = v199;
      v16 = v143;
      v17 = v148;
      v13 = v59;
      v27 = v153;
      v4 = v58;
      v7 = v132;
      v3 = v136;
      if ((v67 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v184)
  {
    return 0;
  }

  if (v7 == 52)
  {
    if (v20 != 52)
    {
      return 0;
    }
  }

  else
  {
    if (v20 == 52)
    {
      return 0;
    }

    v160 = v22;
    v68 = v21;
    v183 = v9;
    v185 = v24;
    v122 = v8;
    v170 = v23;
    v187 = v11;
    v189 = v10;
    v191 = v26;
    v195 = v25;
    v124 = v13;
    v200 = v12;
    v176 = v14;
    v165 = v28;
    v69 = v17;
    v70 = v16;
    v71 = v15;
    v72 = v4;
    v73 = v3;
    v74 = AccessoryTypeSemantic.rawValue.getter();
    v76 = v75;
    if (v74 == AccessoryTypeSemantic.rawValue.getter() && v76 == v77)
    {

      v3 = v73;
      v4 = v72;
      v15 = v71;
      v16 = v70;
      v17 = v69;
      v28 = v165;
      v14 = v176;
      v25 = v195;
      v12 = v200;
      v8 = v122;
      v13 = v124;
      v10 = v189;
      v26 = v191;
      v11 = v187;
      v9 = v183;
      v24 = v185;
      v23 = v170;
      v21 = v68;
      v22 = v160;
    }

    else
    {
      v78 = sub_252E37DB4();

      v3 = v73;
      v4 = v72;
      v15 = v71;
      v16 = v70;
      v17 = v69;
      v28 = v165;
      v14 = v176;
      v25 = v195;
      v12 = v200;
      v8 = v122;
      v13 = v124;
      v10 = v189;
      v26 = v191;
      v11 = v187;
      v9 = v183;
      v24 = v185;
      v23 = v170;
      v21 = v68;
      v22 = v160;
      if ((v78 & 1) == 0)
      {
        return 0;
      }
    }
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    if (v9 != v22 || v8 != v21)
    {
      v171 = v23;
      v79 = v3;
      v80 = v4;
      v81 = v12;
      v154 = v27;
      v82 = v13;
      v144 = v16;
      v149 = v17;
      v139 = v15;
      v83 = v25;
      v84 = v26;
      v85 = v28;
      v86 = v10;
      v177 = v14;
      v87 = v11;
      v88 = v24;
      v89 = sub_252E37DB4();
      v23 = v171;
      v24 = v88;
      v11 = v87;
      v14 = v177;
      v10 = v86;
      v28 = v85;
      v26 = v84;
      v25 = v83;
      v15 = v139;
      v16 = v144;
      v17 = v149;
      v13 = v82;
      v27 = v154;
      v12 = v81;
      v4 = v80;
      v3 = v79;
      if ((v89 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v10)
  {
    if (!v24)
    {
      return 0;
    }

    if (v11 != v23 || v10 != v24)
    {
      v90 = v3;
      v91 = v4;
      v92 = v12;
      v155 = v27;
      v93 = v13;
      v178 = v14;
      v94 = v17;
      v95 = v16;
      v96 = v15;
      v97 = v25;
      v98 = v26;
      v99 = sub_252E37DB4();
      v26 = v98;
      v25 = v97;
      v15 = v96;
      v16 = v95;
      v17 = v94;
      v14 = v178;
      v13 = v93;
      v27 = v155;
      v12 = v92;
      v4 = v91;
      v3 = v90;
      if ((v99 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v12)
  {
    if (!v25)
    {
      return 0;
    }

    if (v13 != v26 || v12 != v25)
    {
      v100 = v3;
      v101 = v4;
      v102 = sub_252E37DB4();
      v4 = v101;
      v3 = v100;
      if ((v102 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v25)
  {
    return 0;
  }

  v103 = 0x6E65657263536E6FLL;
  if (v14)
  {
    if (v14 == 1)
    {
      v104 = 0x61737265766E6F63;
      v105 = 0xEE006C616E6F6974;
    }

    else
    {
      v105 = 0xE400000000000000;
      v104 = 1701736302;
    }
  }

  else
  {
    v105 = 0xE800000000000000;
    v104 = 0x6E65657263536E6FLL;
  }

  v106 = v28;
  v107 = v17;
  v108 = v16;
  v109 = v15;
  if (v27)
  {
    if (v27 == 1)
    {
      v103 = 0x61737265766E6F63;
      v110 = 0xEE006C616E6F6974;
    }

    else
    {
      v110 = 0xE400000000000000;
      v103 = 1701736302;
    }
  }

  else
  {
    v110 = 0xE800000000000000;
  }

  v111 = v4;
  v112 = v3;
  if (v104 == v103 && v105 == v110)
  {

    v113 = v112;
    v114 = v111;
    v115 = v109;
    v116 = v108;
    v117 = v107;
    v118 = v106;
  }

  else
  {
    v119 = sub_252E37DB4();

    v113 = v112;
    v114 = v111;
    v115 = v109;
    v116 = v108;
    v117 = v107;
    v118 = v106;
    if ((v119 & 1) == 0)
    {
      return 0;
    }
  }

  if (!v113)
  {
    if (!v116)
    {
      goto LABEL_77;
    }

    return 0;
  }

  if (!v116 || (v114 != v117 || v113 != v116) && (sub_252E37DB4() & 1) == 0)
  {
    return 0;
  }

LABEL_77:

  return sub_252A0C460(v115, v118);
}

unint64_t sub_252A39AE0()
{
  result = qword_27F541BB8;
  if (!qword_27F541BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541BB8);
  }

  return result;
}

unint64_t sub_252A39B34()
{
  result = qword_27F541BC0;
  if (!qword_27F541BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541BC0);
  }

  return result;
}

unint64_t sub_252A39B88()
{
  result = qword_27F541BC8;
  if (!qword_27F541BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541BC8);
  }

  return result;
}

unint64_t sub_252A39BDC()
{
  result = qword_27F541BD8;
  if (!qword_27F541BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541BD8);
  }

  return result;
}

unint64_t sub_252A39C30()
{
  result = qword_27F541BE0;
  if (!qword_27F541BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541BE0);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252A39CA0()
{
  if (*(sub_252E359F4() + 16))
  {
    sub_252A44A10(0xD000000000000010, 0x8000000252E73010);
    v1 = v0;

    if (v1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  if (*(sub_252E359F4() + 16))
  {
    sub_252A44A10(0x507473694C6F7375, 0xEF6E6F697469736FLL);
    v3 = v2;

    if (v3)
    {
LABEL_7:
      v4 = 1;
      return v4 & 1;
    }
  }

  else
  {
  }

  if (*(sub_252E359F4() + 16))
  {
    sub_252A44A10(0xD000000000000012, 0x8000000252E73030);
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

size_t sub_252A39DB8(unint64_t a1)
{
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C20, &unk_252E5B5E0);
  v2 = *(*(v107 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v107);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v94 = &v94 - v6;
  v115 = sub_252E34544();
  v105 = *(v115 - 8);
  v7 = *(v105 + 64);
  v8 = MEMORY[0x28223BE20](v115);
  v99 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v109 = &v94 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  v112 = *(v11 - 8);
  v12 = *(v112 + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v94 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v94 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v94 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v111 = &v94 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v108 = &v94 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v94 - v29;
  v104 = v5;
  if (a1 >> 62)
  {
LABEL_38:
    v113 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = sub_252E378C4();
  }

  else
  {
    v113 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v100 = v21;
  v101 = v24;
  v106 = v18;
  v114 = a1 & 0xC000000000000001;
  v32 = MEMORY[0x277D84F90];
  v110 = v31;
  if (!v31)
  {
    v33 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v18 = 0;
  v33 = MEMORY[0x277D84F90];
  do
  {
    v24 = v18;
    while (1)
    {
      if (v114)
      {
        MEMORY[0x2530ADF00](v24, a1);
        v18 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (v24 >= *(v113 + 16))
        {
          goto LABEL_37;
        }

        v34 = *(a1 + 8 * v24 + 32);

        v18 = (v24 + 1);
        if (__OFADD__(v24, 1))
        {
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }
      }

      sub_252E34554();
      sub_252E34E24();
      if (v117)
      {
        break;
      }

LABEL_7:
      ++v24;
      if (v18 == v110)
      {
        goto LABEL_24;
      }
    }

    v21 = sub_252E34524();

    if (!v21)
    {
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v33 = sub_2529F88D0(0, v33[2] + 1, 1, v33);
    }

    v37 = v33[2];
    v36 = v33[3];
    if (v37 >= v36 >> 1)
    {
      v33 = sub_2529F88D0((v36 > 1), v37 + 1, 1, v33);
    }

    v33[2] = v37 + 1;
    v33[v37 + 4] = v21;
  }

  while (v18 != v110);
LABEL_24:
  v38 = sub_252A3332C(v33);

  v98 = v15;
  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v40 = v110;
    if (v39)
    {
      goto LABEL_26;
    }

LABEL_40:

    v43 = MEMORY[0x277D84F90];
    v117 = v32;
    if (v40)
    {
      goto LABEL_41;
    }

LABEL_55:
    if (v32 >> 62)
    {
      goto LABEL_76;
    }

    v52 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_77;
    }

LABEL_57:
    v53 = 0;
    v54 = v32 & 0xC000000000000001;
    v55 = (v105 + 48);
    v113 = v105 + 32;
    v114 = v32 & 0xFFFFFFFFFFFFFF8;
    v56 = MEMORY[0x277D84F90];
    v110 = (v32 & 0xC000000000000001);
    while (1)
    {
      if (v54)
      {
        MEMORY[0x2530ADF00](v53, v32);
        v58 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_74;
        }
      }

      else
      {
        if (v53 >= *(v114 + 16))
        {
          goto LABEL_75;
        }

        v57 = *(v32 + 8 * v53 + 32);

        v58 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_74;
        }
      }

      v59 = v32;
      v60 = v108;
      sub_252E34534();

      v61 = v115;
      if ((*v55)(v60, 1, v115) == 1)
      {
        sub_25293847C(v60, &qword_27F540288, &qword_252E41DE0);
      }

      else
      {
        v62 = v52;
        v63 = *v113;
        (*v113)(v109, v60, v61);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_2529F88A8(0, *(v56 + 2) + 1, 1, v56);
        }

        v65 = *(v56 + 2);
        v64 = *(v56 + 3);
        if (v65 >= v64 >> 1)
        {
          v56 = sub_2529F88A8(v64 > 1, v65 + 1, 1, v56);
        }

        *(v56 + 2) = v65 + 1;
        v63(&v56[((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v65], v109, v115);
        v52 = v62;
        v54 = v110;
      }

      ++v53;
      v32 = v59;
      if (v58 == v52)
      {
        goto LABEL_78;
      }
    }
  }

  v39 = sub_252E378C4();
  v40 = v110;
  if (!v39)
  {
    goto LABEL_40;
  }

LABEL_26:
  v117 = v32;
  result = sub_2529AA600(0, v39 & ~(v39 >> 63), 0);
  if (v39 < 0)
  {
    goto LABEL_103;
  }

  v103 = a1;
  v42 = 0;
  v43 = v117;
  do
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v42, v38);
    }

    else
    {
      v44 = *(v38 + 8 * v42 + 32);
    }

    sub_252E34534();

    v117 = v43;
    v46 = *(v43 + 16);
    v45 = *(v43 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_2529AA600(v45 > 1, v46 + 1, 1);
      v43 = v117;
    }

    ++v42;
    *(v43 + 16) = v46 + 1;
    sub_252A3E5E0(v30, v43 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v46);
  }

  while (v39 != v42);

  a1 = v103;
  v40 = v110;
  v117 = v32;
  if (!v110)
  {
    goto LABEL_55;
  }

LABEL_41:
  v47 = 0;
  v32 = MEMORY[0x277D84F90];
  while (2)
  {
    v48 = v47;
LABEL_43:
    if (v114)
    {
      MEMORY[0x2530ADF00](v48, a1);
      v47 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      goto LABEL_46;
    }

    if (v48 >= *(v113 + 16))
    {
      goto LABEL_73;
    }

    v49 = *(a1 + 8 * v48 + 32);

    v47 = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
LABEL_46:
      sub_252E34554();
      sub_252E34E24();

      if (v116)
      {
        MEMORY[0x2530AD700](v50);
        if (*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v51 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        v32 = v117;
        if (v47 == v40)
        {
          goto LABEL_55;
        }

        continue;
      }

      ++v48;
      if (v47 == v40)
      {
        goto LABEL_55;
      }

      goto LABEL_43;
    }

    break;
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  v52 = sub_252E378C4();
  if (v52)
  {
    goto LABEL_57;
  }

LABEL_77:
  v56 = MEMORY[0x277D84F90];
LABEL_78:

  v66 = sub_252B4F43C(v56);

  v117 = v43;
  result = sub_25297B924(v66);
  v114 = v117;
  v103 = *(v117 + 16);
  if (!v103)
  {
LABEL_96:
    v93 = 0;
LABEL_101:

    return v93;
  }

  v67 = 0;
  LODWORD(v108) = *MEMORY[0x277D5E238];
  v113 = v105 + 104;
  v110 = (v105 + 56);
  v68 = (v105 + 48);
  v97 = (v105 + 32);
  v105 += 8;
  v102 = *MEMORY[0x277D5E240];
  v69 = v101;
  v70 = v94;
  v109 = v68;
  while (2)
  {
    if (v67 < *(v114 + 16))
    {
      v72 = v68;
      v73 = v111;
      sub_252A3E650(v114 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v67, v111);
      v74 = *v113;
      v75 = v115;
      (*v113)(v69, v108, v115);
      v76 = *v110;
      (*v110)(v69, 0, 1, v75);
      v77 = *(v107 + 48);
      sub_252A3E650(v73, v70);
      sub_252A3E650(v69, v70 + v77);
      v78 = *v72;
      if ((*v72)(v70, 1, v75) == 1)
      {
        sub_25293847C(v69, &qword_27F540288, &qword_252E41DE0);
        if (v78(v70 + v77, 1, v75) == 1)
        {
          goto LABEL_98;
        }

LABEL_89:
        sub_25293847C(v70, &qword_27F541C20, &unk_252E5B5E0);
      }

      else
      {
        v79 = v70;
        v80 = v70;
        v81 = v100;
        sub_252A3E650(v79, v100);
        if (v78(v80 + v77, 1, v75) == 1)
        {
          v69 = v101;
          sub_25293847C(v101, &qword_27F540288, &qword_252E41DE0);
          (*v105)(v81, v75);
          v70 = v80;
          goto LABEL_89;
        }

        v82 = v99;
        (*v97)(v99, v80 + v77, v75);
        sub_252A3E6C0(&qword_27F541C28, MEMORY[0x277D5E248]);
        v95 = sub_252E36EF4();
        v83 = *v105;
        (*v105)(v82, v75);
        v69 = v101;
        v96 = v76;
        sub_25293847C(v101, &qword_27F540288, &qword_252E41DE0);
        v83(v81, v75);
        v70 = v94;
        v76 = v96;
        sub_25293847C(v94, &qword_27F540288, &qword_252E41DE0);
        if (v95)
        {
          goto LABEL_99;
        }
      }

      v84 = v106;
      v85 = v115;
      v74(v106, v102, v115);
      v76(v84, 0, 1, v85);
      v86 = *(v107 + 48);
      v87 = v104;
      sub_252A3E650(v111, v104);
      sub_252A3E650(v84, v87 + v86);
      v88 = v109;
      if (v78(v87, 1, v85) == 1)
      {
        sub_25293847C(v84, &qword_27F540288, &qword_252E41DE0);
        v71 = v78(v87 + v86, 1, v85);
        v68 = v88;
        if (v71 == 1)
        {
          v70 = v87;
LABEL_98:
          sub_25293847C(v70, &qword_27F540288, &qword_252E41DE0);
LABEL_99:
          sub_25293847C(v111, &qword_27F540288, &qword_252E41DE0);
LABEL_100:
          v93 = 1;
          goto LABEL_101;
        }

LABEL_81:
        sub_25293847C(v87, &qword_27F541C20, &unk_252E5B5E0);
        result = sub_25293847C(v111, &qword_27F540288, &qword_252E41DE0);
      }

      else
      {
        v89 = v98;
        sub_252A3E650(v87, v98);
        if (v78(v87 + v86, 1, v85) == 1)
        {
          v68 = v88;
          sub_25293847C(v106, &qword_27F540288, &qword_252E41DE0);
          (*v105)(v89, v85);
          goto LABEL_81;
        }

        v90 = v99;
        (*v97)(v99, v87 + v86, v85);
        sub_252A3E6C0(&qword_27F541C28, MEMORY[0x277D5E248]);
        LODWORD(v96) = sub_252E36EF4();
        v91 = *v105;
        v92 = v90;
        v68 = v109;
        (*v105)(v92, v85);
        sub_25293847C(v106, &qword_27F540288, &qword_252E41DE0);
        v69 = v101;
        v91(v89, v85);
        sub_25293847C(v87, &qword_27F540288, &qword_252E41DE0);
        result = sub_25293847C(v111, &qword_27F540288, &qword_252E41DE0);
        if (v96)
        {
          goto LABEL_100;
        }
      }

      if (v103 == ++v67)
      {
        goto LABEL_96;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

char *sub_252A3AC34(unint64_t a1)
{
  v2 = sub_252E36B34();
  v113 = *(v2 - 8);
  v3 = *(v113 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v111 = &v88 - v8;
  MEMORY[0x28223BE20](v7);
  v110 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541BF8, &qword_252E41DC8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v129 = &v88 - v12;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C00, &unk_252E41DD0);
  v13 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128);
  v127 = (&v88 - v14);
  v126 = sub_252E36CA4();
  v15 = *(v126 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v126);
  v125 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_252E36D04();
  v18 = *(v124 - 8);
  v19 = *(v18 + 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_252E36C44();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v122 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v130 = &v88 - v26;
  v145 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_93;
  }

  v27 = a1;
  a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a1)
  {
    v121 = v27 & 0xC000000000000001;
    v120 = 0x8000000252E72DC0;
    v100 = v27 & 0xFFFFFFFFFFFFFF8;
    v99 = v27 + 32;
    v119 = &v141;
    v118 = (v15 + 8);
    v28 = (v18 + 8);
    v18 = v27;
    v117 = v28;
    v107 = (v22 + 32);
    v106 = (v22 + 16);
    v105 = (v22 + 88);
    v104 = *MEMORY[0x277D5FEC0];
    v98 = *MEMORY[0x277D5FED0];
    v96 = *MEMORY[0x277D5FEC8];
    v94 = *MEMORY[0x277D5FED8];
    v92 = *MEMORY[0x277D5FEE0];
    v90 = "resolve(queries:)";
    v137 = "eferences asynchronously...";
    v109 = "tion failed with error: ";
    v108 = (v22 + 8);
    v89 = 0x8000000252E72E90;
    v101 = (v22 + 96);
    v22 = 0;
    v91 = "uring reference resolution ";
    v93 = "er result - needsDisambiguation";
    v95 = "sDisambiguationPlural";
    v103 = (v113 + 32);
    v97 = "er result - foundMatchPlural";
    v134 = 0x8000000252E72E70;
    v116 = xmmword_252E41C50;
    v102 = "ApplicationContext";
    v135 = (v113 + 8);
    v136 = (v113 + 16);
    v112 = MEMORY[0x277D84F90];
    v131 = v27;
    v15 = MEMORY[0x277D84F90];
    v115 = v21;
    v114 = a1;
    while (1)
    {
      if (v121)
      {
        v133 = MEMORY[0x2530ADF00](v22, v18);
        v29 = __OFADD__(v22++, 1);
        if (v29)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v22 >= *(v100 + 16))
        {
          goto LABEL_90;
        }

        v133 = *(v99 + 8 * v22);

        v29 = __OFADD__(v22++, 1);
        if (v29)
        {
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          v27 = a1;
          a1 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v132 = v22;
      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v30 = off_2814B0DC0;
      if (off_2814B0DC0)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v30 = sub_252D7EAE8();
        off_2814B0DC0 = v30;

        sub_252D7E92C();
      }

      sub_252E37614();
      v31 = *(v30 + 2);
      v32 = swift_allocObject();
      *(v32 + 16) = v30;
      *(v32 + 24) = v116;
      *(v32 + 40) = v120;
      *(v32 + 48) = sub_252979724;
      *(v32 + 56) = 0;
      v143 = sub_252990560;
      v144 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v140 = 1107296256;
      v141 = sub_252AD686C;
      v142 = &block_descriptor_5;
      v33 = _Block_copy(&aBlock);

      v34 = v123;
      sub_252E36CD4();
      v138 = v15;
      sub_252A3E6C0(qword_2814B0298, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
      v35 = v125;
      v36 = v126;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v34, v35, v33);
      _Block_release(v33);
      (*v118)(v35, v36);
      (*v117)(v34, v124);

      if (qword_27F53F220 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v37 = qword_27F5407C0;
      v21 = v122;
      if (qword_27F5407C0)
      {
      }

      else
      {
        v38 = type metadata accessor for ApplicationContext();
        v39 = *(v38 + 48);
        v40 = *(v38 + 52);
        swift_allocObject();
        v37 = sub_252978E58();
        qword_27F5407C0 = v37;
      }

      sub_252E37614();
      sub_252929E74((v37 + 368), &aBlock);

      v41 = v142;
      v42 = v143;
      __swift_project_boxed_opaque_existential_1(&aBlock, v142);
      v43 = sub_252E36C34();
      v44 = v129;
      (*(*(v43 - 8) + 56))(v129, 1, 1, v43);
      v45 = v127;
      (*(v42 + 2))(v133, v44, v41, v42);
      sub_25293847C(v44, &qword_27F541BF8, &qword_252E41DC8);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      v46 = *v45;
      v138 = *v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
      swift_willThrowTypedImpl();
      __swift_destroy_boxed_opaque_existential_1(&aBlock);
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      v47 = sub_252E36AD4();
      __swift_project_value_buffer(v47, qword_27F544E98);
      aBlock = 0;
      v140 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000028, v102 | 0x8000000000000000);
      v138 = v46;
      sub_252E37AE4();
      sub_252CC4050(aBlock, v140, 0xD000000000000075, v137 | 0x8000000000000000, 0xD000000000000011, v109 | 0x8000000000000000, 337);

      v15 = MEMORY[0x277D84F90];
      v18 = v131;
LABEL_5:
      a1 = v114;
      v22 = v132;
      if (v132 == v114)
      {
        return v112;
      }
    }

    v18 = v130;
    v48 = v115;
    (*v107)(v130, v45, v115);
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    (*v106)(v21, v18, v48);
    v49 = (*v105)(v21, v48);
    if (v49 == v104)
    {
      (*v101)(v21, v48);
      v50 = *v103;
      v51 = v21;
      v52 = v110;
      (*v103)(v110, v51, v2);
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      v53 = sub_252E36AD4();
      __swift_project_value_buffer(v53, qword_27F544E98);
      sub_252CC3D90(0xD000000000000026, v97 | 0x8000000000000000, 0xD000000000000075, v137 | 0x8000000000000000);
      (*v136)(v111, v52, v2);
      v54 = v112;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_2529F8480(0, *(v54 + 2) + 1, 1, v54);
      }

      v56 = *(v54 + 2);
      v55 = *(v54 + 3);
      if (v56 >= v55 >> 1)
      {
        v54 = sub_2529F8480(v55 > 1, v56 + 1, 1, v54);
      }

      v57 = v113;
      (*(v113 + 8))(v110, v2);
      *(v54 + 2) = v56 + 1;
      v50(&v54[((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v56], v111, v2);
      v145 = v54;
LABEL_34:
      v18 = v131;
      v15 = MEMORY[0x277D84F90];
      goto LABEL_45;
    }

    if (v49 == v98)
    {
      (*v101)(v21, v48);
      v58 = *v21;
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      v59 = sub_252E36AD4();
      __swift_project_value_buffer(v59, qword_27F544E98);
      v60 = 0xD00000000000002FLL;
      v61 = &v126;
LABEL_43:
      sub_252CC3D90(v60, *(v61 - 32) | 0x8000000000000000, 0xD000000000000075, v137 | 0x8000000000000000);
      sub_25297B2BC(v58);
LABEL_44:
      v15 = MEMORY[0x277D84F90];
      v18 = v131;
LABEL_45:
      v21 = v145;
      v63 = *(v145 + 2);
      v112 = v145;
      if (v63)
      {
        v138 = v15;
        sub_2529AA5A0(0, v63, 0);
        v64 = v138;
        v65 = v21 + ((*(v113 + 80) + 32) & ~*(v113 + 80));
        v66 = *(v113 + 72);
        v21 = *(v113 + 16);
        do
        {
          (v21)(v6, v65, v2);
          if (qword_27F53F550 != -1)
          {
            swift_once();
          }

          v67 = sub_252E36AD4();
          __swift_project_value_buffer(v67, qword_27F544E98);
          aBlock = 0;
          v140 = 0xE000000000000000;
          sub_252E379F4();

          aBlock = 0xD000000000000014;
          v140 = v134;
          sub_252A3E6C0(&qword_27F541C10, MEMORY[0x277D5FE08]);
          v68 = sub_252E37D94();
          MEMORY[0x2530AD570](v68);

          sub_252CC3D90(aBlock, v140, 0xD000000000000075, v137 | 0x8000000000000000);

          (*v135)(v6, v2);
          v138 = v64;
          v70 = v64[2];
          v69 = v64[3];
          v71 = v70 + 1;
          if (v70 >= v69 >> 1)
          {
            sub_2529AA5A0((v69 > 1), v70 + 1, 1);
            v64 = v138;
          }

          v64[2] = v71;
          v65 += v66;
          --v63;
        }

        while (v63);
        (*v108)(v130, v115);

        v18 = v131;
        v15 = MEMORY[0x277D84F90];
      }

      else
      {
        (*v108)(v130, v115);
      }

      goto LABEL_5;
    }

    if (v49 == v96)
    {
      (*v101)(v21, v48);
      v58 = *v21;
      if (qword_27F53F550 != -1)
      {
        swift_once();
      }

      v62 = sub_252E36AD4();
      __swift_project_value_buffer(v62, qword_27F544E98);
      v60 = 0xD00000000000002CLL;
      v61 = &v124;
      goto LABEL_43;
    }

    if (v49 != v94)
    {
      if (v49 == v92)
      {
        if (qword_27F53F550 != -1)
        {
          swift_once();
        }

        v83 = sub_252E36AD4();
        __swift_project_value_buffer(v83, qword_27F544E98);
        aBlock = 0;
        v140 = 0xE000000000000000;
        sub_252E379F4();

        aBlock = 0xD00000000000002BLL;
        v140 = v89;
        v138 = v133;
        sub_252E36B54();
        sub_252A3E6C0(&qword_27F541C18, MEMORY[0x277D5FE30]);
        v84 = sub_252E37D94();
        MEMORY[0x2530AD570](v84);

        sub_252CC3D90(aBlock, v140, 0xD000000000000075, v137 | 0x8000000000000000);
      }

      else
      {
        if (qword_27F53F550 != -1)
        {
          swift_once();
        }

        v85 = sub_252E36AD4();
        __swift_project_value_buffer(v85, qword_27F544E98);
        aBlock = 0;
        v140 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000034, v90 | 0x8000000000000000);
        sub_252A3E6C0(&qword_27F541C08, MEMORY[0x277D5FEE8]);
        v86 = sub_252E37D94();
        MEMORY[0x2530AD570](v86);

        sub_252CC4050(aBlock, v140, 0xD000000000000075, v137 | 0x8000000000000000, 0xD000000000000011, v109 | 0x8000000000000000, 331);

        (*v108)(v21, v48);
      }

      goto LABEL_44;
    }

    (*v101)(v21, v48);
    v72 = *v21;
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v73 = sub_252E36AD4();
    v22 = __swift_project_value_buffer(v73, qword_27F544E98);
    sub_252CC3D90(0xD000000000000035, v91 | 0x8000000000000000, 0xD000000000000075, v137 | 0x8000000000000000);
    v15 = *(v72 + 16);
    if (!v15)
    {
      a1 = MEMORY[0x277D84F90];
LABEL_83:

      sub_25297B2BC(a1);
      goto LABEL_34;
    }

    v21 = 0;
    v112 = (v72 + 32);
    a1 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v21 >= *(v72 + 16))
      {
        goto LABEL_87;
      }

      v74 = *&v112[8 * v21];
      v22 = *(v74 + 16);
      v75 = *(a1 + 16);
      v18 = (v75 + v22);
      if (__OFADD__(v75, v22))
      {
        goto LABEL_88;
      }

      v76 = *&v112[8 * v21];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v18 <= *(a1 + 24) >> 1)
      {
        if (!*(v74 + 16))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v75 <= v18)
        {
          v78 = v75 + v22;
        }

        else
        {
          v78 = v75;
        }

        a1 = sub_2529F8480(isUniquelyReferenced_nonNull_native, v78, 1, a1);
        if (!*(v74 + 16))
        {
LABEL_59:

          if (v22)
          {
            goto LABEL_89;
          }

          goto LABEL_60;
        }
      }

      if ((*(a1 + 24) >> 1) - *(a1 + 16) < v22)
      {
        goto LABEL_91;
      }

      v79 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v80 = *(v113 + 72);
      swift_arrayInitWithCopy();

      if (v22)
      {
        v81 = *(a1 + 16);
        v29 = __OFADD__(v81, v22);
        v82 = v81 + v22;
        if (v29)
        {
          goto LABEL_92;
        }

        *(a1 + 16) = v82;
      }

LABEL_60:
      if (v15 == ++v21)
      {
        goto LABEL_83;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_252A3C1E0()
{
  v0 = sub_252E36B74();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36AB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F650 != -1)
  {
    swift_once();
  }

  v10 = qword_27F544FD8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v11 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v12 = sub_252E345A4();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_252E34594();
  v15 = MEMORY[0x2530AB270]();

  if (v15)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277D5FE70], v0);
    v16 = sub_252E36B54();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();

    sub_252E36B44();

    MEMORY[0x2530AD700](v19);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v23 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();

    v20 = v25;
  }

  else
  {
    v20 = v11;
  }

  v21 = sub_252A3AC34(v20);

  sub_252E375C4();
  sub_252E36A74();
  (*(v6 + 8))(v9, v5);
  return v21;
}

uint64_t sub_252A3C504()
{
  v0 = sub_252E37B74();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A3C550(uint64_t a1)
{
  v2 = sub_252E36B04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = 0;
  v13 = *(a1 + 16);
  v31 = a1;
  v32 = v13;
  v30 = v3 + 16;
  v14 = *MEMORY[0x277D5FE90];
  v29 = *MEMORY[0x277D5FDF0];
  while (v32 != v12)
  {
    (*(v3 + 16))(v11, v31 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12++, v2);
    v15 = sub_252E36BB4();
    (*(*(v15 - 8) + 104))(v9, v14, v15);
    (*(v3 + 104))(v9, v29, v2);
    v16 = sub_252E36AF4();
    v17 = *(v3 + 8);
    v17(v9, v2);
    v17(v11, v2);
    if (v16)
    {
      return 0;
    }
  }

  v19 = 0;
  v20 = *MEMORY[0x277D5FE88];
  v21 = v28;
  while (v32 != v19)
  {
    (*(v3 + 16))(v21, v31 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v19++, v2);
    v22 = sub_252E36BB4();
    (*(*(v22 - 8) + 104))(v9, v20, v22);
    (*(v3 + 104))(v9, v29, v2);
    v23 = sub_252E36AF4();
    v24 = *(v3 + 8);
    v24(v9, v2);
    v24(v21, v2);
    if (v23)
    {
      return 1;
    }
  }

  if (qword_27F53F550 != -1)
  {
    swift_once();
  }

  v25 = sub_252E36AD4();
  __swift_project_value_buffer(v25, qword_27F544E98);
  v33 = 0;
  v34 = 0xE000000000000000;
  sub_252E379F4();

  v33 = 0xD000000000000015;
  v34 = 0x8000000252E72B80;
  v26 = MEMORY[0x2530AD730](v31, v2);
  MEMORY[0x2530AD570](v26);

  sub_252CC4050(v33, v34, 0xD000000000000075, 0x8000000252E72A80, 0x74656D286D6F7266, 0xEF293A6174616461, 29);

  return 2;
}

char *sub_252A3C960(uint64_t a1)
{
  v2 = sub_252E36C24();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E36B34();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = *(v9 + 16);
  v13 = v9 + 16;
  v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v41 = *(v13 + 56);
  v42 = v14;
  v39 = (v13 - 8);
  v40 = (v3 + 8);
  v43 = v13;
  v44 = MEMORY[0x277D84F90];
  v36 = v7;
  v37 = v2;
  v14(v11, v15, v7);
  while (1)
  {
    sub_252E36B24();
    sub_252A36464(v54);
    v16 = v7;
    v17 = *v40;
    (*v40)(v6, v2);
    v71 = v54[6];
    v72 = v54[7];
    v73 = v54[8];
    v74 = v55;
    v67 = v54[2];
    v68 = v54[3];
    v69 = v54[4];
    v70 = v54[5];
    v65 = v54[0];
    v66 = v54[1];
    if (sub_25297DE64(&v65) == 1)
    {
      (*v39)(v11, v16);
      v7 = v16;
    }

    else
    {
      v62 = v71;
      v63 = v72;
      v64 = v73;
      v58 = v67;
      v59 = v68;
      v60 = v69;
      v61 = v70;
      v56 = v65;
      v57 = v66;
      v38 = HIBYTE(v74);
      sub_252E36B14();
      v19 = v18;
      sub_252E36B24();
      v20 = sub_252E36C04();
      v21 = v2;
      v22 = v20;
      v17(v6, v21);
      v23 = sub_252A3C550(v22);

      v51 = v62;
      v52 = v63;
      v53 = v64;
      v47 = v58;
      v48 = v59;
      v49 = v60;
      v50 = v61;
      v45 = v56;
      v46 = v57;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_2529F84A8(0, *(v44 + 2) + 1, 1, v44);
      }

      v25 = *(v44 + 2);
      v24 = *(v44 + 3);
      if (v25 >= v24 >> 1)
      {
        v44 = sub_2529F84A8((v24 > 1), v25 + 1, 1, v44);
      }

      v7 = v36;
      (*v39)(v11, v36);
      v26 = v44;
      *(v44 + 2) = v25 + 1;
      v27 = &v26[152 * v25];
      *(v27 + 2) = v45;
      v28 = v46;
      v29 = v47;
      v30 = v49;
      *(v27 + 5) = v48;
      *(v27 + 6) = v30;
      *(v27 + 3) = v28;
      *(v27 + 4) = v29;
      v31 = v50;
      v32 = v51;
      v33 = v52;
      *(v27 + 20) = v53;
      *(v27 + 8) = v32;
      *(v27 + 9) = v33;
      *(v27 + 7) = v31;
      *(v27 + 21) = v19;
      v27[176] = v23;
      v27[177] = v38;
      v2 = v37;
    }

    v15 += v41;
    if (!--v12)
    {
      break;
    }

    v42(v11, v15, v7);
  }

  return v44;
}

uint64_t sub_252A3CD3C(unint64_t a1)
{
  v168 = sub_252E32E84();
  v2 = *(v168 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v168);
  v167 = &v154 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F550 != -1)
  {
    goto LABEL_223;
  }

  while (1)
  {
    v5 = sub_252E36AD4();
    v6 = __swift_project_value_buffer(v5, qword_27F544E98);
    v169 = "eferences asynchronously...";
    v170 = v6;
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E72B20, 0xD000000000000075, 0x8000000252E72A80);
    v7 = *(a1 + 16);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v175 = a1 + 32;
    v163 = 0;
    v164 = (v2 + 8);
    v154 = 0x8000000252E72B60;
    v165 = "Hydrating referenced entities";
    v187 = MEMORY[0x277D84F90];
    v166 = v7;
    while (1)
    {
      v9 = v175 + 152 * v8;
      v10 = *(v9 + 112);
      *v226 = *(v9 + 96);
      *&v226[16] = v10;
      v227 = *(v9 + 128);
      v228 = *(v9 + 144);
      v11 = *(v9 + 48);
      v222 = *(v9 + 32);
      v223 = v11;
      v12 = *(v9 + 80);
      v224 = *(v9 + 64);
      v225 = v12;
      v13 = *(v9 + 16);
      v220 = *v9;
      v221 = v13;
      v14 = HIBYTE(v228);
      if (HIBYTE(v228) > 4u)
      {
        sub_25297DE08(&v220, &v211);

LABEL_47:
        v33 = v187;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2529F84A8(0, *(v33 + 2) + 1, 1, v33);
        }

        v35 = *(v33 + 2);
        v34 = *(v33 + 3);
        if (v35 >= v34 >> 1)
        {
          v33 = sub_2529F84A8((v34 > 1), v35 + 1, 1, v33);
        }

        *(v33 + 2) = v35 + 1;
        v36 = &v33[152 * v35];
        v37 = v221;
        *(v36 + 2) = v220;
        *(v36 + 3) = v37;
        v38 = v222;
        v39 = v223;
        v40 = v225;
        *(v36 + 6) = v224;
        *(v36 + 7) = v40;
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        v41 = *v226;
        v42 = *&v226[16];
        v43 = v227;
        *(v36 + 88) = v228;
        *(v36 + 9) = v42;
        *(v36 + 10) = v43;
        *(v36 + 8) = v41;
        goto LABEL_182;
      }

      v15 = sub_252E37DB4();
      sub_25297DE08(&v220, &v211);

      if (v15)
      {
        goto LABEL_47;
      }

      v16 = *(&v220 + 1);
      v188 = v220;
      v183 = *(&v222 + 1);
      v184 = v223;
      v178 = v224;
      v179 = v221;
      v176 = v225;
      v177 = *(&v224 + 1);
      v209 = *&v226[8];
      v210 = v220;
      v185 = *(&v225 + 1);
      v186 = *v226;
      v181 = *&v226[24];
      v182 = *(&v223 + 1);
      v180 = v227;
      v208 = v228;
      v207 = *(&v227 + 1);
      v172 = v8;
      v173 = *(&v221 + 1);
      v174 = v222;
      if (v14 > 1)
      {
        break;
      }

      if (!v14)
      {
        v44 = type metadata accessor for HomeStore();
        sub_25297DE08(&v220, &v211);
        v162 = v44;
        v45 = static HomeStore.shared.getter();
        v46 = sub_2529D9D50();
        v47 = v163;
        v2 = sub_2529D70E4(v46);
        v163 = v47;

        if (v2 >> 62)
        {
          a1 = sub_252E378C4();
          if (a1)
          {
            goto LABEL_54;
          }
        }

        else
        {
          a1 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a1)
          {
LABEL_54:
            v48 = 0;
            v171 = v2 & 0xC000000000000001;
            do
            {
              if (v171)
              {
                v49 = MEMORY[0x2530ADF00](v48, v2);
                v50 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  goto LABEL_210;
                }
              }

              else
              {
                if (v48 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_213;
                }

                v49 = *(v2 + 8 * v48 + 32);

                v50 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  goto LABEL_210;
                }
              }

              v51 = sub_252E32E24();
              if (v16)
              {
                if (v51 == v188 && v16 == v52)
                {

                  goto LABEL_94;
                }

                v54 = sub_252E37DB4();

                if (v54)
                {

LABEL_94:
                  sub_2529AEC80(&v220);
                  v65 = *(v49 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                  v174 = *(v49 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v183 = v65;

                  goto LABEL_97;
                }
              }

              else
              {
              }

              ++v48;
            }

            while (v50 != a1);
          }
        }

        v67 = static HomeStore.shared.getter();
        v68 = sub_2529D9D50();

        if (v68 >> 62)
        {
          v69 = sub_252E378C4();
          if (v69)
          {
            goto LABEL_105;
          }
        }

        else
        {
          v69 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v69)
          {
LABEL_105:
            v70 = 0;
            a1 = v68 & 0xC000000000000001;
            v71 = v68 & 0xFFFFFFFFFFFFFF8;
            v159 = v68;
            v160 = v68 + 32;
            v156 = v68 & 0xC000000000000001;
            v157 = v69;
            v155 = v68 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if (a1)
              {
                v2 = MEMORY[0x2530ADF00](v70, v68);
                v72 = __OFADD__(v70++, 1);
                if (v72)
                {
                  goto LABEL_221;
                }
              }

              else
              {
                if (v70 >= *(v71 + 16))
                {
                  goto LABEL_222;
                }

                v2 = *(v160 + 8 * v70);

                v72 = __OFADD__(v70++, 1);
                if (v72)
                {
                  goto LABEL_221;
                }
              }

              if (v16)
              {
                v158 = v70;

                v73 = sub_252E32E24();
                v75 = v188;
                v76 = v73 == v188 && v16 == v74;
                v161 = v2;
                if (v76)
                {

LABEL_161:

                  v96 = sub_2529AEC80(&v220);
                  goto LABEL_145;
                }

                v77 = sub_252E37DB4();

                if (v77)
                {
                  goto LABEL_161;
                }

                v78 = OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate;
                v79 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) deviceIdentifier];
                v80 = sub_252E36F34();
                v82 = v81;

                if (v80 == v75 && v16 == v82)
                {

LABEL_163:

                  v96 = sub_2529AEC80(&v220);
                  goto LABEL_144;
                }

                a1 = sub_252E37DB4();

                if (a1)
                {
                  goto LABEL_163;
                }

                v2 = v161;
                v84 = *(v161 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
                if (v84 && (*(v161 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v188 && v84 == v16 || (sub_252E37DB4() & 1) != 0))
                {
                  goto LABEL_161;
                }

                v85 = [*(v2 + v78) profiles];
                sub_25293F638(0, &qword_27F540170, 0x277CD1760);
                v86 = sub_252E37264();

                v171 = v86 & 0xFFFFFFFFFFFFFF8;
                if (v86 >> 62)
                {
                  v87 = sub_252E378C4();
                }

                else
                {
                  v87 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v88 = 0;
                v2 = v86 & 0xC000000000000001;
                while (v87 != v88)
                {
                  if (v2)
                  {
                    v89 = MEMORY[0x2530ADF00](v88, v86);
                  }

                  else
                  {
                    if (v88 >= *(v171 + 16))
                    {
                      goto LABEL_218;
                    }

                    v89 = *(v86 + 8 * v88 + 32);
                  }

                  v90 = v89;
                  if (__OFADD__(v88, 1))
                  {
                    goto LABEL_217;
                  }

                  v91 = [v89 uniqueIdentifier];
                  v92 = v167;
                  sub_252E32E64();

                  v93 = sub_252E32E24();
                  v95 = v94;
                  (*v164)(v92, v168);
                  if (v93 == v188 && v16 == v95)
                  {

LABEL_143:
                    sub_2529AEC80(&v220);

LABEL_144:
                    v2 = v161;
LABEL_145:
                    v97 = v2;
                    v98 = (*v2 + 256);
                    v99 = *v98;
                    if ((*v98)(v96) == 24)
                    {
                      goto LABEL_167;
                    }

                    v100 = (*v97 + 272);
                    v101 = *v100;
                    v102 = (*v100)();
                    v103 = sub_252DB4F4C(24, v102);

                    if (v103)
                    {
                      goto LABEL_167;
                    }

                    v105 = (v99)(v104);
                    if (v105 == 38)
                    {
                      v107 = &unk_2864A0E78;
LABEL_151:
                      v106 = sub_2529FC004(v107);
                    }

                    else
                    {
                      v106 = MEMORY[0x277D84FA0];
                      if (v105 == 41)
                      {
                        v107 = &unk_2864A0EA0;
                        goto LABEL_151;
                      }
                    }

                    v108 = sub_252DB4F4C(24, v106);

                    v97 = v161;
                    if (v108)
                    {
                      goto LABEL_167;
                    }

                    if (sub_252D4FE78(24))
                    {
                      goto LABEL_167;
                    }

                    if (v99() == 38)
                    {
                      goto LABEL_167;
                    }

                    v109 = v101();
                    v110 = sub_252DB4F4C(38, v109);

                    if (v110)
                    {
                      goto LABEL_167;
                    }

                    v112 = (v99)(v111);
                    if (v112 == 38)
                    {
                      v114 = &unk_2864A0E78;
LABEL_165:
                      v113 = sub_2529FC004(v114);
                    }

                    else
                    {
                      v113 = MEMORY[0x277D84FA0];
                      if (v112 == 41)
                      {
                        v114 = &unk_2864A0EA0;
                        goto LABEL_165;
                      }
                    }

                    v115 = sub_252DB4F4C(38, v113);

                    v97 = v161;
                    if (v115)
                    {
LABEL_167:

                      v116 = v97;
                    }

                    else
                    {
                      v124 = sub_252D4FE78(38);

                      v116 = v97;
                      if (!v124)
                      {
                        v125 = *(v97 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                        v177 = *(v97 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                        v178 = v125;

                        goto LABEL_176;
                      }
                    }

                    v117 = [*(v116 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
                    v33 = v187;
                    if (v117)
                    {
                      v118 = v117;
                      v119 = type metadata accessor for Room();
                      v120 = *(v119 + 48);
                      v121 = *(v119 + 52);
                      swift_allocObject();
                      v122 = sub_2529A1E08(v118);

                      v123 = *(v122 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                      v185 = *(v122 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

                      v186 = v123;
                    }

                    else
                    {

                      v185 = 0;
                      v186 = 0;
                    }

                    goto LABEL_177;
                  }

                  a1 = sub_252E37DB4();

                  ++v88;
                  if (a1)
                  {
                    goto LABEL_143;
                  }
                }

                v2 = v161;

                v70 = v158;
                v68 = v159;
                a1 = v156;
                v69 = v157;
                v71 = v155;
              }
            }

            while (v70 != v69);
          }
        }

        v141 = static HomeStore.shared.getter();
        v2 = sub_2529D9D18();

        if (v2 >> 62)
        {
          v142 = sub_252E378C4();
          if (v142)
          {
            goto LABEL_187;
          }
        }

        else
        {
          v142 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v142)
          {
LABEL_187:
            v143 = 0;
            v171 = v2 & 0xC000000000000001;
            do
            {
              if (v171)
              {
                a1 = MEMORY[0x2530ADF00](v143, v2);
                v144 = v143 + 1;
                if (__OFADD__(v143, 1))
                {
                  goto LABEL_219;
                }
              }

              else
              {
                if (v143 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_220;
                }

                a1 = *(v2 + 8 * v143 + 32);

                v144 = v143 + 1;
                if (__OFADD__(v143, 1))
                {
                  goto LABEL_219;
                }
              }

              swift_retain_n();
              v145 = sub_252E32E24();
              if (v16)
              {
                if (v145 == v188 && v16 == v146)
                {

LABEL_204:

                  sub_2529AEC80(&v220);
                  v149 = (a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v150 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                  v179 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                  v173 = v150;

                  *&v211 = 0;
                  *(&v211 + 1) = 0xE000000000000000;
                  sub_252E379F4();

                  *&v211 = 0xD00000000000001BLL;
                  *(&v211 + 1) = v154;
                  v151 = *v149;
                  v152 = v149[1];

                  MEMORY[0x2530AD570](v151, v152);

                  sub_252CC3D90(v211, *(&v211 + 1), 0xD000000000000075, v169 | 0x8000000000000000);

                  goto LABEL_175;
                }

                v148 = sub_252E37DB4();

                if (v148)
                {
                  goto LABEL_204;
                }
              }

              else
              {
              }

              ++v143;
            }

            while (v144 != v142);
          }
        }

        sub_2529AEC80(&v220);
        goto LABEL_176;
      }

      type metadata accessor for HomeStore();
      sub_25297DE08(&v220, &v211);
      v17 = static HomeStore.shared.getter();
      a1 = sub_2529D8DC0();

      if (a1 >> 62)
      {
        v2 = sub_252E378C4();
        if (!v2)
        {
          goto LABEL_174;
        }
      }

      else
      {
        v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v2)
        {
          goto LABEL_174;
        }
      }

      v18 = 0;
      v171 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v171)
        {
          v19 = MEMORY[0x2530ADF00](v18, a1);
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_212;
          }
        }

        else
        {
          if (v18 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_214;
          }

          v19 = *(a1 + 8 * v18 + 32);

          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_212;
          }
        }

        v21 = sub_252E32E24();
        if (!v16)
        {

          goto LABEL_12;
        }

        if (v21 == v188 && v16 == v22)
        {
          break;
        }

        v24 = sub_252E37DB4();

        if (v24)
        {

          goto LABEL_92;
        }

LABEL_12:

        ++v18;
        if (v20 == v2)
        {
          goto LABEL_174;
        }
      }

LABEL_92:
      sub_2529AEC80(&v220);
      v63 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v180 = *(v19 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
      v181 = v63;
LABEL_96:

LABEL_97:

LABEL_175:

LABEL_176:
      v33 = v187;
LABEL_177:
      *&v189 = 0;
      *(&v189 + 1) = 0xE000000000000000;
      sub_252E379F4();
      v206 = v189;
      MEMORY[0x2530AD570](0xD00000000000001ALL, v165 | 0x8000000000000000);
      v189 = v210;
      v201 = v209;
      v204 = v207;
      v205 = v208;
      v126 = v178;
      v127 = v173;
      v128 = v174;
      v190 = v179;
      v191 = v173;
      v192 = v174;
      v193 = v183;
      v194 = v184;
      v195 = v182;
      v129 = v176;
      v130 = v177;
      v196 = v178;
      v197 = v177;
      v198 = v176;
      v199 = v185;
      v200 = v186;
      v202 = v181;
      v203 = v180;
      sub_252E37AE4();
      sub_252CC3D90(v206, *(&v206 + 1), 0xD000000000000075, v169 | 0x8000000000000000);

      v211 = v210;
      *&v212 = v179;
      *(&v212 + 1) = v127;
      *&v213 = v128;
      *(&v213 + 1) = v183;
      *&v214 = v184;
      *(&v214 + 1) = v182;
      *&v215 = v126;
      *(&v215 + 1) = v130;
      *&v216 = v129;
      *(&v216 + 1) = v185;
      *(v217 + 8) = v209;
      *&v217[0] = v186;
      *(&v217[1] + 1) = v181;
      *&v218 = v180;
      v219 = v208;
      *(&v218 + 1) = v207;
      sub_25297DE08(&v211, &v189);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_2529F84A8(0, *(v33 + 2) + 1, 1, v33);
      }

      v132 = *(v33 + 2);
      v131 = *(v33 + 3);
      v7 = v166;
      if (v132 >= v131 >> 1)
      {
        v33 = sub_2529F84A8((v131 > 1), v132 + 1, 1, v33);
      }

      *(v33 + 2) = v132 + 1;
      v133 = &v33[152 * v132];
      v134 = v212;
      *(v133 + 2) = v211;
      *(v133 + 3) = v134;
      v135 = v213;
      v136 = v214;
      v137 = v216;
      *(v133 + 6) = v215;
      *(v133 + 7) = v137;
      *(v133 + 4) = v135;
      *(v133 + 5) = v136;
      v138 = v217[0];
      v139 = v217[1];
      v140 = v218;
      *(v133 + 88) = v219;
      *(v133 + 9) = v139;
      *(v133 + 10) = v140;
      *(v133 + 8) = v138;
      v189 = v210;
      v190 = v179;
      v191 = v127;
      v192 = v128;
      v193 = v183;
      v194 = v184;
      v195 = v182;
      v196 = v178;
      v197 = v177;
      v198 = v176;
      v199 = v185;
      v201 = v209;
      v200 = v186;
      v202 = v181;
      v203 = v180;
      v205 = v208;
      v204 = v207;
      sub_2529AEC80(&v189);
      v8 = v172;
LABEL_182:
      if (++v8 == v7)
      {
        goto LABEL_208;
      }

      v187 = v33;
    }

    if (v14 != 2)
    {
      if (v14 != 4)
      {
        goto LABEL_176;
      }

      type metadata accessor for HomeStore();
      sub_25297DE08(&v220, &v211);
      v25 = static HomeStore.shared.getter();
      a1 = sub_2529D9884();

      if (a1 >> 62)
      {
        v2 = sub_252E378C4();
        if (v2)
        {
          goto LABEL_30;
        }
      }

      else
      {
        v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2)
        {
LABEL_30:
          v26 = 0;
          v171 = a1 & 0xC000000000000001;
          do
          {
            if (v171)
            {
              v27 = MEMORY[0x2530ADF00](v26, a1);
              v28 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                goto LABEL_209;
              }
            }

            else
            {
              if (v26 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_215;
              }

              v27 = *(a1 + 8 * v26 + 32);

              v28 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
LABEL_209:
                __break(1u);
LABEL_210:
                __break(1u);
                goto LABEL_211;
              }
            }

            v29 = sub_252E32E24();
            if (v16)
            {
              if (v29 == v188 && v16 == v30)
              {

                goto LABEL_93;
              }

              v32 = sub_252E37DB4();

              if (v32)
              {

LABEL_93:
                sub_2529AEC80(&v220);
                v64 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                v185 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

                v186 = v64;
                goto LABEL_176;
              }
            }

            else
            {
            }

            ++v26;
          }

          while (v28 != v2);
        }
      }

LABEL_174:
      sub_2529AEC80(&v220);
      goto LABEL_175;
    }

    type metadata accessor for HomeStore();
    sub_25297DE08(&v220, &v211);
    v55 = static HomeStore.shared.getter();
    a1 = sub_2529DA828();

    if (a1 >> 62)
    {
      v2 = sub_252E378C4();
      if (!v2)
      {
        goto LABEL_174;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        goto LABEL_174;
      }
    }

    v56 = 0;
    v171 = a1 & 0xC000000000000001;
    while (2)
    {
      if (v171)
      {
        v57 = MEMORY[0x2530ADF00](v56, a1);
        v58 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          goto LABEL_211;
        }

LABEL_78:

        v59 = sub_252E32E24();
        if (v16)
        {
          if (v59 == v188 && v16 == v60)
          {

            goto LABEL_95;
          }

          v62 = sub_252E37DB4();

          if (v62)
          {

LABEL_95:
            sub_2529AEC80(&v220);
            v66 = *(v57 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            v184 = *(v57 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v182 = v66;
            goto LABEL_96;
          }
        }

        else
        {
        }

        ++v56;
        if (v58 == v2)
        {
          goto LABEL_174;
        }

        continue;
      }

      break;
    }

    if (v56 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_216;
    }

    v57 = *(a1 + 8 * v56 + 32);

    v58 = v56 + 1;
    if (!__OFADD__(v56, 1))
    {
      goto LABEL_78;
    }

LABEL_211:
    __break(1u);
LABEL_212:
    __break(1u);
LABEL_213:
    __break(1u);
LABEL_214:
    __break(1u);
LABEL_215:
    __break(1u);
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);
LABEL_219:
    __break(1u);
LABEL_220:
    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    swift_once();
  }

  v33 = MEMORY[0x277D84F90];
LABEL_208:
  sub_252B680FC();
  sub_252B63924(v33);
}

uint64_t sub_252A3E31C(uint64_t a1)
{
  v1 = sub_252A3C960(a1);
  v2 = sub_252DF91F8(v1);

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = *(v2 + 16);
      v7 = v2 + 32 + 152 * v4;
      v8 = v4;
      while (1)
      {
        if (v8 >= v6)
        {
          __break(1u);
          goto LABEL_18;
        }

        v9 = *(v7 + 16);
        v31 = *v7;
        v32 = v9;
        v10 = *(v7 + 32);
        v11 = *(v7 + 48);
        v12 = *(v7 + 80);
        v35 = *(v7 + 64);
        v36 = v12;
        v33 = v10;
        v34 = v11;
        v13 = *(v7 + 96);
        v14 = *(v7 + 112);
        v15 = *(v7 + 128);
        v40 = *(v7 + 144);
        v38 = v14;
        v39 = v15;
        v37 = v13;
        v4 = v8 + 1;
        if (*(&v15 + 1) > 0.01)
        {
          break;
        }

        v7 += 152;
        ++v8;
        if (v3 == v4)
        {
          goto LABEL_15;
        }
      }

      sub_25297DE08(&v31, v30);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA580(0, *(v5 + 16) + 1, 1);
        v5 = v41;
      }

      v18 = *(v5 + 16);
      v17 = *(v5 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2529AA580((v17 > 1), v18 + 1, 1);
        v5 = v41;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 152 * v18;
      v20 = v32;
      *(v19 + 32) = v31;
      *(v19 + 48) = v20;
      v21 = v33;
      v22 = v34;
      v23 = v36;
      *(v19 + 96) = v35;
      *(v19 + 112) = v23;
      *(v19 + 64) = v21;
      *(v19 + 80) = v22;
      v24 = v37;
      v25 = v38;
      v26 = v39;
      *(v19 + 176) = v40;
      *(v19 + 144) = v25;
      *(v19 + 160) = v26;
      *(v19 + 128) = v24;
    }

    while (v3 - 1 != v8);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_15:

  sub_252B680FC();
  sub_252B63924(v5);

  if (qword_27F53F550 != -1)
  {
LABEL_18:
    swift_once();
  }

  v27 = sub_252E36AD4();
  __swift_project_value_buffer(v27, qword_27F544E98);
  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v31 = 0xD00000000000001CLL;
  *(&v31 + 1) = 0x8000000252E72B00;
  v28 = MEMORY[0x2530AD730](v5, &type metadata for ReferencedEntityValue);
  MEMORY[0x2530AD570](v28);

  sub_252CC3D90(v31, *(&v31 + 1), 0xD000000000000075, 0x8000000252E72A80);

  sub_252A3CD3C(v5);
}

uint64_t sub_252A3E5E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A3E650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540288, &qword_252E41DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A3E6C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ReferencedEntityValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReferencedEntityValue.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252A3E87C()
{
  result = qword_27F541C40;
  if (!qword_27F541C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541C40);
  }

  return result;
}

unint64_t sub_252A3E8D4()
{
  result = qword_27F541C48;
  if (!qword_27F541C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541C48);
  }

  return result;
}

unint64_t sub_252A3E92C()
{
  result = qword_27F541C50;
  if (!qword_27F541C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541C50);
  }

  return result;
}

unint64_t sub_252A3E984()
{
  result = qword_27F541C58;
  if (!qword_27F541C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541C58);
  }

  return result;
}

unint64_t sub_252A3E9DC()
{
  result = qword_27F541C60;
  if (!qword_27F541C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541C60);
  }

  return result;
}

uint64_t sub_252A3EA30()
{
  v0 = sub_252E36AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F650 != -1)
  {
LABEL_23:
    swift_once();
  }

  v5 = qword_27F544FD8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  v6 = sub_252A3C1E0();
  v7 = sub_252A3C960(v6);

  if (*(v7 + 2))
  {
    v40 = v5;
    v41 = v4;
    v42 = v1;
    v8 = sub_252DF91F8(v7);

    v9 = *(v8 + 16);
    if (v9)
    {
      v4 = 0;
      v1 = &v44;
      v10 = v9 - 1;
      v11 = MEMORY[0x277D84F90];
      do
      {
        v12 = *(v8 + 16);
        v13 = v8 + 32 + 152 * v4;
        v14 = v4;
        while (1)
        {
          if (v14 >= v12)
          {
            __break(1u);
            goto LABEL_23;
          }

          v15 = *(v13 + 16);
          v44 = *v13;
          v45 = v15;
          v16 = *(v13 + 32);
          v17 = *(v13 + 48);
          v18 = *(v13 + 80);
          v48 = *(v13 + 64);
          v49 = v18;
          v46 = v16;
          v47 = v17;
          v19 = *(v13 + 96);
          v20 = *(v13 + 112);
          v21 = *(v13 + 128);
          v53 = *(v13 + 144);
          v51 = v20;
          v52 = v21;
          v50 = v19;
          v4 = v14 + 1;
          if (*(&v21 + 1) > 0.01)
          {
            break;
          }

          v13 += 152;
          ++v14;
          if (v9 == v4)
          {
            goto LABEL_18;
          }
        }

        sub_25297DE08(&v44, &v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v54 = v11;
        v38 = v10;
        v39 = v0;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2529AA580(0, *(v11 + 16) + 1, 1);
          v11 = v54;
        }

        v24 = *(v11 + 16);
        v23 = *(v11 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2529AA580((v23 > 1), v24 + 1, 1);
          v11 = v54;
        }

        *(v11 + 16) = v24 + 1;
        v25 = v11 + 152 * v24;
        v26 = v45;
        *(v25 + 32) = v44;
        *(v25 + 48) = v26;
        v27 = v46;
        v28 = v47;
        v29 = v49;
        *(v25 + 96) = v48;
        *(v25 + 112) = v29;
        *(v25 + 64) = v27;
        *(v25 + 80) = v28;
        v30 = v50;
        v31 = v51;
        v32 = v52;
        *(v25 + 176) = v53;
        *(v25 + 144) = v31;
        *(v25 + 160) = v32;
        *(v25 + 128) = v30;
        v10 = v38;
        v0 = v39;
      }

      while (v38 != v14);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

LABEL_18:

    sub_252B680FC();
    sub_252B63924(v11);

    v4 = v41;
    if (qword_27F53F550 != -1)
    {
      swift_once();
    }

    v33 = sub_252E36AD4();
    __swift_project_value_buffer(v33, qword_27F544E98);
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v44 = 0xD000000000000025;
    *(&v44 + 1) = 0x8000000252E730B0;
    v34 = MEMORY[0x2530AD730](v11, &type metadata for ReferencedEntityValue);
    v36 = v35;

    MEMORY[0x2530AD570](v34, v36);

    sub_252CC3D90(v44, *(&v44 + 1), 0xD000000000000075, 0x8000000252E72A80);

    v1 = v42;
  }

  else
  {
  }

  sub_252E375C4();
  sub_252E36A74();
  return (*(v1 + 1))(v4, v0);
}

uint64_t sub_252A3EE9C()
{
  v0 = sub_252E37B74();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_252A3EEE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D614E656E656373 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED0000656D614E79 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEA00000000006570 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 1701736314 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x79636E65696C6173 && a2 == 0xED000065726F6353 || (sub_252E37DB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000252E73050 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_252A3F2D8()
{
  result = qword_27F541C68;
  if (!qword_27F541C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541C68);
  }

  return result;
}

unint64_t sub_252A3F32C()
{
  result = qword_27F541C70;
  if (!qword_27F541C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F541C70);
  }

  return result;
}

uint64_t sub_252A3F3AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252A40534(a1);
}

uint64_t sub_252A3F458()
{
  type metadata accessor for ShowCameraViaHomeAppHandleDelegate();

  return swift_allocObject();
}

unint64_t sub_252A3F488(unint64_t result, void *a2, void *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_252D41EFC(&v11, a2, a3);

        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_252E378C4();
      v6 = result;
    }

    while (result);
  }

  return result;
}

void sub_252A3F59C(unint64_t a1, unint64_t a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v6 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v6, a1);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v9 = v7;
      sub_252A3F488(a2, v9, a3);

      ++v6;
      if (v8 == i)
      {
        return;
      }
    }

    if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v7 = *(a1 + 8 * v6 + 32);
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_252A3F69C(void *a1)
{
  v1 = [a1 filters];
  if (!v1)
  {
    return v1;
  }

  type metadata accessor for HomeFilter();
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_4;
    }

LABEL_36:

    return 0;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_4:
  type metadata accessor for HomeStore();
  v3 = static HomeStore.shared.getter();
  v4 = HomeStore.accessories(matching:supporting:)(v2, 0);
  v6 = v5;

  if (v6)
  {
    sub_252929F10(v4, 1);
    return 0;
  }

  if (v4 >> 62)
  {
    goto LABEL_40;
  }

  v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
LABEL_8:
    v8 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v4);
        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
LABEL_32:
          __break(1u);
LABEL_33:
          sub_252929F10(v4, 0);

          v1 = 1;
          goto LABEL_42;
        }
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          v7 = sub_252E378C4();
          if (!v7)
          {
            goto LABEL_41;
          }

          goto LABEL_8;
        }

        v9 = *(v4 + 32 + 8 * v8);

        v10 = __OFADD__(v8++, 1);
        if (v10)
        {
          goto LABEL_32;
        }
      }

      v11 = (*v9 + 256);
      v12 = *v11;
      if ((*v11)() == 24)
      {
        sub_252929F10(v4, 0);

        v1 = 1;
        goto LABEL_42;
      }

      v13 = (*(*v9 + 272))();
      v14 = v13;
      if (*(v13 + 16))
      {
        v15 = *(v13 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](24);
        v16 = sub_252E37F14();
        v17 = -1 << *(v14 + 32);
        v18 = v16 & ~v17;
        if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v14 + 48) + 8 * v18) != 24)
          {
            v18 = (v18 + 1) & v19;
            if (((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_19;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_19:

      v21 = (v12)(v20);
      if (v21 == 38)
      {
        break;
      }

      v22 = MEMORY[0x277D84FA0];
      if (v21 == 41)
      {
        v23 = &unk_2864A9568;
LABEL_23:
        v22 = sub_2529FC004(v23);
      }

      if (*(v22 + 16))
      {
        v24 = *(v22 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](24);
        v25 = sub_252E37F14();
        v26 = -1 << *(v22 + 32);
        v27 = v25 & ~v26;
        if ((*(v22 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          while (*(*(v22 + 48) + 8 * v27) != 24)
          {
            v27 = (v27 + 1) & v28;
            if (((*(v22 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_33;
        }
      }

LABEL_9:

      if (v8 == v7)
      {
        goto LABEL_41;
      }
    }

    v23 = &unk_2864A9540;
    goto LABEL_23;
  }

LABEL_41:
  sub_252929F10(v4, 0);
  v1 = 0;
LABEL_42:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544C70);
  v49[0] = 0;
  v49[1] = 0xE000000000000000;
  sub_252E379F4();
  v46 = 0;
  v47 = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002ELL, 0x8000000252E73130);
  v31 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v31 + 16), v49);

  __swift_project_boxed_opaque_existential_1(v49, v50);
  v32 = sub_252E33894();
  v33 = (v32 & 1) == 0;
  if (v32)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v33)
  {
    v35 = 0xE500000000000000;
  }

  else
  {
    v35 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v34, v35);

  __swift_destroy_boxed_opaque_existential_1(v49);
  MEMORY[0x2530AD570](0x6E6F685073690A2CLL, 0xEA00000000003D65);
  v36 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v36 + 16), v49);

  __swift_project_boxed_opaque_existential_1(v49, v50);
  v37 = sub_252E338B4();
  v38 = (v37 & 1) == 0;
  if (v37)
  {
    v39 = 1702195828;
  }

  else
  {
    v39 = 0x65736C6166;
  }

  if (v38)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v39, v40);

  __swift_destroy_boxed_opaque_existential_1(v49);
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E73160);
  if (v1)
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (v1)
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v41, v42);

  sub_252CC3D90(v46, v47, 0xD000000000000085, 0x8000000252E73180);

  v43 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v43 + 16), v49);

  __swift_project_boxed_opaque_existential_1(v49, v50);
  if (sub_252E33894())
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v44 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
    sub_252929E74((v44 + 16), &v46);

    __swift_project_boxed_opaque_existential_1(&v46, v48);
    v45 = sub_252E338B4();
    __swift_destroy_boxed_opaque_existential_1(&v46);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return v1 & v45;
  }

  return v1;
}

id sub_252A3FCDC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v73 = v64 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v64 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v64 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v74 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v64 - v18;
  v20 = sub_252E32E04();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v64 - v26;
  result = [a1 dateTimeRange];
  if (result)
  {

    v29 = [a1 dateTimeRange];
    if (!v29)
    {
LABEL_8:
      (*(v21 + 56))(v19, 1, 1, v20);
LABEL_9:
      v35 = v19;
LABEL_10:
      sub_25293847C(v35, &qword_27F540F38, &unk_252E41490);
      return 0;
    }

    v70 = v25;
    v72 = v20;
    v30 = v29;
    v31 = [v29 startDateComponents];

    v71 = v21;
    if (v31)
    {
      sub_252E32B24();

      v32 = sub_252E32BA4();
      (*(*(v32 - 8) + 56))(v11, 0, 1, v32);
    }

    else
    {
      v32 = sub_252E32BA4();
      (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
    }

    sub_2529BBFC0(v11, v13);
    sub_252E32BA4();
    v33 = *(v32 - 8);
    v34 = *(v33 + 48);
    if (v34(v13, 1, v32) == 1)
    {
      sub_25293847C(v13, &qword_27F540F00, &unk_252E3FEC0);
      v21 = v71;
      v20 = v72;
      goto LABEL_8;
    }

    v69 = v27;
    sub_252E32B44();
    v67 = *(v33 + 8);
    v68 = v33 + 8;
    v67(v13, v32);
    v37 = v71;
    v36 = v72;
    v65 = *(v71 + 48);
    v66 = v71 + 48;
    if (v65(v19, 1, v72) == 1)
    {
      goto LABEL_9;
    }

    v38 = *(v37 + 32);
    v39 = v19;
    v64[1] = v37 + 32;
    v40 = v38;
    v38(v69, v39, v36);
    v41 = [a1 dateTimeRange];
    if (!v41)
    {
      (*(v37 + 8))(v69, v36);
      v45 = v74;
LABEL_20:
      (*(v37 + 56))(v45, 1, 1, v36);
LABEL_21:
      v35 = v45;
      goto LABEL_10;
    }

    v42 = v41;
    v43 = [v41 endDateComponents];

    if (v43)
    {
      sub_252E32B24();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = v74;
    (*(v33 + 56))(v6, v44, 1, v32);
    v46 = v73;
    sub_2529BBFC0(v6, v73);
    if (v34(v46, 1, v32) == 1)
    {
      v37 = v71;
      v36 = v72;
      (*(v71 + 8))(v69, v72);
      sub_25293847C(v46, &qword_27F540F00, &unk_252E3FEC0);
      goto LABEL_20;
    }

    sub_252E32B44();
    v67(v46, v32);
    v47 = v72;
    if (v65(v45, 1, v72) == 1)
    {
      (*(v71 + 8))(v69, v47);
      goto LABEL_21;
    }

    v40(v70, v45, v47);
    v48 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v49 = sub_252E36F04();
    [v48 setDateFormat_];

    v50 = sub_252E32D64();
    v51 = [v48 stringFromDate_];

    v52 = sub_252E36F34();
    v54 = v53;

    v55 = sub_252E32D64();
    v56 = [v48 stringFromDate_];

    v57 = sub_252E36F34();
    v59 = v58;

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_252E379F4();

    v75 = 0xD000000000000019;
    v76 = 0x8000000252E73360;
    MEMORY[0x2530AD570](v52, v54);

    MEMORY[0x2530AD570](0x65746144646E6526, 0xE90000000000003DLL);
    MEMORY[0x2530AD570](v57, v59);

    v60 = v75;
    v61 = v76;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v62 = sub_252E36AD4();
    __swift_project_value_buffer(v62, qword_27F544C70);
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_252E379F4();

    v75 = 0xD000000000000010;
    v76 = 0x8000000252E73380;
    MEMORY[0x2530AD570](v60, v61);
    sub_252CC3D90(v75, v76, 0xD000000000000085, 0x8000000252E73180);

    v63 = *(v71 + 8);
    v63(v70, v47);
    v63(v69, v47);
    return v60;
  }

  return result;
}

uint64_t sub_252A40534(uint64_t a1)
{
  v1[25] = a1;
  v2 = sub_252E36AD4();
  v1[26] = v2;
  v3 = *(v2 - 8);
  v1[27] = v3;
  v4 = *(v3 + 64) + 15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v5 = sub_252E32E84();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252A40668, 0, 0);
}

void sub_252A40668()
{
  v141 = v0;
  v1 = [*(v0 + 200) filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_252A41988(v3, &unk_2864A9590);
  v6 = v5;

  if (v6)
  {
    goto LABEL_93;
  }

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_93:
    sub_252929F10(v4, v6 & 1);
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 208), qword_27F544C70);
    sub_252CC4050(0xD00000000000001BLL, 0x8000000252E73210, 0xD000000000000085, 0x8000000252E73180, 0x6928656C646E6168, 0xEF293A746E65746ELL, 40);
    v14 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v123 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    *&v14[v123] = 100;
    [v14 setUserActivity_];
    goto LABEL_96;
  }

  if (!sub_252E378C4())
  {
    goto LABEL_93;
  }

LABEL_7:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(*(v0 + 208), qword_27F544C70);
  sub_252E379F4();

  v8 = type metadata accessor for HomeFilter();
  v9 = MEMORY[0x2530AD730](v4, v8);
  MEMORY[0x2530AD570](v9);

  sub_252CC3D90(0xD000000000000029, 0x8000000252E73230, 0xD000000000000085, 0x8000000252E73180);

  type metadata accessor for HomeStore();
  v10 = static HomeStore.shared.getter();
  v11 = HomeStore.accessories(matching:supporting:)(v4, 0);
  v13 = v12;
  sub_252929F10(v4, 0);

  if (v13)
  {
    v140[0] = 0;
    v140[1] = 0xE000000000000000;
    sub_252E379F4();
    *(v0 + 136) = 0;
    *(v0 + 144) = v140[1];
    MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E73260);
    *(v0 + 184) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 136), *(v0 + 144), 0xD000000000000085, 0x8000000252E73180, 0x6928656C646E6168, 0xEF293A746E65746ELL, 91);

    v14 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v15 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    *&v14[v15] = 100;
    [v14 setUserActivity_];
    sub_252929F10(v11, 1);
    goto LABEL_96;
  }

  v139 = v7;
  sub_252E379F4();

  v140[0] = 0xD000000000000011;
  v140[1] = 0x8000000252E73280;
  v16 = v11 >> 62;
  v17 = v11;
  if (v11 >> 62)
  {
    v18 = sub_252E378C4();
  }

  else
  {
    v18 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = ",\ntargetsIPCamera=";
  *(v0 + 192) = v18;
  v20 = sub_252E37D94();
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E732A0);
  sub_252CC3D90(v140[0], v140[1], 0xD000000000000085, 0x8000000252E73180);

  if (v18 != 1)
  {
    if (v18 < 2)
    {
      sub_252929F10(v17, 0);
      sub_2529515FC(1, 7, 0xD000000000000023, 0x8000000252E732C0);
      v49 = sub_252E36AC4();
      v50 = sub_252E374D4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&dword_252917000, v49, v50, "Camera accessory list not successfully handled", v51, 2u);
        MEMORY[0x2530AED00](v51, -1, -1);
      }

      v14 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
      v52 = OBJC_IVAR___ShowHomeIntentResponse_code;
      swift_beginAccess();
      *&v14[v52] = 5;
      [v14 setUserActivity_];
      goto LABEL_96;
    }

    v14 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
    v40 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    *&v14[v40] = 4;
    [v14 setUserActivity_];
    v41 = sub_252E36F04();
    v25 = &off_279711000;
    [v14 setPunchOutURL_];

    v135 = v17 & 0xC000000000000001;
    if ((v17 & 0xC000000000000001) == 0)
    {
      if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v42 = *(v17 + 32);

      goto LABEL_28;
    }

    goto LABEL_106;
  }

  v21 = *(v0 + 200);
  v14 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v22 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v14[v22] = 4;
  [v14 setUserActivity_];
  v23 = sub_252A3FCDC(v21);
  v25 = v24;
  v26 = (v24 >> 56) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v17;
  if (v26)
  {
    v16 = v17 & 0xC000000000000001;
    if ((v17 & 0xC000000000000001) != 0)
    {
      goto LABEL_101;
    }

    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = v23;
      v29 = ",\ntargetsIPCamera=";
      v30 = *(v27 + 32);

      goto LABEL_20;
    }

    __break(1u);
LABEL_103:
    v53 = MEMORY[0x2530ADF00](0, v27);
    goto LABEL_39;
  }

  v136 = ",\ntargetsIPCamera=";

  v16 = v17 & 0xC000000000000001;
  while (2)
  {
    strcpy(v140, "com.apple.Home");
    HIBYTE(v140[1]) = -18;
    MEMORY[0x2530AD570](0x73656363612F2F3ALL, 0xED00002F79726F73);
    v17 = v140[0];
    v22 = v140[1];
    if (v16)
    {
      goto LABEL_103;
    }

    if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v53 = *(v27 + 32);

LABEL_39:
      v54 = *(v0 + 264);
      v55 = *(v0 + 240);
      v56 = *(v0 + 248);
      sub_252929F10(v27, 0);
      (*(v56 + 16))(v54, v53 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v55);

      v57 = sub_252E32E24();
      v59 = v58;
      (*(v56 + 8))(v54, v55);
      v140[0] = v17;
      v140[1] = v22;

      MEMORY[0x2530AD570](v57, v59);

      v60 = sub_252E36F04();

      [v14 setPunchOutURL_];

      v29 = v136;
LABEL_40:
      v61 = v139;
      goto LABEL_71;
    }

    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_106:
      v42 = MEMORY[0x2530ADF00](0, v17);
LABEL_28:
      v43 = [*(v42 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
      if (!v43)
      {

        sub_252929F10(v17, 0);
LABEL_80:
        v110 = [v14 punchOutURL];
        if (v110)
        {
          v111 = v110;
          v112 = sub_252E36F34();
          v114 = v113;

          v140[0] = v112;
          v140[1] = v114;
          MEMORY[0x2530AD570](3092282, 0xE300000000000000);
          if (v114)
          {
            v115 = sub_252E36F04();
          }

          else
          {
            v115 = 0;
          }

          [v14 v25[408]];
        }

        else
        {
          [v14 v25[408]];
        }

        goto LABEL_96;
      }

      v44 = v43;
      v45 = type metadata accessor for Room();
      v46 = *(v45 + 48);
      v47 = *(v45 + 52);
      v134 = v45;
      swift_allocObject();
      v138 = sub_2529A1E08(v44);

      if (v16)
      {
        v48 = sub_252E378C4();
      }

      else
      {
        v48 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v48)
      {
LABEL_65:
        sub_252929F10(v17, 0);
        v85 = [v14 punchOutURL];
        if (v85)
        {
          v86 = v19;
          v87 = *(v0 + 264);
          v88 = *(v0 + 240);
          v89 = *(v0 + 248);
          v90 = v85;
          sub_252E36F34();
          v92 = v91;

          (*(v89 + 16))(v87, v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v88);
          v93 = sub_252E32E24();
          v95 = v94;
          (*(v89 + 8))(v87, v88);
          strcpy(v140, "://room/");
          BYTE1(v140[1]) = 0;
          WORD1(v140[1]) = 0;
          HIDWORD(v140[1]) = -402653184;
          MEMORY[0x2530AD570](v93, v95);

          MEMORY[0x2530AD570](v140[0], v140[1]);

          if (v92)
          {
            v96 = sub_252E36F04();
          }

          else
          {
            v96 = 0;
          }

          v109 = v139;
          [v14 setPunchOutURL_];

          v19 = v86;
        }

        else
        {
          [v14 setPunchOutURL_];
          v109 = v139;
        }

        (*(*(v0 + 216) + 16))(*(v0 + 224), v109, *(v0 + 208));
        sub_252E379F4();

        v140[0] = 0xD000000000000025;
        v140[1] = 0x8000000252E732F0;
        v116 = [v14 punchOutURL];
        v117 = v19;
        if (v116)
        {
          v118 = v116;
          v119 = sub_252E36F34();
          v121 = v120;
        }

        else
        {
          v119 = 0;
          v121 = 0;
        }

        v104 = *(v0 + 216);
        v102 = *(v0 + 224);
        v103 = *(v0 + 208);
        *(v0 + 152) = v119;
        *(v0 + 160) = v121;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v122 = sub_252E36F94();
        MEMORY[0x2530AD570](v122);

        sub_252CC3D90(v140[0], v140[1], 0xD000000000000085, v117 | 0x8000000000000000);

        goto LABEL_75;
      }

      v62 = 0;
      v63 = *(v0 + 248);
      v129 = v17 & 0xFFFFFFFFFFFFFF8;
      v131 = (v63 + 32);
      v132 = (v63 + 8);
      v27 = &OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
      v130 = v48;
      v137 = v19;
      v133 = v17;
      while (v135)
      {
        v23 = MEMORY[0x2530ADF00](v62, v17);
        v25 = v23;
        v66 = v62 + 1;
        if (__OFADD__(v62, 1))
        {
          goto LABEL_100;
        }

LABEL_53:
        v67 = *(v25 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate);

        v68 = [v67 room];
        if (!v68)
        {
          sub_252929F10(v17, 0);

          goto LABEL_79;
        }

        v69 = v68;
        v70 = *(v0 + 256);
        v71 = *(v134 + 48);
        v72 = *(v134 + 52);
        v16 = swift_allocObject();
        v73 = v69;
        v74 = [v73 uniqueIdentifier];
        sub_252E32E64();

        v75 = [v73 name];
        v76 = sub_252E36F34();
        v25 = v77;

        v78 = [v73 assistantIdentifier];
        if (v78)
        {
          v79 = v78;
          sub_252E36F34();
        }

        else
        {
        }

        (*v131)(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, *(v0 + 256), *(v0 + 240));
        if ((sub_252E32E54() & 1) == 0 || *(v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != 3)
        {
          v106 = *(v0 + 240);

          swift_setDeallocating();
          (*v132)(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v106);

          v107 = *(*v16 + 48);
          v108 = *(*v16 + 52);
          swift_deallocClassInstance();
          sub_252929F10(v133, 0);
          goto LABEL_79;
        }

        v80 = *(v0 + 240);
        if (*(v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v76 && *(v138 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v25)
        {

          swift_setDeallocating();
          (*v132)(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v80);

          v64 = *(*v16 + 48);
          v65 = *(*v16 + 52);
          swift_deallocClassInstance();
        }

        else
        {
          v82 = sub_252E37DB4();

          swift_setDeallocating();
          (*v132)(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v80);

          v83 = *(*v16 + 48);
          v84 = *(*v16 + 52);
          swift_deallocClassInstance();
          if ((v82 & 1) == 0)
          {
            sub_252929F10(v133, 0);
LABEL_79:

            v25 = &off_279711000;
            goto LABEL_80;
          }
        }

        ++v62;
        v19 = v137;
        v17 = v133;
        if (v66 == v130)
        {
          goto LABEL_65;
        }
      }

      if (v62 >= *(v129 + 16))
      {
        continue;
      }

      break;
    }

    v25 = *(v17 + 8 * v62 + 32);

    v66 = v62 + 1;
    if (!__OFADD__(v62, 1))
    {
      goto LABEL_53;
    }

LABEL_100:
    __break(1u);
LABEL_101:
    v29 = v19;
    v28 = v23;
    MEMORY[0x2530ADF00](0, v27);
LABEL_20:
    v31 = sub_252D4EC64();
    v19 = v32;

    if (!v19)
    {
      v136 = v29;

      continue;
    }

    break;
  }

  sub_252929F10(v27, 0);
  strcpy(v140, "com.apple.Home");
  HIBYTE(v140[1]) = -18;
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E73320);

  MEMORY[0x2530AD570](v31, v19);

  v33 = sub_252E36F04();

  [v14 setPunchOutURL_];

  v34 = [v14 punchOutURL];
  if (!v34)
  {

    [v14 setPunchOutURL_];
    goto LABEL_40;
  }

  v35 = v34;
  v36 = sub_252E36F34();
  v38 = v37;

  v140[0] = v36;
  v140[1] = v38;
  MEMORY[0x2530AD570](v28, v25);

  if (v38)
  {
    v39 = sub_252E36F04();
  }

  else
  {
    v39 = 0;
  }

  [v14 setPunchOutURL_];

  v61 = v139;
LABEL_71:
  (*(*(v0 + 216) + 16))(*(v0 + 232), v61, *(v0 + 208));
  sub_252E379F4();

  v140[0] = 0xD000000000000025;
  v140[1] = 0x8000000252E732F0;
  v97 = [v14 punchOutURL];
  if (v97)
  {
    v98 = v97;
    v99 = sub_252E36F34();
    v101 = v100;
  }

  else
  {
    v99 = 0;
    v101 = 0;
  }

  v102 = *(v0 + 232);
  v103 = *(v0 + 208);
  v104 = *(v0 + 216);
  *(v0 + 168) = v99;
  *(v0 + 176) = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v105 = sub_252E36F94();
  MEMORY[0x2530AD570](v105);

  sub_252CC3D90(v140[0], v140[1], 0xD000000000000085, v29 | 0x8000000000000000);

LABEL_75:
  (*(v104 + 8))(v102, v103);
LABEL_96:
  v125 = *(v0 + 256);
  v124 = *(v0 + 264);
  v127 = *(v0 + 224);
  v126 = *(v0 + 232);

  v128 = *(v0 + 8);

  v128(v14);
}

uint64_t sub_252A41988(unint64_t a1, uint64_t a2)
{
  v4 = sub_252E36AB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HomeStore();
  v9 = static HomeStore.shared.getter();
  v10 = v9[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];

  if (v10 != 2 && (v10 & 1) == 0)
  {
LABEL_24:
    sub_2529318DC();
    result = swift_allocError();
    v26 = 11;
LABEL_33:
    *v25 = v26;
    return result;
  }

  if (!a1)
  {
    goto LABEL_32;
  }

  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    sub_2529318DC();
    result = swift_allocError();
    v26 = 8;
    goto LABEL_33;
  }

  while (1)
  {
    if (qword_27F53F5B8 != -1)
    {
      swift_once();
    }

    v11 = qword_27F544F40;
    sub_252E36A94();
    sub_252E375D4();
    v39 = v11;
    sub_252E36A84();
    v12 = static HomeStore.shared.getter();
    v13 = sub_2529D9D50();

    v40 = MEMORY[0x277D84F90];
    if (v13 >> 62)
    {
      v14 = sub_252E378C4();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v14)
    {
      v27 = MEMORY[0x277D84F90];
      v28 = MEMORY[0x277D84F90];
      goto LABEL_27;
    }

    v34 = a1;
    v35 = v8;
    v36 = v5;
    v37 = v4;
    v8 = 0;
    v15 = v13;
    v16 = v13 & 0xC000000000000001;
    v4 = v15 & 0xFFFFFFFFFFFFFF8;
    v38 = v15;
    a1 = v15 + 32;
    v5 = a2 + 32;
LABEL_13:
    if (v16)
    {
      v17 = MEMORY[0x2530ADF00](v8, v38);
      v18 = __OFADD__(v8++, 1);
      if (!v18)
      {
        goto LABEL_16;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v8 < *(v4 + 16))
    {
      break;
    }

    __break(1u);
LABEL_31:
    if (!sub_252E378C4())
    {
      goto LABEL_32;
    }
  }

  v17 = *(a1 + 8 * v8);

  v18 = __OFADD__(v8++, 1);
  if (v18)
  {
    goto LABEL_23;
  }

LABEL_16:
  v19 = (*(*v17 + 256))();
  v20 = *(a2 + 16);
  v21 = (a2 + 32);
  do
  {
    if (!v20)
    {

      if (v8 != v14)
      {
        goto LABEL_13;
      }

      goto LABEL_25;
    }

    v22 = *v21++;
    --v20;
  }

  while (v22 != v19);
  sub_252E37A94();
  v23 = *(v40 + 16);
  sub_252E37AC4();
  sub_252E37AD4();
  sub_252E37AA4();
  if (v8 != v14)
  {
    goto LABEL_13;
  }

LABEL_25:
  v27 = v40;
  v5 = v36;
  v4 = v37;
  a1 = v34;
  v8 = v35;
  v28 = MEMORY[0x277D84F90];
LABEL_27:

  v42 = v28;

  sub_252A3F59C(a1, v27, &v42);

  sub_252E375C4();
  sub_252E36A74();
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544C70);
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_252E379F4();

  v40 = 0xD000000000000018;
  v41 = 0x8000000252E733C0;
  v30 = v42;
  v31 = type metadata accessor for HomeFilter();

  v33 = MEMORY[0x2530AD730](v32, v31);
  MEMORY[0x2530AD570](v33);

  sub_252CC3D90(v40, v41, 0xD00000000000007FLL, 0x8000000252E733E0);

  (*(v5 + 8))(v8, v4);

  return v30;
}

uint64_t sub_252A41E68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId);
  v5 = *(a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId + 8);

  sub_252E337C4();
  v6 = *(a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_app);

  sub_252E337B4();
  v7 = *(a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_attribute);
  v8 = *(a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_attribute + 8);

  sub_252E337D4();
  v9 = *(a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_domainContext);
  sub_252E33794();
  v10 = a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReasonDescription;
  v11 = *(a2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReasonDescription);
  v12 = *(v10 + 8);

  return sub_252E337A4();
}

uint64_t SiriKitEvent.HomeAutomationBuilder.deinit()
{
  v1 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_activityType;
  v2 = sub_252E339A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskType + 8);

  v4 = *(v0 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId + 8);

  v5 = *(v0 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_app);

  v6 = *(v0 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_attribute + 8);

  sub_252A4200C(v0 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason);
  v7 = *(v0 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReasonDescription + 8);

  return v0;
}

uint64_t sub_252A4200C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriKitEvent.HomeAutomationBuilder.__deallocating_deinit()
{
  SiriKitEvent.HomeAutomationBuilder.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriKitEvent.HomeAutomationBuilder()
{
  result = qword_27F541C80;
  if (!qword_27F541C80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252A42120()
{
  v0 = sub_252E339A4();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_252A42220();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_252A42220()
{
  if (!qword_27F541C90)
  {
    sub_252E33744();
    v0 = sub_252E37734();
    if (!v1)
    {
      atomic_store(v0, &qword_27F541C90);
    }
  }
}

uint64_t sub_252A42278(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = sub_252E33744();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252A425A0(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_252A4200C(v9);
  }

  else
  {
    v15 = *(v11 + 32);
    v15(v14, v9, v10);
    v15(v7, v14, v10);
    (*(v11 + 56))(v7, 0, 1, v10);
    v16 = OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_statusReason;
    swift_beginAccess();
    sub_252A42610(v7, v1 + v16);
    swift_endAccess();
  }

  return v1;
}

uint64_t sub_252A4246C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544E38);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC3D90(0x6B73617420746553, 0xEF206F7420444920, 0xD000000000000077, 0x8000000252E73520);

    v7 = (v2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId);
    v8 = *(v2 + OBJC_IVAR____TtCE22HomeAutomationInternalC11SiriKitFlow12SiriKitEvent21HomeAutomationBuilder_taskId + 8);
    *v7 = a1;
    v7[1] = a2;
  }

  return v3;
}

uint64_t sub_252A425A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252A42610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541C78, &unk_252E42170);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ControlAutomateHomeIntent.__allocating_init(userTask:filters:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask] = a1;
  *&v5[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters] = a2;
  v6 = a1;
  v7 = sub_252E36F04();
  v10.receiver = v5;
  v10.super_class = v2;
  v8 = objc_msgSendSuper2(&v10, sel_initWithIdentifier_displayString_pronunciationHint_, 0, v7, 0);

  return v8;
}

id ControlAutomateHomeIntent.init(userTask:filters:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask] = a1;
  *&v2[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters] = a2;
  v3 = a1;
  v4 = sub_252E36F04();
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ControlAutomateHomeIntent();
  v5 = objc_msgSendSuper2(&v7, sel_initWithIdentifier_displayString_pronunciationHint_, 0, v4, 0);

  return v5;
}

uint64_t ControlAutomateHomeIntent.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  ControlAutomateHomeIntent.Builder.init()();
  return v0;
}

uint64_t ControlAutomateHomeIntent.Builder.init()()
{
  v1 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = v3;
  [v4 setTaskType_];
  [v4 setAttribute_];
  [v4 setValue_];

  v5 = MEMORY[0x277D84F90];
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  return v0;
}

uint64_t sub_252A42920(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = [v2 taskType];
    v4 = [v2 attribute];
    v5 = [v2 value];
    v6 = objc_allocWithZone(type metadata accessor for HomeUserTask());
    v7 = sub_252E36F04();
    v8 = [v6 initWithIdentifier:0 displayString:v7];

    v9 = v8;
    [v9 setTaskType_];
    [v9 setAttribute_];
    [v9 setValue_];

    v10 = *(v1 + 16);
    *(v1 + 16) = v9;
  }
}

uint64_t sub_252A42A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v8 = sub_252E36F04();
  v9 = [v7 initWithIdentifier:0 displayString:v8];

  v10 = v9;
  [v10 setTaskType_];
  [v10 setAttribute_];
  [v10 setValue_];

  v11 = *(v3 + 16);
  *(v3 + 16) = v10;
}

uint64_t sub_252A42B28(uint64_t result)
{
  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = *(result + 16);
  v4 = result + 32;
  while (1)
  {
    if (v3 == v1)
    {
      swift_beginAccess();
      sub_25297A8D8(v2);
      swift_endAccess();
    }

    if (v1 >= v3)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_11;
    }

    v6 = *(v4 + 8 * v1++);
    if (v6)
    {
      v7 = v6;
      MEMORY[0x2530AD700]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v2 = v9;
      v1 = v5;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

id sub_252A42C40()
{
  v1 = *(v0 + 16);
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ControlAutomateHomeIntent();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask] = v1;
  *&v4[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters] = v2;
  v5 = v1;

  v6 = sub_252E36F04();
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, sel_initWithIdentifier_displayString_pronunciationHint_, 0, v6, 0);

  return v7;
}

uint64_t sub_252A42D04()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  type metadata accessor for ControlAutomateHomeIntent.Builder();
  v2 = swift_allocObject();

  ControlAutomateHomeIntent.Builder.init()();

  v3 = sub_25297CCF8(v1);

  swift_beginAccess();
  v4 = *(v2 + 24);
  *(v2 + 24) = v3;

  return v2;
}

uint64_t ControlAutomateHomeIntent.Builder.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ControlAutomateHomeIntent.Builder.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

id sub_252A42E40()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask);
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
  v3 = objc_allocWithZone(type metadata accessor for ControlHomeIntent());
  v4 = v1;

  v5 = [v3 init];
  [v5 setUserTask_];
  type metadata accessor for HomeFilter();
  v6 = sub_252E37254();

  [v5 setFilters_];

  [v5 setTime_];
  return v5;
}

id ControlAutomateHomeIntent.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_252E36F04();

  if (a6)
  {
    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

uint64_t sub_252A43054()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters);
}

id ControlAutomateHomeIntent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ControlAutomateHomeIntent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_252A43278()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 filters];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for HomeFilter();
      v5 = sub_252E37264();

      v6 = type metadata accessor for ControlAutomateHomeIntent();
      v7 = objc_allocWithZone(v6);
      *&v7[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_userTask] = v2;
      *&v7[OBJC_IVAR____TtC22HomeAutomationInternal25ControlAutomateHomeIntent_filters] = v5;
      v8 = v2;
      v9 = sub_252E36F04();
      v14.receiver = v7;
      v14.super_class = v6;
      v10 = objc_msgSendSuper2(&v14, sel_initWithIdentifier_displayString_pronunciationHint_, 0, v9, 0);

      return v10;
    }

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252CC3D90(0xD000000000000056, 0x8000000252E73760, 0xD000000000000087, 0x8000000252E736D0);
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544D60);
    sub_252CC3D90(0xD000000000000057, 0x8000000252E73670, 0xD000000000000087, 0x8000000252E736D0);
  }

  return 0;
}

uint64_t static SemanticMapper.getSemanticKey(for:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  return sub_252A434F0(a1, a2, &qword_27F53F2A0, &off_27F541CD0, AccessoryTypeSemantic.rawValue.getter, a3);
}

{
  return sub_252A434F0(a1, a2, &qword_27F53F2A8, &off_27F541CD8, AttributeSemantic.rawValue.getter, a3);
}

uint64_t sub_252A434F0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, uint64_t *a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  if (a2)
  {
    goto LABEL_7;
  }

  if (*a3 != -1)
  {
    v17 = a1;
    v15 = a5;
    v16 = a4;
    swift_once();
    a4 = v16;
    a1 = v17;
    a5 = v15;
  }

  v7 = *a4;
  if (*(*a4 + 16) && (v8 = a5, v9 = sub_252A44B78(a1), (v10 & 1) != 0))
  {
    v18 = *(*(v7 + 56) + v9);
    v8();
    sub_252E362F4();
    v11 = 0;
  }

  else
  {
LABEL_7:
    v11 = 1;
  }

  v12 = sub_252E36324();
  v13 = *(*(v12 - 8) + 56);

  return v13(a6, v11, 1, v12);
}

uint64_t sub_252A435F0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_252E37EC4();
  sub_252E37EE4();
  if (v2 != 1)
  {
    MEMORY[0x2530AE390](v1);
  }

  sub_252E37EE4();
  return sub_252E37F14();
}

uint64_t sub_252A43674()
{
  v1 = *(v0 + 9);
  if (*(v0 + 8) == 1)
  {
    sub_252E37EE4();
  }

  else
  {
    v2 = *v0;
    sub_252E37EE4();
    MEMORY[0x2530AE390](v2);
  }

  return sub_252E37EE4();
}

uint64_t sub_252A436D8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  sub_252E37EC4();
  sub_252E37EE4();
  if (v2 != 1)
  {
    MEMORY[0x2530AE390](v1);
  }

  sub_252E37EE4();
  return sub_252E37F14();
}

uint64_t sub_252A43758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 9) ^ *(a2 + 9) ^ 1u;
}

uint64_t sub_252A437A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_252E37EC4();
  sub_252E37EE4();
  if (v2 != 1)
  {
    MEMORY[0x2530AE390](v1);
  }

  MEMORY[0x2530AE390](v3);
  return sub_252E37F14();
}

uint64_t sub_252A43824()
{
  v1 = v0[2];
  if (*(v0 + 8) == 1)
  {
    sub_252E37EE4();
  }

  else
  {
    v2 = *v0;
    sub_252E37EE4();
    MEMORY[0x2530AE390](v2);
  }

  return MEMORY[0x2530AE390](v1);
}

uint64_t sub_252A43888()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  sub_252E37EC4();
  sub_252E37EE4();
  if (v2 != 1)
  {
    MEMORY[0x2530AE390](v1);
  }

  MEMORY[0x2530AE390](v3);
  return sub_252E37F14();
}

BOOL sub_252A43908(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 16) == *(a2 + 16);
}

uint64_t sub_252A43950()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

uint64_t sub_252A439D0()
{
  v1 = *(v0 + 1);
  v3 = *v0;
  StateSemantic.rawValue.getter();
  sub_252E37044();

  return MEMORY[0x2530AE390](v1);
}

uint64_t sub_252A43A40()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

void *sub_252A43AC0()
{
  result = sub_252CC55B4(&unk_2864A50C0);
  off_27F541CA8 = result;
  return result;
}

void *sub_252A43AE8()
{
  result = sub_252CC56C8(&unk_2864A5250);
  off_27F541CB0 = result;
  return result;
}

uint64_t sub_252A43B10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D00, &qword_252E42288);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E42250;
  *(v0 + 32) = 2;
  *(v0 + 40) = 66;
  v1 = type metadata accessor for HomeAttributeValue();
  v2 = objc_allocWithZone(v1);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier:0 displayString:v3];

  v5 = v4;
  [v5 setBoolValue_];
  [v5 setType_];

  *(v0 + 48) = v5;
  *(v0 + 56) = 0;
  *(v0 + 64) = 66;
  v6 = objc_allocWithZone(v1);
  v7 = sub_252E36F04();
  v8 = [v6 &off_279711370 + 6];

  v9 = v8;
  [v9 &selRef_format + 7];
  [v9 &:1 OBJC:? LABEL:? PROTOCOL:? :? :?HMExecuteOperation];

  *(v0 + 72) = v9;
  *(v0 + 80) = 1;
  *(v0 + 88) = 5;
  *(v0 + 96) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0xD000000000000014, 0x8000000252E73800, 0);
  *(v0 + 104) = 19;
  *(v0 + 112) = 12;
  *(v0 + 120) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x5349574B434F4C43, 0xE900000000000045, 0);
  *(v0 + 128) = 20;
  *(v0 + 136) = 12;
  *(v0 + 144) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0xD000000000000010, 0x8000000252E66F40, 0);
  *(v0 + 152) = 33;
  *(v0 + 160) = 14;
  *(v0 + 168) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1413563720, 0xE400000000000000, 0);
  *(v0 + 176) = 34;
  *(v0 + 184) = 14;
  *(v0 + 192) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1280266051, 0xE400000000000000, 0);
  *(v0 + 200) = 35;
  *(v0 + 208) = 14;
  *(v0 + 216) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 224) = 33;
  *(v0 + 232) = 15;
  *(v0 + 240) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x5455415F54414548, 0xE90000000000004FLL, 0);
  *(v0 + 248) = 34;
  *(v0 + 256) = 15;
  *(v0 + 264) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x5455415F4C4F4F43, 0xE90000000000004FLL, 0);
  *(v0 + 272) = 35;
  *(v0 + 280) = 15;
  *(v0 + 288) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 296) = 36;
  *(v0 + 304) = 47;
  *(v0 + 312) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4C41554E414DLL, 0xE600000000000000, 0);
  *(v0 + 320) = 36;
  *(v0 + 328) = 21;
  *(v0 + 336) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4C41554E414DLL, 0xE600000000000000, 0);
  *(v0 + 344) = 36;
  *(v0 + 352) = 18;
  *(v0 + 360) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4C41554E414DLL, 0xE600000000000000, 0);
  *(v0 + 368) = 36;
  *(v0 + 376) = 15;
  *(v0 + 384) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4E414D5F54414548, 0xEB000000004C4155, 0);
  *(v0 + 392) = 36;
  *(v0 + 400) = 20;
  *(v0 + 408) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4944494D55484544, 0xEF4F5455415F5946, 0);
  *(v0 + 416) = 35;
  *(v0 + 424) = 47;
  *(v0 + 432) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 440) = 35;
  *(v0 + 448) = 21;
  *(v0 + 456) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 464) = 1;
  *(v0 + 472) = 21;
  *(v0 + 480) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4556495443414E49, 0xE800000000000000, 0);
  *(v0 + 488) = 53;
  *(v0 + 496) = 21;
  *(v0 + 504) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4445584946, 0xE500000000000000, 0);
  *(v0 + 512) = 54;
  *(v0 + 520) = 21;
  *(v0 + 528) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4445584946, 0xE500000000000000, 0);
  *(v0 + 536) = 55;
  *(v0 + 544) = 21;
  *(v0 + 552) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4445584946, 0xE500000000000000, 0);
  *(v0 + 560) = 35;
  *(v0 + 568) = 18;
  *(v0 + 576) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 584) = 35;
  *(v0 + 592) = 20;
  *(v0 + 600) = HomeAttributeValue.__allocating_init(stringValue:unit:)(1330926913, 0xE400000000000000, 0);
  *(v0 + 608) = 46;
  *(v0 + 616) = 13;
  *(v0 + 624) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(v0 + 632) = 49;
  *(v0 + 640) = 13;
  *(v0 + 648) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415741, 0xE800000000000000, 0);
  *(v0 + 656) = 47;
  *(v0 + 664) = 13;
  *(v0 + 672) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x52415F544847494ELL, 0xE90000000000004DLL, 0);
  *(v0 + 680) = 48;
  *(v0 + 688) = 13;
  *(v0 + 696) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D52415F59415453, 0xE800000000000000, 0);
  *(v0 + 704) = 50;
  *(v0 + 712) = 13;
  *(v0 + 720) = HomeAttributeValue.__allocating_init(stringValue:unit:)(0x4D5241534944, 0xE600000000000000, 0);
  *(v0 + 728) = 0;
  *(v0 + 736) = 16;
  v10 = objc_allocWithZone(v1);
  v11 = sub_252E36F04();
  v12 = [v10 initWithIdentifier:0 displayString:v11];

  v13 = v12;
  [v13 setBoolValue_];
  [v13 setType_];

  *(v0 + 744) = v13;
  *(v0 + 752) = 1;
  *(v0 + 760) = 16;
  v14 = objc_allocWithZone(v1);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setBoolValue_];
  [v17 setType_];

  *(v0 + 768) = v17;
  *(v0 + 776) = 0;
  *(v0 + 784) = 8;
  v18 = objc_allocWithZone(v1);
  v19 = sub_252E36F04();
  v20 = [v18 initWithIdentifier:0 displayString:v19];

  v21 = v20;
  [v21 setBoolValue_];
  [v21 setType_];

  *(v0 + 792) = v21;
  *(v0 + 800) = 1;
  *(v0 + 808) = 8;
  v22 = objc_allocWithZone(v1);
  v23 = sub_252E36F04();
  v24 = [v22 initWithIdentifier:0 displayString:v23];

  v25 = v24;
  [v25 setBoolValue_];
  [v25 setType_];

  *(v0 + 816) = v25;
  *(v0 + 824) = 0;
  *(v0 + 832) = 22;
  v26 = objc_allocWithZone(v1);
  v27 = sub_252E36F04();
  v28 = [v26 initWithIdentifier:0 displayString:v27];

  v29 = v28;
  [v29 setBoolValue_];
  [v29 setType_];

  *(v0 + 840) = v29;
  *(v0 + 848) = 1;
  *(v0 + 856) = 22;
  v30 = objc_allocWithZone(v1);
  v31 = sub_252E36F04();
  v32 = [v30 initWithIdentifier:0 displayString:v31];

  v33 = v32;
  [v33 setBoolValue_];
  [v33 setType_];

  *(v0 + 864) = v33;
  *(v0 + 872) = 9;
  *(v0 + 880) = 9;
  v34 = objc_allocWithZone(v1);
  v35 = sub_252E36F04();
  v36 = [v34 initWithIdentifier:0 displayString:v35];

  v37 = v36;
  [v37 setIntegerValue_];
  [v37 setUnit_];
  [v37 setType_];

  *(v0 + 888) = v37;
  *(v0 + 896) = 10;
  *(v0 + 904) = 9;
  v38 = objc_allocWithZone(v1);
  v39 = sub_252E36F04();
  v40 = [v38 initWithIdentifier:0 displayString:v39];

  v41 = v40;
  [v41 setIntegerValue_];
  [v41 setUnit_];
  [v41 setType_];

  *(v0 + 912) = v41;
  v42 = sub_252CC5F90(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D08, &qword_252E42290);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F541CB8 = v42;
  return result;
}

uint64_t sub_252A444D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541AE8, &qword_252E419F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  *(inited + 32) = 66;
  v1 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  v4 = v3;
  [v4 setBoolValue_];
  [v4 setType_];

  *(inited + 40) = v4;
  v5 = sub_252CC6090(inited);
  swift_setDeallocating();
  result = sub_25293847C(inited + 32, &qword_27F541AF0, "FH\a");
  off_27F541CC0 = v5;
  return result;
}

uint64_t sub_252A445DC()
{
  v0 = sub_252CC49BC(qword_2864A1810);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D18, &unk_252E42298);
  result = swift_arrayDestroy();
  off_27F541CC8 = v0;
  return result;
}

void *sub_252A44638()
{
  result = sub_252CC491C(&unk_2864A0FA8);
  off_27F541CD0 = result;
  return result;
}

void *sub_252A44660()
{
  result = sub_252CC4944(&unk_2864A1248);
  off_27F541CD8 = result;
  return result;
}

void *sub_252A44688()
{
  result = sub_252CC69E0(&unk_2864A3730);
  off_27F541CE0 = result;
  return result;
}

uint64_t sub_252A446B0()
{
  v0 = sub_252CC3C4C(qword_2864A0B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D20, &qword_252E422A8);
  result = swift_arrayDestroy();
  off_27F541CE8 = v0;
  return result;
}

void *sub_252A4470C()
{
  result = sub_252CC5F68(&unk_2864A43E0);
  off_27F541CF0 = result;
  return result;
}

uint64_t sub_252A44734()
{
  v0 = sub_252CC53B0(&unk_2864A4768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D38, &qword_252E422B0);
  result = swift_arrayDestroy();
  off_27F541CF8 = v0;
  return result;
}

uint64_t sub_252A44790@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  if (qword_27F53F278 != -1)
  {
    v14 = a1;
    v15 = a2;
    swift_once();
    a2 = v15;
    a1 = v14;
  }

  v4 = off_27F541CA8;
  if (*(off_27F541CA8 + 2) && (v5 = sub_252A44F0C(a1, a2 & 0x101), (v6 & 1) != 0))
  {
    v16 = *(v4[7] + v5);
    StateSemantic.rawValue.getter();
    sub_252E37024();

    v7 = sub_252E36324();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a3;
    v11 = 0;
  }

  else
  {
    v12 = sub_252E36324();
    v8 = *(*(v12 - 8) + 56);
    v9 = v12;
    v10 = a3;
    v11 = 1;
  }

  return v8(v10, v11, 1, v9);
}

uint64_t sub_252A448D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (qword_27F53F280 != -1)
  {
    v15 = a1;
    v16 = a2;
    v17 = a3;
    swift_once();
    a2 = v16;
    a1 = v15;
    a3 = v17;
  }

  v5 = off_27F541CB0;
  if (*(off_27F541CB0 + 2) && (v6 = sub_252A44FAC(a1, a2 & 1, a3), (v7 & 1) != 0))
  {
    v18 = *(v5[7] + v6);
    StateSemantic.rawValue.getter();
    sub_252E37024();

    v8 = sub_252E36324();
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a4;
    v12 = 0;
  }

  else
  {
    v13 = sub_252E36324();
    v9 = *(*(v13 - 8) + 56);
    v10 = v13;
    v11 = a4;
    v12 = 1;
  }

  return v9(v11, v12, 1, v10);
}

unint64_t sub_252A44A10(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_252E37EC4();
  sub_252E37044();
  v6 = sub_252E37F14();

  return sub_252A4598C(a1, a2, v6);
}

unint64_t sub_252A44AB4(void *__src)
{
  v3 = *(v1 + 40);
  memcpy(__dst, __src, sizeof(__dst));
  sub_252E37EC4();
  HomeAutomationIntent.hash(into:)(v6);
  v4 = sub_252E37F14();

  return sub_252A45A44(__src, v4);
}

unint64_t sub_252A44B34(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_252E37EB4();

  return sub_252A45B48(a1, v4);
}

unint64_t sub_252A44B78(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](a1);
  v4 = sub_252E37F14();
  return sub_252A45B48(a1, v4);
}

unint64_t sub_252A44BF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if (a2)
  {
    sub_252E37044();
  }

  v6 = sub_252E37F14();

  return sub_252A45BB4(a1, a2, v6);
}

unint64_t sub_252A44CB4(void *a1, void (*a2)(void))
{
  v5 = *(v2 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if (a1)
  {
    v6 = a1;
    sub_252E376A4();
  }

  v7 = sub_252E37F14();
  return sub_252A45C80(a1, v7, a2);
}

unint64_t sub_252A44D48(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_252E37EC4();
  sub_252E37044();

  v5 = sub_252E37F14();

  return sub_252A45D74(a1 & 1, v5);
}

unint64_t sub_252A44DF4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  sub_252ABD138(v6, a1);
  v4 = sub_252E37F14();

  return sub_252A45EC4(a1, v4);
}

unint64_t sub_252A44E60(uint64_t a1)
{
  v3 = *(v1 + 40);
  type metadata accessor for DeviceEntity();
  sub_252A485D0(&qword_27F541D40, type metadata accessor for DeviceEntity);
  v4 = sub_252E36E84();
  return sub_252A45F7C(a1, v4);
}

unint64_t sub_252A44F0C(uint64_t a1, __int16 a2)
{
  v5 = *(v2 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2530AE390](a1);
  }

  sub_252E37EE4();
  v6 = sub_252E37F14();

  return sub_252A46078(a1, a2 & 0x101, v6);
}

unint64_t sub_252A44FAC(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2530AE390](a1);
  }

  MEMORY[0x2530AE390](a3);
  v8 = sub_252E37F14();

  return sub_252A4611C(a1, a2 & 1, a3, v8);
}

unint64_t sub_252A45058(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_252E37944();

  return sub_252A461B8(a1, v5);
}

unint64_t sub_252A450F4(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(void))
{
  v7 = *(v3 + 40);
  v8 = sub_252E37EC4();
  a2(v8);
  sub_252E37044();

  v9 = sub_252E37F14();
  return sub_252A46280(a1, v9, a3);
}

unint64_t sub_252A451C0(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v7 = *(v3 + 40);
  sub_252E37EC4();
  a2(a1);
  sub_252E37044();

  v8 = sub_252E37F14();
  return sub_252A472D8(a1, v8, a3);
}

unint64_t sub_252A45288(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  sub_252E37044();

  v4 = sub_252E37F14();

  return sub_252A463B0(a1, v4);
}

unint64_t sub_252A45390(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_252E37EC4();
  StateSemantic.rawValue.getter();
  sub_252E37044();

  MEMORY[0x2530AE390](a2);
  v6 = sub_252E37F14();

  return sub_252A46584(a1, a2, v6);
}

unint64_t sub_252A45430(unint64_t a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a1 & 0x100000000) == 0)
  {
    sub_252E37EF4();
  }

  v4 = sub_252E37F14();

  return sub_252A466BC(a1 | ((HIDWORD(a1) & 1) << 32), v4);
}

unint64_t sub_252A454C0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  sub_252E32E84();
  sub_252A485D0(&qword_27F540680, MEMORY[0x277CC95F0]);
  sub_252E36E94();
  MEMORY[0x2530AE390](*(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType));
  v4 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v5 = *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  sub_252E37044();

  v6 = sub_252E37F14();

  return sub_252A46740(a1, v6);
}

unint64_t sub_252A455CC(char a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  HomeError.rawValue.getter();
  sub_252E37044();

  v4 = sub_252E37F14();

  return sub_252A4689C(a1, v4);
}

unint64_t sub_252A45658(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  sub_252AB3C18();
  v4 = sub_252E37F14();

  return sub_252A46FA4(a1, v4);
}

unint64_t sub_252A456F0(int a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  v4 = sub_252E37F14();

  return sub_252A473F0(a1, v4);
}

unint64_t sub_252A4575C(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  sub_252E37EC4();
  sub_252E37EE4();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x2530AE390](a1);
  }

  v6 = sub_252E37F14();

  return sub_252A47460(a1, a2 & 1, v6);
}

unint64_t sub_252A457EC(int a1)
{
  v3 = *(v1 + 40);
  sub_252E37EC4();
  sub_252E37EF4();
  v4 = sub_252E37F14();
  return sub_252A474E4(a1, v4);
}

unint64_t sub_252A45854(uint64_t a1, void *a2)
{
  v5 = *(v2 + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](a1);
  sub_252E37EE4();
  if (a2)
  {
    v6 = a2;
    sub_252E376A4();
  }

  v7 = sub_252E37F14();

  return sub_252A47550(a1, a2, v7);
}

unint64_t sub_252A458F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_252E35CB4();
  sub_252A485D0(&qword_27F541D28, MEMORY[0x277D563F8]);
  v5 = sub_252E36E84();
  return sub_252A47650(a1, v5);
}

unint64_t sub_252A4598C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_252E37DB4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_252A45A44(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, 0x1F8uLL);
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 504 * v5;
      memcpy(v11, v7, sizeof(v11));
      memcpy(__srca, v7, sizeof(__srca));
      sub_2529353AC(v11, &v9);
      LOBYTE(v7) = _s22HomeAutomationInternal0aB6IntentV2eeoiySbAC_ACtFZ_0(__srca, __dst);
      memcpy(v12, __srca, sizeof(v12));
      sub_252935408(v12);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_252A45B48(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A45BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_252E37DB4() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_252A45C80(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a2 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = v3;
    v10 = ~v5;
    do
    {
      v11 = *(*(v8 + 48) + 8 * v6);
      if (v11)
      {
        if (a1)
        {
          a3(0);
          v12 = v11;
          v13 = a1;
          v14 = sub_252E37694();

          if (v14)
          {
            return v6;
          }
        }
      }

      else if (!a1)
      {
        return v6;
      }

      v6 = (v6 + 1) & v10;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_252A45D74(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x7954797469746E65;
    }

    else
    {
      v6 = 0x6F4D746567726174;
    }

    if (a1)
    {
      v7 = 0xEA00000000006570;
    }

    else
    {
      v7 = 0xEA00000000006564;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x7954797469746E65 : 0x6F4D746567726174;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000006570 : 0xEA00000000006564;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_252E37DB4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252A45EC4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);

      v9 = sub_252AE9CA4(v8, a1);

      if (v9)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_252A45F7C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for DeviceEntity();
    sub_252A485D0(&qword_27F541D48, type metadata accessor for DeviceEntity);
    do
    {
      v7 = *(*(v2 + 48) + 8 * v4);
      if (sub_252E36EF4())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_252A46078(uint64_t a1, int a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *(v8 + 9);
      if (*(v8 + 8))
      {
        if (((a2 ^ 1 | v9 ^ ((a2 & 0x100) >> 8)) & 1) == 0)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1 && ((v9 ^ ((a2 & 0x100) >> 8)) & 1) == 0)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A4611C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    do
    {
      v9 = *(v4 + 48) + 24 * result;
      v10 = *(v9 + 16);
      if (*(v9 + 8))
      {
        if ((a2 & 1) != 0 && v10 == a3)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v9 == a1 && v10 == a3)
      {
        return result;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A461B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_252A47ED4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2530ADE10](v9, a1);
      sub_252A47F30(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_252A46280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a2 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = v3;
    v9 = ~v5;
    while (1)
    {
      v17 = *(*(v8 + 48) + v6);
      v10 = a3();
      v12 = v11;
      if (v10 == a3() && v12 == v13)
      {
        break;
      }

      v15 = sub_252E37DB4();

      if ((v15 & 1) == 0)
      {
        v6 = (v6 + 1) & v9;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

unint64_t sub_252A463B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v20 = ~v3;
    v21 = a1;
    while (1)
    {
      v5 = *(*(v22 + 48) + v4);
      v6 = v5 == 2 ? 0xD000000000000011 : 0x4773656572676564;
      v7 = v5 == 2 ? 0x8000000252E67E40 : 0xEE00636972656E65;
      v8 = *(*(v22 + 48) + v4) ? 0x4373656572676564 : 0x746E6563726570;
      v9 = *(*(v22 + 48) + v4) ? 0xEE00737569736C65 : 0xE700000000000000;
      v10 = *(*(v22 + 48) + v4) <= 1u ? v8 : v6;
      v11 = *(*(v22 + 48) + v4) <= 1u ? v9 : v7;
      v12 = v21 == 2 ? 0xD000000000000011 : 0x4773656572676564;
      v13 = v21 == 2 ? 0x8000000252E67E40 : 0xEE00636972656E65;
      v14 = v21 ? 0x4373656572676564 : 0x746E6563726570;
      v15 = v21 ? 0xEE00737569736C65 : 0xE700000000000000;
      v16 = v21 <= 1 ? v14 : v12;
      v17 = v21 <= 1 ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = sub_252E37DB4();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v20;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_252A46584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    while (1)
    {
      v8 = *(v3 + 48) + 16 * v5;
      v9 = *(v8 + 8);
      v17 = *v8;
      v10 = StateSemantic.rawValue.getter();
      v12 = v11;
      if (v10 == StateSemantic.rawValue.getter() && v12 == v13)
      {
        break;
      }

      v15 = sub_252E37DB4();

      if (v15)
      {
        goto LABEL_4;
      }

LABEL_5:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

LABEL_4:
    if (v9 == a2)
    {
      return v5;
    }

    goto LABEL_5;
  }

  return v5;
}

unint64_t sub_252A466BC(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*(v7 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return result;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v7 == a1)
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_252A46740(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType;
    v8 = (a1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    do
    {
      v9 = *(*(v2 + 48) + 8 * v4);

      if ((sub_252E32E54() & 1) != 0 && *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(a1 + v7))
      {
        if (*(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v8 && *(v9 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v8[1])
        {

          return v4;
        }

        v11 = sub_252E37DB4();

        if (v11)
        {
          return v4;
        }
      }

      else
      {
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}