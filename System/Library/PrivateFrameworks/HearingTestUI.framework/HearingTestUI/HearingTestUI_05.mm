uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20CDEBEC8()
{
  result = qword_27C813590;
  if (!qword_27C813590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C813590);
  }

  return result;
}

void sub_20CDEBF14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CDEBF68(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_20CDEBF14(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_20CDEC044()
{
  type metadata accessor for ClassificationHighlightView.Model(319);
  if (v0 <= 0x3F)
  {
    sub_20CDED9DC(319, &qword_27C812408, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_20CDEC120()
{
  sub_20CE12334();
  if (v0 <= 0x3F)
  {
    sub_20CDEE47C(319, &qword_27C813300, &type metadata for ClassificationHighlightView.Model.Action, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_20CDEC1D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_20CDEC220(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CDEC28C@<X0>(uint64_t a1@<X8>)
{
  v35[3] = a1;
  sub_20CDED9A8(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v35 - v7;
  sub_20CDEDF94();
  v35[2] = v9;
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDEDD04(0, &qword_27C813398, sub_20CDEE10C, sub_20CDEDF94, MEMORY[0x277CE0330]);
  v35[0] = v13;
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - v15;
  sub_20CDEE10C();
  v35[1] = v17;
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20CE12FA4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v35 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v1 + *(type metadata accessor for ClassificationHighlightView(0) + 20);
  sub_20CDB148C(v25);
  LOBYTE(v26) = sub_20CD9B320();
  (*(v22 + 8))(v25, v21);
  if (v26)
  {
    *v20 = sub_20CE131C4();
    *(v20 + 1) = 0x402C000000000000;
    v20[16] = 0;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CDEE410(0, &qword_27C8133C8, sub_20CDED9A8);
    sub_20CDEC8A8(&v20[*(v27 + 44)]);

    sub_20CDEE4CC(v20, v16, sub_20CDEE10C);
    swift_storeEnumTagMultiPayload();
    sub_20CDEE0C4(&qword_27C8133B8, sub_20CDEE10C);
    sub_20CDEE0C4(&qword_27C8133C0, sub_20CDEDF94);
    sub_20CE13214();
    v28 = sub_20CDEE10C;
    v29 = v20;
  }

  else
  {
    *v12 = sub_20CE13114();
    *(v12 + 1) = 0x4010000000000000;
    v12[16] = 0;
    sub_20CE13B84();
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_20CDEE410(0, &qword_27C8133B0, sub_20CDEE028);
    v31 = &v12[*(v30 + 44)];
    sub_20CDEC8A8(v8);
    sub_20CDEE4CC(v8, v6, sub_20CDED9A8);
    sub_20CDEE4CC(v6, v31, sub_20CDED9A8);
    sub_20CDEE05C();
    v33 = v31 + *(v32 + 48);
    *v33 = 0;
    *(v33 + 8) = 1;
    sub_20CDEE1A0(v8, sub_20CDED9A8);
    sub_20CDEE1A0(v6, sub_20CDED9A8);

    sub_20CDEE4CC(v12, v16, sub_20CDEDF94);
    swift_storeEnumTagMultiPayload();
    sub_20CDEE0C4(&qword_27C8133B8, sub_20CDEE10C);
    sub_20CDEE0C4(&qword_27C8133C0, sub_20CDEDF94);
    sub_20CE13214();
    v28 = sub_20CDEDF94;
    v29 = v12;
  }

  return sub_20CDEE1A0(v29, v28);
}

uint64_t sub_20CDEC8A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  sub_20CDEDD88();
  v36[1] = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDEDCBC(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v36 - v12;
  sub_20CDEDAB0(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v36 - v19;
  v21 = *v1;
  v22 = *(v2 + 8);

  v23 = sub_20CE13544();
  v24 = sub_20CE132B4();
  KeyPath = swift_getKeyPath();
  sub_20CE135F4();
  sub_20CE12F04();
  v26 = sub_20CE134C4();
  v27 = swift_getKeyPath();
  *&v38 = v23;
  *(&v38 + 1) = KeyPath;
  *&v39 = v24;
  *(&v42 + 1) = v27;
  v43 = v26;
  sub_20CDEDAF8();
  sub_20CDEE200();
  sub_20CE13484();
  v44[3] = v41;
  v44[4] = v42;
  v45 = v43;
  v44[0] = v38;
  v44[1] = v39;
  v44[2] = v40;
  sub_20CDEE1A0(v44, sub_20CDEDAF8);
  *v6 = sub_20CE131C4();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_20CDEE410(0, &qword_27C8133E8, sub_20CDEDE1C);
  sub_20CDECDCC(v2, &v6[*(v28 + 44)]);
  if (qword_27C811D30 != -1)
  {
    swift_once();
  }

  v30 = qword_27C817868;
  v29 = unk_27C817870;
  v31 = MEMORY[0x277D837D0];
  sub_20CDEE47C(0, &unk_27C813730, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20CE16360;
  *(v32 + 32) = v30;
  *(v32 + 40) = v29;
  *(v32 + 48) = 0xD000000000000021;
  *(v32 + 56) = 0x800000020CE1FC20;
  *&v38 = v32;
  sub_20CDEE47C(0, &qword_27C8121F0, v31, MEMORY[0x277D83940]);
  sub_20CD81F60();

  sub_20CE138C4();

  sub_20CDEE0C4(&qword_27C8133F0, sub_20CDEDD88);
  sub_20CE134A4();

  sub_20CDEE1A0(v6, sub_20CDEDD88);
  sub_20CDEE4CC(v20, v18, sub_20CDEDAB0);
  sub_20CDEE4CC(v13, v11, sub_20CDEDCBC);
  v33 = v37;
  sub_20CDEE4CC(v18, v37, sub_20CDEDAB0);
  sub_20CDEDA40();
  sub_20CDEE4CC(v11, v33 + *(v34 + 48), sub_20CDEDCBC);
  sub_20CDEE1A0(v13, sub_20CDEDCBC);
  sub_20CDEE1A0(v20, sub_20CDEDAB0);
  sub_20CDEE1A0(v11, sub_20CDEDCBC);
  return sub_20CDEE1A0(v18, sub_20CDEDAB0);
}

uint64_t sub_20CDECDCC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v120 = a2;
  sub_20CDEDEF8(0);
  v118 = v3;
  v116 = *(v3 - 8);
  v4 = *(v116 + 64);
  MEMORY[0x28223BE20](v3);
  v97 = (&v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CDB0CC8();
  v96 = v6;
  v95 = *(v6 - 8);
  v7 = *(v95 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v94 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = &v92 - v10;
  sub_20CDEDEC4(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v119 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v117 = &v92 - v15;
  v115 = sub_20CE12334();
  v110 = *(v115 - 8);
  v16 = *(v110 + 64);
  MEMORY[0x28223BE20](v115);
  v109 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20CE12FA4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_20CE13354();
  v123 = *(v111 - 8);
  v23 = *(v123 + 64);
  v24 = MEMORY[0x28223BE20](v111);
  v108 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v92 - v26;
  sub_20CE13B84();
  v114 = sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *(a1 + 24);
  v124 = *(a1 + 16);
  v125 = v28;
  sub_20CD935CC();

  v29 = sub_20CE13414();
  v107 = v30;
  v32 = v31;
  v99 = v33;
  sub_20CE132C4();
  sub_20CE132E4();
  v121 = a1;

  v106 = *(type metadata accessor for ClassificationHighlightView(0) + 20);
  sub_20CDB148C(v22);
  LOBYTE(v28) = sub_20CD9B320();
  v34 = *(v19 + 8);
  v104 = v19 + 8;
  v105 = v34;
  v34(v22, v18);
  v35 = v123;
  v36 = *(v123 + 104);
  v102 = v36;
  v37 = *MEMORY[0x277CE0A10];
  v101 = *MEMORY[0x277CE0A10];
  v100 = v18;
  v38 = *MEMORY[0x277CE0A18];
  v103 = *MEMORY[0x277CE0A18];
  if (v28)
  {
    v39 = v37;
  }

  else
  {
    v39 = v38;
  }

  v40 = v111;
  v36(v27, v39, v111);
  sub_20CE13374();

  v98 = *(v35 + 8);
  v98(v27, v40);
  v41 = v107;
  v113 = sub_20CE133E4();
  v122 = v42;
  v123 = v43;
  v112 = v44;

  sub_20CD93620(v29, v41, v32 & 1);

  v107 = type metadata accessor for ClassificationHighlightView.Model(0);
  (*(v110 + 16))(v109, v121 + *(v107 + 24), v115);
  v45 = sub_20CE13404();
  v47 = v46;
  v49 = v48;
  sub_20CE132C4();
  sub_20CDB148C(v22);
  v50 = sub_20CD9B320();
  v105(v22, v100);
  if (v50)
  {
    v51 = v101;
  }

  else
  {
    v51 = v103;
  }

  v52 = v108;
  v102(v108, v51, v40);
  sub_20CE13374();

  v98(v52, v40);
  v53 = sub_20CE133E4();
  v55 = v54;
  v57 = v56;

  sub_20CD93620(v45, v47, v49 & 1);

  sub_20CE13514();
  v58 = sub_20CE133B4();
  v110 = v59;
  v111 = v58;
  v61 = v60;
  v115 = v62;

  sub_20CD93620(v53, v55, v57 & 1);

  v63 = (v121 + *(v107 + 28));
  v64 = v63[1];
  if (v64)
  {
    v65 = v63[2];
    v66 = v63[3];
    v67 = *v63;
    v68 = swift_allocObject();
    v68[2] = v67;
    v68[3] = v64;
    v68[4] = v65;
    v68[5] = v66;
    MEMORY[0x28223BE20](v68);
    *(&v92 - 4) = v67;
    *(&v92 - 3) = v64;
    *(&v92 - 2) = v65;
    *(&v92 - 1) = v66;
    sub_20CDEE54C(v67, v64);
    sub_20CDB0C08();
    sub_20CDB0D2C();

    v69 = v93;
    sub_20CE13554();
    LOBYTE(v124) = 0;
    v70 = v95;
    v71 = *(v95 + 16);
    v72 = v61;
    v73 = v94;
    v74 = v96;
    v71(v94, v69, v96);
    v75 = v124;
    v76 = v97;
    *v97 = 0x4010000000000000;
    *(v76 + 8) = v75;
    sub_20CDEDF2C();
    v71((v76 + *(v77 + 48)), v73, v74);

    v78 = *(v70 + 8);
    v78(v69, v74);
    v79 = v73;
    v61 = v72;
    v78(v79, v74);
    v80 = v117;
    sub_20CDEE590(v76, v117);
    (*(v116 + 56))(v80, 0, 1, v118);
  }

  else
  {
    v80 = v117;
    (*(v116 + 56))(v117, 1, 1, v118);
  }

  v81 = v112 & 1;
  LOBYTE(v124) = v112 & 1;
  v82 = v119;
  sub_20CDEE4CC(v80, v119, sub_20CDEDEC4);
  v83 = v120;
  v84 = v113;
  v86 = v122;
  v85 = v123;
  *v120 = v113;
  v83[1] = v86;
  *(v83 + 16) = v81;
  v83[3] = v85;
  *(v83 + 16) = 256;
  v88 = v110;
  v87 = v111;
  v83[5] = v111;
  v83[6] = v88;
  *(v83 + 56) = v61 & 1;
  v83[8] = v115;
  *(v83 + 36) = 256;
  sub_20CDEDE50();
  sub_20CDEE4CC(v82, v83 + *(v89 + 64), sub_20CDEDEC4);
  v90 = v122;
  sub_20CD93B54(v84, v122, v81);

  sub_20CD93B54(v87, v88, v61 & 1);

  sub_20CDEE1A0(v80, sub_20CDEDEC4);
  sub_20CDEE1A0(v82, sub_20CDEDEC4);
  sub_20CD93620(v87, v88, v61 & 1);

  sub_20CD93620(v84, v90, v124);
}

uint64_t sub_20CDED804(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a3(isCurrentExecutor);
}

uint64_t sub_20CDED8B4@<X0>(uint64_t a1@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CD935CC();

  v2 = sub_20CE13414();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = 256;
  return result;
}

void sub_20CDED9DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_20CDEDA40()
{
  if (!qword_27C813310)
  {
    sub_20CDEDAB0(255);
    sub_20CDEDCBC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813310);
    }
  }
}

void sub_20CDEDAF8()
{
  if (!qword_27C813320)
  {
    sub_20CDEDB78();
    sub_20CDEDC50(255, &qword_27C812FE0, &qword_27C812FE8, MEMORY[0x277CE0F78]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813320);
    }
  }
}

void sub_20CDEDB78()
{
  if (!qword_27C813328)
  {
    sub_20CDEDBD8();
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813328);
    }
  }
}

void sub_20CDEDBD8()
{
  if (!qword_27C813330)
  {
    sub_20CDEDC50(255, &qword_27C812FF8, &qword_27C813000, MEMORY[0x277CE0AE0]);
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813330);
    }
  }
}

void sub_20CDEDC50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_20CDEE47C(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_20CE13254();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CDEDD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_20CDEDD88()
{
  if (!qword_27C813340)
  {
    sub_20CDEDE1C(255);
    sub_20CDEE0C4(&qword_27C813370, sub_20CDEDE1C);
    v0 = sub_20CE13584();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813340);
    }
  }
}

void sub_20CDEDE50()
{
  if (!qword_27C813350)
  {
    sub_20CDB0C08();
    sub_20CDEDEC4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27C813350);
    }
  }
}

void sub_20CDEDF2C()
{
  if (!qword_27C813368)
  {
    sub_20CDB0CC8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813368);
    }
  }
}

void sub_20CDEDF94()
{
  if (!qword_27C813378)
  {
    sub_20CDEE028(255);
    sub_20CDEE0C4(&qword_27C813390, sub_20CDEE028);
    v0 = sub_20CE13574();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813378);
    }
  }
}

void sub_20CDEE05C()
{
  if (!qword_27C813388)
  {
    sub_20CDED9A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813388);
    }
  }
}

uint64_t sub_20CDEE0C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CDEE10C()
{
  if (!qword_27C8133A0)
  {
    sub_20CDED9A8(255);
    sub_20CDEE0C4(&qword_27C8133A8, sub_20CDED9A8);
    v0 = sub_20CE13584();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8133A0);
    }
  }
}

uint64_t sub_20CDEE1A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_20CDEE200()
{
  result = qword_27C8133D0;
  if (!qword_27C8133D0)
  {
    sub_20CDEDAF8();
    sub_20CDEE2A0();
    sub_20CDEE3C0(&qword_27C813028, &qword_27C812FE0, &qword_27C812FE8, MEMORY[0x277CE0F78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8133D0);
  }

  return result;
}

unint64_t sub_20CDEE2A0()
{
  result = qword_27C8133D8;
  if (!qword_27C8133D8)
  {
    sub_20CDEDB78();
    sub_20CDEE320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8133D8);
  }

  return result;
}

unint64_t sub_20CDEE320()
{
  result = qword_27C8133E0;
  if (!qword_27C8133E0)
  {
    sub_20CDEDBD8();
    sub_20CDEE3C0(&qword_27C813030, &qword_27C812FF8, &qword_27C813000, MEMORY[0x277CE0AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8133E0);
  }

  return result;
}

uint64_t sub_20CDEE3C0(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_20CDEDC50(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CDEE410(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE12F54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_20CDEE47C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_20CDEE4CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CDEE540@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_20CDED8B4(a1);
}

uint64_t sub_20CDEE54C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_20CDEE590(uint64_t a1, uint64_t a2)
{
  sub_20CDEDEF8(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CDEE5F4()
{
  result = qword_27C8133F8;
  if (!qword_27C8133F8)
  {
    sub_20CDEDD04(255, &qword_27C813400, sub_20CDEE10C, sub_20CDEDF94, MEMORY[0x277CE0338]);
    sub_20CDEE0C4(&qword_27C8133B8, sub_20CDEE10C);
    sub_20CDEE0C4(&qword_27C8133C0, sub_20CDEDF94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8133F8);
  }

  return result;
}

uint64_t sub_20CDEE718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v4 = sub_20CE12354();
  v6 = v5;
  sub_20CE12354();
  v7 = sub_20CE12354();
  v9 = v8;
  *a3 = 0xD000000000000013;
  a3[1] = 0x800000020CE1FCD0;
  a3[2] = v4;
  a3[3] = v6;
  v10 = type metadata accessor for ClassificationHighlightView.Model(0);
  v11 = *(v10 + 24);

  result = sub_20CE122D4();
  v13 = (a3 + *(v10 + 28));
  *v13 = v7;
  v13[1] = v9;
  v13[2] = a1;
  v13[3] = a2;
  return result;
}

uint64_t sub_20CDEE8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12354();
  v7 = v6;
  sub_20CE12354();
  v8 = sub_20CE12354();
  v10 = v9;
  strcpy(a3, "ear.badge.info");
  *(a3 + 15) = -18;
  *(a3 + 16) = v5;
  *(a3 + 24) = v7;
  v11 = type metadata accessor for ClassificationHighlightView.Model(0);
  v12 = *(v11 + 24);

  result = sub_20CE122D4();
  v14 = (a3 + *(v11 + 28));
  *v14 = v8;
  v14[1] = v10;
  v14[2] = a1;
  v14[3] = a2;
  return result;
}

double sub_20CDEEA94()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C817968);
  v1 = __swift_project_value_buffer(v0, qword_27C817968);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v4 = v3;
  sub_20CE12354();
  *v1 = 0x2E73646F70726961;
  v1[1] = 0xEB000000006F7270;
  v1[2] = v2;
  v1[3] = v4;
  v5 = v1 + *(v0 + 24);
  sub_20CE122D4();
  v6 = (v1 + *(v0 + 28));
  result = 0.0;
  *v6 = 0u;
  v6[1] = 0u;
  return result;
}

double sub_20CDEEC00()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C817980);
  v1 = __swift_project_value_buffer(v0, qword_27C817980);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v4 = v3;
  sub_20CE12354();
  *v1 = 0x6D726F6665766177;
  v1[1] = 0xE800000000000000;
  v1[2] = v2;
  v1[3] = v4;
  v5 = v1 + *(v0 + 24);
  sub_20CE122D4();
  v6 = (v1 + *(v0 + 28));
  result = 0.0;
  *v6 = 0u;
  v6[1] = 0u;
  return result;
}

double sub_20CDEED64()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C817998);
  v1 = __swift_project_value_buffer(v0, qword_27C817998);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v4 = v3;
  sub_20CE12354();
  *v1 = 0xD000000000000011;
  v1[1] = 0x800000020CE1FE20;
  v1[2] = v2;
  v1[3] = v4;
  v5 = v1 + *(v0 + 24);
  sub_20CE122D4();
  v6 = (v1 + *(v0 + 28));
  result = 0.0;
  *v6 = 0u;
  v6[1] = 0u;
  return result;
}

double sub_20CDEEED0()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C8179B0);
  v1 = __swift_project_value_buffer(v0, qword_27C8179B0);
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v2 = sub_20CE12354();
  v4 = v3;
  sub_20CE12354();
  strcpy(v1, "person.bubble");
  *(v1 + 14) = -4864;
  *(v1 + 16) = v2;
  *(v1 + 24) = v4;
  v5 = v1 + *(v0 + 24);
  sub_20CE122D4();
  v6 = (v1 + *(v0 + 28));
  result = 0.0;
  *v6 = 0u;
  v6[1] = 0u;
  return result;
}

double sub_20CDEF040()
{
  v0 = type metadata accessor for ClassificationHighlightView.Model(0);
  __swift_allocate_value_buffer(v0, qword_27C8179C8);
  v1 = __swift_project_value_buffer(v0, qword_27C8179C8);
  return sub_20CDEF08C(v1);
}

