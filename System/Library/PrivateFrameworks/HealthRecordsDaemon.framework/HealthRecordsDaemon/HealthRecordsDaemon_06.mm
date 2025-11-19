id sub_251AFA338@<X0>(void **a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v74 = a5;
  v73 = a4;
  v8 = sub_251C6F9A4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v76 = &v67 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  v21 = *a1;
  if (a2 < 1)
  {
    goto LABEL_12;
  }

  v77 = a3;
  v83 = v21;
  v22 = v21;
  sub_251A82284();
  if (swift_dynamicCast())
  {
    v23 = v82;
    if (v82 != 2)
    {
LABEL_10:
      sub_251AFAA84(v78, v79, v80, v81, v23);
      goto LABEL_11;
    }

    v83 = v21;
    v24 = v21;
    if (swift_dynamicCast())
    {
      v23 = v82;
      if (v82 == 3)
      {
        v72 = a2 - 1;
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v25 = sub_251C70764();
        __swift_project_value_buffer(v25, qword_2813E8130);
        v26 = v9[2];
        v71 = v8;
        v69 = v26;
        v26(v20, v77, v8);
        v27 = v21;
        v28 = sub_251C70744();
        v29 = sub_251C713F4();

        v70 = v29;
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v67 = v28;
          v31 = v30;
          v68 = swift_slowAlloc();
          v83 = v68;
          *v31 = 136315650;
          v78 = v21;
          v32 = v21;
          v33 = sub_251C70F74();
          v35 = sub_251B10780(v33, v34, &v83);

          *(v31 + 4) = v35;
          *(v31 + 12) = 2048;
          *(v31 + 14) = a2;
          *(v31 + 22) = 2080;
          v36 = v71;
          v37 = v69;
          v69(v18, v20, v71);
          v37(v76, v18, v36);
          sub_251C719F4();
          v38 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_251C715C4();
          swift_unknownObjectRelease();
          v39 = sub_251C70F74();
          v41 = v40;
          v42 = v9[1];
          v42(v18, v36);
          v42(v20, v36);
          v43 = sub_251B10780(v39, v41, &v83);

          *(v31 + 24) = v43;
          v44 = v67;
          _os_log_impl(&dword_251A6C000, v67, v70, "Server Side Error from Oslo Cloud: %s. Trying again. Retries left: %ld. Request: %s", v31, 0x20u);
          v45 = v68;
          swift_arrayDestroy();
          MEMORY[0x25308E2B0](v45, -1, -1);
          MEMORY[0x25308E2B0](v31, -1, -1);
        }

        else
        {

          (v9[1])(v20, v71);
        }

        result = sub_251AF8B84(v77, v72);
        *v74 = result;
        return result;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  a3 = v77;
LABEL_12:
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v46 = sub_251C70764();
  __swift_project_value_buffer(v46, qword_2813E8130);
  v47 = v9[2];
  v47(v13, a3, v8);
  v48 = v21;
  v49 = sub_251C70744();
  v50 = sub_251C713D4();

  v77 = v49;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    LODWORD(v74) = v50;
    v52 = v51;
    v75 = swift_slowAlloc();
    v83 = v75;
    *v52 = 136315394;
    v47(v18, v13, v8);
    v47(v76, v18, v8);
    sub_251C719F4();
    v53 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v54 = sub_251C70F74();
    v56 = v55;
    v57 = v9[1];
    v57(v18, v8);
    v57(v13, v8);
    v58 = sub_251B10780(v54, v56, &v83);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v78 = v21;
    v59 = v21;
    sub_251A82284();
    sub_251C719F4();
    v60 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v61 = sub_251C70F74();
    v63 = sub_251B10780(v61, v62, &v83);

    *(v52 + 14) = v63;
    v64 = v77;
    _os_log_impl(&dword_251A6C000, v77, v74, "Error received for request. Request: %s. Error: %s", v52, 0x16u);
    v65 = v75;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v65, -1, -1);
    MEMORY[0x25308E2B0](v52, -1, -1);
  }

  else
  {

    (v9[1])(v13, v8);
  }

  swift_willThrow();
  return v21;
}

uint64_t sub_251AFAA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 5)
  {
  }

  else
  {
    if (a5 != 4)
    {
      return result;
    }
  }
}

void sub_251AFAAF0()
{
  if (!qword_27F479BD8)
  {
    sub_251C712C4();
    sub_251AF95E4();
    sub_251AFA034(&qword_27F479BE0, MEMORY[0x277CC9D10]);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479BD8);
    }
  }
}

void sub_251AFAB9C()
{
  if (!qword_27F479BE8)
  {
    sub_251AFAAF0();
    sub_251AFAF34(255, &qword_27F479BA8, sub_251AF95E4);
    sub_251AFA034(&qword_27F479BF0, sub_251AFAAF0);
    sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
    v0 = sub_251C70914();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479BE8);
    }
  }
}

id sub_251AFAC94@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = *(sub_251C6F9A4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ClinicalSharingCloudStandardAPI() - 8);
  return sub_251AFA338(a1, *(v2 + 16), (v2 + v6), v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)), a2);
}

void sub_251AFAD78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251AFAF34(255, &qword_27F479BA8, sub_251AF95E4);
    a3(255);
    sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
    v5 = sub_251C708B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251AFAE30()
{
  if (!qword_27F479C08)
  {
    sub_251AFAD78(255, &qword_27F479C00, type metadata accessor for PBPushBlobsResponse);
    sub_251AFAF34(255, &qword_27F479C10, type metadata accessor for PBPushBlobsResponse);
    sub_251AF9760(&qword_27F479C18, &qword_27F479C00, type metadata accessor for PBPushBlobsResponse);
    sub_251AF97B0(&qword_27F479C20, &qword_27F479C10, type metadata accessor for PBPushBlobsResponse);
    v0 = sub_251C70914();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479C08);
    }
  }
}

void sub_251AFAF34(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251A82284();
    v4 = sub_251C70974();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroy_11Tm_0()
{
  v1 = sub_251C6F9A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for ClinicalSharingCloudStandardAPI() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_251C6FE64();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v8, v11);
  v12(v0 + v8 + v6[7], v11);

  v13 = *(v0 + v8 + v6[10] + 8);

  v14 = *(v0 + v8 + v6[11] + 8);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

id sub_251AFB18C@<X0>(void **a1@<X0>, const char *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v9 = *(sub_251C6F9A4() - 8);
  v10 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(type metadata accessor for ClinicalSharingCloudStandardAPI() - 8);
  return sub_251AF9874(a1, *(v4 + 16), v4 + v10, v4 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80)), a2, a3, a4);
}

