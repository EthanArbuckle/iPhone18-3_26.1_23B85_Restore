void sub_22BBF9AD8()
{
  if (!qword_27D8E2A20)
  {
    sub_22BBEB2E0(qword_27D8E2A28, qword_22BDBD128);
    v0 = sub_22BDBAE24();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8E2A20);
    }
  }
}

uint64_t sub_22BBF9B44(uint64_t a1)
{
  result = sub_22BDBA764();
  if (v3 <= 0x3F)
  {
    result = sub_22BDBA014();
    if (v4 <= 0x3F)
    {
      v5 = *(a1 + 16);
      result = swift_checkMetadataState();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BBF9BE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_22BDBA764();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_22BDBA014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 > v12)
  {
    v12 = *(v14 + 84);
  }

  v16 = *(v10 + 80);
  v17 = *(*(v9 - 8) + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v16;
  if (a2 <= v12)
  {
LABEL_27:
    if (v8 == v12)
    {
      v28 = a1;
      v11 = v8;
      v13 = v6;
    }

    else
    {
      v28 = (a1 + v20) & ~v16;
      if (v11 == v12)
      {
        v13 = v9;
      }

      else
      {
        v28 = (v28 + v17 + v18) & ~v18;
        v11 = v15;
      }
    }

    return sub_22BB3AA28(v28, v11, v13);
  }

  v21 = ((v17 + (v20 & ~v16) + v18) & ~v18) + v19;
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v12 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 < 2)
    {
LABEL_26:
      if (v12)
      {
        goto LABEL_27;
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_26;
  }

LABEL_16:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = v21;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v12 + (v27 | v25) + 1;
}

void sub_22BBF9EA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_22BDBA764();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_22BDBA014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  if (v13 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = *(v15 + 84);
  if (v17 > v16)
  {
    v16 = *(v15 + 84);
  }

  v18 = *(v12 + 80);
  v19 = *(v9 + 64) + v18;
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v15 + 80);
  v22 = ((v20 + (v19 & ~v18) + v21) & ~v21) + *(v15 + 64);
  v23 = 8 * v22;
  if (a3 <= v16)
  {
    v24 = 0;
  }

  else if (v22 <= 3)
  {
    v27 = ((a3 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v16 >= a2)
  {
    switch(v24)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v10 == v16)
          {
            v30 = a1;
            v31 = a2;
            v13 = v10;
            v14 = v8;
          }

          else
          {
            v30 = &a1[v19] & ~v18;
            if (v13 == v16)
            {
              v31 = a2;
              v14 = v11;
            }

            else
            {
              v30 = (v30 + v20 + v21) & ~v21;
              v31 = a2;
              v13 = v17;
            }
          }

          sub_22BB336D0(v30, v31, v13, v14);
        }

        break;
    }
  }

  else
  {
    v25 = ~v16 + a2;
    if (v22 < 4)
    {
      v26 = (v25 >> v23) + 1;
      if (v22)
      {
        v29 = v25 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else if (v22 == 2)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        a1[v22] = v26;
        break;
      case 2:
        *&a1[v22] = v26;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v22] = v26;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22BBFA1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v125 = a4;
  v121 = a3;
  v122 = a2;
  v116 = a1;
  v119 = sub_22BDB46B4();
  v6 = sub_22BB30444(v119);
  v118 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  sub_22BB30560();
  v117 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  v123 = &v112 - v12;
  sub_22BB2F120();
  v141 = sub_22BDBA4B4();
  v13 = sub_22BB30444(v141);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v139 = v19 - v18;
  sub_22BB2F120();
  v20 = sub_22BDBA594();
  v21 = sub_22BB30444(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22BB30560();
  v124 = v26;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v27);
  v29 = (&v112 - v28);
  v114 = sub_22BDB77D4();
  v30 = sub_22BB30444(v114);
  v113 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  v120 = v35 - v34;
  sub_22BB2F120();
  v36 = sub_22BDBA634();
  v37 = sub_22BB30444(v36);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  sub_22BB30560();
  v115 = v40;
  sub_22BB30B70();
  v42 = MEMORY[0x28223BE20](v41);
  v44 = &v112 - v43;
  v146 = MEMORY[0x277D84F90];
  v45 = *(a5 + 16);
  v131 = a5;
  v132 = v45;
  v133 = (v46 + 16);
  v127 = v15;
  v137 = (v15 + 32);
  v138 = v15 + 16;
  v140 = *MEMORY[0x277D72A38];
  v142 = (v23 + 104);
  v143 = v23;
  v136 = (v23 + 32);
  v47 = 0;
  v129 = v46;
  v130 = (v46 + 8);
  v128 = v42;
  v126 = &v112 - v43;
  while (v47 != v132)
  {
    sub_22BB2F374();
    v50 = *(v49 + 16);
    v50(v44, v131 + v48 + *(v49 + 72) * v47, v36);
    v51 = sub_22BBFB614();
    if (!v51)
    {

      v105 = type metadata accessor for SearchToolExecutorError();
      sub_22BB30548();
      sub_22BC05284(v106, v107);
      sub_22BB369E0();
      swift_allocError();
      v50(v108, v44, v36);
      sub_22BB2F324();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v109 = sub_22BB9778C();
      v110(v109);
      return v105;
    }

    v52 = *(v51 + 16);
    if (v52)
    {
      v135 = v47;
      v145 = MEMORY[0x277D84F90];
      v53 = v51;
      sub_22BD27A40();
      v54 = v145;
      sub_22BB2F374();
      v134 = v53;
      v56 = v53 + v55;
      v144 = *(v57 + 72);
      v58 = *(v57 + 16);
      do
      {
        v59 = v139;
        v60 = v141;
        v58(v139, v56, v141);
        v61 = swift_allocBox();
        (*v137)(v62, v59, v60);
        *v29 = v61;
        (*v142)(v29, v140, v20);
        v145 = v54;
        v63 = v20;
        v64 = *(v54 + 16);
        if (v64 >= *(v54 + 24) >> 1)
        {
          sub_22BD27A40();
          v54 = v145;
        }

        *(v54 + 16) = v64 + 1;
        sub_22BB2F374();
        (*(v66 + 32))(v54 + v65 + *(v66 + 72) * v64, v29, v63);
        v56 += v144;
        --v52;
        v20 = v63;
      }

      while (v52);
      v44 = v126;
      v36 = v128;
      (*v130)(v126, v128);

      v47 = v135;
    }

    else
    {

      v67 = sub_22BB9778C();
      v68(v67);
      v54 = MEMORY[0x277D84F90];
    }

    ++v47;
    sub_22BD669CC(v54);
  }

  v69 = v120;
  sub_22BDB63A4();
  v70 = sub_22BDB77C4();
  sub_22BDBB104();
  sub_22BB379BC();
  if (os_log_type_enabled(v70, v71))
  {
    sub_22BB2F114();
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_22BB2C000, v70, v69, "Constructed valid SearchEntityTypeIdentifier", v72, 2u);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  (*(v113 + 8))(v120, v114);
  sub_22BDBA3A4();
  v73 = swift_allocBox();
  if (qword_27D8E2278 != -1)
  {
    swift_once();
  }

  v74 = sub_22BBED810(v36, qword_27D8E2AB0);
  (*v133)(v115, v74, v36);
  sub_22BDBA374();
  *v124 = v73;
  v75 = *MEMORY[0x277D729E0];
  v144 = *(v143 + 104);
  v144();
  sub_22BDB46A4();
  sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_22BDBCBD0;
  *(v76 + 32) = v121;
  *(v76 + 40) = v125;

  sub_22BDB45F4();
  sub_22BBE6DE0(&qword_27D8E2B50, &qword_22BDBD258);
  v77 = (sub_22BBE6DE0(&qword_27D8E2B58, &unk_22BDBD260) - 8);
  v78 = *(*v77 + 72);
  v79 = (*(*v77 + 80) + 32) & ~*(*v77 + 80);
  v80 = swift_allocObject();
  v139 = v80;
  *(v80 + 16) = xmmword_22BDBD160;
  v81 = v20;
  v82 = (v80 + v79);
  v83 = v77[14];
  *v82 = 0x7972657551776172;
  *(v82 + 1) = 0xE800000000000000;
  v84 = sub_22BDBA514();
  v85 = swift_allocBox();
  v86 = v122;
  *v87 = v116;
  v87[1] = v86;
  LODWORD(v137) = *MEMORY[0x277D729B8];
  sub_22BB30474(v84);
  v136 = *(v88 + 104);
  v138 = v88 + 104;
  v136();
  *&v82[v83] = v85;
  LODWORD(v135) = *MEMORY[0x277D72A58];
  v89 = v144;
  (v144)(&v82[v83]);
  v134 = v78;
  v90 = &v82[v78];
  v91 = v77[14];
  *v90 = 0x6E65644965707974;
  *(v90 + 1) = 0xEF73726569666974;
  v92 = *(v143 + 16);
  v112 = v81;
  v92(&v82[v78 + v91], v124, v81);
  v93 = &v82[2 * v78];
  v94 = v77[14];
  strcpy(v93, "rewrittenQuery");
  v93[15] = -18;
  v95 = swift_allocBox();
  v96 = v125;
  *v97 = v121;
  v97[1] = v96;
  (v136)(v97, v137, v84);
  *&v93[v94] = v95;
  v89(&v93[v94], v135, v81);
  v98 = &v82[3 * v134];
  v99 = v77[14];
  *v98 = 0x7275746375727473;
  *(v98 + 1) = 0xEF79726575516465;
  v141 = swift_allocBox();
  v100 = v118;
  v101 = v123;
  v102 = v119;
  (*(v118 + 16))(v117, v123, v119);
  sub_22BC05284(&qword_27D8E2B60, MEMORY[0x277D36F88]);

  sub_22BDBA474();
  *&v98[v99] = v141;
  v103 = &v98[v99];
  v104 = v112;
  (v144)(v103, v140, v112);
  v105 = sub_22BDBAB14();
  (*(v100 + 8))(v101, v102);
  (*(v143 + 8))(v124, v104);
  return v105;
}

uint64_t sub_22BBFAD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a1;
  v9 = sub_22BDB77D4();
  v5[10] = v9;
  sub_22BB30434(v9);
  v5[11] = v10;
  v12 = *(v11 + 64);
  v5[12] = sub_22BB30ACC();
  v13 = *(*(sub_22BDB5F24() - 8) + 64);
  v5[13] = sub_22BB30ACC();
  v5[14] = *(a4 + 16);
  v5[15] = *(a4 + 24);
  v14 = type metadata accessor for SearchToolExecutor.SearchResults();
  v5[16] = v14;
  v15 = sub_22BDBB254();
  v5[17] = v15;
  sub_22BB30434(v15);
  v5[18] = v16;
  v18 = *(v17 + 64);
  v19 = sub_22BB30ACC();
  v5[19] = v19;
  v20 = *(v14 - 8);
  v5[20] = v20;
  v21 = *(v20 + 64);
  v5[21] = sub_22BB30ACC();
  swift_task_alloc();
  sub_22BB30B34();
  v5[22] = v22;
  *v22 = v23;
  v22[1] = sub_22BBFAF20;

  return sub_22BBFC7F0(v19, a2, a3, a4);
}

uint64_t sub_22BBFAF20()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 184) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BBFB018()
{
  sub_22BB34E84();
  v1 = v0[19];
  v2 = v0[16];
  v3 = sub_22BB3A190();
  sub_22BB31814(v3, v4, v2);
  if (v5)
  {
    v6 = v0[12];
    (*(v0[18] + 8))(v1, v0[17]);
    sub_22BDB63A4();
    v7 = sub_22BDB77C4();
    v8 = sub_22BDBB114();
    if (sub_22BB333C0(v8))
    {
      sub_22BB2F114();
      v9 = swift_slowAlloc();
      sub_22BB360F0(v9);
      sub_22BB2F0A8(&dword_22BB2C000, v10, v11, "failed to resolve SearchTool output");
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    v13 = v0[14];
    v12 = v0[15];
    v15 = v0[11];
    v14 = v0[12];
    v16 = v0[10];
    v17 = v0[7];

    v18 = *(v15 + 8);
    v19 = sub_22BB331D4();
    v20(v19);
    type metadata accessor for SearchToolExecutor.HydratedSearchResults();
    sub_22BB30B28();
    sub_22BB336D0(v21, v22, v23, v24);
    v25 = v0[21];
    v26 = v0[19];
    v28 = v0[12];
    v27 = v0[13];

    sub_22BB360FC();

    return v29();
  }

  else
  {
    v31 = v0[21];
    v33 = v0[14];
    v32 = v0[15];
    v34 = v0[13];
    v36 = v0[8];
    v35 = v0[9];
    v37 = *(v0[20] + 32);
    v38 = sub_22BB31F54();
    v39(v38);
    sub_22BDB47A4();
    v40 = v35 + *(v36 + 40);
    (*(v32 + 32))(v33, v32);
    v41 = v0[6];
    sub_22BB69FEC(v0 + 2, v0[5]);
    sub_22BDB9214();
    sub_22BDB4374();
    v42 = sub_22BDB43E4();
    sub_22BB2F330(v42);
    (*(v43 + 8))(v34);
    sub_22BDBA594();
    v44 = MEMORY[0x277D72A78];
    sub_22BC05284(&qword_27D8E2AD0, MEMORY[0x277D72A78]);
    sub_22BC05284(&qword_27D8E2AD8, v44);
    sub_22BDB4794();

    sub_22BB32FA4(v0 + 2);
    swift_task_alloc();
    sub_22BB30B34();
    v0[24] = v45;
    *v45 = v46;
    v45[1] = sub_22BBFB364;
    v47 = v0[21];
    v48 = v0[8];
    v49 = v0[9];
    v50 = v0[7];

    return sub_22BC014D0(v50, v47, v48);
  }
}

uint64_t sub_22BBFB364()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v3 = v2;
  v5 = *(v4 + 192);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 200) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BBFB45C()
{
  sub_22BB2F35C();
  (*(v0[20] + 8))(v0[21], v0[16]);
  v1 = v0[21];
  v2 = v0[19];
  v4 = v0[12];
  v3 = v0[13];

  sub_22BB360FC();

  return v5();
}

uint64_t sub_22BBFB4F4()
{
  sub_22BB2F35C();
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];

  sub_22BB2F09C();

  return v6();
}

uint64_t sub_22BBFB578()
{
  sub_22BB2F35C();
  (*(v0[20] + 8))(v0[21], v0[16]);
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];

  sub_22BB2F09C();

  return v6();
}

uint64_t sub_22BBFB614()
{
  v1 = sub_22BDB77D4();
  v2 = sub_22BB30444(v1);
  v128 = v3;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v2);
  v8 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v125 = &v118 - v9;
  sub_22BB2F120();
  v132 = sub_22BDB4464();
  v10 = sub_22BB30444(v132);
  v134 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  sub_22BB30560();
  v130 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  v131 = &v118 - v16;
  sub_22BB2F120();
  v129 = sub_22BDBA4B4();
  v17 = sub_22BB30444(v129);
  v133 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  sub_22BB30574();
  v123 = v22 - v21;
  sub_22BB2F120();
  v23 = sub_22BDBA634();
  v24 = sub_22BB30444(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  sub_22BB30560();
  v126 = v29;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v30);
  v124 = &v118 - v31;
  sub_22BB30B70();
  v33 = MEMORY[0x28223BE20](v32);
  v35 = &v118 - v34;
  MEMORY[0x28223BE20](v33);
  v127 = (&v118 - v36);
  sub_22BB30B70();
  v38 = MEMORY[0x28223BE20](v37);
  v40 = (&v118 - v39);
  MEMORY[0x28223BE20](v38);
  v42 = &v118 - v41;
  v43 = v0;
  sub_22BDBA624();
  v44 = (*(v26 + 88))(v42, v23);
  v45 = v44;
  if (v44 == *MEMORY[0x277D72D50])
  {
    v46 = v8;
    v47 = *(v26 + 16);
    v125 = v42;
    v47(v40, v42, v23);
    (*(v26 + 96))(v40, v23);
    v48 = *v40;
    v49 = sub_22BDBA604();
    v50 = swift_projectBox();
    v51 = *(v49 - 8);
    v52 = (*(v51 + 88))(v50, v49);
    if (v52 == *MEMORY[0x277D72CC0])
    {
      v53 = v52;
      v121 = v48;
      v54 = swift_allocBox();
      (*(v51 + 104))(v55, v53, v49);
      v56 = v127;
      *v127 = v54;
      (*(v26 + 104))(v56, v45, v23);
      v57 = sub_22BDB4444();
      v58 = *(v26 + 8);
      v59 = sub_22BB3B528();
      (v58)(v59);
      v60 = *(v57 + 16);
      if (v60)
      {
        v124 = v58;
        v122 = v26;
        v120 = v23;
        v135 = MEMORY[0x277D84F90];
        sub_22BD27A98();
        v61 = v135;
        v62 = *(v134 + 2);
        v63 = v134[80];
        v119 = v57;
        v64 = v57 + ((v63 + 32) & ~v63);
        v127 = *(v134 + 9);
        v128 = "AnswerSynthesisResult";
        v134 += 16;
        v65 = v134 - 8;
        v126 = v133 + 4;
        v66 = v123;
        do
        {
          v68 = v131;
          v67 = v132;
          v62(v131, v64, v132);
          v62(v130, v68, v67);
          sub_22BB52898();
          sub_22BC05284(&qword_27D8E2AC8, v69);
          sub_22BDBA474();
          v70 = *v65;
          v71 = sub_22BB3304C();
          v72(v71);
          v135 = v61;
          v73 = *(v61 + 16);
          if (v73 >= *(v61 + 24) >> 1)
          {
            sub_22BD27A98();
            v61 = v135;
          }

          *(v61 + 16) = v73 + 1;
          sub_22BB2F374();
          (*(v75 + 32))(v61 + v74 + *(v75 + 72) * v73, v66, v129);
          v64 += v127;
          --v60;
        }

        while (v60);

        v23 = v120;
        v58 = v124;
      }

      else
      {

        v61 = MEMORY[0x277D84F90];
      }

      v42 = v125;
      goto LABEL_21;
    }

    v129 = v1;

    v42 = v125;
    v8 = v46;
LABEL_13:
    sub_22BDB63A4();
    v95 = v26;
    v96 = *(v26 + 16);
    v97 = v126;
    v96(v126, v43, v23);
    v98 = v8;
    v99 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB379BC();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = sub_22BB31AD8();
      v134 = v8;
      v102 = v101;
      v133 = sub_22BB314C8();
      v135 = v133;
      *v102 = 136315138;
      v96(v127, v97, v23);
      sub_22BDBAC14();
      v58 = *(v95 + 8);
      (v58)(v97, v23);
      v103 = sub_22BB331D4();
      v106 = sub_22BB32EE0(v103, v104, v105);

      *(v102 + 4) = v106;
      _os_log_impl(&dword_22BB2C000, v99, v98, "Unable to convert %s into SearchEntityTypeIdentifier representation", v102, 0xCu);
      sub_22BB32FA4(v133);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (*(v128 + 1))(v134, v129);
    }

    else
    {

      v58 = *(v95 + 8);
      (v58)(v97, v23);
      (*(v128 + 1))(v8, v129);
    }

    v61 = 0;
LABEL_21:
    (v58)(v42, v23);
    return v61;
  }

  v129 = v1;
  if (v44 != *MEMORY[0x277D72D28])
  {
    goto LABEL_13;
  }

  v76 = v26;
  v77 = *(v26 + 16);
  v77(v35, v42, v23);
  v78 = *(v26 + 96);
  v79 = sub_22BB3B528();
  v80(v79);
  v81 = *v35;
  v82 = *(*v35 + 24);
  v123 = *(*v35 + 16);
  v83 = v81[5];
  v120 = v81[4];
  v121 = v82;
  v126 = v81;

  v119 = v83;

  v84 = v125;
  sub_22BDB63A4();
  v85 = v124;
  v77(v124, v0, v23);
  v86 = sub_22BDB77C4();
  v87 = sub_22BDBB104();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = sub_22BB31AD8();
    v122 = v76;
    v89 = v88;
    v118 = sub_22BB314C8();
    v135 = v118;
    *v89 = 136315138;
    v77(v127, v85, v23);
    sub_22BB3B528();
    v90 = v42;
    v91 = sub_22BDBAC14();
    v93 = v92;
    v124 = *(v122 + 8);
    (v124)(v85, v23);
    v94 = sub_22BB32EE0(v91, v93, &v135);

    *(v89 + 4) = v94;
    v42 = v90;
    _os_log_impl(&dword_22BB2C000, v86, v87, "Converting %s to SearchEntityTypeIdentifier representation", v89, 0xCu);
    sub_22BB32FA4(v118);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    v107 = *(v76 + 8);
    v108 = sub_22BB3B528();
    v124 = v109;
    (v109)(v108);
  }

  (*(v128 + 1))(v84, v129);
  v110 = v131;
  sub_22BDB4454();
  sub_22BBE6DE0(&qword_27D8E2548, &qword_22BDBD170);
  v111 = v133[9];
  v112 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_22BDBCBD0;
  v113 = v134;
  v114 = v132;
  (*(v134 + 2))(v130, v110, v132);
  sub_22BB52898();
  sub_22BC05284(v115, v116);
  sub_22BDBA474();
  (*(v113 + 1))(v110, v114);

  (v124)(v42, v23);
  return v61;
}

uint64_t sub_22BBFC0C8()
{
  v0 = sub_22BDBA634();
  sub_22BC052C8(v0, qword_27D8E2AB0);
  v1 = sub_22BBED810(v0, qword_27D8E2AB0);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x800000022BDD15D0;
  v2[4] = 0xD00000000000001ALL;
  v2[5] = 0x800000022BDD1620;
  *v1 = v2;
  v3 = *MEMORY[0x277D72D28];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_22BBFC1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22BDBA594();
  sub_22BB30ED8(v10);
  (*(v11 + 32))(a5, a1);
  sub_22BB72044();
  v12 = type metadata accessor for SearchToolExecutor.SearchResults();
  sub_22BBDB5D0(a2, a5 + v12[9], &qword_27D8E2530, &qword_22BDBCBF0);
  result = sub_22BBDB5D0(a3, a5 + v12[10], &qword_27D8E2528, &unk_22BDBD190);
  *(a5 + v12[11]) = a4;
  return result;
}

uint64_t sub_22BBFC27C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_22BDBA594();
  sub_22BB30ED8(v16);
  (*(v17 + 32))(a8, a1);
  v18 = type metadata accessor for SearchToolExecutor.HydratedSearchResults();
  *(a8 + v18[9]) = a2;
  v19 = (a8 + v18[10]);
  *v19 = a3;
  v19[1] = a4;
  sub_22BBDB5D0(a5, a8 + v18[11], &qword_27D8E2530, &qword_22BDBCBF0);
  result = sub_22BBDB5D0(a6, a8 + v18[12], &qword_27D8E2528, &unk_22BDBD190);
  *(a8 + v18[13]) = a7;
  return result;
}

uint64_t sub_22BBFC380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v15 = sub_22BDB60B4();
  v16 = sub_22BB30444(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  sub_22BB30574();
  v23 = v22 - v21;
  v24 = sub_22BDB8E14();
  sub_22BB314BC(v24);
  v55 = v26;
  v56 = v25;
  v59 = a1;
  (*(v26 + 16))(a9, a1);
  v27 = type metadata accessor for SearchToolExecutor();
  v28 = v27[9];
  v29 = sub_22BDBA014();
  sub_22BB314BC(v29);
  v53 = v31;
  v54 = v30;
  v58 = a2;
  (*(v31 + 16))(a9 + v28, a2);
  v32 = *(a11 - 8);
  v57 = a3;
  (*(v32 + 16))(a9 + v27[10], a3, a11);
  v33 = v27[11];
  sub_22BB3269C();
  sub_22BC051C4(a4, a9 + v34);
  v35 = v27[12];
  sub_22BB72ECC();
  sub_22BC051C4(a5, a9 + v36);
  sub_22BB69088(a6, a9 + v27[13]);
  v37 = v27[14];
  v38 = sub_22BDB9774();
  sub_22BB314BC(v38);
  v40 = v39;
  (*(v39 + 16))(a9 + v37, a7, v38);
  sub_22BBBEE60(a8, a9 + v27[15], &qword_27D8E2B28, &unk_22BDBD230);
  (*(v18 + 104))(v23, *MEMORY[0x277D1EBC8], v15);
  LOBYTE(v37) = sub_22BDB60A4();
  (*(v18 + 8))(v23, v15);
  if (v37)
  {
    v41 = sub_22BDB5F64();
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    sub_22BDB5F54();
    sub_22BB30F68();
    type metadata accessor for SearchToolResolver();
    swift_allocObject();
    v44 = sub_22BB358DC();
    v45 = sub_22BC06880(v44);
    sub_22BB58728(a8, &qword_27D8E2B28, &unk_22BDBD230);
    (*(v40 + 8))(a7, v38);
    sub_22BB32FA4(a6);
    sub_22BB3A398();
    sub_22BB3593C();
    sub_22BC05344(a4, v46);
    (*(v32 + 8))(v57, a11);
    (*(v53 + 8))(v58, v54);
    (*(v55 + 8))(v59, v56);
  }

  else
  {
    sub_22BB58728(a8, &qword_27D8E2B28, &unk_22BDBD230);
    (*(v40 + 8))(a7, v38);
    sub_22BB32FA4(a6);
    sub_22BB3A398();
    sub_22BB3593C();
    sub_22BC05344(a4, v47);
    (*(v32 + 8))(v57, a11);
    (*(v53 + 8))(v58, v54);
    (*(v55 + 8))(v59, v56);
    v45 = 0;
  }

  *(a9 + v27[16]) = v45;
  v48 = v27[17];
  v49 = sub_22BDB9C14();
  sub_22BB30ED8(v49);
  return (*(v50 + 32))(a9 + v48, a10);
}

uint64_t sub_22BBFC7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v7 = sub_22BDBA0C4();
  v5[22] = v7;
  v8 = *(v7 - 8);
  v5[23] = v8;
  v9 = *(v8 + 64) + 15;
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v10 = sub_22BDBA0D4();
  v5[26] = v10;
  v11 = *(v10 - 8);
  v5[27] = v11;
  v12 = *(v11 + 64) + 15;
  v5[28] = swift_task_alloc();
  v13 = *(*(sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190) - 8) + 64) + 15;
  v5[29] = swift_task_alloc();
  v5[30] = *(a4 + 24);
  v14 = *(a4 + 16);
  v5[31] = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[32] = AssociatedTypeWitness;
  v16 = sub_22BDBB254();
  v5[33] = v16;
  v17 = *(v16 - 8);
  v5[34] = v17;
  v18 = *(v17 + 64) + 15;
  v5[35] = swift_task_alloc();
  v19 = *(*(sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0) - 8) + 64) + 15;
  v5[36] = swift_task_alloc();
  v20 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  v5[37] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[40] = AssociatedConformanceWitness;
  v23 = type metadata accessor for TypedValueExecutionResult();
  v5[41] = v23;
  v24 = *(v23 - 8);
  v5[42] = v24;
  v25 = *(v24 + 64) + 15;
  v5[43] = swift_task_alloc();
  v26 = sub_22BDB43E4();
  v5[44] = v26;
  v27 = *(v26 - 8);
  v5[45] = v27;
  v28 = *(v27 + 64) + 15;
  v5[46] = swift_task_alloc();
  v29 = sub_22BDB8E14();
  v5[47] = v29;
  v30 = *(v29 - 8);
  v5[48] = v30;
  v31 = *(v30 + 64) + 15;
  v5[49] = swift_task_alloc();
  v32 = type metadata accessor for ToolExecutionEventStream();
  v5[50] = v32;
  WitnessTable = swift_getWitnessTable();
  v5[51] = WitnessTable;
  v5[7] = AssociatedTypeWitness;
  v5[8] = v32;
  v5[9] = AssociatedConformanceWitness;
  v5[10] = WitnessTable;
  v34 = type metadata accessor for ToolExecution.Outcome();
  v5[52] = v34;
  v35 = *(v34 - 8);
  v5[53] = v35;
  v36 = *(v35 + 64) + 15;
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v37 = *(v14 - 8);
  v5[58] = v37;
  v38 = *(v37 + 64) + 15;
  v5[59] = swift_task_alloc();
  v39 = sub_22BDBA014();
  v5[60] = v39;
  v40 = *(v39 - 8);
  v5[61] = v40;
  v41 = *(v40 + 64) + 15;
  v5[62] = swift_task_alloc();
  v42 = *(*(type metadata accessor for Resolver() - 8) + 64) + 15;
  v5[63] = swift_task_alloc();
  v43 = sub_22BBE6DE0(&qword_27D8E2B18, &qword_22BDBD218);
  v5[64] = v43;
  v44 = *(*(v43 - 8) + 64) + 15;
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v45 = sub_22BDBA594();
  v5[68] = v45;
  v46 = *(v45 - 8);
  v5[69] = v46;
  v47 = *(v46 + 64) + 15;
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v48 = sub_22BDBA3A4();
  v5[74] = v48;
  v49 = *(v48 - 8);
  v5[75] = v49;
  v50 = *(v49 + 64) + 15;
  v5[76] = swift_task_alloc();
  v51 = type metadata accessor for SearchToolExecutor.SearchResults();
  v5[77] = v51;
  v52 = *(v51 - 8);
  v5[78] = v52;
  v53 = *(v52 + 64) + 15;
  v5[79] = swift_task_alloc();
  v54 = sub_22BDB60B4();
  v5[80] = v54;
  v55 = *(v54 - 8);
  v5[81] = v55;
  v56 = *(v55 + 64) + 15;
  v5[82] = swift_task_alloc();
  v57 = sub_22BDB9F64();
  v5[83] = v57;
  v58 = *(v57 - 8);
  v5[84] = v58;
  v59 = *(v58 + 64) + 15;
  v5[85] = swift_task_alloc();
  v60 = sub_22BDB5414();
  v5[86] = v60;
  v61 = *(v60 - 8);
  v5[87] = v61;
  v62 = *(v61 + 64) + 15;
  v5[88] = swift_task_alloc();
  v63 = sub_22BDB7C54();
  v5[89] = v63;
  v64 = *(v63 - 8);
  v5[90] = v64;
  v65 = *(v64 + 64) + 15;
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v66 = type metadata accessor for InvocationOptions(0);
  v5[93] = v66;
  v67 = *(*(v66 - 8) + 64) + 15;
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v68 = sub_22BDB77D4();
  v5[97] = v68;
  v69 = *(v68 - 8);
  v5[98] = v69;
  v70 = *(v69 + 64) + 15;
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v5[104] = swift_task_alloc();
  v5[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBFD168, 0, 0);
}