double sub_20CDEF08C@<D0>(char *a1@<X8>)
{
  v61 = a1;
  v1 = sub_20CE12374();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v51[1] = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CE12334();
  v62 = *(v4 - 8);
  v63 = v4;
  v5 = *(v62 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20CE122E4();
  v55 = *(v7 - 8);
  v56 = v7;
  v8 = *(v55 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_20CE122F4();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v52);
  v53 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20CE12314();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  sub_20CDEF894(0, &qword_27C812600, MEMORY[0x277CC9260]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v51 - v17;
  sub_20CDEF894(0, &qword_27C813408, MEMORY[0x277CC8C40]);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v59 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v51 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v51 - v26;
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  v28 = sub_20CE12354();
  v57 = v29;
  v58 = v28;
  v30 = sub_20CE12354();
  v32 = v31;
  v33 = sub_20CE12474();
  (*(*(v33 - 8) + 56))(v18, 1, 1, v33);
  (*(v10 + 104))(v53, *MEMORY[0x277CC8BB0], v52);
  (*(v55 + 104))(v54, *MEMORY[0x277CC8B98], v56);

  sub_20CE12304();
  v56 = v30;
  sub_20CE12324();
  v35 = v62;
  v34 = v63;
  (*(v62 + 56))(v27, 0, 1, v63);
  sub_20CDEF8E8(v27, v25);
  v36 = *(v35 + 48);
  if (v36(v25, 1, v34) == 1)
  {
    sub_20CDEF968(v25);
    if (qword_27C811D28 != -1)
    {
      swift_once();
    }

    v37 = sub_20CE12CB4();
    __swift_project_value_buffer(v37, qword_27C8177E0);

    v38 = sub_20CE12C94();
    v39 = sub_20CE13CC4();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v64[0] = v41;
      *v40 = 136446722;
      *(v40 + 4) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, v64);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_20CD96DCC(0x6C65646F4DLL, 0xE500000000000000, v64);
      *(v40 + 22) = 2080;
      v35 = v62;
      v42 = sub_20CD96DCC(v56, v32, v64);

      *(v40 + 24) = v42;
      v34 = v63;
      _os_log_impl(&dword_20CD70000, v38, v39, "[%{public}s] %s Could not construct AttributedString from %s.", v40, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v41, -1, -1);
      MEMORY[0x20F314110](v40, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    sub_20CDEF968(v25);
  }

  v43 = v59;
  sub_20CDEF8E8(v27, v59);
  v44 = v36(v43, 1, v34);
  v45 = v60;
  if (v44 == 1)
  {
    sub_20CE12364();
    sub_20CE12344();
    sub_20CDEF968(v27);
    if (v36(v43, 1, v34) != 1)
    {
      sub_20CDEF968(v43);
    }
  }

  else
  {
    sub_20CDEF968(v27);
    (*(v35 + 32))(v45, v43, v34);
  }

  v46 = v61;
  *v61 = 0xD000000000000015;
  *(v46 + 1) = 0x800000020CE1FF20;
  v47 = v57;
  *(v46 + 2) = v58;
  *(v46 + 3) = v47;
  v48 = type metadata accessor for ClassificationHighlightView.Model(0);
  (*(v35 + 32))(&v46[*(v48 + 24)], v45, v34);
  v49 = &v46[*(v48 + 28)];
  result = 0.0;
  *v49 = 0u;
  *(v49 + 1) = 0u;
  return result;
}

void sub_20CDEF894(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CDEF8E8(uint64_t a1, uint64_t a2)
{
  sub_20CDEF894(0, &qword_27C813408, MEMORY[0x277CC8C40]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDEF968(uint64_t a1)
{
  sub_20CDEF894(0, &qword_27C813408, MEMORY[0x277CC8C40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20CDEF9E0()
{
  v1 = v0;
  v2 = sub_20CE129C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PreTestError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDCB46C(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v3 + 32))(v6, v10, v2);
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_20CE140E4();

      strcpy(v19, "deviceFault - ");
      HIBYTE(v19[1]) = -18;
      v14 = HTFaultStatusWithReason.debugDescription.getter();
      MEMORY[0x20F312EF0](v14);

      v15 = v19[0];
      (*(v3 + 8))(v6, v2);
      return v15;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v17 = *v10;
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_20CE140E4();

      v19[0] = 0xD000000000000011;
      v19[1] = 0x800000020CE20000;
      v18 = sub_20CDA3584(v17);
      MEMORY[0x20F312EF0](v18);
    }

    else
    {
      v12 = *v10;
      v13 = *(v10 + 1);
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_20CE140E4();

      v19[0] = 0xD000000000000015;
      v19[1] = 0x800000020CE20020;
      MEMORY[0x20F312EF0](v12, v13);
    }

    return v19[0];
  }
}

uint64_t type metadata accessor for PreTestError()
{
  result = qword_27C813410;
  if (!qword_27C813410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDEFD10()
{
  result = sub_20CDEFD8C();
  if (v1 <= 0x3F)
  {
    result = sub_20CE129C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20CDEFD8C()
{
  result = qword_27C813420;
  if (!qword_27C813420)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27C813420);
  }

  return result;
}

uint64_t sub_20CDEFDC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
LABEL_3:
      v5 = qword_27C811D08;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_20CE12CB4();
      __swift_project_value_buffer(v6, qword_27C817780);

      v7 = sub_20CE12C94();
      v8 = sub_20CE13CD4();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v24 = v10;
        *v9 = 136446722;
        *(v9 + 4) = sub_20CD96DCC(0xD00000000000001DLL, 0x800000020CE20060, &v24);
        *(v9 + 12) = 2080;
        *(v9 + 14) = sub_20CD96DCC(0xD000000000000057, 0x800000020CE200C0, &v24);
        *(v9 + 22) = 2080;
        *(v9 + 24) = sub_20CD96DCC(a3, a4, &v24);
        _os_log_impl(&dword_20CD70000, v7, v8, "[%{public}s] %s Received device address: %s.", v9, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v10, -1, -1);
        MEMORY[0x20F314110](v9, -1, -1);
      }

      goto LABEL_7;
    }
  }

  else
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v11 = sub_20CE12CB4();
    __swift_project_value_buffer(v11, qword_27C817780);
    v12 = sub_20CE12C94();
    v13 = sub_20CE13CB4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_20CD96DCC(0xD00000000000001DLL, 0x800000020CE20060, &v24);
      *(v14 + 12) = 2080;
      *(v14 + 14) = sub_20CD96DCC(0xD000000000000057, 0x800000020CE200C0, &v24);
      _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] %s Received a nil name. Using empty string.", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v15, -1, -1);
      MEMORY[0x20F314110](v14, -1, -1);
    }

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v16 = qword_27C811D08;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_20CE12CB4();
  __swift_project_value_buffer(v17, qword_27C817780);
  v7 = sub_20CE12C94();
  v18 = sub_20CE13CB4();
  if (os_log_type_enabled(v7, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_20CD96DCC(0xD00000000000001DLL, 0x800000020CE20060, &v24);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_20CD96DCC(0xD000000000000057, 0x800000020CE200C0, &v24);
    _os_log_impl(&dword_20CD70000, v7, v18, "[%{public}s] %s Received a nil address. Using empty string.", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v20, -1, -1);
    MEMORY[0x20F314110](v19, -1, -1);
  }

LABEL_7:

  v21 = sub_20CE12B54();

  return v21;
}

uint64_t sub_20CDF02C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = sub_20CE129C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D12D38] || v15 == *MEMORY[0x277D12D48])
  {
    return MEMORY[0x20F312050]();
  }

  if (v15 == *MEMORY[0x277D12D50])
  {
    v18 = a2;
    v19 = a3;
    v20 = a4;
    v21 = a5;
    return sub_20CDEFDC0(v18, v19, v20, v21);
  }

  if (v15 != *MEMORY[0x277D12D58] && v15 != *MEMORY[0x277D12D60] && v15 != *MEMORY[0x277D12D68] && v15 != *MEMORY[0x277D12D70])
  {
    if (v15 == *MEMORY[0x277D12D40])
    {
      v18 = a2;
      v19 = a3;
      v20 = a4;
      v21 = a5;
      return sub_20CDEFDC0(v18, v19, v20, v21);
    }

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v25 = sub_20CE12CB4();
    __swift_project_value_buffer(v25, qword_27C817780);
    v26 = sub_20CE12C94();
    v27 = sub_20CE13CB4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136446466;
      *(v28 + 4) = sub_20CD96DCC(0xD00000000000001DLL, 0x800000020CE20060, &v31);
      *(v28 + 12) = 2080;
      *(v28 + 14) = sub_20CD96DCC(0xD00000000000003DLL, 0x800000020CE20080, &v31);
      _os_log_impl(&dword_20CD70000, v26, v27, "[%{public}s] %s Unhandled case of HTFaultStatusWithReason. Returning nil.", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v29, -1, -1);
      MEMORY[0x20F314110](v28, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
  }

  return 0;
}

uint64_t sub_20CDF0610(uint64_t a1, uint64_t *a2)
{
  sub_20CDF61A8(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  sub_20CD7DC78(a1, &v11 - v6);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v7, v8 + v9);
  return swift_endAccess();
}

uint64_t sub_20CDF06F4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  swift_beginAccess();
  return sub_20CD7DC78(v1 + v3, a1);
}

id HTUIResultsViewController.__allocating_init(audiogram:healthStore:isHearingAssistAvailable:application:deviceBluetoothUUID:)(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_allocWithZone(v6);
  swift_unknownObjectWeakInit();
  v40 = a4;
  swift_unknownObjectWeakAssign();
  v43[3] = &type metadata for URLBasedArticlePresenter;
  v43[4] = &off_2823BCF30;
  v43[0] = swift_allocObject();
  sub_20CDF0F6C(v44, v43[0] + 16);
  v11 = type metadata accessor for HTUIResultsViewController();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  v14 = sub_20CE124E4();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient;
  type metadata accessor for HMServiceClientWrapper();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  v42 = sub_20CDF54B4(MEMORY[0x277D84F90]);
  sub_20CDF5D74(0, &qword_27C8131A8, MEMORY[0x277CBCE30]);
  v19 = v18;
  v20 = *(v18 + 48);
  v21 = *(v18 + 52);
  swift_allocObject();
  v16[2] = sub_20CE12E14();
  v42 = sub_20CDF54B4(v17);
  v22 = *(v19 + 48);
  v23 = *(v19 + 52);
  swift_allocObject();
  v16[3] = sub_20CE12E14();
  v16[4] = 0;
  sub_20CDB17AC();
  *&v12[v15] = v16;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = 0;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = 0;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = 0;
  v24 = &v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
  *v24 = 0;
  v24[1] = 0;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_cancellables] = MEMORY[0x277D84FA0];
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram] = a1;
  v25 = a1;
  sub_20CD86178(v25, &v42);
  v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation] = v42;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore] = a2;
  v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable] = a3;
  v26 = &v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  *v26 = a5;
  v26[1] = a6;
  sub_20CD7C388(v43, &v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter]);
  v27 = &v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
  *v27 = 0;
  v27[1] = 0;
  v28 = qword_27C811DC8;
  v29 = a2;

  if (v28 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v30 = sub_20CE13914();

  v31 = sub_20CE13914();
  v41.receiver = v12;
  v41.super_class = v11;
  v32 = objc_msgSendSuper2(&v41, sel_initWithTitle_detailText_icon_contentLayout_, v30, v31, 0, 3, 0xE000000000000000);

  v33 = v32;
  sub_20CDF1F0C(0, 0);

  sub_20CDF55C0(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  swift_getObjectType();
  v34 = *((*MEMORY[0x277D85000] & *v10) + 0x30);
  v35 = *((*MEMORY[0x277D85000] & *v10) + 0x34);
  swift_deallocPartialClassInstance();
  return v33;
}

id HTUIResultsViewController.init(audiogram:healthStore:isHearingAssistAvailable:application:deviceBluetoothUUID:)(void *a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  swift_unknownObjectWeakInit();
  v40 = a4;
  swift_unknownObjectWeakAssign();
  v43[3] = &type metadata for URLBasedArticlePresenter;
  v43[4] = &off_2823BCF30;
  v43[0] = swift_allocObject();
  sub_20CDF0F6C(v44, v43[0] + 16);
  v11 = type metadata accessor for HTUIResultsViewController();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  v14 = sub_20CE124E4();
  (*(*(v14 - 8) + 56))(&v12[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient;
  type metadata accessor for HMServiceClientWrapper();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F90];
  v42 = sub_20CDF54B4(MEMORY[0x277D84F90]);
  sub_20CDF5D74(0, &qword_27C8131A8, MEMORY[0x277CBCE30]);
  v19 = v18;
  v20 = *(v18 + 48);
  v21 = *(v18 + 52);
  swift_allocObject();
  v16[2] = sub_20CE12E14();
  v42 = sub_20CDF54B4(v17);
  v22 = *(v19 + 48);
  v23 = *(v19 + 52);
  swift_allocObject();
  v16[3] = sub_20CE12E14();
  v16[4] = 0;
  sub_20CDB17AC();
  *&v12[v15] = v16;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = 0;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = 0;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = 0;
  v24 = &v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
  *v24 = 0;
  v24[1] = 0;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_cancellables] = MEMORY[0x277D84FA0];
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram] = a1;
  v25 = a1;
  sub_20CD86178(v25, &v42);
  v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation] = v42;
  *&v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore] = a2;
  v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable] = a3;
  v26 = &v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  *v26 = a5;
  v26[1] = a6;
  sub_20CD7C388(v43, &v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter]);
  v27 = &v12[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
  *v27 = 0;
  v27[1] = 0;
  v28 = qword_27C811DC8;
  v29 = a2;

  if (v28 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v30 = sub_20CE13914();

  v31 = sub_20CE13914();
  v41.receiver = v12;
  v41.super_class = v11;
  v32 = objc_msgSendSuper2(&v41, sel_initWithTitle_detailText_icon_contentLayout_, v30, v31, 0, 3, 0xE000000000000000);

  v33 = v32;
  sub_20CDF1F0C(0, 0);

  sub_20CDF55C0(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  swift_getObjectType();
  v34 = *((*MEMORY[0x277D85000] & *v7) + 0x30);
  v35 = *((*MEMORY[0x277D85000] & *v7) + 0x34);
  swift_deallocPartialClassInstance();
  return v33;
}

uint64_t type metadata accessor for HTUIResultsViewController()
{
  result = qword_27C813498;
  if (!qword_27C813498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDF1140(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_20CE13954();

  return v3;
}

char *HTUIResultsViewController.__allocating_init(audiogram:healthStore:isHearingAssistAvailable:articleProvider:analyticsManager:)(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v53[3] = &type metadata for ControllerBasedArticlePresenter;
  v53[4] = &off_2823BC0D0;
  v53[0] = [a4 hearingLossArticleViewController];
  v9 = type metadata accessor for HTUIResultsViewController();
  v10 = objc_allocWithZone(v9);
  v11 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  v12 = sub_20CE124E4();
  (*(*(v12 - 8) + 56))(&v10[v11], 1, 1, v12);
  v13 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient;
  type metadata accessor for HMServiceClientWrapper();
  v14 = swift_allocObject();
  v49 = v53[0];
  v15 = MEMORY[0x277D84F90];
  v52 = sub_20CDF54B4(MEMORY[0x277D84F90]);
  sub_20CDF5D74(0, &qword_27C8131A8, MEMORY[0x277CBCE30]);
  v17 = v16;
  v18 = *(v16 + 48);
  v19 = *(v16 + 52);
  swift_allocObject();
  v14[2] = sub_20CE12E14();
  v52 = sub_20CDF54B4(v15);
  v20 = *(v17 + 48);
  v21 = *(v17 + 52);
  swift_allocObject();
  v14[3] = sub_20CE12E14();
  v14[4] = 0;
  sub_20CDB17AC();
  *&v10[v13] = v14;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = 0;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = 0;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = 0;
  v22 = &v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
  *v22 = 0;
  v22[1] = 0;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_cancellables] = MEMORY[0x277D84FA0];
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram] = v7;
  v23 = v7;
  sub_20CD86178(v23, &v52);
  v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation] = v52;
  *&v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore] = v8;
  v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable] = a3;
  v24 = &v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  *v24 = sub_20CDF16AC;
  v24[1] = 0;
  sub_20CD7C388(v53, &v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter]);
  v25 = &v10[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
  *v25 = 0;
  v25[1] = 0;
  v26 = qword_27C811DC8;
  v27 = v8;
  if (v26 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v28 = sub_20CE13914();

  v29 = sub_20CE13914();
  v51.receiver = v10;
  v51.super_class = v9;
  v30 = objc_msgSendSuper2(&v51, sel_initWithTitle_detailText_icon_contentLayout_, v28, v29, 0, 3, 0xE000000000000000);

  v31 = v30;
  sub_20CDF1F0C(0, 0);

  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v53[0] = v9;
  sub_20CDF5B70(0, &qword_27C813490, type metadata accessor for HTUIResultsViewController);
  v32 = v31;
  v33 = sub_20CE13974();
  v35 = v34;
  v36 = sub_20CE12A34();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = sub_20CE12A44();
  v40 = objc_allocWithZone(MEMORY[0x277CCD090]);

  v41 = [v40 init];
  type metadata accessor for HearingTestDeviceManager();
  swift_allocObject();
  v42 = sub_20CDFA58C(v39, v41, v33, v35);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v43 = *&v32[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager];
  *&v32[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager] = v42;

  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = v50;
  v46 = &v32[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  v47 = *&v32[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID + 8];
  *v46 = sub_20CDF58BC;
  v46[1] = v45;

  return v32;
}

uint64_t sub_20CDF16B8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceManager);
    v2 = result;

    if (v1)
    {
      v3 = *(v1 + 16);
      v4 = *(v1 + 24);
      sub_20CD996F0(v3, *(v1 + 24));

      if (v4 > 0x3F)
      {
        sub_20CD99704(v3, v4);
      }

      else
      {
        v5 = [v3 identifier];
        sub_20CD99704(v3, v4);
        if (v5)
        {
          v6 = sub_20CE13954();

          return v6;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_20CDF17AC()
{
  ObjectType = swift_getObjectType();
  v6.receiver = v0;
  v6.super_class = type metadata accessor for HTUIResultsViewController();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v2 = [v0 headerView];
  [v2 setTitleStyle_];

  sub_20CDF27C8();
  sub_20CDF29AC();
  sub_20CDF2B7C();
  v3 = [v0 contentView];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  v5 = v0;
}

id sub_20CDF18AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram);
  result = [objc_allocWithZone(MEMORY[0x277CCDAC0]) initWithHealthStore_];
  v8 = *(a1 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8);
  if (v8)
  {
    v9 = result;
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a2;

    v12 = v6;
    v13 = v9;
    sub_20CDD0754(v12, v13, 0xD000000000000010, 0x800000020CE203B0, v26);
    v14 = v12;
    sub_20CD86178(v14, &v25);
    v15 = _s13HearingTestUI29ClassificationDescriptionViewV5ModelV8headline9audiogram14recommendationSSSo17HKAudiogramSampleC_AA14RecommendationOtFZ_0(v14, &v25);
    v17 = v16;

    KeyPath = swift_getKeyPath();
    v19 = type metadata accessor for ClassificationInfoView();
    *(a3 + *(v19 + 24)) = KeyPath;
    v20 = MEMORY[0x277CDF458];
    sub_20CDF61A8(0, &qword_27C812430, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v21 = v26[5];
    *(a3 + 64) = v26[4];
    *(a3 + 80) = v21;
    *(a3 + 96) = v26[6];
    v22 = v26[1];
    *a3 = v26[0];
    *(a3 + 16) = v22;
    v23 = v26[3];
    *(a3 + 32) = v26[2];
    *(a3 + 48) = v23;
    *(a3 + 112) = v15;
    *(a3 + 120) = v17;
    *(a3 + 128) = 0xD000000000000010;
    *(a3 + 136) = 0x800000020CE203B0;
    *(a3 + 144) = sub_20CDF6148;
    *(a3 + 152) = v11;
    *(a3 + 160) = v8;
    v24 = *(v19 + 20);
    *(a3 + v24) = swift_getKeyPath();
    sub_20CDF61A8(0, &qword_27C812390, MEMORY[0x277CDFA28], v20);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20CDF1B18()
{
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v0 = sub_20CE12CB4();
  __swift_project_value_buffer(v0, qword_27C817768);
  v1 = sub_20CE12C94();
  v2 = sub_20CE13CD4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    v5 = sub_20CE14414();
    v7 = sub_20CD96DCC(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_20CD70000, v1, v2, "[%{public}s] User tapped to show detailed results.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    MEMORY[0x20F314110](v4, -1, -1);
    MEMORY[0x20F314110](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    sub_20CDF3988();
  }
}

uint64_t sub_20CDF1CB4(char a1)
{
  sub_20CDF61A8(0, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15[-v5 - 8];
  v7 = type metadata accessor for HTUIResultsViewController();
  v16.receiver = v1;
  v16.super_class = v7;
  objc_msgSendSuper2(&v16, sel_viewDidAppear_, a1 & 1);
  sub_20CE124D4();
  v8 = sub_20CE124E4();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  v9 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_stepStartTime;
  swift_beginAccess();
  sub_20CD83094(v6, &v1[v9]);
  result = swift_endAccess();
  if (*&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v11 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    v12 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
    ObjectType = swift_getObjectType();
    v15[0] = 0;
    return (*(v11 + 48))(v15, v1, &protocol witness table for HTUIResultsViewController, ObjectType, v11);
  }

  return result;
}

uint64_t sub_20CDF1F0C(char a1, int a2)
{
  v3 = v2;
  sub_20CDF61A8(0, &qword_27C813520, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84220]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v68 = &v65 - v8;
  v69 = type metadata accessor for ClassificationHighlightView.Model(0);
  v9 = *(v69 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v69);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v65 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v65 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v65 - v21;
  MEMORY[0x28223BE20](v20);
  v67 = &v65 - v23;
  v24 = *(v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_recommendation);
  v25 = *(v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_isHearingAssistAvailable);
  v66 = [*(v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram) isAverageSensitivityUpperClampedForAnySide];
  v70 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = MEMORY[0x277D84F90];
  if (v24 <= 4)
  {
    if ((v24 - 1) >= 4)
    {
      v52 = v3;
      sub_20CDF61A8(0, &qword_27C812360, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84560]);
      v53 = *(v9 + 72);
      v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v19 = swift_allocObject();
      v65 = xmmword_20CE16370;
      *(v19 + 1) = xmmword_20CE16370;
      v54 = v70;

      sub_20CDEE718(sub_20CDF61A0, v54, &v19[v24]);
      sub_20CDE511C(v19);
      v30 = v68;
      if (v25)
      {
        v55 = swift_allocObject();
        *(v55 + 16) = v65;
        if (qword_27C811DA0 != -1)
        {
          swift_once();
        }

        v56 = __swift_project_value_buffer(v69, qword_27C817968);
        sub_20CDAE024(v56, v55 + v24);
        sub_20CDE511C(v55);
        v31 = 128;
        LOBYTE(v32) = 2;
      }

      else
      {
        v31 = 128;
        LOBYTE(v32) = 3;
      }

      v3 = v52;
    }

    else
    {
      LODWORD(v65) = a2;
      v26 = v70;

      sub_20CDEE8D0(sub_20CDF61A0, v26, v22);
      v27 = sub_20CD896DC(0, 1, 1, MEMORY[0x277D84F90]);
      v29 = v27[2];
      v28 = v27[3];
      v30 = v3;
      if (v29 >= v28 >> 1)
      {
        v27 = sub_20CD896DC(v28 > 1, v29 + 1, 1, v27);
      }

      v27[2] = v29 + 1;
      v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v3 = *(v9 + 72);
      sub_20CDF620C(v22, v27 + v24 + v3 * v29);
      v71 = v27;
      if (v25)
      {
        v31 = 64;
        if (qword_27C811DA8 != -1)
        {
          goto LABEL_49;
        }

        while (1)
        {
          LOBYTE(v32) = v65 & 1;
          v31 = v31 & 0xFFFFFFFE | v65 & 1;
          v33 = __swift_project_value_buffer(v69, qword_27C817980);
          sub_20CDAE024(v33, v19);
          v35 = v27[2];
          v34 = v27[3];
          if (v35 >= v34 >> 1)
          {
            v27 = sub_20CD896DC(v34 > 1, v35 + 1, 1, v27);
          }

          v36 = v66;
          v27[2] = v35 + 1;
          sub_20CDF620C(v19, v27 + v24 + v35 * v3);
          v71 = v27;
          v3 = v30;
          v37 = v67;
          v30 = v68;
          if (!v36)
          {
            goto LABEL_34;
          }

LABEL_38:
          if (qword_27C811DC0 != -1)
          {
            swift_once();
          }

          v57 = __swift_project_value_buffer(v69, qword_27C8179C8);
          sub_20CDAE024(v57, v37);
          v27 = v71;
          v58 = v71[2];
          v59 = v58 != 0;
          if (v58 < v59)
          {
            __break(1u);
          }

          else
          {
            sub_20CDF620C(v37, v30);
            v60 = v27[2];
            if (v60 >= v59)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              if (!isUniquelyReferenced_nonNull_native || v60 >= v27[3] >> 1)
              {
                v27 = sub_20CD896DC(isUniquelyReferenced_nonNull_native, v60 + 1, 1, v27);
                v71 = v27;
              }

              sub_20CDF5308(v59, v59, 1, v30);

              goto LABEL_46;
            }
          }

          __break(1u);
LABEL_49:
          swift_once();
        }
      }

      v31 = 128;
      LOBYTE(v32) = 3;
      v3 = v30;
      v30 = v68;
    }

    v37 = v67;
    if (v66)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

  if (v24 == 5)
  {
    *&v65 = v3;
    v38 = v70;

    sub_20CDEE8D0(sub_20CDF61A0, v38, v16);
    v19 = sub_20CD896DC(0, 1, 1, MEMORY[0x277D84F90]);
    v40 = *(v19 + 2);
    v39 = *(v19 + 3);
    if (v40 >= v39 >> 1)
    {
      v19 = sub_20CD896DC(v39 > 1, v40 + 1, 1, v19);
    }

    *(v19 + 2) = v40 + 1;
    v24 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v41 = *(v9 + 72);
    sub_20CDF620C(v16, &v19[v24 + v41 * v40]);
    v71 = v19;
    if (v25)
    {
      if (qword_27C811DB0 != -1)
      {
        swift_once();
      }

      v32 = a1 & 1;
      v42 = __swift_project_value_buffer(v69, qword_27C817998);
      sub_20CDAE024(v42, v13);
      v44 = *(v19 + 2);
      v43 = *(v19 + 3);
      if (v44 >= v43 >> 1)
      {
        v19 = sub_20CD896DC(v43 > 1, v44 + 1, 1, v19);
      }

      v45 = v66;
      v30 = v68;
      *(v19 + 2) = v44 + 1;
      sub_20CDF620C(v13, &v19[v24 + v44 * v41]);
      v71 = v19;
      v31 = v32;
      v3 = v65;
      v37 = v67;
      if (v45)
      {
        goto LABEL_38;
      }

      goto LABEL_34;
    }

    v31 = 128;
    LOBYTE(v32) = 3;
    v3 = v65;
  }

  else
  {
    if (v25)
    {
      LOBYTE(v32) = 2;
    }

    else
    {
      LOBYTE(v32) = 3;
    }

    sub_20CDF61A8(0, &qword_27C812360, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84560]);
    v46 = *(v9 + 72);
    v47 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_20CE16360;
    v49 = v48 + v47;
    v50 = v70;

    sub_20CDEE8D0(sub_20CDF61A0, v50, v49);
    if (qword_27C811DB8 != -1)
    {
      swift_once();
    }

    v51 = __swift_project_value_buffer(v69, qword_27C8179B0);
    sub_20CDAE024(v51, v49 + v46);
    sub_20CDE511C(v48);
    v31 = 128;
  }

  v37 = v67;
  v30 = v68;
  if (v66)
  {
    goto LABEL_38;
  }

LABEL_34:

  v27 = v71;
LABEL_46:
  v62 = (v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel);
  v63 = *(v3 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8);
  *v62 = v31 & 0xFFFF00FF | (v32 << 8);
  v62[1] = v27;
}

void sub_20CDF2774()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20CDF48B0();
  }
}

void sub_20CDF27C8()
{
  v1 = [v0 navigationItem];
  [v1 setHidesBackButton_];

  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_20CE13914();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    sub_20CE11910();
    v6 = v5;

    if (v6)
    {
      v7 = [v0 navigationItem];
      sub_20CDF6150(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_20CE183B0;
      v12[3] = type metadata accessor for HTUIResultsViewController();
      v12[0] = v0;
      v9 = v0;
      v10 = sub_20CDEA770(v12, sel_invokeTapToRadar);
      sub_20CDF5F58(v12, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDF6150);
      *(v8 + 32) = v10;
      sub_20CD83128(0, &qword_27C812220, 0x277D751E0);
      v11 = sub_20CE13AA4();

      [v7 setRightBarButtonItems_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDF29AC()
{
  v1 = [objc_opt_self() boldButton];
  sub_20CDF2A64(v1, v0);
  v2 = OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton;
  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton];
  *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton] = v1;

  sub_20CDF2D44();
  v4 = [v0 buttonTray];
  if (*&v0[v2])
  {
    v5 = v4;
    [v4 addButton_];
  }

  else
  {
    __break(1u);
  }
}

void sub_20CDF2A64(void *a1, uint64_t a2)
{
  v2 = a2 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel;
  if (!*(a2 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8))
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_20CD85C18(*v2);
  v5 = sub_20CE13914();

  [a1 setAccessibilityIdentifier_];

  if (!*(v2 + 8))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [a1 addTarget:a2 action:*off_277DAD048[*v2 >> 6] forControlEvents:64];
  if (!*(v2 + 8))
  {
LABEL_9:
    __break(1u);
    return;
  }

  sub_20CD85A68(*v2);
  v6 = sub_20CE13914();

  [a1 setTitle:v6 forState:0];
}

void sub_20CDF2B7C()
{
  if (*&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8])
  {
    v1 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
    if (BYTE1(v1) != 3)
    {
      v2 = v1 >> 8;
      v3 = BYTE1(v1);
      v4 = [objc_opt_self() linkButton];
      if (v3 >= 2)
      {
        v5 = &selRef_didTapLearnMoreAboutAid;
      }

      else
      {
        v5 = &selRef_didTapDone;
      }

      v6 = sub_20CE13914();

      [v4 setAccessibilityIdentifier_];

      [v4 addTarget:v0 action:*v5 forControlEvents:64];
      sub_20CD85DEC(v2);
      v7 = sub_20CE13914();

      [v4 setTitle:v7 forState:0];

      v8 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton];
      *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton] = v4;
      v9 = v4;

      v10 = [v0 buttonTray];
      [v10 addButton_];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDF2D44()
{
  ObjectType = swift_getObjectType();
  v43 = MEMORY[0x277CC9E70];
  v42 = MEMORY[0x277D83D88];
  sub_20CDF61A8(0, &qword_27C812800, MEMORY[0x277CC9E70], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v36 - v3;
  sub_20CDF5BBC();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDF5CB4();
  v11 = *(v10 - 8);
  v40 = v10;
  v41 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDF5E00();
  v15 = *(v14 - 8);
  v44 = v14;
  v45 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v38 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v0 + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_hmServiceClient);
  v47 = *(v18 + 16);
  v19 = MEMORY[0x277CBCE30];
  sub_20CDF5D74(0, &qword_27C8131A8, MEMORY[0x277CBCE30]);
  sub_20CDF5C70(&qword_27C8134C8, &qword_27C8131A8, v19);
  sub_20CDF5ECC();
  sub_20CE12E74();
  sub_20CDF6098(&qword_27C813500, sub_20CDF5BBC);
  v20 = sub_20CE12E34();
  v21 = *(v6 + 8);
  v21(v9, v5);
  v47 = v20;
  v48 = *(v18 + 24);
  sub_20CE12E74();
  v22 = sub_20CE12E34();
  v21(v9, v5);
  v48 = v22;
  v23 = MEMORY[0x277CBCD88];
  sub_20CDF5D74(0, &qword_27C8134D8, MEMORY[0x277CBCD88]);
  sub_20CDF5C70(&qword_27C8134E0, &qword_27C8134D8, v23);
  v24 = v37;
  sub_20CE12D54();
  v25 = [objc_opt_self() mainRunLoop];
  v47 = v25;
  v26 = sub_20CE13F34();
  v27 = v39;
  (*(*(v26 - 8) + 56))(v39, 1, 1, v26);
  sub_20CD83128(0, &qword_27C812818, 0x277CBEB88);
  sub_20CDF6098(&qword_27C8134F0, sub_20CDF5CB4);
  sub_20CDA33E0();
  v28 = v38;
  v29 = v40;
  sub_20CE12E64();
  sub_20CDF5F58(v27, &qword_27C812800, v43, v42, sub_20CDF61A8);

  (*(v41 + 8))(v24, v29);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  v32 = ObjectType;
  *(v31 + 16) = v30;
  *(v31 + 24) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_20CDF5FB8;
  *(v33 + 24) = v31;
  sub_20CDF6098(&qword_27C813508, sub_20CDF5E00);
  v34 = v44;
  sub_20CE12E84();

  (*(v45 + 8))(v28, v34);
  swift_beginAccess();
  sub_20CE12DB4();
  swift_endAccess();
}

void sub_20CDF33A4(uint64_t a1, uint64_t a2)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

    return;
  }

  v5 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID);
  v6 = *(Strong + OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID + 8);

  v9 = v7(v8);
  v11 = v10;

  if (!v11)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v27 = sub_20CE12CB4();
    __swift_project_value_buffer(v27, qword_27C817780);
    v19 = sub_20CE12C94();
    v20 = sub_20CE13CB4();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_26;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v22;
    *v21 = 136446210;
    v28 = sub_20CE14414();
    v30 = sub_20CD96DCC(v28, v29, &v40);

    *(v21 + 4) = v30;
    v26 = "[%{public}s] Aborting primary button title update as deviceAddress is nil.";
    goto LABEL_25;
  }

  if (*(a1 + 16) && (v12 = sub_20CD89A48(v9, v11), (v13 & 1) != 0))
  {
    v14 = *(*(a1 + 56) + v12);
    if (!*(a2 + 16))
    {
LABEL_15:
      v17 = 2;
      if (v14 == 2)
      {
        goto LABEL_16;
      }

LABEL_13:
      if (v17 == 2)
      {
        LOBYTE(v17) = 0;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v14 = 2;
    if (!*(a2 + 16))
    {
      goto LABEL_15;
    }
  }

  v15 = sub_20CD89A48(v9, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_15;
  }

  v17 = *(*(a2 + 56) + v15);
  if (v14 != 2)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (v17 == 2)
  {

    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v18 = sub_20CE12CB4();
    __swift_project_value_buffer(v18, qword_27C817780);
    v19 = sub_20CE12C94();
    v20 = sub_20CE13CB4();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_26;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v40 = v22;
    *v21 = 136446210;
    v23 = sub_20CE14414();
    v25 = sub_20CD96DCC(v23, v24, &v40);

    *(v21 + 4) = v25;
    v26 = "[%{public}s] Aborting primary button title update as we don't know its Hearing Aid nor its Media Assist status.";
LABEL_25:
    _os_log_impl(&dword_20CD70000, v19, v20, v26, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x20F314110](v22, -1, -1);
    MEMORY[0x20F314110](v21, -1, -1);
LABEL_26:

    return;
  }

  LOBYTE(v14) = 0;
LABEL_28:
  sub_20CDF1F0C(v14 & 1, v17 & 1);
  v31 = *&v5[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_primaryButton];
  if (!v31)
  {
    __break(1u);
    goto LABEL_38;
  }

  v32 = &v5[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel];
  if (!*&v5[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_viewModel + 8])
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v33 = *v32;
  v34 = v31;
  sub_20CD85A68(v33);
  v35 = sub_20CE13914();

  [v34 setTitle:v35 forState:0];

  v36 = *&v5[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_secondaryButton];
  if (!v36)
  {

    return;
  }

  if (!*(v32 + 1))
  {
    goto LABEL_39;
  }

  v37 = v32[1];
  v38 = v36;

  if (v37 == 3)
  {
    v39 = 0;
  }

  else
  {
    sub_20CD85DEC(v37);
    v39 = sub_20CE13914();
  }

  [v38 setTitle:v39 forState:0];
}

void sub_20CDF3988()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    v4 = swift_getObjectType();
    LOBYTE(aBlock[0]) = 10;
    (*(v3 + 48))(aBlock, v0, &protocol witness table for HTUIResultsViewController, v4, v3);
  }

  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C817768);
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446466;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, aBlock);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    type metadata accessor for HearingTestDetailedResultsViewController();
    sub_20CDF5B70(0, &qword_27C8134B8, type metadata accessor for HearingTestDetailedResultsViewController);
    v13 = sub_20CE13974();
    v15 = sub_20CD96DCC(v13, v14, aBlock);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] About to present %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  v16 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram];
  v17 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_healthStore];
  v18 = objc_allocWithZone(type metadata accessor for HearingTestDetailedResultsViewController());
  v19 = v16;
  v20 = v17;
  v21 = sub_20CDCD9C8(v19, v20);

  v22 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];
  [v22 setModalPresentationStyle_];
  v23 = swift_allocObject();
  *(v23 + 16) = ObjectType;
  aBlock[4] = sub_20CDF5B50;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);

  [v1 presentViewController:v22 animated:1 completion:v24];
  _Block_release(v24);
}