uint64_t sub_251AFB288@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a2;
  v111 = a1;
  v107 = a4;
  v5 = sub_251C6FC94();
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = *(v113 + 64);
  MEMORY[0x28223BE20](v5);
  v112 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C70014();
  v130 = *(v8 - 8);
  v9 = *(v130 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v104 = &v97 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v106 = &v97 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v105 = &v97 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v123 = &v97 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v124 = &v97 - v22;
  MEMORY[0x28223BE20](v21);
  v100 = &v97 - v23;
  v24 = sub_251C701E4();
  v128 = *(v24 - 8);
  v129 = v24;
  v25 = *(v128 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v127 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v99 = &v97 - v28;
  v29 = sub_251C701C4();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x28223BE20](v29);
  v116 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = &v97 - v34;
  sub_251AFD258(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v108 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v110 = &v97 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v109 = &v97 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v97 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v97 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v98 = &v97 - v51;
  MEMORY[0x28223BE20](v50);
  v53 = &v97 - v52;
  v54 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v55 = *MEMORY[0x277CC9988];
  v120 = v30[13];
  v121 = v30 + 13;
  v120(v35, v55, v29);
  if (__OFSUB__(0, a3))
  {
    __break(1u);
    goto LABEL_29;
  }

  v101 = v12;
  v115 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
  v122 = v54;
  sub_251C70154();
  v56 = v30[1];
  v102 = v35;
  v117 = v56;
  v118 = v30 + 1;
  v56(v35, v29);
  v125 = v53;
  v119 = v29;
  v35 = a3;
  v57 = v130;
  if (a3 >= 1)
  {
    v58 = v29;
    v59 = v126;
    v60 = v99;
    (*(v128 + 16))(v99, &v126[v122], v129);
    v120(v116, *MEMORY[0x277CC9968], v58);
    sub_251AFD084(v53, v49, &qword_2813E7500, MEMORY[0x277CC9578]);
    v61 = *(v57 + 48);
    if (v61(v49, 1, v8) == 1)
    {
      v62 = v100;
      (*(v57 + 16))(v100, &v59[v115], v8);
      if (v61(v49, 1, v8) != 1)
      {
        sub_251AFD0F0(v49, &qword_2813E7500, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v62 = v100;
      (*(v57 + 32))(v100, v49, v8);
    }

    v63 = v98;
    v64 = v116;
    sub_251C70154();
    (*(v57 + 8))(v62, v8);
    v117(v64, v119);
    (*(v128 + 8))(v60, v129);
    v53 = v125;
    sub_251AFD0F0(v125, &qword_2813E7500, MEMORY[0x277CC9578]);
    sub_251AC55A0(v63, v53);
  }

  v65 = MEMORY[0x277CC9578];
  sub_251AFD084(v53, v46, &qword_2813E7500, MEMORY[0x277CC9578]);
  a3 = *(v57 + 48);
  v66 = (a3)(v46, 1, v8);
  sub_251AFD0F0(v46, &qword_2813E7500, v65);
  v67 = v66 == 1;
  v53 = v126;
  v29 = v122;
  if (v67)
  {
    if (qword_2813E26F8 == -1)
    {
LABEL_11:
      v68 = sub_251C70764();
      __swift_project_value_buffer(v68, qword_2813E8130);

      v69 = sub_251C70744();
      v70 = sub_251C713E4();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v116 = v35;
        v72 = v131;
        *v71 = 136315394;
        sub_251AFD210(&unk_27F47A470, MEMORY[0x277CC9578]);
        v73 = sub_251C719A4();
        v75 = a3;
        v76 = sub_251B10780(v73, v74, &v131);

        *(v71 + 4) = v76;
        a3 = v75;
        *(v71 + 12) = 2048;
        *(v71 + 14) = v116;
        _os_log_impl(&dword_251A6C000, v69, v70, "Unable to create end date from %s, offset by %ld years", v71, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x25308E2B0](v72, -1, -1);
        v77 = v71;
        v29 = v122;
        MEMORY[0x25308E2B0](v77, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_29:
    swift_once();
    goto LABEL_11;
  }

LABEL_14:
  (*(v128 + 16))(v127, &v53[v29], v129);
  v78 = v109;
  sub_251AFD084(v125, v109, &qword_2813E7500, MEMORY[0x277CC9578]);
  v79 = (a3)(v78, 1, v8);
  v80 = v110;
  if (v79 == 1)
  {
    (*(v130 + 16))(v124, &v53[v115], v8);
    v81 = (a3)(v78, 1, v8);
    v82 = v102;
    if (v81 != 1)
    {
      sub_251AFD0F0(v78, &qword_2813E7500, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v130 + 32))(v124, v78, v8);
    v82 = v102;
  }

  v126 = sub_251C6FBC4();
  v83 = [v126 hk_negativeComponents];
  v84 = v112;
  sub_251C6FBD4();

  sub_251C70144();
  (*(v113 + 8))(v84, v114);
  result = (a3)(v80, 1, v8);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v86 = *(v130 + 32);
  v86(v123, v80, v8);
  v87 = v119;
  v120(v82, *MEMORY[0x277CC9968], v119);
  v88 = v108;
  sub_251C70154();
  v117(v82, v87);
  result = (a3)(v88, 1, v8);
  if (result == 1)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v89 = v105;
  v86(v105, v88, v8);
  v90 = v104;
  if (v103 == 9)
  {
    v91 = v106;
    v94 = v123;
    v93 = v127;
    sub_251B1D048(v123, v106);
    v92 = v126;
  }

  else
  {
    v91 = v106;
    v92 = v126;
    v93 = v127;
    v94 = v123;
    if (v103 == 8)
    {
      sub_251C700C4();
    }

    else if (v103 == 7)
    {
      sub_251C700C4();
      sub_251C6FF74();
      sub_251C6FF84();
      (*(v130 + 8))(v90, v8);
    }

    else
    {
      sub_251B1C960(v103, v123, v106);
    }
  }

  v95 = v130;
  (*(v130 + 16))(v90, v91, v8);
  sub_251C700C4();
  sub_251C6FA94();

  v96 = *(v95 + 8);
  v96(v91, v8);
  v96(v89, v8);
  v96(v94, v8);
  v96(v124, v8);
  (*(v128 + 8))(v93, v129);
  return sub_251AFD0F0(v125, &qword_2813E7500, MEMORY[0x277CC9578]);
}

uint64_t sub_251AFC004()
{
  v0 = sub_251C703E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703D4();
  type metadata accessor for PBTypedData(0);
  sub_251AFD210(&qword_27F478F48, type metadata accessor for PBTypedData);
  v5 = sub_251C70574();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_251AFC140()
{
  type metadata accessor for PBTypedData(0);
  sub_251AFD210(&qword_27F478F48, type metadata accessor for PBTypedData);
  return sub_251C70594();
}

uint64_t sub_251AFC1C0(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for PBTypedData(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AD8E14(a1, v13);
  v14 = a2(v13);
  if (v5)
  {
    return sub_251AFD14C(v13, type metadata accessor for PBTypedData);
  }

  v16 = v14;
  v18[0] = sub_251AFC300();
  v18[1] = v17;
  MEMORY[0x25308CDA0](46, 0xE100000000000000);
  MEMORY[0x25308CDA0](a4, a5);
  sub_251AFD14C(v13, type metadata accessor for PBTypedData);
  return v16;
}

uint64_t sub_251AFC300()
{
  sub_251AFD258(0, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v46 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v41 - v8;
  v10 = type metadata accessor for PBDateRange(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v41 - v19;
  v21 = *(v0 + 8);
  v47 = *v0;
  LOBYTE(v48) = v21;
  v22 = sub_251C70F74();
  v42 = v23;
  v43 = v22;
  v44 = *(type metadata accessor for PBTypedData(0) + 28);
  v45 = v0;
  sub_251AFD084(v0 + v44, v9, qword_2813E6EE8, type metadata accessor for PBDateRange);
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    *v20 = 0;
    *(v20 + 1) = 0xE000000000000000;
    *(v20 + 2) = 0;
    *(v20 + 3) = 0xE000000000000000;
    *(v20 + 4) = 0;
    v20[40] = 1;
    v25 = &v20[*(v10 + 28)];
    sub_251C703A4();
    if (v24(v9, 1, v10) != 1)
    {
      sub_251AFD0F0(v9, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }
  }

  else
  {
    sub_251AFD1AC(v9, v20);
  }

  v26 = *(v20 + 4);
  v27 = v20[40];
  sub_251AFD14C(v20, type metadata accessor for PBDateRange);
  v47 = v26;
  LOBYTE(v48) = v27;
  v28 = sub_251C70F74();
  v30 = v29;
  v47 = v43;
  v48 = v42;
  MEMORY[0x25308CDA0](47, 0xE100000000000000);
  MEMORY[0x25308CDA0](v28, v30);

  MEMORY[0x25308CDA0](47, 0xE100000000000000);
  v32 = v44;
  v31 = v45;
  sub_251AFD084(v45 + v44, v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v24(v7, 1, v10) == 1)
  {
    *v18 = 0;
    *(v18 + 1) = 0xE000000000000000;
    *(v18 + 2) = 0;
    *(v18 + 3) = 0xE000000000000000;
    *(v18 + 4) = 0;
    v18[40] = 1;
    v33 = &v18[*(v10 + 28)];
    sub_251C703A4();
    if (v24(v7, 1, v10) != 1)
    {
      sub_251AFD0F0(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }
  }

  else
  {
    sub_251AFD1AC(v7, v18);
  }

  v34 = *v18;
  v35 = *(v18 + 1);

  sub_251AFD14C(v18, type metadata accessor for PBDateRange);
  MEMORY[0x25308CDA0](v34, v35);

  MEMORY[0x25308CDA0](95, 0xE100000000000000);
  v36 = v46;
  sub_251AFD084(v31 + v32, v46, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if (v24(v36, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    *(v15 + 2) = 0;
    *(v15 + 3) = 0xE000000000000000;
    *(v15 + 4) = 0;
    v15[40] = 1;
    v37 = &v15[*(v10 + 28)];
    sub_251C703A4();
    if (v24(v36, 1, v10) != 1)
    {
      sub_251AFD0F0(v36, qword_2813E6EE8, type metadata accessor for PBDateRange);
    }
  }

  else
  {
    sub_251AFD1AC(v36, v15);
  }

  v38 = *(v15 + 2);
  v39 = *(v15 + 3);

  sub_251AFD14C(v15, type metadata accessor for PBDateRange);
  MEMORY[0x25308CDA0](v38, v39);

  return v47;
}

uint64_t sub_251AFC81C(uint64_t a1, char a2)
{
  sub_251AFD258(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  sub_251AFD258(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  if (a2)
  {
    if (a1 <= 2)
    {
      if (a1 == 1)
      {
        v12 = sub_251C701E4();
        (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
        v13 = sub_251C70244();
        (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
        sub_251C6FC74();
        return sub_251C6FC14();
      }

      if (a1 == 2)
      {
LABEL_12:
        v19 = sub_251C701E4();
        (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
        v20 = sub_251C70244();
        (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
        sub_251C6FC74();
        return sub_251C6FBE4();
      }
    }

    else
    {
      if (a1 <= 4)
      {
        if (a1 != 3)
        {
          v17 = sub_251C701E4();
          (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
          v18 = sub_251C70244();
          (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
          sub_251C6FC74();
          return sub_251C6FC34();
        }

        goto LABEL_12;
      }

      if (a1 == 6)
      {
        v15 = sub_251C701E4();
        (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
        v16 = sub_251C70244();
        (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
        sub_251C6FC74();
        return sub_251C6FC54();
      }
    }
  }

  v23 = 0;
  v24 = 0xE000000000000000;
  sub_251C716A4();
  MEMORY[0x25308CDA0](0xD000000000000038, 0x8000000251C8AA90);
  v21 = a1;
  v22 = a2 & 1;
  sub_251C717C4();
  result = sub_251C717E4();
  __break(1u);
  return result;
}

uint64_t sub_251AFCF70()
{
  sub_251A82418();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251C76B00;
  v1 = *MEMORY[0x277CCCD38];
  sub_251C70F14();
  v2 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v3 = sub_251C70EE4();

  v4 = [v2 initWithKey:v3 ascending:0];

  *(v0 + 32) = v4;
  v5 = *MEMORY[0x277CCCD50];
  sub_251C70F14();
  v6 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v7 = sub_251C70EE4();

  v8 = [v6 initWithKey:v7 ascending:0];

  *(v0 + 40) = v8;
  return v0;
}

uint64_t sub_251AFD084(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251AFD258(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AFD0F0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251AFD258(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AFD14C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AFD1AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDateRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AFD210(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AFD258(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251AFD2AC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v41 = a2;
  v49 = a3;
  sub_251AFD8C8(0, &qword_2813E2368, MEMORY[0x277CBCCD8]);
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v39 - v6;
  sub_251AFD8C8(0, &qword_27F479C30, MEMORY[0x277CBCC38]);
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v39 - v9;
  sub_251AB2978();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v18 = v17;
  v19 = *(v17 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v17);
  v22 = &v39 - v21;
  v50 = *a1;
  v23 = v50;
  v24 = type metadata accessor for ClinicalSharingSyncContext();

  v48 = v24;
  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v12 + 8))(v15, v11);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v16);
  v25 = sub_251C70A94();
  result = (*(v19 + 8))(v22, v18);
  if (!*(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error))
  {
    v50 = v25;
    v27 = swift_allocObject();
    v28 = v41;
    *(v27 + 16) = v41;
    v40 = v28;
    sub_251C70964();
    v41 = v25;
    v29 = MEMORY[0x277CBCD88];
    sub_251AFD990(0, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v29);
    v30 = v42;
    sub_251C70B94();

    sub_251AFDC7C(&qword_2813E2370, &qword_2813E2368, MEMORY[0x277CBCCD8]);
    v31 = v44;
    v32 = sub_251C70A94();
    v43 = *(v43 + 8);
    (v43)(v30, v31);
    v50 = v32;
    v33 = swift_allocObject();
    *(v33 + 16) = 0;
    v34 = v40;
    *(v33 + 24) = v40;
    v35 = v34;
    sub_251C70964();
    sub_251C70B94();

    v36 = sub_251C70A94();

    (v43)(v30, v31);
    v50 = v36;

    v37 = v45;
    sub_251C70B04();

    sub_251AFDC7C(&qword_27F479C38, &qword_27F479C30, MEMORY[0x277CBCC38]);
    v38 = v47;
    v25 = sub_251C70A94();

    result = (*(v46 + 8))(v37, v38);
  }

  *v49 = v25;
  return result;
}

void sub_251AFD8C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277CBCD88];
    sub_251AFD990(255, &qword_2813E21B0, MEMORY[0x277CBCD88]);
    v10[0] = v7;
    v10[1] = v7;
    v11 = sub_251AFDA08(&qword_2813E21B8, &qword_2813E21B0, v6);
    v12 = v11;
    v8 = a3(a1, v10);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_251AFD990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ClinicalSharingSyncContext();
    v7 = sub_251A82284();
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251AFDA08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251AFD990(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AFDA4C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20[0] = a3;
  sub_251AB2978();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CBCF38];
  sub_251AFD990(0, &qword_27F479408, MEMORY[0x277CBCF38]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = v20 - v16;
  sub_251B26C14(*a1);
  v20[1] = a2;
  type metadata accessor for ClinicalSharingSyncContext();

  sub_251C70A24();
  sub_251A82284();
  sub_251C709F4();
  (*(v7 + 8))(v10, v6);
  sub_251AFDA08(&qword_27F479410, &qword_27F479408, v11);
  v18 = sub_251C70A94();
  result = (*(v14 + 8))(v17, v13);
  *v20[0] = v18;
  return result;
}

uint64_t sub_251AFDC7C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_251AFD8C8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AFDCC8()
{
  sub_251AFE8D8(0, &qword_2813E1C50, sub_251AFE93C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C747F0;
  v2 = *MEMORY[0x277CDC228];
  *(inited + 32) = sub_251C70F14();
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  v6 = v5;
  *(inited + 72) = v5;
  *(inited + 48) = v4;
  v7 = *MEMORY[0x277CDBF20];
  *(inited + 80) = sub_251C70F14();
  *(inited + 88) = v8;
  v9 = *v0;
  v10 = v0[1];
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v9;
  *(inited + 104) = v10;
  v11 = *MEMORY[0x277CDBED8];
  *(inited + 128) = sub_251C70F14();
  *(inited + 136) = v12;
  v13 = *MEMORY[0x277CDBF18];
  *(inited + 168) = v6;
  *(inited + 144) = v13;
  v14 = *MEMORY[0x277CDC5C8];
  *(inited + 176) = sub_251C70F14();
  *(inited + 184) = v15;
  *(inited + 216) = MEMORY[0x277D839B0];
  *(inited + 192) = 1;
  v16 = *MEMORY[0x277CDC5E8];
  *(inited + 224) = sub_251C70F14();
  *(inited + 232) = v17;
  v18 = v4;

  v19 = v13;
  v20 = sub_251C70CB4();
  *(inited + 264) = MEMORY[0x277CC9318];
  *(inited + 240) = v20;
  *(inited + 248) = v21;
  sub_251C4C154(inited);
  swift_setDeallocating();
  sub_251AFE93C();
  swift_arrayDestroy();
  v22 = sub_251C70E44();

  v23 = SecItemAdd(v22, 0);

  if (!v23)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v29 = sub_251C70764();
    __swift_project_value_buffer(v29, qword_2813E8130);
    v25 = sub_251C70744();
    v26 = sub_251C713C4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_12;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Successfully added the private key to keychain";
    goto LABEL_11;
  }

  if (v23 == -25299)
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v24 = sub_251C70764();
    __swift_project_value_buffer(v24, qword_2813E8130);
    v25 = sub_251C70744();
    v26 = sub_251C713C4();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_12;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "Private key already exists in keychain";
LABEL_11:
    _os_log_impl(&dword_251A6C000, v25, v26, v28, v27, 2u);
    MEMORY[0x25308E2B0](v27, -1, -1);
LABEL_12:

    return;
  }

  sub_251AFEB90();
  v30 = sub_251C715B4();
  v32 = v31;
  sub_251AFEBE4();
  swift_allocError();
  *v33 = v30;
  *(v33 + 8) = v32;
  *(v33 + 16) = 4;
  swift_willThrow();
}

id sub_251AFE074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v73 = a1;
  v81[35] = *MEMORY[0x277D85DE8];
  v3 = sub_251C70014();
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  MEMORY[0x28223BE20](v3);
  v74 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AFE8D8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v64 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v64 - v12;
  sub_251AFE8D8(0, &qword_2813E1C50, sub_251AFE93C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C747F0;
  v15 = *MEMORY[0x277CDC228];
  *(inited + 32) = sub_251C70F14();
  *(inited + 40) = v16;
  v17 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  *(inited + 72) = v18;
  *(inited + 48) = v17;
  v19 = *MEMORY[0x277CDBF20];
  *(inited + 80) = sub_251C70F14();
  *(inited + 88) = v20;
  v21 = *v2;
  v22 = *(v2 + 1);
  v72 = v2;
  v23 = v3;
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v21;
  *(inited + 104) = v22;
  v24 = *MEMORY[0x277CDC5C8];
  *(inited + 128) = sub_251C70F14();
  *(inited + 136) = v25;
  v26 = MEMORY[0x277D839B0];
  *(inited + 168) = MEMORY[0x277D839B0];
  *(inited + 144) = 1;
  v27 = *MEMORY[0x277CDC550];
  *(inited + 176) = sub_251C70F14();
  *(inited + 184) = v28;
  *(inited + 216) = v26;
  *(inited + 192) = 1;
  v29 = *MEMORY[0x277CDC558];
  *(inited + 224) = sub_251C70F14();
  *(inited + 232) = v30;
  *(inited + 264) = v26;
  *(inited + 240) = 1;
  v31 = v13;
  v32 = v17;

  sub_251C4C154(inited);
  swift_setDeallocating();
  sub_251AFE93C();
  v33 = v75;
  swift_arrayDestroy();
  v81[0] = 0;
  v34 = *(v33 + 56);
  v34(v13, 1, 1, v23);
  v35 = sub_251C70E44();
  v36 = SecItemCopyMatching(v35, v81);

  if (v36)
  {

    if (v36 == -25300)
    {
      sub_251AFEBE4();
      swift_allocError();
      *v37 = 0xD000000000000014;
      *(v37 + 8) = 0x8000000251C8AAD0;
    }

    else
    {
      LODWORD(v80[0]) = v36;
      sub_251AFEB90();
      v43 = sub_251C715B4();
      v45 = v44;
      sub_251AFEBE4();
      swift_allocError();
      *v37 = v43;
      *(v37 + 8) = v45;
    }

    *(v37 + 16) = 5;
    swift_willThrow();
    goto LABEL_11;
  }

  v67 = v23;
  if (!v81[0])
  {

LABEL_14:
    v46 = 0;
    v66 = 0xF000000000000000;
    v47 = v67;
    v48 = v74;
    v49 = v75;
    v50 = v72;
    goto LABEL_20;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  if (!v38)
  {

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v39 = v38;
  result = [v38 __swift_objectForKeyedSubscript_];
  if (!result)
  {
    __break(1u);
    goto LABEL_39;
  }

  sub_251C715C4();
  swift_unknownObjectRelease();
  sub_251ACFB54(&v78, v80);
  swift_dynamicCast();
  v41 = v76;
  v66 = v77;
  v42 = [v39 __swift_objectForKeyedSubscript_];
  v65 = v41;
  if (v42)
  {
    sub_251C715C4();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_251AC5608(v31);
  }

  else
  {
    sub_251AC5608(v31);
    swift_unknownObjectRelease();
    v78 = 0u;
    v79 = 0u;
  }

  v48 = v74;
  v49 = v75;
  v80[0] = v78;
  v80[1] = v79;
  v47 = v67;
  v51 = v68;
  if (*(&v79 + 1))
  {
    v52 = swift_dynamicCast() ^ 1;
    v53 = v51;
  }

  else
  {
    sub_251AFEC38(v80);
    v53 = v51;
    v52 = 1;
  }

  v34(v53, v52, 1, v47);
  sub_251AC55A0(v51, v31);
  v50 = v72;
  v46 = v65;
LABEL_20:
  v54 = v71;
  sub_251AC553C(v31, v71);
  if ((*(v49 + 48))(v54, 1, v47) != 1)
  {
    (*(v49 + 32))(v48, v54, v47);
    sub_251C6FF74();
    if (v55 > v50[5])
    {
      (*(v49 + 8))(v48, v47);
      goto LABEL_24;
    }

    if (v66 >> 60 == 15)
    {
      v62 = v70;
      sub_251AFE9A0();
      if (!v62)
      {
        sub_251AFEBE4();
        swift_allocError();
        *v63 = 0xD000000000000021;
        *(v63 + 8) = 0x8000000251C8AAF0;
        *(v63 + 16) = 5;
        swift_willThrow();
        (*(v49 + 8))(v48, v47);
LABEL_11:
        sub_251AC5608(v31);
LABEL_32:
        result = swift_unknownObjectRelease();
        v61 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    else
    {
      sub_251C70CC4();
    }

    (*(v49 + 8))(v48, v47);
    goto LABEL_11;
  }

  sub_251AC5608(v54);
LABEL_24:
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v56 = sub_251C70764();
  __swift_project_value_buffer(v56, qword_2813E8130);
  v57 = sub_251C70744();
  v58 = sub_251C713C4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_251A6C000, v57, v58, "Verification Key expired. Creating and storing a new verification key", v59, 2u);
    MEMORY[0x25308E2B0](v59, -1, -1);
  }

  v60 = v70;
  sub_251AFE9A0();
  if (v60)
  {
    goto LABEL_31;
  }

  result = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0, 0);
  if (result)
  {
    sub_251C70CD4();
LABEL_31:
    sub_251AC5608(v31);
    sub_251A8596C(v46, v66);
    goto LABEL_32;
  }

LABEL_39:
  __break(1u);
  return result;
}

void sub_251AFE8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251AFE93C()
{
  if (!qword_2813E1F90)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1F90);
    }
  }
}

void sub_251AFE9A0()
{
  sub_251AFE8D8(0, &qword_2813E1C50, sub_251AFE93C, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_251C76AF0;
  v2 = *MEMORY[0x277CDC228];
  *(inited + 32) = sub_251C70F14();
  *(inited + 40) = v3;
  v4 = *MEMORY[0x277CDC238];
  type metadata accessor for CFString(0);
  *(inited + 72) = v5;
  *(inited + 48) = v4;
  v6 = *MEMORY[0x277CDC5C8];
  *(inited + 80) = sub_251C70F14();
  *(inited + 88) = v7;
  *(inited + 120) = MEMORY[0x277D839B0];
  *(inited + 96) = 1;
  v8 = *MEMORY[0x277CDBF20];
  *(inited + 128) = sub_251C70F14();
  *(inited + 136) = v9;
  v10 = *v0;
  v11 = v0[1];
  *(inited + 168) = MEMORY[0x277D837D0];
  *(inited + 144) = v10;
  *(inited + 152) = v11;
  v12 = v4;

  sub_251C4C154(inited);
  swift_setDeallocating();
  sub_251AFE93C();
  swift_arrayDestroy();
  v13 = sub_251C70E44();

  v14 = SecItemDelete(v13);

  if (v14)
  {
    if (v14 != -25300)
    {
      sub_251AFEB90();
      v15 = sub_251C715B4();
      v17 = v16;
      sub_251AFEBE4();
      swift_allocError();
      *v18 = v15;
      *(v18 + 8) = v17;
      *(v18 + 16) = 6;
      swift_willThrow();
    }
  }
}

unint64_t sub_251AFEB90()
{
  result = qword_27F479C40;
  if (!qword_27F479C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C40);
  }

  return result;
}

unint64_t sub_251AFEBE4()
{
  result = qword_27F479C48;
  if (!qword_27F479C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C48);
  }

  return result;
}

uint64_t sub_251AFEC38(uint64_t a1)
{
  sub_251AFEC94();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_251AFEC94()
{
  if (!qword_2813E1BA0)
  {
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1BA0);
    }
  }
}

uint64_t Error.hdhr_friendlyDescription.getter(uint64_t a1, uint64_t a2)
{
  v31[1] = a2;
  sub_251AFF134(0, &qword_27F479C50, MEMORY[0x277D84198]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v31 - v7;
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v31 - v14;
  v16 = sub_251C71714();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v9 + 16);
  v21(v15, v2, a1);
  v22 = swift_dynamicCast();
  v23 = *(v17 + 56);
  if (v22)
  {
    v23(v8, 0, 1, v16);
    (*(v17 + 32))(v20, v8, v16);
    v24 = DecodingError.hdhr_friendlyDescription.getter();
    (*(v17 + 8))(v20, v16);
    return v24;
  }

  else
  {
    v23(v8, 1, 1, v16);
    sub_251AFF0D8(v8, &qword_27F479C50, MEMORY[0x277D84198]);
    v21(v13, v2, a1);
    sub_251AFF074();
    if (swift_dynamicCast())
    {
      sub_251A7E8D8(v32, v34);
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v26 = sub_251C6FCA4();
      if (v27)
      {
        v28 = v26;
      }

      else
      {
        v29 = v36;
        __swift_project_boxed_opaque_existential_1(v34, v35);
        v30 = *(v29 + 8);
        v28 = sub_251C71A44();
      }

      __swift_destroy_boxed_opaque_existential_1(v34);
      return v28;
    }

    else
    {
      v33 = 0;
      memset(v32, 0, sizeof(v32));
      sub_251AFF0D8(v32, &qword_27F4798B0, sub_251AFF074);
      return sub_251C71A44();
    }
  }
}

unint64_t sub_251AFF074()
{
  result = qword_27F4798A8;
  if (!qword_27F4798A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F4798A8);
  }

  return result;
}

uint64_t sub_251AFF0D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251AFF134(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_251AFF134(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Error.sensitiveLogString.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_251C719C4();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_251C6FD74();

  v11 = [v10 hrs_safelyLoggableDescription];
  v12 = sub_251C70F14();

  return v12;
}

uint64_t sub_251AFF31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7972746E65 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251C719D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251AFF3A0(uint64_t a1)
{
  v2 = sub_251B00F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AFF3DC(uint64_t a1)
{
  v2 = sub_251B00F90();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_251AFF418@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_251B00DAC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_251AFF444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = 0;
    v5 = *(a3 + 16);
    v6 = a3 + 80;
    v31 = a3 + 80;
    v32 = MEMORY[0x277D84F90];
    v35 = v5;
LABEL_3:
    v7 = (v6 + 56 * v4);
    while (v5 != v4)
    {
      if (v4 >= v5)
      {
        __break(1u);
LABEL_25:
        __break(1u);

        __break(1u);
        return result;
      }

      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_25;
      }

      v3 = *(v7 - 6);
      v9 = *(v7 - 5);
      v11 = *(v7 - 4);
      v10 = *(v7 - 3);
      v12 = *(v7 - 2);
      v13 = *(v7 - 1);
      v14 = *v7;
      if (v11 == a1 && v10 == a2)
      {
        v11 = a1;
LABEL_14:

        sub_251AFF694(v13, v14);
        v19 = v32;
        v36 = v32;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_251C0BA6C(0, *(v32 + 2) + 1, 1);
          v19 = v36;
        }

        v21 = *(v19 + 2);
        v20 = *(v19 + 3);
        v22 = v21 + 1;
        if (v21 >= v20 >> 1)
        {
          sub_251C0BA6C((v20 > 1), v21 + 1, 1);
          v22 = v21 + 1;
          v19 = v36;
        }

        *(v19 + 2) = v22;
        v32 = v19;
        v23 = &v19[56 * v21];
        *(v23 + 4) = v3;
        *(v23 + 5) = v9;
        *(v23 + 6) = v11;
        *(v23 + 7) = v10;
        *(v23 + 8) = v12;
        *(v23 + 9) = v13;
        *(v23 + 10) = v14;
        v4 = v8;
        v5 = v35;
        v6 = v31;
        goto LABEL_3;
      }

      v16 = *(v7 - 4);
      v17 = *(v7 - 3);
      v18 = sub_251C719D4();
      v5 = v35;
      ++v4;
      v7 += 7;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    v36 = v32;

    sub_251AFF788(&v36);

    if (*(v36 + 2))
    {
      v24 = *(v36 + 4);
      v25 = *(v36 + 5);
      v26 = *(v36 + 7);
      v27 = *(v36 + 8);
      v28 = *(v36 + 9);
      v29 = *(v36 + 10);

      sub_251AFF694(v28, v29);

      sub_251AFF7F4(v28, v29);
      return v24;
    }
  }

  return 0;
}

uint64_t sub_251AFF694(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_251AFF6A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v5 = *(a2 + 40);
  v4 = *(a2 + 48);
  if (v2 >= 2)
  {
    v6 = *(a1 + 48);

    if (v4 >= 2)
    {
LABEL_3:

      if (v5 != v3)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else
  {
    sub_251AFF7F4(*(a1 + 40), v2);
    v3 = 0;
    v2 = 0xE000000000000000;
    if (v4 >= 2)
    {
      goto LABEL_3;
    }
  }

  sub_251AFF7F4(v5, v4);
  v4 = 0xE000000000000000;
  if (v3)
  {
LABEL_9:
    v7 = sub_251C719D4();
    goto LABEL_10;
  }

LABEL_7:
  if (v4 != v2)
  {
    goto LABEL_9;
  }

  v7 = 0;
LABEL_10:

  return v7 & 1;
}

uint64_t sub_251AFF788(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_251BFAE04(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_251AFF808(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_251AFF7F4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_251AFF808(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251C71994();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_251C71184();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_251AFFBF8(v7, v8, a1, v4);
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
    return sub_251AFF900(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251AFF900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v31 = *a4;
    v4 = *a4 + 56 * a3 - 56;
    v5 = result - a3;
LABEL_6:
    v29 = v4;
    v30 = a3;
    v6 = (v31 + 56 * a3);
    v7 = v6[1];
    v9 = v6[3];
    v8 = v6[4];
    v11 = v6[5];
    v10 = v6[6];
    v28 = v5;
    v12 = v5;
    while (1)
    {
      v32 = v12;
      v13 = *(v4 + 8);
      v14 = *(v4 + 40);
      v15 = *(v4 + 48);
      v34 = *(v4 + 32);
      v33 = *(v4 + 24);

      sub_251AFF694(v11, v10);

      sub_251AFF694(v14, v15);
      if (v10 >= 2)
      {
        sub_251AFF694(v11, v10);
        v16 = v11;
        v17 = v10;
      }

      else
      {
        sub_251AFF7F4(v11, v10);
        v16 = 0;
        v17 = 0xE000000000000000;
      }

      v35 = v14;
      if (v15 >= 2)
      {

        v19 = v14;
        v18 = v15;
        if (v19 != v16)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_251AFF7F4(v14, v15);
        v18 = 0xE000000000000000;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      if (v18 == v17)
      {

        sub_251AFF7F4(v35, v15);

        result = sub_251AFF7F4(v11, v10);
LABEL_5:
        a3 = v30 + 1;
        v4 = v29 + 56;
        v5 = v28 - 1;
        if (v30 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

LABEL_15:
      v20 = sub_251C719D4();

      sub_251AFF7F4(v35, v15);

      result = sub_251AFF7F4(v11, v10);
      if ((v20 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v31)
      {
        __break(1u);
        return result;
      }

      v22 = *(v4 + 64);
      v21 = *(v4 + 72);
      v23 = *(v4 + 16);
      v25 = *(v4 + 48);
      v24 = *(v4 + 56);
      *(v4 + 56) = *v4;
      v26 = *(v4 + 80);
      result = *(v4 + 88);
      v11 = *(v4 + 96);
      v10 = *(v4 + 104);
      *(v4 + 72) = v23;
      *(v4 + 88) = *(v4 + 32);
      *(v4 + 104) = v25;
      *v4 = v24;
      *(v4 + 8) = v22;
      *(v4 + 16) = v21;
      *(v4 + 24) = v26;
      *(v4 + 32) = result;
      *(v4 + 40) = v11;
      *(v4 + 48) = v10;
      v4 -= 56;
      v12 = v32 + 1;
      if (v32 == -1)
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_251AFFBF8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3;
  v8 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_107:
    v4 = *v8;
    if (!*v8)
    {
      goto LABEL_146;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_109:
      v179 = v11;
      v133 = *(v11 + 2);
      if (v133 >= 2)
      {
        while (*v7)
        {
          v134 = *&v11[16 * v133];
          v135 = *&v11[16 * v133 + 24];
          sub_251B00744((*v7 + 56 * v134), (*v7 + 56 * *&v11[16 * v133 + 16]), *v7 + 56 * v135, v4);
          if (v6)
          {
          }

          if (v135 < v134)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_251BFABE4(v11);
          }

          if (v133 - 2 >= *(v11 + 2))
          {
            goto LABEL_134;
          }

          v136 = &v11[16 * v133];
          *v136 = v134;
          *(v136 + 1) = v135;
          v179 = v11;
          result = sub_251BFAB58(v133 - 1);
          v11 = v179;
          v133 = *(v179 + 2);
          if (v133 <= 1)
          {
          }
        }

        goto LABEL_144;
      }
    }

LABEL_140:
    result = sub_251BFABE4(v11);
    v11 = result;
    goto LABEL_109;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  v147 = result;
LABEL_4:
  v12 = v10;
  if (v10 + 1 >= v9)
  {
    v36 = v10 + 1;
    goto LABEL_29;
  }

  v154 = v9;
  v145 = v11;
  v148 = v6;
  v13 = *v7;
  v14 = (*v7 + 56 * (v10 + 1));
  v15 = v14[1];
  v16 = v14[2];
  v17 = v14[3];
  v18 = v14[4];
  v19 = v14[5];
  v20 = v14[6];
  v172 = *v14;
  v173 = v15;
  v174 = v16;
  v175 = v17;
  v176 = v18;
  v177 = v19;
  v178 = v20;
  v21 = (v13 + 56 * v10);
  v22 = v21[1];
  v23 = v21[2];
  v24 = v21[3];
  v25 = v12;
  v26 = v21[4];
  v27 = v21[5];
  v28 = v21[6];
  v167 = v13;
  v169[0] = *v21;
  v169[1] = v22;
  v169[2] = v23;
  v169[3] = v24;
  v169[4] = v26;
  v170 = v27;
  v171 = v28;

  sub_251AFF694(v19, v20);

  sub_251AFF694(v27, v28);
  v156 = sub_251AFF6A8(&v172, v169);
  if (v148)
  {
    v137 = v170;
    v138 = v171;

    sub_251AFF7F4(v137, v138);
    v139 = v177;
    v140 = v178;

    sub_251AFF7F4(v139, v140);
  }

  v29 = v170;
  v30 = v171;

  sub_251AFF7F4(v29, v30);
  v4 = v173;
  v31 = v177;
  v32 = v178;

  result = sub_251AFF7F4(v31, v32);
  v33 = v25 + 2;
  v143 = v25;
  v152 = 56 * v25;
  v34 = (v167 + 56 * v25 + 160);
  while (1)
  {
    v36 = v154;
    if (v154 == v33)
    {
      break;
    }

    v4 = *(v34 - 1);
    v37 = *v34;
    v38 = *(v34 - 12);
    v39 = *(v34 - 10);
    v40 = *(v34 - 7);
    v158 = *(v34 - 8);
    v165 = *(v34 - 2);
    v168 = *(v34 - 5);
    v163 = *(v34 - 3);
    v161 = *(v34 - 9);
    if (*v34 >= 2)
    {

      sub_251AFF694(v4, v37);

      v41 = v158;
      sub_251AFF694(v158, v40);
      sub_251AFF694(v4, v37);
      v42 = v4;
      v43 = v37;
    }

    else
    {

      sub_251AFF694(v4, v37);

      v41 = v158;
      sub_251AFF694(v158, v40);
      sub_251AFF7F4(v4, v37);
      v42 = 0;
      v43 = 0xE000000000000000;
    }

    v160 = v37;
    if (v40 >= 2)
    {

      v44 = v41;
      v46 = v41;
      v45 = v40;
      if (v46 != v42)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v44 = v41;
      sub_251AFF7F4(v41, v40);
      v45 = 0xE000000000000000;
      if (v42)
      {
        goto LABEL_7;
      }
    }

    if (v45 == v43)
    {
      v35 = 0;
      goto LABEL_8;
    }

LABEL_7:
    v35 = sub_251C719D4();
LABEL_8:

    sub_251AFF7F4(v44, v40);

    result = sub_251AFF7F4(v4, v160);
    ++v33;
    v34 += 7;
    if ((v156 ^ v35))
    {
      v36 = v33 - 1;
      break;
    }
  }

  v8 = v147;
  v6 = 0;
  v12 = v143;
  v11 = v145;
  v7 = a3;
  if ((v156 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (v36 < v143)
  {
    goto LABEL_139;
  }

  if (v143 < v36)
  {
    v47 = 56 * v36 - 24;
    v48 = v152 + 48;
    v49 = v36;
    v50 = v143;
    do
    {
      if (v50 != --v49)
      {
        v51 = *a3;
        if (!*a3)
        {
          goto LABEL_143;
        }

        v52 = (v51 + v48);
        v53 = *(v51 + v48 - 48);
        v54 = (v51 + v47);
        v55 = *(v52 - 4);
        v56 = *(v52 - 3);
        v57 = *v52;
        v58 = *(v52 - 1);
        v60 = *(v54 - 1);
        v59 = *v54;
        v61 = *(v54 - 2);
        *v52 = *(v54 + 2);
        *(v52 - 2) = v60;
        *(v52 - 1) = v59;
        *(v52 - 3) = v61;
        *(v54 - 2) = v53;
        *(v54 - 2) = v55;
        *(v54 - 1) = v56;
        *v54 = v58;
        *(v54 + 2) = v57;
      }

      ++v50;
      v47 -= 56;
      v48 += 56;
    }

    while (v50 < v49);
  }

LABEL_29:
  v62 = v7[1];
  if (v36 >= v62)
  {
    goto LABEL_38;
  }

  if (__OFSUB__(v36, v12))
  {
    goto LABEL_136;
  }

  if (v36 - v12 >= a4)
  {
LABEL_38:
    v64 = v36;
    if (v36 < v12)
    {
      goto LABEL_135;
    }

    goto LABEL_39;
  }

  if (__OFADD__(v12, a4))
  {
    goto LABEL_137;
  }

  if (v12 + a4 >= v62)
  {
    v63 = v7[1];
  }

  else
  {
    v63 = v12 + a4;
  }

  if (v63 < v12)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v36 == v63)
  {
    goto LABEL_38;
  }

  v144 = v12;
  v146 = v11;
  v149 = v6;
  v150 = v63;
  v157 = *v7;
  v110 = *v7 + 56 * v36 - 56;
  v111 = v12 - v36;
  while (2)
  {
    v153 = v110;
    v155 = v36;
    v112 = (v157 + 56 * v36);
    v113 = v112[1];
    v115 = v112[3];
    v114 = v112[4];
    v4 = v112[5];
    v116 = v112[6];
    v151 = v111;
    v117 = v111;
LABEL_92:
    v159 = v117;
    v118 = *(v110 + 8);
    v119 = *(v110 + 40);
    v120 = *(v110 + 48);
    v164 = *(v110 + 32);
    v162 = *(v110 + 24);

    sub_251AFF694(v4, v116);

    sub_251AFF694(v119, v120);
    if (v116 >= 2)
    {
      sub_251AFF694(v4, v116);
      v121 = v4;
      v122 = v116;
    }

    else
    {
      sub_251AFF7F4(v4, v116);
      v121 = 0;
      v122 = 0xE000000000000000;
    }

    v166 = v119;
    if (v120 >= 2)
    {

      v124 = v119;
      v123 = v120;
      if (v124 != v121)
      {
        goto LABEL_100;
      }

LABEL_99:
      if (v123 != v122)
      {
        goto LABEL_100;
      }

      sub_251AFF7F4(v166, v120);

      sub_251AFF7F4(v4, v116);
LABEL_90:
      v36 = v155 + 1;
      v110 = v153 + 56;
      v64 = v150;
      v111 = v151 - 1;
      if (v155 + 1 != v150)
      {
        continue;
      }

      v8 = v147;
      v6 = v149;
      v12 = v144;
      v11 = v146;
      v7 = a3;
      if (v150 < v144)
      {
        goto LABEL_135;
      }

LABEL_39:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_251C38DF0(0, *(v11 + 2) + 1, 1, v11);
        v11 = result;
      }

      v4 = *(v11 + 2);
      v65 = *(v11 + 3);
      v66 = v4 + 1;
      if (v4 >= v65 >> 1)
      {
        result = sub_251C38DF0((v65 > 1), v4 + 1, 1, v11);
        v11 = result;
      }

      *(v11 + 2) = v66;
      v67 = &v11[16 * v4];
      *(v67 + 4) = v12;
      *(v67 + 5) = v64;
      v68 = *v8;
      if (!v68)
      {
        goto LABEL_145;
      }

      v10 = v64;
      if (v4)
      {
        while (2)
        {
          v69 = v66 - 1;
          if (v66 >= 4)
          {
            v74 = &v11[16 * v66 + 32];
            v75 = *(v74 - 64);
            v76 = *(v74 - 56);
            v80 = __OFSUB__(v76, v75);
            v77 = v76 - v75;
            if (v80)
            {
              goto LABEL_122;
            }

            v79 = *(v74 - 48);
            v78 = *(v74 - 40);
            v80 = __OFSUB__(v78, v79);
            v72 = v78 - v79;
            v73 = v80;
            if (v80)
            {
              goto LABEL_123;
            }

            v81 = &v11[16 * v66];
            v83 = *v81;
            v82 = *(v81 + 1);
            v80 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v80)
            {
              goto LABEL_125;
            }

            v80 = __OFADD__(v72, v84);
            v85 = v72 + v84;
            if (v80)
            {
              goto LABEL_128;
            }

            if (v85 >= v77)
            {
              v103 = &v11[16 * v69 + 32];
              v105 = *v103;
              v104 = *(v103 + 1);
              v80 = __OFSUB__(v104, v105);
              v106 = v104 - v105;
              if (v80)
              {
                goto LABEL_132;
              }

              if (v72 < v106)
              {
                v69 = v66 - 2;
              }
            }

            else
            {
LABEL_58:
              if (v73)
              {
                goto LABEL_124;
              }

              v86 = &v11[16 * v66];
              v88 = *v86;
              v87 = *(v86 + 1);
              v89 = __OFSUB__(v87, v88);
              v90 = v87 - v88;
              v91 = v89;
              if (v89)
              {
                goto LABEL_127;
              }

              v92 = &v11[16 * v69 + 32];
              v94 = *v92;
              v93 = *(v92 + 1);
              v80 = __OFSUB__(v93, v94);
              v95 = v93 - v94;
              if (v80)
              {
                goto LABEL_130;
              }

              if (__OFADD__(v90, v95))
              {
                goto LABEL_131;
              }

              if (v90 + v95 < v72)
              {
                goto LABEL_72;
              }

              if (v72 < v95)
              {
                v69 = v66 - 2;
              }
            }
          }

          else
          {
            if (v66 == 3)
            {
              v70 = *(v11 + 4);
              v71 = *(v11 + 5);
              v80 = __OFSUB__(v71, v70);
              v72 = v71 - v70;
              v73 = v80;
              goto LABEL_58;
            }

            v96 = &v11[16 * v66];
            v98 = *v96;
            v97 = *(v96 + 1);
            v80 = __OFSUB__(v97, v98);
            v90 = v97 - v98;
            v91 = v80;
LABEL_72:
            if (v91)
            {
              goto LABEL_126;
            }

            v99 = &v11[16 * v69];
            v101 = *(v99 + 4);
            v100 = *(v99 + 5);
            v80 = __OFSUB__(v100, v101);
            v102 = v100 - v101;
            if (v80)
            {
              goto LABEL_129;
            }

            if (v102 < v90)
            {
              break;
            }
          }

          v4 = v69 - 1;
          if (v69 - 1 >= v66)
          {
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
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            goto LABEL_138;
          }

          if (!*v7)
          {
            goto LABEL_142;
          }

          v107 = *&v11[16 * v4 + 32];
          v108 = *&v11[16 * v69 + 40];
          sub_251B00744((*v7 + 56 * v107), (*v7 + 56 * *&v11[16 * v69 + 32]), *v7 + 56 * v108, v68);
          if (v6)
          {
          }

          if (v108 < v107)
          {
            goto LABEL_120;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_251BFABE4(v11);
          }

          if (v4 >= *(v11 + 2))
          {
            goto LABEL_121;
          }

          v109 = &v11[16 * v4];
          *(v109 + 4) = v107;
          *(v109 + 5) = v108;
          v179 = v11;
          result = sub_251BFAB58(v69);
          v11 = v179;
          v66 = *(v179 + 2);
          if (v66 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v9 = v7[1];
      v8 = v147;
      if (v10 >= v9)
      {
        goto LABEL_107;
      }

      goto LABEL_4;
    }

    break;
  }

  sub_251AFF7F4(v119, v120);
  v123 = 0xE000000000000000;
  if (!v121)
  {
    goto LABEL_99;
  }

LABEL_100:
  v125 = sub_251C719D4();

  sub_251AFF7F4(v166, v120);

  result = sub_251AFF7F4(v4, v116);
  if ((v125 & 1) == 0)
  {
    goto LABEL_90;
  }

  if (v157)
  {
    v127 = *(v110 + 64);
    v126 = *(v110 + 72);
    v128 = *(v110 + 16);
    v130 = *(v110 + 48);
    v129 = *(v110 + 56);
    *(v110 + 56) = *v110;
    v132 = *(v110 + 80);
    v131 = *(v110 + 88);
    v4 = *(v110 + 96);
    v116 = *(v110 + 104);
    *(v110 + 72) = v128;
    *(v110 + 88) = *(v110 + 32);
    *(v110 + 104) = v130;
    *v110 = v129;
    *(v110 + 8) = v127;
    *(v110 + 16) = v126;
    *(v110 + 24) = v132;
    *(v110 + 32) = v131;
    *(v110 + 40) = v4;
    *(v110 + 48) = v116;
    v110 -= 56;
    v117 = v159 + 1;
    if (v159 == -1)
    {
      goto LABEL_90;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_251B00744(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 56;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 56;
  if (v9 >= v11)
  {
    if (a4 != __src || &__src[56 * v11] <= a4)
    {
      memmove(a4, __src, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      goto LABEL_52;
    }

    v66 = v4;
    v60 = v7;
LABEL_31:
    v28 = v5 - 56;
    v68 = v6;
    while (1)
    {
      v29 = *(v12 - 2);
      v30 = *(v12 - 1);
      v62 = v12;
      v31 = *(v6 - 6);
      v32 = v6;
      v33 = *(v6 - 4);
      v34 = *(v32 - 2);
      v35 = *(v32 - 1);
      v56 = *(v12 - 3);
      v58 = *(v12 - 6);
      v54 = *(v12 - 4);
      v51 = *(v32 - 3);

      sub_251AFF694(v29, v30);

      sub_251AFF694(v34, v35);
      if (v30 >= 2)
      {
        sub_251AFF694(v29, v30);
        v36 = v29;
        v37 = v30;
      }

      else
      {
        sub_251AFF7F4(v29, v30);
        v36 = 0;
        v37 = 0xE000000000000000;
      }

      v64 = v28;
      if (v35 >= 2)
      {

        v38 = v35;
        if (v34 != v36)
        {
          goto LABEL_42;
        }
      }

      else
      {
        sub_251AFF7F4(v34, v35);
        v38 = 0xE000000000000000;
        if (v36)
        {
          goto LABEL_42;
        }
      }

      if (v38 != v37)
      {
LABEL_42:
        v39 = sub_251C719D4();
        goto LABEL_43;
      }

      v39 = 0;
LABEL_43:

      sub_251AFF7F4(v34, v35);

      sub_251AFF7F4(v29, v30);
      if (v39)
      {
        v44 = (v68 - 56);
        v5 = v64;
        v4 = v66;
        v12 = v62;
        if ((v64 + 56) != v68)
        {
          v45 = *v44;
          v46 = *(v68 - 40);
          v47 = *(v68 - 24);
          *(v64 + 48) = *(v68 - 1);
          *(v64 + 16) = v46;
          *(v64 + 32) = v47;
          *v64 = v45;
        }

        if (v62 <= v66 || (v6 = v68 - 56, v44 <= v60))
        {
          v6 = v68 - 56;
          goto LABEL_52;
        }

        goto LABEL_31;
      }

      v40 = v62 - 56;
      v4 = v66;
      v6 = v68;
      if ((v64 + 56) != v62)
      {
        v41 = *v40;
        v42 = *(v62 - 40);
        v43 = *(v62 - 24);
        *(v64 + 48) = *(v62 - 1);
        *(v64 + 16) = v42;
        *(v64 + 32) = v43;
        *v64 = v41;
      }

      v28 = v64 - 56;
      v12 = v62 - 56;
      if (v40 <= v66)
      {
        v12 = v62 - 56;
        goto LABEL_52;
      }
    }
  }

  if (a4 != __dst || &__dst[56 * v9] <= a4)
  {
    memmove(a4, __dst, 56 * v9);
  }

  v12 = &v4[56 * v9];
  if (v8 >= 56 && v6 < v5)
  {
    v61 = &v4[56 * v9];
    v63 = v5;
    do
    {
      v59 = v7;
      v13 = *(v6 + 5);
      v14 = *(v6 + 6);
      v67 = v6;
      v15 = *(v4 + 4);
      v16 = *(v4 + 5);
      v17 = *(v4 + 6);
      v65 = v4;
      v55 = *(v6 + 1);
      v57 = *(v6 + 4);
      v52 = *(v4 + 1);
      v53 = *(v6 + 3);
      v50 = *(v4 + 3);

      sub_251AFF694(v13, v14);

      sub_251AFF694(v16, v17);
      if (v14 >= 2)
      {
        sub_251AFF694(v13, v14);
        v18 = v13;
        v19 = v14;
      }

      else
      {
        sub_251AFF7F4(v13, v14);
        v18 = 0;
        v19 = 0xE000000000000000;
      }

      if (v17 >= 2)
      {

        v20 = v17;
        if (v16 != v18)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_251AFF7F4(v16, v17);
        v20 = 0xE000000000000000;
        if (v18)
        {
          goto LABEL_17;
        }
      }

      if (v20 == v19)
      {

        sub_251AFF7F4(v16, v17);

        sub_251AFF7F4(v13, v14);
LABEL_20:
        v22 = v65;
        v4 = v65 + 56;
        v23 = v59;
        v24 = v63;
        if (v59 == v65)
        {
          goto LABEL_22;
        }

LABEL_21:
        v25 = *v22;
        v26 = *(v22 + 1);
        v27 = *(v22 + 2);
        *(v23 + 6) = *(v22 + 6);
        *(v23 + 1) = v26;
        *(v23 + 2) = v27;
        *v23 = v25;
        goto LABEL_22;
      }

LABEL_17:
      v21 = sub_251C719D4();

      sub_251AFF7F4(v16, v17);

      sub_251AFF7F4(v13, v14);
      if ((v21 & 1) == 0)
      {
        goto LABEL_20;
      }

      v22 = v6;
      v23 = v59;
      v6 += 56;
      v4 = v65;
      v24 = v63;
      if (v59 != v67)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 = v23 + 56;
      v12 = v61;
    }

    while (v4 < v61 && v6 < v24);
  }

  v6 = v7;
LABEL_52:
  v48 = (v12 - v4) / 56;
  if (v6 != v4 || v6 >= &v4[56 * v48])
  {
    memmove(v6, v4, 56 * v48);
  }

  return 1;
}

void *sub_251B00DAC(uint64_t *a1)
{
  sub_251B00F34();
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B00F90();
  sub_251C71B04();
  if (!v1)
  {
    sub_251B00FE4();
    sub_251B01034();
    sub_251C718A4();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void sub_251B00F34()
{
  if (!qword_27F479C58)
  {
    sub_251B00F90();
    v0 = sub_251C718E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479C58);
    }
  }
}

unint64_t sub_251B00F90()
{
  result = qword_27F479C60;
  if (!qword_27F479C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C60);
  }

  return result;
}

void sub_251B00FE4()
{
  if (!qword_27F479C68)
  {
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479C68);
    }
  }
}

unint64_t sub_251B01034()
{
  result = qword_27F479C70;
  if (!qword_27F479C70)
  {
    sub_251B00FE4();
    sub_251B010AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C70);
  }

  return result;
}

unint64_t sub_251B010AC()
{
  result = qword_27F479C78;
  if (!qword_27F479C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C78);
  }

  return result;
}

unint64_t sub_251B01114()
{
  result = qword_27F479C80;
  if (!qword_27F479C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C80);
  }

  return result;
}

unint64_t sub_251B0116C()
{
  result = qword_27F479C88;
  if (!qword_27F479C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C88);
  }

  return result;
}

unint64_t sub_251B011C4()
{
  result = qword_27F479C90;
  if (!qword_27F479C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479C90);
  }

  return result;
}

uint64_t sub_251B01218(void *a1)
{
  sub_251B0152C();
  v16[0] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v7 = sub_251C70764();
  __swift_project_value_buffer(v7, qword_2813E8130);
  v8 = sub_251C70744();
  v9 = sub_251C713C4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_251A6C000, v8, v9, "Retrieving multi device ID.", v10, 2u);
    MEMORY[0x25308E2B0](v10, -1, -1);
  }

  v16[1] = sub_251C71454();
  *(swift_allocObject() + 16) = a1;
  v11 = a1;
  sub_251C70964();
  sub_251B01638();
  v12 = MEMORY[0x277CBCD88];
  sub_251B01F58(0, &qword_2813E2160, MEMORY[0x277CBCD88]);
  sub_251B016C4(&qword_2813E2038, sub_251B01638);
  sub_251B01F08(&qword_2813E2168, &qword_2813E2160, v12);
  sub_251C70B94();

  sub_251B016C4(&qword_2813E2310, sub_251B0152C);
  v13 = v16[0];
  v14 = sub_251C70A94();
  (*(v3 + 8))(v6, v13);
  return v14;
}

void sub_251B0152C()
{
  if (!qword_2813E2308)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251B01F58(255, &qword_2813E2160, MEMORY[0x277CBCD88]);
    sub_251B01638();
    sub_251B01F08(&qword_2813E2168, &qword_2813E2160, v0);
    sub_251B016C4(&qword_2813E2038, sub_251B01638);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2308);
    }
  }
}

void sub_251B01638()
{
  if (!qword_2813E2030)
  {
    sub_251B01BF0(255, &qword_2813E1FA0, MEMORY[0x277D83D88]);
    sub_251A82284();
    v0 = sub_251C70A54();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2030);
    }
  }
}

uint64_t sub_251B016C4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251B0170C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251B01BF0(0, &qword_2813E2090, MEMORY[0x277CBCE78]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v31 - v10;
  sub_251B01F58(0, &qword_2813E1C00, MEMORY[0x277CBCF38]);
  v13 = v12;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v31 - v16;
  v18 = a1[1];
  if (v18)
  {
    v33 = v8;
    v34 = v15;
    v19 = *a1;
    v20 = qword_2813E26F8;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_251C70764();
    __swift_project_value_buffer(v21, qword_2813E8130);

    v22 = sub_251C70744();
    v23 = sub_251C713C4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v32 = a3;
      v25 = v24;
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_251B10780(v19, v18, v35);
      _os_log_impl(&dword_251A6C000, v22, v23, "Multi device ID found. Device ID: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x25308E2B0](v26, -1, -1);
      v27 = v25;
      a3 = v32;
      MEMORY[0x25308E2B0](v27, -1, -1);
    }

    v28 = v33;
    v35[0] = v19;
    v35[1] = v18;
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v28 + 8))(v11, v7);
    sub_251B01F08(&qword_2813E1C08, &qword_2813E1C00, MEMORY[0x277CBCF38]);
    v29 = sub_251C70A94();
    result = (*(v34 + 8))(v17, v13);
  }

  else
  {
    result = sub_251B01C44(a2);
    v29 = result;
  }

  *a3 = v29;
  return result;
}

void sub_251B01A80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  v11 = sub_251C70EE4();
  v12 = sub_251C70EE4();
  v13 = swift_allocObject();
  v13[2] = sub_251B01FC8;
  v13[3] = v10;
  v13[4] = a4;
  v13[5] = a5;
  v15[4] = sub_251AC6600;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_251BCB170;
  v15[3] = &block_descriptor_5;
  v14 = _Block_copy(v15);

  [a3 setString:v11 forKey:v12 completion:v14];
  _Block_release(v14);
}

void sub_251B01BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251B01C44(void *a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C70064();
  v7 = sub_251C70024();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v10 = sub_251C70764();
  __swift_project_value_buffer(v10, qword_2813E8130);

  v11 = sub_251C70744();
  v12 = sub_251C713C4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_251B10780(v7, v9, &v24);
    _os_log_impl(&dword_251A6C000, v11, v12, "Creating and storing a new multi device ID. Device ID: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x25308E2B0](v14, -1, -1);
    MEMORY[0x25308E2B0](v13, -1, -1);
  }

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v7;
  v15[4] = v9;
  v16 = MEMORY[0x277CBCEA8];
  sub_251B01F58(0, &qword_2813E2020, MEMORY[0x277CBCEA8]);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v20 = a1;
  v24 = sub_251C70A64();
  sub_251B01F08(&qword_2813E2028, &qword_2813E2020, v16);
  v21 = sub_251C70A94();

  return v21;
}

uint64_t sub_251B01F08(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251B01F58(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251B01F58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251A82284();
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_251B01FEC(uint64_t a1)
{
  v26 = *(a1 + 16);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v25 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  while (1)
  {
    v4 = *(v25 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v23 = *(v25 + 8 * v1);
      }

      v6 = sub_251C717F4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v24 = sub_251C717F4();
      v9 = v24 + v6;
      if (__OFADD__(v24, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_251C717F4();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = sub_251C716C4();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v6)
    {
      goto LABEL_40;
    }

    v28 = v2;
    v15 = v10 + 8 * v12 + 32;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_251AE406C(0);
      sub_251B04D4C(&qword_27F479260, sub_251AE406C);
      for (i = 0; i != v14; ++i)
      {
        v17 = sub_251AA7634(v27, i, v4);
        v19 = *v18;

        (v17)(v27, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      type metadata accessor for ClinicalSharingSyncContext();
      swift_arrayInitWithCopy();
    }

    v2 = v28;
    if (v6 >= 1)
    {
      v20 = *(v10 + 16);
      v21 = __OFADD__(v20, v6);
      v22 = v20 + v6;
      if (v21)
      {
        goto LABEL_41;
      }

      *(v10 + 16) = v22;
    }

LABEL_4:
    if (++v1 == v26)
    {
      return v2;
    }
  }

  result = sub_251C717F4();
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_251B022AC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ClinicalSharingDataNodeInfo();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05194(0, &qword_27F479D08, sub_251B07EA0, MEMORY[0x277CBCE78]);
  v64 = v11;
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v13;
  sub_251B07ED4(0);
  v63 = v14;
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B09638(0);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05118(0, &qword_27F4799E8, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingDataNodeInfo);
  v72 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v71 = &v55 - v26;
  v27 = type metadata accessor for PBNode(0);
  v68 = *(v27 - 8);
  v28 = *(v68 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v32 = *(*a1 + 16);
  if (v32)
  {
    v55 = a2;
    v56 = a3;
    v57 = a4;
    v73 = MEMORY[0x277D84F90];
    sub_251C0BAD4(0, v32, 0);
    v33 = v73;
    v34 = v31 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v70 = *(v21 + 72);
    v35 = v34;
    v36 = v32;
    do
    {
      v37 = v71;
      sub_251B09658(v35, v71, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
      sub_251B096D4(v37, v25, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
      v38 = *(v72 + 48);
      sub_251B095CC(v25, v30, type metadata accessor for PBNode);
      sub_251B06650(&v25[v38], type metadata accessor for ClinicalSharingDataNodeInfo);
      v73 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_251C0BAD4(v39 > 1, v40 + 1, 1);
        v33 = v73;
      }

      *(v33 + 16) = v40 + 1;
      sub_251B095CC(v30, v33 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v40, type metadata accessor for PBNode);
      v35 += v70;
      --v36;
    }

    while (v36);
    v73 = MEMORY[0x277D84F90];
    sub_251C0BA8C(0, v32, 0);
    v41 = v73;
    v42 = v58;
    do
    {
      v43 = v71;
      sub_251B09658(v34, v71, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
      sub_251B096D4(v43, v25, &qword_27F4799E8, type metadata accessor for ClinicalSharingDataNodeInfo);
      sub_251B095CC(&v25[*(v72 + 48)], v42, type metadata accessor for ClinicalSharingDataNodeInfo);
      sub_251B06650(v25, type metadata accessor for PBNode);
      v73 = v41;
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_251C0BA8C(v44 > 1, v45 + 1, 1);
        v42 = v58;
        v41 = v73;
      }

      *(v41 + 16) = v45 + 1;
      sub_251B095CC(v42, v41 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v45, type metadata accessor for ClinicalSharingDataNodeInfo);
      v34 += v70;
      --v32;
    }

    while (v32);
    a2 = v55;
    a3 = v56;
    a4 = v57;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
  }

  v73 = v33;
  sub_251B07EA0(0);
  v46 = v60;
  sub_251C70A24();
  sub_251A82284();
  v47 = v59;
  v48 = v64;
  sub_251C709F4();
  (*(v62 + 8))(v46, v48);
  v49 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v50 = sub_251B08048(v49, a3);
  (*(v61 + 8))(v47, v63);
  v73 = v50;
  *(swift_allocObject() + 16) = v41;
  sub_251B07F28(0);
  sub_251ABA5A0();
  sub_251B04D4C(&qword_27F479C20, sub_251B07F28);
  v51 = v65;
  sub_251C70AE4();

  sub_251B04D4C(&qword_27F479DF0, sub_251B09638);
  v52 = v67;
  v53 = sub_251C70A94();
  result = (*(v66 + 8))(v51, v52);
  *a4 = v53;
  return result;
}

uint64_t sub_251B02AC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  sub_251B08E1C();
  v42 = v4;
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B08F34();
  v43 = v8;
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v8);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(*a1 + 16);
  if (!v12)
  {
    v14 = MEMORY[0x277D84F90];
LABEL_20:
    v2 = sub_251B08FF0(v14);

    if (qword_2813E26F8 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  while (v13 < *(v11 + 16))
  {
    v15 = *(v11 + 32 + 8 * v13);
    v2 = *(v15 + 16);
    v16 = v14[2];
    v17 = v16 + v2;
    if (__OFADD__(v16, v2))
    {
      goto LABEL_26;
    }

    v18 = *(v11 + 32 + 8 * v13);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= v14[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v20 = v16 + v2;
      }

      else
      {
        v20 = v16;
      }

      v14 = sub_251C3926C(isUniquelyReferenced_nonNull_native, v20, 1, v14);
      if (*(v15 + 16))
      {
LABEL_15:
        v21 = (v14[3] >> 1) - v14[2];
        v22 = *(type metadata accessor for ClinicalSharingDataNodeInfo() - 8);
        if (v21 < v2)
        {
          goto LABEL_28;
        }

        v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
        v24 = *(v22 + 72);
        swift_arrayInitWithCopy();

        if (v2)
        {
          v25 = v14[2];
          v26 = __OFADD__(v25, v2);
          v27 = v25 + v2;
          if (v26)
          {
            goto LABEL_29;
          }

          v14[2] = v27;
        }

        goto LABEL_4;
      }
    }

    if (v2)
    {
      goto LABEL_27;
    }

LABEL_4:
    if (v12 == ++v13)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_21:
  v28 = sub_251C70764();
  __swift_project_value_buffer(v28, qword_2813E8130);

  v29 = sub_251C70744();
  v30 = sub_251C713C4();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134217984;
    *(v31 + 4) = *(v2 + 16);

    _os_log_impl(&dword_251A6C000, v29, v30, "Data nodes uploaded. Category Count: %ld", v31, 0xCu);
    MEMORY[0x25308E2B0](v31, -1, -1);
  }

  else
  {
  }

  v33 = v43;
  v32 = v44;
  v35 = v41;
  v34 = v42;
  v36 = v40;
  v46 = v2;
  sub_251B08ECC();
  sub_251B04D4C(&qword_27F479DC8, sub_251B08ECC);
  sub_251C710D4();

  sub_251A82284();
  v37 = v45;
  sub_251C708E4();
  (*(v36 + 8))(v7, v34);
  sub_251B04D4C(&qword_27F479DD8, sub_251B08F34);
  v38 = sub_251C70A94();
  result = (*(v35 + 8))(v37, v33);
  *v32 = v38;
  return result;
}

uint64_t sub_251B02F54@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for ClinicalSharingCategoryNodeInfo();
  v69 = *(v8 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05194(0, &qword_27F479D08, sub_251B07EA0, MEMORY[0x277CBCE78]);
  v64 = v11;
  v62 = *(v11 - 8);
  v12 = *(v62 + 64);
  MEMORY[0x28223BE20](v11);
  v60 = &v55 - v13;
  sub_251B07ED4(0);
  v63 = v14;
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x28223BE20](v14);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B08D50(0);
  v66 = *(v17 - 8);
  v67 = v17;
  v18 = *(v66 + 64);
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05118(0, &qword_27F479978, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingCategoryNodeInfo);
  v72 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v71 = &v55 - v26;
  v27 = type metadata accessor for PBNode(0);
  v68 = *(v27 - 8);
  v28 = *(v68 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v32 = *(*a1 + 16);
  if (v32)
  {
    v55 = a2;
    v56 = a3;
    v57 = a4;
    v73 = MEMORY[0x277D84F90];
    sub_251C0BAD4(0, v32, 0);
    v33 = v73;
    v34 = v31 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v70 = *(v21 + 72);
    v35 = v34;
    v36 = v32;
    do
    {
      v37 = v71;
      sub_251B09658(v35, v71, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251B096D4(v37, v25, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v38 = *(v72 + 48);
      sub_251B095CC(v25, v30, type metadata accessor for PBNode);
      sub_251B06650(&v25[v38], type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v73 = v33;
      v40 = *(v33 + 16);
      v39 = *(v33 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_251C0BAD4(v39 > 1, v40 + 1, 1);
        v33 = v73;
      }

      *(v33 + 16) = v40 + 1;
      sub_251B095CC(v30, v33 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v40, type metadata accessor for PBNode);
      v35 += v70;
      --v36;
    }

    while (v36);
    v73 = MEMORY[0x277D84F90];
    sub_251C0BB1C(0, v32, 0);
    v41 = v73;
    v42 = v58;
    do
    {
      v43 = v71;
      sub_251B09658(v34, v71, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251B096D4(v43, v25, &qword_27F479978, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251B095CC(&v25[*(v72 + 48)], v42, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      sub_251B06650(v25, type metadata accessor for PBNode);
      v73 = v41;
      v45 = *(v41 + 16);
      v44 = *(v41 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_251C0BB1C(v44 > 1, v45 + 1, 1);
        v42 = v58;
        v41 = v73;
      }

      *(v41 + 16) = v45 + 1;
      sub_251B095CC(v42, v41 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v45, type metadata accessor for ClinicalSharingCategoryNodeInfo);
      v34 += v70;
      --v32;
    }

    while (v32);
    a2 = v55;
    a3 = v56;
    a4 = v57;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
  }

  v73 = v33;
  sub_251B07EA0(0);
  v46 = v60;
  sub_251C70A24();
  sub_251A82284();
  v47 = v59;
  v48 = v64;
  sub_251C709F4();
  (*(v62 + 8))(v46, v48);
  v49 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v50 = sub_251B08048(v49, a3);
  (*(v61 + 8))(v47, v63);
  v73 = v50;
  *(swift_allocObject() + 16) = v41;
  sub_251B07F28(0);
  sub_251AE64F0(0);
  sub_251B04D4C(&qword_27F479C20, sub_251B07F28);
  v51 = v65;
  sub_251C70AE4();

  sub_251B04D4C(&qword_27F479DB0, sub_251B08D50);
  v52 = v67;
  v53 = sub_251C70A94();
  result = (*(v66 + 8))(v51, v52);
  *a4 = v53;
  return result;
}

void sub_251B03768(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (!v4)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_20:
    if (qword_2813E26F8 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v5 < *(v3 + 16))
  {
    v7 = *(v3 + 32 + 8 * v5);
    v8 = *(v7 + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_26;
    }

    v11 = *(v3 + 32 + 8 * v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v13 = v9 + v8;
      }

      else
      {
        v13 = v9;
      }

      v6 = sub_251C392A0(isUniquelyReferenced_nonNull_native, v13, 1, v6);
      if (*(v7 + 16))
      {
LABEL_15:
        v14 = (v6[3] >> 1) - v6[2];
        v15 = *(type metadata accessor for ClinicalSharingCategoryNodeInfo() - 8);
        if (v14 < v8)
        {
          goto LABEL_28;
        }

        v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v17 = *(v15 + 72);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v18 = v6[2];
          v19 = __OFADD__(v18, v8);
          v20 = v18 + v8;
          if (v19)
          {
            goto LABEL_29;
          }

          v6[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_27;
    }

LABEL_4:
    if (v4 == ++v5)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_21:
  v21 = sub_251C70764();
  __swift_project_value_buffer(v21, qword_2813E8130);

  v22 = sub_251C70744();
  v23 = sub_251C713C4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = v6[2];

    _os_log_impl(&dword_251A6C000, v22, v23, "Category nodes uploaded. Count: %ld", v24, 0xCu);
    MEMORY[0x25308E2B0](v24, -1, -1);
  }

  else
  {
  }

  *a2 = v6;
}

uint64_t sub_251B039D8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v122 = a3;
  v120 = a2;
  v133 = a4;
  sub_251B05118(0, &qword_27F479C98, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingSyncContext);
  v137 = v5;
  v136 = *(v5 - 8);
  v6 = *(v136 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v113 - v7;
  sub_251B04AC4();
  v115 = v9;
  v114 = *(v9 - 8);
  v10 = *(v114 + 64);
  MEMORY[0x28223BE20](v9);
  v113 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04BFC();
  v118 = v12;
  v117 = *(v12 - 8);
  v13 = *(v117 + 64);
  MEMORY[0x28223BE20](v12);
  v116 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04CB8();
  v125 = v15;
  v123 = *(v15 - 8);
  v16 = *(v123 + 64);
  MEMORY[0x28223BE20](v15);
  v119 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04D94();
  v126 = v18;
  v124 = *(v18 - 8);
  v19 = *(v124 + 64);
  MEMORY[0x28223BE20](v18);
  v121 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04EB4();
  v131 = v21;
  v129 = *(v21 - 8);
  v22 = *(v129 + 64);
  MEMORY[0x28223BE20](v21);
  v127 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B04F48();
  v132 = v24;
  v130 = *(v24 - 8);
  v25 = *(v130 + 64);
  MEMORY[0x28223BE20](v24);
  v128 = &v113 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B050E4(0);
  v141 = v27;
  v145 = *(v27 - 8);
  v28 = *(v145 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v139 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v138 = &v113 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v113 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v135 = &v113 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v113 - v39;
  v41 = MEMORY[0x28223BE20](v38);
  v140 = &v113 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v134 = &v113 - v44;
  result = MEMORY[0x28223BE20](v43);
  v47 = &v113 - v46;
  v48 = *a1;
  v49 = *(*a1 + 16);
  v50 = MEMORY[0x277D84F90];
  v142 = v8;
  v143 = v49;
  v144 = v48;
  if (v49)
  {
    v51 = 0;
    v52 = v134;
    while (v51 < *(v48 + 16))
    {
      v53 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v54 = *(v145 + 72);
      sub_251B09564(v48 + v53 + v54 * v51, v47, sub_251B050E4);
      v55 = type metadata accessor for PBNode(0);
      if ((*(*(v55 - 8) + 48))(v47, 1, v55) == 1)
      {
        sub_251B095CC(v47, v52, sub_251B050E4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v146[0] = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_251C0BBA8(0, *(v50 + 16) + 1, 1);
          v52 = v134;
          v50 = *&v146[0];
        }

        v58 = *(v50 + 16);
        v57 = *(v50 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_251C0BBA8(v57 > 1, v58 + 1, 1);
          v52 = v134;
          v50 = *&v146[0];
        }

        *(v50 + 16) = v58 + 1;
        result = sub_251B095CC(v52, v50 + v53 + v58 * v54, sub_251B050E4);
        v8 = v142;
      }

      else
      {
        result = sub_251B06650(v47, sub_251B050E4);
      }

      ++v51;
      v48 = v144;
      if (v143 == v51)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

LABEL_12:
  v59 = *(v50 + 16);
  if (v59)
  {
    v134 = v35;
    *&v146[0] = MEMORY[0x277D84F90];
    sub_251C71764();
    v60 = v50 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v61 = *(v145 + 72);
    v62 = v141;
    v63 = v140;
    do
    {
      sub_251B09564(v60, v63, sub_251B050E4);
      sub_251B095CC(v63, v40, sub_251B050E4);
      v64 = *&v40[*(v62 + 48)];
      sub_251B06650(v40, sub_251AE65AC);
      sub_251C71734();
      v65 = *(*&v146[0] + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      v60 += v61;
      --v59;
    }

    while (v59);

    v66 = *&v146[0];
    v8 = v142;
    v35 = v134;
  }

  else
  {

    v66 = MEMORY[0x277D84F90];
  }

  v67 = MEMORY[0x277D84F90];
  v68 = v135;
  v69 = v144;
  if (v143)
  {
    v70 = 0;
    v71 = MEMORY[0x277D84F90];
    while (v70 < *(v69 + 16))
    {
      v72 = (*(v145 + 80) + 32) & ~*(v145 + 80);
      v73 = *(v145 + 72);
      sub_251B09564(v69 + v72 + v73 * v70, v68, sub_251B050E4);
      v74 = type metadata accessor for PBNode(0);
      if ((*(*(v74 - 8) + 48))(v68, 1, v74) == 1)
      {
        result = sub_251B06650(v68, sub_251B050E4);
      }

      else
      {
        sub_251B095CC(v68, v35, sub_251B050E4);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        *&v146[0] = v71;
        if ((v75 & 1) == 0)
        {
          sub_251C0BBA8(0, *(v71 + 16) + 1, 1);
          v71 = *&v146[0];
        }

        v77 = *(v71 + 16);
        v76 = *(v71 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_251C0BBA8(v76 > 1, v77 + 1, 1);
          v71 = *&v146[0];
        }

        *(v71 + 16) = v77 + 1;
        result = sub_251B095CC(v35, v71 + v72 + v77 * v73, sub_251B050E4);
        v8 = v142;
        v68 = v135;
      }

      ++v70;
      v69 = v144;
      if (v143 == v70)
      {
        goto LABEL_29;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v71 = MEMORY[0x277D84F90];
LABEL_29:
  v78 = *(v71 + 16);
  if (v78)
  {
    v144 = v66;
    *&v146[0] = v67;
    result = sub_251C0BB64(0, v78, 0);
    v79 = 0;
    v80 = *&v146[0];
    v81 = v71 + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    while (v79 < *(v71 + 16))
    {
      v82 = v8;
      v83 = v138;
      sub_251B09564(v81 + *(v145 + 72) * v79, v138, sub_251B050E4);
      v84 = v139;
      sub_251B09564(v83, v139, sub_251B050E4);
      v85 = v141;
      v86 = *(v84 + *(v141 + 48));

      v87 = type metadata accessor for PBNode(0);
      result = (*(*(v87 - 8) + 48))(v84, 1, v87);
      if (result == 1)
      {
        goto LABEL_42;
      }

      v88 = *(v137 + 48);
      sub_251B095CC(v84, v82, type metadata accessor for PBNode);
      v89 = v83;
      v90 = v140;
      sub_251B095CC(v89, v140, sub_251B050E4);
      v91 = *(v85 + 48);
      v8 = v82;
      *(v82 + v88) = *(v90 + v91);
      sub_251B06650(v90, sub_251AE65AC);
      *&v146[0] = v80;
      v93 = *(v80 + 16);
      v92 = *(v80 + 24);
      if (v93 >= v92 >> 1)
      {
        sub_251C0BB64(v92 > 1, v93 + 1, 1);
        v80 = *&v146[0];
      }

      ++v79;
      *(v80 + 16) = v93 + 1;
      result = sub_251B096D4(v8, v80 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v93, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      if (v78 == v79)
      {

        v66 = v144;
        goto LABEL_38;
      }
    }

    goto LABEL_41;
  }

  v80 = MEMORY[0x277D84F90];
LABEL_38:
  *&v146[0] = v80;
  sub_251B04B74();
  sub_251B04D4C(&qword_27F479CB0, sub_251B04B74);
  v94 = v113;
  sub_251C710D4();

  sub_251A82284();
  v95 = v116;
  v96 = v115;
  sub_251C708E4();
  (*(v114 + 8))(v94, v96);
  v97 = v120;
  v98 = __swift_project_boxed_opaque_existential_1(v120, v120[3]);
  v99 = *(v98 + *(type metadata accessor for ClinicalSharingCloudStandardAPI() + 28));
  sub_251B04D4C(&qword_27F479CC8, sub_251B04BFC);
  v100 = v119;
  v101 = v118;
  sub_251C70B74();
  (*(v117 + 8))(v95, v101);
  sub_251A823B4(v97, &v148);
  sub_251AE5810(v122, v146);
  v102 = swift_allocObject();
  sub_251A7E8D8(&v148, v102 + 16);
  v103 = v146[3];
  *(v102 + 88) = v146[2];
  *(v102 + 104) = v103;
  *(v102 + 120) = v146[4];
  *(v102 + 136) = v147;
  v104 = v146[1];
  *(v102 + 56) = v146[0];
  *(v102 + 72) = v104;
  sub_251C70964();
  sub_251AE406C(0);
  sub_251B04E80(0);
  sub_251B04D4C(&qword_27F479CD8, sub_251B04CB8);
  sub_251B04D4C(&qword_2813E2138, sub_251B04E80);
  v105 = v121;
  v106 = v125;
  sub_251C70B94();

  (*(v123 + 8))(v100, v106);
  sub_251B04D4C(&qword_27F479CE8, sub_251B04D94);
  v107 = v127;
  v108 = v126;
  sub_251C70B64();
  (*(v124 + 8))(v105, v108);
  *(swift_allocObject() + 16) = v66;
  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext();
  sub_251B05034(0);
  sub_251B04D4C(&qword_27F479CF8, sub_251B04EB4);
  sub_251B04D4C(&qword_2813E21B8, sub_251B05034);
  v109 = v128;
  v110 = v131;
  sub_251C70B94();

  (*(v129 + 8))(v107, v110);
  sub_251B04D4C(&qword_27F479D00, sub_251B04F48);
  v111 = v132;
  v112 = sub_251C70A94();
  result = (*(v130 + 8))(v109, v111);
  *v133 = v112;
  return result;
}

void sub_251B04AC4()
{
  if (!qword_27F479CA0)
  {
    sub_251B04B74();
    sub_251B04D4C(&qword_27F479CB0, sub_251B04B74);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479CA0);
    }
  }
}

void sub_251B04B74()
{
  if (!qword_27F479CA8)
  {
    sub_251B05118(255, &qword_27F479C98, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingSyncContext);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479CA8);
    }
  }
}

void sub_251B04BFC()
{
  if (!qword_27F479CB8)
  {
    sub_251B04B74();
    sub_251A82284();
    sub_251B04D4C(&qword_27F479CB0, sub_251B04B74);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479CB8);
    }
  }
}

void sub_251B04CB8()
{
  if (!qword_27F479CC0)
  {
    sub_251B04BFC();
    sub_251B04D4C(&qword_27F479CC8, sub_251B04BFC);
    v0 = sub_251C707D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479CC0);
    }
  }
}

uint64_t sub_251B04D4C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251B04D94()
{
  if (!qword_27F479CD0)
  {
    sub_251B04E80(255);
    sub_251B04CB8();
    sub_251B04D4C(&qword_2813E2138, sub_251B04E80);
    sub_251B04D4C(&qword_27F479CD8, sub_251B04CB8);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479CD0);
    }
  }
}

void sub_251B04EB4()
{
  if (!qword_27F479CE0)
  {
    sub_251B04D94();
    sub_251B04D4C(&qword_27F479CE8, sub_251B04D94);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479CE0);
    }
  }
}

void sub_251B04F48()
{
  if (!qword_27F479CF0)
  {
    sub_251B05034(255);
    sub_251B04EB4();
    sub_251B04D4C(&qword_2813E21B8, sub_251B05034);
    sub_251B04D4C(&qword_27F479CF8, sub_251B04EB4);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479CF0);
    }
  }
}

void sub_251B05068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251A82284();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251B05118(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_251B05194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251B051F8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v67 = a2;
  sub_251B05194(0, &qword_27F479D08, sub_251B07EA0, MEMORY[0x277CBCE78]);
  v66 = v7;
  v64 = *(v7 - 8);
  v8 = *(v64 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = &v58 - v9;
  sub_251B07ED4(0);
  v65 = v10;
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  MEMORY[0x28223BE20](v10);
  v61 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B07F08(0);
  v14 = v13;
  v70 = *(v13 - 8);
  v15 = *(v70 + 64);
  MEMORY[0x28223BE20](v13);
  v68 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B07F5C();
  v71 = *(v17 - 8);
  v72 = v17;
  v18 = *(v71 + 64);
  MEMORY[0x28223BE20](v17);
  v69 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B05118(0, &qword_27F479C98, type metadata accessor for PBNode, type metadata accessor for ClinicalSharingSyncContext);
  v76 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v58 - v26;
  v28 = type metadata accessor for PBNode(0);
  v74 = *(v28 - 8);
  v29 = *(v74 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v60 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  v32 = *(*a1 + 16);
  v33 = MEMORY[0x277D84F90];
  v73 = a4;
  if (v32)
  {
    v75 = v27;
    v58 = a3;
    v59 = v14;
    v78 = MEMORY[0x277D84F90];
    sub_251C0BAD4(0, v32, 0);
    v34 = v78;
    v35 = v31 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v36 = *(v21 + 72);
    v37 = v35;
    v38 = v32;
    v39 = v60;
    v77 = v36;
    do
    {
      v40 = v75;
      sub_251B09658(v37, v75, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      sub_251B096D4(v40, v25, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      v41 = *&v25[*(v76 + 48)];

      sub_251B095CC(v25, v39, type metadata accessor for PBNode);
      v78 = v34;
      v43 = *(v34 + 16);
      v42 = *(v34 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_251C0BAD4(v42 > 1, v43 + 1, 1);
        v39 = v60;
        v34 = v78;
      }

      *(v34 + 16) = v43 + 1;
      sub_251B095CC(v39, v34 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v43, type metadata accessor for PBNode);
      v37 += v77;
      --v38;
    }

    while (v38);
    v78 = MEMORY[0x277D84F90];
    sub_251C71764();
    v44 = v75;
    v45 = v76;
    do
    {
      sub_251B09658(v35, v44, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      sub_251B096D4(v44, v25, &qword_27F479C98, type metadata accessor for ClinicalSharingSyncContext);
      v46 = *&v25[*(v45 + 48)];
      sub_251B06650(v25, type metadata accessor for PBNode);
      sub_251C71734();
      v47 = *(v78 + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      v35 += v77;
      --v32;
    }

    while (v32);
    v33 = v78;
    a3 = v58;
    v14 = v59;
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
  }

  v78 = v34;
  sub_251B07EA0(0);
  v48 = v62;
  sub_251C70A24();
  sub_251A82284();
  v49 = v61;
  v50 = v66;
  sub_251C709F4();
  (*(v64 + 8))(v48, v50);
  v51 = __swift_project_boxed_opaque_existential_1(v67, v67[3]);
  v52 = sub_251B08048(v51, a3);
  (*(v63 + 8))(v49, v65);
  v78 = v52;
  *(swift_allocObject() + 16) = v33;
  sub_251B07F28(0);
  sub_251AE406C(0);
  sub_251B04D4C(&qword_27F479C20, sub_251B07F28);

  v53 = v68;
  sub_251C70AE4();

  *(swift_allocObject() + 16) = v33;
  sub_251B04E80(0);
  sub_251B04D4C(&qword_27F479D30, sub_251B07F08);
  sub_251B04D4C(&qword_2813E2138, sub_251B04E80);
  v54 = v69;
  sub_251C70B04();

  (*(v70 + 8))(v53, v14);
  sub_251B04D4C(&qword_27F479D38, sub_251B07F5C);
  v55 = v72;
  v56 = sub_251C70A94();
  result = (*(v71 + 8))(v54, v55);
  *v73 = v56;
  return result;
}

uint64_t sub_251B05A78@<X0>(void **a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = a3;
  sub_251B05194(0, &qword_2813E2088, sub_251AE406C, MEMORY[0x277CBCE78]);
  v40 = v5;
  v38 = *(v5 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v5);
  v36 = &v35 - v7;
  sub_251B08728(0);
  v41 = v8;
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  if (a2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v14 = 0;
    v46 = a2 & 0xFFFFFFFFFFFFFF8;
    v47 = a2 & 0xC000000000000001;
    *&v10 = 136315138;
    v43 = v10;
    v44 = i;
    v45 = v12;
    while (v47)
    {
      v17 = MEMORY[0x25308D460](v14, a2);
      v18 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_14;
      }

LABEL_8:
      if (qword_2813E26F8 != -1)
      {
        swift_once();
      }

      v19 = sub_251C70764();
      __swift_project_value_buffer(v19, qword_2813E8130);

      v20 = sub_251C70744();
      v21 = sub_251C713C4();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v48 = v23;
        *v22 = v43;
        sub_251C70074();
        v24 = a2;
        sub_251B04D4C(&qword_27F479418, MEMORY[0x277CC95F0]);
        v25 = sub_251C719A4();
        v27 = sub_251B10780(v25, v26, &v48);

        *(v22 + 4) = v27;
        a2 = v24;
        i = v44;
        _os_log_impl(&dword_251A6C000, v20, v21, "Updating error info. Account: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x25308E2B0](v23, -1, -1);
        v28 = v22;
        v12 = v45;
        MEMORY[0x25308E2B0](v28, -1, -1);
      }

      v15 = *(v17 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
      *(v17 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error) = v12;
      v16 = v12;

      ++v14;
      if (v18 == i)
      {
        goto LABEL_17;
      }
    }

    if (v14 >= *(v46 + 16))
    {
      goto LABEL_15;
    }

    v17 = *(a2 + 8 * v14 + 32);

    v18 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  v48 = a2;
  sub_251AE406C(0);

  v29 = v36;
  sub_251C70A24();
  sub_251A82284();
  v30 = v37;
  v31 = v40;
  sub_251C709F4();
  (*(v38 + 8))(v29, v31);
  sub_251B04D4C(&qword_2813E1BE8, sub_251B08728);
  v32 = v41;
  v33 = sub_251C70A94();
  result = (*(v39 + 8))(v30, v32);
  *v42 = v33;
  return result;
}

uint64_t sub_251B05F2C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251AE52B8();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B066C4();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_251B01FEC(*a1);

  sub_251BFF7D4(v16);
  sub_251AE406C(0);
  sub_251B04D4C(&qword_2813E1E98, sub_251AE406C);
  sub_251C710D4();

  sub_251A82284();
  sub_251C708E4();
  (*(v6 + 8))(v9, v5);
  sub_251B04D4C(&qword_2813E2250, sub_251B066C4);
  v17 = sub_251C70A94();
  result = (*(v12 + 8))(v15, v11);
  *a2 = v17;
  return result;
}

uint64_t sub_251B0618C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PBBlobs(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;

  result = sub_251C18F98(v10, v8);
  if (!v2)
  {
    sub_251B04D4C(&qword_27F479DA0, type metadata accessor for PBBlobs);
    v12 = sub_251C70594();
    v14 = v13;
    sub_251B08A6C();
    v16 = (a2 + *(v15 + 48));
    result = sub_251B095CC(v8, a2, type metadata accessor for PBBlobs);
    *v16 = v12;
    v16[1] = v14;
  }

  return result;
}

uint64_t sub_251B062E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a5;
  v9 = type metadata accessor for PBBlobs(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = *(a4 + 32);
  sub_251A823B4(a4 + 48, v22);
  v13 = swift_allocObject();
  sub_251A7E8D8(v22, (v13 + 2));
  v13[7] = a2;
  v13[8] = a3;
  v13[9] = 3;
  v13[10] = v12;
  sub_251B08C40(0);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();

  sub_251A858C4(a2, a3);
  *&v22[0] = sub_251C70A64();
  sub_251B04D4C(&qword_27F479A80, sub_251B08C40);
  v17 = sub_251C70A94();

  *&v22[0] = v17;
  sub_251B09564(a1, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PBBlobs);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  sub_251B095CC(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PBBlobs);
  sub_251B089A0(0);
  type metadata accessor for PBPushBlobsRequest(0);
  sub_251B04D4C(&qword_27F479A70, sub_251B089A0);
  sub_251C70AE4();
}

uint64_t sub_251B0657C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PBBlobs(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  sub_251B09564(a2, v9, type metadata accessor for PBBlobs);

  sub_251A858C4(v11, v12);
  return sub_251C3A1C0(v9, v10, v11, v12, a3);
}

uint64_t sub_251B06650(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251B066C4()
{
  if (!qword_2813E2248)
  {
    sub_251AE406C(255);
    sub_251A82284();
    sub_251B04D4C(&qword_2813E1E98, sub_251AE406C);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2248);
    }
  }
}

uint64_t sub_251B06780(void **a1)
{
  v2 = *(sub_251C70074() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_251BFAE18(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_251B06828(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_251B06828(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_251C71994();
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
        sub_251C70074();
        v6 = sub_251C71184();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_251C70074() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_251B06C5C(v8, v9, a1, v4);
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
    return sub_251B06954(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251B06954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_251C70074();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v35 - v13;
  result = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v15 + 16);
    v47 = v15 + 16;
    v18 = *(v15 + 72);
    v19 = (v15 + 8);
    v43 = (v15 + 32);
    v44 = v17;
    v20 = v17 + v18 * (a3 - 1);
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      v46(v48, v22, v8);
      v25(v49, v24, v8);
      v26 = sub_251C70024();
      v28 = v27;
      if (sub_251C70024() == v26 && v29 == v28)
      {

        v23 = *v19;
        (*v19)(v49, v8);
        result = (v23)(v48, v8);
LABEL_5:
        a3 = v41 + 1;
        v20 = v40 + v36;
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_6;
      }

      v30 = sub_251C719D4();

      v31 = *v19;
      (*v19)(v49, v8);
      result = (v31)(v48, v8);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v32)(v24, v33, v8);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251B06C5C(int64_t *a1, uint64_t a2, char *a3, uint64_t a4)
{
  v6 = v4;
  v135 = a1;
  v9 = sub_251C70074();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v139 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v150 = &v129 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v129 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v154 = &v129 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v147 = &v129 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v146 = &v129 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v129 - v24;
  result = MEMORY[0x28223BE20](v23);
  v133 = &v129 - v27;
  v28 = *(a3 + 1);
  v144 = v26;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v135;
    if (!*v135)
    {
      goto LABEL_141;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v5 = v144;
    if (result)
    {
LABEL_105:
      v156 = v30;
      v123 = *(v30 + 16);
      if (v123 >= 2)
      {
        while (1)
        {
          v124 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          v125 = a3;
          v126 = *(v30 + 16 * v123);
          a3 = v30;
          v127 = *(v30 + 16 * (v123 - 1) + 32);
          v30 = *(v30 + 16 * (v123 - 1) + 40);
          sub_251B0780C(&v124[*(v5 + 72) * v126], &v124[*(v5 + 72) * v127], &v124[*(v5 + 72) * v30], v32);
          if (v6)
          {
          }

          if (v30 < v126)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_251BFABE4(a3);
          }

          if (v123 - 2 >= *(a3 + 2))
          {
            goto LABEL_129;
          }

          v128 = &a3[16 * v123];
          *v128 = v126;
          *(v128 + 1) = v30;
          v156 = a3;
          result = sub_251BFAB58(v123 - 1);
          v30 = v156;
          v123 = *(v156 + 16);
          a3 = v125;
          if (v123 <= 1)
          {
          }
        }
      }
    }

LABEL_135:
    result = sub_251BFABE4(v30);
    v30 = result;
    goto LABEL_105;
  }

  v130 = a4;
  v29 = 0;
  v152 = v26 + 16;
  v153 = (v26 + 8);
  v151 = (v26 + 32);
  v30 = MEMORY[0x277D84F90];
  v136 = a3;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v138 = v29;
    if (v29 + 1 < v28)
    {
      v142 = v28;
      v131 = v30;
      v33 = *a3;
      v34 = *(v144 + 72);
      v5 = v29 + 1;
      v35 = &v33[v34 * v32];
      v36 = *(v144 + 16);
      v36(v133, v35, v9);
      v145 = v34;
      v141 = v36;
      v36(v134, &v33[v34 * v31], v9);
      v32 = sub_251C70024();
      v38 = v37;
      v39 = sub_251C70024();
      v132 = v6;
      if (v39 == v32 && v40 == v38)
      {
        LODWORD(v143) = 0;
      }

      else
      {
        LODWORD(v143) = sub_251C719D4();
      }

      v41 = *v153;
      (*v153)(v134, v9);
      v140 = v41;
      result = (v41)(v133, v9);
      v42 = (v138 + 2);
      v43 = v145 * (v138 + 2);
      v44 = &v33[v43];
      v45 = v145 * v5;
      v46 = &v33[v145 * v5];
      do
      {
        a3 = v42;
        v49 = v5;
        v6 = v45;
        v30 = v43;
        if (v42 >= v142)
        {
          break;
        }

        v148 = v5;
        v149 = v42;
        v50 = v141;
        (v141)(v146, v44, v9);
        v50(v147, v46, v9);
        v51 = sub_251C70024();
        v53 = v52;
        if (sub_251C70024() == v51 && v54 == v53)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_251C719D4();
        }

        a3 = v149;

        v32 = v140;
        v140(v147, v9);
        result = (v32)(v146, v9);
        v48 = v143 ^ v47;
        v42 = a3 + 1;
        v44 += v145;
        v46 += v145;
        v49 = v148;
        v5 = v148 + 1;
        v45 = v6 + v145;
        v43 = v30 + v145;
      }

      while ((v48 & 1) == 0);
      if (v143)
      {
        v31 = v138;
        if (a3 < v138)
        {
          goto LABEL_132;
        }

        if (v138 < a3)
        {
          v55 = v138 * v145;
          v56 = v138;
          do
          {
            if (v56 != v49)
            {
              v58 = *v136;
              if (!*v136)
              {
                goto LABEL_138;
              }

              v5 = v49;
              v149 = *v151;
              (v149)(v139, v58 + v55, v9);
              if (v55 < v6 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v6)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v149)(v58 + v6, v139, v9);
              v31 = v138;
              v49 = v5;
            }

            ++v56;
            v6 -= v145;
            v30 -= v145;
            v55 += v145;
          }

          while (v56 < v49--);
        }

        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
      }

      else
      {
        v32 = a3;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
      }
    }

    v59 = *(a3 + 1);
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v130)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251C38DF0(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      result = sub_251C38DF0((v76 > 1), v77 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v135;
    if (!*v135)
    {
      goto LABEL_140;
    }

    v145 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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

        v119 = *a3;
        if (!*a3)
        {
          goto LABEL_137;
        }

        v5 = a3;
        a3 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_251B0780C(&v119[*(v144 + 72) * v120], &v119[*(v144 + 72) * v121], &v119[*(v144 + 72) * v30], v80);
        if (v6)
        {
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_251BFABE4(a3);
        }

        if (v118 >= *(a3 + 2))
        {
          goto LABEL_116;
        }

        v122 = &a3[16 * v118];
        *(v122 + 4) = v120;
        *(v122 + 5) = v30;
        v156 = a3;
        result = sub_251BFAB58(v32);
        v30 = v156;
        v78 = *(v156 + 16);
        a3 = v5;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = *(a3 + 1);
    v29 = v145;
    if (v145 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v130);
  if (__OFADD__(v31, v130))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = *(a3 + 1);
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v131 = v30;
  v132 = v6;
  v61 = *a3;
  v62 = *(v144 + 72);
  v63 = *(v144 + 16);
  v64 = *a3 + v62 * (v32 - 1);
  v148 = -v62;
  v149 = v61;
  v65 = v31 - v32;
  v137 = v62;
  v66 = &v61[v32 * v62];
  v140 = v60;
LABEL_43:
  v145 = v32;
  v141 = v66;
  v142 = v65;
  v143 = v64;
  v68 = v64;
  while (1)
  {
    v63(v154, v66, v9);
    (v63)(v155, v68);
    v5 = sub_251C70024();
    v70 = v69;
    if (sub_251C70024() == v5 && v71 == v70)
    {

      v67 = *v153;
      (*v153)(v155, v9);
      v67(v154, v9);
LABEL_42:
      v32 = v145 + 1;
      v64 = v143 + v137;
      v65 = v142 - 1;
      v66 = &v141[v137];
      if ((v145 + 1) == v140)
      {
        v32 = v140;
        v6 = v132;
        a3 = v136;
        v30 = v131;
        v31 = v138;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v5 = sub_251C719D4();

    v72 = *v153;
    (*v153)(v155, v9);
    result = (v72)(v154, v9);
    if ((v5 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v149)
    {
      break;
    }

    v73 = v150;
    v5 = v151;
    v74 = *v151;
    (*v151)(v150, v66, v9);
    swift_arrayInitWithTakeFrontToBack();
    (v74)(v68, v73, v9);
    v68 += v148;
    v66 += v148;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
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
  return result;
}

uint64_t sub_251B0780C(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v72 = sub_251C70074();
  v8 = *(v72 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v72);
  v69 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v60 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v71 = &v60 - v15;
  result = MEMORY[0x28223BE20](v14);
  v70 = &v60 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_70;
  }

  v20 = &a3[-a2];
  if (&a3[-a2] == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_71;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v23;
    if (v23 < 1)
    {
      v45 = a4 + v23;
    }

    else
    {
      v64 = a4;
      v65 = (v8 + 16);
      v63 = (v8 + 8);
      v43 = -v19;
      v44 = a4 + v23;
      v45 = v42;
      v66 = v43;
      while (2)
      {
        while (1)
        {
          v61 = v45;
          v46 = (a2 + v43);
          v70 = (a2 + v43);
          v67 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v75 = a2;
              v73 = v61;
              goto LABEL_68;
            }

            v48 = a3;
            v62 = v45;
            v49 = *v65;
            v71 = (v44 + v43);
            v50 = v72;
            (v49)(v68);
            (v49)(v69, v46, v50);
            v51 = sub_251C70024();
            v53 = v52;
            if (sub_251C70024() != v51)
            {
              goto LABEL_51;
            }

            if (v54 == v53)
            {
              v55 = 0;
            }

            else
            {
LABEL_51:
              v55 = sub_251C719D4();
            }

            v43 = v66;
            a3 = v66 + v48;
            v56 = *v63;
            v57 = v72;
            (*v63)(v69, v72);
            v56(v68, v57);
            if (v55)
            {
              break;
            }

            v58 = v71;
            v45 = v71;
            if (v48 < v44 || a3 >= v44)
            {
              swift_arrayInitWithTakeFrontToBack();
              v46 = v70;
            }

            else
            {
              v46 = v70;
              if (v48 != v44)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v44 = v45;
            v47 = v58 > v64;
            a2 = v67;
            if (!v47)
            {
              goto LABEL_66;
            }
          }

          if (v48 < v67 || a3 >= v67)
          {
            break;
          }

          a2 = v70;
          v59 = v64;
          v45 = v62;
          if (v48 != v67)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v44 <= v59)
          {
            goto LABEL_66;
          }
        }

        a2 = v70;
        swift_arrayInitWithTakeFrontToBack();
        v45 = v62;
        if (v44 > v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v75 = a2;
    v73 = v45;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v69 = (a4 + v22);
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < a3)
    {
      v25 = *(v8 + 16);
      v67 = v19;
      v68 = (v8 + 16);
      v65 = (v8 + 8);
      v66 = v25;
      do
      {
        v26 = a3;
        v27 = a2;
        v28 = a2;
        v29 = v72;
        v30 = v66;
        v66(v70, v28, v72);
        v30(v71, a4, v29);
        v31 = sub_251C70024();
        v33 = v32;
        if (sub_251C70024() == v31 && v34 == v33)
        {

          v35 = *v65;
          v36 = v72;
          (*v65)(v71, v72);
          v35(v70, v36);
        }

        else
        {
          v37 = sub_251C719D4();

          v38 = *v65;
          v39 = v72;
          (*v65)(v71, v72);
          v38(v70, v39);
          if (v37)
          {
            a2 = v27 + v67;
            a3 = v26;
            if (a1 < v27 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v41 = v67;
            goto LABEL_37;
          }
        }

        v40 = a4;
        v41 = v67;
        a4 += v67;
        a2 = v27;
        a3 = v26;
        if (a1 < v40 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v40)
        {
          swift_arrayInitWithTakeBackToFront();
          v74 = a4;
          goto LABEL_37;
        }

        v74 = a4;
LABEL_37:
        a1 += v41;
        v75 = a1;
      }

      while (a4 < v69 && a2 < a3);
    }
  }

LABEL_68:
  sub_251BFABF8(&v75, &v74, &v73);
  return 1;
}

void sub_251B07F5C()
{
  if (!qword_27F479D28)
  {
    sub_251B07F08(255);
    sub_251B04E80(255);
    sub_251B04D4C(&qword_27F479D30, sub_251B07F08);
    sub_251B04D4C(&qword_2813E2138, sub_251B04E80);
    v0 = sub_251C70854();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479D28);
    }
  }
}

uint64_t sub_251B08048(uint64_t a1, uint64_t a2)
{
  sub_251B0875C();
  v38 = v4;
  v40 = *(v4 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B08AD4();
  v39 = v7;
  v41 = *(v7 - 8);
  v8 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B089C0();
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B08808();
  v42 = v16;
  v37 = *(v16 - 8);
  v17 = *(v37 + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[3] = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v45[4] = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
  sub_251B09564(a1, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  sub_251B07ED4(0);
  sub_251B08A6C();
  sub_251B04D4C(&qword_27F479D68, sub_251B07ED4);
  sub_251C70B54();
  sub_251AE5810(a2, v43);
  v21 = swift_allocObject();
  v22 = v43[3];
  *(v21 + 48) = v43[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v43[4];
  *(v21 + 96) = v44;
  v23 = v43[1];
  *(v21 + 16) = v43[0];
  *(v21 + 32) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_251B08BC0;
  *(v24 + 24) = v21;
  sub_251C70964();
  type metadata accessor for PBPushBlobsRequest(0);
  sub_251B088F4();
  sub_251B04D4C(&qword_27F479D78, sub_251B089C0);
  sub_251B04D4C(&qword_27F479D70, sub_251B088F4);
  sub_251C70B94();

  (*(v12 + 8))(v15, v11);
  sub_251A823B4(v45, v43);
  v25 = swift_allocObject();
  sub_251A7E8D8(v43, v25 + 16);
  sub_251C6F9A4();
  v34 = MEMORY[0x277CBCCE0];
  sub_251B04D4C(&qword_27F479D80, sub_251B08808);
  v26 = v35;
  sub_251C70B54();

  sub_251A823B4(v45, v43);
  v27 = swift_allocObject();
  sub_251A7E8D8(v43, v27 + 16);
  sub_251C70964();
  type metadata accessor for PBPushBlobsResponse(0);
  sub_251B07F28(0);
  sub_251B04D4C(&qword_27F479D90, sub_251B0875C);
  sub_251B04D4C(&qword_27F479C20, sub_251B07F28);
  v28 = v36;
  v29 = v38;
  sub_251C70B94();

  (*(v40 + 8))(v26, v29);
  sub_251B04D4C(&qword_27F479D98, sub_251B08AD4);
  v30 = v39;
  v31 = sub_251C70A94();
  (*(v41 + 8))(v28, v30);
  (*(v37 + 8))(v19, v42);
  *&v43[0] = v31;
  v32 = sub_251C70A94();

  __swift_destroy_boxed_opaque_existential_1(v45);
  return v32;
}

void sub_251B0875C()
{
  if (!qword_27F479D40)
  {
    sub_251B08808();
    sub_251C6F9A4();
    sub_251B04D4C(&qword_27F479D80, sub_251B08808);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479D40);
    }
  }
}

void sub_251B08808()
{
  if (!qword_27F479D48)
  {
    sub_251B088F4();
    sub_251B089C0();
    sub_251B04D4C(&qword_27F479D70, sub_251B088F4);
    sub_251B04D4C(&qword_27F479D78, sub_251B089C0);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479D48);
    }
  }
}

void sub_251B088F4()
{
  if (!qword_27F479D50)
  {
    sub_251B089A0(255);
    type metadata accessor for PBPushBlobsRequest(255);
    sub_251B04D4C(&qword_27F479A70, sub_251B089A0);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479D50);
    }
  }
}

void sub_251B089C0()
{
  if (!qword_27F479D58)
  {
    sub_251B07ED4(255);
    sub_251B08A6C();
    sub_251B04D4C(&qword_27F479D68, sub_251B07ED4);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479D58);
    }
  }
}

void sub_251B08A6C()
{
  if (!qword_27F479D60)
  {
    type metadata accessor for PBBlobs(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479D60);
    }
  }
}

void sub_251B08AD4()
{
  if (!qword_27F479D88)
  {
    sub_251B07F28(255);
    sub_251B0875C();
    sub_251B04D4C(&qword_27F479C20, sub_251B07F28);
    sub_251B04D4C(&qword_27F479D90, sub_251B0875C);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479D88);
    }
  }
}

uint64_t sub_251B08BC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_251B08A6C();
  return v4(a1, *(a1 + *(v5 + 48)), *(a1 + *(v5 + 48) + 8));
}

void sub_251B08C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_251A82284();
    v7 = a3(a1, &type metadata for ClinicalSharingEncryption.BAACertSignature, v6, MEMORY[0x277D84950]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B08CD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PBBlobs(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251B0657C(a1, v6, a2);
}

void sub_251B08D70(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251B07F28(255);
    a3(255);
    sub_251B04D4C(&qword_27F479C20, sub_251B07F28);
    v5 = sub_251C70804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251B08E1C()
{
  if (!qword_27F479DB8)
  {
    sub_251B08ECC();
    sub_251B04D4C(&qword_27F479DC8, sub_251B08ECC);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479DB8);
    }
  }
}

void sub_251B08ECC()
{
  if (!qword_27F479DC0)
  {
    sub_251ABA5A0();
    v0 = sub_251C70E64();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479DC0);
    }
  }
}

void sub_251B08F34()
{
  if (!qword_27F479DD0)
  {
    sub_251B08ECC();
    sub_251A82284();
    sub_251B04D4C(&qword_27F479DC8, sub_251B08ECC);
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479DD0);
    }
  }
}

uint64_t sub_251B08FF0(uint64_t a1)
{
  v55 = type metadata accessor for ClinicalSharingDataNodeInfo();
  v3 = *(*(v55 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v55);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v51 - v7;
  v8 = MEMORY[0x277D84F98];
  v65 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v10 = *(v6 + 80);
  v57 = *(v6 + 72);
  v52 = v10;
  v53 = (v10 + 32) & ~v10;
  v11 = a1 + v53;
  v51 = xmmword_251C74800;
  while (1)
  {
    v59 = v8;
    v13 = v60;
    sub_251B09564(v11, v60, type metadata accessor for ClinicalSharingDataNodeInfo);
    v63 = 0;
    v64 = 0xE000000000000000;
    v14 = v13 + *(v55 + 20);
    v15 = *(v14 + 32);
    LOBYTE(v14) = *(v14 + 40);
    v61 = v15;
    LOBYTE(v62) = v14;
    sub_251C717C4();
    v16 = *v13;
    v17 = *(*v13 + 16);
    v58 = v11;
    if (v17)
    {
      sub_251B05194(0, &qword_27F479238, MEMORY[0x277CC95F0], MEMORY[0x277D84560]);
      v18 = *(sub_251C70074() - 8);
      v19 = *(v18 + 72);
      v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v21 = swift_allocObject();
      v22 = _swift_stdlib_malloc_size(v21);
      if (!v19)
      {
        goto LABEL_28;
      }

      if (v22 - v20 == 0x8000000000000000 && v19 == -1)
      {
        goto LABEL_31;
      }

      v21[2] = v17;
      v21[3] = 2 * ((v22 - v20) / v19);
      v56 = sub_251C0A5B0(&v61, v21 + v20, v17, v16);

      sub_251AD20D8();
      if (v56 != v17)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    v61 = v21;
    sub_251B06780(&v61);
    if (v1)
    {
      goto LABEL_32;
    }

    v24 = v61;
    v25 = sub_251C70074();
    v26 = MEMORY[0x25308CF10](v24, v25);
    v28 = v27;

    MEMORY[0x25308CDA0](v26, v28);

    v29 = v63;
    v30 = v64;
    v8 = v59;
    v32 = sub_251AC8C58(v63, v64);
    v33 = v8[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v8[3] < v35)
    {
      sub_251ACB060(v35, 1);
      v8 = v65;
      v37 = sub_251AC8C58(v29, v30);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_33;
      }

      v32 = v37;
    }

    if (v36)
    {

      v39 = v8[7];
      sub_251B095CC(v60, v54, type metadata accessor for ClinicalSharingDataNodeInfo);
      v40 = *(v39 + 8 * v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v39 + 8 * v32) = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = sub_251C3926C(0, v40[2] + 1, 1, v40);
        *(v39 + 8 * v32) = v40;
      }

      v43 = v40[2];
      v42 = v40[3];
      if (v43 >= v42 >> 1)
      {
        v40 = sub_251C3926C(v42 > 1, v43 + 1, 1, v40);
        *(v39 + 8 * v32) = v40;
      }

      v40[2] = v43 + 1;
      v12 = v57;
      sub_251B095CC(v54, v40 + v53 + v43 * v57, type metadata accessor for ClinicalSharingDataNodeInfo);
    }

    else
    {
      sub_251B05194(0, &qword_27F479DE0, type metadata accessor for ClinicalSharingDataNodeInfo, MEMORY[0x277D84560]);
      v44 = v53;
      v45 = swift_allocObject();
      *(v45 + 16) = v51;
      sub_251B095CC(v60, v45 + v44, type metadata accessor for ClinicalSharingDataNodeInfo);
      v8[(v32 >> 6) + 8] |= 1 << v32;
      v46 = (v8[6] + 16 * v32);
      *v46 = v29;
      v46[1] = v30;
      *(v8[7] + 8 * v32) = v45;
      v47 = v8[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_30;
      }

      v8[2] = v49;
      v12 = v57;
    }

    v11 = v58 + v12;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:

  __break(1u);
LABEL_33:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

uint64_t sub_251B09564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B095CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B09658(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251B05118(0, a3, type metadata accessor for PBNode, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B096D4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_251B05118(0, a3, type metadata accessor for PBNode, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_251B09754(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_251C70014();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x277D84F90];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_251C0B7A4(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_251C0B7A4(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_251B09A24(uint64_t a1)
{
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return MEMORY[0x277D84F90];
  }

  v13 = *(v3 + 16);
  v11 = v3 + 16;
  v12 = v13;
  v27 = (*(v11 + 64) + 32) & ~*(v11 + 64);
  v14 = a1 + v27;
  v15 = *(v11 + 56);
  v25 = (v11 - 8);
  v30 = (v11 + 16);
  v16 = MEMORY[0x277D84F90];
  v28 = v7;
  v29 = v11;
  v26 = v15;
  v13(v9, a1 + v27, v2);
  while (1)
  {
    sub_251C6FFC4();
    if (v17 <= -86400.0)
    {
      (*v25)(v9, v2);
    }

    else
    {
      v18 = *v30;
      (*v30)(v7, v9, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_251C0B7A4(0, *(v16 + 16) + 1, 1);
        v16 = v31;
      }

      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_251C0B7A4(v20 > 1, v21 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = v21 + 1;
      v22 = v26;
      v7 = v28;
      v18((v16 + v27 + v21 * v26), v28, v2);
      v15 = v22;
    }

    v14 += v15;
    if (!--v10)
    {
      break;
    }

    v12(v9, v14, v2);
  }

  return v16;
}

uint64_t sub_251B09C70(void *a1, uint64_t a2)
{
  sub_251B0A200(0, &qword_2813E1C90, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B09F7C();
  sub_251C71B14();
  v12[1] = a2;
  sub_251B09FD0();
  sub_251B0A264(&qword_2813E1F78, &qword_2813E7510);
  sub_251C71964();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_251B09E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73636E7973 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_251C719D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_251B09EA0(uint64_t a1)
{
  v2 = sub_251B09F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251B09EDC(uint64_t a1)
{
  v2 = sub_251B09F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_251B09F18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_251B0A028(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_251B09F7C()
{
  result = qword_2813E37F8[0];
  if (!qword_2813E37F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813E37F8);
  }

  return result;
}

void sub_251B09FD0()
{
  if (!qword_2813E1F80)
  {
    sub_251C70014();
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1F80);
    }
  }
}

void *sub_251B0A028(uint64_t *a1)
{
  sub_251B0A200(0, &qword_2813E1CA8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251B09F7C();
  sub_251C71B04();
  if (!v1)
  {
    sub_251B09FD0();
    sub_251B0A264(&qword_2813E1F70, &qword_2813E7508);
    sub_251C718D4();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

void sub_251B0A200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_251B09F7C();
    v7 = a3(a1, &type metadata for ClinicalSharingSyncHistory.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251B0A264(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251B09FD0();
    sub_251B0A2E0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251B0A2E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_251C70014();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_251B0A338()
{
  result = qword_27F479DF8;
  if (!qword_27F479DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479DF8);
  }

  return result;
}

unint64_t sub_251B0A390()
{
  result = qword_2813E37E8;
  if (!qword_2813E37E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37E8);
  }

  return result;
}

unint64_t sub_251B0A3E8()
{
  result = qword_2813E37F0;
  if (!qword_2813E37F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37F0);
  }

  return result;
}

uint64_t sub_251B0A43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = sub_251C701E4();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
  v14 = *(v13 + 32);
  sub_251A8223C(0, &qword_27F479E00, 0x277CCD0C0);
  *(a4 + v14) = MEMORY[0x25308D1B0](*MEMORY[0x277CCBAB8]);
  (*(v9 + 16))(v12, a1 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v8);
  v15 = sub_251B0A650(a1 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, a2, a3);
  v17 = v16;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v15;
  *(a4 + 32) = v16;
  v18 = objc_opt_self();

  v19 = sub_251C70114();
  v20 = [v18 hk:v15 sleepDayIntervalForMorningIndexRange:v17 calendar:v19];

  v21 = a4 + *(v13 + 28);
  sub_251C6FA74();

  return (*(v9 + 8))(v12, v24);
}

uint64_t sub_251B0A650(uint64_t a1, uint64_t a2, int a3)
{
  v78 = a1;
  v5 = sub_251C701C4();
  v73 = *(v5 - 8);
  v74 = v5;
  v6 = *(v73 + 64);
  MEMORY[0x28223BE20](v5);
  v72 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0E460(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v77 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v59 - v12;
  v14 = sub_251C70014();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = MEMORY[0x28223BE20](v14);
  v64 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v69 = &v59 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v63 = &v59 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v70 = &v59 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  v27 = sub_251C6FC94();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v59 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v59 - v33;
  v35 = sub_251C6FAE4();
  v59 = *(v35 - 8);
  v60 = v35;
  v36 = *(v59 + 64);
  MEMORY[0x28223BE20](v35);
  v75 = &v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = a3;
  sub_251B0D8EC(a2, a2, a3);
  v66 = v34;
  v62 = sub_251C6FBC4();
  v38 = [v62 hk_negativeComponents];
  sub_251C6FBD4();

  sub_251C70144();
  v39 = *(v28 + 8);
  v67 = v28 + 8;
  v68 = v27;
  v65 = v39;
  v39(v32, v27);
  v40 = v15[6];
  result = v40(v13, 1, v14);
  if (result == 1)
  {
    goto LABEL_15;
  }

  v61 = v15;
  v42 = v15[4];
  v76 = v26;
  v42(v26, v13, v14);
  v44 = v72;
  v43 = v73;
  v45 = v74;
  (*(v73 + 104))(v72, *MEMORY[0x277CC9968], v74);
  v46 = v77;
  sub_251C70154();
  (*(v43 + 8))(v44, v45);
  result = v40(v46, 1, v14);
  if (result != 1)
  {
    v47 = v70;
    v42(v70, v77, v14);
    if (v71)
    {
      v48 = v63;
      v49 = v62;
      if (v71 == 1)
      {
        sub_251B1C960(0, v76, v63);
      }

      else
      {
        sub_251B1D048(v76, v63);
      }
    }

    else
    {
      v48 = v63;
      sub_251C700C4();
      v49 = v62;
    }

    v50 = v61;
    v51 = v69;
    (v61[2])(v69, v48, v14);
    sub_251C700C4();
    sub_251C6FA94();

    v52 = v50[1];
    v52(v48, v14);
    v52(v47, v14);
    v52(v76, v14);
    v65(v66, v68);
    sub_251C6FAB4();
    v53 = sub_251C6FF94();
    v54 = sub_251C70114();
    v55 = [v53 hk:v54 morningIndexWithCalendar:?];

    v52(v51, v14);
    sub_251C6FA84();
    v56 = sub_251C6FF94();
    v57 = sub_251C70114();
    v58 = [v56 hk:v57 morningIndexWithCalendar:?];

    result = (v52)(v51, v14);
    if (v58 < v55)
    {
      __break(1u);
    }

    else if (!__OFSUB__(v58, v55))
    {
      if (!__OFADD__(v58 - v55, 1))
      {
        (*(v59 + 8))(v75, v60);
        return v55;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_251B0AD14()
{
  v1 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
  v36 = *(v1 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0DCD4();
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0DE14(0, &qword_27F479E38, type metadata accessor for PBTypedData);
  v8 = v7;
  v41 = *(v7 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  sub_251B0DDF4(0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_251C714E4();
  v18 = *(v17 + 16);
  v43 = v14;
  v44 = v13;
  v42 = v8;
  if (!v18)
  {
    goto LABEL_4;
  }

  v19 = sub_251C39EC8(v18, 0);
  v20 = sub_251C0AA1C(&v46, v19 + 4, v18, v17);
  sub_251AD20D8();
  if (v20 != v18)
  {
    __break(1u);
LABEL_4:

    v19 = MEMORY[0x277D84F90];
  }

  v21 = sub_251B0B274(v19);
  v35 = v21;

  v22 = sub_251B0B274(&unk_2863F3100);
  v45 = v21;
  v46 = v22;
  sub_251B0DD74();
  sub_251B0E28C(&qword_27F479E30, sub_251B0DD74);
  sub_251C70824();
  v23 = v37;
  sub_251B0E3F8(v0, v37, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  v24 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v25 = swift_allocObject();
  v36 = v2;
  v34 = v0;
  sub_251B0E2D4(v23, v25 + v24, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  type metadata accessor for PBTypedData(0);
  sub_251B0E28C(&qword_27F479E40, sub_251B0DCD4);
  v26 = v39;
  sub_251C70AA4();

  (*(v38 + 8))(v6, v26);
  sub_251B0E3F8(v34, v23, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  v27 = swift_allocObject();
  sub_251B0E2D4(v23, v27 + v24, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v28 = v40;
  v29 = v42;
  sub_251C70774();

  (*(v41 + 8))(v11, v29);
  sub_251B0E28C(&qword_27F479E50, sub_251B0DDF4);
  v30 = v44;
  v31 = sub_251C70A94();

  (*(v43 + 8))(v28, v30);
  return v31;
}

uint64_t sub_251B0B274(uint64_t a1)
{
  v82 = a1;
  sub_251B0E460(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v81 = v69 - v4;
  sub_251B0E460(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = v69 - v7;
  sub_251B0E460(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v74 = v69 - v10;
  v11 = sub_251C6FC94();
  v79 = *(v11 - 8);
  v80 = v11;
  v12 = *(v79 + 64);
  MEMORY[0x28223BE20](v11);
  v78 = v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_251C70014();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0E638(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251C76B00;
  v71 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
  v20 = *(v71 + 28);
  v21 = objc_opt_self();
  sub_251C6FAB4();
  v22 = sub_251C6FF94();
  v23 = *(v15 + 8);
  v23(v18, v14);
  v83 = v1;
  v72 = v20;
  sub_251C6FA84();
  v24 = sub_251C6FF94();
  v70 = v18;
  v76 = v15 + 8;
  v77 = v14;
  v73 = v23;
  v23(v18, v14);
  v25 = [v21 predicateForSamplesWithStartDate:v22 endDate:v24 options:0];

  *(v19 + 32) = v25;
  v26 = v82;
  v27 = *(v82 + 16);
  if (v27)
  {
    v84 = MEMORY[0x277D84F90];
    sub_251C71764();
    v28 = (v26 + 32);
    v29 = v27;
    do
    {
      v30 = *v28++;
      v31 = [v21 predicateForCategorySamplesWithOperatorType:4 value:v30];
      sub_251C71734();
      v32 = *(v84 + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      --v29;
    }

    while (v29);
  }

  sub_251A8223C(0, &qword_27F479AF8, 0x277CCAC30);
  v33 = sub_251C71144();

  v34 = objc_opt_self();
  v35 = [v34 orPredicateWithSubpredicates_];

  *(v19 + 40) = v35;
  v36 = sub_251C71144();

  v37 = [v34 andPredicateWithSubpredicates_];

  v84 = 0;
  v85 = 0xE000000000000000;
  if (*(v83 + 16))
  {
    if (*(v83 + 16) == 1)
    {
      v38 = 0xE600000000000000;
      v39 = 0x796C6B656577;
    }

    else
    {
      v38 = 0xE700000000000000;
      v39 = 0x796C68746E6F6DLL;
    }
  }

  else
  {
    v38 = 0xE500000000000000;
    v39 = 0x796C696164;
  }

  MEMORY[0x25308CDA0](v39, v38);

  MEMORY[0x25308CDA0](0x2D656D69742DLL, 0xE600000000000000);
  v40 = MEMORY[0x277D84F90];
  if (!v27)
  {
LABEL_27:
    v87 = v40;
    sub_251B0E638(0, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_251AF3520();
    v51 = sub_251C70EA4();
    v53 = v52;

    MEMORY[0x25308CDA0](v51, v53);

    v54 = v83;
    v55 = *(v83 + *(v71 + 32));
    v82 = sub_251BFC460(v84, v85, v55, 2, 1);
    v71 = v56;

    sub_251A823B4(*v54 + 16, &v84);
    v69[1] = __swift_project_boxed_opaque_existential_1(&v84, v86);
    v57 = v37;
    v58 = v72;
    v59 = v70;
    sub_251C6FAB4();
    v60 = sub_251C701E4();
    (*(*(v60 - 8) + 56))(v74, 1, 1, v60);
    v61 = sub_251C70244();
    (*(*(v61 - 8) + 56))(v75, 1, 1, v61);
    v62 = v78;
    sub_251C6FC74();
    sub_251C6FBE4();
    v63 = sub_251C6FAE4();
    v64 = *(v63 - 8);
    v65 = v54 + v58;
    v66 = v81;
    (*(v64 + 16))(v81, v65, v63);
    (*(v64 + 56))(v66, 0, 1, v63);
    v67 = off_2863FD778(v55, v37, 64, v59, v62, v66, 0, v82);

    sub_251B0E39C(v66, &qword_27F478D90, MEMORY[0x277CC88A8]);
    (*(v79 + 8))(v62, v80);
    v73(v59, v77);
    __swift_destroy_boxed_opaque_existential_1(&v84);
    return v67;
  }

  v87 = MEMORY[0x277D84F90];
  sub_251C0B6AC(0, v27, 0);
  v41 = (v82 + 32);
  v40 = v87;
  v42 = 0x7065656C7361;
  while (1)
  {
    v44 = *v41++;
    v43 = v44;
    if (v44 > 2)
    {
      break;
    }

    if (v43)
    {
      if (v43 == 1)
      {
        v45 = 0xE600000000000000;
        v46 = v42;
      }

      else
      {
        if (v43 != 2)
        {
          goto LABEL_28;
        }

        v45 = 0xE500000000000000;
        v46 = 0x656B617761;
      }
    }

    else
    {
      v45 = 0xE600000000000000;
      v46 = 0x6465622D6E69;
    }

LABEL_24:
    v87 = v40;
    v48 = *(v40 + 16);
    v47 = *(v40 + 24);
    if (v48 >= v47 >> 1)
    {
      v50 = v42;
      sub_251C0B6AC((v47 > 1), v48 + 1, 1);
      v42 = v50;
      v40 = v87;
    }

    *(v40 + 16) = v48 + 1;
    v49 = v40 + 16 * v48;
    *(v49 + 32) = v46;
    *(v49 + 40) = v45;
    if (!--v27)
    {
      goto LABEL_27;
    }
  }

  switch(v43)
  {
    case 3:
      v46 = 0x6C2D7065656C7361;
      v45 = 0xEC00000074686769;
      goto LABEL_24;
    case 4:
      v46 = 0x642D7065656C7361;
      v45 = 0xEB00000000706565;
      goto LABEL_24;
    case 5:
      v45 = 0xEA00000000006D65;
      v46 = 0x722D7065656C7361;
      goto LABEL_24;
  }

LABEL_28:
  result = sub_251C717E4();
  __break(1u);
  return result;
}

uint64_t sub_251B0BCF0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v94 = a3;
  sub_251B0E460(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v86 = &v82 - v7;
  v95 = type metadata accessor for PBDateRange(0);
  v88 = *(v95 - 8);
  v8 = *(v88 + 64);
  MEMORY[0x28223BE20](v95);
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for PBTypedData(0);
  v93 = *(v96 - 8);
  v10 = *(v93 + 64);
  MEMORY[0x28223BE20](v96);
  v89 = (&v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for PBSleepSeries.Value(0);
  v97 = *(v91 - 1);
  v12 = *(v97 + 64);
  MEMORY[0x28223BE20](v91);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0E460(0, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v82 - v17;
  v19 = type metadata accessor for SleepSeriesValueIterator(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for ClinicalSharingSleepStatisticsQuery(0);
  v90 = *(v83 - 8);
  v23 = *(v90 + 64);
  v24 = MEMORY[0x28223BE20](v83);
  v25 = (&v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v24);
  v27 = &v82 - v26;
  v28 = type metadata accessor for PBSleepSeries(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v84 = &v82 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = MEMORY[0x277D84F90];
  *(&v82 - v33) = MEMORY[0x277D84F90];
  v35 = *(v32 + 28);
  v98 = (&v82 - v33);
  sub_251C703A4();
  v87 = v3;
  sub_251B0E3F8(v3, v27, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  sub_251B0E3F8(v27, v25, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  v36 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v37 = swift_allocObject();
  v38 = a1;
  *(v37 + 16) = a1;
  v39 = v92;
  *(v37 + 24) = v92;
  v40 = v37 + v36;
  v41 = v14;
  sub_251B0E2D4(v27, v40, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  sub_251B0E13C();
  inited = swift_initStackObject();
  *(inited + 16) = sub_251B0E0C8;
  *(inited + 24) = v37;
  v43 = v38;
  v44 = v39;

  sub_251B0C7A8(v43, v44, v25, v22);

  sub_251B0E33C(v25, type metadata accessor for ClinicalSharingSleepStatisticsQuery);
  sub_251B0E1F0(0, &qword_27F479E80, MEMORY[0x277D84148]);
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  v48 = swift_allocObject();
  v49 = MEMORY[0x277D84150];
  sub_251B0E2D4(v22, v48 + *(*v48 + *MEMORY[0x277D84150] + 16), type metadata accessor for SleepSeriesValueIterator);
  v92 = inited;

  v50 = *(*v48 + *v49 + 16);
  sub_251B0CAFC(v18);
  v51 = *(v97 + 48);
  v52 = v91;
  if (v51(v18, 1) != 1)
  {
    v76 = v41;
    do
    {
      sub_251B0E2D4(v18, v41, type metadata accessor for PBSleepSeries.Value);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_251C392D4(0, v34[2] + 1, 1, v34);
      }

      v78 = v34[2];
      v77 = v34[3];
      if (v78 >= v77 >> 1)
      {
        v34 = sub_251C392D4(v77 > 1, v78 + 1, 1, v34);
      }

      v34[2] = v78 + 1;
      v79 = v34 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v78;
      v41 = v76;
      sub_251B0E2D4(v76, v79, type metadata accessor for PBSleepSeries.Value);
      *v98 = v34;
      sub_251B0CAFC(v18);
    }

    while ((v51)(v18, 1, v52) != 1);
  }

  swift_setDeallocating();
  sub_251B0E33C(v48 + *(*v48 + *MEMORY[0x277D84150] + 16), type metadata accessor for SleepSeriesValueIterator);
  v53 = *(*v48 + 48);
  v54 = *(*v48 + 52);
  swift_deallocClassInstance();
  if (v34[2])
  {
    v55 = v89;
    *v89 = 0;
    *(v55 + 8) = 1;
    v56 = *(v96 + 20);
    v57 = v96;
    v58 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v59 = *(v58 - 8);
    v91 = *(v59 + 56);
    v97 = v59 + 56;
    (v91)(v55 + v56, 1, 1, v58);
    v60 = v55 + *(v57 + 24);
    sub_251C703A4();
    v61 = *(v57 + 28);
    v90 = *(v88 + 56);
    (v90)(v55 + v61, 1, 1, v95);
    v62 = v87;
    v63 = *(v87 + 16);
    v64 = *(v83 + 28);
    v65 = sub_251C6FAE4();
    v66 = *(v65 - 8);
    v67 = v62 + v64;
    v68 = v86;
    (*(v66 + 16))(v86, v67, v65);
    (*(v66 + 56))(v68, 0, 1, v65);
    v69 = v85;
    sub_251BFC464(v63 + 2, 1, v68);
    v70 = v92;
    swift_setDeallocating();
    v71 = v70[3];

    sub_251B0E39C(v68, &qword_27F478D90, MEMORY[0x277CC88A8]);
    sub_251B0E39C(v55 + v61, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251B0E2D4(v69, v55 + v61, type metadata accessor for PBDateRange);
    (v90)(v55 + v61, 0, 1, v95);
    *v55 = 114;
    *(v55 + 8) = 1;
    v72 = v98;
    v73 = v84;
    sub_251B0E3F8(v98, v84, type metadata accessor for PBSleepSeries);
    sub_251B0E39C(v55 + v56, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251B0E2D4(v73, v55 + v56, type metadata accessor for PBSleepSeries);
    swift_storeEnumTagMultiPayload();
    (v91)(v55 + v56, 0, 1, v58);
    sub_251B0E33C(v72, type metadata accessor for PBSleepSeries);
    v74 = v94;
    sub_251B0E2D4(v55, v94, type metadata accessor for PBTypedData);
    return (*(v93 + 56))(v74, 0, 1, v96);
  }

  else
  {
    v80 = v92;
    swift_setDeallocating();
    v81 = v80[3];

    sub_251B0E33C(v98, type metadata accessor for PBSleepSeries);
    return (*(v93 + 56))(v94, 1, 1, v96);
  }
}

id sub_251B0C7A8@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, char *a4@<X8>)
{
  v41 = a1;
  v42 = a2;
  sub_251B0E460(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v37 - v8;
  sub_251B0E460(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v14 = a3[4];
  v39 = a3[3];
  v40 = v14;
  v15 = a3[1];
  v16 = *(a3 + 16);
  v17 = type metadata accessor for SleepSeriesValueIterator(0);
  v18 = &a4[v17[7]];
  sub_251B0D8EC(1, v15, v16);
  v19 = *a3;
  v38 = *(*a3 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v20 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
  v21 = v17[9];
  v22 = sub_251C701E4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(&a4[v21], v19 + v20, v22);
  v24 = v17[11];
  (*(v23 + 56))(v13, 1, 1, v22);
  v25 = sub_251C70244();
  (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
  v26 = v38;
  sub_251C6FC74();
  sub_251C6FBE4();
  v27 = v17[12];
  *&a4[v27] = [objc_opt_self() secondUnit];
  v28 = &a4[v17[13]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *(v28 + 2) = 0;
  *(v28 + 6) = 0;
  v29 = &v28[*(type metadata accessor for PBSleepSeries.Value(0) + 32)];
  sub_251C703A4();
  v31 = v41;
  v30 = v42;
  *a4 = v41;
  *(a4 + 1) = v30;
  v33 = v39;
  v32 = v40;
  *(a4 + 2) = v39;
  *(a4 + 3) = v32;
  *&a4[v17[8]] = v26;
  *&a4[v17[10]] = v33;
  v34 = v31;
  v35 = v42;

  return v35;
}

uint64_t sub_251B0CAFC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  sub_251B0E4B4();
  v26 = v1;
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251B0E460(0, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = type metadata accessor for PBSleepSeries.Value(0);
  v13 = (*(v12 - 8) + 56);
  v24 = *v13;
  v14 = v24(v11, 1, 1, v12);
  v23 = v13;
  v15 = (v13 - 1);
  while (1)
  {
    v16 = MEMORY[0x25308DB30](v14);
    v17 = *(v26 + 48);
    sub_251B0CDA0(&v4[v17]);
    v19 = v18;
    objc_autoreleasePoolPop(v16);
    sub_251B0E39C(v11, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
    sub_251B0E538(&v4[v17], v11);
    sub_251B0E5B8(v11, v9);
    if ((*v15)(v9, 1, v12) != 1)
    {
      break;
    }

    v14 = sub_251B0E39C(v9, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
    if (v19)
    {
      sub_251B0E39C(v11, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
      v20 = 1;
      v21 = v25;
      return v24(v21, v20, 1, v12);
    }
  }

  sub_251B0E39C(v11, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  v21 = v25;
  sub_251B0E2D4(v9, v25, type metadata accessor for PBSleepSeries.Value);
  v20 = 0;
  return v24(v21, v20, 1, v12);
}

void sub_251B0CDA0(uint64_t a1)
{
  v88 = a1;
  v2 = type metadata accessor for PBSleepSeries.Value(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v86 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v78 - v7;
  sub_251B0E460(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v78 - v11;
  v13 = sub_251C70014();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v78 - v19;
  sub_251B0D570();
  v87 = v23;
  if (v23)
  {
    (*(v3 + 56))(v88, 1, 1, v2);
    return;
  }

  v24 = v21;
  v81 = v2;
  v83 = v8;
  v84 = v22;
  v85 = type metadata accessor for SleepSeriesValueIterator(0);
  v25 = v85[9];
  v26 = objc_opt_self();
  v94 = v25;
  v95 = v1;
  v27 = sub_251C70114();
  v28 = [v26 hk:v24 sleepDayStartForMorningIndex:v27 calendar:?];

  sub_251C6FFE4();
  v29 = *(v14 + 16);
  v82 = v20;
  v29(v18, v20, v13);
  v30 = v24 + v84;
  v31 = __OFADD__(v24, v84);
  v32 = v30 - 1;
  v33 = __OFSUB__(v30, 1);
  if (v31)
  {
    goto LABEL_42;
  }

  if (v33)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v34 = v13;
  v80 = v3;
  v79 = v14;
  if (v24 < v32)
  {
    v78 = v32;
    v35 = 0;
    v36 = 0;
    v37 = v85[11];
    v96 = *(v95 + v85[12]);
    v93 = *v95;
    v38 = *(v95 + 8);
    v91 = v37;
    v92 = v38;
    v39 = (v14 + 48);
    v89 = (v14 + 32);
    v90 = (v14 + 8);
    v40 = v84 - 1;
    v41 = 0.0;
    v42 = 0.0;
    while (1)
    {
      v43 = v34;
      v44 = sub_251C6FF94();
      v45 = [v93 statisticsForDate_];

      v46 = [v45 duration];
      if (v46)
      {
        [v46 doubleValueForUnit_];
        v48 = v47;

        v49 = __OFADD__(v36++, 1);
        if (v49)
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v42 = v42 + v48;
      }

      v50 = sub_251C6FF94();
      v51 = [v92 statisticsForDate_];

      v52 = [v51 duration];
      if (v52)
      {
        [v52 doubleValueForUnit_];
        v54 = v53;

        v49 = __OFADD__(v35++, 1);
        v55 = v95;
        if (v49)
        {
          goto LABEL_41;
        }

        v41 = v41 + v54;
      }

      else
      {
        v55 = v95;
      }

      sub_251C70144();
      v34 = v43;
      if ((*v39)(v12, 1, v43) == 1)
      {
        sub_251B0E39C(v12, &qword_2813E7500, MEMORY[0x277CC9578]);
        goto LABEL_25;
      }

      (*v90)(v18, v43);
      (*v89)(v18, v12, v43);
      ++v24;
      if (!--v40)
      {
        v24 = v78;
        v56 = v81;
        v55 = v95;
        goto LABEL_26;
      }
    }
  }

  v35 = 0;
  v36 = 0;
  v41 = 0.0;
  v42 = 0.0;
  v55 = v95;
LABEL_25:
  v56 = v81;
LABEL_26:
  v57 = v85;
  *(v55 + v85[10]) = v24;
  v58 = v83;
  *v83 = 0;
  *(v58 + 8) = 0xE000000000000000;
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v59 = v58 + *(v56 + 32);
  sub_251C703A4();
  v60 = v82;
  if (v36 < 1)
  {
    goto LABEL_31;
  }

  v61 = v42 / v36;
  if (COERCE__INT64(fabs(v61)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  if (v61 <= -1.0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v61 >= 4294967300.0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  *(v58 + 20) = v61;
LABEL_31:
  v62 = v88;
  if (v35 >= 1)
  {
    v63 = v41 / v35;
    if (COERCE__INT64(fabs(v63)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v63 > -1.0)
      {
        if (v63 < 4294967300.0)
        {
          *(v58 + 16) = v63;
          goto LABEL_36;
        }

LABEL_49:
        __break(1u);
        return;
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    goto LABEL_46;
  }

LABEL_36:
  v64 = v56;
  v65 = v86;
  sub_251B0E3F8(v55 + v57[13], v86, type metadata accessor for PBSleepSeries.Value);
  v66 = sub_251BB0D30(v58, v65);
  sub_251B0E33C(v65, type metadata accessor for PBSleepSeries.Value);
  if (v66)
  {
    v67 = *(v79 + 8);
    v67(v18, v34);
    v67(v60, v34);
    (*(v80 + 56))(v62, 1, 1, v64);
    v68 = v58;
  }

  else
  {
    v69 = *(v55 + v57[8]);
    v70 = v34;
    v71 = sub_251C6FF94();
    v72 = [v69 stringFromDate_];

    v73 = sub_251C70F14();
    v74 = v58;
    v76 = v75;

    v77 = *(v79 + 8);
    v77(v18, v70);
    v77(v60, v70);
    *v74 = v73;
    v74[1] = v76;
    sub_251B0E3F8(v74, v62, type metadata accessor for PBSleepSeries.Value);
    (*(v80 + 56))(v62, 0, 1, v64);
    v68 = v74;
  }

  sub_251B0E33C(v68, type metadata accessor for PBSleepSeries.Value);
}

void sub_251B0D570()
{
  v1 = v0;
  sub_251B0E460(0, &qword_2813E7500, MEMORY[0x277CC9578]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v35 - v4;
  v6 = sub_251C70E34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C70014();
  v38 = *(v11 - 8);
  v12 = *(v38 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v35 - v16;
  v18 = type metadata accessor for SleepSeriesValueIterator(0);
  v19 = *(v1 + 16);
  v20 = *(v1 + 24);
  v31 = __OFADD__(v19, v20);
  v21 = v19 + v20;
  if (v31)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFSUB__(v21, 1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = *(v1 + *(v18 + 40));
  if (v22 >= v21 - 1)
  {
    return;
  }

  v36 = v21 - 1;
  v37 = v15;
  v23 = *(v18 + 36);
  v24 = v18;
  sub_251C70E04();
  sub_251C70E24();
  (*(v7 + 8))(v10, v6);
  v25 = v1 + *(v24 + 28);
  sub_251C70144();
  v26 = v38;
  if ((*(v38 + 48))(v5, 1, v11) != 1)
  {
    (*(v26 + 32))(v37, v5, v11);
    v27 = sub_251C6FF94();
    v28 = sub_251C70114();
    v29 = [v27 hk:v28 morningIndexWithCalendar:?];

    v30 = v36;
    if (v36 >= v29)
    {
      v30 = v29;
    }

    v31 = __OFSUB__(v30, v22);
    v32 = v30 < v22;
    v33 = &v30[-v22];
    if (!v32)
    {
      if (!v31)
      {
        if (!__OFADD__(v33, 1))
        {
          v34 = *(v26 + 8);
          v34(v37, v11);
          v34(v17, v11);
          return;
        }

        goto LABEL_17;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  (*(v26 + 8))(v17, v11);
  sub_251B0E39C(v5, &qword_2813E7500, MEMORY[0x277CC9578]);
}

uint64_t sub_251B0D8EC(uint64_t a1, uint64_t a2, char a3)
{
  sub_251B0E460(0, &qword_27F4793D8, MEMORY[0x277CC9A70]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  sub_251B0E460(0, &qword_27F4793E0, MEMORY[0x277CC99E8]);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_251C701E4();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = sub_251C70244();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  sub_251C6FC74();
  if (!a3)
  {
    return sub_251C6FBE4();
  }

  if (a3 == 1)
  {
    if ((a1 * 7) >> 64 != (7 * a1) >> 63)
    {
      __break(1u);
    }

    return sub_251C6FBE4();
  }

  return sub_251C6FC34();
}

void sub_251B0DB5C()
{
  type metadata accessor for ClinicalSharingQueryContext(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKDayIndexRange(319);
    if (v1 <= 0x3F)
    {
      sub_251C6FAE4();
      if (v2 <= 0x3F)
      {
        sub_251A8223C(319, &qword_27F479E00, 0x277CCD0C0);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ClinicalSharingSleepStatisticsQuery.Duration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ClinicalSharingSleepStatisticsQuery.Duration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

void sub_251B0DCD4()
{
  if (!qword_27F479E18)
  {
    sub_251B0DD74();
    sub_251B0E28C(&qword_27F479E30, sub_251B0DD74);
    v0 = sub_251C70814();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479E18);
    }
  }
}

void sub_251B0DD74()
{
  if (!qword_27F479E20)
  {
    sub_251A8223C(255, &qword_27F479E28, 0x277CCDA58);
    sub_251A82284();
    v0 = sub_251C70974();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479E20);
    }
  }
}

void sub_251B0DE14(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_251B0DCD4();
    a3(255);
    sub_251B0E28C(&qword_27F479E40, sub_251B0DCD4);
    v5 = sub_251C70784();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_251B0DEC0@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251B0BCF0(*a1, a1[1], a2);
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = v1[9];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251B0E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  return sub_251BEFDF0(a1, 0, a2);
}

id sub_251B0E0C8@<X0>(char *a1@<X8>)
{
  v3 = *(type metadata accessor for ClinicalSharingSleepStatisticsQuery(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_251B0C7A8(v4, v5, v6, a1);
}

void sub_251B0E13C()
{
  if (!qword_27F479E60)
  {
    sub_251B0E1D0(255);
    sub_251B0E28C(&qword_27F479E78, sub_251B0E1D0);
    v0 = sub_251C716D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479E60);
    }
  }
}

void sub_251B0E1F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SleepSeriesValueIterator(255);
    v7 = sub_251B0E28C(&qword_27F479E70, type metadata accessor for SleepSeriesValueIterator);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_251B0E28C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_251B0E2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251B0E33C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251B0E39C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_251B0E460(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251B0E3F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251B0E460(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_251B0E4B4()
{
  if (!qword_27F479E88)
  {
    sub_251B0E460(255, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479E88);
    }
  }
}

uint64_t sub_251B0E538(uint64_t a1, uint64_t a2)
{
  sub_251B0E460(0, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251B0E5B8(uint64_t a1, uint64_t a2)
{
  sub_251B0E460(0, &qword_27F479E58, type metadata accessor for PBSleepSeries.Value);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_251B0E638(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_251B0E6C0()
{
  sub_251A8223C(319, &qword_27F479E28, 0x277CCDA58);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKDayIndexRange(319);
    if (v1 <= 0x3F)
    {
      sub_251C6FC94();
      if (v2 <= 0x3F)
      {
        sub_251A8223C(319, &qword_27F479EA0, 0x277CCAA68);
        if (v3 <= 0x3F)
        {
          sub_251C701E4();
          if (v4 <= 0x3F)
          {
            sub_251A8223C(319, &qword_27F479EA8, 0x277CCDAB0);
            if (v5 <= 0x3F)
            {
              type metadata accessor for PBSleepSeries.Value(319);
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

unint64_t sub_251B0E804()
{
  result = qword_27F479EB0;
  if (!qword_27F479EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479EB0);
  }

  return result;
}

uint64_t sub_251B0E858(uint64_t a1, uint64_t *a2)
{
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(*(a1 + 48) + v14);
    sub_251A83384(*(a1 + 56) + 32 * v14, &v17);
    v16[0] = v15;
    sub_251B0FCF4(v16, a2);
    result = sub_251B10F6C(v16);
    if (v2)
    {
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void HKClinicalGatewayEndpointSchema.asWebRequest(substitutions:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v103 = *MEMORY[0x277D85DE8];
  sub_251B10EAC(0, &qword_2813E7520, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v93[-v8];
  v10 = sub_251C6FE64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v93[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v93[-v16];
  if ([v2 enabled])
  {
    v96 = v15;
    v97 = v17;
    v98 = v11;
    v99 = v10;
    v18 = [v2 method];
    v19 = sub_251C70F14();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    HTTPMethod.init(rawValue:)(v22);
    if (v101 == 8)
    {
      type metadata accessor for WebRequestError();
      sub_251B10CA8(&qword_27F479B48, type metadata accessor for WebRequestError);
      swift_allocError();
      v24 = v23;
      v25 = [v2 method];
      v26 = sub_251C70F14();
      v28 = v27;

      *v24 = v26;
      v24[1] = v28;
LABEL_11:
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_40;
    }

    v94 = v101;
    v101 = MEMORY[0x277D84F98];
    sub_251B0E858(a1, &v101);
    v95 = v3;
    v40 = v101;
    v41 = [v2 URL];
    v42 = sub_251C70F14();

    v43 = sub_251C280A8(v40, v42);
    v45 = v44;

    sub_251C15BE8(v9);
    v47 = v98;
    v46 = v99;
    if ((*(v98 + 48))(v9, 1, v99) == 1)
    {

      sub_251B10E3C(v9, &qword_2813E7520, MEMORY[0x277CC9260]);
      type metadata accessor for WebRequestError();
      sub_251B10CA8(&qword_27F479B48, type metadata accessor for WebRequestError);
      swift_allocError();
      *v48 = v43;
      v48[1] = v45;
      goto LABEL_11;
    }

    (*(v47 + 32))(v97, v9, v46);
    if (!sub_251B0F3F8(a1))
    {
      v54 = 0;
      v56 = 0xF000000000000000;
      v53 = v95;
      goto LABEL_16;
    }

    v49 = objc_opt_self();
    v50 = sub_251C70E44();

    v101 = 0;
    v51 = [v49 dataWithJSONObject:v50 options:0 error:&v101];

    v52 = v101;
    v53 = v95;
    if (v51)
    {
      v54 = sub_251C6FEE4();
      v56 = v55;

      v47 = v98;
      v46 = v99;
LABEL_16:
      v57 = *(v47 + 16);
      v57(v96, v97, v46);
      v101 = MEMORY[0x277D84F90];
      v58 = [v2 headers];
      if (v58)
      {
        v59 = v58;
        sub_251B10CF0();
        v60 = sub_251C71154();

        sub_251B10D3C(v60, v40, &v101);
        v95 = v53;

        swift_bridgeObjectRelease_n();
        v61 = v101;
      }

      else
      {

        v61 = MEMORY[0x277D84F90];
      }

      v62 = type metadata accessor for FHIRServerWebRequest();
      *(a2 + 24) = v62;
      *(a2 + 32) = &off_2863FC030;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      v64 = v94;
      *boxed_opaque_existential_1 = v94;
      v57(boxed_opaque_existential_1 + v62[6], v96, v99);
      v65 = (boxed_opaque_existential_1 + v62[7]);
      *v65 = v54;
      v65[1] = v56;
      boxed_opaque_existential_1[1] = v61;
      v101 = 0;
      v102 = 0xE000000000000000;
      sub_251A85E50(v54, v56);
      sub_251C716A4();

      v101 = 0xD000000000000015;
      v102 = 0x8000000251C8AB60;
      if (v64 > 3)
      {
        v66 = v98;
        if (v64 > 5)
        {
          v67 = v99;
          if (v64 == 6)
          {
            v68 = 0xE300000000000000;
            v69 = 5526864;
          }

          else
          {
            v68 = 0xE500000000000000;
            v69 = 0x4543415254;
          }
        }

        else
        {
          v67 = v99;
          if (v64 == 4)
          {
            v68 = 0xE700000000000000;
            v69 = 0x534E4F4954504FLL;
          }

          else
          {
            v68 = 0xE400000000000000;
            v69 = 1414745936;
          }
        }
      }

      else
      {
        v66 = v98;
        if (v64 > 1)
        {
          v67 = v99;
          if (v64 == 2)
          {
            v68 = 0xE300000000000000;
            v69 = 5522759;
          }

          else
          {
            v68 = 0xE400000000000000;
            v69 = 1145128264;
          }
        }

        else
        {
          v67 = v99;
          if (v64)
          {
            v68 = 0xE600000000000000;
            v69 = 0x4554454C4544;
          }

          else
          {
            v68 = 0xE700000000000000;
            v69 = 0x5443454E4E4F43;
          }
        }
      }

      MEMORY[0x25308CDA0](v69, v68);

      MEMORY[0x25308CDA0](32, 0xE100000000000000);
      sub_251B10CA8(&qword_27F478E68, MEMORY[0x277CC9260]);
      v85 = v96;
      v86 = sub_251C719A4();
      v87 = v67;
      MEMORY[0x25308CDA0](v86);

      sub_251A8596C(v54, v56);
      v88 = v101;
      v89 = v102;
      v90 = *(v66 + 8);
      v90(v85, v87);
      v91 = (boxed_opaque_existential_1 + v62[8]);
      *v91 = v88;
      v91[1] = v89;
      v90(v97, v87);
      goto LABEL_40;
    }

    v70 = v52;

    v71 = sub_251C6FD84();

    swift_willThrow();
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v72 = sub_251C70764();
    __swift_project_value_buffer(v72, qword_2813E8130);
    v73 = v71;
    v74 = sub_251C70744();
    v75 = sub_251C713D4();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v100 = v71;
      v101 = v77;
      *v76 = 136315138;
      v78 = v71;
      sub_251A82284();
      v79 = sub_251C70F74();
      v81 = sub_251B10780(v79, v80, &v101);

      *(v76 + 4) = v81;
      _os_log_impl(&dword_251A6C000, v74, v75, "Failed to serialize JSON data: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x25308E2B0](v77, -1, -1);
      MEMORY[0x25308E2B0](v76, -1, -1);
    }

    v83 = v98;
    v82 = v99;
    v84 = v97;
    swift_willThrow();
    (*(v83 + 8))(v84, v82);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v29 = sub_251C70764();
    __swift_project_value_buffer(v29, qword_2813E8130);
    v30 = v2;
    v31 = sub_251C70744();
    v32 = sub_251C713C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v101 = v34;
      *v33 = 136315138;
      v35 = [v30 name];
      v36 = sub_251C70F14();
      v38 = v37;

      v39 = sub_251B10780(v36, v38, &v101);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_251A6C000, v31, v32, "HKClinicalGatewayEndpointSchema: %s is not enabled.", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x25308E2B0](v34, -1, -1);
      MEMORY[0x25308E2B0](v33, -1, -1);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

LABEL_40:
  v92 = *MEMORY[0x277D85DE8];
}

uint64_t sub_251B0F3F8(uint64_t a1)
{
  v2 = v1;
  sub_251B10EAC(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - v9;
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v57 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v58 = &v56 - v16;
  v17 = [v2 name];
  v18 = sub_251C70F14();
  v20 = v19;

  if (v18 == 0xD000000000000013 && 0x8000000251C8AB80 == v20)
  {

    if (!*(a1 + 16))
    {
LABEL_20:
      (*(v12 + 56))(v10, 1, 1, v11);
      goto LABEL_21;
    }
  }

  else
  {
    v22 = sub_251C719D4();

    if ((v22 & 1) == 0)
    {
      goto LABEL_22;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_20;
    }
  }

  v23 = sub_251AC8DE8(5u);
  if ((v24 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_251A83384(*(a1 + 56) + 32 * v23, &v61);
  v25 = swift_dynamicCast();
  v26 = *(v12 + 56);
  v26(v10, v25 ^ 1u, 1, v11);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_21:
    sub_251B10E3C(v10, &qword_2813E7500, MEMORY[0x277CC9578]);
    goto LABEL_22;
  }

  v27 = v58;
  (*(v12 + 32))(v58, v10, v11);
  v28 = [v2 body];
  if (!v28)
  {
    (*(v12 + 8))(v27, v11);
LABEL_22:
    v53 = [v2 body];
    if (!v53)
    {
      return 0;
    }

    v54 = v53;
    v52 = sub_251C70E54();

    return v52;
  }

  v29 = v28;
  v30 = sub_251C70E54();

  if (!*(v30 + 16) || (v31 = sub_251AC8C58(0x6574656D61726170, 0xE900000000000072), (v32 & 1) == 0) || (sub_251A83384(*(v30 + 56) + 32 * v31, &v61), sub_251B10EAC(0, &qword_27F479EC0, sub_251B10F10, MEMORY[0x277D83940]), v34 = v33, (swift_dynamicCast() & 1) == 0))
  {
    (*(v12 + 8))(v27, v11);

    goto LABEL_22;
  }

  v56 = v34;
  v35 = *&v60[0];
  v36 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v61 = v36;
  sub_251ACCFD8(0x65636E69735FLL, 0xE600000000000000, 1701667182, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  v38 = v61;
  (*(v12 + 16))(v8, v27, v11);
  v26(v8, 0, 1, v11);
  v39 = v57;
  static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v8, v57);
  sub_251B10E3C(v8, &qword_2813E7500, MEMORY[0x277CC9578]);
  v40 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v40 setFormatOptions_];
  v41 = sub_251C6FF94();
  v42 = [v40 stringFromDate_];

  v43 = sub_251C70F14();
  v45 = v44;

  v46 = *(v12 + 8);
  v46(v39, v11);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  *&v61 = v38;
  sub_251ACCFD8(v43, v45, 0x74614465756C6176, 0xED0000656D695465, v47);
  v48 = v61;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_251C39308(0, v35[2] + 1, 1, v35);
  }

  v50 = v35[2];
  v49 = v35[3];
  if (v50 >= v49 >> 1)
  {
    v35 = sub_251C39308((v49 > 1), v50 + 1, 1, v35);
  }

  v35[2] = v50 + 1;
  v35[v50 + 4] = v48;
  v62 = v56;
  *&v61 = v35;
  sub_251ACFB54(&v61, v60);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v59 = v30;
  sub_251ACD4A0(v60, 0x6574656D61726170, 0xE900000000000072, v51);
  v46(v58, v11);
  return v59;
}

void sub_251B0FCF4(unsigned __int8 *a1, uint64_t *a2)
{
  sub_251B10EAC(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v89 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v89 - v13;
  v15 = sub_251C70014();
  v95 = *(v15 - 8);
  v16 = v95[8];
  v17 = MEMORY[0x28223BE20](v15);
  v92 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v93 = &v89 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v89 - v22;
  MEMORY[0x28223BE20](v21);
  v94 = &v89 - v24;
  sub_251B11030(a1, &v100);
  if (swift_dynamicCast())
  {
    v25 = v99[0];
    v26 = v99[1];
    v27 = *a2;
    v28 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = *a2;
    *a2 = 0x8000000000000000;
    sub_251ACD5F0(v25, v26, v28, isUniquelyReferenced_nonNull_native);
    *a2 = v100;
    return;
  }

  v89 = a2;
  v91 = v2;
  LOBYTE(v100) = *a1;
  v30 = ContentVariables.rawValue.getter();
  v90 = v23;
  if (v30 == 0xD000000000000011 && 0x8000000251C89BB0 == v31)
  {
  }

  else
  {
    v32 = sub_251C719D4();

    if ((v32 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  sub_251B11030(a1, &v100);
  v33 = swift_dynamicCast();
  v34 = v95;
  v35 = v95[7];
  if (v33)
  {
    v35(v14, 0, 1, v15);
    v36 = v94;
    (v34[4])(v94, v14, v15);
    v37 = v34[2];
    LODWORD(v92) = *a1;
    v37(v12, v36, v15);
    v35(v12, 0, 1, v15);
    v38 = v90;
    static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v12, v90);
    v39 = MEMORY[0x277CC9578];
    sub_251B10E3C(v12, &qword_2813E7500, MEMORY[0x277CC9578]);
    v100 = 25959;
    v101 = 0xE200000000000000;
    v37(v12, v38, v15);
    v35(v12, 0, 1, v15);
    v40 = v93;
    static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v12, v93);
    sub_251B10E3C(v12, &qword_2813E7500, v39);
    v41 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v41 setFormatOptions_];
    v42 = sub_251C6FF94();
    v43 = [v41 stringFromDate_];

    v44 = sub_251C70F14();
    v46 = v45;

    v47 = v34[1];
    v47(v40, v15);
    MEMORY[0x25308CDA0](v44, v46);

    v48 = v100;
    v49 = v101;
    v47(v38, v15);
    v50 = v89;
    v51 = *v89;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *v50;
    *v50 = 0x8000000000000000;
    sub_251ACD5F0(v48, v49, v92, v52);
    *v50 = v100;
    v47(v94, v15);
    return;
  }

  v35(v14, 1, 1, v15);
  sub_251B10E3C(v14, &qword_2813E7500, MEMORY[0x277CC9578]);
LABEL_10:
  LOBYTE(v100) = *a1;
  if (ContentVariables.rawValue.getter() == 0xD000000000000015 && 0x8000000251C89BD0 == v53)
  {
  }

  else
  {
    v54 = sub_251C719D4();

    if ((v54 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  sub_251B11030(a1, &v100);
  v55 = swift_dynamicCast();
  v56 = v95;
  v57 = v95[7];
  if (v55)
  {
    v57(v9, 0, 1, v15);
    v58 = v92;
    (v56[4])(v92, v9, v15);
    v59 = v56[2];
    LODWORD(v94) = *a1;
    v59(v12, v58, v15);
    v60 = v59;
    v57(v12, 0, 1, v15);
    v61 = v90;
    static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v12, v90);
    v62 = MEMORY[0x277CC9578];
    sub_251B10E3C(v12, &qword_2813E7500, MEMORY[0x277CC9578]);
    v100 = 25959;
    v101 = 0xE200000000000000;
    v60(v12, v61, v15);
    v57(v12, 0, 1, v15);
    v63 = v93;
    static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v12, v93);
    sub_251B10E3C(v12, &qword_2813E7500, v62);
    v64 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
    [v64 setFormatOptions_];
    v65 = sub_251C6FF94();
    v66 = [v64 stringFromDate_];

    v67 = sub_251C70F14();
    v69 = v68;

    v70 = v95[1];
    v70(v63, v15);
    MEMORY[0x25308CDA0](v67, v69);

    v71 = v100;
    v72 = v101;
    v70(v90, v15);
    v73 = v89;
    v74 = *v89;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *v73;
    *v73 = 0x8000000000000000;
    sub_251ACD5F0(v71, v72, v94, v75);
    *v73 = v100;
    v70(v92, v15);
    return;
  }

  v57(v9, 1, 1, v15);
  sub_251B10E3C(v9, &qword_2813E7500, MEMORY[0x277CC9578]);
LABEL_17:
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v76 = sub_251C70764();
  __swift_project_value_buffer(v76, qword_2813E8130);
  sub_251B11030(a1, &v100);
  sub_251B11030(a1, v99);
  v77 = sub_251C70744();
  v78 = sub_251C713C4();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v102 = v80;
    *v79 = 136315394;
    sub_251B11030(&v100, v97);
    v96 = v97[0];
    v81 = ContentVariables.rawValue.getter();
    v83 = v82;
    sub_251B10F6C(&v100);
    __swift_destroy_boxed_opaque_existential_1(v98);
    v84 = sub_251B10780(v81, v83, &v102);

    *(v79 + 4) = v84;
    *(v79 + 12) = 2080;
    sub_251B11030(v99, v97);
    v85 = sub_251C70F74();
    v87 = v86;
    sub_251B10F6C(v99);
    v88 = sub_251B10780(v85, v87, &v102);

    *(v79 + 14) = v88;
    _os_log_impl(&dword_251A6C000, v77, v78, "Unexpected type for key: %s -- %s", v79, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v80, -1, -1);
    MEMORY[0x25308E2B0](v79, -1, -1);
  }

  else
  {

    sub_251B10F6C(v99);
    sub_251B10F6C(&v100);
  }
}

uint64_t sub_251B10780(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_251B1084C(v11, 0, 0, 1, a1, a2);
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
    sub_251A83384(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_251B1084C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_251B10958(a5, a6);
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
    result = sub_251C71724();
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

uint64_t sub_251B10958(uint64_t a1, unint64_t a2)
{
  v4 = sub_251B109A4(a1, a2);
  sub_251B10AD4(&unk_2863F2D48);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_251B109A4(uint64_t a1, unint64_t a2)
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

  v6 = sub_251C6CBEC(v5, 0);
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

  result = sub_251C71724();
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
        v10 = sub_251C71014();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_251C6CBEC(v10, 0);
        result = sub_251C71694();
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

uint64_t sub_251B10AD4(uint64_t result)
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

  result = sub_251B10BC0(result, v12, 1, v3);
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

char *sub_251B10BC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_251B11094();
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