uint64_t sub_22BBFD168()
{
  v72 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 144);
  sub_22BDB63A4();

  v3 = sub_22BDB77C4();
  v4 = sub_22BDBB134();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 840);
  v7 = *(v0 + 784);
  v8 = *(v0 + 776);
  if (v5)
  {
    v9 = *(v0 + 144);
    v10 = sub_22BB31AD8();
    v11 = sub_22BB314C8();
    v71 = v11;
    *v10 = 136315138;
    sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
    v12 = sub_22BDBAAF4();
    v14 = sub_22BB32EE0(v12, v13, &v71);

    *(v10 + 4) = v14;
    sub_22BB30B08(&dword_22BB2C000, v15, v16, "SearchToolExecutor: calling SearchTool with parameters: %s");
    sub_22BB32FA4(v11);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v17 = *(v7 + 8);
  v18 = sub_22BB30AE4();
  v17(v18);
  v70 = v17;
  *(v0 + 848) = v17;
  v19 = *(v0 + 832);
  v20 = *(v0 + 768);
  v21 = *(v0 + 760);
  v22 = *(v0 + 744);
  v23 = *(v0 + 152);
  v24 = *(v0 + 168) + *(*(v0 + 160) + 44);
  v25 = sub_22BB3304C();
  sub_22BBBEE60(v25, v26, v27, v28);
  v29 = (v24 + v22[5]);
  v31 = *v29;
  v30 = v29[1];

  v32 = sub_22BDB4374();
  v34 = v33;
  sub_22BBBEE60(v24 + v22[7], v20 + v22[7], &qword_27D8E2B20, &unk_22BDBF750);
  v35 = (v20 + v22[5]);
  *v35 = v31;
  v35[1] = v30;
  v36 = (v20 + v22[6]);
  *v36 = v32;
  v36[1] = v34;
  sub_22BDB63A4();
  sub_22BB3269C();
  v37 = sub_22BB2F0E0();
  sub_22BC051C4(v37, v38);
  v39 = sub_22BDB77C4();
  v40 = sub_22BDBB134();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 832);
  v43 = *(v0 + 784);
  v44 = *(v0 + 776);
  v45 = *(v0 + 760);
  if (v41)
  {
    v46 = *(v0 + 752);
    v47 = *(v0 + 744);
    v69 = *(v0 + 832);
    v48 = sub_22BB31AD8();
    v49 = sub_22BB314C8();
    v71 = v49;
    *v48 = 136315138;
    sub_22BB3269C();
    sub_22BC051C4(v45, v46);
    sub_22BB2F12C();
    sub_22BDBAC14();
    sub_22BB3593C();
    sub_22BC05344(v45, v50);
    v51 = sub_22BB2F12C();
    v54 = sub_22BB32EE0(v51, v52, v53);

    *(v48 + 4) = v54;
    _os_log_impl(&dword_22BB2C000, v39, v40, "SearchToolExecutor: with invocationOptions: %s", v48, 0xCu);
    sub_22BB32FA4(v49);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v55 = v69;
  }

  else
  {

    sub_22BB3593C();
    sub_22BC05344(v45, v56);
    v55 = v42;
  }

  v70(v55, v44);
  v58 = *(v0 + 160);
  v57 = *(v0 + 168);
  v59 = (v57 + v58[13]);
  v60 = v59[3];
  v61 = v59[4];
  sub_22BB69FEC(v59, v60);
  v62 = v58[9];
  *(v0 + 968) = v62;
  v63 = v58[14];
  *(v0 + 972) = v63;
  v64 = *(MEMORY[0x277D1D6E8] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 856) = v65;
  *v65 = v66;
  v65[1] = sub_22BBFD534;
  v67 = *(v0 + 736);

  return MEMORY[0x282176A68](v67, v57 + v62, v57 + v63, v60, v61);
}

uint64_t sub_22BBFD534()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v3 = v2;
  v5 = *(v4 + 856);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 864) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BBFD62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_22BB587F4();
  sub_22BB92804();
  v47 = *(v46 + 736);
  v48 = *(v46 + 728);
  v49 = *(v46 + 720);
  v50 = *(v46 + 712);
  v51 = *(v49 + 16);
  v52 = sub_22BB3E460();
  v53(v52);
  v54 = *(v49 + 88);
  v55 = sub_22BB2F324();
  if (v56(v55) == *MEMORY[0x277D1D640])
  {
    v166 = *(v46 + 768);
    v57 = *(v46 + 736);
    v58 = *(v46 + 728);
    v59 = *(v46 + 720);
    v60 = *(v46 + 712);
    v61 = *(v46 + 704);
    v62 = *(v46 + 696);
    v63 = *(v46 + 688);
    v64 = *(v59 + 96);
    v65 = sub_22BB2F0E0();
    v66(v65);
    v67 = sub_22BB69948();
    v68(v67);
    type metadata accessor for SearchToolExecutorError();
    sub_22BB30548();
    sub_22BC05284(v69, v70);
    sub_22BB358DC();
    sub_22BB369E0();
    v168 = swift_allocError();
    (*(v62 + 16))(v71, v61, v63);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v72 = sub_22BB3B750();
    v73(v72);
    (*(v59 + 8))(v57, v60);
    sub_22BB3593C();
    sub_22BC05344(v166, v74);
    v75 = *(v46 + 840);
    v76 = *(v46 + 832);
    sub_22BB38C68();
    v77 = *(v46 + 792);
    sub_22BB32984();

    sub_22BB2F09C();
    sub_22BB6B980();

    return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v166, v168, a42, a43, a44, a45, a46);
  }

  else
  {
    v87 = *(v46 + 864);
    v88 = *(v46 + 968);
    v89 = *(v46 + 728);
    v90 = *(v46 + 720);
    v91 = *(v46 + 712);
    v92 = *(v46 + 680);
    v93 = *(v46 + 672);
    v94 = *(v46 + 664);
    v95 = *(v46 + 168);
    v96 = *(v90 + 8);
    *(v46 + 872) = v96;
    *(v46 + 880) = (v90 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v96(v89, v91);
    v97 = sub_22BDB9FB4();
    (*(v93 + 104))(v92, *MEMORY[0x277D72160], v94);
    v98 = swift_task_alloc();
    *(v98 + 16) = v92;
    LOBYTE(v87) = sub_22BD725F8(sub_22BC05218, v98, v97);

    (*(v93 + 8))(v92, v94);
    if (v87)
    {
      sub_22BBBEE60(*(v46 + 168) + *(*(v46 + 160) + 60), v46 + 16, &qword_27D8E2B28, &unk_22BDBD230);
    }

    else
    {
      v99 = *(v46 + 824);
      sub_22BDB63F4();
      v100 = sub_22BDB77C4();
      v101 = sub_22BDBB134();
      if (sub_22BB333C0(v101))
      {
        sub_22BB2F114();
        v102 = swift_slowAlloc();
        sub_22BB360F0(v102);
        sub_22BB2F0A8(&dword_22BB2C000, v103, v104, "SearchToolExecutor: Not logging progress updates since this intent is not progress reporting.");
        sub_22BB2F368();
        MEMORY[0x2318A6080]();
      }

      v105 = *(v46 + 848);
      v106 = *(v46 + 824);
      v107 = *(v46 + 784);
      v108 = *(v46 + 776);

      v109 = sub_22BB30AE4();
      v105(v109);
      *(v46 + 48) = 0;
      *(v46 + 16) = 0u;
      *(v46 + 32) = 0u;
    }

    v110 = *(v46 + 656);
    v111 = *(v46 + 648);
    v112 = *(v46 + 640);
    v113 = *MEMORY[0x277D1EBC8];
    v114 = *(v111 + 104);
    v115 = sub_22BB3E460();
    v116(v115);
    v117 = sub_22BDB60A4();
    v118 = *(v111 + 8);
    v119 = sub_22BB2F324();
    v120(v119);
    if (v117)
    {
      swift_task_alloc();
      sub_22BB30B34();
      *(v46 + 888) = v121;
      *v121 = v122;
      v121[1] = sub_22BBFDD7C;
      v123 = *(v46 + 632);
      v124 = *(v46 + 160);
      v125 = *(v46 + 168);
      v126 = *(v46 + 144);
      sub_22BB6B980();

      return sub_22BC00D90(v127, v128, v129);
    }

    else
    {
      v154 = *(v46 + 968);
      v158 = *(v46 + 768);
      v157 = *(v46 + 752);
      v131 = *(v46 + 488);
      v132 = *(v46 + 496);
      v153 = *(v46 + 480);
      v155 = *(v46 + 472);
      v133 = *(v46 + 464);
      v134 = *(v46 + 400);
      v135 = *(v46 + 384);
      v163 = *(v46 + 392);
      v164 = *(v46 + 376);
      v167 = *(v46 + 368);
      v165 = *(v46 + 360);
      v169 = *(v46 + 352);
      v160 = *(v46 + 320);
      v161 = *(v46 + 408);
      v136 = *(v46 + 248);
      v159 = *(v46 + 256);
      v156 = *(v46 + 240);
      v138 = *(v46 + 160);
      v137 = *(v46 + 168);
      v139 = *(v46 + 144);
      v162 = *(v46 + 152);
      v140 = swift_checkMetadataState();
      (*(v131 + 16))(v132, v137 + v154, v153);
      v141 = *(v138 + 40);
      *(v46 + 976) = v141;
      (*(v133 + 16))(v155, v137 + v141, v136);
      sub_22BB3269C();
      sub_22BC051C4(v158, v157);

      v142 = sub_22BB3304C();
      v144 = sub_22BC15B5C(v142, v143, v155, v157, v136, v156);
      *(v46 + 920) = v144;
      *(v46 + 88) = v159;
      *(v46 + 96) = v140;
      *(v46 + 104) = v160;
      *(v46 + 112) = v161;
      type metadata accessor for ToolExecution();
      (*(v135 + 16))(v163, v137, v164);
      *(v46 + 120) = v144;
      (*(v165 + 16))(v167, v162, v169);

      *(v46 + 928) = sub_22BC914FC(v163, v46 + 120, 0, v167, 0);
      swift_task_alloc();
      sub_22BB30B34();
      *(v46 + 936) = v145;
      *v145 = v146;
      v145[1] = sub_22BBFE7F0;
      v147 = *(v46 + 456);
      sub_22BB6B980();

      return sub_22BC93528(v148, v149, v150, v151);
    }
  }
}

uint64_t sub_22BBFDD7C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v3 = v2;
  v5 = *(v4 + 888);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 896) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BBFDE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_22BB587F4();
  sub_22BB92804();
  v47 = *(v46 + 632);
  v48 = *(v46 + 584);
  v49 = *(v46 + 552);
  v50 = *(v46 + 544);
  v51 = *(v49 + 16);
  v52 = sub_22BB3E460();
  v53(v52);
  v54 = *(v49 + 88);
  v55 = sub_22BB2F324();
  if (v56(v55) == *MEMORY[0x277D729E0])
  {
    v57 = *(v46 + 972);
    v58 = *(v46 + 608);
    v59 = *(v46 + 600);
    v60 = *(v46 + 592);
    v61 = *(v46 + 584);
    v62 = *(v46 + 504);
    v64 = *(v46 + 160);
    v63 = *(v46 + 168);
    (*(*(v46 + 552) + 96))(v61, *(v46 + 544));
    v65 = *v61;
    swift_projectBox();
    v66 = *(v59 + 16);
    v67 = sub_22BB3E460();
    v68(v67);

    v69 = *(v64 + 68);
    v70 = sub_22BDB9C14();
    sub_22BB30ED8(v70);
    (*(v71 + 16))(v62, v63 + v69);
    *(v46 + 904) = sub_22BDBA394();
    swift_task_alloc();
    sub_22BB30B34();
    *(v46 + 912) = v72;
    *v72 = v73;
    v72[1] = sub_22BBFE2DC;
    v74 = *(v46 + 536);
    v75 = *(v46 + 504);
    v76 = *(v46 + 144);
    sub_22BB6B980();

    return sub_22BD435BC(v77, v78, v79);
  }

  else
  {
    v82 = *(v46 + 880);
    v83 = *(v46 + 872);
    v84 = *(v46 + 768);
    v85 = *(v46 + 736);
    v86 = *(v46 + 712);
    v87 = *(v46 + 584);
    v88 = *(v46 + 552);
    v89 = *(v46 + 544);
    sub_22BB58728(v46 + 16, &qword_27D8E2B28, &unk_22BDBD230);
    v90 = sub_22BB30AE4();
    v83(v90);
    sub_22BB3593C();
    sub_22BC05344(v84, v91);
    v92 = *(v88 + 8);
    v93 = sub_22BB331D4();
    v94(v93);
    v95 = sub_22BB3B2B8();
    v96(v95);
    v97 = *(v46 + 840);
    v98 = *(v46 + 832);
    v99 = *(v46 + 824);
    v100 = *(v46 + 816);
    v101 = *(v46 + 808);
    v102 = *(v46 + 800);
    v103 = *(v46 + 792);
    v104 = *(v46 + 768);
    v105 = *(v46 + 760);
    v120 = *(v46 + 752);
    v121 = *(v46 + 736);
    v122 = *(v46 + 728);
    v123 = *(v46 + 704);
    v124 = *(v46 + 680);
    v125 = *(v46 + 656);
    v106 = *(v46 + 616);
    v126 = *(v46 + 632);
    v127 = *(v46 + 608);
    v128 = *(v46 + 584);
    v129 = *(v46 + 576);
    v130 = *(v46 + 568);
    v131 = *(v46 + 560);
    v132 = *(v46 + 536);
    v133 = *(v46 + 528);
    v134 = *(v46 + 520);
    v135 = *(v46 + 504);
    v136 = *(v46 + 496);
    v137 = *(v46 + 472);
    v138 = *(v46 + 456);
    v139 = *(v46 + 448);
    v140 = *(v46 + 440);
    v141 = *(v46 + 432);
    v142 = *(v46 + 392);
    v143 = *(v46 + 368);
    v144 = *(v46 + 344);
    v145 = *(v46 + 312);
    v146 = *(v46 + 304);
    v147 = *(v46 + 288);
    v148 = *(v46 + 280);
    v149 = *(v46 + 232);
    v150 = *(v46 + 224);
    v151 = *(v46 + 200);
    v152 = *(v46 + 192);
    v107 = *(v46 + 136);
    sub_22BB331C8();
    sub_22BB336D0(v108, v109, v110, v111);

    sub_22BB360FC();
    sub_22BB6B980();

    return v113(v112, v113, v114, v115, v116, v117, v118, v119, a9, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, a43, a44, a45, a46);
  }
}

uint64_t sub_22BBFE2DC()
{
  sub_22BB2F35C();
  v2 = *v1;
  v3 = *(*v1 + 912);
  v4 = *v1;
  sub_22BB3052C();
  *v5 = v4;

  v6 = *(v2 + 904);
  v7 = *(v2 + 504);
  if (v0)
  {

    sub_22BC05344(v7, type metadata accessor for Resolver);
  }

  else
  {
    sub_22BC05344(v7, type metadata accessor for Resolver);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22BBFE7F0()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 936);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 944) = v0;

  if (!v0)
  {
    v9 = *(v3 + 928);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BBFE8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void (*a29)(uint64_t, uint64_t), uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_22BB587F4();
  sub_22BB92804();
  v48 = *(v46 + 448);
  v47 = *(v46 + 456);
  v49 = *(v46 + 416);
  v50 = *(*(v46 + 424) + 16);
  v51 = sub_22BB3E460();
  v50(v51);
  sub_22BB2F324();
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    v52 = *(v46 + 448);
    v54 = *(v46 + 336);
    v53 = *(v46 + 344);
    v55 = *(v46 + 328);
    v56 = *(v46 + 312);
    v57 = *(v46 + 296);
    v59 = *(v46 + 272);
    v58 = *(v46 + 280);
    v156 = *(v46 + 264);
    v159 = *(v46 + 256);
    sub_22BBEB2E0(&qword_27D8E2B40, &unk_22BDBD9B0);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v61 = *(TupleTypeMetadata3 + 48);
    v62 = *(TupleTypeMetadata3 + 64);
    v63 = *(v54 + 32);
    v64 = sub_22BB31F54();
    v65(v64);
    sub_22BBDB5D0(v52 + v61, v56, &qword_27D8E2530, &qword_22BDBCBF0);
    sub_22BB58728(v52 + v62, &qword_27D8E2B40, &unk_22BDBD9B0);
    (*(v59 + 16))(v58, v53, v156);
    sub_22BB31814(v58, 1, v159);
    if (!v66)
    {
      v110 = *(v46 + 976);
      v111 = *(v46 + 168);
      v158 = (*(v46 + 320) + 32);
      v161 = *v158 + **v158;
      v112 = (*v158)[1];
      swift_task_alloc();
      sub_22BB30B34();
      *(v46 + 952) = v113;
      *v113 = v114;
      v113[1] = sub_22BBFF080;
      v115 = *(v46 + 320);
      v117 = *(v46 + 280);
      v116 = *(v46 + 288);
      v118 = *(v46 + 248);
      v119 = *(v46 + 256);
      v120 = *(v46 + 240);
      sub_22BB6B980();

      return v127(v121, v122, v123, v124, v125, v126, v127, v128, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, v158, v161, a42, a43, a44, a45, a46);
    }

    v67 = *(v46 + 800);
    v68 = *(v46 + 544);
    v69 = *(v46 + 288);
    (*(*(v46 + 272) + 8))(*(v46 + 280), *(v46 + 264));
    sub_22BB30B28();
    sub_22BB336D0(v70, v71, v72, v68);
    sub_22BB58728(v69, &qword_27D8E2668, &unk_22BDBCCD0);
    sub_22BDB63A4();
    v73 = sub_22BDB77C4();
    v74 = sub_22BDBB114();
    if (sub_22BB333C0(v74))
    {
      sub_22BB2F114();
      v75 = swift_slowAlloc();
      sub_22BB360F0(v75);
      sub_22BB2F0A8(&dword_22BB2C000, v76, v77, "SearchToolExecutor: expectedly received no output from search tool");
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    v78 = *(v46 + 920);
    v79 = *(v46 + 848);
    v80 = *(v46 + 800);
    v81 = *(v46 + 784);
    v82 = *(v46 + 776);
    v157 = *(v46 + 768);
    v160 = *(v46 + 880);
    v154 = *(v46 + 736);
    v155 = *(v46 + 872);
    v152 = *(v46 + 456);
    v153 = *(v46 + 712);
    v83 = *(v46 + 424);
    v84 = *(v46 + 336);
    v150 = *(v46 + 344);
    v151 = *(v46 + 416);
    v149 = *(v46 + 328);
    v85 = *(v46 + 312);

    v86 = sub_22BB331D4();
    v79(v86);
    sub_22BB58728(v85, &qword_27D8E2530, &qword_22BDBCBF0);
    (*(v84 + 8))(v150, v149);
    (*(v83 + 8))(v152, v151);
    sub_22BB58728(v46 + 16, &qword_27D8E2B28, &unk_22BDBD230);
    v155(v154, v153);
    sub_22BB3593C();
    v88 = v157;
  }

  else
  {
    v89 = *(v46 + 792);
    v90 = *(v46 + 456);
    v91 = *(v46 + 440);
    v92 = *(v46 + 416);
    v93 = *(*(v46 + 424) + 8);
    v93(*(v46 + 448), v92);
    sub_22BDB63A4();
    (v50)(v91, v90, v92);
    v94 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB379BC();
    v96 = os_log_type_enabled(v94, v95);
    v97 = *(v46 + 880);
    v153 = *(v46 + 792);
    v154 = *(v46 + 848);
    v149 = *(v46 + 920);
    v150 = *(v46 + 784);
    v98 = *(v46 + 768);
    v157 = *(v46 + 736);
    v160 = *(v46 + 872);
    v155 = *(v46 + 712);
    v151 = *(v46 + 456);
    v152 = *(v46 + 776);
    v99 = *(v46 + 440);
    if (v96)
    {
      a29 = v93;
      v100 = *(v46 + 432);
      LODWORD(a30) = v89;
      v101 = *(v46 + 416);
      a32 = *(v46 + 768);
      v102 = sub_22BB31AD8();
      a31 = v97;
      a42 = sub_22BB314C8();
      *v102 = 136315138;
      v103 = sub_22BB3304C();
      v50(v103);
      sub_22BDBAC14();
      a29(v99, v101);
      v104 = sub_22BB34FB8();
      v107 = sub_22BB32EE0(v104, v105, v106);

      *(v102 + 4) = v107;
      _os_log_impl(&dword_22BB2C000, v94, a30, "SearchToolExecutor: unexpected outcome from search tool: %s", v102, 0xCu);
      sub_22BB32FA4(a42);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      v108 = sub_22BBC7F38();
      v109(v108);
      a29(v151, v101);
      sub_22BB58728(v46 + 16, &qword_27D8E2B28, &unk_22BDBD230);
      v160(v157, v155);
      sub_22BB3593C();
      v88 = a32;
    }

    else
    {
      v131 = *(v46 + 416);

      v93(v99, v131);
      v132 = sub_22BBC7F38();
      v133(v132);
      v93(v151, v131);
      sub_22BB58728(v46 + 16, &qword_27D8E2B28, &unk_22BDBD230);
      v160(v157, v155);
      sub_22BB3593C();
      v88 = v98;
    }
  }

  sub_22BC05344(v88, v87);
  v134 = *(v46 + 840);
  v135 = *(v46 + 832);
  v136 = *(v46 + 824);
  sub_22BB33910();
  sub_22BB30B28();
  sub_22BB336D0(v137, v138, v139, v140);

  sub_22BB360FC();
  sub_22BB6B980();

  return v142(v141, v142, v143, v144, v145, v146, v147, v148, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v149, v150, v151, v152, v153, v154, v155, v157, v160, a42, a43, a44, a45, a46);
}

uint64_t sub_22BBFF080()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 952);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[120] = v0;

  if (!v0)
  {
    v9 = v3[35];
    sub_22BB30474(v3[32]);
    (*(v10 + 8))();
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BBFF1A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54)
{
  sub_22BB587F4();
  a53 = v55;
  a54 = v56;
  sub_22BB92804();
  a52 = v54;
  v57 = v54[101];
  v58 = v54[72];
  v59 = v54[71];
  v60 = v54[69];
  v61 = v54[68];
  v62 = v54[36];
  sub_22BB331C8();
  sub_22BB336D0(v63, v64, v65, v61);
  v136 = *(v60 + 32);
  v137 = v60 + 32;
  v136(v58, v62, v61);
  sub_22BDB63A4();
  v66 = *(v60 + 16);
  v66(v59, v58, v61);
  v67 = sub_22BDB77C4();
  v68 = sub_22BDBB134();
  v69 = os_log_type_enabled(v67, v68);
  v129 = v54[101];
  v130 = v54[106];
  v126 = v54[115];
  v127 = v54[98];
  v128 = v54[97];
  v70 = v54[96];
  v132 = v54[92];
  v134 = v54[109];
  v131 = v54[89];
  v71 = v54[71];
  if (v69)
  {
    v72 = v54[70];
    a31 = v54[96];
    v73 = v54[69];
    v74 = v54[68];
    a27 = v54[53];
    a28 = v54[52];
    a29 = v54[57];
    a30 = v54[110];
    v75 = sub_22BB31AD8();
    LODWORD(a26) = v68;
    v76 = sub_22BB314C8();
    a42 = v76;
    *v75 = 136315138;
    v66(v72, v71, v74);
    sub_22BB2F0E0();
    v77 = sub_22BDBAC14();
    v79 = v78;
    (*(v73 + 8))(v71, v74);
    v80 = sub_22BB32EE0(v77, v79, &a42);

    *(v75 + 4) = v80;
    _os_log_impl(&dword_22BB2C000, v67, a26, "SearchToolExecutor: received results - %s", v75, 0xCu);
    sub_22BB32FA4(v76);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v130(v129, v128);
    (*(a27 + 8))(a29, a28);
    sub_22BB58728((v54 + 2), &qword_27D8E2B28, &unk_22BDBD230);
    v134(v132, v131);
    sub_22BB3593C();
    v82 = a31;
  }

  else
  {
    v83 = v54[69];
    v84 = v54[68];
    v85 = v54[57];
    v86 = v54[52];
    v87 = v54[53];

    v88 = *(v83 + 8);
    v89 = sub_22BB2F324();
    v90(v89);
    v130(v129, v128);
    v91 = *(v87 + 8);
    v92 = sub_22BB2F0E0();
    v93(v92);
    sub_22BB58728((v54 + 2), &qword_27D8E2B28, &unk_22BDBD230);
    v134(v132, v131);
    sub_22BB3593C();
    v82 = v70;
  }

  sub_22BC05344(v82, v81);
  v94 = v54[70];
  v96 = v54[42];
  v95 = v54[43];
  v97 = v54[41];
  v99 = v54[38];
  v98 = v54[39];
  v133 = v54[30];
  v135 = v54[31];
  v100 = v54[29];
  v101 = v54[17];
  v136(v94, v54[72], v54[68]);
  v102 = sub_22BB331D4();
  sub_22BBDB5D0(v102, v103, v104, v105);
  sub_22BBBEE60(v95 + *(v97 + 36), v100, &qword_27D8E2528, &unk_22BDBD190);
  v106 = *(v95 + *(v97 + 40));
  v107 = *(v96 + 8);
  v108 = v106;
  v109 = sub_22BB30AE4();
  v107(v109);
  sub_22BBFC1A4(v94, v99, v100, v106, v101);
  v110 = v54[105];
  v111 = v54[104];
  v112 = v54[103];
  sub_22BB33910();
  sub_22BB331C8();
  sub_22BB336D0(v113, v114, v115, v116);

  sub_22BB360FC();
  sub_22BB6B980();

  return v118(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v126, v127, v128, v129, v130, v131, v133, v135, v136, v137, a42, a43, a44, a45, a46);
}