void sub_20CDF3CD8()
{
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v0 = sub_20CE12CB4();
  __swift_project_value_buffer(v0, qword_27C817768);
  oslog = sub_20CE12C94();
  v1 = sub_20CE13CD4();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v11 = v3;
    *v2 = 136446466;
    v4 = sub_20CE14414();
    v6 = sub_20CD96DCC(v4, v5, &v11);

    *(v2 + 4) = v6;
    *(v2 + 12) = 2080;
    type metadata accessor for HearingTestDetailedResultsViewController();
    sub_20CDF5B70(0, &qword_27C8134B8, type metadata accessor for HearingTestDetailedResultsViewController);
    v7 = sub_20CE13974();
    v9 = sub_20CD96DCC(v7, v8, &v11);

    *(v2 + 14) = v9;
    _os_log_impl(&dword_20CD70000, oslog, v1, "[%{public}s] Completed the presentation of %s.", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v3, -1, -1);
    MEMORY[0x20F314110](v2, -1, -1);
  }

  else
  {
  }
}

void sub_20CDF3ED8(char *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*&a1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v5 = *&a1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    v6 = *&a1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
    ObjectType = swift_getObjectType();
    v10 = a4;
    (*(v5 + 48))(&v10, a1, &protocol witness table for HTUIResultsViewController, ObjectType, v5);
  }

  else
  {
    v8 = a1;
  }

  sub_20CDF4000();
}

void sub_20CDF4000()
{
  v1 = v0;
  swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID + 8];

  v2(v4);
  v6 = v5;

  if (!v6)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v13 = sub_20CE12CB4();
    __swift_project_value_buffer(v13, qword_27C817780);
    v14 = sub_20CE12C94();
    v15 = sub_20CE13CB4();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_14;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446466;
    v18 = sub_20CE14414();
    v20 = sub_20CD96DCC(v18, v19, &v27);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20CD96DCC(0xD000000000000017, 0x800000020CE20360, &v27);
    v21 = "[%{public}s] %s could not fetch a device's bluetooth UUID.";
    goto LABEL_13;
  }

  v7 = *&v1[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram];
  v8 = objc_allocWithZone(MEMORY[0x277D12C18]);
  v9 = v7;
  v10 = sub_20CE13914();

  v26 = [v8 initWithDeviceAddress:v10 withAudiogramSample:v9];

  if (v26)
  {
    v11 = [v1 navigationController];
    if (v11)
    {
      v12 = v11;
      [v11 pushViewController:v26 animated:1];
    }

    else
    {
      [v1 presentViewController:v26 animated:1 completion:0];
    }

    return;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v22 = sub_20CE12CB4();
  __swift_project_value_buffer(v22, qword_27C817780);
  v14 = sub_20CE12C94();
  v15 = sub_20CE13CB4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446466;
    v23 = sub_20CE14414();
    v25 = sub_20CD96DCC(v23, v24, &v27);

    *(v16 + 4) = v25;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20CD96DCC(0xD000000000000017, 0x800000020CE20360, &v27);
    v21 = "[%{public}s] %s could not create a HMHearingAidEnrollmentViewController.";
LABEL_13:
    _os_log_impl(&dword_20CD70000, v14, v15, v21, v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v17, -1, -1);
    MEMORY[0x20F314110](v16, -1, -1);
  }

LABEL_14:

  sub_20CDF49DC();
}

void sub_20CDF43D0()
{
  swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v1 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    ObjectType = swift_getObjectType();
    LOBYTE(v27) = 12;
    (*(v1 + 48))(&v27, v0, &protocol witness table for HTUIResultsViewController, ObjectType, v1);
  }

  v3 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID];
  v4 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_deviceBluetoothUUID + 8];

  v3(v5);
  v7 = v6;

  if (!v7)
  {
    if (qword_27C811D08 != -1)
    {
      swift_once();
    }

    v13 = sub_20CE12CB4();
    __swift_project_value_buffer(v13, qword_27C817780);
    v14 = sub_20CE12C94();
    v15 = sub_20CE13CB4();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_16;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446466;
    v18 = sub_20CE14414();
    v20 = sub_20CD96DCC(v18, v19, &v27);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20CD96DCC(0xD000000000000018, 0x800000020CE20340, &v27);
    v21 = "[%{public}s] %s could not fetch a device's bluetooth UUID.";
    goto LABEL_15;
  }

  v8 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_audiogram];
  objc_allocWithZone(sub_20CE12B74());
  v9 = v8;
  v10 = sub_20CE12B64();
  if (v10)
  {
    v26 = v10;
    v11 = [v0 navigationController];
    if (v11)
    {
      v12 = v11;
      [v11 pushViewController:v26 animated:1];
    }

    else
    {
      [v0 presentViewController:v26 animated:1 completion:0];
    }

    return;
  }

  if (qword_27C811D08 != -1)
  {
    swift_once();
  }

  v22 = sub_20CE12CB4();
  __swift_project_value_buffer(v22, qword_27C817780);
  v14 = sub_20CE12C94();
  v15 = sub_20CE13CB4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136446466;
    v23 = sub_20CE14414();
    v25 = sub_20CD96DCC(v23, v24, &v27);

    *(v16 + 4) = v25;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_20CD96DCC(0xD000000000000018, 0x800000020CE20340, &v27);
    v21 = "[%{public}s] %s could not create a HMMediaAssistEnrollmentViewController.";
LABEL_15:
    _os_log_impl(&dword_20CD70000, v14, v15, v21, v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v17, -1, -1);
    MEMORY[0x20F314110](v16, -1, -1);
  }

LABEL_16:

  sub_20CDF4B14();
}

void sub_20CDF47E4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a1;
  a4();
}

uint64_t sub_20CDF48B0()
{
  v1 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter + 24];
  v2 = *&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_articlePresenter], v1);
  v9[3] = type metadata accessor for HTUIResultsViewController();
  v9[0] = v0;
  v3 = *(v2 + 8);
  v4 = v0;
  v3(v9, v1, v2);
  result = sub_20CDF5F58(v9, &qword_27C812D30, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_20CDF6150);
  if (*&v4[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager])
  {
    v6 = *&v4[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager + 8];
    v7 = *&v4[OBJC_IVAR____TtC13HearingTestUI25HTUIResultsViewController_analyticsManager];
    ObjectType = swift_getObjectType();
    LOBYTE(v9[0]) = 11;
    return (*(v6 + 48))(v9, v4, &protocol witness table for HTUIResultsViewController, ObjectType, v6);
  }

  return result;
}

uint64_t sub_20CDF49DC()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  sub_20CE12354();
  sub_20CDF4C4C();
}

uint64_t sub_20CDF4B14()
{
  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  sub_20CE12354();
  sub_20CDF4C4C();
}

void sub_20CDF4C4C()
{
  v1 = sub_20CE13914();
  v2 = sub_20CE13914();
  v3 = [objc_opt_self() alertControllerWithTitle:v1 message:v2 preferredStyle:1];

  if (qword_27C811DC8 != -1)
  {
    swift_once();
  }

  sub_20CE12354();
  v4 = sub_20CE13914();

  v5 = [objc_opt_self() actionWithTitle:v4 style:0 handler:{0, 0xE000000000000000}];

  [v3 addAction_];
  [v0 presentViewController:v3 animated:1 completion:0];
}

id HTUIResultsViewController.__allocating_init(title:detailText:symbolName:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = sub_20CE13914();

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_20CE13914();

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_20CE13914();

LABEL_6:
  v15 = [objc_allocWithZone(v8) initWithTitle:v12 detailText:v13 symbolName:v14 contentLayout:a7];

  return v15;
}

id HTUIResultsViewController.__allocating_init(title:detailText:icon:contentLayout:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_20CE13914();

  if (a4)
  {
    v12 = sub_20CE13914();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(v7) initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

uint64_t sub_20CDF4FFC()
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

id HTUIResultsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HTUIResultsViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CDF5240(uint64_t a1)
{
  v2 = sub_20CE12EB4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_20CE13024();
}

unint64_t sub_20CDF5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for ClassificationHighlightView.Model(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_20CDF5F58(a4, &unk_27C813520, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84220], sub_20CDF61A8);
  }

  if (v17 < 1)
  {
    return sub_20CDF5F58(a4, &unk_27C813520, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84220], sub_20CDF61A8);
  }

  result = sub_20CDAE024(a4, v15);
  if (v12 >= v17)
  {
    return sub_20CDF5F58(a4, &unk_27C813520, type metadata accessor for ClassificationHighlightView.Model, MEMORY[0x277D84220], sub_20CDF61A8);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_20CDF54B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20CDF6270(0, &qword_27C812368, MEMORY[0x277D84460]);
    v3 = sub_20CE14204();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20CD89A48(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CDF56A4(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    a2(0);
    v10 = sub_20CE14204();
    v11 = a1 + 32;

    while (1)
    {
      sub_20CDF5AE4(v11, &v18, a3, a4);
      v12 = v18;
      result = a5(v18);
      if (v14)
      {
        break;
      }

      *(v10 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v10[6] + 8 * result) = v12;
      result = sub_20CD8A9E8(&v19, (v10[7] + 32 * result));
      v15 = v10[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v10[2] = v17;
      v11 += 40;
      if (!--v5)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_20CDF57C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20CD8ABA4();
    v3 = sub_20CE14204();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_20CD89A48(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_20CDF58BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_20CDF16B8();
}

void sub_20CDF58CC()
{
  sub_20CDF61A8(319, &qword_281111770, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_20CDF5A44()
{
  if (!qword_27C8134A8)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    sub_20CDF6098(&qword_27C811FD8, type metadata accessor for OpenExternalURLOptionsKey);
    v0 = sub_20CE14214();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8134A8);
    }
  }
}

uint64_t sub_20CDF5AE4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_20CDF60E0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_20CDF5B70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_20CDF5BBC()
{
  if (!qword_27C8134C0)
  {
    v0 = MEMORY[0x277CBCE30];
    sub_20CDF5D74(255, &qword_27C8131A8, MEMORY[0x277CBCE30]);
    sub_20CDF5C70(&qword_27C8134C8, &qword_27C8131A8, v0);
    v1 = sub_20CE12D64();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8134C0);
    }
  }
}

uint64_t sub_20CDF5C70(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  result = *a1;
  if (!result)
  {
    sub_20CDF5D74(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20CDF5CB4()
{
  if (!qword_27C8134D0)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_20CDF5D74(255, &qword_27C8134D8, MEMORY[0x277CBCD88]);
    sub_20CDF5C70(&qword_27C8134E0, &qword_27C8134D8, v0);
    v1 = sub_20CE12D44();
    if (!v2)
    {
      atomic_store(v1, &qword_27C8134D0);
    }
  }
}

void sub_20CDF5D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_20CDF6270(255, &qword_27C8131B0, MEMORY[0x277D834F8]);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_20CDF5E00()
{
  if (!qword_27C8134E8)
  {
    sub_20CDF5CB4();
    sub_20CD83128(255, &qword_27C812818, 0x277CBEB88);
    sub_20CDF6098(&qword_27C8134F0, sub_20CDF5CB4);
    sub_20CDA33E0();
    v0 = sub_20CE12D94();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8134E8);
    }
  }
}

unint64_t sub_20CDF5ECC()
{
  result = qword_27C8134F8;
  if (!qword_27C8134F8)
  {
    sub_20CDF6270(255, &qword_27C8131B0, MEMORY[0x277D834F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8134F8);
  }

  return result;
}

uint64_t sub_20CDF5F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_20CDF5FB8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_20CDF33A4(a1, a2);
}

uint64_t sub_20CDF5FC0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

void sub_20CDF5FF8()
{
  if (!qword_27C813510)
  {
    type metadata accessor for VFXWorldLoaderOption(255);
    sub_20CDF6098(&qword_27C811FB8, type metadata accessor for VFXWorldLoaderOption);
    v0 = sub_20CE14214();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813510);
    }
  }
}

uint64_t sub_20CDF6098(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20CDF60E0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_20CDF6148()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_20CDF1B18();
}

void sub_20CDF6150(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_20CDF61A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDF620C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassificationHighlightView.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_20CDF6270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D839B0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void ShortSession.__allocating_init(on:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v7 = sub_20CE13914();
  v8 = [v6 initWithSuiteName_];

  if (v8)
  {
    *(v5 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_defaults) = v8;
    *(v5 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay) = 3;
    v9 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
    v10 = sub_20CE12924();
    (*(*(v10 - 8) + 32))(v5 + v9, a1, v10);
  }

  else
  {
    __break(1u);
  }
}

char *sub_20CDF63D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78[1] = a1;
  v89 = sub_20CE12854();
  v91 = *(v89 - 8);
  v3 = *(v91 + 64);
  MEMORY[0x28223BE20](v89);
  v88 = v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDF76A0(0, &qword_27C813558, MEMORY[0x277D12C68]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v79 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v83 = v78 - v9;
  v10 = sub_20CE12644();
  v81 = *(v10 - 8);
  v82 = v10;
  v11 = *(v81 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v78[0] = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = v78 - v14;
  v15 = sub_20CE12924();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v78 - v21;
  v23 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
  v24 = *MEMORY[0x277D12CD8];
  (*(v16 + 104))(v78 - v21, *MEMORY[0x277D12CD8], v15);
  sub_20CDF76F4(&qword_27C812380, MEMORY[0x277D12CE8]);
  sub_20CE13A84();
  sub_20CE13A84();
  v25 = *(v16 + 8);
  v87 = v22;
  v25(v22, v15);
  v26 = v93 != v92;
  v27 = *(v16 + 16);
  v85 = v16 + 16;
  v86 = v23;
  v84 = v27;
  v27(v20, v1 + v23, v15);
  v28 = *(v16 + 88);
  v90 = v15;
  v29 = v28(v20, v15);
  if (v29 == v24)
  {
    v30 = *(v1 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_defaults);
    v31 = v79;
    NSUserDefaults.overriddenLeftSessionResultState.getter(v79);
LABEL_5:
    v34 = v81;
    v33 = v82;
    goto LABEL_7;
  }

  v31 = v79;
  if (v29 == *MEMORY[0x277D12CE0])
  {
    v32 = *(v1 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_defaults);
    NSUserDefaults.overriddenRightSessionResultState.getter(v79);
    goto LABEL_5;
  }

  v34 = v81;
  v33 = v82;
  (*(v81 + 56))(v79, 1, 1, v82);
  v25(v20, v90);
LABEL_7:
  v35 = v83;
  sub_20CDF773C(v31, v83);
  v36 = *(v34 + 48);
  if (v36(v35, 1, v33) == 1)
  {
    (*(v34 + 104))(v80, *MEMORY[0x277D12C48], v33);
    if (v36(v35, 1, v33) != 1)
    {
      sub_20CDF77BC(v35);
    }
  }

  else
  {
    (*(v34 + 32))(v80, v35, v33);
  }

  v37 = *(v2 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_defaults);
  v38 = NSUserDefaults.overriddenHearingLossSensitivity(ear:)(v26);
  v39 = MEMORY[0x277D84F90];
  if (v38)
  {
    v40 = *(v38 + 2);
    if (v40)
    {
      v83 = v2;
      v93 = MEMORY[0x277D84F90];
      v41 = v38;
      sub_20CDB4690(0, v40, 0);
      v42 = v93;
      sub_20CE13B84();
      v43 = objc_opt_self();
      v79 = v41;
      v44 = (v41 + 40);
      do
      {
        v45 = *v44;
        v46 = *(v44 - 1);
        v47 = v45;
        sub_20CE13B74();
        sub_20CE13B24();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v48 = [v43 hertzUnit];
        [v46 doubleValueForUnit_];
        v50 = v49;

        v51 = [v43 decibelHearingLevelUnit];
        [v47 doubleValueForUnit_];
        v53 = v52;

        v93 = v42;
        v55 = v42[2];
        v54 = v42[3];
        if (v55 >= v54 >> 1)
        {
          sub_20CDB4690((v54 > 1), v55 + 1, 1);
          v42 = v93;
        }

        v42[2] = v55 + 1;
        v56 = &v42[2 * v55];
        v56[4] = v50;
        v56[5] = v53;
        v44 += 2;
        --v40;
      }

      while (v40);
      goto LABEL_32;
    }

LABEL_41:

    v42 = MEMORY[0x277D84F90];
    v69 = *(MEMORY[0x277D84F90] + 16);
    if (v69)
    {
LABEL_33:
      v93 = v39;
      sub_20CDB4670(0, v69, 0);
      sub_20CE13B84();
      v70 = v93;
      v83 = v91 + 32;
      v71 = v42 + 5;
      do
      {
        v72 = *(v71 - 1);
        v73 = *v71;
        sub_20CE13B74();
        sub_20CE13B24();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v84(v87, v2 + v86, v90);
        v74 = v88;
        sub_20CE12824();

        v93 = v70;
        v76 = v70[2];
        v75 = v70[3];
        if (v76 >= v75 >> 1)
        {
          sub_20CDB4670(v75 > 1, v76 + 1, 1);
          v70 = v93;
        }

        v70[2] = v76 + 1;
        (*(v91 + 32))(v70 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v76, v74, v89);
        v71 += 2;
        --v69;
      }

      while (v69);

      v34 = v81;
      v33 = v82;
      goto LABEL_43;
    }

LABEL_42:

LABEL_43:
    v77 = v80;
    (*(v34 + 16))(v78[0], v80, v33);
    sub_20CDD9AAC(16);
    sub_20CE12654();
    return (*(v34 + 8))(v77, v33);
  }

  v57 = _HKAudiogramStandardFrequencies();
  sub_20CD8E798();
  v58 = sub_20CE13AB4();

  if (v58 >> 62)
  {
    v59 = sub_20CE141C4();
    if (!v59)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v59)
    {
      goto LABEL_41;
    }
  }

  v83 = v2;
  v93 = v39;
  result = sub_20CDB4690(0, v59 & ~(v59 >> 63), 0);
  if ((v59 & 0x8000000000000000) == 0)
  {
    v42 = v93;
    sub_20CE13B84();
    v61 = 0;
    do
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x20F313610](v61, v58);
      }

      else
      {
        v62 = *(v58 + 8 * v61 + 32);
      }

      v63 = v62;
      sub_20CE13B74();
      sub_20CE13B24();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      [v63 doubleValue];
      v65 = v64;

      v93 = v42;
      v67 = v42[2];
      v66 = v42[3];
      if (v67 >= v66 >> 1)
      {
        sub_20CDB4690((v66 > 1), v67 + 1, 1);
        v42 = v93;
      }

      ++v61;
      v42[2] = v67 + 1;
      v68 = &v42[2 * v67];
      v68[4] = v65;
      v68[5] = 0;
    }

    while (v59 != v61);
LABEL_32:

    v33 = v82;
    v2 = v83;
    v34 = v81;
    v39 = MEMORY[0x277D84F90];
    v69 = v42[2];
    if (v69)
    {
      goto LABEL_33;
    }

    goto LABEL_42;
  }

  __break(1u);
  return result;
}

void ShortSession.init(on:)(uint64_t a1)
{
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_20CE13914();
  v5 = [v3 initWithSuiteName_];

  if (v5)
  {
    *(v1 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_defaults) = v5;
    *(v1 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay) = 3;
    v6 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
    v7 = sub_20CE12924();
    (*(*(v7 - 8) + 32))(v1 + v6, a1, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20CDF6EAC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_20CDF76A0(0, &qword_27C813540, MEMORY[0x277D12C80]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v5 = sub_20CE12924();
  v2[5] = v5;
  v6 = *(v5 - 8);
  v2[6] = v6;
  v7 = *(v6 + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_20CE13B84();
  v2[8] = sub_20CE13B74();
  v9 = sub_20CE13B24();

  return MEMORY[0x2822009F8](sub_20CDF6FE8, v9, v8);
}

uint64_t sub_20CDF6FE8()
{
  v1 = v0[8];
  v2 = v0[3];

  v3 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay;
  if (*(v2 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_numberOfTonesToPlay) > 0)
  {
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[2];
    v9 = v0[3];
    sub_20CD7C468();
    v11 = *(v10 + 48);
    v29 = *(v10 + 64);
    (*(v5 + 16))(v4, v9 + OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel, v7);
    sub_20CE126F4();
    *(v8 + v11) = (*(v2 + v3) / -3.0) + 1.0;
    v12 = sub_20CE12714();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    sub_20CE12734();
    v13 = *MEMORY[0x277D12C70];
    v14 = sub_20CE126A4();
    (*(*(v14 - 8) + 104))(v8, v13, v14);
    v15 = *(v2 + v3);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (!v16)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v18 = v0[2];
  v19 = v0[3];
  sub_20CD7C52C();
  v21 = *(v20 + 48);
  sub_20CDF63D4(v18);
  sub_20CD7C2DC();
  swift_storeEnumTagMultiPayload();
  sub_20CE127D4();
  v22 = *MEMORY[0x277D12C78];
  v23 = sub_20CE126A4();
  result = (*(*(v23 - 8) + 104))(v18, v22, v23);
  v25 = *(v2 + v3);
  v16 = __OFSUB__(v25, 1);
  v17 = v25 - 1;
  if (v16)
  {
    __break(1u);
    return result;
  }

LABEL_6:
  v26 = v0[7];
  v27 = v0[4];
  *(v2 + v3) = v17;

  v28 = v0[1];

  return v28();
}

uint64_t ShortSession.deinit()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
  v2 = sub_20CE12924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ShortSession.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13HearingTestUI12ShortSession_channel;
  v2 = sub_20CE12924();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_20CDF7388(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20CD7C660;

  return sub_20CDF6EAC(a1);
}

uint64_t type metadata accessor for ShortSession()
{
  result = qword_27C813548;
  if (!qword_27C813548)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CDF7478()
{
  result = sub_20CE12924();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ShortSession.hearingTestStatusWithAverageNoise(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_20CD7C660;

  return v10(a1, a2);
}

void sub_20CDF76A0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20CE13F44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20CDF76F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CDF773C(uint64_t a1, uint64_t a2)
{
  sub_20CDF76A0(0, &qword_27C813558, MEMORY[0x277D12C68]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDF77BC(uint64_t a1)
{
  sub_20CDF76A0(0, &qword_27C813558, MEMORY[0x277D12C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CDF7834(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    sub_20CDB4650(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
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
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_20CE12204();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_20CE12214();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_20CE12204();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_20CE12214();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_20CDFA528(0, &qword_27C8135A0, sub_20CDDA734, MEMORY[0x277D84560]);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_20CE16370;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_20CE13964();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        sub_20CDB4650((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x277D85DE8];
  return v8;
}

uint64_t sub_20CDF7BCC(void *a1, unsigned __int8 a2)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 != 2)
    {
      return 0x7269615020746F4ELL;
    }

    sub_20CD935CC();
    v40 = sub_20CE13FB4();
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v17 = [a1 identifier];
    if (!v17)
    {
LABEL_9:
      v28 = sub_20CE13F64();
      v25 = v29;
      goto LABEL_10;
    }
  }

  else
  {
    if (!(a2 >> 6))
    {
      sub_20CE140E4();
      sub_20CD935CC();
      v4 = sub_20CE13FB4();

      v40 = v4;
      MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
      v5 = [a1 identifier];
      if (v5)
      {
        v6 = v5;
        sub_20CE13954();

        v7 = sub_20CDFA33C(5);
        v9 = v8;
        v11 = v10;
        v13 = v12;

        v14 = v11;
        v15 = v9;
        v16 = v7;
      }

      else
      {
        v16 = sub_20CE13F64();
        v13 = v34;
      }

      v35 = MEMORY[0x20F312EB0](v16, v15, v14, v13);
      v37 = v36;

      MEMORY[0x20F312EF0](v35, v37);

      MEMORY[0x20F312EF0](0x6145206E49207C20, 0xEB00000000203A72);
      if (a2)
      {
        v38 = 1702195828;
      }

      else
      {
        v38 = 0x65736C6166;
      }

      if (a2)
      {
        v39 = 0xE400000000000000;
      }

      else
      {
        v39 = 0xE500000000000000;
      }

      MEMORY[0x20F312EF0](v38, v39);
      goto LABEL_20;
    }

    sub_20CD935CC();
    v40 = sub_20CE13FB4();
    MEMORY[0x20F312EF0](0x6369766544207C20, 0xEB00000000203A65);
    v17 = [a1 identifier];
    if (!v17)
    {
      goto LABEL_9;
    }
  }

  v18 = v17;
  sub_20CE13954();

  v19 = sub_20CDFA33C(5);
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v26 = v23;
  v27 = v21;
  v28 = v19;
LABEL_10:
  v30 = MEMORY[0x20F312EB0](v28, v27, v26, v25);
  v32 = v31;

  MEMORY[0x20F312EF0](v30, v32);
LABEL_20:

  return v40;
}

id sub_20CDF80C4(void *a1)
{
  v1 = a1;
  CBDevice.btAddress.getter();
  v3 = v2;

  if (v3)
  {
    v4 = sub_20CE13914();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t CBDevice.btAddress.getter()
{
  v1 = [v0 btAddressData];
  if (!v1)
  {
    return 1280070990;
  }

  v2 = v1;
  v3 = sub_20CE12484();
  v5 = v4;

  sub_20CDF9A50(v3, v5);
  sub_20CDF7834(v3, v5);
  sub_20CDF9AA4();
  sub_20CDFA4E0(&qword_27C813740, 255, sub_20CDF9AA4);
  sub_20CE138C4();

  sub_20CD935CC();
  v6 = sub_20CE13F84();
  sub_20CDF9AF4(v3, v5);
  sub_20CDF9AF4(v3, v5);

  return v6;
}

uint64_t static CBDevice.dataAddress(from:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 1280070990;
  }

  sub_20CDF9A50(a1, a2);
  sub_20CDF7834(a1, a2);
  sub_20CDF9AA4();
  sub_20CDFA4E0(&qword_27C813740, 255, sub_20CDF9AA4);
  sub_20CE138C4();

  sub_20CD935CC();
  v5 = sub_20CE13F84();
  sub_20CDF9B48(a1, a2);

  return v5;
}

id sub_20CDF83B0(void *a1)
{
  v1 = a1;
  CBProductIDToString([v1 productID]);
  sub_20CE139F4();

  v2 = sub_20CE13914();

  return v2;
}

uint64_t CBDevice.hardwareVersion.getter()
{
  CBProductIDToString([v0 productID]);

  return sub_20CE139F4();
}

uint64_t sub_20CDF8484()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_20CE129B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v8 = sub_20CE12CB4();
  __swift_project_value_buffer(v8, qword_27C8177C8);
  v9 = sub_20CE12C94();
  v10 = sub_20CE13CD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_20CE14414();
    v15 = sub_20CD96DCC(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] Adding self as an observer to requirement status updates.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x20F314110](v12, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
  }

  v16 = v1[8];
  sub_20CDFA4E0(&qword_27C813598, v17, type metadata accessor for HearingTestDeviceManager);
  sub_20CE12994();
  sub_20CE129F4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_20CDF86EC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_20CE129B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v8 = sub_20CE12CB4();
  __swift_project_value_buffer(v8, qword_27C8177C8);
  v9 = sub_20CE12C94();
  v10 = sub_20CE13CD4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136446210;
    v13 = sub_20CE14414();
    v15 = sub_20CD96DCC(v13, v14, &v20);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20CD70000, v9, v10, "[%{public}s] Removing self as an observer to requirement status updates.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x20F314110](v12, -1, -1);
    MEMORY[0x20F314110](v11, -1, -1);
  }

  v16 = v1[8];
  sub_20CDFA4E0(&qword_27C813598, v17, type metadata accessor for HearingTestDeviceManager);
  sub_20CE12994();
  sub_20CE12A04();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_20CDF8950()
{
  sub_20CDF86EC();
  sub_20CD99704(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

BOOL sub_20CDF89B0()
{
  v1 = *v0;
  v2 = sub_20CDF8BB8() != 0;
  swift_unknownObjectRelease();
  return v2;
}

id sub_20CDF8BB8()
{
  v2 = v1;
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 48);
  v19[0] = 0;
  v4 = [v3 pairedDevicesWithError_];
  v5 = v19[0];
  if (!v4)
  {
    v15 = v19[0];
    sub_20CE12394();

    swift_willThrow();
    goto LABEL_29;
  }

  v6 = v4;
  sub_20CDFA3F0();
  v7 = sub_20CE13AB4();
  v8 = v5;

  v19[0] = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_18;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    while (1)
    {
      v10 = 0;
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
      v18 = v2;
      while ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x20F313610](v10, v7);
        v2 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v14 = v19[0];
          goto LABEL_20;
        }

LABEL_10:
        if ([v12 isHearingTestCapable])
        {
          sub_20CE14134();
          v13 = *(v19[0] + 2);
          sub_20CE14164();
          sub_20CE14174();
          sub_20CE14144();
          v11 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v10;
        if (v2 == v9)
        {
          goto LABEL_15;
        }
      }

      if (v10 < *(v11 + 16))
      {
        break;
      }

      __break(1u);
LABEL_18:
      v9 = sub_20CE141C4();
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    v12 = *(v7 + 8 * v10 + 32);
    swift_unknownObjectRetain();
    v2 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

LABEL_19:
  v14 = MEMORY[0x277D84F90];
LABEL_20:

  if ((v14 & 0x8000000000000000) != 0 || (v14 & 0x4000000000000000) != 0)
  {
    if (sub_20CE141C4())
    {
      goto LABEL_23;
    }

LABEL_28:

    v15 = 0;
    goto LABEL_29;
  }

  if (!*(v14 + 16))
  {
    goto LABEL_28;
  }

LABEL_23:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x20F313610](0, v14);
  }

  else
  {
    if (!*(v14 + 16))
    {
      __break(1u);
    }

    v15 = *(v14 + 32);
    swift_unknownObjectRetain();
  }

LABEL_29:
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

id sub_20CDF8E38(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_27C811D20 != -1)
  {
    swift_once();
  }

  v5 = sub_20CE12CB4();
  __swift_project_value_buffer(v5, qword_27C8177C8);
  swift_unknownObjectRetain();
  v6 = sub_20CE12C94();
  v7 = sub_20CE13CD4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446466;
    v10 = sub_20CE14414();
    v12 = sub_20CD96DCC(v10, v11, &v17);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_20CE13974();
    v15 = sub_20CD96DCC(v13, v14, &v17);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_20CD70000, v6, v7, "[%{public}s] removing observer %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v9, -1, -1);
    MEMORY[0x20F314110](v8, -1, -1);
  }

  return [v2[7] unregisterObserver_];
}

uint64_t sub_20CDF9030@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 40);
  *a1 = *(*v1 + 32);
  a1[1] = v2;
}

uint64_t sub_20CDF9040()
{
  v1 = *v0;
  sub_20CE14384();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_20CE139C4();
  return sub_20CE143B4();
}

uint64_t sub_20CDF9088()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);
  return sub_20CE139C4();
}

uint64_t sub_20CDF9094()
{
  sub_20CE14384();
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 40);
  sub_20CE139C4();
  return sub_20CE143B4();
}

uint64_t sub_20CDF90D8(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 32) == *(*a2 + 32) && *(*a1 + 40) == *(*a2 + 40))
  {
    return 1;
  }

  else
  {
    return sub_20CE14284();
  }
}