uint64_t sub_22BBFF6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_22BB587F4();
  sub_22BB92804();
  v47 = v46[96];
  sub_22BB3593C();
  sub_22BC05344(v48, v49);
  v97 = v46[108];
  v50 = v46[105];
  v51 = v46[104];
  sub_22BB38C68();
  v52 = v46[99];
  v53 = v46[96];
  v54 = v46[95];
  v55 = v46[94];
  v65 = v46[92];
  v66 = v46[91];
  v67 = v46[88];
  v68 = v46[85];
  v69 = v46[82];
  v70 = v46[79];
  v71 = v46[76];
  v72 = v46[73];
  v73 = v46[72];
  v74 = v46[71];
  v75 = v46[70];
  v76 = v46[67];
  v77 = v46[66];
  v78 = v46[65];
  v79 = v46[63];
  v80 = v46[62];
  v81 = v46[59];
  v82 = v46[57];
  v83 = v46[56];
  v84 = v46[55];
  v85 = v46[54];
  v86 = v46[49];
  v87 = v46[46];
  v88 = v46[43];
  v89 = v46[39];
  v90 = v46[38];
  v91 = v46[36];
  v92 = v46[35];
  v93 = v46[29];
  v94 = v46[28];
  v95 = v46[25];
  v96 = v46[24];

  sub_22BB2F09C();
  sub_22BB6B980();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, a43, a44, a45, a46);
}

uint64_t sub_22BBFF950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_22BB587F4();
  sub_22BB92804();
  sub_22BB396D4(*(v49 + 896));
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if (sub_22BB3B024())
  {
    v54 = sub_22BB92234();
    if (v55(v54) != *MEMORY[0x277D723A8])
    {
      sub_22BB389C4();
      sub_22BB58728(v46, &qword_27D8E2B28, &unk_22BDBD230);
      v82 = sub_22BB2F0E0();
      (v52)(v82);
      sub_22BB3593C();
      sub_22BC05344(v47, v83);
      v84 = sub_22BB3B750();
      v85(v84);
      goto LABEL_12;
    }

    sub_22BB2F0EC();
    v57 = *(v52 + 96);
    v56 = (v52 + 96);
    v58 = sub_22BB2F0E0();
    v59(v58);
    v60 = sub_22BB69948();
    v61(v60);
    v62 = sub_22BB94CB0();
    v56(v62);
    v63 = sub_22BBC7838();
    if (v64(v63) == *MEMORY[0x277D72370])
    {
      sub_22BB3610C();
      sub_22BB30548();
      sub_22BC05284(v65, v66);
      v67 = sub_22BB58924();
      sub_22BB30B40();
      v68 = *MEMORY[0x277D1CCB8];
      v69 = sub_22BDB5484();
      sub_22BB30ED8(v69);
      (*(v70 + 104))(v53, v68);
      v71 = *MEMORY[0x277D1CC20];
      v72 = sub_22BB3FC4C();
      v73(v72);
      sub_22BBADBE0();
      a41 = v67;
      swift_willThrow();
      v74 = *(v50 + 8);
      v75 = sub_22BB3473C();
      v76(v75);
    }

    else
    {
      v86 = *MEMORY[0x277D72348];
      sub_22BB355A0();
      if (!v87)
      {
        sub_22BB36F44();
        sub_22BB341DC();
        sub_22BC05284(v114, v115);
        sub_22BB369E0();
        v116 = swift_allocError();
        v118 = sub_22BB38640(v116, v117);
        v56(v118);
        v119 = sub_22BB3FC4C();
        v120(v119, v47, a41);
        a41 = v48;
        swift_willThrow();
        v121 = sub_22BB336F8();
        (v47)(v121);
        sub_22BB58728(v46, &qword_27D8E2B28, &unk_22BDBD230);
        v122 = sub_22BB3CA98();
        v123(v122);
        sub_22BB3593C();
        sub_22BC05344(a40, v124);
        (v47)(a35, v51);
        goto LABEL_12;
      }

      sub_22BB33FC0();
      sub_22BB30548();
      sub_22BC05284(v88, v89);
      v90 = sub_22BB58924();
      sub_22BB30B40();
      v91 = *MEMORY[0x277D1CCB8];
      v92 = sub_22BDB5484();
      sub_22BB30ED8(v92);
      (*(v93 + 104))(v53, v91);
      v94 = *MEMORY[0x277D1CC20];
      v95 = sub_22BB3FC4C();
      v96(v95);
      sub_22BBADBE0();
      a41 = v90;
      swift_willThrow();
      v97 = *(v47 + 8);
      v98 = sub_22BB3473C();
      v99(v98);
    }

    sub_22BB58728(v46, &qword_27D8E2B28, &unk_22BDBD230);
    v100 = sub_22BB3CA98();
    v101(v100);
    sub_22BB3593C();
    v81 = a40;
  }

  else
  {
    v77 = *(v49 + 880);
    v78 = *(v49 + 872);
    sub_22BB37F48();
    sub_22BB58728(v46, &qword_27D8E2B28, &unk_22BDBD230);
    v79 = sub_22BB2F0E0();
    v78(v79);
    sub_22BB3593C();
    v81 = v47;
  }

  sub_22BC05344(v81, v80);
LABEL_12:

  v102 = *(v49 + 840);
  v103 = *(v49 + 832);
  sub_22BB38C68();
  v104 = *(v49 + 792);
  sub_22BB32984();

  sub_22BB2F09C();
  sub_22BB6B980();

  return v106(v105, v106, v107, v108, v109, v110, v111, v112, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_22BC0024C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_22BB587F4();
  sub_22BB92804();
  v53 = *(v48 + 928);
  v54 = *(v48 + 920);

  sub_22BB396D4(*(v48 + 944));
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if (sub_22BB3B024())
  {
    v55 = sub_22BB92234();
    if (v56(v55) != *MEMORY[0x277D723A8])
    {
      sub_22BB389C4();
      sub_22BB58728(v46, &qword_27D8E2B28, &unk_22BDBD230);
      v83 = sub_22BB2F0E0();
      (v51)(v83);
      sub_22BB3593C();
      sub_22BC05344(v53, v84);
      v85 = sub_22BB3B750();
      v86(v85);
      goto LABEL_12;
    }

    sub_22BB2F0EC();
    v58 = *(v51 + 96);
    v57 = (v51 + 96);
    v59 = sub_22BB2F0E0();
    v60(v59);
    v61 = sub_22BB69948();
    v62(v61);
    v63 = sub_22BB94CB0();
    v57(v63);
    v64 = sub_22BBC7838();
    if (v65(v64) == *MEMORY[0x277D72370])
    {
      sub_22BB3610C();
      sub_22BB30548();
      sub_22BC05284(v66, v67);
      v68 = sub_22BB58924();
      sub_22BB30B40();
      v69 = *MEMORY[0x277D1CCB8];
      v70 = sub_22BDB5484();
      sub_22BB30ED8(v70);
      (*(v71 + 104))(v52, v69);
      v72 = *MEMORY[0x277D1CC20];
      v73 = sub_22BB3FC4C();
      v74(v73);
      sub_22BBADBE0();
      a41 = v68;
      swift_willThrow();
      v75 = *(v49 + 8);
      v76 = sub_22BB3473C();
      v77(v76);
    }

    else
    {
      v87 = *MEMORY[0x277D72348];
      sub_22BB355A0();
      if (!v88)
      {
        sub_22BB36F44();
        sub_22BB341DC();
        sub_22BC05284(v115, v116);
        sub_22BB369E0();
        v117 = swift_allocError();
        v119 = sub_22BB38640(v117, v118);
        v57(v119);
        v120 = sub_22BB3FC4C();
        v121(v120, v53, a41);
        a41 = v47;
        swift_willThrow();
        v122 = sub_22BB336F8();
        (v53)(v122);
        sub_22BB58728(v46, &qword_27D8E2B28, &unk_22BDBD230);
        v123 = sub_22BB3CA98();
        v124(v123);
        sub_22BB3593C();
        sub_22BC05344(a40, v125);
        (v53)(a35, v50);
        goto LABEL_12;
      }

      sub_22BB33FC0();
      sub_22BB30548();
      sub_22BC05284(v89, v90);
      v91 = sub_22BB58924();
      sub_22BB30B40();
      v92 = *MEMORY[0x277D1CCB8];
      v93 = sub_22BDB5484();
      sub_22BB30ED8(v93);
      (*(v94 + 104))(v52, v92);
      v95 = *MEMORY[0x277D1CC20];
      v96 = sub_22BB3FC4C();
      v97(v96);
      sub_22BBADBE0();
      a41 = v91;
      swift_willThrow();
      v98 = *(v53 + 8);
      v99 = sub_22BB3473C();
      v100(v99);
    }

    sub_22BB58728(v46, &qword_27D8E2B28, &unk_22BDBD230);
    v101 = sub_22BB3CA98();
    v102(v101);
    sub_22BB3593C();
    v82 = a40;
  }

  else
  {
    v78 = *(v48 + 880);
    v79 = *(v48 + 872);
    sub_22BB37F48();
    sub_22BB58728(v46, &qword_27D8E2B28, &unk_22BDBD230);
    v80 = sub_22BB2F0E0();
    v79(v80);
    sub_22BB3593C();
    v82 = v53;
  }

  sub_22BC05344(v82, v81);
LABEL_12:

  v103 = *(v48 + 840);
  v104 = *(v48 + 832);
  sub_22BB38C68();
  v105 = *(v48 + 792);
  sub_22BB32984();

  sub_22BB2F09C();
  sub_22BB6B980();

  return v107(v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_22BC007B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  sub_22BB587F4();
  sub_22BB92804();
  v47 = *(v46 + 920);
  v48 = *(v46 + 456);
  v49 = *(v46 + 416);
  v50 = *(v46 + 424);
  v52 = *(v46 + 336);
  v51 = *(v46 + 344);
  v53 = *(v46 + 328);
  v54 = *(v46 + 312);
  v55 = *(v46 + 280);
  v56 = *(v46 + 256);

  sub_22BB58728(v54, &qword_27D8E2530, &qword_22BDBCBF0);
  v58 = *(v52 + 8);
  v57 = v52 + 8;
  v59 = sub_22BB2F0E0();
  v60(v59);
  v62 = *(v50 + 8);
  v61 = v50 + 8;
  v63 = sub_22BB2F324();
  v64(v63);
  sub_22BB30474(v56);
  (*(v65 + 8))(v55, v56);
  sub_22BB396D4(*(v46 + 960));
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  if (sub_22BB3B024())
  {
    v66 = sub_22BB92234();
    if (v67(v66) != *MEMORY[0x277D723A8])
    {
      sub_22BB389C4();
      sub_22BB58728(v49, &qword_27D8E2B28, &unk_22BDBD230);
      v94 = sub_22BB2F0E0();
      (v61)(v94);
      sub_22BB3593C();
      sub_22BC05344(v48, v95);
      v96 = sub_22BB3B750();
      v97(v96);
      goto LABEL_12;
    }

    sub_22BB2F0EC();
    v69 = *(v61 + 96);
    v68 = (v61 + 96);
    v70 = sub_22BB2F0E0();
    v71(v70);
    v72 = sub_22BB69948();
    v73(v72);
    v74 = sub_22BB94CB0();
    v68(v74);
    v75 = sub_22BBC7838();
    if (v76(v75) == *MEMORY[0x277D72370])
    {
      sub_22BB3610C();
      sub_22BB30548();
      sub_22BC05284(v77, v78);
      v79 = sub_22BB58924();
      sub_22BB30B40();
      v80 = *MEMORY[0x277D1CCB8];
      v81 = sub_22BDB5484();
      sub_22BB30ED8(v81);
      (*(v82 + 104))(v57, v80);
      v83 = *MEMORY[0x277D1CC20];
      v84 = sub_22BB3FC4C();
      v85(v84);
      sub_22BBADBE0();
      a41 = v79;
      swift_willThrow();
      v86 = *(v53 + 8);
      v87 = sub_22BB3473C();
      v88(v87);
    }

    else
    {
      v98 = *MEMORY[0x277D72348];
      sub_22BB355A0();
      if (!v99)
      {
        sub_22BB36F44();
        sub_22BB341DC();
        sub_22BC05284(v126, v127);
        sub_22BB369E0();
        v128 = swift_allocError();
        v130 = sub_22BB38640(v128, v129);
        v68(v130);
        v131 = sub_22BB3FC4C();
        v132(v131, v48, a41);
        a41 = v51;
        swift_willThrow();
        v133 = sub_22BB336F8();
        (v48)(v133);
        sub_22BB58728(v49, &qword_27D8E2B28, &unk_22BDBD230);
        v134 = sub_22BB3CA98();
        v135(v134);
        sub_22BB3593C();
        sub_22BC05344(a40, v136);
        (v48)(a35, v55);
        goto LABEL_12;
      }

      sub_22BB33FC0();
      sub_22BB30548();
      sub_22BC05284(v100, v101);
      v102 = sub_22BB58924();
      sub_22BB30B40();
      v103 = *MEMORY[0x277D1CCB8];
      v104 = sub_22BDB5484();
      sub_22BB30ED8(v104);
      (*(v105 + 104))(v57, v103);
      v106 = *MEMORY[0x277D1CC20];
      v107 = sub_22BB3FC4C();
      v108(v107);
      sub_22BBADBE0();
      a41 = v102;
      swift_willThrow();
      v109 = *(v48 + 8);
      v110 = sub_22BB3473C();
      v111(v110);
    }

    sub_22BB58728(v49, &qword_27D8E2B28, &unk_22BDBD230);
    v112 = sub_22BB3CA98();
    v113(v112);
    sub_22BB3593C();
    v93 = a40;
  }

  else
  {
    v89 = *(v46 + 880);
    v90 = *(v46 + 872);
    sub_22BB37F48();
    sub_22BB58728(v49, &qword_27D8E2B28, &unk_22BDBD230);
    v91 = sub_22BB2F0E0();
    v90(v91);
    sub_22BB3593C();
    v93 = v48;
  }

  sub_22BC05344(v93, v92);
LABEL_12:

  v114 = *(v46 + 840);
  v115 = *(v46 + 832);
  sub_22BB38C68();
  v116 = *(v46 + 792);
  sub_22BB32984();

  sub_22BB2F09C();
  sub_22BB6B980();

  return v118(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46);
}

uint64_t sub_22BC00D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB77D4();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = *(*(sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v10 = sub_22BDBA594();
  v4[12] = v10;
  v11 = *(v10 - 8);
  v4[13] = v11;
  v12 = *(v11 + 64) + 15;
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v13 = sub_22BDB60B4();
  v4[16] = v13;
  v14 = *(v13 - 8);
  v4[17] = v14;
  v15 = *(v14 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC00F94, 0, 0);
}

uint64_t sub_22BC00F94()
{
  sub_22BB34E84();
  v1 = *(v0[5] + *(v0[4] + 64));
  v0[19] = v1;
  if (!v1)
  {
LABEL_7:
    v13 = v0[8];
    sub_22BDB63F4();
    v14 = sub_22BDB77C4();
    v15 = sub_22BDBB114();
    if (sub_22BB333C0(v15))
    {
      sub_22BB2F114();
      v16 = swift_slowAlloc();
      sub_22BB360F0(v16);
      sub_22BB2F0A8(&dword_22BB2C000, v17, v18, "SearchToolResolver is not initialized or feature is disabled");
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
    }

    v20 = v0[7];
    v19 = v0[8];
    v21 = v0[6];

    v22 = *(v20 + 8);
    v23 = sub_22BB30AE4();
    v24(v23);
    type metadata accessor for SearchToolExecutorError();
    sub_22BB30548();
    sub_22BC05284(v25, v26);
    sub_22BB358DC();
    sub_22BB369E0();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v27 = v0[18];
    v29 = v0[14];
    v28 = v0[15];
    v31 = v0[10];
    v30 = v0[11];
    v33 = v0[8];
    v32 = v0[9];

    sub_22BB2F09C();
    sub_22BB37AC0();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  (*(v3 + 104))(v2, *MEMORY[0x277D1EBC8], v4);

  v5 = sub_22BDB60A4();
  (*(v3 + 8))(v2, v4);
  if ((v5 & 1) == 0)
  {

    goto LABEL_7;
  }

  swift_task_alloc();
  sub_22BB30B34();
  v0[20] = v6;
  *v6 = v7;
  v6[1] = sub_22BC011F0;
  v8 = v0[15];
  v9 = v0[11];
  v10 = v0[3];
  sub_22BB37AC0();

  return sub_22BC081F8();
}

uint64_t sub_22BC011F0()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v3 = v2;
  v5 = *(v4 + 160);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 168) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC012E8()
{
  v1 = v0[19];
  v2 = v0[14];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];
  v22 = v0[18];
  v23 = v0[8];
  v9 = v0[4];
  v10 = v0[2];

  (*(v4 + 32))(v2, v3, v5);
  sub_22BBDB5D0(v7, v6, &qword_27D8E2530, &qword_22BDBCBF0);
  type metadata accessor for TypedValueUndoContext(0);
  sub_22BB30B28();
  sub_22BB336D0(v11, v12, v13, v14);
  v15 = *(v9 + 16);
  v16 = *(v9 + 24);
  v17 = sub_22BB3304C();
  sub_22BBFC1A4(v17, v18, v8, 0, v19);

  sub_22BB360FC();

  return v20();
}

void sub_22BC01420()
{
  sub_22BB34E84();
  v1 = v0[19];

  v2 = v0[21];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v9 = v0[8];
  v8 = v0[9];

  sub_22BB2F09C();
  sub_22BB37AC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_22BC014D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0) - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v7 = sub_22BDBA594();
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64) + 15;
  v4[10] = swift_task_alloc();
  v10 = sub_22BDBA634();
  v4[11] = v10;
  v11 = *(v10 - 8);
  v4[12] = v11;
  v12 = *(v11 + 64) + 15;
  v4[13] = swift_task_alloc();
  v13 = sub_22BDB89A4();
  v4[14] = v13;
  v14 = *(v13 - 8);
  v4[15] = v14;
  v15 = *(v14 + 64) + 15;
  v4[16] = swift_task_alloc();
  v16 = *(*(type metadata accessor for HydrationConfiguration(0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v17 = sub_22BDB77D4();
  v4[18] = v17;
  v18 = *(v17 - 8);
  v4[19] = v18;
  v19 = *(v18 + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v20 = *(*(sub_22BBE6DE0(&qword_27D8E2AE0, &qword_22BDBD1A0) - 8) + 64) + 15;
  v4[24] = swift_task_alloc();
  v21 = type metadata accessor for UnwrappedSearchResults(0);
  v4[25] = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC017E8, 0, 0);
}

uint64_t sub_22BC01E0C()
{
  sub_22BB2F35C();
  v3 = v2;
  sub_22BB32690();
  v5 = v4;
  sub_22BB3053C();
  *v6 = v5;
  v8 = *(v7 + 240);
  v9 = *v1;
  sub_22BB3052C();
  *v10 = v9;
  *(v5 + 248) = v0;

  if (!v0)
  {
    *(v5 + 256) = v3;
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_22BC02218()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v8 = v0[20];
  v13 = v0[17];
  v14 = v0[13];
  v9 = v0[10];
  v15 = v0[7];
  v16 = v0[6];
  (*(v0[15] + 8))(v0[16], v0[14]);
  sub_22BB31B2C();

  sub_22BB2F09C();
  v11 = v0[31];

  return v10();
}

uint64_t sub_22BC0234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_22BC02374, 0, 0);
}

uint64_t sub_22BC02374()
{
  sub_22BB2F35C();
  v1 = *(v0 + 56);
  v2 = sub_22BBE6DE0(&qword_27D8E2AE8, &qword_22BDBD1B0);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = *(v0 + 40);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  v5 = sub_22BBE6DE0(&qword_27D8E2970, &qword_22BDBD008);
  v6 = *(MEMORY[0x277D859B8] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 72) = v7;
  *v7 = v8;
  v7[1] = sub_22BC02498;

  return MEMORY[0x282200740](v0 + 16, v2, v5, 0, 0, &unk_22BDBD1C0, v3, v2);
}

uint64_t sub_22BC02498()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (!v0)
  {
    v9 = *(v3 + 64);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BC025B8()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 64);

  sub_22BB2F09C();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_22BC02614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v9 = sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v11 = *(v10 + 64) + 15;
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v12 = *(*(sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v13 = sub_22BDB89A4();
  v7[24] = v13;
  v14 = *(v13 - 8);
  v7[25] = v14;
  v7[26] = *(v14 + 64);
  v7[27] = swift_task_alloc();
  v15 = sub_22BDBA594();
  v7[28] = v15;
  v16 = *(v15 - 8);
  v7[29] = v16;
  v7[30] = *(v16 + 64);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v17 = *(a6 - 8);
  v7[34] = v17;
  v7[35] = *(v17 + 64);
  v7[36] = swift_task_alloc();
  v18 = *(*(sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020) - 8) + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v19 = *(*(sub_22BBE6DE0(&qword_27D8E2AF8, &qword_22BDBD1D8) - 8) + 64) + 15;
  v7[39] = swift_task_alloc();
  v20 = sub_22BBE6DE0(&qword_27D8E2B00, &qword_22BDBD1E0);
  v7[40] = v20;
  v21 = *(v20 - 8);
  v7[41] = v21;
  v22 = *(v21 + 64) + 15;
  v7[42] = swift_task_alloc();
  v23 = sub_22BBE6DE0(&qword_27D8E2B08, &qword_22BDBD1E8);
  v7[43] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v7[44] = swift_task_alloc();
  v25 = *(*(sub_22BBE6DE0(&qword_27D8E2B10, &unk_22BDBD1F0) - 8) + 64) + 15;
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC029E8, 0, 0);
}

uint64_t sub_22BC029E8(uint64_t a1)
{
  v2 = 0;
  v65 = *(v1 + 344);
  v3 = *(v1 + 272);
  v4 = *(v1 + 96);
  v63 = v3;
  v64 = *(v1 + 232);
  v61 = *(v1 + 208) + 7;
  v62 = *(v1 + 200);
  v5 = *v4;
  v6 = *(*v4 + 16);
  v59 = *v4;
  v60 = v6;
  while (1)
  {
    if (v2 == v6)
    {
      v7 = 1;
      v8 = v6;
    }

    else
    {
      if (v2 >= *(v5 + 16))
      {
        __break(1u);
        return MEMORY[0x2822004E8](a1);
      }

      v9 = *(v1 + 352);
      v10 = *(v1 + 360);
      v11 = *(v1 + 224);
      v8 = v2 + 1;
      sub_22BB2F374();
      v15 = v5 + v12 + *(v13 + 72) * v14;
      v16 = *(v65 + 48);
      *v9 = v14;
      (*(v13 + 16))(&v9[v16], v15);
      v17 = sub_22BB31F54();
      sub_22BBDB5D0(v17, v18, &qword_27D8E2B08, &qword_22BDBD1E8);
      v7 = 0;
    }

    v19 = *(v1 + 368);
    v20 = *(v1 + 344);
    sub_22BB336D0(*(v1 + 360), v7, 1, v20);
    v21 = sub_22BB31F54();
    sub_22BBDB5D0(v21, v22, &qword_27D8E2B10, &unk_22BDBD1F0);
    v23 = sub_22BB3A190();
    sub_22BB31814(v23, v24, v20);
    if (v25)
    {
      break;
    }

    v26 = *(v1 + 368);
    v75 = *(v1 + 304);
    v77 = *(v1 + 296);
    v78 = v8;
    v27 = *(v1 + 288);
    v71 = *(v1 + 280);
    v72 = v27;
    v28 = *(v1 + 264);
    v73 = *(v1 + 240);
    v29 = *(v1 + 216);
    v30 = *(v1 + 224);
    v69 = v30;
    v31 = *(v1 + 192);
    v70 = v31;
    v32 = *(v1 + 104);
    v67 = *(v1 + 112);
    v76 = *v26;
    v66 = *(v65 + 48);
    v74 = sub_22BDBAEF4();
    v79 = *(v1 + 120);
    sub_22BB30B28();
    sub_22BB336D0(v33, v34, v35, v36);
    (*(v63 + 16))(v27, v32);
    v68 = *(v64 + 32);
    v68(v28, v26 + v66, v30);
    (*(v62 + 16))(v29, v67, v31);
    v37 = (*(v63 + 80) + 48) & ~*(v63 + 80);
    v38 = (v71 + *(v64 + 80) + v37) & ~*(v64 + 80);
    v39 = (v73 + *(v62 + 80) + v38) & ~*(v62 + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    *(v40 + 32) = v79;
    (*(v63 + 32))(v40 + v37, v72, v79);
    v68(v40 + v38, v28, v69);
    (*(v62 + 32))(v40 + v39, v29, v70);
    *(v40 + ((v61 + v39) & 0xFFFFFFFFFFFFFFF8)) = v76;
    sub_22BBBEE60(v75, v77, &qword_27D8E2978, &qword_22BDBD020);
    v41 = sub_22BB3A190();
    v43 = sub_22BB3AA28(v41, v42, v74);
    v44 = *(v1 + 296);
    if (v43 == 1)
    {
      sub_22BB58728(*(v1 + 296), &qword_27D8E2978, &qword_22BDBD020);
    }

    else
    {
      sub_22BDBAEE4();
      sub_22BB30474(v74);
      (*(v45 + 8))(v44, v74);
    }

    v6 = v60;
    if (*(v40 + 16))
    {
      v46 = *(v40 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v47 = sub_22BDBAE44();
      v49 = v48;
      swift_unknownObjectRelease();
    }

    else
    {
      v47 = 0;
      v49 = 0;
    }

    v5 = v59;
    v50 = **(v1 + 88);

    sub_22BBE6DE0(&qword_27D8E2AE8, &qword_22BDBD1B0);
    v51 = v49 | v47;
    if (v49 | v47)
    {
      v51 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v47;
      *(v1 + 40) = v49;
    }

    v52 = *(v1 + 304);
    *(v1 + 48) = 1;
    *(v1 + 56) = v51;
    *(v1 + 64) = v50;
    swift_task_create();

    a1 = sub_22BB58728(v52, &qword_27D8E2978, &qword_22BDBD020);
    v2 = v78;
  }

  v53 = *(v1 + 336);
  v54 = **(v1 + 88);
  *(v1 + 376) = sub_22BBE6DE0(&qword_27D8E2AE8, &qword_22BDBD1B0);
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  sub_22BB30AE4();
  sub_22BDBB014();
  *(v1 + 384) = MEMORY[0x277D84F90];
  v55 = *(MEMORY[0x277D85828] + 4);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 392) = v56;
  *v56 = v57;
  a1 = sub_22BB3A158(v56);

  return MEMORY[0x2822004E8](a1);
}

uint64_t sub_22BC02F4C()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 392);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 400) = v0;

  if (v0)
  {
    v9 = *(v3 + 384);
  }

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_22BC03050()
{
  v85 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 312);
  v3 = sub_22BB3A190();
  sub_22BB31814(v3, v4, v1);
  if (v12)
  {
    v5 = *(v0 + 400);
    v6 = *(v0 + 384);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    v84 = v6;

    sub_22BC03D98(&v84);
    if (!v5)
    {
      v29 = v84;
      v30 = *(v84 + 16);
      if (v30)
      {
        v31 = *(v0 + 144);
        v84 = MEMORY[0x277D84F90];
        sub_22BD27A40();
        v32 = v84;
        v33 = v29 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
        v76 = *(v31 + 72);
        do
        {
          v80 = v32;
          v82 = v30;
          v78 = *(v0 + 248);
          v35 = *(v0 + 224);
          v34 = *(v0 + 232);
          v36 = *(v0 + 160);
          v37 = *(v0 + 152);
          v38 = *(v0 + 136);
          sub_22BBBEE60(v33, *(v0 + 168), &qword_27D8E2AF0, &qword_22BDBD1D0);
          v39 = sub_22BB2F12C();
          sub_22BBBEE60(v39, v40, &qword_27D8E2AF0, &qword_22BDBD1D0);
          v41 = *(v34 + 32);
          v42 = *(v38 + 48);
          *v37 = *v36;
          v43 = v36 + v42;
          v44 = v41;
          v41(v37 + v42, v43, v35);
          v45 = v37 + v42;
          v32 = v80;
          (*(v34 + 16))(v78, v45, v35);
          v46 = sub_22BB31F54();
          sub_22BB58728(v46, v47, &qword_22BDBD1D0);
          sub_22BB72044();
          sub_22BB58728(v48, v49, v50);
          v84 = v80;
          v51 = *(v80 + 16);
          if (v51 >= *(v80 + 24) >> 1)
          {
            sub_22BD27A40();
            v32 = v84;
          }

          v52 = *(v0 + 248);
          v53 = *(v0 + 224);
          v54 = *(v0 + 232);
          *(v32 + 16) = v51 + 1;
          v44(v32 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v51, v52, v53);
          v33 += v76;
          v30 = v82 - 1;
        }

        while (v82 != 1);
        v55 = *(v0 + 384);
      }

      else
      {
        v56 = *(v0 + 384);

        v32 = MEMORY[0x277D84F90];
      }

      v58 = *(v0 + 360);
      v57 = *(v0 + 368);
      v59 = *(v0 + 352);
      v60 = *(v0 + 336);
      v62 = *(v0 + 304);
      v61 = *(v0 + 312);
      v63 = *(v0 + 288);
      v64 = *(v0 + 296);
      v65 = *(v0 + 264);
      v72 = *(v0 + 256);
      v73 = *(v0 + 248);
      v74 = *(v0 + 216);
      v75 = *(v0 + 184);
      v77 = *(v0 + 176);
      v79 = *(v0 + 168);
      v81 = *(v0 + 160);
      v83 = *(v0 + 152);
      **(v0 + 80) = v32;

      sub_22BB360FC();
      sub_22BB38C7C();

      __asm { BRAA            X1, X16 }
    }

    sub_22BB38C7C();
  }

  else
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 184);
    v11 = *v2;
    sub_22BBDB5D0(v2 + *(v1 + 48), v10, &qword_27D8E2668, &unk_22BDBCCD0);
    sub_22BB31814(v10, 1, v9);
    if (v12)
    {
      sub_22BB58728(*(v0 + 184), &qword_27D8E2668, &unk_22BDBCCD0);
    }

    else
    {
      v13 = *(v0 + 384);
      v14 = *(v0 + 256);
      v15 = *(v0 + 224);
      v16 = *(v0 + 232);
      v17 = *(v0 + 176);
      v18 = *(v0 + 136);
      (*(v16 + 32))(v14, *(v0 + 184), v15);
      v19 = *(v18 + 48);
      *v17 = v11;
      (*(v16 + 16))(&v17[v19], v14, v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *(v0 + 384);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = *(v21 + 16);
        v69 = *(v0 + 384);
        sub_22BD8F488();
        v21 = v70;
      }

      v22 = *(v21 + 16);
      if (v22 >= *(v21 + 24) >> 1)
      {
        sub_22BD8F488();
        v21 = v71;
      }

      v23 = *(v0 + 176);
      v24 = *(v0 + 144);
      (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
      *(v21 + 16) = v22 + 1;
      sub_22BBDB5D0(v23, v21 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, &qword_27D8E2AF0, &qword_22BDBD1D0);
      *(v0 + 384) = v21;
    }

    v25 = *(MEMORY[0x277D85828] + 4);
    swift_task_alloc();
    sub_22BB30B34();
    *(v0 + 392) = v26;
    *v26 = v27;
    sub_22BB3A158();
    sub_22BB38C7C();

    return MEMORY[0x2822004E8]();
  }
}