uint64_t sub_20CDF9104(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  swift_getObjectType();
  v4 = swift_conformsToProtocol2();
  if (v4 && a1)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(a2 + 16);
    v8 = *(v5 + 8);
    v9 = *(a2 + 24);
    sub_20CD996F0(v7, v9);
    v8(v7, v9, ObjectType, v5);
    sub_20CD99704(v7, v9);
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_20CDF91D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_20CDF9230(uint64_t a1)
{
  v2 = v1;
  v69 = *v1;
  v4 = sub_20CE12944();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = (&v64 - v10);
  v12 = *(v5 + 16);
  v12(&v64 - v10, a1, v4);
  v13 = (*(v5 + 88))(v11, v4);
  v14 = *MEMORY[0x277D12D20];
  v67 = v9;
  v68 = v5;
  if (v13 == v14)
  {
    (*(v5 + 96))(v11, v4);
    v15 = *v11;
    v16 = v15;
    v17 = 1;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D12D28])
  {
    (*(v5 + 96))(v11, v4);
    v15 = *v11;
    v18 = v15;
    v17 = 0;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D12D10])
  {
    (*(v5 + 96))(v11, v4);
    v15 = *v11;
    v19 = v15;
    v17 = 64;
    goto LABEL_17;
  }

  if (v13 == *MEMORY[0x277D12D18])
  {
    (*(v5 + 96))(v11, v4);
    v15 = *v11;
    if (sub_20CDF89B0())
    {
      v20 = v15;
      v17 = 0x80;
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_27C811D20 != -1)
    {
      swift_once();
    }

    v21 = sub_20CE12CB4();
    __swift_project_value_buffer(v21, qword_27C8177C8);
    v22 = sub_20CE12C94();
    v23 = sub_20CE13CC4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v65 = v24;
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v24 = 136446210;
      v25 = sub_20CE14414();
      v27 = sub_20CD96DCC(v25, v26, aBlock);
      v5 = v68;

      v28 = v65;
      *(v65 + 4) = v27;
      v29 = v23;
      v30 = v28;
      _os_log_impl(&dword_20CD70000, v22, v29, "[%{public}s] Unhandled case of HTAudioDeviceStatus.", v28, 0xCu);
      v31 = v66;
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x20F314110](v31, -1, -1);
      MEMORY[0x20F314110](v30, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
  }

  v15 = 0;
  v17 = -64;
LABEL_17:
  v32 = *(v2 + 16);
  v33 = *(v2 + 24);
  sub_20CD996F0(v32, v33);
  v34 = sub_20CDFA084(v32, v33, v15, v17);
  sub_20CD99704(v15, v17);
  sub_20CD99704(v32, v33);
  if ((v34 & 1) == 0)
  {
    if (qword_27C811D20 != -1)
    {
      swift_once();
    }

    v35 = sub_20CE12CB4();
    v36 = __swift_project_value_buffer(v35, qword_27C8177C8);
    v37 = v67;
    v12(v67, a1, v4);
    v66 = v36;
    v38 = sub_20CE12C94();
    v39 = sub_20CE13CD4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock[0] = v65;
      *v40 = 136446722;
      v41 = sub_20CE14414();
      v43 = sub_20CD96DCC(v41, v42, aBlock);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_20CD96DCC(0xD00000000000001CLL, 0x800000020CE20580, aBlock);
      *(v40 + 22) = 2080;
      v44 = sub_20CE07A78();
      v46 = v45;
      (*(v68 + 8))(v37, v4);
      v47 = sub_20CD96DCC(v44, v46, aBlock);

      *(v40 + 24) = v47;
      _os_log_impl(&dword_20CD70000, v38, v39, "[%{public}s] %s called with new status:        %s.", v40, 0x20u);
      v48 = v65;
      swift_arrayDestroy();
      MEMORY[0x20F314110](v48, -1, -1);
      MEMORY[0x20F314110](v40, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v37, v4);
    }

    sub_20CD996F0(v15, v17);
    v49 = sub_20CE12C94();
    v50 = sub_20CE13CD4();
    sub_20CD99704(v15, v17);
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      aBlock[0] = v52;
      *v51 = 136446722;
      v53 = sub_20CE14414();
      v55 = sub_20CD96DCC(v53, v54, aBlock);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_20CD96DCC(0xD00000000000001CLL, 0x800000020CE20580, aBlock);
      *(v51 + 22) = 2080;
      v56 = sub_20CDF7BCC(v15, v17);
      v58 = sub_20CD96DCC(v56, v57, aBlock);

      *(v51 + 24) = v58;
      _os_log_impl(&dword_20CD70000, v49, v50, "[%{public}s] %s converted the new status into: %s.", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v52, -1, -1);
      MEMORY[0x20F314110](v51, -1, -1);
    }

    v59 = *(v2 + 16);
    *(v2 + 16) = v15;
    v60 = *(v2 + 24);
    *(v2 + 24) = v17;
    sub_20CD996F0(v15, v17);
    sub_20CD99704(v59, v60);
    v61 = *(v2 + 56);
    aBlock[4] = sub_20CDC16E0;
    aBlock[5] = v2;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20CDF91D0;
    aBlock[3] = &block_descriptor_10;
    v62 = _Block_copy(aBlock);

    [v61 notifyObservers_];
    _Block_release(v62);
  }

  return sub_20CD99704(v15, v17);
}

uint64_t sub_20CDF9A18()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_20CDF9A50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_20CDF9AA4()
{
  if (!qword_27C8121F0)
  {
    v0 = sub_20CE13B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8121F0);
    }
  }
}

uint64_t sub_20CDF9AF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_20CDF9B48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_20CDF9AF4(a1, a2);
  }

  return a1;
}

const char *CBProductIDToString(int a1)
{
  if (a1 > 21759)
  {
    if (a1 > 28943)
    {
      if (a1 <= 29714)
      {
        if (a1 == 28944)
        {
          return "AudioAccessory1,2";
        }

        if (a1 == 29455)
        {
          return "AppleTV11,1";
        }
      }

      else
      {
        switch(a1)
        {
          case 29715:
            return "AudioAccessory5,1";
          case 65533:
            return "HeGn";
          case 65534:
            return "ApGn";
        }
      }
    }

    else if (a1 <= 28419)
    {
      if (a1 == 21760)
      {
        return "Device1,21760";
      }

      if (a1 == 22034)
      {
        return "Device1,22034";
      }
    }

    else
    {
      switch(a1)
      {
        case 28420:
          return "AppleTV5,3";
        case 28936:
          return "AppleTV6,2";
        case 28943:
          return "AudioAccessory1,1";
      }
    }

    return "?";
  }

  if (a1 <= 8193)
  {
    switch(a1)
    {
      case 0:
        return "Invalid";
      case 614:
        return "ATVRemote1,1";
      case 621:
        return "ATVRemote1,2";
    }

    return "?";
  }

  switch(a1)
  {
    case 8194:
      result = "AirPods1,1";
      break;
    case 8195:
      result = "PowerBeats3,1";
      break;
    case 8197:
      result = "BeatsX1,1";
      break;
    case 8198:
      result = "BeatsSolo3,1";
      break;
    case 8201:
      result = "BeatsStudio3,2";
      break;
    case 8202:
      result = "Device1,8202";
      break;
    case 8203:
      result = "PowerbeatsPro1,1";
      break;
    case 8204:
      result = "BeatsSoloPro1,1";
      break;
    case 8205:
      result = "Powerbeats4,1";
      break;
    case 8206:
      result = "AirPodsPro1,1";
      break;
    case 8207:
      result = "AirPods1,3";
      break;
    case 8208:
      result = "Device1,8208";
      break;
    case 8209:
      result = "BeatsStudioBuds1,1";
      break;
    case 8210:
      result = "Device1,8210";
      break;
    case 8211:
      result = "Device1,8211";
      break;
    case 8212:
      result = "Device1,8212";
      break;
    case 8213:
      result = "Device1,8213";
      break;
    case 8214:
      result = "BeatsStudioBuds1,2";
      break;
    case 8215:
      result = "BeatsStudioPro1,1";
      break;
    case 8216:
      result = "Device1,8216";
      break;
    case 8217:
      result = "Device1,8217";
      break;
    case 8218:
      result = "Device1,8218";
      break;
    case 8219:
      result = "Device1,8219";
      break;
    case 8220:
      result = "Device1,8220";
      break;
    case 8221:
      result = "Powerb3,1";
      break;
    case 8222:
      result = "Device1,8222";
      break;
    case 8223:
      result = "Device1,8223";
      break;
    case 8224:
      result = "Device1,8224";
      break;
    case 8228:
      result = "Device1,8228";
      break;
    case 8229:
      result = "Device1,8229";
      break;
    case 8230:
      result = "Device1,8230";
      break;
    case 8231:
      result = "AirPods3,4";
      break;
    case 8232:
      result = "Device1,8232";
      break;
    case 8233:
      result = "Device1,8233";
      break;
    case 8239:
      result = "Device1,8239";
      break;
    default:
      return "?";
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HearingTestUI15DeviceCheckModeO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_20CDF9EF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 9))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_20CDF9F48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_20CDF9FAC(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = -64;
  }

  return result;
}

uint64_t sub_20CDFA084(void *a1, unsigned __int8 a2, void *a3, unsigned __int8 a4)
{
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 != 2)
    {
      if (a4 < 0xC0u || a3 || a4 != 192)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    if ((a4 & 0xC0) != 0x80)
    {
      goto LABEL_42;
    }

    v12 = [a1 identifier];
    if (v12)
    {
      v13 = v12;
      v14 = sub_20CE13954();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v25 = [a3 identifier];
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_26;
  }

  if (a2 >> 6)
  {
    if ((a4 & 0xC0) != 0x40)
    {
      goto LABEL_42;
    }

    v17 = [a1 identifier];
    if (v17)
    {
      v18 = v17;
      v14 = sub_20CE13954();
      v16 = v19;
    }

    else
    {
      v14 = 0;
      v16 = 0;
    }

    v25 = [a3 identifier];
    if (!v25)
    {
LABEL_35:
      if (v16)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

LABEL_26:
    v26 = v25;
    v27 = sub_20CE13954();
    v29 = v28;

    if (v16)
    {
      if (v29)
      {
        if (v14 != v27 || v16 != v29)
        {
          v31 = sub_20CE14284();

          return v31 & 1;
        }

        v30 = 1;
        return v30 & 1;
      }

      goto LABEL_41;
    }

    if (v29)
    {
      goto LABEL_41;
    }

LABEL_36:
    v30 = 1;
    return v30 & 1;
  }

  if (a4 >= 0x40u)
  {
LABEL_42:
    v30 = 0;
    return v30 & 1;
  }

  v7 = [a1 identifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_20CE13954();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v20 = [a3 identifier];
  if (!v20)
  {
    if (!v11)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  v21 = v20;
  v22 = sub_20CE13954();
  v24 = v23;

  if (!v11)
  {
    if (!v24)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

  if (!v24)
  {
LABEL_41:

    goto LABEL_42;
  }

  if (v9 == v22 && v11 == v24)
  {

LABEL_45:
    v30 = a4 ^ a2 ^ 1;
    return v30 & 1;
  }

  v33 = sub_20CE14284();

  v30 = 0;
  if (v33)
  {
    goto LABEL_45;
  }

  return v30 & 1;
}

uint64_t sub_20CDFA33C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_20CE139D4();

    return sub_20CE13A74();
  }

  return result;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_20CDFA3F0()
{
  result = qword_27C813580;
  if (!qword_27C813580)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C813580);
  }

  return result;
}

uint64_t sub_20CDFA454(uint64_t a1)
{
  sub_20CDFA528(0, &qword_27C812CA0, sub_20CDEBEC8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20CDFA4E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_20CDFA528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDFA58C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = HKLogHearingCategory();
  v10 = objc_allocWithZone(MEMORY[0x277CCD738]);
  v11 = sub_20CE13914();
  v12 = [v10 initWithName:v11 loggingCategory:v9];

  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  *(v4 + 48) = a2;
  *(v4 + 56) = v12;
  *(v4 + 64) = a1;
  *(v4 + 16) = 0;
  *(v4 + 24) = -64;
  v13 = a2;

  sub_20CDF8484();
  return v4;
}

uint64_t sub_20CDFA688@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result == 0xD000000000000020 && 0x800000020CE1A610 == a2;
  if (v4 || (v6 = result, result = sub_20CE14284(), (result & 1) != 0))
  {
    v7 = 0;
  }

  else if (v6 == 0xD00000000000001CLL && 0x800000020CE1A5C0 == a2 || (result = sub_20CE14284(), (result & 1) != 0))
  {
    v7 = 3;
  }

  else if (v6 == 0xD000000000000026 && 0x800000020CE1A5E0 == a2 || (result = sub_20CE14284(), (result & 1) != 0))
  {
    v7 = 2;
  }

  else
  {
    v7 = 4;
    if (v6 != 0xD000000000000022 || 0x800000020CE1A640 != a2)
    {
      result = sub_20CE14284();
      if (result)
      {
        v7 = 4;
      }

      else
      {
        v7 = 8;
      }
    }
  }

  *a3 = v7;
  return result;
}

void sub_20CDFA7C0(uint64_t a1, unint64_t a2)
{
  v32[1] = swift_getObjectType();
  v5 = sub_20CE136C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CE136E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDFA688(a1, a2, aBlock);
  v15 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 8)
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v16 = sub_20CE12CB4();
    __swift_project_value_buffer(v16, qword_27C8177B0);

    v33 = sub_20CE12C94();
    v17 = sub_20CE13CB4();

    if (os_log_type_enabled(v33, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136446466;
      v20 = sub_20CE14414();
      v22 = sub_20CD96DCC(v20, v21, aBlock);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_20CD96DCC(a1, a2, aBlock);
      _os_log_impl(&dword_20CD70000, v33, v17, "[%{public}s] Could not interpret interruptType for keyPath %s)", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v19, -1, -1);
      MEMORY[0x20F314110](v18, -1, -1);
    }

    else
    {
      v28 = v33;
    }
  }

  else
  {
    v23 = *&v2[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue];
    if (v23)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v2;
      *(v24 + 24) = v15;
      v36 = sub_20CDFBC64;
      v37 = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CDB3E40;
      v35 = &block_descriptor_21;
      v25 = _Block_copy(aBlock);
      v26 = v23;
      v27 = v2;
      sub_20CE136D4();
      v39[0] = MEMORY[0x277D84F90];
      sub_20CDFBC70(&qword_27C812AB8, MEMORY[0x277D85198]);
      sub_20CDFBC00(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_20CDD8CC8();
      sub_20CE14044();
      MEMORY[0x20F313260](0, v14, v9, v25);
      _Block_release(v25);

      (*(v6 + 8))(v9, v5);
      (*(v11 + 8))(v14, v10);
    }

    else
    {
      v29 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
      swift_beginAccess();
      sub_20CDFBA58(&v2[v29], aBlock);
      if (v35)
      {
        sub_20CD7C388(aBlock, v39);
        sub_20CDFBB50(aBlock);
        v30 = v40;
        v31 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        v38 = v15;
        (*(v31 + 8))(&v38, v30, v31);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
      }

      else
      {
        sub_20CDFBB50(aBlock);
      }
    }
  }
}

uint64_t sub_20CDFACE4(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
  swift_beginAccess();
  sub_20CDFBA58(a1 + v4, v12);
  if (!v13)
  {
    return sub_20CDFBB50(v12);
  }

  sub_20CD7C388(v12, v9);
  sub_20CDFBB50(v12);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = a2;
  (*(v6 + 8))(&v8, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_20CDFADA8(uint64_t a1, unint64_t a2)
{
  v32[1] = swift_getObjectType();
  v5 = sub_20CE136C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20CE136E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CDFA688(a1, a2, aBlock);
  v15 = aBlock[0];
  if (LOBYTE(aBlock[0]) == 8)
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v16 = sub_20CE12CB4();
    __swift_project_value_buffer(v16, qword_27C8177B0);

    v33 = sub_20CE12C94();
    v17 = sub_20CE13CB4();

    if (os_log_type_enabled(v33, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      aBlock[0] = v19;
      *v18 = 136446466;
      v20 = sub_20CE14414();
      v22 = sub_20CD96DCC(v20, v21, aBlock);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_20CD96DCC(a1, a2, aBlock);
      _os_log_impl(&dword_20CD70000, v33, v17, "[%{public}s] Could not interpret interruptType for keyPath %s)", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x20F314110](v19, -1, -1);
      MEMORY[0x20F314110](v18, -1, -1);
    }

    else
    {
      v28 = v33;
    }
  }

  else
  {
    v23 = *&v2[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue];
    if (v23)
    {
      v24 = swift_allocObject();
      *(v24 + 16) = v2;
      *(v24 + 24) = v15;
      v36 = sub_20CDFBBDC;
      v37 = v24;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CDB3E40;
      v35 = &block_descriptor_11;
      v25 = _Block_copy(aBlock);
      v26 = v23;
      v27 = v2;
      sub_20CE136D4();
      v39[0] = MEMORY[0x277D84F90];
      sub_20CDFBC70(&qword_27C812AB8, MEMORY[0x277D85198]);
      sub_20CDFBC00(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_20CDD8CC8();
      sub_20CE14044();
      MEMORY[0x20F313260](0, v14, v9, v25);
      _Block_release(v25);

      (*(v6 + 8))(v9, v5);
      (*(v11 + 8))(v14, v10);
    }

    else
    {
      v29 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
      swift_beginAccess();
      sub_20CDFBA58(&v2[v29], aBlock);
      if (v35)
      {
        sub_20CD7C388(aBlock, v39);
        sub_20CDFBB50(aBlock);
        v30 = v40;
        v31 = v41;
        __swift_project_boxed_opaque_existential_1(v39, v40);
        v38 = v15;
        (*(v31 + 16))(&v38, v30, v31);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
      }

      else
      {
        sub_20CDFBB50(aBlock);
      }
    }
  }
}

uint64_t sub_20CDFB2CC(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer;
  swift_beginAccess();
  sub_20CDFBA58(a1 + v4, v12);
  if (!v13)
  {
    return sub_20CDFBB50(v12);
  }

  sub_20CD7C388(v12, v9);
  sub_20CDFBB50(v12);
  v5 = v10;
  v6 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = a2;
  (*(v6 + 16))(&v8, v5, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

void sub_20CDFB390(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (!a2)
  {
    v17 = 0;
    goto LABEL_11;
  }

  v11 = *&v5[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_userDefaultsKeyPathsToObserve];
  v29[0] = a1;
  v29[1] = a2;
  MEMORY[0x28223BE20](a1);
  v26[2] = v29;
  if ((sub_20CDFB9AC(sub_20CDFBCB8, v26, v12) & 1) == 0)
  {
    v17 = sub_20CE13914();
LABEL_11:
    sub_20CD8CF38(a3, v29);
    v18 = v30;
    if (v30)
    {
      v19 = __swift_project_boxed_opaque_existential_1(v29, v30);
      v20 = *(v18 - 8);
      v21 = *(v20 + 64);
      MEMORY[0x28223BE20](v19);
      v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v23);
      v24 = sub_20CE14274();
      (*(v20 + 8))(v23, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      if (!a4)
      {
LABEL_14:
        v25 = type metadata accessor for MockInterruptionProvider();
        v28.receiver = v5;
        v28.super_class = v25;
        objc_msgSendSuper2(&v28, sel_observeValueForKeyPath_ofObject_change_context_, v17, v24, a4, a5);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v24 = 0;
      if (!a4)
      {
        goto LABEL_14;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_20CDFBC70(&qword_27C811FC8, type metadata accessor for NSKeyValueChangeKey);
    a4 = sub_20CE13874();
    goto LABEL_14;
  }

  if (a4)
  {
    if (a4[2] && (v13 = sub_20CD8B0EC(*MEMORY[0x277CCA2F0]), (v14 & 1) != 0) && (sub_20CD8A98C(a4[7] + 32 * v13, v29), sub_20CD8E798(), (swift_dynamicCast() & 1) != 0) && (v15 = v27, v16 = [v27 BOOLValue], v15, (v16 & 1) != 0))
    {
      sub_20CDFA7C0(a1, a2);
    }

    else
    {
      sub_20CDFADA8(a1, a2);
    }
  }
}

void sub_20CDFB7DC()
{
  *&v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_userDefaultsKeyPathsToObserve] = &unk_2823BAFC8;
  v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v2 = sub_20CE13914();
  v3 = [v1 initWithSuiteName_];

  if (v3)
  {
    *&v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_hearingTestUserDefaults] = v3;
    v4 = &v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observer];
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 4) = 0;
    *&v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_observerQueue] = 0;
    v0[OBJC_IVAR____TtC13HearingTestUI24MockInterruptionProvider_isObservingUserDefaults] = 0;
    v5.receiver = v0;
    v5.super_class = type metadata accessor for MockInterruptionProvider();
    objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }
}

id sub_20CDFB8E8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MockInterruptionProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20CDFB9AC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_20CDFBA58(uint64_t a1, uint64_t a2)
{
  sub_20CDFBC00(0, &qword_27C812CB8, sub_20CDFBAEC, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_20CDFBAEC()
{
  result = qword_27C812CC0;
  if (!qword_27C812CC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27C812CC0);
  }

  return result;
}

uint64_t sub_20CDFBB50(uint64_t a1)
{
  sub_20CDFBC00(0, &qword_27C812CB8, sub_20CDFBAEC, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_20CDFBC00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_20CDFBC70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CDFBCB8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_20CE14284() & 1;
  }
}

uint64_t sub_20CDFBD18(void *a1, void *a2, uint64_t a3)
{
  sub_20CDFC314(a1, a2, a3);
  v5 = v4;

  return v5;
}

void OBWelcomeController.addHostedContent<A>(contentBuilder:)(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_20CE13284();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v10 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  sub_20CE13204();
  a1();
  v11 = sub_20CE131E4();
  sub_20CE13274();
  sub_20CE131D4();
  v12 = v11;
  [v4 addChildViewController_];
  v13 = [v4 contentView];
  v14 = [v12 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v13 addSubview_];

  v16 = [v12 view];
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = [objc_opt_self() clearColor];
  [v16 setBackgroundColor_];

  v18 = [v12 view];
  if (!v18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];

  v19 = [v12 view];
  if (!v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = [v19 topAnchor];

  v21 = [v4 contentView];
  v22 = [v21 layoutMarginsGuide];

  v23 = [v22 topAnchor];
  v24 = [v20 constraintEqualToAnchor_];

  [v24 setActive_];
  v25 = [v12 view];

  if (!v25)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v26 = [v25 bottomAnchor];

  v27 = [v4 contentView];
  v28 = [v27 layoutMarginsGuide];

  v29 = [v28 bottomAnchor];
  v30 = [v26 constraintEqualToAnchor_];

  [v30 setActive_];
  v31 = [v12 view];

  if (!v31)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v32 = [v31 leadingAnchor];

  v33 = [v4 view];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = v33;
  v35 = [v33 layoutMarginsGuide];

  v36 = [v35 leadingAnchor];
  v37 = [v32 constraintEqualToAnchor_];

  [v37 setActive_];
  v38 = [v12 view];

  if (!v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = [v38 trailingAnchor];

  v40 = [v4 view];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = [v40 layoutMarginsGuide];

  v43 = [v42 trailingAnchor];
  v44 = [v39 constraintEqualToAnchor_];

  [v44 setActive_];
  [v12 didMoveToParentViewController_];
  v45 = [v12 view];

  if (v45)
  {

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_20CDFC314(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_20CE13284();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = type metadata accessor for ClassificationInfoView();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  sub_20CDF18AC(a2, a3, &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CDFC8D4();
  v12 = objc_allocWithZone(v11);
  v13 = sub_20CE131F4();
  sub_20CE13274();
  sub_20CE131D4();
  v14 = v13;
  [a1 addChildViewController_];
  v15 = [a1 contentView];
  v16 = [v14 view];
  if (!v16)
  {
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v15 addSubview_];

  v18 = [v14 view];
  if (!v18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v19 = [objc_opt_self() clearColor];
  [v18 setBackgroundColor_];

  v20 = [v14 view];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v20 setTranslatesAutoresizingMaskIntoConstraints_];

  v21 = [v14 view];
  if (!v21)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22 = [v21 topAnchor];

  v23 = [a1 contentView];
  v24 = [v23 layoutMarginsGuide];

  v25 = [v24 topAnchor];
  v26 = [v22 constraintEqualToAnchor_];

  [v26 setActive_];
  v27 = [v14 view];

  if (!v27)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v28 = [v27 bottomAnchor];

  v29 = [a1 contentView];
  v30 = [v29 layoutMarginsGuide];

  v31 = [v30 bottomAnchor];
  v32 = [v28 constraintEqualToAnchor_];

  [v32 setActive_];
  v33 = [v14 view];

  if (!v33)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = [v33 leadingAnchor];

  v35 = [a1 view];
  if (!v35)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  v37 = [v35 layoutMarginsGuide];

  v38 = [v37 leadingAnchor];
  v39 = [v34 constraintEqualToAnchor_];

  [v39 setActive_];
  v40 = [v14 view];

  if (!v40)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = [v40 trailingAnchor];

  v42 = [a1 view];
  if (!v42)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = v42;
  v44 = [v42 layoutMarginsGuide];

  v45 = [v44 trailingAnchor];
  v46 = [v41 constraintEqualToAnchor_];

  [v46 setActive_];
  [v14 didMoveToParentViewController_];
  v47 = [v14 view];

  if (v47)
  {

    return;
  }

LABEL_21:
  __break(1u);
}

void sub_20CDFC8D4()
{
  if (!qword_27C8135D0)
  {
    type metadata accessor for ClassificationInfoView();
    sub_20CDFC938();
    v0 = sub_20CE13204();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8135D0);
    }
  }
}

unint64_t sub_20CDFC938()
{
  result = qword_27C8135D8;
  if (!qword_27C8135D8)
  {
    type metadata accessor for ClassificationInfoView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8135D8);
  }

  return result;
}

void sub_20CDFC994(void **a1)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = sub_20CE12644();
      (*(*(v8 - 8) + 8))(a1, v8);
      v4 = &qword_27C8131D8;
      v5 = &type metadata for ResultsProcessor.Partial;
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        return;
      }

      v6 = sub_20CE12644();
      (*(*(v6 - 8) + 8))(a1, v6);
      v4 = &qword_27C8131D0;
      v5 = &type metadata for ResultsProcessor.Complete;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return;
    }

    v3 = sub_20CE12644();
    (*(*(v3 - 8) + 8))(a1, v3);
    v4 = &qword_27C812EB8;
    v5 = &type metadata for ResultsProcessor.Empty;
LABEL_13:
    sub_20CDFF32C(0, v4, v5, sub_20CDFCB50);
    v10 = v9;
    v11 = *(a1 + v9[7]);

    v12 = *(a1 + v10[8]);

    v13 = *(a1 + v10[9]);

    v14 = *(a1 + v10[10]);

    v15 = *(a1 + v10[11]);

    return;
  }

  v7 = *a1;
}

char *sub_20CDFCB68(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v23 = sub_20CE12644();
      (*(*(v23 - 8) + 32))(a1, a2, v23);
      sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      *&a1[v24[7]] = *&a2[v24[7]];
      *&a1[v24[8]] = *&a2[v24[8]];
      *&a1[v24[9]] = *&a2[v24[9]];
      *&a1[v24[10]] = *&a2[v24[10]];
      *&a1[v24[11]] = *&a2[v24[11]];
      v25 = v24[12];
      v26 = &a1[v25];
      v27 = &a2[v25];
      v26[8] = v27[8];
      *v26 = *v27;
      v28 = v24[13];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v29[8] = v30[8];
      *v29 = *v30;
      goto LABEL_7;
    case 2:
      v15 = sub_20CE12644();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
      *&a1[v16[7]] = *&a2[v16[7]];
      *&a1[v16[8]] = *&a2[v16[8]];
      *&a1[v16[9]] = *&a2[v16[9]];
      *&a1[v16[10]] = *&a2[v16[10]];
      *&a1[v16[11]] = *&a2[v16[11]];
      v17 = v16[12];
      v18 = &a1[v17];
      v19 = &a2[v17];
      v18[8] = v19[8];
      *v18 = *v19;
      v20 = v16[13];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v21[8] = v22[8];
      *v21 = *v22;
      goto LABEL_7;
    case 1:
      v7 = sub_20CE12644();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
      *&a1[v8[7]] = *&a2[v8[7]];
      *&a1[v8[8]] = *&a2[v8[8]];
      *&a1[v8[9]] = *&a2[v8[9]];
      *&a1[v8[10]] = *&a2[v8[10]];
      *&a1[v8[11]] = *&a2[v8[11]];
      v9 = v8[12];
      v10 = &a1[v9];
      v11 = &a2[v9];
      v10[8] = v11[8];
      *v10 = *v11;
      v12 = v8[13];
      v13 = &a1[v12];
      v14 = &a2[v12];
      v13[8] = v14[8];
      *v13 = *v14;
LABEL_7:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v32 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v32);
}

char *sub_20CDFCEC0(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_20CDFD228(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 3:
      v23 = sub_20CE12644();
      (*(*(v23 - 8) + 32))(a1, a2, v23);
      sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      *&a1[v24[7]] = *&a2[v24[7]];
      *&a1[v24[8]] = *&a2[v24[8]];
      *&a1[v24[9]] = *&a2[v24[9]];
      *&a1[v24[10]] = *&a2[v24[10]];
      *&a1[v24[11]] = *&a2[v24[11]];
      v25 = v24[12];
      v26 = &a1[v25];
      v27 = &a2[v25];
      v26[8] = v27[8];
      *v26 = *v27;
      v28 = v24[13];
      v29 = &a1[v28];
      v30 = &a2[v28];
      v29[8] = v30[8];
      *v29 = *v30;
      goto LABEL_8;
    case 2:
      v15 = sub_20CE12644();
      (*(*(v15 - 8) + 32))(a1, a2, v15);
      sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
      *&a1[v16[7]] = *&a2[v16[7]];
      *&a1[v16[8]] = *&a2[v16[8]];
      *&a1[v16[9]] = *&a2[v16[9]];
      *&a1[v16[10]] = *&a2[v16[10]];
      *&a1[v16[11]] = *&a2[v16[11]];
      v17 = v16[12];
      v18 = &a1[v17];
      v19 = &a2[v17];
      v18[8] = v19[8];
      *v18 = *v19;
      v20 = v16[13];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v21[8] = v22[8];
      *v21 = *v22;
      goto LABEL_8;
    case 1:
      v7 = sub_20CE12644();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
      *&a1[v8[7]] = *&a2[v8[7]];
      *&a1[v8[8]] = *&a2[v8[8]];
      *&a1[v8[9]] = *&a2[v8[9]];
      *&a1[v8[10]] = *&a2[v8[10]];
      *&a1[v8[11]] = *&a2[v8[11]];
      v9 = v8[12];
      v10 = &a1[v9];
      v11 = &a2[v9];
      v10[8] = v11[8];
      *v10 = *v11;
      v12 = v8[13];
      v13 = &a1[v12];
      v14 = &a2[v12];
      v13[8] = v14[8];
      *v13 = *v14;
LABEL_8:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v32 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v32);
}

uint64_t sub_20CDFD228(uint64_t a1)
{
  v2 = type metadata accessor for ResultsProcessor();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ResultsProcessor()
{
  result = qword_27C8135E0;
  if (!qword_27C8135E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20CDFD2E4()
{
  sub_20CDFF32C(319, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_20CDFF32C(319, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_20CDFF32C(319, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initEnumMetadataMultiPayload();
      }
    }
  }
}

uint64_t sub_20CDFD494()
{
  result = sub_20CE12644();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_20CDFD540(uint64_t a1, int *a2)
{
  v4 = sub_20CE12644();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = *(a1 + a2[7]);

  v6 = *(a1 + a2[8]);

  v7 = *(a1 + a2[9]);

  v8 = *(a1 + a2[10]);

  v9 = *(a1 + a2[11]);
}

uint64_t sub_20CDFD5E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20CE12644();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *v10 = *v11;
  *(v10 + 8) = *(v11 + 8);
  v12 = a3[13];
  v13 = a1 + v12;
  v14 = a2 + v12;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  return a1;
}

uint64_t sub_20CDFD6BC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_20CE12644();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[7];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[8];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[9];
  v12 = *(a1 + v11);
  *(a1 + v11) = *(a2 + v11);

  v13 = a3[10];
  v14 = *(a1 + v13);
  *(a1 + v13) = *(a2 + v13);

  v15 = a3[11];
  v16 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  v17 = a3[12];
  v18 = a3[13];
  v19 = a1 + v17;
  v20 = a2 + v17;
  *v19 = *v20;
  *(v19 + 8) = *(v20 + 8);
  v21 = a1 + v18;
  v22 = a2 + v18;
  *v21 = *v22;
  *(v21 + 8) = *(v22 + 8);
  return a1;
}

void sub_20CDFD7EC(uint64_t a1)
{
  v2 = v1;
  sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
  v5 = v4;
  v6 = *(*(v4 - 1) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v72 - v7 + 16;
  sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
  v10 = v9;
  v11 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v72 - v12 + 16;
  v14 = type metadata accessor for ResultsProcessor();
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v72 - v20 + 16;
  MEMORY[0x28223BE20](v19);
  v23 = (v72 - v22 + 16);
  sub_20CDFE150(v2, v72 - v22 + 16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v25 = *v23;
      if (qword_27C811D00 != -1)
      {
        swift_once();
      }

      v26 = sub_20CE12CB4();
      __swift_project_value_buffer(v26, qword_27C817768);
      v27 = sub_20CE12C94();
      v28 = sub_20CE13CB4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v72[0] = v30;
        *v29 = 136315138;
        *(v29 + 4) = sub_20CD96DCC(0x28737365636F7270, 0xEB00000000293A5FLL, v72);
        _os_log_impl(&dword_20CD70000, v27, v28, "[ResultsProcessor] Unexpected call to %s. Error -> Error.", v29, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v30);
        MEMORY[0x20F314110](v30, -1, -1);
        MEMORY[0x20F314110](v29, -1, -1);
      }

      swift_willThrow();
      goto LABEL_31;
    }

    sub_20CDFEE48(v23, v13, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty);
    sub_20CDFE1B4(v21);
    swift_storeEnumTagMultiPayload();
    sub_20CDFE150(v21, v2);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v48 = sub_20CE12CB4();
    __swift_project_value_buffer(v48, qword_27C817768);
    v32 = sub_20CE12C94();
    v33 = sub_20CE13CD4();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_35;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "[ResultsProcessor] Empty -> Partial.";
LABEL_27:
    _os_log_impl(&dword_20CD70000, v32, v33, v35, v34, 2u);
    MEMORY[0x20F314110](v34, -1, -1);
LABEL_35:

    return;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_20CDFEE48(v23, v8, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial);
    sub_20CDFE680(a1, v18);
    swift_storeEnumTagMultiPayload();
    sub_20CDFE150(v18, v2);
    if (qword_27C811D00 != -1)
    {
      swift_once();
    }

    v31 = sub_20CE12CB4();
    __swift_project_value_buffer(v31, qword_27C817768);
    v32 = sub_20CE12C94();
    v33 = sub_20CE13CD4();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_35;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "[ResultsProcessor] Partial -> Complete.";
    goto LABEL_27;
  }

  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v36 = sub_20CE12CB4();
  __swift_project_value_buffer(v36, qword_27C817768);
  v37 = sub_20CE12C94();
  v38 = sub_20CE13CB4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v72[0] = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_20CD96DCC(0x28737365636F7270, 0xEB00000000293A5FLL, v72);
    _os_log_impl(&dword_20CD70000, v37, v38, "[ResultsProcessor] Unexpected call to %s. Complete -> Error.", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    MEMORY[0x20F314110](v40, -1, -1);
    MEMORY[0x20F314110](v39, -1, -1);
  }

  sub_20CDFEDF4();
  v25 = swift_allocError();
  swift_willThrow();
  v41 = swift_getEnumCaseMultiPayload();
  if (v41 > 1)
  {
    if (v41 == 2)
    {
      v42 = sub_20CE12644();
      (*(*(v42 - 8) + 8))(v23, v42);
      v43 = *(v23 + v5[7]);

      v44 = *(v23 + v5[8]);

      v45 = *(v23 + v5[9]);

      v46 = *(v23 + v5[10]);

      v47 = v5[11];
    }

    else
    {
      v54 = sub_20CE12644();
      (*(*(v54 - 8) + 8))(v23, v54);
      sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
      v56 = v55;
      v57 = *(v23 + v55[7]);

      v58 = *(v23 + v56[8]);

      v59 = *(v23 + v56[9]);

      v60 = *(v23 + v56[10]);

      v47 = v56[11];
    }
  }

  else
  {
    if (!v41)
    {
      sub_20CDFD228(v23);
      goto LABEL_31;
    }

    v49 = sub_20CE12644();
    (*(*(v49 - 8) + 8))(v23, v49);
    v50 = *(v23 + v10[7]);

    v51 = *(v23 + v10[8]);

    v52 = *(v23 + v10[9]);

    v53 = *(v23 + v10[10]);

    v47 = v10[11];
  }

  v61 = *(v23 + v47);

LABEL_31:
  *v2 = v25;
  swift_storeEnumTagMultiPayload();
  v62 = v25;
  if (qword_27C811D00 != -1)
  {
    swift_once();
  }

  v63 = sub_20CE12CB4();
  __swift_project_value_buffer(v63, qword_27C817768);
  v64 = v25;
  v32 = sub_20CE12C94();
  v65 = sub_20CE13CB4();

  if (os_log_type_enabled(v32, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v72[0] = v67;
    *v66 = 136315394;
    *(v66 + 4) = sub_20CD96DCC(0x28737365636F7270, 0xEB00000000293A5FLL, v72);
    *(v66 + 12) = 2080;
    swift_getErrorValue();
    v68 = sub_20CE14324();
    v70 = sub_20CD96DCC(v68, v69, v72);

    *(v66 + 14) = v70;
    _os_log_impl(&dword_20CD70000, v32, v65, "[ResultsProcessor] Error in %s: %s", v66, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v67, -1, -1);
    MEMORY[0x20F314110](v66, -1, -1);

    goto LABEL_35;
  }
}

uint64_t sub_20CDFE150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResultsProcessor();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20CDFE1B4@<X0>(uint64_t a1@<X8>)
{
  sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
  v4 = v3;
  v5 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v46 - v6;
  v8 = sub_20CE12644();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE12674();
  v13 = sub_20CE12664();
  sub_20CE12684();
  v15 = v14;
  v16 = Array<A>.asHKAudiogramSensitivityPoints.getter(v13);
  if (v1)
  {
    v17 = *(v9 + 8);
    v17(v12, v8);

    v20 = v47;
    v17(v47, v8);
    sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
    v22 = v21;
    v23 = *&v20[v21[7]];

    v24 = *&v20[v22[8]];

    v25 = *&v20[v22[9]];

    v26 = *&v20[v22[10]];

    v27 = *&v20[v22[11]];
  }

  else
  {
    v18 = v16;
    v19 = Array<A>.asHKAudiogramSensitivityPoints.getter(MEMORY[0x277D84F90]);
    v46[2] = v18;
    v46[3] = v19;
    v48 = v13;

    sub_20CDE50F0(MEMORY[0x277D84F90]);
    v46[1] = Array<A>.asHKAudiogramSensitivityPoints.getter(v48);

    v29 = v7;
    v30 = v7;
    v31 = v8;
    (*(v9 + 16))(v30, v12, v8);
    *&v29[v4[7]] = v13;
    *&v29[v4[8]] = MEMORY[0x277D84F90];

    v48 = sub_20CDFF1E0(v32);
    sub_20CDFEEC8(&v48);

    *&v29[v4[9]] = v48;
    v33 = &v29[v4[12]];
    *v33 = v15;
    v33[8] = 0;
    v34 = &v29[v4[13]];
    *v34 = 0;
    v34[8] = 1;

    v48 = sub_20CDFF1E0(v35);
    sub_20CDFEEC8(&v48);

    *v4[10] = v48;

    v48 = sub_20CDFF1E0(v36);
    sub_20CDFEEC8(&v48);
    v37 = *(v9 + 8);
    v37(v12, v8);

    *v4[11] = v48;
    sub_20CDFEE48(0, a1, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial);
    v38 = v47;
    v37(v47, v31);
    sub_20CDFF32C(0, &qword_27C812EB8, &type metadata for ResultsProcessor.Empty, sub_20CDFCB50);
    v40 = v39;
    v41 = *&v38[v39[7]];

    v42 = *&v38[v40[8]];

    v43 = *&v38[v40[9]];

    v44 = *&v38[v40[10]];

    v45 = *&v38[v40[11]];
  }
}

uint64_t sub_20CDFE680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  sub_20CDFF32C(0, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete, sub_20CDFCB50);
  v4 = v3;
  v5 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v64 = v63 - v6;
  v7 = sub_20CE12644();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v63 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v63 - v17;
  MEMORY[0x28223BE20](v16);
  v73 = v63 - v19;
  v70 = a1;
  sub_20CE12674();
  (*(v8 + 32))(v15, v18, v7);
  v20 = *(v8 + 88);
  v74 = v7;
  v21 = v20(v15, v7);
  v22 = *MEMORY[0x277D12C48];
  v23 = *MEMORY[0x277D12C50];
  v24 = v21 == *MEMORY[0x277D12C48] || v21 == v23;
  v25 = MEMORY[0x277D12C58];
  v66 = v4;
  if (v24)
  {
    goto LABEL_6;
  }

  if (v21 != *MEMORY[0x277D12C58])
  {
    if (v21 != *MEMORY[0x277D12C40])
    {
      if (v21 == *MEMORY[0x277D12C60])
      {
        v26 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_9;
      }

      (*(v8 + 8))(v15, v74);
    }

LABEL_6:
    v68 = 0;
    goto LABEL_10;
  }

  v26 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_9:
  v68 = v26;
LABEL_10:
  v27 = v74;
  v67 = *(v8 + 16);
  v67(v12, v72, v74);
  v28 = v20(v12, v27);
  v29 = v28 == v22 || v28 == v23;
  v69 = v8;
  if (v29)
  {
    v30 = 0;
    v31 = v72;
    goto LABEL_25;
  }

  v31 = v72;
  if (v28 == *v25)
  {
    goto LABEL_27;
  }

  if (v28 != *MEMORY[0x277D12C40])
  {
    if (v28 == *MEMORY[0x277D12C60])
    {
      v30 = 0x7FFFFFFFFFFFFFFELL;
      goto LABEL_25;
    }

    (*(v8 + 8))(v12, v74);
  }

  v30 = 0;
LABEL_25:
  if (v30 < v68)
  {
    sub_20CE12674();
    goto LABEL_28;
  }

LABEL_27:
  v67(v73, v31, v74);
LABEL_28:
  sub_20CDFF32C(0, &qword_27C8131D8, &type metadata for ResultsProcessor.Partial, sub_20CDFCB50);
  v33 = v32;
  v34 = *(v31 + v32[7]);

  v35 = sub_20CE12664();
  v36 = (v31 + v33[12]);
  v37 = *v36;
  v38 = *(v36 + 8);
  sub_20CE12684();
  v40 = v39;
  v41 = v71;
  v42 = Array<A>.asHKAudiogramSensitivityPoints.getter(v34);
  if (v41)
  {
    v43 = *(v69 + 8);
    v44 = v74;
    v43(v73, v74);

    v43(v31, v44);
  }

  else
  {
    v71 = v37;
    v72 = v42;
    LODWORD(v70) = v38;
    v68 = Array<A>.asHKAudiogramSensitivityPoints.getter(v35);
    v75 = v34;

    sub_20CDE50F0(v45);
    v46 = Array<A>.asHKAudiogramSensitivityPoints.getter(v75);
    v47 = v69;
    v63[1] = v46;

    v53 = v64;
    v67(v64, v73, v74);
    v54 = v66;
    *&v53[v66[7]] = v34;
    *&v53[v54[8]] = v35;

    v75 = sub_20CDFF1E0(v55);
    sub_20CDFEEC8(&v75);

    *&v53[v54[9]] = v75;
    v56 = &v53[v54[12]];
    *v56 = v71;
    v56[8] = v70;
    v57 = &v53[v54[13]];
    *v57 = v40;
    v57[8] = 0;

    v75 = sub_20CDFF1E0(v58);
    sub_20CDFEEC8(&v75);

    *&v53[v54[10]] = v75;

    v75 = sub_20CDFF1E0(v59);
    sub_20CDFEEC8(&v75);
    v60 = *(v47 + 8);
    v61 = v74;
    v60(v73, v74);

    v62 = v65;
    *v66[11] = v75;
    sub_20CDFEE48(0, v62, &qword_27C8131D0, &type metadata for ResultsProcessor.Complete);
    v60(v31, v61);
  }

  v48 = *(v31 + v33[8]);

  v49 = *(v31 + v33[9]);

  v50 = *(v31 + v33[10]);

  v51 = *(v31 + v33[11]);
}

void *sub_20CDFED50(uint64_t a1, uint64_t a2)
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

  sub_20CDFF32C(0, &qword_27C812230, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_20CDFEDF4()
{
  result = qword_27C813670;
  if (!qword_27C813670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813670);
  }

  return result;
}

uint64_t sub_20CDFEE48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_20CDFF32C(0, a3, a4, sub_20CDFCB50);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_20CDFEEC8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_20CDFF274(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_20CDFEF44(v6);
  return sub_20CE14144();
}

void sub_20CDFEF44(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20CE14254();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20CDFF288();
        v6 = sub_20CE13AE4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_20CD87BF8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20CD87A4C(0, v2, 1, a1);
  }
}

uint64_t sub_20CDFF048(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20CDFF0D4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_20CDFF0E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_20CDFF2D4();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_20CDFF1E0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_20CE141C4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20CDFED50(v3, 0);
  sub_20CDE5454((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_20CDFF288()
{
  result = qword_27C812330;
  if (!qword_27C812330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C812330);
  }

  return result;
}

void sub_20CDFF2D4()
{
  if (!qword_27C812340)
  {
    sub_20CD8A930();
    v0 = sub_20CE14264();
    if (!v1)
    {
      atomic_store(v0, &qword_27C812340);
    }
  }
}

void sub_20CDFF32C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_20CDFF3C0()
{
  result = qword_27C813678;
  if (!qword_27C813678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C813678);
  }

  return result;
}

uint64_t sub_20CDFF424(uint64_t a1)
{
  v2[2] = a1;
  v3 = type metadata accessor for PreTestError();
  v2[3] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v1;
  v2[4] = v5;
  v2[5] = v6;

  return MEMORY[0x2822009F8](sub_20CDFF4BC, 0, 0);
}

uint64_t sub_20CDFF4BC()
{
  v1 = v0[5];
  if (sub_20CE129D4())
  {
    v4 = v0[3];
    v5 = v0[4];
    v6 = v0[2];
    *v5 = v2;
    v5[1] = v3;
    swift_storeEnumTagMultiPayload();
    sub_20CD99698();
    swift_willThrowTypedImpl();
    sub_20CD99634(v5, v6);
  }

  else
  {
    v8 = v0[4];
  }

  v7 = v0[1];

  return v7();
}

id sub_20CDFF5C8()
{
  _s24HearingTestUIBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_27C8179E8 = result;
  return result;
}

uint64_t HTUINoiseView.Model.__allocating_init(mode:samples:)(_BYTE *a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  LOBYTE(a1) = *a1;
  sub_20CE12B24();
  *(v7 + 16) = a1;
  v8 = type metadata accessor for NoiseWaveformView.Model();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 32) = MEMORY[0x277D84F90];
  sub_20CE12B24();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  sub_20CDAC7A8();
  *(v7 + 24) = v11;
  return v7;
}

uint64_t sub_20CDFF6C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CE01450(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model);
  sub_20CE12AF4();

  *a2 = *(v3 + 24);
}