uint64_t sub_22BC03578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB68EA4();
  v22 = v20[45];
  v21 = v20[46];
  v23 = v20[44];
  v24 = v20[39];
  v26 = v20[37];
  v25 = v20[38];
  v27 = v20[36];
  v28 = v20[33];
  v38 = v20[32];
  v39 = v20[31];
  v40 = v20[27];
  v41 = v20[23];
  v42 = v20[22];
  v43 = v20[21];
  v44 = v20[20];
  v46 = v20[19];
  (*(v20[41] + 8))(v20[42], v20[40]);
  v45 = v20[9];

  sub_22BB2F09C();
  sub_22BB3CEF4();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, v43, v44, v45, v46, a18, a19, a20);
}

uint64_t sub_22BC036C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a7;
  v12 = sub_22BDB77D4();
  v8[4] = v12;
  v13 = *(v12 - 8);
  v8[5] = v13;
  v14 = *(v13 + 64) + 15;
  v8[6] = swift_task_alloc();
  v15 = sub_22BDBA594();
  v8[7] = v15;
  v16 = *(v15 - 8);
  v8[8] = v16;
  v17 = *(v16 + 64) + 15;
  v18 = swift_task_alloc();
  v8[9] = v18;
  v19 = *(v25 + 96);
  v23 = (v19 + *v19);
  v20 = v19[1];
  v21 = swift_task_alloc();
  v8[10] = v21;
  *v21 = v8;
  v21[1] = sub_22BC038CC;

  return v23(v18, a5, a6, a8);
}

uint64_t sub_22BC038CC()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB37AB0();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 88) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC039C4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[2];
  v4 = v0[3];
  v6 = *(sub_22BBE6DE0(&qword_27D8E2AE8, &qword_22BDBD1B0) + 48);
  *v5 = v4;
  v7 = *(v2 + 32);
  sub_22BB72044();
  v8();
  v9 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  sub_22BB331C8();
  sub_22BB336D0(v12, v13, v14, v15);

  sub_22BB360FC();

  return v16();
}

uint64_t sub_22BC03A8C()
{
  v1 = v0[11];
  v2 = v0[6];
  sub_22BDB63F4();
  v3 = v1;
  v4 = sub_22BDB77C4();
  v5 = sub_22BDBB114();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = sub_22BB31AD8();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22BB2C000, v4, v5, "SearchToolCandidateGenerator: Unable to hydrate value. Filtering from list: %@", v8, 0xCu);
    sub_22BB58728(v9, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {
  }

  v12 = v0[3];
  v13 = v0[2];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v14 = *(sub_22BBE6DE0(&qword_27D8E2AE8, &qword_22BDBD1B0) + 48);
  *v13 = v12;
  v15 = v0[9];
  v17 = v0[6];
  v16 = v0[7];
  sub_22BB30B28();
  sub_22BB336D0(v18, v19, v20, v21);

  sub_22BB360FC();

  return v22();
}