uint64_t sub_20CDFF774(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_20CDAC38C(v4);
}

double HTUINoiseView.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_20CE131B4();
  v20 = 0;
  sub_20CDFF91C(v3, &v12);
  v25 = v16;
  v26 = v17;
  v27[0] = v18[0];
  *(v27 + 9) = *(v18 + 9);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v28[5] = v17;
  v29[0] = v18[0];
  *(v29 + 9) = *(v18 + 9);
  sub_20CE014F4(&v21, &v11, sub_20CE00C48);
  sub_20CE0155C(v28, sub_20CE00C48);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27[0];
  v19[7] = *(v27 + 9);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a1 + 81) = v19[4];
  *(a1 + 97) = v5;
  v6 = v19[7];
  *(a1 + 113) = v19[6];
  *(a1 + 129) = v6;
  v7 = v19[1];
  *(a1 + 17) = v19[0];
  *(a1 + 33) = v7;
  result = *&v19[2];
  v9 = v19[3];
  *(a1 + 49) = v19[2];
  v10 = v20;
  *a1 = v4;
  *(a1 + 8) = 0x4040000000000000;
  *(a1 + 16) = v10;
  *(a1 + 65) = v9;
  return result;
}

uint64_t sub_20CDFF91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  v25 = a1;
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v4 = *(a1 + 24);

  sub_20CE135F4();
  sub_20CE12FF4();
  swift_getKeyPath();
  v25 = a1;
  sub_20CE12AF4();

  swift_beginAccess();
  *v24 = v4;
  v5 = v17;
  *&v24[8] = v17;
  *&v24[24] = v18;
  v6 = v18;
  v7 = v19;
  v8 = v21;
  *&v24[40] = v19;
  *&v24[56] = v20;
  v9 = v22;
  *&v24[104] = v23;
  v10 = v20;
  *&v24[72] = v21;
  *&v24[88] = v22;
  v11 = *&v24[48];
  *(a2 + 32) = *&v24[32];
  *(a2 + 48) = v11;
  v12 = *&v24[16];
  *a2 = *v24;
  *(a2 + 16) = v12;
  *(a2 + 96) = *&v24[96];
  v13 = *&v24[80];
  *(a2 + 64) = *&v24[64];
  *(a2 + 80) = v13;
  v28 = v7;
  v27 = v6;
  v14 = *(a1 + 16);
  *(a2 + 112) = *&v24[112];
  *(a2 + 120) = v14;
  v25 = v4;
  v26 = v5;
  v32 = v23;
  v31 = v9;
  v30 = v8;
  v29 = v10;
  sub_20CE014F4(v24, &v16, sub_20CE00D08);
  sub_20CE0155C(&v25, sub_20CE00D08);
}

uint64_t HTUINoiseView.Mode.hashValue.getter()
{
  v1 = *v0;
  sub_20CE14384();
  MEMORY[0x20F3138A0](v1);
  return sub_20CE143B4();
}

uint64_t sub_20CDFFC50()
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v1 = *(v0 + 24);
  swift_getKeyPath();

  sub_20CE12AF4();

  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2 == *(v1 + 16))
  {
    *(v1 + 16) = v2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CE01450(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model);
    sub_20CE12AE4();
  }
}

uint64_t (*sub_20CDFFE34(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_20CDFFE88;
}

uint64_t sub_20CDFFE88(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    return sub_20CDFFC50();
  }

  return result;
}

uint64_t sub_20CDFFEBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_20CDFFF78(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_20CE0006C(&v4);
}

uint64_t sub_20CDFFFB0@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  result = swift_beginAccess();
  *a1 = *(v1 + 16);
  return result;
}

uint64_t sub_20CE0006C(unsigned __int8 *a1)
{
  v2 = *a1;
  swift_beginAccess();
  if (v2 == *(v1 + 16))
  {
    *(v1 + 16) = v2;
    return sub_20CDFFC50();
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
    sub_20CE12AE4();
  }
}

uint64_t sub_20CE00194(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2 & 1;
  return sub_20CDFFC50();
}

void (*sub_20CE001F4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCV13HearingTestUI13HTUINoiseView5Model___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_20CE12B14();

  v4[7] = sub_20CDFFE34(v4);
  return sub_20CE0032C;
}

void sub_20CE0032C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_20CE12B04();

  free(v1);
}

uint64_t sub_20CE003C0()
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v1 = *(v0 + 24);
}

uint64_t sub_20CE00464@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  *a2 = *(v3 + 24);
}

uint64_t sub_20CE00510(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_20CE0053C(v4);
}

uint64_t sub_20CE0053C(uint64_t a1)
{
  if (*(v1 + 24) == a1)
  {
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
    sub_20CE12AE4();
  }
}

uint64_t sub_20CE00670(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);

  sub_20CE12AF4();

  v4 = *(v3 + 24);

  sub_20CDAC38C(v2);
}

uint64_t sub_20CE00740()
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v1 = *(v0 + 24);
  swift_getKeyPath();
  sub_20CE01450(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model);

  sub_20CE12AF4();

  v2 = *(v1 + 24);

  return v2;
}

uint64_t sub_20CE00870(uint64_t a1)
{
  swift_getKeyPath();
  sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v3 = *(v1 + 24);

  sub_20CDAC38C(a1);
}

void (*sub_20CE0092C(uint64_t *a1))(uint64_t **a1, char a2)
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
  swift_getKeyPath();
  v4[3] = OBJC_IVAR____TtCV13HearingTestUI13HTUINoiseView5Model___observationRegistrar;
  v4[1] = v1;
  v4[4] = sub_20CE01450(&qword_27C8128C8, type metadata accessor for HTUINoiseView.Model);
  sub_20CE12AF4();

  v5 = *(v1 + 24);
  swift_getKeyPath();
  v4[1] = v5;
  sub_20CE01450(&qword_27C812920, type metadata accessor for NoiseWaveformView.Model);

  sub_20CE12AF4();

  v6 = *(v5 + 24);

  *v4 = v6;
  return sub_20CE00ABC;
}

void sub_20CE00ABC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  swift_getKeyPath();
  v5 = v3[2];
  v6 = v3[3];
  v3[1] = v5;
  v7 = v3[4];
  if (a2)
  {

    sub_20CE12AF4();

    v8 = *(v5 + 24);

    sub_20CDAC38C(v4);

    v9 = *v3;
  }

  else
  {
    v10 = v3[4];
    sub_20CE12AF4();

    v11 = *(v5 + 24);

    sub_20CDAC38C(v4);
  }

  free(v3);
}

uint64_t HTUINoiseView.Model.init(mode:samples:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  sub_20CE12B24();
  *(v3 + 16) = v5;
  v6 = type metadata accessor for NoiseWaveformView.Model();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  *(v9 + 32) = MEMORY[0x277D84F90];
  sub_20CE12B24();
  *(v9 + 16) = v5;
  *(v9 + 24) = a2;
  sub_20CDAC7A8();
  *(v3 + 24) = v9;
  return v3;
}

void sub_20CE00C48()
{
  if (!qword_27C813688)
  {
    sub_20CE00CA0();
    v0 = sub_20CE13634();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813688);
    }
  }
}

void sub_20CE00CA0()
{
  if (!qword_27C813690)
  {
    sub_20CE00D08();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C813690);
    }
  }
}

void sub_20CE00D08()
{
  if (!qword_27C813698)
  {
    v0 = sub_20CE12FD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27C813698);
    }
  }
}

uint64_t type metadata accessor for HTUINoiseView.Model()
{
  result = qword_27C8136A0;
  if (!qword_27C8136A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20CE00DAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 16) = v2;
  return sub_20CDFFC50();
}

uint64_t HTUINoiseView.Model.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtCV13HearingTestUI13HTUINoiseView5Model___observationRegistrar;
  v3 = sub_20CE12B34();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t HTUINoiseView.Model.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtCV13HearingTestUI13HTUINoiseView5Model___observationRegistrar;
  v3 = sub_20CE12B34();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

double sub_20CE00F34@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_20CE131B4();
  v20 = 0;
  sub_20CDFF91C(v3, &v12);
  v25 = v16;
  v26 = v17;
  v27[0] = v18[0];
  *(v27 + 9) = *(v18 + 9);
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v24 = v15;
  v28[0] = v12;
  v28[1] = v13;
  v28[2] = v14;
  v28[3] = v15;
  v28[4] = v16;
  v28[5] = v17;
  v29[0] = v18[0];
  *(v29 + 9) = *(v18 + 9);
  sub_20CE014F4(&v21, &v11, sub_20CE00C48);
  sub_20CE0155C(v28, sub_20CE00C48);
  *(&v19[4] + 7) = v25;
  *(&v19[5] + 7) = v26;
  *(&v19[6] + 7) = v27[0];
  v19[7] = *(v27 + 9);
  *(v19 + 7) = v21;
  *(&v19[1] + 7) = v22;
  *(&v19[2] + 7) = v23;
  *(&v19[3] + 7) = v24;
  v5 = v19[5];
  *(a1 + 81) = v19[4];
  *(a1 + 97) = v5;
  v6 = v19[7];
  *(a1 + 113) = v19[6];
  *(a1 + 129) = v6;
  v7 = v19[1];
  *(a1 + 17) = v19[0];
  *(a1 + 33) = v7;
  result = *&v19[2];
  v9 = v19[3];
  *(a1 + 49) = v19[2];
  v10 = v20;
  *a1 = v4;
  *(a1 + 8) = 0x4040000000000000;
  *(a1 + 16) = v10;
  *(a1 + 65) = v9;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for HTUINoiseView(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for HTUINoiseView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20CE01210()
{
  result = sub_20CE12B34();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_20CE013BC()
{
  if (!qword_27C8136B8)
  {
    sub_20CE00C48();
    sub_20CE01450(&unk_27C8136C0, sub_20CE00C48);
    v0 = sub_20CE13584();
    if (!v1)
    {
      atomic_store(v0, &qword_27C8136B8);
    }
  }
}

uint64_t sub_20CE01450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20CE01498()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_20CE014F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20CE0155C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20CE01620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (!a2)
  {
    memset(v11, 0, sizeof(v11));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v9 = a2;
  sub_20CD8A9E8(&v9, v11);
  if (v3)
  {
LABEL_3:
    v3 = sub_20CE13884();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v7 = v6(v11, v3);

  sub_20CD8CFF0(v11);
  return v7 & 1;
}

uint64_t sub_20CE016F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_20CE07550();
    v2 = sub_20CE140A4();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v21 = *(*(a1 + 48) + (__clz(__rbit64(v5)) | (v9 << 6)));
    swift_dynamicCast();
    v13 = *(v2 + 40);
    result = sub_20CE14074();
    v14 = -1 << *(v2 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v7 + 8 * (v15 >> 6))) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *(v7 + 8 * v16);
        if (v20 != -1)
        {
          v10 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v15) & ~*(v7 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v24;
    *v11 = v22;
    *(v11 + 16) = v23;
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 56 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_20CE01910(void *a1)
{
  ObjectType = swift_getObjectType();
  v31 = sub_20CE136C4();
  v34 = *(v31 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &ObjectType - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20CE136E4();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20CE06E60(0, &unk_27C813720, &qword_27C812CB0, 0x277CBEB70, MEMORY[0x277D11BF0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v13 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &ObjectType - v14;
  aBlock[0] = a1;
  sub_20CD83128(0, &qword_27C812CB0, 0x277CBEB70);
  v16 = a1;
  sub_20CE12C74();
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  v17 = sub_20CE13D44();
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v10 + 32))(v20 + v18, v13, v9);
  v21 = ObjectType;
  v22 = v29;
  *(v20 + v19) = v29;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_20CE06D20;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20CDB3E40;
  aBlock[3] = &block_descriptor_12;
  v23 = _Block_copy(aBlock);
  v24 = v22;
  sub_20CE136D4();
  v35 = MEMORY[0x277D84F90];
  sub_20CDD8C0C();
  sub_20CE06DFC(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_20CDD8CC8();
  v26 = v30;
  v25 = v31;
  sub_20CE14044();
  MEMORY[0x20F313260](0, v7, v26, v23);
  _Block_release(v23);

  (*(v34 + 8))(v26, v25);
  (*(v32 + 8))(v7, v33);
  (*(v10 + 8))(v15, v9);
}

id sub_20CE01DE8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20CE01EF4(uint64_t a1, uint64_t a2)
{
  sub_20CE13B84();
  sub_20CE13B74();
  sub_20CE13B24();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_20CE06E60(0, &unk_27C813720, &qword_27C812CB0, 0x277CBEB70, MEMORY[0x277D11BF0]);
  sub_20CE12C64();
  v3 = *&v52[0];
  sub_20CE0261C(*&v52[0]);
  v4 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions;
  if (!*(*(a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions) + 16))
  {
    if (qword_27C811D18 != -1)
    {
      swift_once();
    }

    v23 = sub_20CE12CB4();
    __swift_project_value_buffer(v23, qword_27C8177B0);
    v24 = sub_20CE12C94();
    v25 = sub_20CE13CD4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v52[0] = v27;
      *v26 = 136446210;
      v28 = sub_20CE14414();
      v30 = sub_20CD96DCC(v28, v29, v52);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_20CD70000, v24, v25, "[%{public}s] No active interruptions being tracked", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x20F314110](v27, -1, -1);
      MEMORY[0x20F314110](v26, -1, -1);
    }

    goto LABEL_33;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CBEB40]) initWithOrderedSet_];
  v6 = *(a2 + v4);

  sub_20CE016F4(v7);

  v8 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v9 = sub_20CE13C34();

  v10 = [v8 initWithSet_];

  [v5 intersectOrderedSet_];
  if (qword_27C811D18 != -1)
  {
    swift_once();
  }

  v11 = sub_20CE12CB4();
  __swift_project_value_buffer(v11, qword_27C8177B0);
  v12 = v5;
  v13 = sub_20CE12C94();
  v14 = sub_20CE13CD4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&v52[0] = v16;
    *v15 = 136446466;
    v17 = sub_20CE14414();
    v19 = v3;
    v20 = v10;
    v21 = sub_20CD96DCC(v17, v18, v52);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2048;
    v22 = [v12 count];

    *(v15 + 14) = v22;
    v10 = v20;
    v3 = v19;

    _os_log_impl(&dword_20CD70000, v13, v14, "[%{public}s] Handling %ld interrupts.", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

  else
  {
  }

  v31 = v12;
  if ([v31 count] < 1)
  {

    return;
  }

  sub_20CE0292C(v31);
  v32 = [v31 firstObject];

  if (v32)
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0u;
    v51 = 0u;
  }

  v52[0] = v50;
  v52[1] = v51;
  if (*(&v51 + 1))
  {
    if (swift_dynamicCast())
    {
      if (v49 == 5 || v49 == 2)
      {
        v33 = a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = v10;
          v35 = *(v33 + 8);
          ObjectType = swift_getObjectType();
          (*(v35 + 24))(ObjectType, v35);
LABEL_31:
          swift_unknownObjectRelease();
          v10 = v34;
        }
      }

      else
      {
        v46 = a2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = v10;
          v47 = *(v46 + 8);
          v48 = swift_getObjectType();
          (*(v47 + 8))(v48, v47);
          goto LABEL_31;
        }
      }

      LOBYTE(v52[0]) = v49;
      sub_20CE02A94(v52);

      goto LABEL_33;
    }
  }

  else
  {
    sub_20CD8CFF0(v52);
  }

  v37 = v3;
  v38 = sub_20CE12C94();
  v39 = sub_20CE13CC4();

  if (!os_log_type_enabled(v38, v39))
  {

    return;
  }

  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  *&v52[0] = v42;
  *v40 = 136446466;
  v43 = sub_20CE14414();
  v45 = sub_20CD96DCC(v43, v44, v52);

  *(v40 + 4) = v45;
  *(v40 + 12) = 2112;
  *(v40 + 14) = v37;
  *v41 = v37;
  v3 = v37;
  _os_log_impl(&dword_20CD70000, v38, v39, "[%{public}s] Unexpected Interrupts to process %@", v40, 0x16u);
  sub_20CDFA454(v41);
  MEMORY[0x20F314110](v41, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v42);
  MEMORY[0x20F314110](v42, -1, -1);
  MEMORY[0x20F314110](v40, -1, -1);

LABEL_33:
}

void sub_20CE0261C(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_20CE13714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v8 = sub_20CE13D44();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = sub_20CE13744();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_10;
  }

  v10 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (v10)
  {
    v11 = v10[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
    if (v11 > 7 || ((1 << v11) & 0xE7) == 0)
    {
      v25 = v10[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
      v13 = v10;
      v23 = [a1 containsObject_];
      swift_unknownObjectRelease();
      v14 = sub_20CD83170();
      [v14 setEnabled_];
    }

    else
    {
      v13 = v10;
      v14 = sub_20CD83170();
      [v14 setEnabled_];
    }

    return;
  }

  if (qword_27C811D18 != -1)
  {
    goto LABEL_15;
  }

LABEL_10:
  v15 = sub_20CE12CB4();
  __swift_project_value_buffer(v15, qword_27C8177B0);
  v16 = sub_20CE12C94();
  v17 = sub_20CE13CD4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136446210;
    v20 = sub_20CE14414();
    v22 = sub_20CD96DCC(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_20CD70000, v16, v17, "[%{public}s] No VC to update", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x20F314110](v19, -1, -1);
    MEMORY[0x20F314110](v18, -1, -1);
  }
}