uint64_t sub_22BC03C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnwrappedSearchResults(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BC03CD0()
{
  sub_22BB34E84();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_22BB3C48C;
  sub_22BB37AC0();

  return sub_22BC02614(v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_22BC03D98(uint64_t *a1)
{
  v2 = *(sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB1654(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_22BC04030(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_22BC03E4C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(*(v4 - 8) + 64);
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = sub_22BDBA594();
  sub_22BB30434(v7);
  v9 = (v6 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_22BDB89A4();
  sub_22BB30434(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = v1[2];
  v17 = v1[3];
  v18 = *(v1 + ((*(v15 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_22BBF90EC;

  return sub_22BC036C0(a1, v16, v17, v1 + v6, v1 + v9, v1 + v14, v18, v4);
}

uint64_t sub_22BC04030(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BDBB674();
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
        sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BC043C4(v8, v9, a1, v4);
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
    return sub_22BC04178(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BC04178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
  v8 = *(*(v38 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v38);
  v37 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v28 - v12);
  result = MEMORY[0x28223BE20](v11);
  v17 = (&v28 - v16);
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v35 = -v19;
    v36 = v18;
    v21 = a1 - a3;
    v29 = v19;
    v22 = v18 + v19 * a3;
    while (2)
    {
      v33 = v20;
      v34 = a3;
      v31 = v22;
      v32 = v21;
      v23 = v21;
      do
      {
        sub_22BBBEE60(v22, v17, &qword_27D8E2AF0, &qword_22BDBD1D0);
        sub_22BBBEE60(v20, v13, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v24 = *v17;
        v25 = *v13;
        sub_22BB58728(v13, &qword_27D8E2AF0, &qword_22BDBD1D0);
        result = sub_22BB58728(v17, &qword_27D8E2AF0, &qword_22BDBD1D0);
        if (v24 >= v25)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return result;
        }

        v26 = v37;
        sub_22BBDB5D0(v22, v37, &qword_27D8E2AF0, &qword_22BDBD1D0);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22BBDB5D0(v26, v20, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v20 += v35;
        v22 += v35;
      }

      while (!__CFADD__(v23++, 1));
      a3 = v34 + 1;
      v20 = v33 + v29;
      v21 = v32 - 1;
      v22 = v31 + v29;
      if (v34 + 1 != v30)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BC043C4(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v107 = a1;
  v122 = sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
  v114 = *(v122 - 8);
  v7 = *(v114 + 64);
  v8 = MEMORY[0x28223BE20](v122);
  v111 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v121 = &v106 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v124 = (&v106 - v13);
  MEMORY[0x28223BE20](v12);
  v123 = (&v106 - v14);
  v15 = a3[1];
  v116 = a3;
  if (v15 < 1)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_101:
    v118 = v17;
    v17 = *v107;
    if (!*v107)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v117;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v99 = (v118 + 16);
      for (i = *(v118 + 2); i >= 2; *v99 = i)
      {
        if (!*v116)
        {
          goto LABEL_138;
        }

        v101 = &v118[16 * i];
        v102 = *v101;
        v103 = &v99[2 * i];
        v104 = *(v103 + 1);
        sub_22BC04D08(*v116 + *(v114 + 72) * *v101, *v116 + *(v114 + 72) * *v103, *v116 + *(v114 + 72) * v104, v17);
        if (v4)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v99)
        {
          goto LABEL_127;
        }

        *v101 = v102;
        *(v101 + 1) = v104;
        v105 = *v99 - i;
        if (*v99 < i)
        {
          goto LABEL_128;
        }

        i = *v99 - 1;
        sub_22BDB12C0(v103 + 16, v105, v103);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v118 = sub_22BDB12A8(v118);
    goto LABEL_103;
  }

  v106 = a4;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = v16;
    v19 = v16 + 1;
    v108 = v16;
    if (v16 + 1 < v15)
    {
      v118 = v17;
      v119 = v16 + 1;
      v20 = *v116;
      v21 = *(v114 + 72);
      v17 = *v116 + v21 * v19;
      v22 = v123;
      sub_22BBBEE60(v17, v123, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v23 = v124;
      sub_22BBBEE60(v20 + v21 * v18, v124, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v24 = *v22;
      v112 = *v23;
      v113 = v24;
      sub_22BB58728(v23, &qword_27D8E2AF0, &qword_22BDBD1D0);
      sub_22BB58728(v22, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v25 = v18 + 2;
      v115 = v21;
      v26 = v20 + v21 * (v18 + 2);
      while (1)
      {
        v27 = v25;
        if (++v119 >= v15)
        {
          break;
        }

        LODWORD(v120) = v113 < v112;
        v28 = v123;
        sub_22BBBEE60(v26, v123, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v29 = v15;
        v30 = v124;
        sub_22BBBEE60(v17, v124, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v4 = *v28;
        v31 = *v30;
        v32 = v30;
        v15 = v29;
        sub_22BB58728(v32, &qword_27D8E2AF0, &qword_22BDBD1D0);
        sub_22BB58728(v28, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v26 += v115;
        v17 += v115;
        v25 = v27 + 1;
        if (((v120 ^ (v4 >= v31)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v119 = v15;
LABEL_9:
      if (v113 >= v112)
      {
        v17 = v118;
        v19 = v119;
        v18 = v108;
      }

      else
      {
        v19 = v119;
        if (v119 < v108)
        {
          goto LABEL_132;
        }

        if (v108 >= v119)
        {
          v17 = v118;
          v18 = v108;
        }

        else
        {
          if (v15 >= v27)
          {
            v33 = v27;
          }

          else
          {
            v33 = v15;
          }

          v34 = v115 * (v33 - 1);
          v35 = v115 * v33;
          v4 = v108 * v115;
          v36 = v108;
          v18 = v108;
          do
          {
            if (v36 != --v19)
            {
              v37 = *v116;
              if (!*v116)
              {
                goto LABEL_139;
              }

              sub_22BBDB5D0(v37 + v4, v111, &qword_27D8E2AF0, &qword_22BDBD1D0);
              v38 = v4 < v34 || v37 + v4 >= v37 + v35;
              if (v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v34)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22BBDB5D0(v111, v37 + v34, &qword_27D8E2AF0, &qword_22BDBD1D0);
              v18 = v108;
            }

            ++v36;
            v34 -= v115;
            v35 -= v115;
            v4 += v115;
          }

          while (v36 < v19);
          v17 = v118;
          v19 = v119;
        }
      }
    }

    v39 = v116[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v18))
      {
        goto LABEL_131;
      }

      if (v19 - v18 < v106)
      {
        break;
      }
    }

LABEL_47:
    if (v19 < v18)
    {
      goto LABEL_130;
    }

    v51 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v19;
    if ((v51 & 1) == 0)
    {
      v95 = *(v17 + 16);
      sub_22BD8F3C8();
      v17 = v96;
    }

    v52 = *(v17 + 16);
    v53 = v52 + 1;
    if (v52 >= *(v17 + 24) >> 1)
    {
      sub_22BD8F3C8();
      v17 = v97;
    }

    *(v17 + 16) = v53;
    v54 = v17 + 32;
    v55 = (v17 + 32 + 16 * v52);
    v56 = v119;
    *v55 = v18;
    v55[1] = v56;
    v120 = *v107;
    if (!v120)
    {
      goto LABEL_140;
    }

    if (v52)
    {
      v118 = v17;
      while (1)
      {
        v57 = v53 - 1;
        v58 = (v54 + 16 * (v53 - 1));
        v59 = (v17 + 16 * v53);
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v60 = *(v17 + 32);
          v61 = *(v17 + 40);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_68:
          if (v63)
          {
            goto LABEL_117;
          }

          v75 = *v59;
          v74 = v59[1];
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_120;
          }

          v79 = v58[1];
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_125;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v53 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v53 < 2)
        {
          goto LABEL_119;
        }

        v82 = *v59;
        v81 = v59[1];
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_83:
        if (v78)
        {
          goto LABEL_122;
        }

        v84 = *v58;
        v83 = v58[1];
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_124;
        }

        if (v85 < v77)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v57 - 1 >= v53)
        {
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
          goto LABEL_134;
        }

        if (!*v116)
        {
          goto LABEL_137;
        }

        v89 = (v54 + 16 * (v57 - 1));
        v90 = *v89;
        v91 = v54;
        v92 = v57;
        v17 = v54 + 16 * v57;
        v4 = *(v17 + 8);
        v93 = v117;
        sub_22BC04D08(*v116 + *(v114 + 72) * *v89, *v116 + *(v114 + 72) * *v17, *v116 + *(v114 + 72) * v4, v120);
        v117 = v93;
        if (v93)
        {
          goto LABEL_99;
        }

        if (v4 < v90)
        {
          goto LABEL_112;
        }

        v94 = *(v118 + 2);
        if (v92 > v94)
        {
          goto LABEL_113;
        }

        *v89 = v90;
        v89[1] = v4;
        if (v92 >= v94)
        {
          goto LABEL_114;
        }

        v53 = v94 - 1;
        sub_22BDB12C0((v17 + 16), v94 - 1 - v92, v17);
        v17 = v118;
        *(v118 + 2) = v94 - 1;
        v54 = v91;
        if (v94 <= 2)
        {
          goto LABEL_97;
        }
      }

      v64 = v54 + 16 * v53;
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_115;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_116;
      }

      v71 = v59[1];
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_118;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_121;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = v58[1];
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_129;
        }

        if (v62 < v88)
        {
          v57 = v53 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v15 = v116[1];
    v16 = v119;
    if (v119 >= v15)
    {
      goto LABEL_101;
    }
  }

  v40 = v18 + v106;
  if (__OFADD__(v18, v106))
  {
    goto LABEL_133;
  }

  if (v40 >= v39)
  {
    v40 = v116[1];
  }

  if (v40 < v18)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v19 == v40)
  {
    goto LABEL_47;
  }

  v118 = v17;
  v41 = *(v114 + 72);
  v42 = *v116 + v41 * (v19 - 1);
  v4 = -v41;
  v43 = v18 - v19;
  v120 = *v116;
  v109 = v41;
  v110 = v40;
  v44 = v120 + v19 * v41;
LABEL_40:
  v119 = v19;
  v112 = v44;
  v113 = v43;
  v115 = v42;
  v45 = v42;
  while (1)
  {
    v46 = v123;
    sub_22BBBEE60(v44, v123, &qword_27D8E2AF0, &qword_22BDBD1D0);
    v47 = v124;
    sub_22BBBEE60(v45, v124, &qword_27D8E2AF0, &qword_22BDBD1D0);
    v48 = *v46;
    v49 = *v47;
    sub_22BB58728(v47, &qword_27D8E2AF0, &qword_22BDBD1D0);
    sub_22BB58728(v46, &qword_27D8E2AF0, &qword_22BDBD1D0);
    if (v48 >= v49)
    {
LABEL_45:
      v19 = v119 + 1;
      v42 = v115 + v109;
      v43 = v113 - 1;
      v44 = v112 + v109;
      if (v119 + 1 == v110)
      {
        v19 = v110;
        v17 = v118;
        v18 = v108;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v120)
    {
      break;
    }

    v50 = v121;
    sub_22BBDB5D0(v44, v121, &qword_27D8E2AF0, &qword_22BDBD1D0);
    swift_arrayInitWithTakeFrontToBack();
    sub_22BBDB5D0(v50, v45, &qword_27D8E2AF0, &qword_22BDBD1D0);
    v45 += v4;
    v44 += v4;
    v38 = __CFADD__(v43++, 1);
    if (v38)
    {
      goto LABEL_45;
    }
  }

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
  __break(1u);
}

uint64_t sub_22BC04D08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v60 = sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
  v8 = *(*(v60 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v60);
  v61 = (&v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v9);
  v62 = (&v53 - v12);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_60;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v19 = v15 / v14;
  v66 = a1;
  v65 = a4;
  v20 = v17 / v14;
  if (v15 / v14 >= v17 / v14)
  {
    sub_22BD274B8(a2, v17 / v14, a4);
    v35 = a4 + v20 * v14;
    v36 = -v14;
    v37 = v35;
    v56 = -v14;
    v57 = a4;
    v63 = a1;
LABEL_36:
    v38 = a2 + v36;
    v54 = v37;
    v58 = a2 + v36;
    while (1)
    {
      if (v35 <= a4)
      {
        v66 = a2;
        v64 = v37;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v55 = v37;
      v39 = a2;
      v40 = a3 + v36;
      v41 = v35 + v36;
      v42 = v62;
      v43 = v38;
      v44 = v35;
      sub_22BBBEE60(v35 + v36, v62, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v45 = v43;
      v46 = v61;
      sub_22BBBEE60(v45, v61, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v59 = *v42;
      v47 = v46;
      v48 = *v46;
      sub_22BB58728(v47, &qword_27D8E2AF0, &qword_22BDBD1D0);
      sub_22BB58728(v42, &qword_27D8E2AF0, &qword_22BDBD1D0);
      if (v59 < v48)
      {
        if (a3 < v39 || v40 >= v39)
        {
          a2 = v58;
          swift_arrayInitWithTakeFrontToBack();
          v37 = v55;
          v36 = v56;
          a4 = v57;
          a3 = v40;
          a1 = v63;
          v35 = v44;
        }

        else
        {
          v36 = v56;
          v37 = v55;
          v16 = a3 == v39;
          a4 = v57;
          v51 = v58;
          a2 = v58;
          a3 = v40;
          a1 = v63;
          v35 = v44;
          if (!v16)
          {
            v52 = v55;
            swift_arrayInitWithTakeBackToFront();
            v35 = v44;
            a2 = v51;
            v37 = v52;
          }
        }

        goto LABEL_36;
      }

      v49 = a3 < v44 || v40 >= v44;
      a2 = v39;
      if (v49)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v36;
        v35 = v41;
        v37 = v41;
        v36 = v56;
        a4 = v57;
        a1 = v63;
        v38 = v58;
      }

      else
      {
        v37 = v41;
        v16 = v44 == a3;
        a3 += v36;
        v35 = v41;
        v36 = v56;
        a4 = v57;
        a1 = v63;
        v38 = v58;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v40;
          v35 = v41;
          v37 = v41;
        }
      }
    }

    v66 = a2;
    v64 = v54;
  }

  else
  {
    sub_22BD274B8(a1, v15 / v14, a4);
    v58 = a3;
    v59 = a4 + v19 * v14;
    v64 = v59;
    v21 = a1;
    while (a4 < v59 && a2 < a3)
    {
      v63 = v21;
      v23 = v14;
      v24 = a2;
      v25 = a2;
      v26 = v62;
      sub_22BBBEE60(v24, v62, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v27 = a4;
      v28 = a4;
      v29 = v61;
      sub_22BBBEE60(v27, v61, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v30 = *v26;
      v31 = *v29;
      sub_22BB58728(v29, &qword_27D8E2AF0, &qword_22BDBD1D0);
      sub_22BB58728(v26, &qword_27D8E2AF0, &qword_22BDBD1D0);
      if (v30 >= v31)
      {
        v14 = v23;
        a4 = v28 + v23;
        v32 = v63;
        if (v63 < v28 || v63 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v25;
        }

        else
        {
          a2 = v25;
          if (v63 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = v28 + v23;
      }

      else
      {
        v14 = v23;
        a2 = v25 + v23;
        v32 = v63;
        v33 = v63 < v25 || v63 >= a2;
        a4 = v28;
        if (v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v63 != v25)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v21 = v32 + v14;
      v66 = v21;
      a3 = v58;
    }
  }

LABEL_58:
  sub_22BCD3BB8(&v66, &v65, &v64);
  return 1;
}

uint64_t sub_22BC051C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v5 = v4(v3);
  sub_22BB30ED8(v5);
  v7 = *(v6 + 16);
  v8 = sub_22BB31F54();
  v9(v8);
  return a2;
}

uint64_t type metadata accessor for SearchToolExecutorError()
{
  result = qword_27D8E2B68;
  if (!qword_27D8E2B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BC05284(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_22BC052C8(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_22BC05344(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_22BB2F330(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_22BC0539C()
{
  result = sub_22BDB5414();
  if (v1 <= 0x3F)
  {
    result = sub_22BDBA634();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BC05410()
{
  sub_22BDBA594();
  if (v0 <= 0x3F)
  {
    sub_22BC06830(319, qword_28142D9D8, type metadata accessor for ResultResponse);
    if (v1 <= 0x3F)
    {
      sub_22BC06830(319, qword_28142A3C0, type metadata accessor for TypedValueUndoContext);
      if (v2 <= 0x3F)
      {
        sub_22BC06830(319, &qword_281428798, sub_22BBEB528);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22BC05548()
{
  sub_22BDBA594();
  if (v0 <= 0x3F)
  {
    sub_22BC05698();
    if (v1 <= 0x3F)
    {
      sub_22BC06830(319, qword_28142D9D8, type metadata accessor for ResultResponse);
      if (v2 <= 0x3F)
      {
        sub_22BC06830(319, qword_28142A3C0, type metadata accessor for TypedValueUndoContext);
        if (v3 <= 0x3F)
        {
          sub_22BC06830(319, &qword_281428798, sub_22BBEB528);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22BC05698()
{
  if (!qword_2814288C8)
  {
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_2814288C8);
    }
  }
}

void sub_22BC056F0(uint64_t a1)
{
  sub_22BDB8E14();
  if (v2 <= 0x3F)
  {
    sub_22BDBA014();
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        type metadata accessor for InvocationOptions(319);
        if (v6 <= 0x3F)
        {
          type metadata accessor for HydrationConfiguration(319);
          if (v7 <= 0x3F)
          {
            sub_22BC06770();
            if (v8 <= 0x3F)
            {
              sub_22BDB9774();
              if (v9 <= 0x3F)
              {
                sub_22BC067CC();
                if (v10 <= 0x3F)
                {
                  sub_22BC06830(319, &qword_27D8E2D10, type metadata accessor for SearchToolResolver);
                  if (v11 <= 0x3F)
                  {
                    sub_22BDB9C14();
                    if (v12 <= 0x3F)
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
}

uint64_t sub_22BC05854(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v70 = sub_22BDB8E14();
  v81 = *(v70 - 8);
  v4 = *(v81 + 84);
  v68 = sub_22BDBA014();
  v80 = *(v68 - 8);
  v5 = *(v80 + 84);
  v71 = v4;
  v69 = v5;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v66 = *(a3 + 16);
  v78 = *(v66 - 8);
  v67 = *(v78 + 84);
  if (v67 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(v78 + 84);
  }

  v60 = sub_22BDB8274();
  v75 = *(v60 - 8);
  v77 = *(v75 + 84);
  if (v77)
  {
    v7 = v77 - 1;
  }

  else
  {
    v7 = 0;
  }

  v61 = sub_22BDBA234();
  v74 = *(v61 - 8);
  v76 = *(v74 + 84);
  v8 = v76 - 1;
  if (!v76)
  {
    v8 = 0;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v64 = v7;
  v65 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v63 = v10;
  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v59 = sub_22BDB89A4();
  v73 = *(v59 - 8);
  v12 = *(v73 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v62 = v13;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v57 = sub_22BDB9774();
  v15 = *(v57 - 8);
  v58 = *(v15 + 84);
  if (v14 <= v58)
  {
    v14 = *(v15 + 84);
  }

  v16 = sub_22BDB9C14();
  result = a2;
  v18 = *(v16 - 8);
  v19 = *(v18 + 84);
  if (v14 <= v19)
  {
    v20 = *(v18 + 84);
  }

  else
  {
    v20 = v14;
  }

  v21 = *(v80 + 80);
  v22 = *(v80 + 64);
  v23 = *(v78 + 80);
  v24 = *(v78 + 64);
  v25 = *(v74 + 80);
  v26 = *(v73 + 80);
  v27 = *(v15 + 80);
  v28 = *(v15 + 64);
  v29 = *(v18 + 80);
  if (v20 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v20;
  }

  if (v77)
  {
    v31 = *(v75 + 64);
  }

  else
  {
    v31 = *(v75 + 64) + 1;
  }

  if (v76)
  {
    v32 = *(v74 + 64);
  }

  else
  {
    v32 = *(v74 + 64) + 1;
  }

  if (v12)
  {
    v33 = *(v73 + 64);
  }

  else
  {
    v33 = *(v73 + 64) + 1;
  }

  if (!a2)
  {
    return result;
  }

  v34 = v12;
  v35 = *(v81 + 64) + v21;
  v36 = *(v75 + 80) & 0xF8 | v25 | 7;
  v37 = v31 + 7;
  v38 = v32 + ((v25 + 16 + ((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v25);
  v39 = v33 + 7;
  v40 = v27 + 40;
  v41 = v28 + 7;
  v42 = v29 + 8;
  v43 = a1;
  if (a2 > v30)
  {
    v44 = ((v42 + ((((v41 + ((v40 + ((v39 + ((v38 + v26 + ((v24 + v36 + ((v22 + (v35 & ~v21) + v23) & ~v23)) & ~v36)) & ~v26)) & 0xFFFFFFFFFFFFFFF8)) & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + *(*(v16 - 8) + 64);
    v45 = 8 * v44;
    if (v44 > 3)
    {
      goto LABEL_45;
    }

    v47 = ((a2 - v30 + ~(-1 << v45)) >> v45) + 1;
    if (HIWORD(v47))
    {
      v46 = *(a1 + v44);
      if (v46)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v47 <= 0xFF)
      {
        if (v47 < 2)
        {
          goto LABEL_62;
        }

LABEL_45:
        v46 = *(a1 + v44);
        if (!*(a1 + v44))
        {
          goto LABEL_62;
        }

LABEL_52:
        v48 = (v46 - 1) << v45;
        if (v44 > 3)
        {
          v48 = 0;
        }

        if (v44)
        {
          if (v44 <= 3)
          {
            v49 = v44;
          }

          else
          {
            v49 = 4;
          }

          switch(v49)
          {
            case 2:
              v50 = *a1;
              break;
            case 3:
              v50 = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              v50 = *a1;
              break;
            default:
              v50 = *a1;
              break;
          }
        }

        else
        {
          v50 = 0;
        }

        return v30 + (v50 | v48) + 1;
      }

      v46 = *(a1 + v44);
      if (*(a1 + v44))
      {
        goto LABEL_52;
      }
    }
  }

LABEL_62:
  if (v71 == v30)
  {
    v19 = v71;
    v16 = v70;
    goto LABEL_68;
  }

  v43 = (a1 + v35) & ~v21;
  if (v69 == v30)
  {
    v19 = v69;
    v16 = v68;
    goto LABEL_68;
  }

  v43 = (v43 + v22 + v23) & ~v23;
  if (v67 == v30)
  {
    v19 = v67;
    v16 = v66;
    goto LABEL_68;
  }

  v51 = (v43 + v24 + v36) & ~v36;
  if (v65 == v30)
  {
    if (v64 == v63)
    {
      if (v77 >= 2)
      {
        v52 = v77;
        v53 = v60;
        goto LABEL_89;
      }

      return 0;
    }

    v51 = (v25 + 16 + ((((v37 + v51) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v25;
    v52 = v76;
    v53 = v61;
LABEL_89:
    v56 = sub_22BB3AA28(v51, v52, v53);
    if (v56 >= 2)
    {
      return v56 - 1;
    }

    else
    {
      return 0;
    }
  }

  v51 = (v51 + v26 + v38) & ~v26;
  if (v62 == v30)
  {
    if (v34 < 2)
    {
      return 0;
    }

    v52 = v34;
    v53 = v59;
    goto LABEL_89;
  }

  v54 = (v39 + v51) & 0xFFFFFFFFFFFFFFF8;
  if ((v20 & 0x80000000) != 0)
  {
    v43 = (v40 + v54) & ~v27;
    if (v58 == v30)
    {
      v19 = v58;
      v16 = v57;
    }

    else
    {
      v43 = (v42 + ((((v41 + v43) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v29;
    }

LABEL_68:

    return sub_22BB3AA28(v43, v19, v16);
  }

  v55 = *(v54 + 24);
  if (v55 >= 0xFFFFFFFF)
  {
    LODWORD(v55) = -1;
  }

  return (v55 + 1);
}

void sub_22BC05F2C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v80 = sub_22BDB8E14();
  v90 = *(v80 - 8);
  v5 = *(v90 + 84);
  v78 = sub_22BDBA014();
  v89 = *(v78 - 8);
  v6 = *(v89 + 84);
  v81 = v5;
  v79 = v6;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v76 = *(a4 + 16);
  v88 = *(v76 - 8);
  v77 = *(v88 + 84);
  if (v77 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v88 + 84);
  }

  v70 = sub_22BDB8274();
  v83 = *(v70 - 8);
  v87 = v83;
  v8 = *(v83 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v68 = sub_22BDBA234();
  v82 = *(v68 - 8);
  v10 = *(v82 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v72 = v9;
  if (v9 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v74 = v13;
  v75 = v12;
  if (v13 > v7)
  {
    v7 = v13;
  }

  v71 = sub_22BDB89A4();
  v86 = *(v71 - 8);
  v14 = *(v86 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v73 = v15;
  if (v15 <= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v15;
  }

  v65 = sub_22BDB9774();
  v85 = *(v65 - 8);
  v66 = *(v85 + 84);
  if (v16 <= v66)
  {
    v16 = *(v85 + 84);
  }

  v17 = sub_22BDB9C14();
  v95 = 0;
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  if (v16 <= v19)
  {
    v20 = *(v18 + 84);
  }

  else
  {
    v20 = v16;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v69 = v8;
  if (v8)
  {
    v22 = *(v83 + 64);
  }

  else
  {
    v22 = *(v83 + 64) + 1;
  }

  v67 = v10;
  v23 = *(v82 + 64);
  if (!v10)
  {
    ++v23;
  }

  v84 = v14;
  v24 = v14 == 0;
  v25 = *(v89 + 80);
  v26 = *(v90 + 64) + v25;
  v27 = *(v89 + 64);
  v28 = *(v88 + 80);
  v29 = *(v88 + 64);
  v30 = *(v82 + 80);
  v31 = *(v87 + 80) & 0xF8 | v30 | 7;
  v32 = v22 + 7;
  v33 = (((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = v30 + 16;
  v35 = ((v30 + 16 + v33) & ~v30) + v23;
  v36 = *(v86 + 80);
  if (v24)
  {
    v37 = *(v86 + 64) + 1;
  }

  else
  {
    v37 = *(v86 + 64);
  }

  v38 = v37 + 7;
  v39 = *(v85 + 80);
  v40 = v39 + 40;
  v41 = *(v85 + 64) + 7;
  v42 = *(v18 + 80);
  v43 = ((v42 + 8 + ((((v41 + ((v39 + 40 + ((v37 + 7 + ((v35 + v36 + ((v29 + v31 + ((v27 + (v26 & ~v25) + v28) & ~v28)) & ~v31)) & ~v36)) & 0xFFFFFFFFFFFFFFF8)) & ~v39)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v42) + *(*(v17 - 8) + 64);
  v44 = 8 * v43;
  if (a3 > v21)
  {
    if (v43 <= 3)
    {
      v46 = ((a3 - v21 + ~(-1 << v44)) >> v44) + 1;
      if (HIWORD(v46))
      {
        v45 = 4;
      }

      else
      {
        if (v46 < 0x100)
        {
          v47 = 1;
        }

        else
        {
          v47 = 2;
        }

        if (v46 >= 2)
        {
          v45 = v47;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    else
    {
      v45 = 1;
    }

    v95 = v45;
  }

  if (v21 < a2)
  {
    v48 = ~v21 + a2;
    if (v43 < 4)
    {
      v50 = (v48 >> v44) + 1;
      if (v43)
      {
        v55 = v48 & ~(-1 << v44);
        bzero(a1, v43);
        if (v43 == 3)
        {
          *a1 = v55;
          v58 = HIWORD(v55);
          v49 = a1;
          a1[2] = v58;
        }

        else if (v43 == 2)
        {
          *a1 = v55;
          v49 = a1;
        }

        else
        {
          v49 = a1;
          *a1 = v48;
        }
      }

      else
      {
        v49 = a1;
      }
    }

    else
    {
      v49 = a1;
      bzero(a1, v43);
      *a1 = v48;
      v50 = 1;
    }

    switch(v95)
    {
      case 1:
        v49[v43] = v50;
        break;
      case 2:
        *&v49[v43] = v50;
        break;
      case 3:
        goto LABEL_107;
      case 4:
        *&v49[v43] = v50;
        break;
      default:
        return;
    }

    return;
  }

  v91 = v17;
  v93 = ~v30;
  v51 = ~v25;
  v52 = ~v31;
  v53 = ~v39;
  v54 = a1;
  switch(v95)
  {
    case 1:
      a1[v43] = 0;
      goto LABEL_63;
    case 2:
      *&a1[v43] = 0;
      goto LABEL_63;
    case 3:
LABEL_107:
      __break(1u);
      return;
    case 4:
      *&a1[v43] = 0;
      goto LABEL_63;
    default:
LABEL_63:
      if (!a2)
      {
        return;
      }

      if (v81 == v21)
      {
        v56 = a2;
        v19 = v81;
        v57 = v80;
LABEL_71:

        sub_22BB336D0(v54, v56, v19, v57);
        return;
      }

      v54 = &a1[v26] & v51;
      if (v79 == v21)
      {
        v56 = a2;
        v19 = v79;
        v57 = v78;
        goto LABEL_71;
      }

      v54 = (v54 + v27 + v28) & ~v28;
      if (v77 == v21)
      {
        v56 = a2;
        v19 = v77;
        v57 = v76;
        goto LABEL_71;
      }

      v59 = (v54 + v29 + v31) & v52;
      if (v75 != v21)
      {
        v54 = (v59 + v36 + v35) & ~v36;
        if (v73 == v21)
        {
          v56 = a2 + 1;
          v19 = v84;
          v57 = v71;
        }

        else
        {
          v64 = (v38 + v54) & 0xFFFFFFFFFFFFFFF8;
          if ((v20 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *(v64 + 8) = 0u;
              *(v64 + 24) = 0u;
              *v64 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v64 + 24) = a2 - 1;
            }

            return;
          }

          v54 = (v40 + v64) & v53;
          if (v66 == v21)
          {
            v56 = a2;
            v19 = v66;
            v57 = v65;
          }

          else
          {
            v54 = (v42 + 8 + ((((v41 + v54) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v42;
            v56 = a2;
            v57 = v91;
          }
        }

        goto LABEL_71;
      }

      if (v74 >= a2)
      {
        if (v72 == v74)
        {
          v56 = a2 + 1;
          v54 = (v54 + v29 + v31) & v52;
          v19 = v69;
          v57 = v70;
        }

        else
        {
          v54 = (v34 + ((((v32 + v59) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v93;
          v56 = a2 + 1;
          v19 = v67;
          v57 = v68;
        }

        goto LABEL_71;
      }

      v60 = ((v34 + (((v32 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v93) + v23;
      if (v60 <= 3)
      {
        v61 = ~(-1 << (8 * (((v34 + (((v32 & 0xF8) + 23) & 0xF8)) & v93) + v23)));
      }

      else
      {
        v61 = -1;
      }

      if (v60)
      {
        v62 = v61 & (~v74 + a2);
        if (v60 <= 3)
        {
          v63 = ((v34 + (((v32 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v93) + v23;
        }

        else
        {
          v63 = 4;
        }

        bzero(((v54 + v29 + v31) & v52), v60);
        switch(v63)
        {
          case 2:
            *v59 = v62;
            break;
          case 3:
            *v59 = v62;
            *(v59 + 2) = BYTE2(v62);
            break;
          case 4:
            *v59 = v62;
            break;
          default:
            *v59 = v62;
            break;
        }
      }

      return;
  }
}

unint64_t sub_22BC06770()
{
  result = qword_27D8E2CF8;
  if (!qword_27D8E2CF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8E2CF8);
  }

  return result;
}

void sub_22BC067CC()
{
  if (!qword_27D8E2D00)
  {
    sub_22BBEB2E0(&qword_27D8E2D08, qword_22BDBD2F8);
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_27D8E2D00);
    }
  }
}

void sub_22BC06830(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22BB358DC();
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_22BC06880(uint64_t a1)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v4);
  v6 = *(v5 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v7);
  sub_22BB39070();
  v1[2] = 0xD000000000000028;
  v1[3] = 0x800000022BDD15D0;
  v1[4] = a1;
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v8, v9, v10, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  sub_22BCA20FC(0, 0, v2, &unk_22BDBD390, v12);

  return v1;
}

uint64_t sub_22BC06994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22BDB77D4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC06A54, 0, 0);
}

uint64_t sub_22BC06A54()
{
  sub_22BB2F0D4();
  v0[6] = *(v0[2] + 32);
  sub_22BB32A48(MEMORY[0x277D37018]);
  v4 = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_22BC06AF4;

  return v4();
}

uint64_t sub_22BC06AF4()
{
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  v3[8] = v0;

  if (v0)
  {
    sub_22BB31B20();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    sub_22BB32A48(MEMORY[0x277D37020]);
    v16 = v12;
    v13 = swift_task_alloc();
    v3[9] = v13;
    *v13 = v7;
    v13[1] = sub_22BC06C60;
    v14 = v3[6];

    return v16();
  }
}

uint64_t sub_22BC06C60()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  v3 = v2;
  sub_22BB3053C();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_22BB3052C();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_22BB31B20();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v12 = *(v3 + 40);

    sub_22BB2F09C();

    return v13();
  }
}

uint64_t sub_22BC06D80()
{
  v2 = v0[8];
  v3 = v0[5];
  sub_22BDB63F4();
  v4 = v2;
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB114();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22BB31AD8();
    v7 = sub_22BB2F340();
    *v1 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    sub_22BB30F08(&dword_22BB2C000, v10, v11, "Failed to preheat LLM search client: %@");
    sub_22BB58780(v7, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v12 = v0[5];

  sub_22BB2F09C();

  return v13();
}

uint64_t sub_22BC06ECC()
{
  v2 = v0[10];
  v3 = v0[5];
  sub_22BDB63F4();
  v4 = v2;
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB114();

  if (os_log_type_enabled(v5, v6))
  {
    sub_22BB31AD8();
    v7 = sub_22BB2F340();
    *v1 = 138412290;
    v8 = v2;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v9;
    *v7 = v9;
    sub_22BB30F08(&dword_22BB2C000, v10, v11, "Failed to preheat LLM search client: %@");
    sub_22BB58780(v7, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v12 = v0[5];

  sub_22BB2F09C();

  return v13();
}

void sub_22BC07018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_22BBE6DE0(&qword_27D8E2938, &unk_22BDBCFB0);
  sub_22BB2F0C8(v29);
  v31 = *(v30 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB39070();
  v284 = sub_22BDB77D4();
  v33 = sub_22BB30444(v284);
  v283 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  sub_22BB305A8();
  sub_22BB30B8C(v37);
  v302 = sub_22BDB5FC4();
  v38 = sub_22BB30444(v302);
  v299 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  sub_22BB30560();
  v301 = v42;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v43);
  sub_22BB2F39C();
  v300 = v44;
  sub_22BB2F120();
  v45 = sub_22BDBA514();
  v46 = sub_22BB30444(v45);
  v289 = v47;
  v49 = *(v48 + 64);
  v50 = MEMORY[0x28223BE20](v46);
  v52 = &v283 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  sub_22BB2F384();
  v296 = v53;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v54);
  sub_22BB2F384();
  v293 = v55;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v56);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v57);
  sub_22BB2F384();
  v295 = v58;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v59);
  v61 = (&v283 - v60);
  v62 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v63 = sub_22BB2F0C8(v62);
  v65 = *(v64 + 64);
  MEMORY[0x28223BE20](v63);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v66);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v67);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v68);
  sub_22BB353B8();
  MEMORY[0x28223BE20](v69);
  sub_22BB38524();
  MEMORY[0x28223BE20](v70);
  v72 = (&v283 - v71);
  v73 = v26;
  sub_22BD80E80(v26, v304);
  v290 = v45;
  v303 = v52;
  if (!v305)
  {
    sub_22BB58780(v304, &qword_27D8E2940, &unk_22BDBCFC0);
    v297 = 0;
    v298 = 1;
    goto LABEL_12;
  }

  v74 = sub_22BB37F58();
  sub_22BB382E8(v74, v75);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v76 = sub_22BDBA594();
  if (!swift_dynamicCast())
  {
    v298 = 1;
    sub_22BB30B28();
    sub_22BB336D0(v90, v91, v92, v76);
    sub_22BB58780(v72, &qword_27D8E2668, &unk_22BDBCCD0);
    v297 = 0;
    goto LABEL_11;
  }

  sub_22BB331C8();
  sub_22BB336D0(v77, v78, v79, v76);
  sub_22BB30418();
  v81 = v80;
  if ((*(v82 + 88))(v72, v76) != *MEMORY[0x277D72A58])
  {
    (*(v81 + 8))(v72, v76);
LABEL_10:
    v297 = 0;
    v298 = 1;
    goto LABEL_11;
  }

  (*(v81 + 96))(v72, v76);
  v83 = *v72;
  swift_projectBox();
  sub_22BB71F10();
  v85 = *(v84 - 256);
  sub_22BB71FBC();
  v86 = v290;
  v87(v61);
  sub_22BB3CF10();
  if (v88(v61, v86) != *MEMORY[0x277D729A8])
  {
    sub_22BBADBFC();
    v93(v61, v86);

    goto LABEL_10;
  }

  sub_22BB3E298();
  v89(v61, v86);
  v297 = *v61;

  v298 = 0;
LABEL_11:
  v52 = v303;
LABEL_12:
  v94 = v73;
  sub_22BD80E80(v73, v304);
  v95 = v299;
  if (!v305)
  {
    sub_22BB58780(v304, &qword_27D8E2940, &unk_22BDBCFC0);
    v294 = 0;
    LODWORD(v295) = 1;
    v117 = v302;
    v100 = v300;
    goto LABEL_23;
  }

  v96 = sub_22BB37F58();
  sub_22BB382E8(v96, v97);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v98 = sub_22BDBA594();
  v99 = swift_dynamicCast();
  v100 = v300;
  if (!v99)
  {
    LODWORD(v295) = 1;
    sub_22BB30B28();
    sub_22BB336D0(v118, v119, v120, v98);
    sub_22BB58780(v22, &qword_27D8E2668, &unk_22BDBCCD0);
    v294 = 0;
    goto LABEL_22;
  }

  sub_22BB331C8();
  sub_22BB336D0(v101, v102, v103, v98);
  sub_22BB30418();
  v105 = v104;
  if ((*(v106 + 88))(v22, v98) != *MEMORY[0x277D72A58])
  {
    (*(v105 + 8))(v22, v98);
LABEL_21:
    v294 = 0;
    LODWORD(v295) = 1;
    goto LABEL_22;
  }

  (*(v105 + 96))(v22, v98);
  v107 = *v22;
  swift_projectBox();
  sub_22BB71F10();
  v109 = *(v108 - 256);
  sub_22BB3DE24();
  v110 = v295;
  v111(v295);
  sub_22BB97BB4();
  v112 = sub_22BB34E90();
  if (v113(v112) != *MEMORY[0x277D729A8])
  {
    v121 = *(v109 + 8);
    v122 = sub_22BB34E90();
    v123(v122);

    goto LABEL_21;
  }

  v114 = *(v109 + 96);
  v115 = sub_22BB34E90();
  v116(v115);
  v294 = *v110;

  LODWORD(v295) = 0;
LABEL_22:
  v117 = v302;
  v52 = v303;
  v94 = v73;
LABEL_23:
  sub_22BDB5F94();
  sub_22BD80E80(v94, v304);
  v300 = v28;
  v124 = v293;
  v291 = v21;
  if (!v305)
  {
    sub_22BB58780(v304, &qword_27D8E2940, &unk_22BDBCFC0);
LABEL_31:
    v138 = v296;
    v139 = v292;
    goto LABEL_32;
  }

  v125 = sub_22BB37F58();
  sub_22BB69088(v125, v126);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v127 = sub_22BDBA594();
  if (!swift_dynamicCast())
  {
    sub_22BB32FA4(v306);
    sub_22BB30B28();
    sub_22BB336D0(v152, v153, v154, v127);
    sub_22BB58780(v20, &qword_27D8E2668, &unk_22BDBCCD0);
    v52 = v303;
    goto LABEL_31;
  }

  sub_22BB331C8();
  sub_22BB336D0(v128, v129, v130, v127);
  sub_22BB30418();
  v132 = v131;
  v134 = *(v133 + 88);
  v135 = sub_22BB31F54();
  v137 = v136(v135);
  v138 = v296;
  v139 = v292;
  if (v137 != *MEMORY[0x277D72A58])
  {
    sub_22BB32FA4(v306);
    v254 = *(v132 + 8);
    v255 = sub_22BB31F54();
    v256(v255);
    v52 = v303;
    goto LABEL_32;
  }

  v140 = *(v132 + 96);
  v141 = sub_22BB31F54();
  v142(v141);
  v143 = *v20;
  swift_projectBox();
  sub_22BB71F10();
  sub_22BB3B2D0(v144);
  v145 = v286;
  v146(v286);
  sub_22BB314E0();
  v147 = sub_22BB52D78();
  if (v148(v147) != *MEMORY[0x277D72988])
  {
    sub_22BB32FA4(v306);
    sub_22BBC7F4C();
    v263 = sub_22BB52D78();
    v264(v263);

    v52 = v303;
    goto LABEL_66;
  }

  sub_22BB8DC88();
  v149 = sub_22BB52D78();
  v150(v149);
  v151 = *v145;

  v52 = v303;
  if (v151)
  {
    sub_22BB32FA4(v306);
LABEL_66:
    v117 = v302;
    goto LABEL_32;
  }

  sub_22BB33404(&a11);
  sub_22BDB63F4();
  v269 = sub_22BDB77C4();
  v270 = sub_22BDBB104();
  v271 = os_log_type_enabled(v269, v270);
  v117 = v302;
  if (v271)
  {
    v272 = swift_slowAlloc();
    *v272 = 0;
    _os_log_impl(&dword_22BB2C000, v269, v270, "", v272, 2u);
    v52 = v303;
    sub_22BB30AF0();
  }

  (*(v283 + 8))(v285, v284);
  v273 = v301;
  sub_22BDB5FA4();
  sub_22BD9A968(v273, v274, v275, v276, v277, v278, v279, v280, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294);
  sub_22BB721F0();
  v281 = sub_22BB31B54();
  v282(v281);
  sub_22BB32FA4(v306);
LABEL_32:
  sub_22BD80E80(v94, v304);
  if (!v305)
  {
    v189 = &qword_27D8E2940;
    v190 = &unk_22BDBCFC0;
    v191 = v304;
LABEL_41:
    sub_22BB58780(v191, v189, v190);
    goto LABEL_42;
  }

  v155 = sub_22BB37F58();
  sub_22BB69088(v155, v156);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v157 = sub_22BDBA594();
  if (!sub_22BB6C6A0())
  {
    sub_22BB32FA4(v306);
    sub_22BB30B28();
    sub_22BB336D0(v192, v193, v194, v157);
    v189 = &qword_27D8E2668;
    v190 = &unk_22BDBCCD0;
    v191 = v139;
    goto LABEL_41;
  }

  sub_22BB52D68();
  sub_22BB336D0(v158, v159, v160, v161);
  sub_22BB30418();
  v163 = v162;
  v165 = *(v164 + 88);
  v166 = sub_22BB3182C();
  if (v167(v166) == *MEMORY[0x277D72A58])
  {
    v168 = *(v163 + 96);
    v169 = sub_22BB3182C();
    v170(v169);
    v171 = *v139;
    swift_projectBox();
    sub_22BB71F10();
    sub_22BB3B2D0(v172);
    v173(v124);
    sub_22BB314E0();
    v174 = sub_22BB7031C();
    if (v175(v174) == *MEMORY[0x277D72988])
    {
      sub_22BB8DC88();
      v176 = sub_22BB7031C();
      v177(v176);
      v178 = *v124;

      if ((v178 & 1) == 0)
      {
        v179 = v301;
        sub_22BDB5FB4();
        sub_22BD9A968(v179, v180, v181, v182, v183, v184, v185, v186, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294);
        sub_22BB721F0();
        v187 = sub_22BB31B54();
        v188(v187);
      }

      sub_22BB32FA4(v306);
    }

    else
    {
      sub_22BB32FA4(v306);
      sub_22BBC7F4C();
      v265 = sub_22BB7031C();
      v266(v265);
    }
  }

  else
  {
    sub_22BB32FA4(v306);
    v257 = *(v163 + 8);
    v258 = sub_22BB3182C();
    v259(v258);
  }

LABEL_42:
  sub_22BD80E80(v94, v304);
  if (!v305)
  {
    v214 = &qword_27D8E2940;
    v215 = &unk_22BDBCFC0;
    v216 = v304;
LABEL_50:
    sub_22BB58780(v216, v214, v215);
    goto LABEL_51;
  }

  v195 = sub_22BB37F58();
  sub_22BB382E8(v195, v196);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v197 = sub_22BDBA594();
  v198 = v287;
  if (!sub_22BB6C6A0())
  {
    sub_22BB30B28();
    sub_22BB336D0(v217, v218, v219, v197);
    v214 = &qword_27D8E2668;
    v215 = &unk_22BDBCCD0;
    v216 = v198;
    goto LABEL_50;
  }

  sub_22BB52D68();
  sub_22BB336D0(v199, v200, v201, v202);
  sub_22BB30418();
  v204 = v203;
  if ((*(v205 + 88))(v198, v197) == *MEMORY[0x277D72A58])
  {
    (*(v204 + 96))(v198, v197);
    v206 = *v198;
    swift_projectBox();
    sub_22BB71F10();
    sub_22BB3B2D0(v207);
    v208(v138);
    sub_22BB314E0();
    v209 = sub_22BB38518();
    if (v210(v209) == *MEMORY[0x277D72988])
    {
      sub_22BB8DC88();
      v211 = sub_22BB38518();
      v212(v211);
      v213 = *v138;
    }

    else
    {
      sub_22BBC7F4C();
      v267 = sub_22BB38518();
      v268(v267);
    }
  }

  else
  {
    (*(v204 + 8))(v198, v197);
  }

LABEL_51:
  sub_22BD80E80(v94, v304);
  if (!v305)
  {
    v244 = &qword_27D8E2940;
    v245 = &unk_22BDBCFC0;
    v246 = v304;
LABEL_59:
    sub_22BB58780(v246, v244, v245);
    goto LABEL_60;
  }

  v220 = sub_22BB37F58();
  sub_22BB382E8(v220, v221);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v222 = sub_22BDBA594();
  v223 = v288;
  if (!sub_22BB6C6A0())
  {
    sub_22BB30B28();
    sub_22BB336D0(v247, v248, v249, v222);
    v244 = &qword_27D8E2668;
    v245 = &unk_22BDBCCD0;
    v246 = v223;
    goto LABEL_59;
  }

  sub_22BB52D68();
  sub_22BB336D0(v224, v225, v226, v227);
  sub_22BB30418();
  v229 = v228;
  v231 = *(v230 + 88);
  v232 = sub_22BB30428();
  if (v233(v232) == *MEMORY[0x277D72A58])
  {
    v234 = *(v229 + 96);
    v235 = sub_22BB30428();
    v236(v235);
    v237 = *v223;
    swift_projectBox();
    v238 = v52;
    v239 = v289;
    sub_22BB3DE24();
    v240 = v290;
    v241(v238);
    sub_22BB97BB4();
    if (v242(v238, v240) == *MEMORY[0x277D72988])
    {
      (*(v239 + 96))(v238, v240);
      v243 = *v238;
    }

    else
    {
      (*(v239 + 8))(v238, v240);
    }
  }

  else
  {
    v260 = *(v229 + 8);
    v261 = sub_22BB30428();
    v262(v261);
  }

LABEL_60:
  sub_22BDB4104();
  sub_22BB30B28();
  sub_22BB336D0(v250, v251, v252, v253);
  (*(v95 + 16))(v301, v100, v117);
  sub_22BDB5F74();
  (*(v95 + 8))(v100, v117);
  sub_22BB314EC();
}

uint64_t sub_22BC081F8()
{
  sub_22BB2F0D4();
  v1[65] = v0;
  v1[63] = v2;
  v1[64] = v3;
  v1[62] = v4;
  v5 = sub_22BDB4AD4();
  v1[66] = v5;
  sub_22BB30434(v5);
  v1[67] = v6;
  v8 = *(v7 + 64);
  v1[68] = sub_22BB30ACC();
  v9 = sub_22BDBA634();
  v1[69] = v9;
  sub_22BB30434(v9);
  v1[70] = v10;
  v12 = *(v11 + 64);
  v1[71] = sub_22BB30ACC();
  v13 = sub_22BDBA594();
  v1[72] = v13;
  sub_22BB30434(v13);
  v1[73] = v14;
  v16 = *(v15 + 64);
  v1[74] = sub_22BB31AF0();
  v1[75] = swift_task_alloc();
  v17 = type metadata accessor for ResultResponse(0);
  v1[76] = v17;
  sub_22BB2F0C8(v17);
  v19 = *(v18 + 64);
  v1[77] = sub_22BB30ACC();
  v20 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  sub_22BB2F0C8(v20);
  v22 = *(v21 + 64);
  v1[78] = sub_22BB30ACC();
  v23 = sub_22BBE6DE0(&qword_27D8E2E08, &qword_22BDBD458);
  sub_22BB2F0C8(v23);
  v25 = *(v24 + 64);
  v1[79] = sub_22BB30ACC();
  v26 = sub_22BDBA694();
  v1[80] = v26;
  sub_22BB30434(v26);
  v1[81] = v27;
  v29 = *(v28 + 64);
  v1[82] = sub_22BB30ACC();
  v30 = sub_22BDB5F84();
  v1[83] = v30;
  sub_22BB30434(v30);
  v1[84] = v31;
  v33 = *(v32 + 64);
  v1[85] = sub_22BB30ACC();
  v34 = sub_22BDB4A14();
  v1[86] = v34;
  sub_22BB30434(v34);
  v1[87] = v35;
  v37 = *(v36 + 64);
  v1[88] = sub_22BB31AF0();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v38 = sub_22BDBA3A4();
  v1[91] = v38;
  sub_22BB30434(v38);
  v1[92] = v39;
  v41 = *(v40 + 64);
  v1[93] = sub_22BB30ACC();
  v42 = sub_22BDBA4B4();
  v1[94] = v42;
  sub_22BB30434(v42);
  v1[95] = v43;
  v45 = *(v44 + 64);
  v1[96] = sub_22BB30ACC();
  v46 = sub_22BBE6DE0(&qword_27D8E2960, &qword_22BDBCFE0);
  sub_22BB2F0C8(v46);
  v48 = *(v47 + 64);
  v1[97] = sub_22BB30ACC();
  v49 = sub_22BDB77D4();
  v1[98] = v49;
  sub_22BB30434(v49);
  v1[99] = v50;
  v52 = *(v51 + 64);
  v1[100] = sub_22BB31AF0();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v53 = sub_22BDBA514();
  v1[104] = v53;
  sub_22BB30434(v53);
  v1[105] = v54;
  v56 = *(v55 + 64);
  v1[106] = sub_22BB31AF0();
  v1[107] = swift_task_alloc();
  v57 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v57);
  v59 = *(v58 + 64);
  v1[108] = sub_22BB31AF0();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v60, v61, v62);
}

void sub_22BC086A0()
{
  sub_22BD80E80(*(v0 + 512), v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 888);
    v2 = *(v0 + 576);
    sub_22BB382E8((v0 + 56), v0 + 16);
    sub_22BB69088(v0 + 16, v0 + 96);
    sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
    v3 = swift_dynamicCast();
    v4 = *(v0 + 888);
    if (v3)
    {
      v5 = *(v0 + 584);
      v6 = *(v0 + 576);
      v7 = *(v0 + 888);
      sub_22BB52D68();
      sub_22BB336D0(v8, v9, v10, v11);
      v14 = *(v5 + 88);
      v13 = v5 + 88;
      v12 = v14;
      v15 = sub_22BB2F324();
      v16 = (v14)(v15);
      v17 = *(v0 + 888);
      if (v16 == *MEMORY[0x277D72A58])
      {
        v18 = v16;
        v203 = v12;
        v19 = *(v0 + 856);
        v20 = *(v0 + 840);
        v21 = *(v0 + 832);
        v200 = *(*(v0 + 584) + 96);
        v200(v17, *(v0 + 576));
        v22 = *v17;
        v23 = swift_projectBox();
        v198 = *(v20 + 16);
        v198(v19, v23, v21);
        v196 = *(v20 + 88);
        v24 = v196(v19, v21);
        v25 = *(v0 + 856);
        v26 = *(v0 + 840);
        v27 = *(v0 + 832);
        if (v24 == *MEMORY[0x277D729B8])
        {
          v28 = v24;
          v192 = v13;
          v29 = *(v0 + 512);
          v30 = *(v26 + 96);
          v31 = sub_22BB3182C();
          v190 = v32;
          v32(v31);
          v194 = *v25;
          *(v0 + 896) = v25[1];

          sub_22BD80E80(v29, v0 + 176);
          if (*(v0 + 200))
          {
            v33 = *(v0 + 880);
            v34 = *(v0 + 576);
            sub_22BB382E8((v0 + 176), v0 + 136);
            sub_22BB382E8((v0 + 136), v0 + 456);
            v35 = swift_dynamicCast();
            v36 = *(v0 + 880);
            v37 = *(v0 + 576);
            if (v35)
            {
              v38 = *(v0 + 880);
              sub_22BB331C8();
              sub_22BB336D0(v39, v40, v41, v37);
              v42 = v12(v36, v37);
              v43 = *(v0 + 880);
              if (v42 == v18)
              {
                v44 = *(v0 + 848);
                v45 = *(v0 + 832);
                v200(*(v0 + 880), *(v0 + 576));
                v46 = *v43;
                v47 = swift_projectBox();
                v198(v44, v47, v45);
                v48 = sub_22BB6BE18();
                v49 = (v196)(v48);
                v50 = *(v0 + 848);
                if (v49 == v28)
                {
                  v190(*(v0 + 848), *(v0 + 832));
                  v51 = *v50;
                  v52 = v50[1];

                  goto LABEL_26;
                }

                (*(*(v0 + 840) + 8))(*(v0 + 848), *(v0 + 832));
              }

              else
              {
                (*(*(v0 + 584) + 8))(*(v0 + 880), *(v0 + 576));
              }

LABEL_23:
              v88 = *(v0 + 824);
              sub_22BDB63F4();
              v89 = sub_22BDB77C4();
              v90 = sub_22BDBB114();
              v91 = os_log_type_enabled(v89, v90);
              v92 = *(v0 + 824);
              v93 = *(v0 + 792);
              v94 = *(v0 + 784);
              if (v91)
              {
                v95 = swift_slowAlloc();
                *v95 = 0;
                _os_log_impl(&dword_22BB2C000, v89, v90, "Missing rewrittenQuery to search tool invocation", v95, 2u);
                sub_22BB30AF0();
              }

              (*(v93 + 8))(v92, v94);
              v52 = 0;
LABEL_26:
              *(v0 + 904) = v52;
              sub_22BD80E80(*(v0 + 512), v0 + 256);
              if (*(v0 + 280))
              {
                v96 = *(v0 + 872);
                v97 = *(v0 + 576);
                sub_22BB382E8((v0 + 256), v0 + 216);
                sub_22BB69088(v0 + 216, v0 + 416);
                v98 = swift_dynamicCast();
                v99 = *(v0 + 872);
                v100 = *(v0 + 576);
                if (v98)
                {
                  v101 = *(v0 + 872);
                  sub_22BB331C8();
                  sub_22BB336D0(v102, v103, v104, v100);
                  v105 = v12(v99, v100);
                  v106 = *(v0 + 872);
                  if (v105 == *MEMORY[0x277D72A38])
                  {
                    v107 = *(v0 + 776);
                    v108 = *(v0 + 768);
                    v109 = *(v0 + 760);
                    v110 = *(v0 + 752);
                    v111 = *(v0 + 520);
                    v200(*(v0 + 872), *(v0 + 576));
                    v112 = *v106;
                    v113 = swift_projectBox();
                    (*(v109 + 16))(v108, v113, v110);

                    sub_22BC0C82C(v108, v114, v115, v116, v117, v118, v119, v120, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198);
                    (*(v109 + 8))(v108, v110);
                    sub_22BB32FA4((v0 + 216));
                    v121 = sub_22BDB46B4();
                    v122 = v107;
                    v123 = 0;
                    goto LABEL_34;
                  }

                  v169 = *(v0 + 584);
                  v170 = *(v0 + 576);
                  sub_22BB32FA4((v0 + 216));
                  (*(v169 + 8))(v106, v170);
LABEL_33:
                  v129 = *(v0 + 776);
                  sub_22BDB46B4();
                  v122 = sub_22BB3A190();
LABEL_34:
                  sub_22BB336D0(v122, v123, 1, v121);
                  sub_22BD80E80(*(v0 + 512), v0 + 336);
                  if (*(v0 + 360))
                  {
                    v130 = *(v0 + 864);
                    v131 = *(v0 + 576);
                    sub_22BB382E8((v0 + 336), v0 + 296);
                    sub_22BB69088(v0 + 296, v0 + 376);
                    v132 = swift_dynamicCast();
                    v133 = *(v0 + 864);
                    v134 = *(v0 + 576);
                    if (v132)
                    {
                      v135 = *(v0 + 864);
                      sub_22BB331C8();
                      sub_22BB336D0(v136, v137, v138, v134);
                      v139 = v203(v133, v134);
                      v140 = *(v0 + 864);
                      if (v139 == *MEMORY[0x277D729E0])
                      {
                        v141 = *(v0 + 744);
                        v142 = *(v0 + 736);
                        v143 = *(v0 + 728);
                        v144 = *(v0 + 520);
                        v200(*(v0 + 864), *(v0 + 576));
                        v145 = *v140;
                        swift_projectBox();
                        sub_22BB39468();
                        v146(v141);

                        sub_22BC0BB7C();
                        v148 = v147;
                        (*(v142 + 8))(v141, v143);
                        sub_22BB32FA4((v0 + 296));
                        goto LABEL_42;
                      }

                      v171 = *(v0 + 584);
                      v172 = *(v0 + 576);
                      sub_22BB32FA4((v0 + 296));
                      v173 = *(v171 + 8);
                      v174 = sub_22BB6BE18();
                      v175(v174);
LABEL_41:
                      v148 = MEMORY[0x277D84F90];
LABEL_42:
                      *(v0 + 912) = v148;
                      v161 = *(v0 + 680);
                      v162 = *(v0 + 512);
                      *(v0 + 920) = *(*(v0 + 520) + 32);
                      sub_22BC07018(v162, v149, v150, v151, v152, v153, v154, v155, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198);
                      sub_22BB32A48(MEMORY[0x277D37010]);
                      v163 = swift_task_alloc();
                      *(v0 + 928) = v163;
                      *v163 = v0;
                      v163[1] = sub_22BC09260;
                      v164 = *(v0 + 776);
                      v165 = *(v0 + 720);
                      v166 = *(v0 + 680);
                      sub_22BB3AAA8();

                      __asm { BR              X8 }
                    }

                    sub_22BB32FA4((v0 + 296));
                    v159 = sub_22BB3A190();
                    sub_22BB336D0(v159, v160, 1, v134);
                    v156 = &qword_27D8E2668;
                    v157 = &unk_22BDBCCD0;
                    v158 = v133;
                  }

                  else
                  {
                    v156 = &qword_27D8E2940;
                    v157 = &unk_22BDBCFC0;
                    v158 = v0 + 336;
                  }

                  sub_22BB58780(v158, v156, v157);
                  goto LABEL_41;
                }

                sub_22BB32FA4((v0 + 216));
                v127 = sub_22BB3A190();
                sub_22BB336D0(v127, v128, 1, v100);
                v124 = &qword_27D8E2668;
                v125 = &unk_22BDBCCD0;
                v126 = v99;
              }

              else
              {
                v124 = &qword_27D8E2940;
                v125 = &unk_22BDBCFC0;
                v126 = v0 + 256;
              }

              sub_22BB58780(v126, v124, v125);
              goto LABEL_33;
            }

            v84 = *(v0 + 880);
            sub_22BB30B28();
            sub_22BB336D0(v85, v86, v87, v37);
            v81 = &qword_27D8E2668;
            v82 = &unk_22BDBCCD0;
            v83 = v36;
          }

          else
          {
            v81 = &qword_27D8E2940;
            v82 = &unk_22BDBCFC0;
            v83 = v0 + 176;
          }

          sub_22BB58780(v83, v81, v82);
          goto LABEL_23;
        }

        sub_22BB32FA4((v0 + 16));
        v78 = *(v26 + 8);
        v79 = sub_22BB3182C();
        v80(v79);
      }

      else
      {
        v73 = *(v0 + 584);
        v74 = *(v0 + 576);
        sub_22BB32FA4((v0 + 16));
        v75 = *(v73 + 8);
        v76 = sub_22BB31F54();
        v77(v76);
      }

LABEL_13:
      v59 = *(v0 + 808);
      sub_22BDB63F4();
      v60 = sub_22BDB77C4();
      v61 = sub_22BDBB114();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&dword_22BB2C000, v60, v61, "Missing rawQuery to search tool invocation", v62, 2u);
        sub_22BB30AF0();
      }

      v63 = *(v0 + 808);
      v64 = *(v0 + 792);
      v65 = *(v0 + 784);

      (*(v64 + 8))(v63, v65);
      type metadata accessor for ExecutorError(0);
      sub_22BC15770(&qword_27D8E2948, type metadata accessor for ExecutorError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_22BC15974();
      v66 = *(v0 + 848);
      v67 = *(v0 + 824);
      v68 = *(v0 + 816);
      v69 = *(v0 + 808);
      v70 = *(v0 + 800);
      v177 = *(v0 + 776);
      v179 = *(v0 + 768);
      v181 = *(v0 + 744);
      v183 = *(v0 + 720);
      v185 = *(v0 + 712);
      v187 = *(v0 + 704);
      v189 = *(v0 + 680);
      v191 = *(v0 + 656);
      v193 = *(v0 + 632);
      v195 = *(v0 + 624);
      v197 = *(v0 + 616);
      v199 = *(v0 + 600);
      v201 = *(v0 + 592);
      v202 = *(v0 + 568);
      v204 = *(v0 + 544);

      sub_22BB2F09C();
      sub_22BB3AAA8();

      __asm { BRAA            X1, X16 }
    }

    v56 = *(v0 + 576);
    sub_22BB32FA4((v0 + 16));
    v57 = sub_22BB3A190();
    sub_22BB336D0(v57, v58, 1, v56);
    v53 = &qword_27D8E2668;
    v54 = &unk_22BDBCCD0;
    v55 = v4;
  }

  else
  {
    v53 = &qword_27D8E2940;
    v54 = &unk_22BDBCFC0;
    v55 = v0 + 56;
  }

  sub_22BB58780(v55, v53, v54);
  goto LABEL_13;
}

uint64_t sub_22BC09260()
{
  v2 = *v1;
  sub_22BB3053C();
  *v4 = v3;
  v5 = v2[116];
  *v4 = *v1;
  *(v3 + 936) = v0;

  v6 = v2[114];
  v7 = v2[113];
  v8 = v2[112];
  (*(v2[84] + 8))(v2[85], v2[83]);

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22BC0941C()
{
  v94 = v0;
  v1 = v0[102];
  v2 = v0[90];
  v3 = v0[89];
  v4 = v0[87];
  v5 = v0[86];
  sub_22BDB63F4();
  v6 = *(v4 + 16);
  v7 = sub_22BB3182C();
  v6(v7);
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB0F4();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[99];
  v12 = v0[89];
  if (v10)
  {
    v88 = v0[98];
    v90 = v0[102];
    v13 = v0[88];
    v14 = v0[87];
    v15 = v0[86];
    v85 = v0[99];
    v16 = sub_22BB31AD8();
    v86 = swift_slowAlloc();
    v93 = v86;
    *v16 = 136315138;
    (v6)(v13, v12, v15);
    sub_22BB2F12C();
    v17 = sub_22BDBAC14();
    v18 = v9;
    v20 = v19;
    v21 = v8;
    v22 = *(v14 + 8);
    v23 = sub_22BB33410();
    v22(v23);
    v24 = sub_22BB32EE0(v17, v20, &v93);

    *(v16 + 4) = v24;
    _os_log_impl(&dword_22BB2C000, v21, v18, "Received LLMSearchResponse %s", v16, 0xCu);
    sub_22BB32FA4(v86);
    sub_22BB30AF0();
    sub_22BB30AF0();

    v25 = *(v85 + 8);
    v25(v90, v88);
  }

  else
  {
    v26 = v0[87];
    v27 = v0[86];

    v22 = *(v26 + 8);
    (v22)(v12, v27);
    v25 = *(v11 + 8);
    v28 = sub_22BB2F12C();
    (v25)(v28);
  }

  v0[119] = v25;
  v0[118] = v22;
  v29 = v0[90];
  v30 = v0[65];
  v91 = *(v30 + 16);
  v0[120] = v91;
  v31 = *(v30 + 24);
  v0[121] = v31;

  v32 = sub_22BDB4A04();
  if (v32)
  {
    v33 = v32;
    sub_22BC0A838(v0[79]);

    v34 = sub_22BDB4E74();
    v35 = sub_22BB34748();
    if (sub_22BB3AA28(v35, v36, v34) != 1)
    {
      sub_22BC15770(&qword_27D8E2E10, MEMORY[0x277D1C540]);
      v38 = sub_22BDB4754();
      v40 = v39;
      v41 = *(*(v34 - 8) + 8);
      v42 = sub_22BB2F324();
      v43(v42);
      if (v40 >> 60 == 15)
      {
        v44 = 0;
      }

      else
      {
        v44 = v38;
      }

      v84 = v44;
      if (v40 >> 60 == 15)
      {
        v37 = 0xC000000000000000;
      }

      else
      {
        v37 = v40;
      }

      goto LABEL_14;
    }

    sub_22BB58780(v0[79], &qword_27D8E2E08, &qword_22BDBD458);
  }

  v84 = 0;
  v37 = 0xC000000000000000;
LABEL_14:
  v45 = v0[90];
  v46 = v0[82];
  v47 = v0[81];
  v48 = v0[80];
  v49 = v0[78];
  v50 = v0[77];
  v89 = v0[76];
  objc_allocWithZone(MEMORY[0x277D23CE8]);
  swift_bridgeObjectRetain_n();
  v87 = v46;
  *v46 = sub_22BC1510C(v91, v31, v91, v31, v84, v37);
  (*(v47 + 104))(v46, *MEMORY[0x277D72DB8], v48);
  sub_22BDB49F4();
  v52 = v51;
  v53 = sub_22BDB4254();
  sub_22BB30B28();
  sub_22BB336D0(v54, v55, v56, v53);
  v57 = objc_allocWithZone(MEMORY[0x277D23910]);
  v58 = sub_22BBCBF6C();
  v61 = sub_22BB69508(v58, v59, v60, v52);
  sub_22BDB49F4();
  v63 = v62;
  sub_22BB30B28();
  sub_22BB336D0(v64, v65, v66, v53);
  v67 = objc_allocWithZone(MEMORY[0x277D23910]);
  v68 = sub_22BBCBF6C();
  v71 = sub_22BB69508(v68, v69, v70, v63);
  v72 = objc_allocWithZone(MEMORY[0x277D23888]);
  v73 = sub_22BC15324(v61, v71, 0, 0xE000000000000000);
  v74 = sub_22BDB49F4();
  v76 = v75;
  (*(v47 + 16))(v50 + *(v89 + 20), v87, v48);
  sub_22BB331C8();
  sub_22BB336D0(v77, v78, v79, v48);
  *v50 = v74;
  v50[1] = v76;
  v50[2] = v73;
  sub_22BB32A48(MEMORY[0x277D37008]);
  v92 = v80;
  v81 = swift_task_alloc();
  v0[122] = v81;
  *v81 = v0;
  v81[1] = sub_22BC09924;
  v82 = v0[115];

  return v92();
}

uint64_t sub_22BC09924()
{
  sub_22BB2F0D4();
  sub_22BB32690();
  sub_22BB3053C();
  *v3 = v2;
  v5 = *(v4 + 976);
  v6 = *v1;
  sub_22BB3052C();
  *v7 = v6;
  *(v8 + 984) = v0;

  sub_22BB31B20();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_22BC09A20()
{
  v1 = v0[123];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[71];
  v7 = v0[70];
  v8 = v0[69];
  v76 = swift_allocBox();
  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = v2;
  sub_22BB3E34C(v9, "LLMSearchResultList");
  (*(v7 + 104))(v6, *MEMORY[0x277D72D28], v8);
  v10 = sub_22BDB49E4();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v0[73];
    v13 = v0[67];
    v14 = v0[65];
    v85 = MEMORY[0x277D84F90];

    sub_22BC159A4();
    v15 = 0;
    v16 = *(v13 + 80);
    sub_22BB2F390();
    v81 = v10 + v17;
    v83 = v13;
    while (v15 < *(v10 + 16))
    {
      v18 = v0[74];
      v19 = v0[68];
      v20 = v0[65];
      (*(v83 + 16))(v19, v81 + *(v83 + 72) * v15, v0[66]);
      sub_22BC0A9E4(v19, v18);
      if (v1)
      {
        v79 = v0[118];
        v82 = v0[97];
        v77 = v0[90];
        v73 = v0[87];
        v75 = v0[86];
        v30 = v0[81];
        v71 = v0[80];
        v72 = v0[82];
        v70 = v0[77];
        v31 = v0[71];
        v32 = v0[70];
        v33 = v0[69];
        v34 = v0[68];
        v35 = v0[66];
        v84 = v0[65];

        sub_22BB393B8();
        v36 = sub_22BB8DC7C();
        v37(v36);
        v38 = *(v32 + 8);
        v39 = sub_22BB2F324();
        v40(v39);
        sub_22BC153E4(v70);
        (*(v30 + 8))(v72, v71);
        v79(v77, v75);
        sub_22BB58780(v82, &qword_27D8E2960, &qword_22BDBCFE0);
        sub_22BB32FA4(v0 + 2);

        swift_deallocBox();
        sub_22BB94CC8();

        sub_22BB2F09C();
        goto LABEL_12;
      }

      v21 = v0[68];
      v22 = v0[66];
      sub_22BB393B8();
      v23();
      v25 = *(v85 + 16);
      v24 = *(v85 + 24);
      v6 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        sub_22BB2F158(v24);
        sub_22BD27A40();
      }

      ++v15;
      v26 = v0[74];
      v27 = v0[72];
      *(v85 + 16) = v6;
      v28 = *(v12 + 80);
      sub_22BB2F390();
      (*(v12 + 32))(v85 + v29 + *(v12 + 72) * v25);
      v1 = 0;
      if (v11 == v15)
      {
        v42 = v0[65];

        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_11:
    sub_22BB38FF8();
    v74 = v0[85];
    v43 = v0[82];
    v44 = v0[81];
    v45 = v0[80];
    v78 = v0[79];
    v80 = v0[78];
    sub_22BB3AEA0();
    sub_22BDBA374();
    sub_22BC153E4(v6);
    (*(v44 + 8))(v43, v45);
    v46 = sub_22BB39478();
    v69(v46);
    sub_22BB58780(v67, &qword_27D8E2960, &qword_22BDBCFE0);
    sub_22BB32FA4(v0 + 2);
    *v66 = v76;
    v47 = *MEMORY[0x277D729E0];
    v48 = sub_22BB3A82C();
    v50 = v49(v48);
    v58 = sub_22BB70B9C(v50, v51, v52, v53, v54, v55, v56, v57, v64, v65, v66, v67, v68);
    v59(v58);
    sub_22BB30B28();
    sub_22BB336D0(v60, v61, v62, v63);

    sub_22BB2F09C();
LABEL_12:

    v41();
  }
}

void sub_22BC09FD0()
{
  sub_22BB58780(v0[97], &qword_27D8E2960, &qword_22BDBCFE0);
  sub_22BB32FA4(v0 + 2);
  v23 = v0[117];
  sub_22BC15974();
  v1 = v0[106];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v8 = v0[97];
  v9 = v0[96];
  v10 = v0[93];
  v11 = v0[90];
  v12 = v0[89];
  v13 = v0[88];
  v14 = v0[85];
  v15 = v0[82];
  v16 = v0[79];
  v17 = v0[78];
  v18 = v0[77];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[71];
  v22 = v0[68];

  sub_22BB2F09C();
  sub_22BB3AAA8();

  __asm { BRAA            X1, X16 }
}

void sub_22BC0A19C()
{
  v2 = *(v0 + 984);
  v3 = *(v0 + 800);
  sub_22BDB63F4();
  v4 = v2;
  v5 = sub_22BDB77C4();
  v6 = sub_22BDBB114();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 984);
  if (v7)
  {
    sub_22BB31AD8();
    v9 = sub_22BB2F340();
    *v1 = 138412290;
    v10 = v8;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v1 + 4) = v11;
    *v9 = v11;
    sub_22BB30F08(&dword_22BB2C000, v12, v13, "LLM search client failed to deactivate: %@");
    sub_22BB58780(v9, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  else
  {
  }

  v14 = *(v0 + 792) + 8;
  (*(v0 + 952))(*(v0 + 800), *(v0 + 784));
  v15 = *(v0 + 968);
  v16 = *(v0 + 960);
  v17 = *(v0 + 728);
  v18 = *(v0 + 720);
  v19 = *(v0 + 568);
  v20 = *(v0 + 560);
  v21 = *(v0 + 552);
  v74 = swift_allocBox();
  v22 = swift_allocObject();
  *(v22 + 16) = v16;
  *(v22 + 24) = v15;
  sub_22BB3E34C(v22, "LLMSearchResultList");
  (*(v20 + 104))(v19, *MEMORY[0x277D72D28], v21);
  v23 = sub_22BDB49E4();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = *(v0 + 584);
    v26 = *(v0 + 536);
    v27 = *(v0 + 520);
    v77 = MEMORY[0x277D84F90];

    sub_22BC159A4();
    v28 = 0;
    v29 = *(v26 + 80);
    sub_22BB2F390();
    v76 = v23 + v30;
    while (v28 < *(v23 + 16))
    {
      v31 = *(v0 + 592);
      v32 = *(v0 + 544);
      v33 = *(v0 + 520);
      (*(v26 + 16))(v32, v76 + *(v26 + 72) * v28, *(v0 + 528));
      sub_22BC0A9E4(v32, v31);
      v34 = *(v0 + 544);
      v35 = *(v0 + 528);
      sub_22BB393B8();
      v36();
      v38 = *(v77 + 16);
      v37 = *(v77 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_22BB2F158(v37);
        sub_22BD27A40();
      }

      ++v28;
      v39 = *(v0 + 592);
      v40 = *(v0 + 576);
      *(v77 + 16) = v38 + 1;
      v41 = *(v25 + 80);
      sub_22BB2F390();
      (*(v25 + 32))(v77 + v42 + *(v25 + 72) * v38);
      if (v24 == v28)
      {
        v43 = *(v0 + 520);

        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_12:
    sub_22BB38FF8();
    v44 = *(v0 + 656);
    v45 = *(v0 + 648);
    v46 = *(v0 + 640);
    v72 = *(v0 + 680);
    v73 = *(v0 + 632);
    v75 = *(v0 + 624);
    sub_22BB3AEA0();
    sub_22BDBA374();
    sub_22BC153E4(v23);
    (*(v45 + 8))(v44, v46);
    v47 = sub_22BB39478();
    v71(v47);
    sub_22BB58780(v69, &qword_27D8E2960, &qword_22BDBCFE0);
    sub_22BB32FA4((v0 + 16));
    *v68 = v74;
    v48 = *MEMORY[0x277D729E0];
    v49 = sub_22BB3A82C();
    v51 = v50(v49);
    v59 = sub_22BB70B9C(v51, v52, v53, v54, v55, v56, v57, v58, v66, v67, v68, v69, v70);
    v60(v59);
    sub_22BB30B28();
    sub_22BB336D0(v61, v62, v63, v64);

    sub_22BB2F09C();

    v65();
  }
}

uint64_t sub_22BC0A838@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22BDB4744();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_22BC1502C())
  {
    v8 = sub_22BDB4E74();

    return sub_22BB336D0(a1, 1, 1, v8);
  }

  else
  {
    v10 = v1;
    sub_22BDB4724();
    (*(v4 + 104))(v7, *MEMORY[0x277D46C38], v3);
    sub_22BDB4734();
    (*(v4 + 8))(v7, v3);
    v11 = sub_22BDB4E74();
    return sub_22BB336D0(a1, 0, 1, v11);
  }
}

void sub_22BC0A9E4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v115 = a2;
  v3 = sub_22BDB49D4();
  v126 = *(v3 - 8);
  v127 = v3;
  v4 = *(v126 + 64);
  MEMORY[0x28223BE20](v3);
  v105 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BBE6DE0(&qword_27D8E2E20, &unk_22BDBF4A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v114 = &v102 - v8;
  v120 = sub_22BDBA634();
  v118 = *(v120 - 8);
  v9 = *(v118 + 64);
  v10 = MEMORY[0x28223BE20](v120);
  v113 = (&v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v119 = (&v102 - v12);
  v13 = sub_22BBE6DE0(&qword_27D8E2E28, &qword_22BDBD460);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v125 = &v102 - v15;
  v124 = sub_22BDB4984();
  v116 = *(v124 - 1);
  v16 = *(v116 + 64);
  MEMORY[0x28223BE20](v124);
  v112 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22BDB4A64();
  v122 = *(v18 - 8);
  v123 = v18;
  v19 = *(v122 + 64);
  MEMORY[0x28223BE20](v18);
  v117 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = sub_22BDB4A34();
  v21 = *(v128 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v128);
  v24 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_22BDBA594();
  v129 = *(v25 - 8);
  v26 = *(v129 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v131 = (&v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = MEMORY[0x28223BE20](v27);
  v111 = (&v102 - v30);
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v102 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = (&v102 - v34);
  v36 = sub_22BDBAB14();
  sub_22BDB4AA4();
  v37 = sub_22BDB4A24();
  v39 = v38;
  v40 = v24;
  v41 = v25;
  (*(v21 + 8))(v40, v128);
  sub_22BC13D6C(v37, v39, v35);

  v121 = a1;
  v43 = v129 + 32;
  v42 = *(v129 + 32);
  v42(v33, v35, v41);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v133 = v36;
  sub_22BD851A0(v33, 0x656372756F73, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v45 = v133;
  v46 = v117;
  sub_22BDB4A74();
  v47 = v46;
  v48 = sub_22BDB4A54();
  v50 = v49;
  (*(v122 + 8))(v47, v123);
  v51 = v124;
  sub_22BC13D6C(v48, v50, v35);
  v52 = v42;

  v117 = v35;
  v128 = v43;
  v42(v33, v35, v41);
  v53 = v33;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v133 = v45;
  sub_22BD851A0(v33, 0x5474657070696E73, 0xEB00000000657079, v54);
  v55 = v133;
  v56 = v125;
  sub_22BDB4A94();
  v57 = v51;
  if (sub_22BB3AA28(v56, 1, v51) == 1)
  {
    sub_22BB58780(v56, &qword_27D8E2E28, &qword_22BDBD460);
  }

  else
  {
    v59 = v116;
    v60 = v112;
    (*(v116 + 32))(v112, v56, v57);
    v61 = v117;
    sub_22BC13E58(v117);
    v52(v53, v61, v41);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v55;
    sub_22BD851A0(v53, 0x676F6C616964, 0xE600000000000000, v62);
    v55 = v133;
    (*(v59 + 8))(v60, v57);
  }

  v58 = v130;
  v116 = v55;
  v112 = v53;
  sub_22BDBA3A4();
  v63 = swift_allocBox();
  v65 = v64;
  v66 = swift_allocObject();
  v67 = *(v58 + 24);
  v109 = *(v58 + 16);
  v66[2] = v109;
  v66[3] = v67;
  v66[4] = 0x63726165534D4C4CLL;
  v66[5] = 0xEF746C7573655268;
  v68 = v119;
  *v119 = v66;
  v69 = *(v118 + 104);
  v107 = *MEMORY[0x277D72D28];
  v108 = v118 + 104;
  v106 = v69;
  v69(v68);
  v110 = v67;

  v70 = sub_22BDB49E4();
  v71 = *(v70 + 16);
  v72 = v127;
  if (v71)
  {
    v102 = v65;
    v103 = v63;
    v133 = MEMORY[0x277D84F90];
    v125 = v71;
    sub_22BD27A40();
    v73 = 0;
    v74 = v133;
    v123 = v70 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
    v122 = v126 + 16;
    v124 = (v126 + 8);
    v75 = v105;
    while (v73 < *(v70 + 16))
    {
      (*(v126 + 16))(v75, v123 + *(v126 + 72) * v73, v72);
      v76 = v132;
      sub_22BC14254(v75, v131);
      v132 = v76;
      if (v76)
      {

        (*v124)(v75, v72);
        (*(v118 + 8))(v119, v120);

        swift_deallocBox();
        return;
      }

      v77 = v70;
      v78 = v52;
      v79 = v41;
      (*v124)(v75, v72);
      v133 = v74;
      v80 = *(v74 + 16);
      if (v80 >= *(v74 + 24) >> 1)
      {
        sub_22BD27A40();
        v75 = v105;
        v74 = v133;
      }

      ++v73;
      *(v74 + 16) = v80 + 1;
      v81 = v74 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v80;
      v41 = v79;
      v82 = v79;
      v52 = v78;
      v78(v81, v131, v82);
      v72 = v127;
      v70 = v77;
      if (v125 == v73)
      {

        v63 = v103;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_14:
    v104 = v52;
    sub_22BDBA374();
    v83 = v111;
    *v111 = v63;
    v84 = *MEMORY[0x277D729E0];
    v85 = *(v129 + 104);
    v129 += 104;
    v131 = v85;
    (v85)(v83, v84, v41);
    v86 = v117;
    v52(v117, v83, v41);
    v87 = v116;
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v87;
    sub_22BD851A0(v86, 0x7365697469746E65, 0xE800000000000000, v88);
    v89 = v133;
    v127 = "LLMSearchResultList";
    v90 = sub_22BDBA514();
    v91 = swift_allocBox();
    v93 = v92;
    *v92 = sub_22BDB4A84() & 1;
    (*(*(v90 - 8) + 104))(v93, *MEMORY[0x277D72988], v90);
    *v86 = v91;
    (v131)(v86, *MEMORY[0x277D72A58], v41);
    v94 = v112;
    v104(v112, v86, v41);
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v89;
    sub_22BD851A0(v94, 0xD000000000000018, v127 | 0x8000000000000000, v95);
    v128 = v133;
    sub_22BDBA4B4();
    v96 = swift_allocBox();
    v97 = swift_allocObject();
    v98 = v110;
    v97[2] = v109;
    v97[3] = v98;
    v97[4] = 0xD000000000000013;
    v97[5] = 0x800000022BDD16F0;
    v99 = v113;
    *v113 = v97;
    v106(v99, v107, v120);

    sub_22BDB4A44();
    v100 = sub_22BDB4AC4();
    sub_22BC14C28(v100, v114);

    sub_22BDBA484();
    *v115 = v96;
    v101 = *MEMORY[0x277D72A38];
    (v131)();
  }
}

uint64_t sub_22BC0B65C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v44 = sub_22BDBA634();
  v43 = *(v44 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDBA594();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22BDBA4B4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v39 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - v16;
  v41 = *(v7 + 16);
  v42 = a1;
  v41(v10, a1, v6);
  if ((*(v7 + 88))(v10, v6) != *MEMORY[0x277D72A38])
  {
    (*(v7 + 8))(v10, v6);
LABEL_11:
    type metadata accessor for SearchToolUnwrapError(0);
    sub_22BC15770(&qword_27D8E2E58, type metadata accessor for SearchToolUnwrapError);
    swift_allocError();
    v41(v26, v42, v6);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  (*(v7 + 96))(v10, v6);
  v18 = *v10;
  v19 = swift_projectBox();
  v37 = *(v12 + 16);
  v37(v17, v19, v11);

  sub_22BDBA3D4();
  if ((*(v43 + 88))(v5, v44) != *MEMORY[0x277D72D28])
  {
    (*(v12 + 8))(v17, v11);
    (*(v43 + 8))(v5, v44);
    goto LABEL_11;
  }

  v35 = v12;
  v36 = v11;
  (*(v43 + 96))(v5, v44);
  v20 = *v5;
  v22 = *(*v5 + 32);
  v21 = *(v20 + 40);

  if (v22 == 0x7041686372616553 && v21 == 0xEF797469746E4570)
  {
  }

  else
  {
    v24 = sub_22BDBB6D4();

    if ((v24 & 1) == 0)
    {
      (*(v35 + 8))(v17, v36);
      return (v41)(v38, v42, v6);
    }
  }

  sub_22BDBA424();
  v27 = swift_allocBox();
  v29 = v28;
  v30 = v39;
  v31 = v36;
  v37(v39, v17, v36);
  v32 = v40;
  sub_22BC7613C(v30, v29);
  (*(v35 + 8))(v17, v31);
  if (v32)
  {
    return swift_deallocBox();
  }

  *v38 = v27;
  v33 = *MEMORY[0x277D729F8];
  return (*(v7 + 104))();
}

void sub_22BC0BB7C()
{
  sub_22BB30F94();
  v59 = v0;
  v1 = sub_22BBE6DE0(&qword_27D8E2DF8, &qword_22BDBD448);
  sub_22BB2F0C8(v1);
  v3 = *(v2 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v4);
  v6 = v51 - v5;
  v60 = sub_22BDB4464();
  v7 = sub_22BB30444(v60);
  v55 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  sub_22BB30560();
  v54 = v11;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  v53 = v13;
  sub_22BB2F120();
  v14 = sub_22BDBA594();
  v15 = sub_22BB30444(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  sub_22BB30574();
  v22 = v21 - v20;
  v23 = sub_22BDBA394();
  v24 = 0;
  v25 = *(v23 + 16);
  v26 = (v17 + 8);
  v57 = (v55 + 32);
  v58 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v25 == v24)
    {

      sub_22BB314EC();
      return;
    }

    if (v24 >= *(v23 + 16))
    {
      break;
    }

    v27 = *(v17 + 80);
    sub_22BB2F390();
    (*(v17 + 16))(v22, v23 + v28 + *(v17 + 72) * v24, v14);
    sub_22BC0BEB4(v22, v59, v6);
    v29 = *v26;
    v30 = sub_22BB33410();
    v31(v30);
    v32 = sub_22BB34748();
    sub_22BB31814(v32, v33, v60);
    if (v34)
    {
      sub_22BB58780(v6, &qword_27D8E2DF8, &qword_22BDBD448);
      ++v24;
    }

    else
    {
      v56 = *v57;
      v56(v53, v6, v60);
      v56(v54, v53, v60);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v43 = *(v58 + 16);
        sub_22BB305BC();
        sub_22BD8F16C();
        v58 = v44;
      }

      v37 = *(v58 + 16);
      v36 = *(v58 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_22BB2F158(v36);
        v51[1] = v46;
        v52 = v45;
        sub_22BD8F16C();
        v38 = v52;
        v58 = v47;
      }

      ++v24;
      *(v58 + 16) = v38;
      sub_22BB2F374();
      (v56)(v40 + v39 + *(v41 + 72) * v42);
    }
  }

  __break(1u);

  v48 = *v26;
  v49 = sub_22BB33410();
  v50(v49);

  __break(1u);
}

uint64_t sub_22BC0BEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a2;
  v89 = a1;
  v90 = a3;
  v3 = sub_22BDB77D4();
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3);
  v86 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDBA514();
  v81 = *(v6 - 8);
  v82 = v6;
  v7 = *(v81 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v80 = &v71 - v10;
  v11 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v79 = (&v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v84 = (&v71 - v15);
  v16 = sub_22BDBA634();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22BDBA594();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_22BDBA4B4();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, v89, v21);
  v31 = *(v22 + 88);
  v89 = v22 + 88;
  v83 = v31;
  if (v31(v25, v21) != *MEMORY[0x277D72A38])
  {
    (*(v22 + 8))(v25, v21);
    goto LABEL_24;
  }

  v77 = v22;
  v75 = *(v22 + 96);
  v76 = v22 + 96;
  v75(v25, v21);
  v32 = *v25;
  v33 = swift_projectBox();
  (*(v27 + 16))(v30, v33, v26);

  sub_22BDBA3D4();
  if ((*(v17 + 88))(v20, v16) != *MEMORY[0x277D72D28])
  {
    (*(v27 + 8))(v30, v26);
    (*(v17 + 8))(v20, v16);
    goto LABEL_24;
  }

  v34 = v21;
  v74 = v26;
  (*(v17 + 96))(v20, v16);
  v35 = *(*v20 + 16);
  v36 = *(*v20 + 24);
  v37 = *(*v20 + 32);
  v38 = *(*v20 + 40);
  v39 = *(v85 + 16) == v35 && *(v85 + 24) == v36;
  if (!v39 && (sub_22BDBB6D4() & 1) == 0 || (v37 == 0xD00000000000001ALL ? (v40 = 0x800000022BDD1620 == v38) : (v40 = 0), !v40 && (sub_22BDBB6D4() & 1) == 0))
  {
    (*(v27 + 8))(v30, v74);
LABEL_18:

    goto LABEL_24;
  }

  v41 = sub_22BDBA444();
  v42 = v84;
  sub_22BD80E68(v41, v84);

  if (sub_22BB3AA28(v42, 1, v34) == 1)
  {
    (*(v27 + 8))(v30, v74);
    sub_22BB58780(v42, &qword_27D8E2668, &unk_22BDBCCD0);
LABEL_24:
    v55 = v90;
    v56 = v86;
    sub_22BDB63F4();
    v57 = sub_22BDB77C4();
    v58 = sub_22BDBB114();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_22BB2C000, v57, v58, "Failed to construct SearchEntityTypeIdentifier from parameters", v59, 2u);
      MEMORY[0x2318A6080](v59, -1, -1);
    }

    (*(v87 + 8))(v56, v88);
    v60 = 1;
    goto LABEL_27;
  }

  v43 = v83(v42, v34);
  if (v43 != *MEMORY[0x277D72A58])
  {
    (*(v27 + 8))(v30, v74);
    (*(v77 + 8))(v42, v34);
    goto LABEL_24;
  }

  v44 = v43;
  v75(v42, v34);
  v45 = *v42;
  v46 = swift_projectBox();
  v48 = v80;
  v47 = v81;
  v49 = v82;
  v85 = *(v81 + 16);
  (v85)(v80, v46, v82);
  v50 = *(v47 + 88);
  v84 = (v47 + 88);
  v73 = v50;
  v51 = v50(v48, v49);
  if (v51 != *MEMORY[0x277D729B8])
  {
    (*(v27 + 8))(v30, v74);
    (*(v47 + 8))(v48, v49);
    goto LABEL_18;
  }

  LODWORD(v86) = v51;
  v72 = *(v47 + 96);
  v72(v48, v49);
  v52 = *v48;
  v87 = v48[1];
  v88 = v52;

  v53 = sub_22BDBA444();
  v54 = v79;
  sub_22BD80E68(v53, v79);

  if (sub_22BB3AA28(v54, 1, v34) == 1)
  {
    sub_22BB58780(v54, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else if (v83(v54, v34) == v44)
  {
    v75(v54, v34);
    v63 = *v54;
    v64 = swift_projectBox();
    v65 = v78;
    v66 = v82;
    (v85)(v78, v64, v82);
    v67 = v73(v65, v66);
    if (v67 == v86)
    {
      v72(v65, v66);
      v68 = *v65;
      v69 = v65[1];
    }

    else
    {
      (*(v81 + 8))(v65, v66);
    }
  }

  else
  {
    (*(v77 + 8))(v54, v34);
  }

  v55 = v90;
  v70 = v74;
  sub_22BDB4454();
  (*(v27 + 8))(v30, v70);
  v60 = 0;
LABEL_27:
  v61 = sub_22BDB4464();
  return sub_22BB336D0(v55, v60, 1, v61);
}

void sub_22BC0C82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BB30F94();
  a19 = v24;
  a20 = v25;
  v872 = v26;
  v873[0] = v21;
  v28 = v27;
  v29 = sub_22BBE6DE0(&qword_27D8E2D38, &qword_22BDBD3C0);
  sub_22BB2F0C8(v29);
  v31 = *(v30 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v32);
  sub_22BB30BA8();
  sub_22BB30B8C(v33);
  v798 = sub_22BDBA4D4();
  v34 = sub_22BB30444(v798);
  v797 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22BB305A8();
  sub_22BB2F14C(v38);
  v39 = sub_22BBE6DE0(&qword_27D8E2D40, &qword_22BDBD3C8);
  sub_22BB2F0C8(v39);
  v41 = *(v40 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v42);
  sub_22BB30BA8();
  sub_22BB30B8C(v43);
  v870 = sub_22BDB44A4();
  v44 = sub_22BB30444(v870);
  v839 = v45;
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v44);
  sub_22BB305A8();
  v861 = v48;
  v49 = sub_22BBE6DE0(&qword_27D8E2D48, &qword_22BDBD3D0);
  sub_22BB2F0C8(v49);
  v51 = *(v50 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v52);
  sub_22BB30BA8();
  sub_22BB30B8C(v53);
  v869 = sub_22BDB4484();
  v54 = sub_22BB30444(v869);
  v837[1] = v55;
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  sub_22BB305A8();
  v860 = v58;
  v59 = sub_22BBE6DE0(&qword_27D8E2D50, &qword_22BDBD3D8);
  sub_22BB2F0C8(v59);
  v61 = *(v60 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v62);
  sub_22BB30BA8();
  sub_22BB30B8C(v63);
  v868 = sub_22BDB4524();
  v64 = sub_22BB30444(v868);
  v836 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  sub_22BB305A8();
  v857 = v68;
  v69 = sub_22BBE6DE0(&qword_27D8E2D58, &qword_22BDBD3E0);
  sub_22BB2F0C8(v69);
  v71 = *(v70 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v72);
  sub_22BB30BA8();
  sub_22BB30B8C(v73);
  v834 = sub_22BDB4584();
  v74 = sub_22BB30444(v834);
  v833 = v75;
  v77 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  sub_22BB305A8();
  sub_22BB2F14C(v78);
  v79 = sub_22BBE6DE0(&qword_27D8E2D60, &qword_22BDBD3E8);
  v80 = sub_22BB2F0C8(v79);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v80);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v83);
  sub_22BB2F39C();
  sub_22BB30B8C(v84);
  v812 = sub_22BDB44C4();
  v85 = sub_22BB30444(v812);
  v805 = v86;
  v88 = *(v87 + 64);
  MEMORY[0x28223BE20](v85);
  sub_22BB305A8();
  sub_22BB2F14C(v89);
  v90 = sub_22BBE6DE0(&qword_27D8E2D68, &qword_22BDBD3F0);
  v91 = sub_22BB2F0C8(v90);
  v93 = *(v92 + 64);
  MEMORY[0x28223BE20](v91);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v94);
  sub_22BB2F39C();
  sub_22BB30B8C(v95);
  v811 = sub_22BDB4494();
  v96 = sub_22BB30444(v811);
  v802 = v97;
  v99 = *(v98 + 64);
  MEMORY[0x28223BE20](v96);
  sub_22BB305A8();
  sub_22BB2F14C(v100);
  v101 = sub_22BBE6DE0(&qword_27D8E2D70, &qword_22BDBD3F8);
  v102 = sub_22BB2F0C8(v101);
  v104 = *(v103 + 64);
  MEMORY[0x28223BE20](v102);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v105);
  sub_22BB2F39C();
  sub_22BB30B8C(v106);
  v810 = sub_22BDB4534();
  v107 = sub_22BB30444(v810);
  v800 = v108;
  v110 = *(v109 + 64);
  MEMORY[0x28223BE20](v107);
  sub_22BB305A8();
  sub_22BB2F14C(v111);
  v112 = sub_22BBE6DE0(&qword_27D8E2D78, &qword_22BDBD400);
  sub_22BB2F0C8(v112);
  v114 = *(v113 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v115);
  sub_22BB30BA8();
  v871 = v116;
  sub_22BB2F120();
  v867 = sub_22BDB44B4();
  v117 = sub_22BB30444(v867);
  v831 = v118;
  v120 = *(v119 + 64);
  MEMORY[0x28223BE20](v117);
  sub_22BB305A8();
  sub_22BB2F14C(v121);
  v122 = sub_22BBE6DE0(&qword_27D8E2D80, &qword_22BDBD408);
  sub_22BB2F0C8(v122);
  v124 = *(v123 + 64);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v125);
  sub_22BB30BA8();
  sub_22BB30B8C(v126);
  v866 = sub_22BDB4474();
  v127 = sub_22BB30444(v866);
  v830 = v128;
  v130 = *(v129 + 64);
  MEMORY[0x28223BE20](v127);
  sub_22BB305A8();
  sub_22BB30B8C(v131);
  v132 = sub_22BDBA3A4();
  v133 = sub_22BB30444(v132);
  v862 = v134;
  v863 = v133;
  v136 = *(v135 + 64);
  MEMORY[0x28223BE20](v133);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v137);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v138);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v139);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v140);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v141);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v142);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v143);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v144);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v145);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v146);
  sub_22BB2F39C();
  sub_22BB30B8C(v147);
  v148 = sub_22BDBA514();
  v149 = sub_22BB30444(v148);
  v828[3] = v150;
  v152 = *(v151 + 64);
  MEMORY[0x28223BE20](v149);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v153);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v154);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v155);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v156);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v157);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v158);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v159);
  sub_22BB2F39C();
  sub_22BB2F14C(v160);
  v161 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v162 = sub_22BB2F0C8(v161);
  v164 = *(v163 + 64);
  MEMORY[0x28223BE20](v162);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v165);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v166);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v167);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v168);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v169);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v170);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v171);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v172);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v173);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v174);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v175);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v176);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v177);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v178);
  sub_22BB38524();
  MEMORY[0x28223BE20](v179);
  sub_22BB2F384();
  v865 = v180;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v181);
  v183 = v796 - v182;
  v184 = sub_22BDBA594();
  v185 = sub_22BB30444(v184);
  v187 = v186;
  v189 = *(v188 + 64);
  MEMORY[0x28223BE20](v185);
  sub_22BB30560();
  v859[1] = v190;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v191);
  sub_22BB2F384();
  v859[0] = v192;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v193);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v194);
  sub_22BB2F384();
  v858 = v195;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v196);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v197);
  sub_22BB2F384();
  v856 = v198;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v199);
  sub_22BB2F384();
  v855 = v200;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v201);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v202);
  sub_22BB2F384();
  v854 = v203;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v204);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v205);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v206);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v207);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v208);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v209);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v210);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v211);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v212);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v213);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v214);
  sub_22BB7037C();
  MEMORY[0x28223BE20](v215);
  sub_22BB2F384();
  sub_22BB30B70();
  MEMORY[0x28223BE20](v216);
  sub_22BB353B8();
  MEMORY[0x28223BE20](v217);
  v219 = v796 - v218;
  v843 = v28;
  sub_22BDB46A4();
  v220 = sub_22BDBA444();
  sub_22BD80E68(v220, v183);

  v221 = sub_22BB3AA28(v183, 1, v184);
  v222 = MEMORY[0x277D72A58];
  v864 = v187;
  if (v221 == 1)
  {
    sub_22BB58780(v183, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    sub_22BB379C8();
    v223(v219, v183, v184);
    sub_22BB71FBC();
    v224(v20, v219, v184);
    sub_22BB3CF10();
    if (v225(v20, v184) == *v222)
    {
      sub_22BB3E298();
      v226(v20, v184);
      v227 = *v20;
      swift_projectBox();
      sub_22BB3B2D0(v859);
      v228 = v844;
      v229(v844);
      sub_22BB314E0();
      if (v230(v228, v148) == *MEMORY[0x277D72988])
      {
        sub_22BB8DC88();
        v231(v228, v148);
        v232 = *v228;

        sub_22BB3A91C();
        sub_22BDB45B4();
        sub_22BBADBFC();
        v233 = sub_22BB92810();
        v234(v233);
      }

      else
      {
        sub_22BBADBFC();
        v237 = sub_22BB92810();
        v238(v237);
        sub_22BBC7F4C();
        v239(v228, v148);
      }
    }

    else
    {
      v235 = *(v187 + 8);
      v236 = sub_22BB92810();
      v235(v236);
      (v235)(v20, v184);
    }
  }

  v240 = sub_22BDBA444();
  v241 = v865;
  sub_22BD80E68(v240, v865);

  sub_22BB30584();
  v242 = v842;
  if (v352)
  {
    sub_22BB58780(v241, &qword_27D8E2668, &unk_22BDBCCD0);
    v243 = v864;
  }

  else
  {
    v244 = v864;
    v245 = v864[4];
    sub_22BB3E0E8();
    v246();
    v247 = *(v244 + 16);
    v248 = sub_22BB38518();
    v249(v248);
    sub_22BC15998();
    v250 = sub_22BB33410();
    v252 = v251(v250);
    if (v252 == *MEMORY[0x277D72A58])
    {
      sub_22BB8AB68();
      v253 = sub_22BB33410();
      v254(v253);
      v255 = *v23;
      swift_projectBox();
      sub_22BB3B2D0(v859);
      v23 = v845;
      v256(v845);
      sub_22BB314E0();
      if (v257(v23, v148) == *MEMORY[0x277D72988])
      {
        sub_22BB8DC88();
        v258(v23, v148);
        v259 = *v23;

        sub_22BB3A91C();
        sub_22BDB4664();
        v243 = v244;
        sub_22BB3CAA4();
        v260 = sub_22BB2F12C();
        v261(v260);
      }

      else
      {
        v243 = v244;
        sub_22BB3CAA4();
        v265 = sub_22BB2F12C();
        v266(v265);
        sub_22BBC7F4C();
        v267(v23, v148);
      }
    }

    else
    {
      v243 = v244;
      v262 = *(v244 + 8);
      v263 = sub_22BB2F12C();
      v262(v263);
      v264 = sub_22BB33410();
      v262(v264);
    }
  }

  sub_22BB75914();
  v268 = sub_22BDBA444();
  sub_22BD80E68(v268, v22);

  v269 = sub_22BB34748();
  v271 = sub_22BB3AA28(v269, v270, v184);
  v272 = MEMORY[0x277D729E0];
  v865 = v148;
  if (v271 == 1)
  {
    sub_22BB58780(v22, &qword_27D8E2668, &unk_22BDBCCD0);
    v273 = v243;
LABEL_32:
    v305 = v824;
    goto LABEL_35;
  }

  sub_22BB97BB4();
  v274 = sub_22BB37488();
  if (v275(v274) != *v272)
  {
    v303 = sub_22BB38658(v243);
    v304(v303);
    v273 = v243;
    goto LABEL_32;
  }

  sub_22BB8AB68();
  v276 = sub_22BB37488();
  v277(v276);
  v278 = *v22;
  swift_projectBox();
  sub_22BB38C98();
  v279 = sub_22BB35F34();
  v280(v279);

  v281 = *(sub_22BDBA394() + 16);
  if (v281)
  {
    v282 = v243 + 16;
    v845 = *(v243 + 16);
    sub_22BB58944();
    v796[1] = v283;
    v285 = v283 + v284;
    v844 = *(v282 + 56);
    v286 = (v830 + 32);
    v23 = MEMORY[0x277D84F90];
    do
    {
      v287 = v846;
      v288 = sub_22BB52D78();
      v845(v288);
      sub_22BC10C00(v287, v242);
      v289 = *(v282 - 8);
      v290 = sub_22BB37488();
      v291(v290);
      v292 = v866;
      sub_22BB31814(v242, 1, v866);
      if (v352)
      {
        sub_22BB58780(v242, &qword_27D8E2D80, &qword_22BDBD408);
      }

      else
      {
        v293 = v242;
        v294 = *v286;
        (*v286)(v848, v293, v292);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v300 = v23[2];
          sub_22BB305BC();
          sub_22BD8F0A4();
          v23 = v301;
        }

        v297 = v23[2];
        v296 = v23[3];
        if (v297 >= v296 >> 1)
        {
          sub_22BB2F138(v296);
          sub_22BD8F0A4();
          v23 = v302;
        }

        v23[2] = v297 + 1;
        sub_22BB371A4(&v860);
        v294(v23 + v298 + *(v299 + 72) * v297, v848, v866);
        v242 = v842;
      }

      v285 += v844;
      --v281;
    }

    while (v281);

    v148 = v865;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v305 = v824;
  sub_22BB3A91C();
  sub_22BDB45A4();
  sub_22BB73B4C();
  v306(v808);
  v273 = v864;
  sub_22BB75914();
LABEL_35:
  v307 = v872;
  v308 = sub_22BDBA444();
  sub_22BB33404(&v836);
  sub_22BD80E68(v308, v309);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v307, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    sub_22BB3CF10();
    v310 = sub_22BB3A19C();
    v312 = v311(v310);
    if (v312 == *MEMORY[0x277D729E0])
    {
      sub_22BB3E298();
      v313 = sub_22BB3A19C();
      v314(v313);
      sub_22BB3455C();
      sub_22BB38C98();
      v315 = sub_22BB35F34();
      v316(v315);

      v23 = *(sub_22BDBA394() + 16);
      if (v23)
      {
        sub_22BB6995C();
        v846 = v317;
        v319 = v317 + v318;
        v848 = v273[7];
        v320 = v273 - 1;
        sub_22BB527C0(&v861);
        v321 = MEMORY[0x277D84F90];
        v322 = v871;
        do
        {
          v323 = v847;
          (v866)(v847, v319, v184);
          sub_22BC11038(v323, v322);
          v322 = v871;
          v324 = *v320;
          v325 = sub_22BB92810();
          v326(v325);
          v327 = sub_22BB3A190();
          v328 = v867;
          sub_22BB31814(v327, v329, v867);
          if (v352)
          {
            sub_22BB58780(v322, &qword_27D8E2D78, &qword_22BDBD400);
          }

          else
          {
            v330 = *v305;
            (*v305)(v849, v322, v328);
            v331 = swift_isUniquelyReferenced_nonNull_native();
            if ((v331 & 1) == 0)
            {
              v336 = *(v321 + 16);
              sub_22BB305BC();
              sub_22BD8EFDC();
              v321 = v337;
            }

            v333 = *(v321 + 16);
            v332 = *(v321 + 24);
            if (v333 >= v332 >> 1)
            {
              sub_22BB2F138(v332);
              sub_22BD8EFDC();
              v321 = v338;
            }

            *(v321 + 16) = v333 + 1;
            sub_22BB371A4(&v861);
            v330(v321 + v334 + *(v335 + 72) * v333, v849, v867);
            v273 = v864;
            v322 = v871;
          }

          v319 += v848;
          v23 = (v23 - 1);
        }

        while (v23);

        v305 = v824;
      }

      else
      {
      }

      sub_22BB3A91C();
      sub_22BDB4614();
      sub_22BB73B4C();
      v341(v809);
      v148 = v865;
      sub_22BB75914();
    }

    else
    {
      v339 = sub_22BB3A584(v273);
      v340(v339);
    }
  }

  v342 = v872;
  v343 = sub_22BDBA444();
  sub_22BB33404(v837);
  sub_22BD80E68(v343, v344);

  sub_22BB30584();
  if (v352)
  {
    v345 = &qword_27D8E2668;
    v346 = &unk_22BDBCCD0;
  }

  else
  {
    sub_22BB379C8();
    sub_22BB3E0E8();
    v347();
    sub_22BB3E368(&v826);
    sub_22BC0FF58(v305, v348);
    v342 = v343;
    v349 = sub_22BB36B68();
    v350 = v810;
    sub_22BB31814(v349, v351, v810);
    if (!v352)
    {
      v355 = v800;
      v356 = v273;
      v357 = v799;
      (*(v800 + 32))(v799, v342, v350);
      sub_22BB3DE24();
      v358 = sub_22BB35F34();
      v359(v358, v357, v350);
      sub_22BB52D68();
      sub_22BB336D0(v360, v361, v362, v363);
      sub_22BB3A91C();
      sub_22BDB4624();
      v364 = v357;
      v273 = v356;
      (*(v355 + 8))(v364, v350);
      v365 = sub_22BB38658(v356);
      v366(v365);
      goto LABEL_61;
    }

    v353 = sub_22BB38658(v273);
    v354(v353);
    v345 = &qword_27D8E2D70;
    v346 = &qword_22BDBD3F8;
  }

  sub_22BB58780(v342, v345, v346);
LABEL_61:
  v367 = v872;
  v368 = sub_22BDBA444();
  sub_22BB33404(&v838);
  sub_22BD80E68(v368, v369);

  sub_22BB30584();
  v370 = v825;
  v371 = v822;
  if (v352)
  {
    v372 = &qword_27D8E2668;
    v373 = &unk_22BDBCCD0;
  }

  else
  {
    sub_22BB379C8();
    sub_22BB3E0E8();
    v374();
    sub_22BB3E368(&v827);
    sub_22BC10390(v371, v375);
    v367 = v368;
    v376 = sub_22BB36B68();
    v377 = v811;
    sub_22BB31814(v376, v378, v811);
    if (!v379)
    {
      v382 = v802;
      sub_22BB379C8();
      v383 = v801;
      v384(v801, v367, v377);
      sub_22BB71FBC();
      v385(v803, v383, v377);
      sub_22BB331C8();
      sub_22BB336D0(v386, v387, v388, v377);
      sub_22BB3A91C();
      sub_22BDB45E4();
      v370 = v825;
      (*(v382 + 8))(v383, v377);
      v273 = v864;
      v389 = sub_22BB38658(v864);
      v390(v389);
      goto LABEL_68;
    }

    v380 = sub_22BB38658(v273);
    v381(v380);
    v372 = &qword_27D8E2D68;
    v373 = &qword_22BDBD3F0;
  }

  sub_22BB58780(v367, v372, v373);
LABEL_68:
  v391 = v872;
  v392 = sub_22BDBA444();
  sub_22BB33404(&v839);
  sub_22BD80E68(v392, v393);

  sub_22BB30584();
  if (v352)
  {
    v394 = &qword_27D8E2668;
    v395 = &unk_22BDBCCD0;
    v396 = v391;
  }

  else
  {
    sub_22BB379C8();
    sub_22BB3E0E8();
    v397();
    sub_22BB3E368(v828);
    sub_22BC107C8(v370, v398);
    v399 = sub_22BB36B68();
    v400 = v812;
    sub_22BB31814(v399, v401, v812);
    if (!v402)
    {
      v405 = v273;
      v406 = v805;
      sub_22BB379C8();
      v407 = v804;
      v408 = sub_22BB6BE18();
      v409(v408);
      sub_22BB71FBC();
      v410(v806, v407, v400);
      sub_22BB331C8();
      sub_22BB336D0(v411, v412, v413, v400);
      sub_22BB3A91C();
      sub_22BDB4594();
      v414 = v407;
      v23 = v841;
      (*(v406 + 8))(v414, v400);
      v273 = v405;
      v415 = v405[1];
      v416 = sub_22BB92810();
      v417(v416);
      goto LABEL_75;
    }

    sub_22BBADBFC();
    v403 = sub_22BB92810();
    v404(v403);
    v394 = &qword_27D8E2D60;
    v395 = &qword_22BDBD3E8;
    v396 = v392;
  }

  sub_22BB58780(v396, v394, v395);
LABEL_75:
  v418 = v872;
  v419 = sub_22BDBA444();
  sub_22BB33404(&v840);
  sub_22BD80E68(v419, v420);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v418, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    sub_22BB3CF10();
    v421 = sub_22BB3A19C();
    v871 = v422;
    v867 = v423;
    v424 = v423(v421);
    if (v424 == *MEMORY[0x277D729E0])
    {
      sub_22BB3E298();
      v425 = sub_22BB3A19C();
      v847 = v426;
      v846 = v427;
      v427(v425);
      sub_22BB3455C();
      sub_22BB38C98();
      v428 = sub_22BB35F34();
      v429(v428);

      v430 = v273;
      v273 = *(sub_22BDBA394() + 16);
      if (v273)
      {
        sub_22BB6995C();
        sub_22BB72EE4(v431);
        v849 = v432;
        v371 = (v430 + 2);
        LODWORD(v848) = *MEMORY[0x277D72A58];
        sub_22BB691DC((v430 - 1));
        sub_22BB5866C();
        v842 = v433;
        v434 = *MEMORY[0x277D729B8];
        sub_22BC1598C();
        sub_22BB8D220();
        v825 = v435;
        v436 = MEMORY[0x277D84F90];
        v437 = v832;
        do
        {
          sub_22BB3E0E8();
          (v866)();
          v438 = *v371;
          v439 = sub_22BB7031C();
          v440(v439);
          v441 = sub_22BB92810();
          (v867)(v441);
          sub_22BB33FE8(&a13);
          if (v352)
          {
            v442 = sub_22BB92810();
            v846(v442);
            v443 = *v437;
            swift_projectBox();
            v444 = sub_22BB367F8(&a9);
            v445(v444);
            v446 = sub_22BB367F8(v873);
            v447(v446, v148);
            sub_22BB33FE8(&v861);
            if (v352)
            {
              v448 = sub_22BB367F8(&v851);
              v449(v448, v148);
              v450 = v23;
              v23 = *v23;
              v451 = v450[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v459 = *(v436 + 16);
                sub_22BB305BC();
                sub_22BB8C414();
                v436 = v460;
              }

              v453 = *(v436 + 16);
              v452 = *(v436 + 24);
              if (v453 >= v452 >> 1)
              {
                sub_22BB2F158(v452);
                sub_22BB8C414();
                v436 = v461;
              }

              *(v436 + 16) = v453 + 1;
              v454 = v436 + 16 * v453;
              *(v454 + 32) = v23;
              *(v454 + 40) = v451;
              v148 = v865;
              sub_22BB75914();
            }

            else
            {
              v457 = sub_22BB367F8(&v860);
              v458(v457, v148);
            }

            v437 = v832;
          }

          else
          {
            sub_22BB30F88(&a10);
            v455 = sub_22BB92810();
            v456(v455);
          }

          v418 += v849;
          v273 = (v273 - 1);
        }

        while (v273);
      }

      sub_22BB3A91C();
      sub_22BDB45F4();
      sub_22BB73B4C();
      v462 = v813;
    }

    else
    {
      v462 = sub_22BB3A584(v273);
    }

    v463(v462);
  }

  v464 = v872;
  v465 = sub_22BDBA444();
  sub_22BB33404(&v841);
  sub_22BD80E68(v465, v466);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v464, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v467 = v864;
    v468 = sub_22BB36408();
    v469(v468);
    sub_22BB3AA9C();
    if (!v470)
    {
      v496 = sub_22BB30F74();
      v497(v496);
      goto LABEL_116;
    }

    v471 = sub_22BB37600();
    v472(v471);
    sub_22BB3455C();
    sub_22BB38C98();
    v473 = sub_22BB35F34();
    v474(v473);

    v273 = *(sub_22BDBA394() + 16);
    if (v273)
    {
      v371 = v834;
      sub_22BB53CB0();
      v477 = v475 + v476;
      v478 = v467[7];
      v866 = v475;
      v867 = v478;
      v479 = (v833 + 32);
      v480 = MEMORY[0x277D84F90];
      v481 = v835;
      do
      {
        sub_22BB3E0E8();
        v871();
        sub_22BC12118();
        v482 = *(v467 - 1);
        v483 = sub_22BB2F12C();
        v484(v483);
        v485 = sub_22BB36B68();
        sub_22BB31814(v485, v486, v371);
        if (v352)
        {
          sub_22BB58780(v481, &qword_27D8E2D58, &qword_22BDBD3E0);
        }

        else
        {
          v487 = *v479;
          (*v479)(v853, v481, v371);
          v488 = swift_isUniquelyReferenced_nonNull_native();
          if ((v488 & 1) == 0)
          {
            v493 = *(v480 + 16);
            sub_22BB305BC();
            sub_22BD8EF14();
            v480 = v494;
          }

          v490 = *(v480 + 16);
          v489 = *(v480 + 24);
          if (v490 >= v489 >> 1)
          {
            sub_22BB2F158(v489);
            sub_22BD8EF14();
            v480 = v495;
          }

          *(v480 + 16) = v490 + 1;
          sub_22BB371A4(&v863);
          v371 = v834;
          v487(v480 + v491 + *(v492 + 72) * v490, v853, v834);
          v481 = v835;
        }

        v477 += v867;
        v273 = (v273 - 1);
      }

      while (v273);

      v148 = v865;
    }

    else
    {
    }

    sub_22BB3A91C();
    sub_22BDB4694();
    sub_22BB73B4C();
    v498(v814);
  }

  v467 = v864;
LABEL_116:
  v499 = v829;
  v500 = v872;
  v501 = sub_22BDBA444();
  sub_22BB33404(&v842);
  sub_22BD80E68(v501, v502);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v500, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v503 = sub_22BB36408();
    v871 = v504;
    v867 = v505;
    v505(v503);
    sub_22BB3AA9C();
    if (v506)
    {
      v507 = sub_22BB37600();
      v850 = v508;
      v849 = v509;
      v509(v507);
      sub_22BB3455C();
      sub_22BB38C98();
      v510 = sub_22BB35F34();
      v511(v510);

      v273 = *(sub_22BDBA394() + 16);
      if (v273)
      {
        sub_22BB6995C();
        sub_22BB72EE4(v512);
        v853 = v513;
        v371 = (v467 + 2);
        LODWORD(v851) = *MEMORY[0x277D72A58];
        sub_22BB691DC((v467 - 1));
        sub_22BB5866C();
        v846 = v514;
        v515 = *MEMORY[0x277D729B8];
        sub_22BC1598C();
        sub_22BB8D220();
        v842 = v516;
        v517 = MEMORY[0x277D84F90];
        do
        {
          sub_22BB3E0E8();
          (v866)();
          v518 = sub_22BB333F0();
          v519(v518);
          v520 = sub_22BB33410();
          (v867)(v520);
          sub_22BB33FE8(&a16);
          if (v352)
          {
            v521 = sub_22BB33410();
            (v849)(v521);
            sub_22BB7577C();
            sub_22BB30F88(&a12);
            v522(v499);
            sub_22BB30F88(&a11);
            v523(v499, v148);
            sub_22BB33FE8(&a10);
            if (v352)
            {
              sub_22BB30F88(v873);
              v524(v499, v148);
              v526 = *v499;
              v525 = v499[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v532 = *(v517 + 16);
                sub_22BB305BC();
                sub_22BB8C414();
                v517 = v533;
              }

              v527 = *(v517 + 16);
              if (v527 >= *(v517 + 24) >> 1)
              {
                sub_22BB6BC90();
                v517 = v534;
              }

              *(v517 + 16) = v527 + 1;
              v528 = v517 + 16 * v527;
              *(v528 + 32) = v526;
              *(v528 + 40) = v525;
              v148 = v865;
              v499 = v829;
            }

            else
            {
              sub_22BB30F88(&a9);
              v531(v499, v148);
            }
          }

          else
          {
            v529 = sub_22BB367F8(&a13);
            v530(v529, v184);
          }

          v500 += v853;
          v273 = (v273 - 1);
        }

        while (v273);
      }

      sub_22BB3A91C();
      sub_22BDB4644();
      sub_22BB73B4C();
      v537(v815);
      v467 = v864;
    }

    else
    {
      v535 = sub_22BB30F74();
      v536(v535);
    }
  }

  v538 = v872;
  v539 = sub_22BDBA444();
  sub_22BB33404(&v843);
  sub_22BD80E68(v539, v540);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v538, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v541 = sub_22BB36408();
    v871 = v542;
    v867 = v543;
    v543(v541);
    sub_22BB3AA9C();
    if (v544)
    {
      v545 = sub_22BB37600();
      v851 = v546;
      v850 = v547;
      v547(v545);
      sub_22BB3455C();
      sub_22BB38C98();
      v548 = sub_22BB35F34();
      v549(v548);

      v550 = *(sub_22BDBA394() + 16);
      if (v550)
      {
        sub_22BB6995C();
        sub_22BB72EE4(v551);
        v853 = v552;
        v371 = (v467 + 2);
        LODWORD(v852) = *MEMORY[0x277D72A58];
        sub_22BB691DC((v467 - 1));
        sub_22BB5866C();
        v847 = v553;
        v554 = *MEMORY[0x277D729B8];
        sub_22BC1598C();
        sub_22BB8D220();
        v844 = v555;
        v556 = MEMORY[0x277D84F90];
        sub_22BB68EC0();
        do
        {
          sub_22BB3E0E8();
          (v866)();
          v557 = sub_22BB333F0();
          v558(v557);
          v559 = sub_22BB33410();
          (v867)(v559);
          sub_22BB33FE8(&a17);
          if (v352)
          {
            v560 = sub_22BB33410();
            v850(v560);
            sub_22BB7577C();
            v561 = sub_22BB355C8(&a13);
            v562(v561);
            v563 = sub_22BB326B4(&a12);
            v564(v563);
            sub_22BB33FE8(&a11);
            if (v352)
            {
              v565 = sub_22BB326B4(&a9);
              v566(v565);
              v567 = *v273;
              v148 = v273[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v573 = *(v556 + 16);
                sub_22BB305BC();
                sub_22BB8C414();
                v556 = v574;
              }

              sub_22BB95B38();
              if (v568)
              {
                sub_22BB6BC90();
                v556 = v575;
              }

              sub_22BB369EC();
              sub_22BB68EC0();
            }

            else
            {
              v571 = sub_22BB326B4(&a10);
              v572(v571);
            }
          }

          else
          {
            v569 = sub_22BB367F8(&a14);
            v570(v569, v184);
          }

          v538 += v853;
          --v550;
        }

        while (v550);
      }

      sub_22BB3A91C();
      sub_22BDB45D4();
      sub_22BB73B4C();
      v578(v816);
      v467 = v864;
    }

    else
    {
      v576 = sub_22BB30F74();
      v577(v576);
    }
  }

  v579 = v872;
  v580 = sub_22BDBA444();
  sub_22BB33404(&v844);
  sub_22BD80E68(v580, v581);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v579, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v582 = sub_22BB36408();
    v583(v582);
    sub_22BB3AA9C();
    if (v584)
    {
      v585 = sub_22BB37600();
      v586(v585);
      sub_22BB3455C();
      sub_22BB38C98();
      v587 = sub_22BB35F34();
      v588(v587);

      v273 = *(sub_22BDBA394() + 16);
      if (v273)
      {
        sub_22BB53CB0();
        v591 = v589 + v590;
        v592 = v467[7];
        v866 = v589;
        v867 = v592;
        sub_22BB527C0(&v866);
        v593 = MEMORY[0x277D84F90];
        v594 = v837[0];
        do
        {
          v595 = sub_22BB33058();
          v596(v595);
          sub_22BB89CD8();
          sub_22BC12904();
          v597 = *(v467 - 1);
          v598 = sub_22BB2F12C();
          v599(v598);
          v600 = sub_22BB36B68();
          v601 = v868;
          sub_22BB31814(v600, v602, v868);
          if (v352)
          {
            sub_22BB58780(v594, &qword_27D8E2D50, &qword_22BDBD3D8);
          }

          else
          {
            v603 = *v371;
            (*v371)(v857, v594, v601);
            v604 = swift_isUniquelyReferenced_nonNull_native();
            if ((v604 & 1) == 0)
            {
              v608 = *(v593 + 16);
              sub_22BB305BC();
              sub_22BD8EE4C();
              v593 = v609;
            }

            sub_22BB34FC4();
            if (v568)
            {
              sub_22BB2F138(v605);
              sub_22BD8EE4C();
              v593 = v610;
            }

            *(v593 + 16) = v601;
            sub_22BB371A4(&v866);
            v607 = sub_22BB8AC08(v606);
            v603(v607, v857, v868);
            v594 = v837[0];
          }

          v591 += v867;
          v273 = (v273 - 1);
        }

        while (v273);

        v467 = v864;
        v148 = v865;
      }

      else
      {
      }

      sub_22BB3A91C();
      sub_22BDB4654();
      sub_22BB73B4C();
      v611 = v817;
    }

    else
    {
      v611 = sub_22BB30F74();
    }

    v612(v611);
  }

  v613 = v872;
  v614 = sub_22BDBA444();
  sub_22BB33404(&v845);
  sub_22BD80E68(v614, v615);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v613, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v616 = sub_22BB36408();
    v871 = v617;
    v868 = v618;
    v618(v616);
    sub_22BB3AA9C();
    if (v619)
    {
      v620 = sub_22BB37600();
      v854 = v622;
      v855 = v621;
      (v622)(v620);
      sub_22BB3455C();
      sub_22BB38C98();
      v623 = sub_22BB35F34();
      v624(v623);

      v625 = *(sub_22BDBA394() + 16);
      if (v625)
      {
        v867 = v467[2];
        sub_22BB58944();
        sub_22BB72EE4(v626);
        v866 = v627;
        v371 = (v467 + 4);
        LODWORD(v857) = *MEMORY[0x277D72A58];
        sub_22BB691DC((v467 + 1));
        sub_22BB5866C();
        v851 = v628;
        v629 = *MEMORY[0x277D729B8];
        sub_22BC1598C();
        sub_22BB8D220();
        v848 = v630;
        v631 = MEMORY[0x277D84F90];
        sub_22BB3FBA8();
        do
        {
          sub_22BB3E0E8();
          (v867)();
          v632 = sub_22BB333F0();
          v633(v632);
          v634 = sub_22BB33410();
          v635 = (v868)(v634);
          if (v635 == v857)
          {
            v636 = sub_22BB33410();
            (v854)(v636);
            sub_22BB7577C();
            v637 = sub_22BB355C8(&a17);
            v638(v637);
            v639 = sub_22BB326B4(&a16);
            v640(v639);
            sub_22BB33FE8(&a15);
            if (v352)
            {
              v641 = sub_22BB326B4(&a13);
              v642(v641);
              v643 = *v273;
              v148 = v273[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v648 = *(v631 + 16);
                sub_22BB305BC();
                sub_22BB8C414();
                v631 = v649;
              }

              sub_22BB95B38();
              if (v568)
              {
                sub_22BB6BC90();
                v631 = v650;
              }

              sub_22BB369EC();
              sub_22BB3FBA8();
            }

            else
            {
              v646 = sub_22BB326B4(&a14);
              v647(v646);
            }
          }

          else
          {
            v644 = sub_22BB367F8(&a18);
            v645(v644, v184);
          }

          v613 += v866;
          --v625;
        }

        while (v625);
      }

      sub_22BB3A91C();
      sub_22BDB4674();
      sub_22BB73B4C();
      v653(v818);
      v467 = v864;
    }

    else
    {
      v651 = sub_22BB30F74();
      v652(v651);
    }
  }

  v654 = v872;
  v655 = sub_22BDBA444();
  sub_22BB33404(&v846);
  sub_22BD80E68(v655, v656);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v654, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v657 = sub_22BB36408();
    v871 = v658;
    v868 = v659;
    v659(v657);
    sub_22BB3AA9C();
    if (v660)
    {
      v661 = sub_22BB37600();
      v855 = v663;
      v856 = v662;
      v663(v661);
      sub_22BB3455C();
      sub_22BB38C98();
      v664 = sub_22BB35F34();
      v665(v664);

      v666 = *(sub_22BDBA394() + 16);
      if (v666)
      {
        v867 = v467[2];
        sub_22BB58944();
        sub_22BB72EE4(v667);
        v866 = v668;
        v371 = (v467 + 4);
        LODWORD(v857) = *MEMORY[0x277D72A58];
        v854 = v467 + 1;
        sub_22BB5866C();
        v852 = v669;
        v670 = *MEMORY[0x277D729B8];
        sub_22BC1598C();
        sub_22BB8D220();
        v849 = v671;
        v672 = MEMORY[0x277D84F90];
        sub_22BB72DFC();
        do
        {
          sub_22BB3E0E8();
          (v867)();
          v673 = sub_22BB333F0();
          v674(v673);
          v675 = sub_22BB33410();
          v676 = (v868)(v675);
          if (v676 == v857)
          {
            v677 = sub_22BB33410();
            v855(v677);
            sub_22BB7577C();
            v678 = sub_22BB355C8(&a18);
            v679(v678);
            v680 = sub_22BB326B4(&a17);
            v681(v680);
            sub_22BB33FE8(&a16);
            if (v352)
            {
              v682 = sub_22BB326B4(&a14);
              v683(v682);
              v684 = *v273;
              v148 = v273[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v690 = *(v672 + 16);
                sub_22BB305BC();
                sub_22BB8C414();
                v672 = v691;
              }

              sub_22BB95B38();
              if (v568)
              {
                sub_22BB6BC90();
                v672 = v692;
              }

              sub_22BB369EC();
              sub_22BB72DFC();
            }

            else
            {
              v688 = sub_22BB326B4(&a15);
              v689(v688);
            }
          }

          else
          {
            v685 = *v854;
            v686 = sub_22BB33410();
            v687(v686);
          }

          v654 += v866;
          --v666;
        }

        while (v666);
      }

      sub_22BB3A91C();
      sub_22BDB4684();
      sub_22BB73B4C();
      v695(v819);
      v467 = v864;
    }

    else
    {
      v693 = sub_22BB30F74();
      v694(v693);
    }
  }

  v696 = v872;
  v697 = sub_22BDBA444();
  sub_22BB33404(&v847);
  sub_22BD80E68(v697, v698);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v696, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v699 = sub_22BB36408();
    v700(v699);
    sub_22BB3AA9C();
    if (v701)
    {
      v702 = sub_22BB37600();
      v703(v702);
      sub_22BB3455C();
      sub_22BB38C98();
      v704 = sub_22BB35F34();
      v705(v704);

      v706 = *(sub_22BDBA394() + 16);
      if (v706)
      {
        sub_22BB53CB0();
        v709 = v707 + v708;
        v710 = v467[7];
        v867 = v707;
        v868 = v710;
        sub_22BB527C0(&v868);
        v711 = MEMORY[0x277D84F90];
        v712 = v838;
        do
        {
          v713 = sub_22BB33058();
          v714(v713);
          v715 = sub_22BB89CD8();
          sub_22BC11470(v715, v716);
          v717 = *(v467 - 1);
          v718 = sub_22BB2F12C();
          v719(v718);
          v720 = sub_22BB36B68();
          v721 = v869;
          sub_22BB31814(v720, v722, v869);
          if (v352)
          {
            sub_22BB58780(v712, &qword_27D8E2D48, &qword_22BDBD3D0);
          }

          else
          {
            v723 = *v371;
            (*v371)(v860, v712, v721);
            v724 = swift_isUniquelyReferenced_nonNull_native();
            if ((v724 & 1) == 0)
            {
              v728 = *(v711 + 16);
              sub_22BB305BC();
              sub_22BD8ED84();
              v711 = v729;
            }

            sub_22BB34FC4();
            if (v568)
            {
              sub_22BB2F138(v725);
              sub_22BD8ED84();
              v711 = v730;
            }

            *(v711 + 16) = v721;
            sub_22BB371A4(&v868);
            v727 = sub_22BB8AC08(v726);
            v723(v727, v860, v869);
            v712 = v838;
          }

          v709 += v868;
          --v706;
        }

        while (v706);

        v467 = v864;
        v148 = v865;
      }

      else
      {
      }

      sub_22BB3A91C();
      sub_22BDB45C4();
      sub_22BB73B4C();
      v731 = v820;
    }

    else
    {
      v731 = sub_22BB30F74();
    }

    v732(v731);
  }

  v733 = v872;
  v734 = sub_22BDBA444();
  sub_22BB33404(&v848);
  sub_22BD80E68(v734, v735);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v733, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v736 = sub_22BB36408();
    v737(v736);
    sub_22BB3AA9C();
    if (v738)
    {
      v739 = sub_22BB37600();
      v740(v739);
      sub_22BB3455C();
      sub_22BB38C98();
      v741 = sub_22BB35F34();
      v742(v741);

      v743 = *(sub_22BDBA394() + 16);
      if (v743)
      {
        sub_22BB53CB0();
        v746 = v744 + v745;
        v747 = v467[7];
        v868 = v744;
        v869 = v747;
        sub_22BB527C0(&v870);
        v748 = MEMORY[0x277D84F90];
        v749 = v840;
        do
        {
          v750 = sub_22BB33058();
          v751(v750);
          v752 = sub_22BB89CD8();
          sub_22BC118A8(v752, v753);
          v754 = *(v467 - 1);
          v755 = sub_22BB2F12C();
          v756(v755);
          v757 = sub_22BB36B68();
          v758 = v870;
          sub_22BB31814(v757, v759, v870);
          if (v352)
          {
            sub_22BB58780(v749, &qword_27D8E2D40, &qword_22BDBD3C8);
          }

          else
          {
            v760 = *v371;
            (*v371)(v861, v749, v758);
            v761 = swift_isUniquelyReferenced_nonNull_native();
            if ((v761 & 1) == 0)
            {
              v765 = *(v748 + 16);
              sub_22BB305BC();
              sub_22BD8ECBC();
              v748 = v766;
            }

            sub_22BB34FC4();
            if (v568)
            {
              sub_22BB2F138(v762);
              sub_22BD8ECBC();
              v748 = v767;
            }

            *(v748 + 16) = v758;
            sub_22BB371A4(&v870);
            v764 = sub_22BB8AC08(v763);
            v760(v764, v861, v870);
            v749 = v840;
          }

          v746 += v869;
          --v743;
        }

        while (v743);

        v467 = v864;
        v148 = v865;
      }

      else
      {
      }

      sub_22BB3A91C();
      sub_22BDB4604();
      (*(v862 + 8))(v821, v863);
    }

    else
    {
      v768 = sub_22BB30F74();
      v769(v768);
    }
  }

  v770 = v872;
  v771 = sub_22BDBA444();
  sub_22BB33404(&v849);
  sub_22BD80E68(v771, v772);

  sub_22BB30584();
  if (v352)
  {
    sub_22BB58780(v770, &qword_27D8E2668, &unk_22BDBCCD0);
  }

  else
  {
    v773 = sub_22BB36408();
    v775 = v774(v773);
    if (v775 == *MEMORY[0x277D72A58])
    {
      v776 = v467[12];
      v777 = sub_22BB3A19C();
      v778(v777);
      sub_22BB3455C();
      sub_22BB3B2D0(v859);
      v779 = v807;
      v780(v807);
      sub_22BB314E0();
      if (v781(v779, v148) == *MEMORY[0x277D72970])
      {
        (*(v770 + 96))(v779, v148);
        v782 = v797;
        v783 = *(v797 + 32);
        v784 = sub_22BB39478();
        v785(v784);

        sub_22BDBA4C4();
        sub_22BB3E368(&v823);
        sub_22BDB40F4();
        sub_22BDB40E4();
        sub_22BB331C8();
        sub_22BB336D0(v786, v787, v788, v789);
        sub_22BB3A91C();
        sub_22BDB4634();
        v790 = *(v782 + 8);
        v791 = sub_22BB39478();
        v792(v791);
      }

      else
      {
        (*(v770 + 8))(v779, v148);
      }
    }

    else
    {
      v793 = v467[1];
      v794 = sub_22BB3A19C();
      v795(v794);
    }
  }

  sub_22BB314EC();
}