void *sub_20CE0292C(void *result)
{
  v2 = OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck;
  if (*(v1 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck))
  {
    return result;
  }

  v3 = [result array];
  v4 = sub_20CE13AB4();

  v5 = sub_20CE1104C(v4);

  if (!v5)
  {
    v10 = 0;
LABEL_18:
    *(v1 + v2) = v10;
    return result;
  }

  v6 = *(v5 + 16);
  if (!v6)
  {
    v10 = 0;
LABEL_17:

    goto LABEL_18;
  }

  result = sub_20CE13B84();
  v7 = 0;
  while (v7 < *(v5 + 16))
  {
    v8 = *(v5 + 32 + v7);
    sub_20CE13B74();
    sub_20CE13B24();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v8 == 3 || v8 == 0)
    {
      v10 = 1;
      goto LABEL_17;
    }

    if (v6 == ++v7)
    {
      v10 = 0;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

void sub_20CE02A94(unsigned __int8 *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20CE136C4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v135 = v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = sub_20CE136E4();
  v134 = *(v136 - 8);
  v9 = *(v134 + 64);
  MEMORY[0x28223BE20](v136);
  v133 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_20CE13704();
  v132 = *(v138 - 1);
  v11 = *(v132 + 64);
  v12 = MEMORY[0x28223BE20](v138);
  v130 = v124 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v131 = v124 - v14;
  v15 = sub_20CE13714();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = (v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *a1;
  v129 = sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v19 = sub_20CE13D44();
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  LOBYTE(a1) = sub_20CE13744();
  (*(v16 + 8))(v19, v15);
  if (a1)
  {
    v127 = v6;
    v128 = v5;
    if (qword_27C811D18 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = sub_20CE12CB4();
  v22 = __swift_project_value_buffer(v21, qword_27C8177B0);
  v23 = sub_20CE12C94();
  v24 = sub_20CE13CD4();
  if (os_log_type_enabled(v23, v24))
  {
    v126 = v22;
    v137 = v2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136446722;
    v27 = sub_20CE14414();
    v28 = v20;
    v30 = sub_20CD96DCC(v27, v29, aBlock);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_20CD96DCC(0xD000000000000022, 0x800000020CE20B60, aBlock);
    *(v25 + 22) = 2080;
    if (v20 > 3)
    {
      v37 = 0x800000020CE1E140;
      v38 = 0xD000000000000015;
      if (v20 == 6)
      {
        v38 = 0xD000000000000013;
      }

      else
      {
        v37 = 0x800000020CE1E100;
      }

      v39 = 0x800000020CE1E180;
      v40 = 0xD000000000000018;
      if (v20 == 4)
      {
        v40 = 0xD000000000000012;
      }

      else
      {
        v39 = 0x800000020CE1E160;
      }

      if (v20 <= 5)
      {
        v35 = v40;
      }

      else
      {
        v35 = v38;
      }

      if (v20 <= 5)
      {
        v36 = v39;
      }

      else
      {
        v36 = v37;
      }
    }

    else
    {
      v31 = 0xEF64657461766974;
      v32 = 0x6361654420707041;
      v33 = 0x800000020CE1E1C0;
      v34 = 0xD000000000000017;
      if (v20 != 2)
      {
        v34 = 0xD000000000000012;
        v33 = 0x800000020CE1E1A0;
      }

      if (!v20)
      {
        v32 = 0xD000000000000010;
        v31 = 0x800000020CE1E1E0;
      }

      if (v20 <= 1)
      {
        v35 = v32;
      }

      else
      {
        v35 = v34;
      }

      if (v20 <= 1)
      {
        v36 = v31;
      }

      else
      {
        v36 = v33;
      }
    }

    v41 = sub_20CD96DCC(v35, v36, aBlock);

    *(v25 + 24) = v41;
    _os_log_impl(&dword_20CD70000, v23, v24, "[%{public}s] %s called with %s.", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x20F314110](v26, -1, -1);
    MEMORY[0x20F314110](v25, -1, -1);

    v2 = v137;
    v20 = v28;
  }

  else
  {
  }

  v42 = &v2[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionViewControllerDelegate];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v44 = &v2[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption];
    v45 = *&v2[OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption];
    if (v45)
    {
      v46 = *(v44 + 1);
      v47 = v45[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_interruptionType];
      v124[1] = ObjectType;
      if (v20 == 5 || v20 == 2)
      {
        if (v47 != 2 && v47 != 5)
        {
LABEL_35:
          v125 = v20;
          v126 = Strong;
          sub_20CE06F14(v45, v46);
          v138 = v45;
          v48 = v46;
          v49 = sub_20CE12C94();
          v50 = sub_20CE13CD4();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            aBlock[0] = v52;
            *v51 = 136446210;
            v53 = sub_20CE14414();
            v55 = sub_20CD96DCC(v53, v54, aBlock);

            *(v51 + 4) = v55;
            _os_log_impl(&dword_20CD70000, v49, v50, "[%{public}s] The new interruption has higher priority and will be pushed onto the stack.", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v52);
            MEMORY[0x20F314110](v52, -1, -1);
            MEMORY[0x20F314110](v51, -1, -1);
          }

          v56 = v125;
          LOBYTE(aBlock[0]) = v125;
          v57 = sub_20CE03A4C(aBlock);
          v58 = sub_20CD83170();
          [v58 setEnabled_];

          v59 = [v57 navigationItem];
          [v59 setHidesBackButton_];

          LOBYTE(aBlock[0]) = 1;
          sub_20CE05FC8(aBlock);
          sub_20CE064B8();
          sub_20CDE4F50(v57, 1);

          v60 = v138;
          swift_unknownObjectRelease();
          v61 = *v44;
          v62 = *(v44 + 1);
          *v44 = v57;
          goto LABEL_45;
        }
      }

      else if (v47 != 2 && v47 != 5)
      {
        v121 = v47 != 3 && v20 == 3;
        v122 = v121 || v20 == 7;
        v123 = v122;
        if (v47 != 7 && v123)
        {
          goto LABEL_35;
        }
      }

      sub_20CE06F14(v45, v46);
      v88 = v45;
      v89 = v46;
      v90 = sub_20CE12C94();
      v91 = sub_20CE13CD4();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        aBlock[0] = v93;
        *v92 = 136446210;
        v94 = sub_20CE14414();
        v96 = sub_20CD96DCC(v94, v95, aBlock);

        *(v92 + 4) = v96;
        _os_log_impl(&dword_20CD70000, v90, v91, "[%{public}s] We already have an active interrution with higher priority.", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v93);
        MEMORY[0x20F314110](v93, -1, -1);
        MEMORY[0x20F314110](v92, -1, -1);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v125 = v20;
      v126 = Strong;
      v70 = *(v42 + 1);
      v71 = sub_20CE12C94();
      v72 = sub_20CE13CD4();
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v137 = v2;
        v75 = v74;
        aBlock[0] = v74;
        *v73 = 136446210;
        v76 = sub_20CE14414();
        v78 = sub_20CD96DCC(v76, v77, aBlock);

        *(v73 + 4) = v78;
        _os_log_impl(&dword_20CD70000, v71, v72, "[%{public}s] Will present new interruption.", v73, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x20F314110](v75, -1, -1);
        MEMORY[0x20F314110](v73, -1, -1);
      }

      v79 = swift_getObjectType();
      if ((*(v70 + 8))(v79, v70))
      {
        v80 = v125;
        LOBYTE(aBlock[0]) = v125;
        v81 = sub_20CE03A4C(aBlock);
        v82 = v80 < 8;
        v83 = 0xE7u >> v80;
        v84 = sub_20CD83170();
        [v84 setEnabled_];

        v85 = v81;
        v86 = [v85 navigationItem];
        [v86 setHidesBackButton_];

        v87 = [objc_allocWithZone(MEMORY[0x277D12978]) initWithRootViewController_];
        v46 = v87;
        [v46 setModalInPresentation_];
        [v46 setModalPresentationStyle_];

        (*(v70 + 16))(v46, v79, v70);
        swift_unknownObjectRelease();
        v61 = *v44;
        v62 = *(v44 + 1);
        *v44 = v85;
LABEL_45:
        *(v44 + 1) = v46;
        sub_20CE06ED4(v61, v62);
        return;
      }

      v97 = sub_20CE12C94();
      v98 = sub_20CE13CB4();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        aBlock[0] = v100;
        *v99 = 136446210;
        v101 = sub_20CE14414();
        v103 = sub_20CD96DCC(v101, v102, aBlock);

        *(v99 + 4) = v103;
        _os_log_impl(&dword_20CD70000, v97, v98, "[%{public}s] Aborting presentation as we aren't able to present now.", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        MEMORY[0x20F314110](v100, -1, -1);
        MEMORY[0x20F314110](v99, -1, -1);
      }

      v104 = sub_20CE12C94();
      v105 = sub_20CE13CD4();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        aBlock[0] = v107;
        *v106 = 136446210;
        v108 = sub_20CE14414();
        v110 = sub_20CD96DCC(v108, v109, aBlock);

        *(v106 + 4) = v110;
        _os_log_impl(&dword_20CD70000, v104, v105, "[%{public}s] Will try to present again shortly.", v106, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v107);
        MEMORY[0x20F314110](v107, -1, -1);
        MEMORY[0x20F314110](v106, -1, -1);
      }

      v112 = v127;
      v111 = v128;
      v129 = sub_20CE13D44();
      v113 = v130;
      sub_20CE136F4();
      v114 = v131;
      sub_20CE13734();
      v137 = *(v132 + 8);
      (v137)(v113, v138);
      v115 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v116 = swift_allocObject();
      *(v116 + 16) = v115;
      *(v116 + 24) = v125;
      aBlock[4] = sub_20CE06EC8;
      aBlock[5] = v116;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_20CDB3E40;
      aBlock[3] = &block_descriptor_15;
      v117 = _Block_copy(aBlock);

      v118 = v133;
      sub_20CE136D4();
      v139 = MEMORY[0x277D84F90];
      sub_20CDD8C0C();
      sub_20CE06DFC(0, &qword_27C812AC0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_20CDD8CC8();
      v119 = v135;
      sub_20CE14044();
      v120 = v129;
      MEMORY[0x20F313230](v114, v118, v119, v117);
      _Block_release(v117);
      swift_unknownObjectRelease();

      (*(v112 + 8))(v119, v111);
      (*(v134 + 8))(v118, v136);
      (v137)(v114, v138);
    }
  }

  else
  {
    v63 = sub_20CE12C94();
    v64 = sub_20CE13CC4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      aBlock[0] = v66;
      *v65 = 136446210;
      v67 = sub_20CE14414();
      v69 = sub_20CD96DCC(v67, v68, aBlock);

      *(v65 + 4) = v69;
      _os_log_impl(&dword_20CD70000, v63, v64, "[%{public}s] Attempting to present interruptions without a delegate.", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v66);
      MEMORY[0x20F314110](v66, -1, -1);
      MEMORY[0x20F314110](v65, -1, -1);
    }
  }
}

uint64_t sub_20CE03A4C(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_20CE13714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v8 = sub_20CE13D44();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  LOBYTE(a1) = sub_20CE13744();
  result = (*(v5 + 8))(v8, v4);
  if (a1)
  {
    v11 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_requirementStatusManager);
    v12 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_deviceManager);
    if (*(v12 + 24) <= 0x3Fu && (v13 = [*(v12 + 16) name]) != 0)
    {
      v14 = v13;
      v15 = sub_20CE13954();
      v17 = v16;

      v18 = v15;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }

    v19 = sub_20CE06F54(v11, v18, v17, v9);

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v21;
    v23 = &v19[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_continueButtonHandler];
    v24 = *&v19[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_continueButtonHandler];
    v25 = *&v19[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_continueButtonHandler + 8];
    *v23 = sub_20CE070F0;
    v23[1] = v22;
    v26 = v19;

    sub_20CD84E24(v24);

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v28;
    v30 = &v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_startOverButtonHandler];
    v31 = *&v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_startOverButtonHandler];
    v32 = *&v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_startOverButtonHandler + 8];
    *v30 = sub_20CE070F8;
    v30[1] = v29;

    sub_20CD84E24(v31);

    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v34;
    *(v35 + 32) = v9;
    v36 = &v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_endTestButtonHandler];
    v37 = *&v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_endTestButtonHandler];
    v38 = *&v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_endTestButtonHandler + 8];
    *v36 = sub_20CE07128;
    v36[1] = v35;

    sub_20CD84E24(v37);

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v41 = swift_allocObject();
    *(v41 + 16) = v39;
    *(v41 + 24) = v40;
    v42 = &v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_doneButtonHandler];
    v43 = *&v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_doneButtonHandler];
    v44 = *&v26[OBJC_IVAR____TtC13HearingTestUI38HearingTestInterruptionsViewController_doneButtonHandler + 8];
    *v42 = sub_20CE07180;
    v42[1] = v41;

    sub_20CD84E24(v43);

    return v26;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20CE03EDC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_beginAccess();
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      v3 = v2;
      v4 = v2;
      sub_20CE03F78(v3);

      v1 = v4;
    }
  }
}

void sub_20CE03F78(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_20CE13714();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20CD83128(0, &qword_27C812AB0, 0x277D85C78);
  *v9 = sub_20CE13D44();
  (*(v6 + 104))(v9, *MEMORY[0x277D85200], v5);
  v10 = sub_20CE13744();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    if (qword_27C811D18 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_20CE12CB4();
  __swift_project_value_buffer(v11, qword_27C8177B0);
  v12 = sub_20CE12C94();
  v13 = sub_20CE13CD4();
  v14 = os_log_type_enabled(v12, v13);
  v133 = ObjectType;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&aBlock = v16;
    *v15 = 136446210;
    v17 = sub_20CE14414();
    v19 = sub_20CD96DCC(v17, v18, &aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_20CD70000, v12, v13, "[%{public}s] interruptionContinueButtonTapped ", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x20F314110](v16, -1, -1);
    MEMORY[0x20F314110](v15, -1, -1);
  }

  v20 = (v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  v21 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption);
  if (!v21)
  {
    v23 = sub_20CE12C94();
    v31 = sub_20CE13CC4();
    if (os_log_type_enabled(v23, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&aBlock = v33;
      *v32 = 136446210;
      v34 = sub_20CE14414();
      v36 = sub_20CD96DCC(v34, v35, &aBlock);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_20CD70000, v23, v31, "[%{public}s] Continue tapped on interruption screen but no active interruption being tracked", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x20F314110](v33, -1, -1);
      MEMORY[0x20F314110](v32, -1, -1);
    }

    goto LABEL_13;
  }

  v22 = v20[1];
  if (a1 && v21 != a1)
  {
    sub_20CE06F14(*(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruption), v20[1]);
    v23 = a1;
    v24 = sub_20CE12C94();
    v25 = sub_20CE13CD4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&aBlock = v27;
      *v26 = 136446210;
      v28 = sub_20CE14414();
      v30 = sub_20CD96DCC(v28, v29, &aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_20CD70000, v24, v25, "[%{public}s] Continue tapped on an interruption that is not the active interruption. Ignoring tap.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x20F314110](v27, -1, -1);
      MEMORY[0x20F314110](v26, -1, -1);
    }

LABEL_13:
    return;
  }

  LOBYTE(aBlock) = 1;
  v37 = v21;
  v38 = v22;
  sub_20CE05FC8(&aBlock);
  v39 = *(*(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionManager) + OBJC_IVAR____TtC13HearingTestUI30HearingTestInterruptionManager_interruptions);
  v139 = sub_20CDC18C0;
  v140 = 0;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v138 = sub_20CE01620;
  *(&v138 + 1) = &block_descriptor_41;
  v40 = _Block_copy(&aBlock);
  v41 = objc_opt_self();
  v131 = v38;
  v42 = v39;
  v43 = [v41 predicateWithBlock_];
  _Block_release(v40);

  v44 = [v42 filteredOrderedSetUsingPredicate_];

  v45 = [objc_allocWithZone(MEMORY[0x277CBEB40]) initWithOrderedSet_];
  v46 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_activeInterruptions);

  sub_20CE016F4(v47);

  v48 = objc_allocWithZone(MEMORY[0x277CBEB70]);
  v49 = sub_20CE13C34();

  v50 = [v48 initWithSet_];

  v130 = v50;
  [v45 intersectOrderedSet_];
  v132 = v45;
  if ([v45 firstObject])
  {
    sub_20CE13FC4();
    swift_unknownObjectRelease();
  }

  else
  {
    v135 = 0u;
    v136 = 0u;
  }

  aBlock = v135;
  v138 = v136;
  if (*(&v136 + 1))
  {
    if (swift_dynamicCast())
    {
      v51 = v134;
      v52 = sub_20CE12C94();
      v53 = sub_20CE13CD4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&aBlock = v55;
        *v54 = 136446466;
        v56 = sub_20CE14414();
        v58 = sub_20CD96DCC(v56, v57, &aBlock);
        v133 = v37;
        v59 = v58;

        *(v54 + 4) = v59;
        *(v54 + 12) = 2080;
        LOBYTE(v135) = v51;
        v60 = sub_20CE13974();
        v62 = sub_20CD96DCC(v60, v61, &aBlock);
        v37 = v133;

        *(v54 + 14) = v62;
        _os_log_impl(&dword_20CD70000, v52, v53, "[%{public}s] Still have an interrupt to process: %s", v54, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x20F314110](v55, -1, -1);
        MEMORY[0x20F314110](v54, -1, -1);
      }

      v63 = v132;
      LOBYTE(aBlock) = v51;
      v64 = sub_20CE03A4C(&aBlock);
      v65 = sub_20CD83170();
      [v65 setEnabled_];

      v66 = [v64 navigationItem];
      [v66 setHidesBackButton_];

      v67 = v131;
      sub_20CDE4F50(v64, 1);

      v68 = *v20;
      v69 = v20[1];
      *v20 = v64;
      v20[1] = v22;
      sub_20CE06ED4(v68, v69);
      return;
    }
  }

  else
  {
    sub_20CD8CFF0(&aBlock);
  }

  v70 = sub_20CE12C94();
  v71 = sub_20CE13CD4();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = v37;
    v74 = swift_slowAlloc();
    *&aBlock = v74;
    *v72 = 136446210;
    v75 = sub_20CE14414();
    v77 = sub_20CD96DCC(v75, v76, &aBlock);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_20CD70000, v70, v71, "[%{public}s] User hit continue and all interrupts have recovered", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    v78 = v74;
    v37 = v73;
    MEMORY[0x20F314110](v78, -1, -1);
    MEMORY[0x20F314110](v72, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_encounteredInterruptionRequiringFitCheck) != 1)
  {
    goto LABEL_28;
  }

  v79 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v80 = sub_20CE13914();
  v81 = [v79 initWithSuiteName_];

  if (!v81)
  {
    __break(1u);
    return;
  }

  v82 = sub_20CE0F018();

  if ((v82 & 1) == 0)
  {
    v101 = *(v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_deviceManager);
    if (*(v101 + 24) <= 0x3Fu && (v102 = [*(v101 + 16) identifier]) != 0)
    {
      v103 = v102;
      v104 = [objc_allocWithZone(MEMORY[0x277D12C08]) initWithDeviceAddress_];

      [v104 setFitNoiseCheckDelegate_];
      v105 = v131;
      sub_20CDE4F50(v104, 1);
    }

    else
    {
      v121 = sub_20CE12C94();
      v122 = sub_20CE13CC4();
      if (os_log_type_enabled(v121, v122))
      {
        v123 = swift_slowAlloc();
        v124 = swift_slowAlloc();
        *&aBlock = v124;
        *v123 = 136446210;
        v125 = sub_20CE14414();
        v127 = sub_20CD96DCC(v125, v126, &aBlock);

        *(v123 + 4) = v127;
        _os_log_impl(&dword_20CD70000, v121, v122, "[%{public}s] Compatible AirPods are not connected. Can not continue with Fit Check after interruption recovery.", v123, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v124);
        MEMORY[0x20F314110](v124, -1, -1);
        MEMORY[0x20F314110](v123, -1, -1);
      }

      v128 = v131;
    }
  }

  else
  {
LABEL_28:
    v83 = v2 + OBJC_IVAR____TtC13HearingTestUI44HearingTestInterruptionViewControllerManager_interruptionListener;
    if (swift_unknownObjectWeakLoadStrong() && (v84 = *(v83 + 8), v85 = swift_getObjectType(), v86 = (*(v84 + 32))(v85, v84), swift_unknownObjectRelease(), v86 != 4))
    {
      v106 = sub_20CE12C94();
      v107 = sub_20CE13CD4();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        *&aBlock = v109;
        *v108 = 136446210;
        v110 = sub_20CE14414();
        v112 = sub_20CD96DCC(v110, v111, &aBlock);

        *(v108 + 4) = v112;
        _os_log_impl(&dword_20CD70000, v106, v107, "[%{public}s] Blocking reason found, presenting alert", v108, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v109);
        MEMORY[0x20F314110](v109, -1, -1);
        MEMORY[0x20F314110](v108, -1, -1);
      }

      v113 = v132;
      v114 = v130;
      v115 = sub_20CDA3584(v86);
      v117 = v116;
      v118 = sub_20CDA3760(v86);
      v119 = v131;
      sub_20CD95C28(v115, v117, v118, v120, 0);
    }

    else
    {
      v87 = sub_20CE12C94();
      v88 = sub_20CE13CD4();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *&aBlock = v90;
        *v89 = 136446210;
        v91 = sub_20CE14414();
        v93 = sub_20CD96DCC(v91, v92, &aBlock);

        *(v89 + 4) = v93;
        _os_log_impl(&dword_20CD70000, v87, v88, "[%{public}s] No blocking reasons. Dismissing interrupts and posting continue", v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        MEMORY[0x20F314110](v90, -1, -1);
        MEMORY[0x20F314110](v89, -1, -1);
      }

      v95 = v131;
      v94 = v132;
      v96 = v130;
      [v131 dismissViewControllerAnimated:1 completion:0];
      v97 = *v20;
      v98 = v20[1];
      *v20 = 0;
      v20[1] = 0;
      sub_20CE06ED4(v97, v98);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v99 = *(v83 + 8);
        v100 = swift_getObjectType();
        (*(v99 + 16))(v100, v99);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}