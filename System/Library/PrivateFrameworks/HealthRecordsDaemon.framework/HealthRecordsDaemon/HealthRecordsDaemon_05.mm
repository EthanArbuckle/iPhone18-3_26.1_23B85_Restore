uint64_t sub_251ADDF44(unint64_t a1)
{
  sub_251AE52B8();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v150 = &v124 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7098(0, &qword_2813E2248, sub_251AE406C, sub_251AE5338, MEMORY[0x277CBCD10]);
  v8 = v7;
  v151 = *(v7 - 8);
  v9 = *(v151 + 64);
  MEMORY[0x28223BE20](v7);
  v149 = &v124 - v10;
  sub_251AE40A0(0, &qword_2813E2088, sub_251AE406C, MEMORY[0x277CBCE78]);
  v148 = v11;
  v133 = *(v11 - 1);
  v12 = *(v133 + 8);
  MEMORY[0x28223BE20](v11);
  v130 = &v124 - v13;
  v14 = MEMORY[0x277CBCF38];
  sub_251AE7808(0, &qword_2813E1BE0, sub_251AE406C, MEMORY[0x277CBCF38]);
  v132 = v15;
  v131 = *(v15 - 8);
  v16 = *(v131 + 64);
  MEMORY[0x28223BE20](v15);
  v129 = &v124 - v17;
  sub_251AE7808(0, &qword_2813E1BF0, sub_251AE5E24, v14);
  v136 = v18;
  v135 = *(v18 - 8);
  v19 = *(v135 + 64);
  MEMORY[0x28223BE20](v18);
  v157 = (&v124 - v20);
  sub_251AE5E58();
  v139 = v21;
  v138 = *(v21 - 8);
  v22 = *(v138 + 64);
  MEMORY[0x28223BE20](v21);
  v137 = &v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6018();
  v143 = *(v24 - 8);
  v144 = v24;
  v25 = *(v143 + 64);
  MEMORY[0x28223BE20](v24);
  v158 = &v124 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE60AC();
  v142 = v27;
  v141 = *(v27 - 8);
  v28 = *(v141 + 64);
  MEMORY[0x28223BE20](v27);
  v140 = &v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE61B8(0, &qword_2813E26F0, MEMORY[0x277CBCB38]);
  v146 = *(v30 - 8);
  v147 = v30;
  v31 = *(v146 + 64);
  MEMORY[0x28223BE20](v30);
  v145 = &v124 - v32;
  v155 = type metadata accessor for ClinicalSharingSyncTask();
  v128 = *(v155 - 1);
  v33 = *(v128 + 64);
  v34 = MEMORY[0x28223BE20](v155);
  v126 = &v124 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v134 = &v124 - v37;
  v156 = v38;
  MEMORY[0x28223BE20](v36);
  v127 = &v124 - v39;
  v162 = MEMORY[0x277D84F90];
  v153 = v8;
  v154 = v3;
  v152 = v4;
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  v40 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v41 = a1;
  v42 = MEMORY[0x277D84F90];
  a1 = &off_2796E0000;
  v160 = v41;
  if (v40)
  {
    v43 = 0;
    v44 = v41 & 0xC000000000000001;
    v45 = v41 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v44)
      {
        v46 = MEMORY[0x25308D460](v43, v41);
        v47 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          v52 = v162;
          v42 = MEMORY[0x277D84F90];
          goto LABEL_28;
        }
      }

      else
      {
        if (v43 >= *(v45 + 16))
        {
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v40 = sub_251C717F4();
          goto LABEL_3;
        }

        v46 = *(v41 + 8 * v43 + 32);

        v47 = v43 + 1;
        if (__OFADD__(v43, 1))
        {
          goto LABEL_25;
        }
      }

      v48 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
      if ([*(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) featureStatus] == 1 && objc_msgSend(*(v46 + v48), sel_userStatus) == 2 && (objc_msgSend(*(v46 + v48), sel_multiDeviceStatus) != 2 && objc_msgSend(*(v46 + v48), sel_multiDeviceStatus) != 4 && ((v50 = *(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8)) == 0 || (*(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) ? (v51 = v50 == *(v46 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) : (v51 = 0), v51 || (sub_251C719D4() & 1) != 0)) || objc_msgSend(*(v46 + v48), sel_multiDeviceStatus) == 3))
      {
        sub_251C71734();
        v49 = *(v162 + 16);
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
        v41 = v160;
      }

      else
      {
      }

      ++v43;
      if (v47 == v40)
      {
        goto LABEL_26;
      }
    }
  }

  v52 = MEMORY[0x277D84F90];
LABEL_28:
  v53 = v52 < 0 || (v52 & 0x4000000000000000) != 0;
  if (v53)
  {
    if (sub_251C717F4())
    {
      goto LABEL_33;
    }

LABEL_73:

    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v108 = sub_251C70764();
    __swift_project_value_buffer(v108, qword_2813E8130);
    v109 = v126;
    sub_251AE57A8(v159, v126, type metadata accessor for ClinicalSharingSyncTask);
    v110 = sub_251C70744();
    v111 = sub_251C713F4();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v162 = v113;
      *v112 = 136315138;
      v114 = (v109 + v155[9]);
      v115 = *v114;
      v116 = v114[1];

      sub_251AE5DC4(v109, type metadata accessor for ClinicalSharingSyncTask);
      v117 = sub_251B10780(v115, v116, &v162);

      *(v112 + 4) = v117;
      _os_log_impl(&dword_251A6C000, v110, v111, "%s No accounts available to sync for", v112, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v113);
      MEMORY[0x25308E2B0](v113, -1, -1);
      MEMORY[0x25308E2B0](v112, -1, -1);
    }

    else
    {

      sub_251AE5DC4(v109, type metadata accessor for ClinicalSharingSyncTask);
    }

    v119 = v153;
    v118 = v154;
    v120 = v152;
    v162 = v160;
    sub_251AE406C(0);
    sub_251AE5338();
    v121 = v150;
    sub_251C710D4();
    sub_251AA98B0(0, &qword_2813E1C30);
    v122 = v149;
    sub_251C708E4();
    (*(v120 + 8))(v121, v118);
    sub_251AE548C();
    v107 = sub_251C70A94();
    (*(v151 + 8))(v122, v119);
    return v107;
  }

  if (!*(v52 + 16))
  {
    goto LABEL_73;
  }

LABEL_33:
  v162 = v42;
  if (!v40)
  {
    goto LABEL_57;
  }

  LODWORD(v125) = v53;
  v126 = v52;
  v54 = 0;
  v55 = v41 & 0xC000000000000001;
  v56 = v41 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v55)
    {
      v58 = MEMORY[0x25308D460](v54, v41);
      v59 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      goto LABEL_40;
    }

    if (v54 >= *(v56 + 16))
    {
      goto LABEL_70;
    }

    v58 = *(v41 + 8 * v54 + 32);

    v59 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

LABEL_40:
    v60 = OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus;
    if ([*(v58 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_clinicalSharingStatus) *(a1 + 3616)] != 1 || objc_msgSend(*(v58 + v60), sel_userStatus) != 2)
    {
      goto LABEL_35;
    }

    if ([*(v58 + v60) multiDeviceStatus] != 2 && objc_msgSend(*(v58 + v60), sel_multiDeviceStatus) != 4)
    {
      v61 = *(v58 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo + 8);
      if (!v61 || (*(v58 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_existingMultiDeviceInfo) == *(v58 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID) ? (v62 = v61 == *(v58 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_deviceID + 8)) : (v62 = 0), v62 || (sub_251C719D4() & 1) != 0))
      {

        a1 = 0x2796E0000;
        goto LABEL_36;
      }
    }

    a1 = 0x2796E0000;
    if ([*(v58 + v60) multiDeviceStatus] == 3)
    {
    }

    else
    {
LABEL_35:
      sub_251C71734();
      v57 = *(v162 + 16);
      sub_251C71774();
      sub_251C71784();
      sub_251C71744();
      v41 = v160;
    }

LABEL_36:
    ++v54;
    if (v59 == v40)
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_56:
  v42 = v162;
  v52 = v126;
  v53 = v125;
LABEL_57:
  v63 = v127;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v64 = sub_251C70764();
  __swift_project_value_buffer(v64, qword_2813E8130);
  sub_251AE57A8(v159, v63, type metadata accessor for ClinicalSharingSyncTask);

  v65 = sub_251C70744();
  v66 = sub_251C713F4();
  v67 = os_log_type_enabled(v65, v66);
  v126 = v42;
  if (v67)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v162 = v69;
    *v68 = 136315650;
    v70 = (v63 + v155[9]);
    v71 = *v70;
    v72 = v70[1];

    sub_251AE5DC4(v63, type metadata accessor for ClinicalSharingSyncTask);
    v73 = sub_251B10780(v71, v72, &v162);

    *(v68 + 4) = v73;
    *(v68 + 12) = 2048;
    if (v53)
    {
      v74 = sub_251C717F4();
    }

    else
    {
      v74 = *(v52 + 16);
    }

    *(v68 + 14) = v74;

    *(v68 + 22) = 2048;
    if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
    {
      v75 = sub_251C717F4();
    }

    else
    {
      v75 = *(v42 + 16);
    }

    *(v68 + 24) = v75;

    _os_log_impl(&dword_251A6C000, v65, v66, "%s Starting data collection and node upload for %ld accounts. %ld accounts should not sync.", v68, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x25308E2B0](v69, -1, -1);
    MEMORY[0x25308E2B0](v68, -1, -1);
  }

  else
  {

    sub_251AE5DC4(v63, type metadata accessor for ClinicalSharingSyncTask);
  }

  v162 = v52;
  sub_251AE406C(0);
  v127 = v76;
  v77 = v130;
  sub_251C70A24();
  v125 = sub_251AA98B0(0, &qword_2813E1C30);
  v78 = v129;
  v79 = v148;
  sub_251C709F4();
  (*(v133 + 1))(v77, v79);
  sub_251AE5E24(0);
  v80 = v132;
  sub_251C71AE4();
  (*(v131 + 8))(v78, v80);
  v133 = type metadata accessor for ClinicalSharingSyncTask;
  v81 = v159;
  v82 = v134;
  sub_251AE57A8(v159, v134, type metadata accessor for ClinicalSharingSyncTask);
  v132 = *(v128 + 80);
  v83 = (v132 + 16) & ~v132;
  v84 = swift_allocObject();
  v148 = type metadata accessor for ClinicalSharingSyncTask;
  sub_251AE5BE4(v82, v84 + v83, type metadata accessor for ClinicalSharingSyncTask);
  sub_251C70964();
  sub_251AE5AC0(0, &qword_2813E2170);
  sub_251AE5FB4(&qword_2813E1BF8, &qword_2813E1BF0, sub_251AE5E24);
  sub_251AE5F64(&qword_2813E2178, &qword_2813E2170);
  v85 = v137;
  v86 = v136;
  v87 = v157;
  sub_251C70B94();

  (*(v135 + 8))(v87, v86);
  v88 = v133;
  sub_251AE57A8(v81, v82, v133);
  v89 = swift_allocObject();
  sub_251AE5BE4(v82, v89 + v83, v148);
  sub_251AE42C4(&qword_2813E2320, sub_251AE5E58);
  v90 = v139;
  sub_251C70AB4();

  (*(v138 + 8))(v85, v90);
  sub_251AE57A8(v81, v82, v88);
  v91 = swift_allocObject();
  sub_251AE5BE4(v82, v91 + v83, v148);
  sub_251C70964();
  type metadata accessor for ClinicalSharingQueryOutput(0);
  v157 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCD88]);
  sub_251AE42C4(&qword_2813E26B0, sub_251AE6018);
  sub_251AE417C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
  v92 = v140;
  v93 = v144;
  v94 = v158;
  sub_251C70B94();

  (*(v143 + 8))(v94, v93);
  v96 = v155[11];
  v95 = v155[12];
  v97 = sub_251AE2A58(v81 + v95, v81 + v96, v92);
  (*(v141 + 8))(v92, v142);
  v98 = sub_251AE322C(v81 + v95, v81 + v96, v97);

  v99 = sub_251AE39BC(v81 + v95, v81 + v96, v160, v98);

  v161 = v126;
  v162 = v99;
  sub_251AE5338();
  v100 = v150;
  sub_251C710D4();

  v101 = v149;
  v102 = v154;
  sub_251C708E4();
  (*(v152 + 8))(v100, v102);
  sub_251AE548C();
  v103 = v153;
  v104 = sub_251C70A94();
  (*(v151 + 8))(v101, v103);
  v161 = v104;
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, v157);
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  v105 = v145;
  sub_251C70B44();

  sub_251AE63E0(&qword_27F479900, &qword_2813E26F0, MEMORY[0x277CBCB38]);
  v106 = v147;
  v107 = sub_251C70A94();
  (*(v146 + 8))(v105, v106);
  return v107;
}

void sub_251ADF460(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingSyncTask();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v9 = sub_251C70764();
  __swift_project_value_buffer(v9, qword_2813E8130);
  sub_251AE57A8(a2, v7, type metadata accessor for ClinicalSharingSyncTask);

  v10 = sub_251C70744();
  v11 = sub_251C713F4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315394;
    v14 = &v7[*(v4 + 36)];
    v15 = *v14;
    v16 = v14[1];

    sub_251AE5DC4(v7, type metadata accessor for ClinicalSharingSyncTask);
    v17 = sub_251B10780(v15, v16, &v22);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    sub_251C70074();
    sub_251AE42C4(&qword_27F479418, MEMORY[0x277CC95F0]);
    v18 = sub_251C719A4();
    v20 = sub_251B10780(v18, v19, &v22);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v10, v11, "%s will now attempt to update DocumentReference for account %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  else
  {

    sub_251AE5DC4(v7, type metadata accessor for ClinicalSharingSyncTask);
  }
}

uint64_t sub_251ADF710(uint64_t a1, uint64_t a2)
{
  v4 = sub_251C70014();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE5C58();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + *(type metadata accessor for ClinicalSharingSyncTask() + 40));
  sub_251C70004();
  v16 = sub_251C3B940(v8);
  (*(v5 + 8))(v8, v4);
  v19[1] = v16;
  *(swift_allocObject() + 16) = a1;
  sub_251AE591C(0, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, sub_251AE526C);
  sub_251AE463C();
  sub_251AE5D00();

  sub_251C70AE4();

  sub_251AE42C4(&qword_2813E2630, sub_251AE5C58);
  v17 = sub_251C70A94();
  (*(v11 + 8))(v14, v10);
  return v17;
}

uint64_t sub_251ADF9A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a1;
  sub_251AE5884();
  v56 = v7;
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C70014();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask();
  v21 = *(*(v20 - 1) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE5A2C();
  v58 = v24;
  v55 = *(v24 - 8);
  v25 = *(v55 + 64);
  MEMORY[0x28223BE20](v24);
  v52 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE5B38();
  v57 = v27;
  v54 = *(v27 - 8);
  v28 = *(v54 + 64);
  MEMORY[0x28223BE20](v27);
  v51 = &v49 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ClinicalSharingSyncTask();
  sub_251A823B4(v4 + *(v30 + 28), &v60);
  v50 = *(v4 + 8);
  sub_251C70004();
  if (a2 && (v31 = *(a2 + 16), v32 = v31 >= 2, v33 = v31 - 2, v32))
  {
    (*(v16 + 16))(v14, a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v33, v15);
    v34 = 0;
  }

  else
  {
    v34 = 1;
  }

  (*(v16 + 56))(v14, v34, 1, v15);
  (*(v16 + 16))(&v23[v20[10]], a3, v15);
  v35 = *__swift_project_boxed_opaque_existential_1(&v60, v61);
  v36 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v37 = v35;
  v38 = sub_251C70EE4();
  v39 = [v36 initWithCategory:3 domainName:v38 healthStore:v37];

  *&v23[v20[6]] = v39;
  (*(v16 + 32))(&v23[v20[5]], v19, v15);
  v40 = v59;
  *&v23[v20[7]] = v59;
  sub_251AE5BE4(v14, &v23[v20[9]], sub_251ABCCD4);
  *&v23[v20[8]] = v50;
  sub_251A7E8D8(&v60, v23);

  *&v60 = sub_251B18034();
  sub_251AE591C(0, &qword_2813E21F0, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric, sub_251AA98B0);
  sub_251AE59A8();
  sub_251C70AE4();

  sub_251AE42C4(&qword_2813E2668, sub_251AE5884);
  v41 = v56;
  v42 = sub_251C70A94();
  (*(v53 + 8))(v10, v41);
  sub_251AE5DC4(v23, type metadata accessor for ClinicalSharingOperationalAnalyticsSubmissionTask);
  *&v60 = v42;
  sub_251AE5AC0(0, &qword_2813E20D0);
  sub_251AE5F64(&qword_2813E20D8, &qword_2813E20D0);
  v43 = v52;
  sub_251C70B64();

  *(swift_allocObject() + 16) = v40;
  sub_251AE406C(0);
  sub_251AE42C4(&qword_2813E2480, sub_251AE5A2C);

  v44 = v51;
  v45 = v58;
  sub_251C70AE4();

  (*(v55 + 8))(v43, v45);
  sub_251AE42C4(&qword_2813E2540, sub_251AE5B38);
  v46 = v57;
  v47 = sub_251C70A94();
  (*(v54 + 8))(v44, v46);
  return v47;
}

uint64_t sub_251AE0098(uint64_t a1)
{
  v2 = v1;
  sub_251AE55F0();
  v42 = v4;
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE40A0(0, &qword_2813E2088, sub_251AE406C, MEMORY[0x277CBCE78]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v37 - v12;
  sub_251AE7808(0, &qword_2813E1BE0, sub_251AE406C, MEMORY[0x277CBCF38]);
  v38 = v14;
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - v16;
  sub_251AE56FC();
  v41 = v18;
  v43 = *(v18 - 8);
  v19 = *(v43 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  *&v45[0] = a1;
  sub_251AE406C(0);

  sub_251C70A24();
  sub_251AA98B0(0, &qword_2813E1C30);
  sub_251C709F4();
  (*(v10 + 8))(v13, v9);
  v22 = type metadata accessor for ClinicalSharingSyncTask();
  v23 = *(v2 + v22[10]);
  v24 = v22[12];
  v48[3] = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v48[4] = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  sub_251AE57A8(v2 + v24, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  v26 = v22[11];
  sub_251A823B4(v48, v47);
  sub_251AE5810(v2 + v26, v45);
  v27 = swift_allocObject();
  *(v27 + 16) = v23;
  sub_251A7E8D8(v47, v27 + 24);
  v28 = v45[3];
  *(v27 + 96) = v45[2];
  *(v27 + 112) = v28;
  *(v27 + 128) = v45[4];
  *(v27 + 144) = v46;
  v29 = v45[1];
  *(v27 + 64) = v45[0];
  *(v27 + 80) = v29;
  v30 = v23;
  sub_251C70964();
  sub_251AE5AC0(0, &qword_2813E2180);
  sub_251AE5FB4(&qword_2813E1BE8, &qword_2813E1BE0, sub_251AE406C);
  sub_251AE5F64(&qword_2813E2188, &qword_2813E2180);
  v31 = v38;
  sub_251C70B94();

  sub_251AE42C4(&qword_2813E2330, sub_251AE55F0);
  v32 = v42;
  v33 = sub_251C70A94();
  (*(v44 + 8))(v7, v32);
  (*(v40 + 8))(v17, v31);
  __swift_destroy_boxed_opaque_existential_1(v48);
  *&v45[0] = v33;
  *(swift_allocObject() + 16) = v39;
  sub_251AE48D4(0);

  sub_251C70AE4();

  sub_251AE42C4(&qword_2813E2610, sub_251AE56FC);
  v34 = v41;
  v35 = sub_251C70A94();
  (*(v43 + 8))(v21, v34);
  return v35;
}

uint64_t sub_251AE06A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_251AE52B8();
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7098(0, &qword_2813E2248, sub_251AE406C, sub_251AE5338, MEMORY[0x277CBCD10]);
  v13 = *(v12 - 8);
  v34 = v12;
  v35 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  sub_251AE536C();
  v18 = *(v17 - 8);
  v36 = v17;
  v37 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE5528();
  v23 = *(v22 - 8);
  v38 = v22;
  v39 = v23;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  sub_251AE406C(0);
  sub_251AE5338();
  sub_251C710D4();
  sub_251AA98B0(0, &qword_2813E1C30);
  sub_251C708E4();
  (*(v8 + 8))(v11, v7);
  v27 = swift_allocObject();
  *(v27 + 16) = a2;
  *(v27 + 24) = a3;

  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext();
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
  sub_251AE548C();
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  v28 = v34;
  sub_251C70B94();

  (*(v35 + 8))(v16, v28);
  sub_251AE42C4(&qword_2813E2380, sub_251AE536C);
  v29 = v36;
  sub_251C70B64();
  (*(v37 + 8))(v21, v29);
  sub_251AE42C4(&qword_2813E2470, sub_251AE5528);
  v30 = v38;
  v31 = sub_251C70A94();
  (*(v39 + 8))(v26, v30);
  return v31;
}

uint64_t sub_251AE0B50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v43 = sub_251C70074();
  v5 = *(v43 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v43);
  v45 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1 >> 62)
  {
    if (v9 < 0)
    {
      v38 = *a1;
    }

    result = sub_251C717F4();
    v10 = result;
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    goto LABEL_20;
  }

  v66 = MEMORY[0x277D84F90];
  result = sub_251C71764();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v39[0] = a2;
    v39[1] = v2;
    v12 = 0;
    v44 = v9 & 0xC000000000000001;
    v40 = (v5 + 8);
    v41 = (v5 + 16);
    v42 = v10;
    do
    {
      if (v44)
      {
        v23 = MEMORY[0x25308D460](v12, v9);
      }

      else
      {
        v23 = *(v9 + 8 * v12 + 32);
      }

      v24 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
      if (v24)
      {
        v13 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_error);
        swift_getErrorValue();
        v14 = v46;
        v15 = v9;
        v16 = v47;
        v17 = v24;
        v18 = sub_251BC0124(v14, v16);
        v19 = objc_allocWithZone(MEMORY[0x277D12438]);
        v20 = sub_251C70034();
        v21 = sub_251C6FD74();
        [v19 initWithAccountID:v20 error:v21];

        v9 = v15;
        v10 = v42;
      }

      else
      {
        (*v41)(v45, v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v43);
        v25 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 16);
        v62[0] = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode);
        v62[1] = v25;
        v27 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 48);
        v26 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
        v28 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 32);
        v65 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
        v63 = v27;
        v64 = v26;
        v62[2] = v28;
        v29 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 8);
        v30 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 24);
        v61 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 40);
        v59 = v29;
        v60 = v30;
        v31 = *&v62[0];
        v32 = *(&v63 + 1);
        v33 = v63;
        v34 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 64);
        v58 = *(v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_rootNode + 80);
        v57 = v34;
        if (*&v62[0])
        {

          v35 = v32;
        }

        else
        {
          v35 = 0;
        }

        v50 = v59;
        v51 = v60;
        v52 = v61;
        v49 = v31;
        v53 = v33;
        v54 = v32;
        v55 = v57;
        v56 = v58;
        sub_251AD1A50(v62, &v48);
        sub_251AD1AD8(&v49);
        v36 = sub_251C70034();
        if (v35)
        {
          v37 = sub_251C70EE4();
        }

        else
        {
          v37 = 0;
        }

        [objc_allocWithZone(MEMORY[0x277D12438]) initWithAccountID:v36 lookupInfo:v37];

        (*v40)(v45, v43);
      }

      ++v12;
      sub_251C71734();
      v22 = *(v66 + 16);
      sub_251C71774();
      sub_251C71784();
      result = sub_251C71744();
    }

    while (v10 != v12);
    v11 = v66;
    a2 = v39[0];
LABEL_20:
    *a2 = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_251AE0F2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  *a3 = a2;
  a3[1] = v3;
  a3[2] = v4;
}

uint64_t sub_251AE0F78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v12 = v30 - v11;
  v13 = *a1;
  if (*a1 >> 62)
  {
    if (v13 < 0)
    {
      v28 = *a1;
    }

    v29 = *a1;
    result = sub_251C717F4();
    v13 = v29;
    v14 = result;
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (!v14)
  {
    goto LABEL_16;
  }

  v16 = v13;
  v32 = MEMORY[0x277D84F90];
  result = sub_251C0B5E4(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v30[0] = a2;
    v15 = v32;
    v17 = v16;
    if ((v16 & 0xC000000000000001) != 0)
    {
      v18 = 0;
      v30[1] = v5 + 32;
      v31 = (v5 + 16);
      do
      {
        v19 = v17;
        v20 = MEMORY[0x25308D460](v18);
        (*v31)(v12, v20 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v4);
        swift_unknownObjectRelease();
        v32 = v15;
        v22 = *(v15 + 16);
        v21 = *(v15 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_251C0B5E4(v21 > 1, v22 + 1, 1);
          v15 = v32;
        }

        ++v18;
        *(v15 + 16) = v22 + 1;
        result = (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v22, v12, v4);
        v17 = v19;
      }

      while (v14 != v18);
    }

    else
    {
      v23 = (v16 + 32);
      v24 = *(v5 + 16);
      v31 = (v5 + 32);
      do
      {
        v24(v9, *v23 + OBJC_IVAR____TtC19HealthRecordsDaemon26ClinicalSharingSyncContext_accountID, v4);
        v32 = v15;
        v25 = v4;
        v27 = *(v15 + 16);
        v26 = *(v15 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_251C0B5E4(v26 > 1, v27 + 1, 1);
          v15 = v32;
        }

        *(v15 + 16) = v27 + 1;
        result = (*(v5 + 32))(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v27, v9, v25);
        ++v23;
        --v14;
        v4 = v25;
      }

      while (v14);
    }

    a2 = v30[0];
LABEL_16:
    *a2 = v15;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_251AE1278@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = type metadata accessor for ClinicalSharingSyncTask();
  v7 = *__swift_project_boxed_opaque_existential_1((a2 + *(v6 + 28)), *(a2 + *(v6 + 28) + 24));
  sub_251C5D708(v5);

  sub_251AE5AC0(0, &qword_2813E2170);
  sub_251AE5F64(&qword_2813E2178, &qword_2813E2170);
  v8 = sub_251C70A94();

  *a3 = v8;
  return result;
}

void sub_251AE1348(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingSyncTask();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v9 = sub_251C70764();
  __swift_project_value_buffer(v9, qword_2813E8130);
  sub_251AE57A8(a2, v7, type metadata accessor for ClinicalSharingSyncTask);

  v10 = sub_251C70744();
  v11 = sub_251C713F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136315394;
    v14 = &v7[*(v4 + 36)];
    v15 = *v14;
    v16 = v14[1];

    sub_251AE5DC4(v7, type metadata accessor for ClinicalSharingSyncTask);
    v17 = sub_251B10780(v15, v16, &v20);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2048;
    v18 = *(sub_251C5DDD8(v8) + 16);

    *(v12 + 14) = v18;

    _os_log_impl(&dword_251A6C000, v10, v11, "%s %ld authorized sharing identifiers", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  else
  {

    sub_251AE5DC4(v7, type metadata accessor for ClinicalSharingSyncTask);
  }
}

uint64_t sub_251AE1590@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251AA8A58();
  v7 = v6;
  v30 = *(v6 - 8);
  v8 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C701E4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_251C70014();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v21 = type metadata accessor for ClinicalSharingSyncTask();
  v22 = __swift_project_boxed_opaque_existential_1((a2 + *(v21 + 28)), *(a2 + *(v21 + 28) + 24));
  sub_251AA1810((v22 + 3), v32);
  (*(v16 + 16))(v19, a2 + *(v21 + 24), v15);

  sub_251C70184();
  sub_251AA1810(v32, v31);
  v23 = sub_251AA7C78(v20, v31, v14, v19);
  v25 = v24;
  sub_251AE717C(v32);
  result = sub_251BFE2FC(v23, v25);
  v32[0] = result;
  if (v25 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251AA8C10();
    sub_251AE7808(0, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCD88]);
    v29 = a3;
    sub_251AE7148();
    sub_251AE417C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251C70BD4();

    sub_251AE42C4(&qword_27F479200, sub_251AA8A58);
    v27 = sub_251C70A94();
    (*(v30 + 8))(v10, v7);
    v28 = sub_251BFECFC(v27, v23, v25);

    *v29 = v28;
  }

  return result;
}

uint64_t sub_251AE18FC()
{
  v1 = v0;
  sub_251C716A4();

  v21 = type metadata accessor for ClinicalSharingSyncTask();
  sub_251AE1BDC();
  v2 = sub_251C70F74();
  MEMORY[0x25308CDA0](v2);

  MEMORY[0x25308CDA0](45, 0xE100000000000000);
  v3 = v0 + *(v21 + 32);
  sub_251C70024();
  v4 = sub_251AE3EAC(8);
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = MEMORY[0x25308CD40](v4, v6, v8, v10);
  v13 = v12;

  MEMORY[0x25308CDA0](v11, v13);

  MEMORY[0x25308CDA0](0x3A6E6F7361657220, 0xE900000000000020);
  v14 = v1[1];
  if (v14 > 3)
  {
    switch(v14)
    {
      case 4:
        v15 = 0xE700000000000000;
        v16 = 0x676E6974736574;
        goto LABEL_15;
      case 5:
        v15 = 0xEE00646574616974;
        v16 = 0x696E692D72657375;
        goto LABEL_15;
      case 6:
        v15 = 0x8000000251C8A720;
        v16 = 0xD000000000000010;
        goto LABEL_15;
    }

LABEL_12:
    v15 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E75;
    goto LABEL_15;
  }

  if (v14 == 1)
  {
    v15 = 0xED00006E6F697461;
    v16 = 0x7A69726F68747561;
    goto LABEL_15;
  }

  if (v14 == 2)
  {
    v15 = 0xE800000000000000;
    v16 = 0x617461642D77656ELL;
    goto LABEL_15;
  }

  if (v14 != 3)
  {
    goto LABEL_12;
  }

  v15 = 0xEA0000000000646ELL;
  v16 = 0x756F72676B636162;
LABEL_15:
  MEMORY[0x25308CDA0](v16, v15);

  MEMORY[0x25308CDA0](0x6E6F6974706F202CLL, 0xEB00000000203A73);
  v17 = sub_251B24874(&unk_2863F2D70, *v1);
  v19 = v18;
  sub_251AE5DC4(&unk_2863F2D90, sub_251AE3F48);
  MEMORY[0x25308CDA0](v17, v19);

  MEMORY[0x25308CDA0](62, 0xE100000000000000);
  return 60;
}

unint64_t sub_251AE1BDC()
{
  result = qword_2813E4330[0];
  if (!qword_2813E4330[0])
  {
    type metadata accessor for ClinicalSharingSyncTask();
    result = swift_getMetatypeMetadata();
    atomic_store(result, qword_2813E4330);
  }

  return result;
}

uint64_t sub_251AE1C24(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v83 = a5;
  v82 = a4;
  v93 = a3;
  v109 = a2;
  sub_251AE71D0();
  v9 = *(v8 - 8);
  v110 = v8;
  v111 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v108 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AA8D3C();
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7894();
  v87 = v18;
  v88 = *(v18 - 8);
  v19 = *(v88 + 64);
  MEMORY[0x28223BE20](v18);
  v81 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE76FC();
  v90 = v21;
  v92 = *(v21 - 8);
  v22 = *(v92 + 64);
  MEMORY[0x28223BE20](v21);
  v86 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7528();
  v95 = v24;
  v96 = *(v24 - 8);
  v25 = *(v96 + 64);
  MEMORY[0x28223BE20](v24);
  v89 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE747C();
  v98 = v27;
  v99 = *(v27 - 8);
  v28 = *(v99 + 64);
  MEMORY[0x28223BE20](v27);
  v91 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE7370();
  v100 = v30;
  v101 = *(v30 - 8);
  v31 = *(v101 + 64);
  MEMORY[0x28223BE20](v30);
  v94 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE72DC();
  v102 = v33;
  v104 = *(v33 - 8);
  v34 = *(v104 + 64);
  MEMORY[0x28223BE20](v33);
  v97 = &v80 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = MEMORY[0x277CBCCC8];
  sub_251AE7A1C(0, &qword_2813E2488, MEMORY[0x277CBCCC8]);
  v37 = *(v36 - 8);
  v106 = v36;
  v107 = v37;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v103 = &v80 - v39;
  v114[3] = &type metadata for ClinicalSharingAccountStore;
  v114[4] = &off_2863F67B8;
  v114[0] = a1;
  *&v112 = a6;
  swift_getMetatypeMetadata();
  v40 = a1;
  v41 = sub_251C70F74();
  v85 = v41;
  v43 = v42;
  *&v112 = *__swift_project_boxed_opaque_existential_1(v114, &type metadata for ClinicalSharingAccountStore);
  v113 = off_2863F67E8();
  sub_251AE7918(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AA8E98(0, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AE79A4();
  sub_251C70AE4();

  sub_251AE42C4(&qword_2813E25B0, sub_251AA8D3C);
  v44 = sub_251C70A94();
  (*(v14 + 8))(v17, v13);
  *&v112 = v44;
  v45 = swift_allocObject();
  v45[2] = v41;
  v45[3] = v43;
  v84 = v43;
  v46 = v82;
  v47 = v83;
  v45[4] = v82;
  v45[5] = v47;

  sub_251A7E910(v46);
  v48 = v81;
  sub_251C70AB4();

  sub_251A823B4(v114, &v112);
  v49 = swift_allocObject();
  sub_251A7E8D8(&v112, v49 + 16);
  sub_251C70964();
  sub_251AE76C8(0);
  v50 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_2813E20F0, sub_251AE76C8, MEMORY[0x277CBCD88]);
  v83 = MEMORY[0x277CBCB60];
  sub_251AE42C4(&qword_2813E26D8, sub_251AE7894);
  sub_251AE417C(&qword_2813E20F8, &qword_2813E20F0, sub_251AE76C8);
  v51 = v86;
  v52 = v87;
  sub_251C70B94();

  (*(v88 + 8))(v48, v52);
  v53 = swift_allocObject();
  v54 = v93;
  *(v53 + 16) = v93;
  v55 = v54;
  sub_251C70964();
  sub_251AE7634(0);
  sub_251AE7808(0, &qword_2813E2100, sub_251AE7634, v50);
  sub_251AE42C4(&qword_2813E22B0, sub_251AE76FC);
  sub_251AE417C(&qword_2813E2108, &qword_2813E2100, sub_251AE7634);
  v56 = v89;
  v57 = v90;
  sub_251C70B94();

  (*(v92 + 8))(v51, v57);
  sub_251A823B4(v114, &v112);
  v58 = swift_allocObject();
  sub_251A7E8D8(&v112, v58 + 16);
  v59 = swift_allocObject();
  *(v59 + 16) = sub_251AE7AF4;
  *(v59 + 24) = v58;
  sub_251AE406C(0);
  sub_251AE42C4(&qword_2813E22C0, sub_251AE7528);
  v60 = v91;
  v61 = v95;
  sub_251C70B54();

  (*(v96 + 8))(v56, v61);
  sub_251C70964();
  type metadata accessor for ClinicalSharingSyncContext();
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, v50);
  sub_251AE42C4(&qword_2813E24A0, sub_251AE747C);
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  v62 = v94;
  v63 = v98;
  sub_251C70B94();
  (*(v99 + 8))(v60, v63);
  v64 = swift_allocObject();
  v65 = v84;
  *(v64 + 16) = v85;
  *(v64 + 24) = v65;
  sub_251AE42C4(&qword_2813E23B0, sub_251AE7370);
  v66 = v100;
  v67 = v97;
  sub_251C70AB4();

  (*(v101 + 8))(v62, v66);
  v68 = swift_allocObject();
  v69 = v109;
  *(v68 + 16) = v109;
  v70 = v69;
  sub_251C70964();
  sub_251AE42C4(&qword_2813E26C0, sub_251AE72DC);
  v71 = v108;
  v72 = v102;
  v73 = v67;
  sub_251C70B94();

  sub_251AE42C4(&qword_2813E23A0, sub_251AE71D0);
  v74 = v110;
  v75 = sub_251C70A94();
  (*(v111 + 8))(v71, v74);
  (*(v104 + 8))(v73, v72);
  *&v112 = v75;
  v76 = v103;
  sub_251C70B64();

  sub_251AE4438(&qword_2813E2490, &qword_2813E2488, v105);
  v77 = v106;
  v78 = sub_251C70A94();
  (*(v107 + 8))(v76, v77);
  __swift_destroy_boxed_opaque_existential_1(v114);
  return v78;
}

uint64_t sub_251AE2A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v45 = a2;
  sub_251AE6C64();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6894(0, &qword_27F4799F8, &qword_27F479A00, sub_251AE6D10, &qword_27F479A08);
  v50 = v11;
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - v13;
  sub_251AE6D44();
  v52 = v15;
  v53 = *(v15 - 8);
  v16 = *(v53 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6ED0();
  v54 = v19;
  v56 = *(v19 - 8);
  v20 = *(v56 + 64);
  MEMORY[0x28223BE20](v19);
  v48 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6F64();
  v55 = v22;
  v57 = *(v22 - 8);
  v23 = *(v57 + 64);
  MEMORY[0x28223BE20](v22);
  v49 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v66 = v25;
  v67 = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
  sub_251AE57A8(a1, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  sub_251AE5810(a2, &v59);
  v27 = swift_allocObject();
  v28 = v62;
  *(v27 + 48) = v61;
  *(v27 + 64) = v28;
  *(v27 + 80) = v63;
  *(v27 + 96) = v64;
  v29 = v60;
  *(v27 + 16) = v59;
  *(v27 + 32) = v29;
  sub_251AE60AC();
  sub_251AE6D10(0);
  v46 = MEMORY[0x277CBCCE0];
  sub_251AE42C4(&qword_27F4799F0, sub_251AE60AC);
  sub_251C70B54();

  sub_251AE42C4(&qword_27F479A40, sub_251AE6C64);
  v30 = sub_251C70A94();
  (*(v7 + 8))(v10, v6);
  *&v59 = v30;
  v31 = *(__swift_project_boxed_opaque_existential_1(v65, v66) + *(v25 + 28));
  v32 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_27F479A00, sub_251AE6D10, MEMORY[0x277CBCD88]);
  sub_251AE417C(&qword_27F479A08, &qword_27F479A00, sub_251AE6D10);
  sub_251C70B74();

  sub_251A823B4(v65, v58);
  sub_251AE5810(v45, &v59);
  v33 = swift_allocObject();
  sub_251A7E8D8(v58, v33 + 16);
  v34 = v62;
  *(v33 + 88) = v61;
  *(v33 + 104) = v34;
  *(v33 + 120) = v63;
  *(v33 + 136) = v64;
  v35 = v60;
  *(v33 + 56) = v59;
  *(v33 + 72) = v35;
  sub_251C70964();
  sub_251ABA5A0();
  sub_251AE7808(0, &qword_27F479970, sub_251ABA5A0, v32);
  sub_251AE6E4C();
  sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
  v36 = v50;
  sub_251C70B94();

  (*(v51 + 8))(v14, v36);
  sub_251AE42C4(&qword_27F479A28, sub_251AE6D44);
  v37 = v48;
  v38 = v52;
  sub_251C70B64();
  (*(v53 + 8))(v18, v38);
  sub_251C70964();
  sub_251AE42C4(&qword_27F479A38, sub_251AE6ED0);
  v39 = v49;
  v40 = v54;
  sub_251C70B94();
  (*(v56 + 8))(v37, v40);
  sub_251AE42C4(&qword_27F479A48, sub_251AE6F64);
  v41 = v55;
  v42 = sub_251C70A94();
  (*(v57 + 8))(v39, v41);
  __swift_destroy_boxed_opaque_existential_1(v65);
  return v42;
}

uint64_t sub_251AE322C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a2;
  sub_251AE6718();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6894(0, &qword_27F479988, &qword_27F479990, sub_251AE67E4, &qword_27F479998);
  v47 = v11;
  v48 = *(v11 - 8);
  v12 = *(v48 + 64);
  MEMORY[0x28223BE20](v11);
  v42 = &v41 - v13;
  sub_251AE6934();
  v49 = v14;
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x28223BE20](v14);
  v43 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6AC0();
  v51 = v17;
  v52 = *(v17 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v17);
  v45 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE6B54();
  v53 = v20;
  v54 = *(v20 - 8);
  v21 = *(v54 + 64);
  MEMORY[0x28223BE20](v20);
  v46 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v59 = v23;
  v60 = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  sub_251AE57A8(a1, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  *&v55[0] = a3;
  v25 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_27F479970, sub_251ABA5A0, MEMORY[0x277CBCD88]);
  sub_251AE67E4(0);
  sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
  sub_251C70B54();
  sub_251AE42C4(&qword_27F4799D0, sub_251AE6718);
  v26 = sub_251C70A94();
  (*(v7 + 8))(v10, v6);
  *&v55[0] = v26;
  v27 = *(__swift_project_boxed_opaque_existential_1(v58, v59) + *(v23 + 28));
  sub_251AE7808(0, &qword_27F479990, sub_251AE67E4, v25);
  sub_251AE417C(&qword_27F479998, &qword_27F479990, sub_251AE67E4);
  v28 = v42;
  sub_251C70B74();

  sub_251A823B4(v58, v57);
  sub_251AE5810(v44, v55);
  v29 = swift_allocObject();
  sub_251A7E8D8(v57, v29 + 16);
  v30 = v55[3];
  *(v29 + 88) = v55[2];
  *(v29 + 104) = v30;
  *(v29 + 120) = v55[4];
  *(v29 + 136) = v56;
  v31 = v55[1];
  *(v29 + 56) = v55[0];
  *(v29 + 72) = v31;
  sub_251C70964();
  sub_251AE64F0(0);
  sub_251AE7808(0, &qword_27F479910, sub_251AE64F0, v25);
  sub_251AE6A3C();
  sub_251AE417C(&qword_27F479938, &qword_27F479910, sub_251AE64F0);
  v32 = v43;
  v33 = v47;
  sub_251C70B94();

  (*(v48 + 8))(v28, v33);
  sub_251AE42C4(&qword_27F4799B8, sub_251AE6934);
  v34 = v45;
  v35 = v49;
  sub_251C70B64();
  (*(v50 + 8))(v32, v35);
  sub_251AE42C4(&qword_27F4799C8, sub_251AE6AC0);
  v36 = v46;
  v37 = v51;
  sub_251C70AE4();
  (*(v52 + 8))(v34, v37);
  sub_251AE42C4(&qword_27F4799D8, sub_251AE6B54);
  v38 = v53;
  v39 = sub_251C70A94();
  (*(v54 + 8))(v36, v38);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return v39;
}

uint64_t sub_251AE39BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  sub_251AE6424();
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE65E0();
  v33 = v14;
  v34 = *(v14 - 8);
  v15 = *(v34 + 64);
  MEMORY[0x28223BE20](v14);
  v32 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43[3] = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v43[4] = &off_2863F7EA0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
  sub_251AE57A8(a1, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
  *&v35[0] = a4;
  sub_251AE5810(a2, &v37);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  v19 = v40;
  *(v18 + 56) = v39;
  *(v18 + 72) = v19;
  *(v18 + 88) = v41;
  *(v18 + 104) = v42;
  v20 = v38;
  *(v18 + 24) = v37;
  *(v18 + 40) = v20;
  v21 = MEMORY[0x277CBCD88];
  sub_251AE7808(0, &qword_27F479910, sub_251AE64F0, MEMORY[0x277CBCD88]);
  sub_251AE6524();
  sub_251AE417C(&qword_27F479938, &qword_27F479910, sub_251AE64F0);

  sub_251C70AE4();

  sub_251AE42C4(&qword_27F479958, sub_251AE6424);
  v22 = sub_251C70A94();
  (*(v10 + 8))(v13, v9);
  v36 = v22;
  sub_251A823B4(v43, v35);
  sub_251AE5810(v31, &v37);
  v23 = swift_allocObject();
  sub_251A7E8D8(v35, v23 + 16);
  v24 = v40;
  *(v23 + 88) = v39;
  *(v23 + 104) = v24;
  *(v23 + 120) = v41;
  *(v23 + 136) = v42;
  v25 = v38;
  *(v23 + 56) = v37;
  *(v23 + 72) = v25;
  sub_251C70964();
  sub_251AE7808(0, &qword_27F479948, sub_251AE6524, v21);
  type metadata accessor for ClinicalSharingSyncContext();
  sub_251AE7808(0, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, v21);
  sub_251AE417C(&qword_27F479950, &qword_27F479948, sub_251AE6524);
  sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
  v26 = v32;
  sub_251C70B94();

  sub_251AE42C4(&qword_27F479960, sub_251AE65E0);
  v27 = v33;
  v28 = sub_251C70A94();
  (*(v34 + 8))(v26, v27);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v28;
}

uint64_t sub_251AE3EAC(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_251C70FD4();

    return sub_251C710A4();
  }

  return result;
}

void sub_251AE3F70()
{
  if (!qword_2813E2298)
  {
    sub_251AE7918(255, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
    sub_251AE7808(255, &qword_2813E2130, sub_251AE406C, MEMORY[0x277CBCD88]);
    sub_251AE4104();
    sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2298);
    }
  }
}

void sub_251AE40A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251AE4104()
{
  result = qword_2813E20E8;
  if (!qword_2813E20E8)
  {
    sub_251AE7918(255, &qword_2813E20E0, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E20E8);
  }

  return result;
}

uint64_t sub_251AE417C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AE7808(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AE41E0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_251C70014() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_251ADCEE8(a1, v2 + v6, v9, a2);
}

uint64_t sub_251AE42C4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AE430C()
{
  if (!qword_2813E2388)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    v0 = MEMORY[0x277CBCB58];
    sub_251AE7A1C(255, &qword_2813E26E0, MEMORY[0x277CBCB58]);
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE4438(&qword_2813E26E8, &qword_2813E26E0, v0);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2388);
    }
  }
}

uint64_t sub_251AE4438(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AE7A1C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AE447C()
{
  if (!qword_2813E2458)
  {
    v0 = MEMORY[0x277CBCCD8];
    sub_251AE61B8(255, &qword_2813E2368, MEMORY[0x277CBCCD8]);
    sub_251AE63E0(&qword_2813E2370, &qword_2813E2368, v0);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2458);
    }
  }
}

void sub_251AE4530()
{
  if (!qword_2813E22E8)
  {
    sub_251AE7808(255, &qword_2813E2140, sub_251AE463C, MEMORY[0x277CBCD88]);
    sub_251AE447C();
    sub_251AE417C(&qword_2813E2148, &qword_2813E2140, sub_251AE463C);
    sub_251AE42C4(&qword_2813E2460, sub_251AE447C);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E22E8);
    }
  }
}

void sub_251AE463C()
{
  if (!qword_2813E1E88)
  {
    sub_251AE406C(255);
    sub_251AE526C(255, &qword_2813E37D0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1E88);
    }
  }
}

void sub_251AE46BC()
{
  if (!qword_2813E22C8)
  {
    sub_251AE7808(255, &qword_2813E2130, sub_251AE406C, MEMORY[0x277CBCD88]);
    sub_251AE4530();
    sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
    sub_251AE42C4(&qword_2813E22F0, sub_251AE4530);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E22C8);
    }
  }
}

void sub_251AE47C8()
{
  if (!qword_2813E22F8)
  {
    sub_251AE7808(255, &qword_2813E2150, sub_251AE48D4, MEMORY[0x277CBCD88]);
    sub_251AE46BC();
    sub_251AE417C(&qword_2813E2158, &qword_2813E2150, sub_251AE48D4);
    sub_251AE42C4(&qword_2813E22D0, sub_251AE46BC);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E22F8);
    }
  }
}

void sub_251AE48FC()
{
  if (!qword_2813E22D8)
  {
    sub_251AE7808(255, &qword_2813E2130, sub_251AE406C, MEMORY[0x277CBCD88]);
    sub_251AE47C8();
    sub_251AE417C(&qword_2813E2138, &qword_2813E2130, sub_251AE406C);
    sub_251AE42C4(&qword_2813E2300, sub_251AE47C8);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E22D8);
    }
  }
}

void sub_251AE4A08()
{
  if (!qword_2813E24A8)
  {
    sub_251AE48FC();
    sub_251AA8E98(255, &qword_2813E1E08, &qword_2813E1D38, 0x277D12438);
    sub_251AE42C4(&qword_2813E22E0, sub_251AE48FC);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E24A8);
    }
  }
}

uint64_t sub_251AE4AF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for ClinicalSharingSyncTask();
  v2 = (v1 - 8);
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v24 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 24);
  v6 = sub_251C70014();
  (*(*(v6 - 8) + 8))(v0 + v4 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + v4 + v2[9]));
  v7 = v2[10];
  v8 = sub_251C70074();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = *(v0 + v4 + v2[11] + 8);

  v10 = (v0 + v4 + v2[13]);
  v11 = v10[1];

  v12 = v10[3];

  v13 = v10[4];

  __swift_destroy_boxed_opaque_existential_1(v10 + 6);
  v14 = v0 + v4 + v2[14];
  v15 = sub_251C6FE64();
  v16 = *(*(v15 - 8) + 8);
  v16(v14, v15);
  v17 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v16(v14 + v17[5], v15);

  v18 = *(v14 + v17[8] + 8);

  v19 = *(v14 + v17[9] + 8);

  v20 = *(v0 + v4 + v2[16]);

  v21 = (v0 + v4 + v2[17]);
  if (*v21)
  {
    v22 = v21[1];
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v24, v3 | 7);
}

uint64_t sub_251AE4D74(uint64_t a1)
{
  v3 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_251ADF710(a1, v4);
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for ClinicalSharingSyncTask() - 8);
  v28 = *(*v1 + 80);
  v26 = *(*v1 + 64);
  v2 = sub_251C70014();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v24 = *(v3 + 64);
  v25 = *(v3 + 8);
  v29 = v0;
  v27 = (v28 + 16) & ~v28;
  v5 = v0 + v27;
  v25(v0 + v27 + v1[8], v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + v27 + v1[9]));
  v6 = v1[10];
  v7 = sub_251C70074();
  (*(*(v7 - 8) + 8))(v0 + v27 + v6, v7);
  v8 = *(v0 + v27 + v1[11] + 8);

  v9 = (v0 + v27 + v1[13]);
  v10 = v9[1];

  v11 = v9[3];

  v12 = v9[4];

  __swift_destroy_boxed_opaque_existential_1(v9 + 6);
  v13 = v0 + v27 + v1[14];
  v14 = sub_251C6FE64();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  v16 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v15(v13 + v16[5], v14);

  v17 = *(v13 + v16[8] + 8);

  v18 = *(v13 + v16[9] + 8);

  v19 = *(v5 + v1[16]);

  v20 = (v5 + v1[17]);
  if (*v20)
  {
    v21 = v20[1];
  }

  v22 = (v27 + v26 + v4) & ~v4;
  v25(v29 + v22, v2);

  return MEMORY[0x2821FE8E8](v29, v22 + v24, v28 | v4 | 7);
}

uint64_t sub_251AE5084@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_251C70014() - 8);
  result = sub_251ADF9A0(*a1, a1[1], v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80)));
  *a2 = result;
  return result;
}

uint64_t sub_251AE515C(uint64_t a1)
{
  v3 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_251AE0098(a1);
}

uint64_t sub_251AE51C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_251AE51F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  result = sub_251AE06A0(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

void sub_251AE526C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_251C71574();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_251AE52B8()
{
  if (!qword_2813E2240)
  {
    sub_251AE406C(255);
    sub_251AE5338();
    v0 = sub_251C70904();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2240);
    }
  }
}

void sub_251AE536C()
{
  if (!qword_2813E2378)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    sub_251AE7098(255, &qword_2813E2248, sub_251AE406C, sub_251AE5338, MEMORY[0x277CBCD10]);
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE548C();
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2378);
    }
  }
}

unint64_t sub_251AE548C()
{
  result = qword_2813E2250;
  if (!qword_2813E2250)
  {
    sub_251AE7098(255, &qword_2813E2248, sub_251AE406C, sub_251AE5338, MEMORY[0x277CBCD10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2250);
  }

  return result;
}

void sub_251AE5528()
{
  if (!qword_2813E2468)
  {
    sub_251AE536C();
    sub_251AE42C4(&qword_2813E2380, sub_251AE536C);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2468);
    }
  }
}

uint64_t sub_251AE55BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = sub_251B2835C(v4);
  *a2 = result;
  return result;
}

void sub_251AE55F0()
{
  if (!qword_2813E2328)
  {
    sub_251AE5AC0(255, &qword_2813E2180);
    sub_251AE7808(255, &qword_2813E1BE0, sub_251AE406C, MEMORY[0x277CBCF38]);
    sub_251AE5F64(&qword_2813E2188, &qword_2813E2180);
    sub_251AE5FB4(&qword_2813E1BE8, &qword_2813E1BE0, sub_251AE406C);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2328);
    }
  }
}

void sub_251AE56FC()
{
  if (!qword_2813E2608)
  {
    sub_251AE5AC0(255, &qword_2813E2180);
    sub_251AE48D4(255);
    sub_251AE5F64(&qword_2813E2188, &qword_2813E2180);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2608);
    }
  }
}

uint64_t sub_251AE57A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_251AE5884()
{
  if (!qword_2813E2660)
  {
    sub_251AE591C(255, &qword_2813E21F0, &unk_2813E46A0, &protocol descriptor for ClinicalSharingMetric, sub_251AA98B0);
    sub_251AE59A8();
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2660);
    }
  }
}

void sub_251AE591C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_251AA98B0(255, &qword_2813E1C30);
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251AE59A8()
{
  result = qword_2813E2200;
  if (!qword_2813E2200)
  {
    sub_251AE591C(255, &qword_2813E21F0, &unk_2813E46A0, &protocol descriptor for ClinicalSharingMetric, sub_251AA98B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2200);
  }

  return result;
}

void sub_251AE5A2C()
{
  if (!qword_2813E2478)
  {
    sub_251AE5AC0(255, &qword_2813E20D0);
    sub_251AE5F64(&qword_2813E20D8, &qword_2813E20D0);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2478);
    }
  }
}

void sub_251AE5AC0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_251AA98B0(255, &qword_2813E1C30);
    v3 = sub_251C70974();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_251AE5B38()
{
  if (!qword_2813E2538)
  {
    sub_251AE5A2C();
    sub_251AE406C(255);
    sub_251AE42C4(&qword_2813E2480, sub_251AE5A2C);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2538);
    }
  }
}

uint64_t sub_251AE5BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AE5C58()
{
  if (!qword_2813E2628)
  {
    sub_251AE591C(255, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, sub_251AE526C);
    sub_251AE463C();
    sub_251AE5D00();
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2628);
    }
  }
}

unint64_t sub_251AE5D00()
{
  result = qword_2813E21A8;
  if (!qword_2813E21A8)
  {
    sub_251AE591C(255, &qword_2813E21A0, &qword_2813E37D0, &type metadata for ClinicalSharingSyncHistory, sub_251AE526C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E21A8);
  }

  return result;
}

uint64_t sub_251AE5D84@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  *a2 = *(v2 + 16);
  a2[1] = v3;
}

uint64_t sub_251AE5DC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251AE5E58()
{
  if (!qword_2813E2318)
  {
    sub_251AE5AC0(255, &qword_2813E2170);
    sub_251AE7808(255, &qword_2813E1BF0, sub_251AE5E24, MEMORY[0x277CBCF38]);
    sub_251AE5F64(&qword_2813E2178, &qword_2813E2170);
    sub_251AE5FB4(&qword_2813E1BF8, &qword_2813E1BF0, sub_251AE5E24);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2318);
    }
  }
}

uint64_t sub_251AE5F64(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_251AE5AC0(255, a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AE5FB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AE7808(255, a2, a3, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AE6018()
{
  if (!qword_2813E26A8)
  {
    sub_251AE5E58();
    sub_251AE42C4(&qword_2813E2320, sub_251AE5E58);
    v0 = sub_251C707A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E26A8);
    }
  }
}

void sub_251AE60AC()
{
  if (!qword_2813E23B8)
  {
    sub_251AE7808(255, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCD88]);
    sub_251AE6018();
    sub_251AE417C(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251AE42C4(&qword_2813E26B0, sub_251AE6018);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E23B8);
    }
  }
}

void sub_251AE61B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    v9[0] = v6;
    v9[1] = v6;
    v10 = sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    v11 = v10;
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_251AE62B0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_251AE634C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClinicalSharingSyncTask() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_251AE63E0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_251AE61B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AE6424()
{
  if (!qword_27F479908)
  {
    sub_251AE7808(255, &qword_27F479910, sub_251AE64F0, MEMORY[0x277CBCD88]);
    sub_251AE6524();
    sub_251AE417C(&qword_27F479938, &qword_27F479910, sub_251AE64F0);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479908);
    }
  }
}

void sub_251AE6524()
{
  if (!qword_27F479920)
  {
    sub_251AE6818(255, &qword_27F479928, sub_251AE65AC, type metadata accessor for ClinicalSharingSyncContext);
    v0 = sub_251C711A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479920);
    }
  }
}

void sub_251AE65E0()
{
  if (!qword_27F479940)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    sub_251AE7808(255, &qword_27F479948, sub_251AE6524, v0);
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE417C(&qword_27F479950, &qword_27F479948, sub_251AE6524);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479940);
    }
  }
}

void sub_251AE6718()
{
  if (!qword_27F479968)
  {
    sub_251AE7808(255, &qword_27F479970, sub_251ABA5A0, MEMORY[0x277CBCD88]);
    sub_251AE67E4(255);
    sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479968);
    }
  }
}

void sub_251AE6818(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_251AE6894(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), unint64_t *a5)
{
  if (!*a2)
  {
    sub_251AE7808(255, a3, a4, MEMORY[0x277CBCD88]);
    sub_251AE417C(a5, a3, a4);
    v9 = sub_251C707D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251AE6934()
{
  if (!qword_27F4799A0)
  {
    sub_251AE7808(255, &qword_27F479910, sub_251AE64F0, MEMORY[0x277CBCD88]);
    sub_251AE6894(255, &qword_27F479988, &qword_27F479990, sub_251AE67E4, &qword_27F479998);
    sub_251AE417C(&qword_27F479938, &qword_27F479910, sub_251AE64F0);
    sub_251AE6A3C();
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4799A0);
    }
  }
}

unint64_t sub_251AE6A3C()
{
  result = qword_27F4799A8;
  if (!qword_27F4799A8)
  {
    sub_251AE6894(255, &qword_27F479988, &qword_27F479990, sub_251AE67E4, &qword_27F479998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4799A8);
  }

  return result;
}

void sub_251AE6AC0()
{
  if (!qword_27F4799B0)
  {
    sub_251AE6934();
    sub_251AE42C4(&qword_27F4799B8, sub_251AE6934);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4799B0);
    }
  }
}

void sub_251AE6B54()
{
  if (!qword_27F4799C0)
  {
    sub_251AE6AC0();
    sub_251AE64F0(255);
    sub_251AE42C4(&qword_27F4799C8, sub_251AE6AC0);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4799C0);
    }
  }
}

uint64_t objectdestroy_57Tm()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[8];

  v2 = v0[10];

  v3 = v0[11];

  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

void sub_251AE6C64()
{
  if (!qword_27F4799E0)
  {
    sub_251AE60AC();
    sub_251AE6D10(255);
    sub_251AE42C4(&qword_27F4799F0, sub_251AE60AC);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4799E0);
    }
  }
}

void sub_251AE6D44()
{
  if (!qword_27F479A10)
  {
    sub_251AE7808(255, &qword_27F479970, sub_251ABA5A0, MEMORY[0x277CBCD88]);
    sub_251AE6894(255, &qword_27F4799F8, &qword_27F479A00, sub_251AE6D10, &qword_27F479A08);
    sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
    sub_251AE6E4C();
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479A10);
    }
  }
}

unint64_t sub_251AE6E4C()
{
  result = qword_27F479A18;
  if (!qword_27F479A18)
  {
    sub_251AE6894(255, &qword_27F4799F8, &qword_27F479A00, sub_251AE6D10, &qword_27F479A08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479A18);
  }

  return result;
}

void sub_251AE6ED0()
{
  if (!qword_27F479A20)
  {
    sub_251AE6D44();
    sub_251AE42C4(&qword_27F479A28, sub_251AE6D44);
    v0 = sub_251C708C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479A20);
    }
  }
}

void sub_251AE6F64()
{
  if (!qword_27F479A30)
  {
    sub_251AE7808(255, &qword_27F479970, sub_251ABA5A0, MEMORY[0x277CBCD88]);
    sub_251AE6ED0();
    sub_251AE417C(&qword_27F479980, &qword_27F479970, sub_251ABA5A0);
    sub_251AE42C4(&qword_27F479A38, sub_251AE6ED0);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479A30);
    }
  }
}

void sub_251AE7098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = a3(255);
    v11[1] = sub_251AA98B0(255, &qword_2813E1C30);
    v11[2] = a4();
    v11[3] = MEMORY[0x277D84950];
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251AE71D0()
{
  if (!qword_2813E2398)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    sub_251AE72DC();
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE42C4(&qword_2813E26C0, sub_251AE72DC);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2398);
    }
  }
}

void sub_251AE72DC()
{
  if (!qword_2813E26B8)
  {
    sub_251AE7370();
    sub_251AE42C4(&qword_2813E23B0, sub_251AE7370);
    v0 = sub_251C707A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E26B8);
    }
  }
}

void sub_251AE7370()
{
  if (!qword_2813E23A8)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    sub_251AE747C();
    sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    sub_251AE42C4(&qword_2813E24A0, sub_251AE747C);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E23A8);
    }
  }
}

void sub_251AE747C()
{
  if (!qword_2813E2498)
  {
    sub_251AE7528();
    sub_251AE406C(255);
    sub_251AE42C4(&qword_2813E22C0, sub_251AE7528);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2498);
    }
  }
}

void sub_251AE7528()
{
  if (!qword_2813E22B8)
  {
    sub_251AE7808(255, &qword_2813E2100, sub_251AE7634, MEMORY[0x277CBCD88]);
    sub_251AE76FC();
    sub_251AE417C(&qword_2813E2108, &qword_2813E2100, sub_251AE7634);
    sub_251AE42C4(&qword_2813E22B0, sub_251AE76FC);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E22B8);
    }
  }
}

void sub_251AE765C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_251AE76FC()
{
  if (!qword_2813E22A8)
  {
    sub_251AE7808(255, &qword_2813E20F0, sub_251AE76C8, MEMORY[0x277CBCD88]);
    sub_251AE7894();
    sub_251AE417C(&qword_2813E20F8, &qword_2813E20F0, sub_251AE76C8);
    sub_251AE42C4(&qword_2813E26D8, sub_251AE7894);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E22A8);
    }
  }
}

void sub_251AE7808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251AA98B0(255, &qword_2813E1C30);
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251AE7894()
{
  if (!qword_2813E26D0)
  {
    sub_251AE7918(255, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AE79A4();
    v0 = sub_251C707A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E26D0);
    }
  }
}

void sub_251AE7918(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_251AA8E98(255, a3, a4, a5);
    sub_251AA98B0(255, &qword_2813E1C30);
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251AE79A4()
{
  result = qword_2813E2118;
  if (!qword_2813E2118)
  {
    sub_251AE7918(255, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2118);
  }

  return result;
}

void sub_251AE7A1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_251AE7808(255, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext, MEMORY[0x277CBCD88]);
    v7 = v6;
    v8 = sub_251AE417C(&qword_2813E21B8, &qword_2813E21B0, type metadata accessor for ClinicalSharingSyncContext);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251AE7B10@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(*a1, a1[1], a1[2]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t WebResponse.data.getter()
{
  v1 = *v0;
  sub_251A85E50(*v0, *(v0 + 8));
  return v1;
}

void *WebResponse.response.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t WebResponse.init(data:response:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_251AE7BE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_251AE7C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_251AE7CA4@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v38 = a4;
  v37 = a3;
  v45 = a5;
  sub_251AE9D54();
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AE9EA4();
  v43 = v13;
  v41 = *(v13 - 8);
  v14 = *(v41 + 64);
  MEMORY[0x28223BE20](v13);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA05C(0);
  v44 = v16;
  v42 = *(v16 - 8);
  v17 = *(v42 + 64);
  MEMORY[0x28223BE20](v16);
  v40 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);

  v21 = sub_251C70744();
  v22 = sub_251C713C4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    if (v19 >> 62)
    {
      v24 = sub_251C717F4();
    }

    else
    {
      v24 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v23 + 4) = v24;

    _os_log_impl(&dword_251A6C000, v21, v22, "Updating ClinicalSharingGraphMetadata. No of Accounts: %ld", v23, 0xCu);
    MEMORY[0x25308E2B0](v23, -1, -1);
  }

  else
  {
  }

  *&v46[0] = sub_251C71444();
  sub_251AE9F44(0, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
  sub_251AEA7F4(0, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277D83D88]);
  sub_251AE9E20();
  sub_251C70AE4();

  sub_251AEA1F8(&qword_2813E2570, sub_251AE9D54);
  v25 = sub_251C70A94();
  (*(v9 + 8))(v12, v8);
  *&v46[0] = v25;
  *(swift_allocObject() + 16) = v19;
  sub_251AE9F44(0, &qword_2813E2190, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
  sub_251AE9FD8();

  v26 = v39;
  sub_251C70AE4();

  sub_251A823B4(v37, v48);
  sub_251AE5810(v38, v46);
  v27 = swift_allocObject();
  sub_251A7E8D8(v48, v27 + 16);
  v28 = v46[3];
  *(v27 + 88) = v46[2];
  *(v27 + 104) = v28;
  *(v27 + 120) = v46[4];
  v29 = v47;
  v30 = v46[1];
  *(v27 + 56) = v46[0];
  *(v27 + 72) = v30;
  *(v27 + 136) = v29;
  *(v27 + 144) = a2;
  v31 = a2;
  sub_251C70964();
  sub_251AEACC8(0, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
  sub_251AEA1F8(&qword_2813E2620, sub_251AE9EA4);
  sub_251AEA17C();
  v32 = v40;
  v33 = v43;
  sub_251C70B94();

  (*(v41 + 8))(v26, v33);
  sub_251AEA1F8(&qword_2813E2350, sub_251AEA05C);
  v34 = v44;
  v35 = sub_251C70A94();
  result = (*(v42 + 8))(v32, v34);
  *v45 = v35;
  return result;
}

uint64_t sub_251AE832C@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1)
  {
    result = sub_251AD03C0(a2, *a1, a1[1]);
  }

  else
  {

    result = sub_251AD1B58(v6);
  }

  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_251AE8378@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v32 = a4;
  v36 = a5;
  sub_251AEA258(0);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA294();
  v33 = v13;
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v20 = sub_251AD0038(v19, v18);
  v21 = sub_251AE8754(v20, a3);

  v37 = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = v19;
  *(v22 + 24) = v18;
  v23 = MEMORY[0x277CBCD88];
  sub_251AEAA34(0, &qword_2813E2120, MEMORY[0x277CBCD88]);
  sub_251AEAB50(&qword_2813E2128, &qword_2813E2120, v23);

  sub_251C70AE4();

  v24 = swift_allocObject();
  v25 = v32;
  *(v24 + 16) = v32;
  v26 = v25;
  sub_251C70964();
  sub_251AEACC8(0, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
  sub_251AEA1F8(&qword_2813E25D0, sub_251AEA294);
  sub_251AEA17C();
  v27 = v33;
  sub_251C70B94();

  sub_251AEA1F8(&qword_2813E2340, sub_251AEA258);
  v28 = v34;
  v29 = sub_251C70A94();
  (*(v35 + 8))(v12, v28);
  (*(v14 + 8))(v17, v27);
  v37 = v29;
  v30 = sub_251C70A94();

  *v36 = v30;
  return result;
}

uint64_t sub_251AE8754(uint64_t a1, uint64_t a2)
{
  v62 = a2;
  sub_251AEA360();
  v78 = v3;
  v76 = *(v3 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v73 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA684();
  v79 = v6;
  v77 = *(v6 - 8);
  v7 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v74 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA9C8(0, &qword_2813E2080, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata);
  v10 = v9;
  v61 = *(v9 - 8);
  v11 = *(v61 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v60 - v12;
  sub_251AEA518(0, &qword_2813E1C10, sub_251AEA594, MEMORY[0x277CBCF38]);
  v64 = v14;
  v63 = *(v14 - 8);
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v60 - v16;
  sub_251AEA40C();
  v67 = v18;
  v66 = *(v18 - 8);
  v19 = *(v66 + 64);
  MEMORY[0x28223BE20](v18);
  v80 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA844();
  v72 = v21;
  v70 = *(v21 - 8);
  v22 = *(v70 + 64);
  MEMORY[0x28223BE20](v21);
  v68 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA934();
  v75 = v24;
  v71 = *(v24 - 8);
  v25 = *(v71 + 64);
  MEMORY[0x28223BE20](v24);
  v69 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AEA9C8(0, &qword_2813E2078, &qword_2813E1E48, MEMORY[0x277D837D0]);
  v28 = v27;
  v29 = *(v27 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  v32 = &v60 - v31;
  sub_251AEAA34(0, &qword_2813E1BD0, MEMORY[0x277CBCF38]);
  v34 = v33;
  v35 = *(v33 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v38 = &v60 - v37;
  if (*(a1 + 16))
  {
    *&v82 = a1;
    v60 = MEMORY[0x277D83940];
    sub_251AEA7F4(0, &qword_2813E1E80, &type metadata for ClinicalSharingNodeMetadata, MEMORY[0x277D83940]);

    sub_251C70A24();
    sub_251AEA594();
    sub_251C70A04();
    (*(v61 + 8))(v13, v10);
    sub_251AE5810(v62, &v82);
    v39 = swift_allocObject();
    v40 = v85;
    *(v39 + 48) = v84;
    *(v39 + 64) = v40;
    *(v39 + 80) = v86;
    *(v39 + 96) = v87;
    v41 = v83;
    *(v39 + 16) = v82;
    *(v39 + 32) = v41;
    v42 = swift_allocObject();
    *(v42 + 16) = sub_251AEAAD0;
    *(v42 + 24) = v39;
    sub_251C70964();
    type metadata accessor for PBDeleteBlobsRequest(0);
    v43 = MEMORY[0x277CBCD88];
    sub_251AEA518(0, &qword_2813E2208, type metadata accessor for PBDeleteBlobsRequest, MEMORY[0x277CBCD88]);
    sub_251AEA5FC();
    sub_251AEA790(&qword_2813E2210, &qword_2813E2208, type metadata accessor for PBDeleteBlobsRequest);
    v44 = v64;
    sub_251C70B94();

    (*(v63 + 8))(v17, v44);
    *(&v83 + 1) = type metadata accessor for ClinicalSharingCloudStandardAPI();
    *&v84 = &off_2863F7EA0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v82);
    sub_251AEAD38(v65, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingCloudStandardAPI);
    sub_251A823B4(&v82, v81);
    v46 = swift_allocObject();
    sub_251A7E8D8(v81, v46 + 16);
    sub_251C6F9A4();
    sub_251AEA1F8(&qword_2813E2430, sub_251AEA40C);
    v47 = v73;
    v48 = v67;
    sub_251C70B54();

    sub_251A823B4(&v82, v81);
    v49 = swift_allocObject();
    sub_251A7E8D8(v81, v49 + 16);
    sub_251C70964();
    type metadata accessor for PBDeleteBlobsResponse(0);
    sub_251AEA518(0, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse, v43);
    sub_251AEA1F8(&qword_2813E24C0, sub_251AEA360);
    sub_251AEA790(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    v50 = v74;
    v51 = v78;
    sub_251C70B94();

    (*(v76 + 8))(v47, v51);
    sub_251AEA1F8(&qword_27F479A50, sub_251AEA684);
    v52 = v79;
    v53 = sub_251C70A94();
    (*(v77 + 8))(v50, v52);
    (*(v66 + 8))(v80, v48);
    __swift_destroy_boxed_opaque_existential_1(&v82);
    *&v82 = v53;
    sub_251AEA7F4(0, &qword_2813E1E48, MEMORY[0x277D837D0], v60);
    v54 = v68;
    sub_251C70AE4();

    sub_251AEA1F8(&unk_2813E2650, sub_251AEA844);
    v55 = v72;
    v56 = v69;
    sub_251C70AB4();
    (*(v70 + 8))(v54, v55);
    sub_251AEA1F8(&qword_27F479A58, sub_251AEA934);
    v57 = v75;
    v58 = sub_251C70A94();
    (*(v71 + 8))(v56, v57);
  }

  else
  {
    *&v82 = MEMORY[0x277D84F90];
    sub_251AEA7F4(0, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v29 + 8))(v32, v28);
    sub_251AEAB50(&qword_2813E1BD8, &qword_2813E1BD0, MEMORY[0x277CBCF38]);
    v58 = sub_251C70A94();
    (*(v35 + 8))(v38, v34);
  }

  return v58;
}

uint64_t sub_251AE93C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;

  v9 = sub_251BFBECC(v8);

  v10 = sub_251AD0A10(v9, a2, a3);
  v12 = v11;

  *a4 = v10;
  a4[1] = v12;
  return result;
}

uint64_t sub_251AE9440@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for PBDeleteBlobs(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;

  result = sub_251AEB358(v10, v8);
  if (!v2)
  {
    sub_251AEA1F8(&qword_27F479A90, type metadata accessor for PBDeleteBlobs);
    v12 = sub_251C70594();
    v14 = v13;
    sub_251AEA594();
    v16 = (a2 + *(v15 + 48));
    result = sub_251AEADA0(v8, a2);
    *v16 = v12;
    v16[1] = v14;
  }

  return result;
}

uint64_t sub_251AE9580(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29 = a1;
  v7 = type metadata accessor for PBDeleteBlobs(0);
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_251AEAB94();
  v10 = *(v9 - 8);
  v30 = v9;
  v31 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a4 + 32);
  sub_251A823B4(a4 + 48, v32);
  v15 = swift_allocObject();
  sub_251A7E8D8(v32, (v15 + 2));
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = 3;
  v15[10] = v14;
  v16 = MEMORY[0x277CBCEA8];
  sub_251AEACC8(0, &qword_27F479A78, &type metadata for ClinicalSharingEncryption.BAACertSignature, MEMORY[0x277CBCEA8]);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();

  sub_251A858C4(a2, a3);
  *&v32[0] = sub_251C70A64();
  sub_251AEAC68(&qword_27F479A80, &qword_27F479A78, v16);
  v20 = sub_251C70A94();

  *&v32[0] = v20;
  sub_251AEAD38(v29, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PBDeleteBlobs);
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_251AEADA0(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v23 = MEMORY[0x277CBCD88];
  sub_251AEACC8(0, &qword_27F479A68, &type metadata for ClinicalSharingEncryption.BAACertSignature, MEMORY[0x277CBCD88]);
  type metadata accessor for PBDeleteBlobsRequest(0);
  sub_251AEAC68(&qword_27F479A70, &qword_27F479A68, v23);
  sub_251C70B54();

  sub_251AEA1F8(&qword_27F479A88, sub_251AEAB94);
  v24 = v30;
  v25 = sub_251C70A94();
  (*(v31 + 8))(v13, v24);
  return v25;
}

uint64_t sub_251AE992C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PBDeleteBlobs(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  sub_251AEAD38(a2, v9, type metadata accessor for PBDeleteBlobs);

  sub_251A858C4(v11, v12);
  return sub_251C23948(v9, v10, v11, v12, a3);
}

uint64_t sub_251AE9A10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for PBBlobDeleteResult(0);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*a1 + 16);
  if (v9)
  {
    v10 = *a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_251AEAD38(v10, v8, type metadata accessor for PBBlobDeleteResult);
      v13 = *(v8 + 4);
      if (v8[40] == 1)
      {
        if (((1 << v13) & 0x16) == 0)
        {
LABEL_8:
          v14 = *v8;
          v15 = *(v8 + 1);

          sub_251AEAE80(v8, type metadata accessor for PBBlobDeleteResult);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_251C38CCC(0, *(v12 + 16) + 1, 1, v12);
            v12 = result;
          }

          v17 = *(v12 + 16);
          v16 = *(v12 + 24);
          if (v17 >= v16 >> 1)
          {
            result = sub_251C38CCC((v16 > 1), v17 + 1, 1, v12);
            v12 = result;
          }

          *(v12 + 16) = v17 + 1;
          v18 = v12 + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v15;
          goto LABEL_5;
        }
      }

      else if ((v13 & 0xFFFFFFFFFFFFFFFBLL) == 0)
      {
        goto LABEL_8;
      }

      result = sub_251AEAE80(v8, type metadata accessor for PBBlobDeleteResult);
LABEL_5:
      v10 += v11;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_14:
  *v20 = v12;
  return result;
}

void sub_251AE9C10(uint64_t *a1)
{
  v1 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  oslog = sub_251C70744();
  v3 = sub_251C713F4();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = *(v1 + 16);

    _os_log_impl(&dword_251A6C000, oslog, v3, "Number of deleted nodes: %ld", v4, 0xCu);
    MEMORY[0x25308E2B0](v4, -1, -1);
  }

  else
  {
  }
}

void sub_251AE9D54()
{
  if (!qword_2813E2568)
  {
    sub_251AE9F44(255, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
    sub_251AEA7F4(255, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277D83D88]);
    sub_251AE9E20();
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2568);
    }
  }
}

unint64_t sub_251AE9E20()
{
  result = qword_2813E2068;
  if (!qword_2813E2068)
  {
    sub_251AE9F44(255, &qword_2813E2060, &qword_2813E7518, MEMORY[0x277CC9318], MEMORY[0x277CBCEA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2068);
  }

  return result;
}

void sub_251AE9EA4()
{
  if (!qword_2813E2618)
  {
    sub_251AE9F44(255, &qword_2813E2190, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
    sub_251AE9FD8();
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2618);
    }
  }
}

void sub_251AE9F44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AEA7F4(255, a3, a4, MEMORY[0x277D83D88]);
    v9 = v8;
    v10 = sub_251A82284();
    v11 = a5(a1, v9, v10, MEMORY[0x277D84950]);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_251AE9FD8()
{
  result = qword_2813E2198;
  if (!qword_2813E2198)
  {
    sub_251AE9F44(255, &qword_2813E2190, &qword_2813E3780, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2198);
  }

  return result;
}

void sub_251AEA098(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_251AEACC8(255, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251AEA17C();
    sub_251AEA1F8(a4, a5);
    v9 = sub_251C708D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_251AEA17C()
{
  result = qword_2813E2188;
  if (!qword_2813E2188)
  {
    sub_251AEACC8(255, &qword_2813E2180, &type metadata for ClinicalSharingGraphMetadata, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2188);
  }

  return result;
}

uint64_t sub_251AEA1F8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AEA294()
{
  if (!qword_2813E25C8)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251AEAA34(255, &qword_2813E2120, MEMORY[0x277CBCD88]);
    sub_251AEAB50(&qword_2813E2128, &qword_2813E2120, v0);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E25C8);
    }
  }
}

void sub_251AEA360()
{
  if (!qword_2813E24B8)
  {
    sub_251AEA40C();
    sub_251C6F9A4();
    sub_251AEA1F8(&qword_2813E2430, sub_251AEA40C);
    v0 = sub_251C708B4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E24B8);
    }
  }
}

void sub_251AEA40C()
{
  if (!qword_2813E2428)
  {
    sub_251AEA518(255, &qword_2813E2208, type metadata accessor for PBDeleteBlobsRequest, MEMORY[0x277CBCD88]);
    sub_251AEA518(255, &qword_2813E1C10, sub_251AEA594, MEMORY[0x277CBCF38]);
    sub_251AEA790(&qword_2813E2210, &qword_2813E2208, type metadata accessor for PBDeleteBlobsRequest);
    sub_251AEA5FC();
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2428);
    }
  }
}

void sub_251AEA518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
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

void sub_251AEA594()
{
  if (!qword_2813E68D8[0])
  {
    type metadata accessor for PBDeleteBlobs(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_2813E68D8);
    }
  }
}

unint64_t sub_251AEA5FC()
{
  result = qword_2813E1C18;
  if (!qword_2813E1C18)
  {
    sub_251AEA518(255, &qword_2813E1C10, sub_251AEA594, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1C18);
  }

  return result;
}

void sub_251AEA684()
{
  if (!qword_2813E23C0)
  {
    sub_251AEA518(255, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse, MEMORY[0x277CBCD88]);
    sub_251AEA360();
    sub_251AEA790(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    sub_251AEA1F8(&qword_2813E24C0, sub_251AEA360);
    v0 = sub_251C708D4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E23C0);
    }
  }
}

uint64_t sub_251AEA790(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AEA518(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AEA7F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_251AEA844()
{
  if (!qword_2813E2648)
  {
    sub_251AEA518(255, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse, MEMORY[0x277CBCD88]);
    sub_251AEA7F4(255, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_251AEA790(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    v0 = sub_251C70804();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E2648);
    }
  }
}

void sub_251AEA934()
{
  if (!qword_2813E26C8)
  {
    sub_251AEA844();
    sub_251AEA1F8(&unk_2813E2650, sub_251AEA844);
    v0 = sub_251C707A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E26C8);
    }
  }
}

void sub_251AEA9C8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_251AEA7F4(255, a3, a4, MEMORY[0x277D83940]);
    v5 = sub_251C70A14();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_251AEAA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_251AEA7F4(255, &qword_2813E1E48, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v7 = v6;
    v8 = sub_251A82284();
    v9 = a3(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251AEAAD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  sub_251AEA594();
  result = v6(a1, *(a1 + *(v7 + 48)), *(a1 + *(v7 + 48) + 8));
  *a2 = result;
  return result;
}

uint64_t sub_251AEAB50(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251AEAA34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AEAB94()
{
  if (!qword_27F479A60)
  {
    v0 = MEMORY[0x277CBCD88];
    sub_251AEACC8(255, &qword_27F479A68, &type metadata for ClinicalSharingEncryption.BAACertSignature, MEMORY[0x277CBCD88]);
    type metadata accessor for PBDeleteBlobsRequest(255);
    sub_251AEAC68(&qword_27F479A70, &qword_27F479A68, v0);
    v1 = sub_251C708B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479A60);
    }
  }
}

uint64_t sub_251AEAC68(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  result = *a1;
  if (!result)
  {
    sub_251AEACC8(255, a2, &type metadata for ClinicalSharingEncryption.BAACertSignature, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AEACC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251A82284();
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251AEAD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AEADA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBDeleteBlobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AEAE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251AEAEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, void *a7)
{
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  *(v15 + 16) = MEMORY[0x277D84F90];
  v16 = swift_allocObject();
  v16[2] = sub_251AD96B8;
  v16[3] = v14;
  v16[4] = v15;
  if (a6)
  {
    sub_251AEB30C();

    a6 = sub_251C71144();
  }

  else
  {
  }

  if (a5)
  {
    a4 = 0;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CCDB30]);
  v20[4] = sub_251AEB21C;
  v20[5] = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_251AEB228;
  v20[3] = &block_descriptor_2;
  v18 = _Block_copy(v20);
  v19 = [v17 initWithPredicate:a3 anchor:0 limit:a4 sortDescriptors:a6 resultsHandler:v18];

  _Block_release(v18);

  [a7 executeQuery_];
}

void sub_251AEB0CC(int a1, void *a2, int a3, char a4, id a5, void (*a6)(id, uint64_t), uint64_t a7, uint64_t a8)
{
  if (a5)
  {
    v10 = a5;
    a6(a5, 1);
  }

  else
  {
    if (a2)
    {
      v12 = a4;
      swift_beginAccess();
      v14 = a2;
      MEMORY[0x25308CEE0]();
      if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v17 = *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_251C71174();
      }

      sub_251C71194();
      swift_endAccess();
      a4 = v12;
    }

    if (a4)
    {
      swift_beginAccess();
      v15 = *(a8 + 16);

      a6(v16, 0);
    }
  }
}

void sub_251AEB228(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v12 = *(a1 + 32);
  v11 = *(a1 + 40);

  v16 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v12(v16, a3, a4, a5, a6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251AEB30C()
{
  result = qword_27F479A98;
  if (!qword_27F479A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479A98);
  }

  return result;
}

uint64_t sub_251AEB358@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_251C70404();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PBRevocationAuthorization();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBDeleteBlob(0);
  v50 = *(v13 - 8);
  v51 = v13;
  v14 = *(v50 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  v20 = MEMORY[0x277D84F90];
  *a2 = MEMORY[0x277D84F90];
  v21 = a2 + *(type metadata accessor for PBDeleteBlobs(0) + 20);
  sub_251C703A4();
  v22 = *(a1 + 16);
  if (v22)
  {
    v43 = a2;
    v57 = v2;
    v63 = v20;
    v45 = v22;
    result = sub_251C0B904(0, v22, 0);
    v24 = 0;
    v25 = v63;
    v26 = (v9 + 56);
    v27 = (a1 + 56);
    v48 = xmmword_251C745D0;
    v49 = a1;
    v46 = v19;
    v44 = (v9 + 56);
    v47 = v12;
    while (v24 < *(a1 + 16))
    {
      v55 = v24;
      v56 = v25;
      v28 = *(v27 - 3);
      v29 = *(v27 - 2);
      v30 = *(v27 - 1);
      v31 = *v27;
      v32 = v17;
      v54 = v27;
      *(v17 + 1) = v48;
      v33 = v51;
      v34 = *(v51 + 24);
      v35 = v26;

      sub_251A858C4(v30, v31);

      sub_251A858C4(v30, v31);
      sub_251C703A4();
      v36 = *(v33 + 28);
      v53 = *v35;
      v53(&v32[v36], 1, 1, v8);
      *v32 = v28;
      *(v32 + 1) = v29;
      v61 = v30;
      v62 = v31;
      v60 = 0;
      v58 = 0u;
      v59 = 0u;
      sub_251C703F4();
      sub_251AEB844();
      v37 = v47;
      v38 = v57;
      sub_251C705A4();
      v57 = v38;
      if (v38)
      {

        sub_251A83028(v30, v31);
        sub_251AEB89C(v32, type metadata accessor for PBDeleteBlob);

        return sub_251AEB89C(v43, type metadata accessor for PBDeleteBlobs);
      }

      sub_251A83028(v30, v31);
      sub_251AEB89C(&v32[v36], sub_251AEB8FC);
      sub_251AEB954(v37, &v32[v36], type metadata accessor for PBRevocationAuthorization);
      v53(&v32[v36], 0, 1, v8);
      v39 = v46;
      sub_251AEB954(v32, v46, type metadata accessor for PBDeleteBlob);
      v25 = v56;
      v63 = v56;
      v41 = *(v56 + 16);
      v40 = *(v56 + 24);
      v17 = v32;
      if (v41 >= v40 >> 1)
      {
        sub_251C0B904(v40 > 1, v41 + 1, 1);
        v25 = v63;
      }

      v24 = v55 + 1;
      *(v25 + 16) = v41 + 1;
      result = sub_251AEB954(v39, v25 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41, type metadata accessor for PBDeleteBlob);
      v27 = v54 + 4;
      a1 = v49;
      v26 = v44;
      if (v45 == v24)
      {

        *v43 = v25;
        return result;
      }
    }

    __break(1u);
  }

  else
  {

    *a2 = MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_251AEB844()
{
  result = qword_27F479858;
  if (!qword_27F479858)
  {
    type metadata accessor for PBRevocationAuthorization();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479858);
  }

  return result;
}

uint64_t sub_251AEB89C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251AEB8FC()
{
  if (!qword_2813E3BF0)
  {
    type metadata accessor for PBRevocationAuthorization();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E3BF0);
    }
  }
}

uint64_t sub_251AEB954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AEB9BC()
{
  v1 = v0;
  sub_251AF2868();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ClinicalSharingMedicalRecordsQuery();
  v119 = *(v8 - 8);
  v9 = *(v119 + 64);
  MEMORY[0x28223BE20](v8);
  v120 = v10;
  v121 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF28D8();
  v12 = v11;
  v123 = *(v11 - 8);
  v13 = *(v123 + 64);
  MEMORY[0x28223BE20](v11);
  v122 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2A98();
  v124 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_251C70014();
  v113 = *(v118 - 8);
  v20 = *(v113 + 64);
  MEMORY[0x28223BE20](v118);
  v112 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_251C701E4();
  v129 = *(v125 - 8);
  v22 = v129[8];
  MEMORY[0x28223BE20](v125);
  v117 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_251C6FC94();
  v115 = *(v116 - 8);
  v24 = *(v115 + 64);
  v25 = MEMORY[0x28223BE20](v116);
  v114 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v128 = &v91 - v27;
  sub_251AF2314(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v31 = &v91 - v30;
  v32 = sub_251C6FAE4();
  v126 = *(v32 - 8);
  v127 = v32;
  v33 = *(v126 + 64);
  MEMORY[0x28223BE20](v32);
  v130 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_251AEC9FC();
  if (!*(v35 + 16))
  {

    type metadata accessor for ClinicalSharingQueryOutput(0);
    sub_251A82284();
    sub_251C70A34();
    sub_251AF2B44(&qword_27F479B00, sub_251AF2868);
    v40 = sub_251C70A94();
    (*(v4 + 8))(v7, v3);
    return v40;
  }

  v107 = v35;
  v36 = *v0;
  sub_251A823B4(*v0 + 16, &v132);
  v37 = __swift_project_boxed_opaque_existential_1(&v132, v133);
  __swift_project_boxed_opaque_existential_1(v37 + 3, v37[6]);
  v108 = off_2863F67E8();
  __swift_destroy_boxed_opaque_existential_1(&v132);
  v38 = v0[2];
  if (v38 == 2)
  {
    v39 = MEMORY[0x277CCBC90];
  }

  else
  {
    if (v38 != 3)
    {
      v41 = 0;
      goto LABEL_9;
    }

    v39 = MEMORY[0x277CCBC98];
  }

  v41 = [objc_opt_self() predicateForDiagnosticTestResultCategory_];
LABEL_9:
  v109 = v12;
  v110 = v19;
  v111 = v16;
  sub_251AF3018(v1 + *(v8 + 28), v31, &qword_27F478D90, MEMORY[0x277CC88A8]);
  v43 = v126;
  v42 = v127;
  v44 = (*(v126 + 48))(v31, 1, v127);
  v45 = MEMORY[0x277D84F68];
  if (v44 == 1)
  {
    sub_251AF3098(v31, &qword_27F478D90, MEMORY[0x277CC88A8]);
    v46 = v41;
  }

  else
  {
    v106 = v1;
    (*(v43 + 32))(v130, v31, v42);
    v103 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
    v47 = v129[2];
    v102 = v129 + 2;
    v104 = v47;
    v47(v117, v36 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v125);
    sub_251AF2314(0, &qword_27F479AA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v101 = v48;
    v49 = sub_251C701C4();
    v50 = *(v49 - 8);
    v51 = *(v50 + 72);
    v92 = *(v50 + 80);
    v105 = v41;
    v52 = (v92 + 32) & ~v92;
    v95 = v52;
    v100 = 3 * v51;
    v53 = v51;
    v97 = v51;
    v54 = 2 * v51;
    v94 = 2 * v51;
    v55 = swift_allocObject();
    v99 = xmmword_251C76AF0;
    *(v55 + 16) = xmmword_251C76AF0;
    v98 = *MEMORY[0x277CC9988];
    v56 = *(v50 + 104);
    v56(v55 + v52);
    v96 = *MEMORY[0x277CC9998];
    v56(v55 + v52 + v53);
    v93 = *MEMORY[0x277CC9968];
    v56(v55 + v52 + v54);
    sub_251B1D3EC(v55);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v57 = v112;
    sub_251C6FAB4();
    v58 = v117;
    sub_251C700E4();

    v91 = *(v113 + 8);
    v91(v57, v118);
    v59 = v129[1];
    ++v129;
    v60 = v125;
    v59(v58, v125);
    v113 = v36;
    v104(v58, v36 + v103, v60);
    v61 = v95;
    v62 = swift_allocObject();
    *(v62 + 16) = v99;
    v63 = v62 + v61;
    (v56)(v63, v98, v49);
    (v56)(v63 + v97, v96, v49);
    (v56)(v63 + v94, v93, v49);
    sub_251B1D3EC(v62);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_251C6FA84();
    v64 = v114;
    sub_251C700E4();

    v91(v57, v118);
    v59(v58, v125);
    v65 = objc_opt_self();
    v66 = sub_251C6FBC4();
    v67 = sub_251C6FBC4();
    v46 = [v65 predicateForRecordsWithSortDateFromStartDateComponents:v66 endDateComponents:v67];

    v68 = v105;
    v45 = MEMORY[0x277D84F68];
    if (v68)
    {
      sub_251AF2B8C(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_251C76B00;
      *(v69 + 32) = v68;
      *(v69 + 40) = v46;
      sub_251A8223C(0, &qword_27F479AF8, 0x277CCAC30);
      v70 = v68;
      v71 = v46;
      v72 = sub_251C71144();

      v46 = [objc_opt_self() andPredicateWithSubpredicates_];
    }

    v73 = *(v115 + 8);
    v74 = v116;
    v73(v64, v116);
    v73(v128, v74);
    (*(v126 + 8))(v130, v127);
    v1 = v106;
    v36 = v113;
  }

  v75 = *(v1 + 8);
  v76 = [objc_allocWithZone(MEMORY[0x277CCD848]) initWithSampleType:v75 predicate:v46];
  sub_251BFC460(0xD000000000000016, 0x8000000251C8A7C0, v75, 5, 1);
  sub_251A823B4(v36 + 16, &v132);
  __swift_project_boxed_opaque_existential_1(&v132, v133);
  sub_251AF2B8C(0, &qword_27F47BD20, v45 + 8, MEMORY[0x277D84560]);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_251C74560;
  *(v77 + 32) = v76;
  v78 = off_2863FD750;
  v79 = v76;
  v80 = v78();

  __swift_destroy_boxed_opaque_existential_1(&v132);
  v132 = v108;
  v131 = v80;
  sub_251AF29A4(0, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
  sub_251AF29A4(0, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
  sub_251AE79A4();
  sub_251AF2A20();

  v81 = v122;
  sub_251C70824();
  v82 = v121;
  sub_251AF2CC0(v1, v121, type metadata accessor for ClinicalSharingMedicalRecordsQuery);
  v83 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v84 = (v120 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v85 = swift_allocObject();
  sub_251AF2EBC(v82, v85 + v83, type metadata accessor for ClinicalSharingMedicalRecordsQuery);
  *(v85 + v84) = v107;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_251AF2BDC;
  *(v86 + 24) = v85;
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251AF2B44(&qword_27F479AE8, sub_251AF28D8);
  v87 = v110;
  v88 = v109;
  sub_251C70AA4();

  (*(v123 + 8))(v81, v88);
  sub_251AF2B44(&qword_27F479AF0, sub_251AF2A98);
  v89 = v124;
  v40 = sub_251C70A94();

  (*(v111 + 8))(v87, v89);
  return v40;
}

uint64_t sub_251AEC9FC()
{
  sub_251AF2314(0, &qword_27F479B38, MEMORY[0x277D11300], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17[-v3];
  v5 = sub_251C702E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v0[2];
  if (v10 > 2)
  {
    if (v10 == 3)
    {
      sub_251A8223C(0, &qword_27F479B40, 0x277CCD118);
      v11 = MEMORY[0x277CCBB58];
      goto LABEL_11;
    }

    if (v10 == 6)
    {
      sub_251A8223C(0, &qword_27F479B40, 0x277CCD118);
      v11 = MEMORY[0x277CCBB40];
      goto LABEL_11;
    }
  }

  else
  {
    if (v10 == 1)
    {
      sub_251A8223C(0, &qword_27F479B40, 0x277CCD118);
      v11 = MEMORY[0x277CCBB50];
      goto LABEL_11;
    }

    if (v10 == 2)
    {
      sub_251A8223C(0, &qword_27F479B40, 0x277CCD118);
      v11 = MEMORY[0x277CCBB48];
LABEL_11:
      *v4 = MEMORY[0x25308D1C0](*v11);
      (*(v6 + 104))(v4, *MEMORY[0x277D112F0], v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      v13 = (*(v6 + 32))(v9, v4, v5);
      v14 = *(*v0 + 56);
      MEMORY[0x28223BE20](v13);
      *&v17[-16] = v9;

      v15 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, &v17[-32], v14);

      v12 = sub_251BFAE40(v15);

      (*(v6 + 8))(v9, v5);
      return v12;
    }
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  sub_251AF3098(v4, &qword_27F479B38, MEMORY[0x277D11300]);
  return MEMORY[0x277D84FA0];
}

uint64_t sub_251AECD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_251AF2314(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for PBTypedData(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AECFBC(a2, a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_251AF3098(v11, &qword_27F4793C8, type metadata accessor for PBTypedData);
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(Output - 8) + 56))(a4, 1, 1, Output);
  }

  else
  {
    sub_251AF2EBC(v11, v16, type metadata accessor for PBTypedData);
    sub_251AF2EBC(v16, a4, type metadata accessor for PBTypedData);
    v19 = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a4 + *(v19 + 20)) = a3;
    v20 = (a4 + *(v19 + 24));
    *v20 = 0;
    v20[1] = 0;
    (*(*(v19 - 8) + 56))(a4, 0, 1, v19);
  }
}

uint64_t sub_251AECFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for PBAllClinicalRecords(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for PBTimeSeries(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277D83D88];
  sub_251AF2314(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v114 = &v94 - v19;
  v20 = type metadata accessor for PBTypedData(0);
  v116 = *(v20 - 8);
  v21 = *(v116 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PBDateRange(0);
  v112 = *(v24 - 8);
  v113 = v24;
  v25 = *(v112 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v94 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_251C70014();
  v110 = *(v107 - 8);
  v28 = *(v110 + 64);
  v29 = MEMORY[0x28223BE20](v107);
  v108 = &v94 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v111 = &v94 - v31;
  sub_251AF2314(0, &qword_2813E7500, MEMORY[0x277CC9578], v16);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v106 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v105 = &v94 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v115 = &v94 - v39;
  MEMORY[0x28223BE20](v38);
  v109 = &v94 - v40;
  sub_251AF2314(0, &qword_27F478D90, MEMORY[0x277CC88A8], v16);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](a1);
  v44 = MEMORY[0x28223BE20](v43);
  v46 = &v94 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v50 = &v94 - v49;
  if (v47 >> 62)
  {
    v104 = v27;
    v103 = v47;
    v86 = v48;
    v87 = sub_251C717F4();
    v48 = v86;
    v88 = v87;
    v47 = v103;
    v27 = v104;
    if (v88)
    {
LABEL_3:
      v99 = v48;
      v104 = v27;
      v100 = a2;
      v51 = v15;
      v52 = v11;
      v53 = v23;
      v102 = v20;
      v103 = a3;
      v54 = sub_251B15044(v47);
      if (v54)
      {
        v55 = v54;
        v101 = type metadata accessor for ClinicalSharingMedicalRecordsQuery();
        v56 = MEMORY[0x277CC88A8];
        sub_251AF3018(v4 + *(v101 + 28), v50, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251AF3018(v50, v46, &qword_27F478D90, v56);
        v57 = sub_251C6FAE4();
        v97 = *(v57 - 8);
        v58 = *(v97 + 48);
        v98 = v57;
        v59 = v4;
        v60 = v58(v46, 1);
        sub_251AF3098(v46, &qword_27F478D90, v56);
        v61 = v60 == 1;
        v62 = v59;
        v63 = v53;
        v64 = v52;
        v65 = v51;
        if (v61)
        {
          v96 = v51;
          v124 = v55;
          v125 = sub_251AF3108;
          v126 = 0;
          v127 = sub_251AF2378;
          v128 = 0;
          v129 = sub_251AF23DC;
          v130 = 0;

          v66 = v109;
          sub_251C0DFC8(v109);

          v117 = v55;
          v118 = sub_251AF3108;
          v119 = 0;
          v120 = sub_251AF2378;
          v121 = 0;
          v122 = sub_251AF23DC;
          v123 = 0;

          sub_251AC0404(v115);

          v67 = v105;
          sub_251AF3018(v66, v105, &qword_2813E7500, MEMORY[0x277CC9578]);
          v68 = v110;
          v69 = *(v110 + 48);
          v70 = v107;
          v71 = v69(v67, 1, v107);
          v95 = v64;
          if (v71 == 1)
          {
            sub_251C6FF24();
            v72 = v69(v67, 1, v70);
            v73 = v108;
            if (v72 != 1)
            {
              sub_251AF3098(v67, &qword_2813E7500, MEMORY[0x277CC9578]);
            }
          }

          else
          {
            (*(v68 + 32))(v111, v67, v70);
            v73 = v108;
          }

          v74 = v106;
          sub_251AF3018(v115, v106, &qword_2813E7500, MEMORY[0x277CC9578]);
          if (v69(v74, 1, v70) == 1)
          {
            (*(v110 + 16))(v73, *v62 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v70);
            if (v69(v74, 1, v70) != 1)
            {
              sub_251AF3098(v74, &qword_2813E7500, MEMORY[0x277CC9578]);
            }
          }

          else
          {
            (*(v110 + 32))(v73, v74, v70);
          }

          v75 = v99;
          sub_251C6FA94();
          v76 = MEMORY[0x277CC9578];
          sub_251AF3098(v115, &qword_2813E7500, MEMORY[0x277CC9578]);
          sub_251AF3098(v109, &qword_2813E7500, v76);
          sub_251AF3098(v50, &qword_27F478D90, MEMORY[0x277CC88A8]);
          (*(v97 + 56))(v75, 0, 1, v98);
          sub_251AAFBF8(v75, v50);
          v65 = v96;
          v64 = v95;
        }

        v77 = v104;
        sub_251BFC464(5, 1, v50);
        v78 = v114;
        sub_251AF2CC0(v77, v114, type metadata accessor for PBDateRange);
        (*(v112 + 56))(v78, 0, 1, v113);
        sub_251AEDD84(v78, v63);
        sub_251AF3098(v78, qword_2813E6EE8, type metadata accessor for PBDateRange);
        v79 = *(v62 + *(v101 + 32));
        v80 = *(v62 + 8);
        v81 = v102;
        if (v79 == 4)
        {
          sub_251AEE0D0(v55, v100, *(v62 + 8), v64);

          sub_251AF2FB8(v77, type metadata accessor for PBDateRange);
          sub_251AF3098(v50, &qword_27F478D90, MEMORY[0x277CC88A8]);
          v82 = *(v81 + 20);
          sub_251AF3098(v63 + v82, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251AF2EBC(v64, v63 + v82, type metadata accessor for PBAllClinicalRecords);
        }

        else
        {
          sub_251B2ADEC(v55, *(v62 + 8), v79, v65);

          sub_251AF2FB8(v77, type metadata accessor for PBDateRange);
          sub_251AF3098(v50, &qword_27F478D90, MEMORY[0x277CC88A8]);
          v82 = *(v81 + 20);
          sub_251AF3098(v63 + v82, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251AF2EBC(v65, v63 + v82, type metadata accessor for PBTimeSeries);
        }

        v83 = type metadata accessor for PBTypedData.OneOf_Raw(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v83 - 8) + 56))(v63 + v82, 0, 1, v83);
        v84 = v103;
        sub_251AF2EBC(v63, v103, type metadata accessor for PBTypedData);
        return (*(v116 + 56))(v84, 0, 1, v81);
      }

      else
      {
        v124 = 0;
        v125 = 0xE000000000000000;
        sub_251C716A4();

        v124 = 0xD000000000000023;
        v125 = 0x8000000251C89D50;
        v90 = [*(v4 + 8) description];
        v91 = sub_251C70F14();
        v93 = v92;

        MEMORY[0x25308CDA0](v91, v93);

        result = sub_251C717E4();
        __break(1u);
      }

      return result;
    }
  }

  else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v89 = *(v116 + 56);

  return v89(a3, 1, 1, v20);
}

uint64_t sub_251AEDCC8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 sortDate];
  v4 = [v3 date];

  sub_251C6FFE4();
  v5 = sub_251C70014();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_251AEDD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  sub_251AF2314(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for PBDateRange(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = type metadata accessor for PBTypedData(0);
  v17 = v16[5];
  v18 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v18 - 8) + 56))(a2 + v17, 1, 1, v18);
  v19 = a2 + v16[6];
  sub_251C703A4();
  v20 = v16[7];
  v21 = *(v9 + 56);
  v21(a2 + v20, 1, 1, v8);
  v22 = *(v2 + *(type metadata accessor for ClinicalSharingMedicalRecordsQuery() + 32));
  if (v22 <= 1)
  {
    if (v22)
    {
      v23 = 107;
    }

    else
    {
      v23 = 106;
    }
  }

  else if (v22 == 2)
  {
    v23 = 108;
  }

  else if (v22 == 3)
  {
    v23 = 110;
  }

  else
  {
    v24 = *(v2 + 16) - 1;
    if (v24 > 5)
    {
      v23 = 0;
    }

    else
    {
      v23 = qword_251C76BD0[v24];
    }
  }

  v25 = v28;
  *a2 = v23;
  *(a2 + 8) = 1;
  sub_251AF3018(v25, v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251AF3098(v7, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251AF2EBC(v7, v15, type metadata accessor for PBDateRange);
  sub_251AF2EBC(v15, v13, type metadata accessor for PBDateRange);
  sub_251AF3098(a2 + v20, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251AF2EBC(v13, a2 + v20, type metadata accessor for PBDateRange);
  return (v21)(a2 + v20, 0, 1, v8);
}

uint64_t sub_251AEE0D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v9 = sub_251B15008(a1);
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
    }

    v11 = a4 + *(type metadata accessor for PBAllClinicalRecords(0) + 20);
    v12 = sub_251C703A4();
    MEMORY[0x28223BE20](v12);
    v37 = v4;
    v38 = a2;
    v13 = sub_251BC370C(sub_251AF2D48, v36, v10);
LABEL_26:
    v30 = v13;

    *a4 = v30;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = sub_251B15014(a1);
    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v16 = a4 + *(type metadata accessor for PBAllClinicalRecords(0) + 20);
    v17 = sub_251C703A4();
    MEMORY[0x28223BE20](v17);
    v37 = v4;
    v38 = a2;
    v13 = sub_251BC370C(sub_251AF2D40, v36, v15);
    goto LABEL_26;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v18 = sub_251B15020(a1);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v20 = a4 + *(type metadata accessor for PBAllClinicalRecords(0) + 20);
    v21 = sub_251C703A4();
    MEMORY[0x28223BE20](v21);
    v37 = v4;
    v38 = a2;
    v13 = sub_251BC370C(sub_251AF2D38, v36, v19);
    goto LABEL_26;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v22 = sub_251B1502C(a1);
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v24 = a4 + *(type metadata accessor for PBAllClinicalRecords(0) + 20);
    v25 = sub_251C703A4();
    MEMORY[0x28223BE20](v25);
    v37 = v4;
    v38 = a2;
    v13 = sub_251BC370C(sub_251AF2D30, v36, v23);
    goto LABEL_26;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v26 = sub_251B15038(a1);
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v27 = MEMORY[0x277D84F90];
    }

    v28 = a4 + *(type metadata accessor for PBAllClinicalRecords(0) + 20);
    v29 = sub_251C703A4();
    MEMORY[0x28223BE20](v29);
    v37 = v4;
    v38 = a2;
    v13 = sub_251BC370C(sub_251AF2D28, v36, v27);
    goto LABEL_26;
  }

  sub_251C716A4();

  v32 = [a3 description];
  v33 = sub_251C70F14();
  v35 = v34;

  MEMORY[0x25308CDA0](v33, v35);

  result = sub_251C717E4();
  __break(1u);
  return result;
}

void sub_251AEE494(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for PBHKInspectableValue(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 16) = MEMORY[0x277D84F90];
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  v11 = type metadata accessor for PBHKInspectableValueCollection(0);
  v12 = a2 + v11[7];
  sub_251C703A4();
  v13 = v11[8];
  v14 = *(v7 + 56);
  v14(a2 + v13, 1, 1, v6);
  v15 = v11[9];
  v14(a2 + v15, 1, 1, v6);
  v36[0] = v11[10];
  v14(a2 + v36[0], 1, 1, v6);
  *a2 = sub_251B19040();
  *(a2 + 8) = v16 & 1;
  v17 = [a1 inspectableValue];
  if (v17)
  {
    v18 = v3;
    v19 = v17;
    sub_251AEE890(v17, v10);

    v3 = v18;
    sub_251AF3098(a2 + v13, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    sub_251AF2EBC(v10, a2 + v13, type metadata accessor for PBHKInspectableValue);
    v14(a2 + v13, 0, 1, v6);
  }

  v20 = [a1 min];
  v21 = v3;
  if (v20)
  {
    v22 = v20;
    sub_251AEE890(v20, v10);

    sub_251AF3098(a2 + v15, qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    sub_251AF2EBC(v10, a2 + v15, type metadata accessor for PBHKInspectableValue);
    v14(a2 + v15, 0, 1, v6);
  }

  v23 = [a1 max];
  if (v23)
  {
    v24 = v23;
    sub_251AEE890(v23, v10);

    v25 = v36[0];
    sub_251AF3098(a2 + v36[0], qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
    sub_251AF2EBC(v10, a2 + v25, type metadata accessor for PBHKInspectableValue);
    v14(a2 + v25, 0, 1, v6);
  }

  v26 = [a1 inspectableValues];
  if (v26)
  {
    v27 = v26;
    sub_251A8223C(0, &qword_27F479B08, 0x277CCD550);
    v28 = sub_251C71154();

    MEMORY[0x28223BE20](v29);
    v36[-2] = v21;
    sub_251C4F964(sub_251AF2D50, &v36[-4], v28);
    v31 = v30;

    *(a2 + 16) = v31;
  }

  v32 = [a1 unitString];
  v33 = sub_251C70F14();
  v35 = v34;

  *(a2 + 24) = v33;
  *(a2 + 32) = v35;
}

uint64_t sub_251AEE890@<X0>(char **a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_251AF2314(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v300 = &v281 - v7;
  v299 = type metadata accessor for PBHKConcept(0);
  v298 = *(v299 - 8);
  v8 = *(v298 + 64);
  v9 = MEMORY[0x28223BE20](v299);
  v297 = &v281 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v301 = &v281 - v11;
  v294 = sub_251C6FC94();
  v293 = *(v294 - 8);
  v12 = *(v293 + 64);
  MEMORY[0x28223BE20](v294);
  v295 = &v281 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2314(0, qword_2813E6EE8, type metadata accessor for PBDateRange, v4);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v288 = &v281 - v16;
  sub_251AF2314(0, &qword_2813E7500, MEMORY[0x277CC9578], v4);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v292 = &v281 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v284 = &v281 - v22;
  MEMORY[0x28223BE20](v21);
  v283 = &v281 - v23;
  v287 = type metadata accessor for PBDateRange(0);
  v286 = *(v287 - 8);
  v24 = *(v286 + 64);
  MEMORY[0x28223BE20](v287);
  v285 = &v281 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v306 = sub_251C70014();
  v307 = *(v306 - 8);
  v26 = *(v307 + 64);
  v27 = MEMORY[0x28223BE20](v306);
  v296 = &v281 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v302 = &v281 - v29;
  v305 = sub_251C701E4();
  v304 = *(v305 - 8);
  v30 = *(v304 + 64);
  MEMORY[0x28223BE20](v305);
  v303 = &v281 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2314(0, qword_2813E64E0, type metadata accessor for PBHKRatioValue, v4);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v291 = &v281 - v34;
  v290 = type metadata accessor for PBHKRatioValue(0);
  v289 = *(v290 - 8);
  v35 = *(v289 + 64);
  MEMORY[0x28223BE20](v290);
  v37 = &v281 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2314(0, qword_2813E5640, type metadata accessor for PBHKCodedQuantity, v4);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v41 = &v281 - v40;
  v42 = type metadata accessor for PBHKCodedQuantity(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 8);
  MEMORY[0x28223BE20](v42);
  v46 = &v281 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v47 = *(type metadata accessor for PBHKInspectableValue(0) + 20);
  if (qword_27F478710 != -1)
  {
LABEL_66:
    swift_once();
  }

  *&a2[v47] = qword_27F47AC08;

  v310 = a1;
  v48 = sub_251B303BC();
  v50 = v49;
  v51 = *&a2[v47];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *&a2[v47];
  v309 = v47;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v54 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v53 = sub_251B80F70(v53);
    *&a2[v47] = v53;
  }

  swift_beginAccess();
  *(v53 + 16) = v48;
  *(v53 + 24) = v50 & 1;
  v57 = [v310 stringValue];
  if (v57)
  {
    v58 = v57;
    v59 = sub_251C70F14();
    v61 = v60;

    v62 = v309;
    v63 = *&a2[v309];
    v64 = swift_isUniquelyReferenced_nonNull_native();
    v65 = *&a2[v62];
    if ((v64 & 1) == 0)
    {
      v66 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      swift_allocObject();
      v65 = sub_251B80F70(v65);
      *&a2[v62] = v65;
    }

    swift_beginAccess();
    v69 = *(v65 + 40);
    *(v65 + 32) = v59;
    *(v65 + 40) = v61;
  }

  v70 = [v310 codedQuantityValue];
  if (v70)
  {
    v71 = v70;
    sub_251AF0480(v70, v46);
    v72 = v309;
    v73 = *&a2[v309];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v74 = *&a2[v72];
    }

    else
    {
      v75 = *&a2[v72];
      v76 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();

      v74 = sub_251B80F70(v79);

      *&a2[v72] = v74;
    }

    sub_251AF2EBC(v46, v41, type metadata accessor for PBHKCodedQuantity);
    (*(v43 + 7))(v41, 0, 1, v42);
    v80 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedQuantity;
    swift_beginAccess();
    sub_251AF2DB0(v41, v74 + v80, qword_2813E5640, type metadata accessor for PBHKCodedQuantity);
    swift_endAccess();
  }

  v81 = v310;
  v82 = [v310 ratioValue];
  v83 = v309;
  if (v82)
  {
    v84 = v82;
    v85 = v290;
    v86 = v37 + *(v290 + 24);
    sub_251C703A4();
    v87 = [v84 numerator];
    v88 = [v87 localizedValue];

    v89 = sub_251C70F14();
    v91 = v90;

    *v37 = v89;
    *(v37 + 8) = v91;
    v92 = [v84 denominator];
    v93 = [v92 localizedValue];

    v94 = sub_251C70F14();
    v96 = v95;

    *(v37 + 16) = v94;
    *(v37 + 24) = v96;
    v97 = *&a2[v83];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v98 = *&a2[v83];
    }

    else
    {
      v99 = *&a2[v83];
      v100 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v101 = *(v100 + 48);
      v102 = *(v100 + 52);
      swift_allocObject();

      v98 = sub_251B80F70(v103);

      *&a2[v83] = v98;
    }

    v104 = v291;
    sub_251AF2EBC(v37, v291, type metadata accessor for PBHKRatioValue);
    (*(v289 + 56))(v104, 0, 1, v85);
    v105 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__ratioValue;
    swift_beginAccess();
    sub_251AF2DB0(v104, v98 + v105, qword_2813E64E0, type metadata accessor for PBHKRatioValue);
    swift_endAccess();
  }

  v106 = [v81 medicalDateValue];
  if (v106)
  {
    v107 = v106;
    v108 = *v308;
    v109 = v304;
    v110 = v303;
    v111 = v305;
    (*(v304 + 16))(v303, *v308 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v305);
    v112 = sub_251C70114();
    (*(v109 + 8))(v110, v111);
    v113 = [v107 adjustedDateForCalendar_];

    v114 = v302;
    sub_251C6FFE4();

    v115 = *(v108 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
    v116 = sub_251C6FF94();
    v117 = [v115 stringFromDate_];

    v118 = sub_251C70F14();
    v119 = v83;
    v121 = v120;

    (*(v307 + 8))(v114, v306);
    v122 = *&a2[v119];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v123 = *&a2[v119];
    }

    else
    {
      v124 = *&a2[v119];
      v125 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v126 = *(v125 + 48);
      v127 = *(v125 + 52);
      swift_allocObject();

      v123 = sub_251B80F70(v128);

      *&a2[v119] = v123;
    }

    v129 = (v123 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateString);
    swift_beginAccess();
    v130 = v129[1];
    *v129 = v118;
    v129[1] = v121;

    v83 = v309;
  }

  v131 = [v81 medicalDateIntervalValue];
  v302 = a2;
  v132 = v307;
  v37 = v296;
  if (v131)
  {
    v133 = v131;
    v134 = [v131 startDate];

    if (v134)
    {
      v135 = [v81 medicalDateIntervalValue];
      if (v135 && (v136 = v135, v137 = [v135 endDate], v136, (v291 = v137) != 0))
      {
        v290 = *v308;
        v138 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar;
        v139 = v304;
        v289 = *(v304 + 16);
        v140 = v303;
        v141 = v305;
        (v289)(v303, v290 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v305);
        v142 = sub_251C70114();
        v282 = *(v139 + 8);
        v282(v140, v141);
        v143 = [v134 adjustedDateForCalendar_];

        v144 = v283;
        sub_251C6FFE4();

        v281 = *(v132 + 56);
        v145 = v306;
        v281(v144, 0, 1, v306);
        (v289)(v140, v290 + v138, v141);
        v83 = v309;
        v146 = sub_251C70114();
        v282(v140, v141);
        a2 = v302;
        v147 = [v291 adjustedDateForCalendar_];

        v148 = v284;
        sub_251C6FFE4();

        v281(v148, 0, 1, v145);
        v149 = v285;
        sub_251C15BE4(v144, v148);
        v150 = MEMORY[0x277CC9578];
        sub_251AF3098(v148, &qword_2813E7500, MEMORY[0x277CC9578]);
        sub_251AF3098(v144, &qword_2813E7500, v150);
        v151 = *&a2[v83];
        if (swift_isUniquelyReferenced_nonNull_native())
        {

          v152 = *&a2[v83];
        }

        else
        {
          v153 = *&a2[v83];
          v154 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
          v155 = *(v154 + 48);
          v156 = *(v154 + 52);
          swift_allocObject();

          v152 = sub_251B80F70(v157);

          *&a2[v83] = v152;
        }

        v81 = v310;
        v37 = v296;
        v158 = v288;
        sub_251AF2EBC(v149, v288, type metadata accessor for PBDateRange);
        (*(v286 + 56))(v158, 0, 1, v287);
        v159 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalDateIntervalString;
        swift_beginAccess();
        sub_251AF2DB0(v158, v152 + v159, qword_2813E6EE8, type metadata accessor for PBDateRange);
        swift_endAccess();
        v132 = v307;
      }

      else
      {
      }
    }
  }

  v160 = [v81 dateComponentsValue];
  if (v160)
  {
    v161 = v37;
    v162 = v295;
    v163 = v160;
    sub_251C6FBD4();

    v164 = *v308;
    v165 = v304;
    v166 = v303;
    v37 = v305;
    (*(v304 + 16))(v303, *v308 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_gregorianCalendar, v305);
    v167 = v292;
    sub_251C70134();
    (*(v165 + 8))(v166, v37);
    v168 = v306;
    if ((*(v132 + 48))(v167, 1, v306) == 1)
    {
      (*(v293 + 8))(v162, v294);
      sub_251AF3098(v167, &qword_2813E7500, MEMORY[0x277CC9578]);
      v81 = v310;
    }

    else
    {
      (*(v132 + 32))(v161, v167, v168);
      v169 = *(v164 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
      v170 = v168;
      v171 = sub_251C6FF94();
      v172 = [v169 stringFromDate_];

      v173 = sub_251C70F14();
      v175 = v174;

      v176 = *&a2[v83];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        (*(v132 + 8))(v161, v170);
        (*(v293 + 8))(v295, v294);
        v177 = *&a2[v83];
      }

      else
      {
        v178 = *&a2[v83];
        v179 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
        v180 = *(v179 + 48);
        v181 = *(v179 + 52);
        swift_allocObject();

        v177 = sub_251B80F70(v182);
        (*(v132 + 8))(v161, v170);
        (*(v293 + 8))(v295, v294);

        *&a2[v83] = v177;
      }

      v81 = v310;
      v183 = (v177 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dateFromDateComponents);
      swift_beginAccess();
      v184 = v183[1];
      *v183 = v173;
      v183[1] = v175;
    }
  }

  v185 = [v81 codedValueCollection];
  if (v185)
  {
    v186 = v185;
    v187 = [v185 codedValues];
    sub_251A8223C(0, &qword_27F479B18, 0x277CCD1A0);
    v188 = sub_251C71154();

    MEMORY[0x28223BE20](v189);
    *(&v281 - 2) = v308;
    sub_251C4F910(sub_251AF2D80, (&v281 - 4), v188);
    v191 = v190;
    v307 = 0;

    v192 = *&a2[v83];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v193 = *&a2[v83];
    }

    else
    {
      v194 = *&a2[v83];
      v195 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v196 = *(v195 + 48);
      v197 = *(v195 + 52);
      swift_allocObject();

      v193 = sub_251B80F70(v198);

      *&a2[v83] = v193;
    }

    v199 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__codedValueCollectionValues;
    swift_beginAccess();
    v200 = *(v193 + v199);
    *(v193 + v199) = v191;
  }

  else
  {
    v307 = 0;
  }

  v201 = [v81 medicalCodings];
  if (v201)
  {
    v202 = v201;
    sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
    v203 = sub_251C71154();

    v47 = v203 & 0xFFFFFFFFFFFFFF8;
    if (v203 >> 62)
    {
      v41 = sub_251C717F4();
      if (v41)
      {
LABEL_48:
        a2 = 0;
        v42 = v203 & 0xC000000000000001;
        v43 = MEMORY[0x277D84F90];
        a1 = &selRef_dateComponentsValue;
        do
        {
          v46 = a2;
          while (1)
          {
            if (v42)
            {
              v204 = MEMORY[0x25308D460](v46, v203);
            }

            else
            {
              if (v46 >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              v204 = *(v203 + 8 * v46 + 32);
            }

            v205 = v204;
            a2 = (v46 + 1);
            if (__OFADD__(v46, 1))
            {
              __break(1u);
LABEL_65:
              __break(1u);
              goto LABEL_66;
            }

            v206 = [v204 displayString];
            if (v206)
            {
              break;
            }

            ++v46;
            if (a2 == v41)
            {
              goto LABEL_69;
            }
          }

          v207 = v206;
          v208 = sub_251C70F14();
          v306 = v209;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_251C38CCC(0, *(v43 + 2) + 1, 1, v43);
          }

          v37 = *(v43 + 2);
          v210 = *(v43 + 3);
          if (v37 >= v210 >> 1)
          {
            v43 = sub_251C38CCC((v210 > 1), v37 + 1, 1, v43);
          }

          *(v43 + 2) = v37 + 1;
          v211 = &v43[16 * v37];
          v212 = v306;
          *(v211 + 4) = v208;
          *(v211 + 5) = v212;
        }

        while (a2 != v41);
        goto LABEL_69;
      }
    }

    else
    {
      v41 = *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41)
      {
        goto LABEL_48;
      }
    }

    v43 = MEMORY[0x277D84F90];
LABEL_69:

    a2 = v302;
    v83 = v309;
    v213 = *&v302[v309];
    v214 = swift_isUniquelyReferenced_nonNull_native();
    v215 = *&a2[v83];
    if ((v214 & 1) == 0)
    {
      v216 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v217 = *(v216 + 48);
      v218 = *(v216 + 52);
      swift_allocObject();
      v215 = sub_251B80F70(v215);
      *&a2[v83] = v215;
    }

    v81 = v310;
    v219 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalCodingsDisplayStrings;
    swift_beginAccess();
    v220 = *(v215 + v219);
    *(v215 + v219) = v43;
  }

  v221 = [v81 ontologyConcept];
  if (v221)
  {
    v222 = v221;
    sub_251AF0ACC(v221, 1, v301);
    v223 = *&a2[v83];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v224 = *&a2[v83];
    }

    else
    {
      v225 = *&a2[v83];
      v226 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v227 = *(v226 + 48);
      v228 = *(v226 + 52);
      swift_allocObject();

      v224 = sub_251B80F70(v229);

      *&a2[v83] = v224;
    }

    v230 = v300;
    sub_251AF2EBC(v301, v300, type metadata accessor for PBHKConcept);
    (*(v298 + 56))(v230, 0, 1, v299);
    v231 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__concept;
    swift_beginAccess();
    sub_251AF2DB0(v230, v224 + v231, qword_2813E6D28, type metadata accessor for PBHKConcept);
    swift_endAccess();
  }

  v232 = [v81 dataAbsentReasonCodings];
  if (v232)
  {
    v233 = v232;
    sub_251A8223C(0, &qword_27F479B10, 0x277CCD5C0);
    v234 = sub_251C71154();

    if (v234 >> 62)
    {
LABEL_98:
      v235 = sub_251C717F4();
      if (v235)
      {
LABEL_80:
        v236 = 0;
        v237 = MEMORY[0x277D84F90];
        do
        {
          v238 = v236;
          while (1)
          {
            if ((v234 & 0xC000000000000001) != 0)
            {
              v239 = MEMORY[0x25308D460](v238, v234);
            }

            else
            {
              if (v238 >= *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_97;
              }

              v239 = *(v234 + 8 * v238 + 32);
            }

            v240 = v239;
            v236 = v238 + 1;
            if (__OFADD__(v238, 1))
            {
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v241 = [v239 displayString];
            if (v241)
            {
              break;
            }

            ++v238;
            if (v236 == v235)
            {
              goto LABEL_100;
            }
          }

          v242 = v241;
          v243 = sub_251C70F14();
          v306 = v244;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v237 = sub_251C38CCC(0, *(v237 + 2) + 1, 1, v237);
          }

          v246 = *(v237 + 2);
          v245 = *(v237 + 3);
          if (v246 >= v245 >> 1)
          {
            v237 = sub_251C38CCC((v245 > 1), v246 + 1, 1, v237);
          }

          *(v237 + 2) = v246 + 1;
          v247 = &v237[16 * v246];
          v248 = v306;
          *(v247 + 4) = v243;
          *(v247 + 5) = v248;
        }

        while (v236 != v235);
        goto LABEL_100;
      }
    }

    else
    {
      v235 = *((v234 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v235)
      {
        goto LABEL_80;
      }
    }

    v237 = MEMORY[0x277D84F90];
LABEL_100:

    a2 = v302;
    v83 = v309;
    v249 = *&v302[v309];
    v250 = swift_isUniquelyReferenced_nonNull_native();
    v251 = *&a2[v83];
    if ((v250 & 1) == 0)
    {
      v252 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v253 = *(v252 + 48);
      v254 = *(v252 + 52);
      swift_allocObject();
      v251 = sub_251B80F70(v251);
      *&a2[v83] = v251;
    }

    v81 = v310;
    v255 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonCodingsDisplayStrings;
    swift_beginAccess();
    v256 = *(v251 + v255);
    *(v251 + v255) = v237;
  }

  v257 = [v81 dataAbsentReason];
  if (v257)
  {
    v258 = v257;
    sub_251AF0ACC(v257, 1, v297);
    v259 = *&a2[v83];
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v260 = *&a2[v83];
    }

    else
    {
      v261 = *&a2[v83];
      v262 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
      v263 = *(v262 + 48);
      v264 = *(v262 + 52);
      swift_allocObject();

      v260 = sub_251B80F70(v265);

      *&a2[v83] = v260;
    }

    v266 = v300;
    sub_251AF2EBC(v297, v300, type metadata accessor for PBHKConcept);
    (*(v298 + 56))(v266, 0, 1, v299);
    v267 = OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__dataAbsentReasonConcept;
    swift_beginAccess();
    sub_251AF2DB0(v266, v260 + v267, qword_2813E6D28, type metadata accessor for PBHKConcept);
    swift_endAccess();
  }

  v268 = [v81 unitString];
  v269 = sub_251C70F14();
  v271 = v270;

  v272 = *&a2[v83];
  v273 = swift_isUniquelyReferenced_nonNull_native();
  v274 = *&a2[v83];
  if ((v273 & 1) == 0)
  {
    v275 = type metadata accessor for PBHKInspectableValue._StorageClass(0);
    v276 = *(v275 + 48);
    v277 = *(v275 + 52);
    swift_allocObject();
    v274 = sub_251B80F70(v274);
    *&a2[v83] = v274;
  }

  v278 = (v274 + OBJC_IVAR____TtCV19HealthRecordsDaemon20PBHKInspectableValueP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__unitString);
  swift_beginAccess();
  v279 = v278[1];
  *v278 = v269;
  v278[1] = v271;
}

void sub_251AF0480(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  v4 = a2 + *(type metadata accessor for PBHKCodedQuantity(0) + 40);
  sub_251C703A4();
  v5 = [a1 localizedValue];
  v6 = sub_251C70F14();
  v8 = v7;

  v9 = [a1 rawValue];
  v10 = sub_251C70F14();
  v12 = v11;

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;

  [a1 doubleValue];
  *&v13 = v13;
  *(a2 + 32) = LODWORD(v13);
  v14 = [a1 comparatorCoding];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 displayString];

    if (v16)
    {
      v17 = sub_251C70F14();
      v19 = v18;

      v20 = [a1 comparatorCoding];
      if (!v20 || (v21 = v20, v22 = [v20 code], v21, !v22))
      {

        goto LABEL_12;
      }

      v23 = sub_251C70F14();
      v25 = v24;

      *(a2 + 40) = v17;
      *(a2 + 48) = v19;
      v26 = sub_251C4BEF8(&unk_2863F3060);
      sub_251AF2E30();
      swift_arrayDestroy();
      v40 = 0;
      v41 = 0xE000000000000000;
      if (*(v26 + 16))
      {
        v27 = sub_251AC8C58(v23, v25);
        v29 = v28;

        if (v29)
        {
          v30 = (*(v26 + 56) + 16 * v27);
          v32 = *v30;
          v31 = v30[1];

          v33 = v32;
LABEL_11:
          MEMORY[0x25308CDA0](v33, v31);

          MEMORY[0x25308CDA0](v6, v8);

          v6 = 0;
          v8 = 0xE000000000000000;
          goto LABEL_12;
        }
      }

      else
      {
      }

      v33 = 0;
      v31 = 0xE000000000000000;
      goto LABEL_11;
    }
  }

LABEL_12:
  *(a2 + 72) = v6;
  *(a2 + 80) = v8;
  v34 = [a1 unitCoding];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 displayString];

    if (v36)
    {
      v37 = sub_251C70F14();
      v39 = v38;

      *(a2 + 56) = v37;
      *(a2 + 64) = v39;
    }
  }
}

id sub_251AF0748@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v30 = a1;
  v3 = type metadata accessor for PBHKInspectableValue(0);
  v33 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PBHKConcept(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = MEMORY[0x277D84F90];
  v12 = type metadata accessor for PBHKCodedValue(0);
  v13 = &a2[v12[5]];
  sub_251C703A4();
  v14 = v12[6];
  v15 = *(v8 + 56);
  v15(&a2[v14], 1, 1, v7);
  v16 = v12[7];
  v17 = *(v4 + 56);
  v32 = v4 + 56;
  v34 = v17;
  v17(&a2[v16], 1, 1, v3);
  v18 = v30;
  v19 = [v30 ontologyConcept];
  v20 = v31;
  sub_251AF0ACC(v19, 1, v11);

  sub_251AF3098(&a2[v14], qword_2813E6D28, type metadata accessor for PBHKConcept);
  sub_251AF2EBC(v11, &a2[v14], type metadata accessor for PBHKConcept);
  v15(&a2[v14], 0, 1, v7);
  v21 = [v18 value];
  v22 = v35;
  sub_251AEE890();

  sub_251AF3098(&a2[v16], qword_2813E4B40, type metadata accessor for PBHKInspectableValue);
  sub_251AF2EBC(v22, &a2[v16], type metadata accessor for PBHKInspectableValue);
  v34(&a2[v16], 0, 1, v33);
  result = [v18 referenceRanges];
  if (result)
  {
    v24 = result;
    sub_251A8223C(0, &qword_27F479B28, 0x277CCD890);
    v25 = sub_251C71154();

    MEMORY[0x28223BE20](v26);
    *(&v29 - 2) = v20;
    sub_251C4F9B8(sub_251AF2E8C, (&v29 - 4), v25);
    v28 = v27;

    *a2 = v28;
  }

  return result;
}

id sub_251AF0ACC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v74 = a2;
  sub_251AF2314(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v72 - v7;
  v9 = type metadata accessor for PBHKConcept(0);
  v73 = *(v9 - 8);
  v10 = *(v73 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v13 = *(v9 + 20);
  if (qword_27F478680 != -1)
  {
    swift_once();
  }

  *(a3 + v13) = qword_27F47ABF8;

  v14 = [a1 preferredName];
  if (v14)
  {
    v15 = v14;
    v16 = sub_251C70F14();
    v18 = v17;

    v19 = *(a3 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(a3 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = type metadata accessor for PBHKConcept._StorageClass(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_251BB27F0(v21);

      *(a3 + v13) = v25;
      v21 = v25;
    }

    swift_beginAccess();
    v26 = *(v21 + 3);
    *(v21 + 2) = v16;
    *(v21 + 3) = v18;
  }

  v27 = [a1 localizedPreferredName];
  if (v27)
  {
    v28 = v27;
    v29 = sub_251C70F14();
    v31 = v30;

    v32 = *(a3 + v13);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(a3 + v13);
    if ((v33 & 1) == 0)
    {
      v35 = type metadata accessor for PBHKConcept._StorageClass(0);
      v36 = *(v35 + 48);
      v37 = *(v35 + 52);
      swift_allocObject();
      v38 = sub_251BB27F0(v34);

      *(a3 + v13) = v38;
      v34 = v38;
    }

    swift_beginAccess();
    v39 = *(v34 + 5);
    *(v34 + 4) = v29;
    *(v34 + 5) = v31;
  }

  v40 = [a1 identifier];
  v41 = [v40 rawIdentifier];

  v75 = v41;
  v42 = sub_251C719A4();
  v44 = v43;
  v45 = *(a3 + v13);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *(a3 + v13);
  if ((v46 & 1) == 0)
  {
    v48 = type metadata accessor for PBHKConcept._StorageClass(0);
    v49 = *(v48 + 48);
    v50 = *(v48 + 52);
    swift_allocObject();
    v51 = sub_251BB27F0(v47);

    *(a3 + v13) = v51;
    v47 = v51;
  }

  swift_beginAccess();
  v52 = *(v47 + 7);
  *(v47 + 6) = v42;
  *(v47 + 7) = v44;

  v53 = [a1 isInMemory];
  v54 = *(a3 + v13);
  v55 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *(a3 + v13);
  if ((v55 & 1) == 0)
  {
    v57 = type metadata accessor for PBHKConcept._StorageClass(0);
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v60 = sub_251BB27F0(v56);

    *(a3 + v13) = v60;
    v56 = v60;
  }

  v61 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__isInMemory;
  result = swift_beginAccess();
  v56[v61] = v53;
  if (v74)
  {
    result = [a1 relationshipsAreLoaded];
    if (result)
    {
      v63 = [a1 groupByConcept];
      sub_251AF0ACC();

      v64 = *(a3 + v13);
      v65 = swift_isUniquelyReferenced_nonNull_native();
      v66 = *(a3 + v13);
      if ((v65 & 1) == 0)
      {
        v67 = type metadata accessor for PBHKConcept._StorageClass(0);
        v68 = *(v67 + 48);
        v69 = *(v67 + 52);
        swift_allocObject();
        v70 = sub_251BB27F0(v66);

        *(a3 + v13) = v70;
        v66 = v70;
      }

      sub_251AF2EBC(v12, v8, type metadata accessor for PBHKConcept);
      (*(v73 + 56))(v8, 0, 1, v9);
      v71 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBHKConceptP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__groupBy;
      swift_beginAccess();
      sub_251AF2DB0(v8, &v66[v71], qword_2813E6D28, type metadata accessor for PBHKConcept);
      return swift_endAccess();
    }
  }

  return result;
}

id sub_251AF0FCC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PBHKInspectableValueCollection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v9 = type metadata accessor for PBHKReferenceRange(0);
  v10 = a2 + *(v9 + 20);
  sub_251C703A4();
  v11 = *(v9 + 24);
  v12 = *(v5 + 56);
  v12(a2 + v11, 1, 1, v4);
  v13 = [a1 referenceRangeIdentifier];
  if (v13)
  {
    v24 = a1;
    v14 = v8;
    v15 = v4;
    v16 = v12;
    v17 = v13;
    v18 = sub_251C70F14();
    v20 = v19;

    v12 = v16;
    v4 = v15;
    v8 = v14;
    a1 = v24;
    *a2 = v18;
    a2[1] = v20;
  }

  result = [a1 valueRange];
  if (result)
  {
    v22 = result;
    sub_251AEE494();

    sub_251AF3098(a2 + v11, qword_2813E32E8, type metadata accessor for PBHKInspectableValueCollection);
    sub_251AF2EBC(v8, a2 + v11, type metadata accessor for PBHKInspectableValueCollection);
    return (v12)(a2 + v11, 0, 1, v4);
  }

  return result;
}

uint64_t sub_251AF11B4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251AF2314(0, qword_2813E6D28, type metadata accessor for PBHKConcept, MEMORY[0x277D83D88]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v90 - v8;
  v10 = type metadata accessor for PBHKConcept(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251C703A4();
  v15 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  if (qword_27F478660 != -1)
  {
LABEL_38:
    swift_once();
  }

  *(a3 + v15) = qword_27F47ABF0;

  v16 = [a1 primaryConcept];
  sub_251AF0ACC(v16, 1, v14);

  v17 = *(a3 + v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a3 + v15);
  v90 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = type metadata accessor for PBClinicalRecord._StorageClass(0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v23 = sub_251BB2A8C(v19);

    *(a3 + v15) = v23;
    v19 = v23;
  }

  sub_251AF2EBC(v14, v9, type metadata accessor for PBHKConcept);
  (*(v11 + 56))(v9, 0, 1, v10);
  v24 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__primaryConcept;
  swift_beginAccess();
  sub_251AF2DB0(v9, &v19[v24], qword_2813E6D28, type metadata accessor for PBHKConcept);
  swift_endAccess();
  if (a2 >> 62)
  {
    v25 = sub_251C717F4();
    if (!v25)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v25 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v25)
    {
      goto LABEL_22;
    }
  }

  v10 = 0;
  v9 = 0;
  v11 = a2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x25308D460](v10, a2);
    }

    else
    {
      if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v26 = *(a2 + 8 * v10 + 32);
    }

    v14 = v26;
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v91 = v26;
    if (sub_251AF18A8(&v91, a1))
    {
      break;
    }

    ++v10;
    if (v15 == v25)
    {
      goto LABEL_22;
    }
  }

  v27 = [v14 gateway];

  if (v27)
  {
    v28 = [v27 title];
    v29 = sub_251C70F14();
    v31 = v30;

    v32 = v90;
    v33 = *(a3 + v90);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *(a3 + v32);
    if ((v34 & 1) == 0)
    {
      v36 = type metadata accessor for PBClinicalRecord._StorageClass(0);
      v37 = *(v36 + 48);
      v38 = *(v36 + 52);
      swift_allocObject();
      v39 = sub_251BB2A8C(v35);

      *(a3 + v32) = v39;
      v35 = v39;
    }

    v40 = (v35 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
    swift_beginAccess();
    v41 = v40[1];
    *v40 = v29;
    v40[1] = v31;

    v42 = [v27 externalID];
    v43 = sub_251C70F14();
    v45 = v44;

    v46 = *(a3 + v32);
    if (swift_isUniquelyReferenced_nonNull_native())
    {

      v47 = *(a3 + v32);
    }

    else
    {
      v48 = *(a3 + v32);
      v49 = type metadata accessor for PBClinicalRecord._StorageClass(0);
      v50 = *(v49 + 48);
      v51 = *(v49 + 52);
      swift_allocObject();

      v47 = sub_251BB2A8C(v52);

      *(a3 + v32) = v47;
    }

    v53 = &v47[OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__gatewayID];
    swift_beginAccess();
    v54 = v53[1];
    *v53 = v43;
    v53[1] = v45;
  }

LABEL_22:
  v55 = [a1 medicalRecordOriginType];
  v56 = v90;
  v57 = *(a3 + v90);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a3 + v56);
  if (v55 == 3)
  {
    if ((v58 & 1) == 0)
    {
      v70 = type metadata accessor for PBClinicalRecord._StorageClass(0);
      v71 = *(v70 + 48);
      v72 = *(v70 + 52);
      swift_allocObject();
      v73 = sub_251BB2A8C(v59);

      *(a3 + v56) = v73;
      v59 = v73;
    }

    v74 = v59 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
    swift_beginAccess();
    *v74 = 2;
    v74[8] = 1;
    v75 = [a1 sourceRevision];
    v76 = [v75 source];

    v77 = [v76 name];
    v78 = sub_251C70F14();
    v80 = v79;

    v81 = *(a3 + v56);
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v83 = *(a3 + v56);
    if ((v82 & 1) == 0)
    {
      v84 = type metadata accessor for PBClinicalRecord._StorageClass(0);
      v85 = *(v84 + 48);
      v86 = *(v84 + 52);
      swift_allocObject();
      v87 = sub_251BB2A8C(v83);

      *(a3 + v56) = v87;
      v83 = v87;
    }

    v88 = (v83 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__source);
    swift_beginAccess();
    v89 = v88[1];
    *v88 = v78;
    v88[1] = v80;
  }

  else
  {
    if (v55 == 1)
    {
      if ((v58 & 1) == 0)
      {
        v60 = type metadata accessor for PBClinicalRecord._StorageClass(0);
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();
        v63 = sub_251BB2A8C(v59);

        *(a3 + v56) = v63;
        v59 = v63;
      }

      v64 = v59 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
      result = swift_beginAccess();
      *v64 = 1;
    }

    else
    {
      if ((v58 & 1) == 0)
      {
        v66 = type metadata accessor for PBClinicalRecord._StorageClass(0);
        v67 = *(v66 + 48);
        v68 = *(v66 + 52);
        swift_allocObject();
        v69 = sub_251BB2A8C(v59);

        *(a3 + v56) = v69;
        v59 = v69;
      }

      v64 = v59 + OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecordOriginType;
      result = swift_beginAccess();
      *v64 = 0;
    }

    v64[8] = 1;
  }

  return result;
}

uint64_t sub_251AF18A8(void **a1, void *a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2F24();
  v42 = v8;
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AF2314(0, &qword_2813E74D0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  v21 = *a1;
  v22 = [a2 sourceRevision];
  v23 = [v22 source];

  v24 = [v23 _deducedClinicalAccountIdentifier];
  if (v24)
  {
    sub_251C70054();

    v25 = *(v5 + 56);
    v26 = v5;
    v25(v20, 0, 1, v4);
  }

  else
  {
    v25 = *(v5 + 56);
    v26 = v5;
    v25(v20, 1, 1, v4);
  }

  v27 = [v21 identifier];
  sub_251C70054();

  v25(v18, 0, 1, v4);
  v28 = *(v42 + 48);
  v29 = MEMORY[0x277CC95F0];
  sub_251AF3018(v20, v11, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  sub_251AF3018(v18, &v11[v28], &qword_2813E74D0, v29);
  v30 = v26;
  v31 = *(v26 + 48);
  if (v31(v11, 1, v4) != 1)
  {
    sub_251AF3018(v11, v43, &qword_2813E74D0, MEMORY[0x277CC95F0]);
    if (v31(&v11[v28], 1, v4) != 1)
    {
      v35 = v30;
      v36 = v41;
      (*(v30 + 32))(v41, &v11[v28], v4);
      sub_251AF2B44(&qword_27F4796A0, MEMORY[0x277CC95F0]);
      v33 = sub_251C70ED4();
      v37 = *(v35 + 8);
      v37(v36, v4);
      v38 = MEMORY[0x277CC95F0];
      sub_251AF3098(v18, &qword_2813E74D0, MEMORY[0x277CC95F0]);
      sub_251AF3098(v20, &qword_2813E74D0, v38);
      v37(v43, v4);
      sub_251AF3098(v11, &qword_2813E74D0, v38);
      return v33 & 1;
    }

    v34 = MEMORY[0x277CC95F0];
    sub_251AF3098(v18, &qword_2813E74D0, MEMORY[0x277CC95F0]);
    sub_251AF3098(v20, &qword_2813E74D0, v34);
    (*(v30 + 8))(v43, v4);
    goto LABEL_9;
  }

  v32 = MEMORY[0x277CC95F0];
  sub_251AF3098(v18, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  sub_251AF3098(v20, &qword_2813E74D0, v32);
  if (v31(&v11[v28], 1, v4) != 1)
  {
LABEL_9:
    sub_251AF2FB8(v11, sub_251AF2F24);
    v33 = 0;
    return v33 & 1;
  }

  sub_251AF3098(v11, &qword_2813E74D0, MEMORY[0x277CC95F0]);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_251AF1E28@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  sub_251AF2314(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v36 = &v30 - v3;
  v4 = sub_251C6FC94();
  v31 = *(v4 - 8);
  v32 = v4;
  v5 = *(v31 + 64);
  MEMORY[0x28223BE20](v4);
  v34 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_251C701E4();
  v7 = *(v35 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v35);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = [objc_opt_self() referenceCalendar];
  sub_251C70124();

  sub_251AF2314(0, &qword_27F479AA0, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v15 = sub_251C701C4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_251C75420;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x277CC9978], v15);
  v21(v20 + v17, *MEMORY[0x277CC9988], v15);
  v21(v20 + 2 * v17, *MEMORY[0x277CC9998], v15);
  v21(v20 + 3 * v17, *MEMORY[0x277CC9968], v15);
  v21(v20 + 4 * v17, *MEMORY[0x277CC9980], v15);
  v22 = v34;
  v21(v20 + 5 * v17, *MEMORY[0x277CC99A0], v15);
  v21(v20 + 6 * v17, *MEMORY[0x277CC99A8], v15);
  sub_251BFC068(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_251C700E4();
  v23 = v36;

  sub_251C70184();
  sub_251C70134();
  v24 = *(v7 + 8);
  v25 = v11;
  v26 = v35;
  v24(v25, v35);
  v27 = sub_251C70014();
  v28 = *(v27 - 8);
  result = (*(v28 + 48))(v23, 1, v27);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v31 + 8))(v22, v32);
    v24(v13, v26);
    return (*(v28 + 32))(v33, v23, v27);
  }

  return result;
}

void sub_251AF2314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251AF23DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277CC9578];
  sub_251AF2314(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  sub_251AF3018(a1, &v12 - v7, &qword_2813E7500, v4);
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  result = (*(v10 + 48))(v8, 1, v9);
  if (result != 1)
  {
    return (*(v10 + 32))(a2, v8, v9);
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ClinicalSharingMedicalRecordsQuery()
{
  result = qword_27F479AA8;
  if (!qword_27F479AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251AF2590()
{
  type metadata accessor for ClinicalSharingQueryContext(319);
  if (v0 <= 0x3F)
  {
    sub_251A8223C(319, &qword_27F479AB8, 0x277CCD608);
    if (v1 <= 0x3F)
    {
      type metadata accessor for HKMedicalRecordCategoryType(319);
      if (v2 <= 0x3F)
      {
        sub_251AF2314(319, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_251AF2B8C(319, &qword_27F479AC0, &type metadata for ClinicalSharingMedicalRecordsQuery.ChartablePointType, MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for ClinicalSharingMedicalRecordsQuery.ChartablePointType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClinicalSharingMedicalRecordsQuery.ChartablePointType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_251AF2814()
{
  result = qword_27F479AC8;
  if (!qword_27F479AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479AC8);
  }

  return result;
}

void sub_251AF2868()
{
  if (!qword_27F479AD0)
  {
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251A82284();
    v0 = sub_251C70A44();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479AD0);
    }
  }
}

void sub_251AF28D8()
{
  if (!qword_27F479AD8)
  {
    sub_251AF29A4(255, &qword_2813E2110, &qword_2813E1E30, &qword_2813E1D98, 0x277D123D8);
    sub_251AF29A4(255, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    sub_251AE79A4();
    sub_251AF2A20();
    v0 = sub_251C70814();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479AD8);
    }
  }
}

void sub_251AF29A4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  if (!*a2)
  {
    sub_251AA8E98(255, a3, a4, a5);
    sub_251A82284();
    v6 = sub_251C70974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251AF2A20()
{
  result = qword_27F478D78;
  if (!qword_27F478D78)
  {
    sub_251AF29A4(255, &qword_27F478D60, &qword_27F478D68, &qword_27F478D70, 0x277CCD8A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F478D78);
  }

  return result;
}

void sub_251AF2A98()
{
  if (!qword_27F479AE0)
  {
    sub_251AF28D8();
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251AF2B44(&qword_27F479AE8, sub_251AF28D8);
    v0 = sub_251C70784();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479AE0);
    }
  }
}

uint64_t sub_251AF2B44(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AF2B8C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_251AF2BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for ClinicalSharingMedicalRecordsQuery() - 8);
  v8 = *(v3 + ((*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_251AECD54(a1, a2, v8, a3);
}

uint64_t sub_251AF2C90(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_251AF2CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251AF2DB0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AF2314(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_251AF2E30()
{
  if (!qword_27F479B20)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479B20);
    }
  }
}

uint64_t sub_251AF2EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AF2F24()
{
  if (!qword_27F479B30)
  {
    sub_251AF2314(255, &qword_2813E74D0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479B30);
    }
  }
}

uint64_t sub_251AF2FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AF3018(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AF2314(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AF3098(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AF2314(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AF310C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_251C70084();
  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v6 = 0;
  v7 = result + 40;
  v53 = *(result + 16);
  v48 = v5 - 1;
  v8 = MEMORY[0x277D84F90];
  v49 = result + 40;
  do
  {
    v52 = v8;
    v9 = (v7 + 16 * v6);
    v10 = v6;
    while (1)
    {
      if (v10 >= *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = objc_allocWithZone(MEMORY[0x277CBEAF8]);

      v14 = sub_251C70EE4();
      v15 = [v13 initWithLocaleIdentifier_];

      v16 = [v15 languageCode];
      v17 = sub_251C70F14();
      v19 = v18;

      v20 = [v15 regionCode];
      if (v20)
      {
        v21 = v20;
        v22 = sub_251C70F14();
        v24 = v23;
      }

      else
      {
        v24 = 0xE200000000000000;
        v22 = 21333;
      }

      sub_251AF34CC(0, &qword_27F4793D0, MEMORY[0x277D84560]);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_251C75800;
      *(v25 + 32) = v17;
      *(v25 + 40) = v19;
      *(v25 + 48) = v22;
      *(v25 + 56) = v24;
      sub_251AF34CC(0, &qword_2813E1E48, MEMORY[0x277D83940]);
      sub_251AF3520();
      v26 = sub_251C70EA4();
      v28 = v27;

      v29 = v54;
      swift_getAtKeyPath();

      if (*(v55 + 16))
      {
        break;
      }

LABEL_5:

      ++v10;

      v9 += 2;
      if (v53 == v10)
      {
        v8 = v52;
        goto LABEL_20;
      }
    }

    v30 = sub_251AC8C58(v26, v28);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      goto LABEL_5;
    }

    v33 = (*(v55 + 56) + 16 * v30);
    v35 = *v33;
    v34 = v33[1];

    v36 = v52;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_251C38CCC(0, v52[2] + 1, 1, v52);
      v36 = result;
    }

    v38 = *(v36 + 16);
    v37 = *(v36 + 24);
    v39 = v36;
    if (v38 >= v37 >> 1)
    {
      result = sub_251C38CCC((v37 > 1), v38 + 1, 1, v36);
      v39 = result;
    }

    v6 = v10 + 1;
    v39[2] = v38 + 1;
    v40 = &v39[2 * v38];
    v8 = v39;
    v40[4] = v35;
    v40[5] = v34;
    v7 = v49;
  }

  while (v48 != v10);
LABEL_20:

  if (v8[2])
  {
    v41 = v8[4];
    v42 = v8[5];
    goto LABEL_22;
  }

  v43 = v54;
  swift_getAtKeyPath();

  if (*(v55 + 16) && (v44 = sub_251AC8C58(a2, a3), (v45 & 1) != 0))
  {
    v46 = (*(v55 + 56) + 16 * v44);
    v41 = *v46;
    v47 = v46[1];
LABEL_22:
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

void sub_251AF34CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
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

unint64_t sub_251AF3520()
{
  result = qword_2813E1E40;
  if (!qword_2813E1E40)
  {
    sub_251AF34CC(255, &qword_2813E1E48, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E1E40);
  }

  return result;
}

uint64_t WellKnownJWKSRequest.headers.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t WellKnownJWKSRequest.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WellKnownJWKSRequest() + 24);
  v4 = sub_251C6FE64();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WellKnownJWKSRequest()
{
  result = qword_27F479B50;
  if (!qword_27F479B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WellKnownJWKSRequest.body.getter()
{
  v1 = v0 + *(type metadata accessor for WellKnownJWKSRequest() + 28);
  v2 = *v1;
  sub_251A85E50(*v1, *(v1 + 8));
  return v2;
}

uint64_t WellKnownJWKSRequest.title.getter()
{
  v1 = (v0 + *(type metadata accessor for WellKnownJWKSRequest() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t WellKnownJWKSRequest.init(baseURLString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251AF3A84();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C6FE64();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = 2;
  *(a3 + 8) = 0;
  v15 = type metadata accessor for WellKnownJWKSRequest();
  v27 = a3 + v15[7];
  v28 = a1;
  *v27 = xmmword_251C74660;
  v29 = a2;

  sub_251C70FC4();
  v16 = sub_251C71084();
  v18 = v17;

  if (v16 == 47 && v18 == 0xE100000000000000)
  {
  }

  else
  {
    v19 = sub_251C719D4();

    if ((v19 & 1) == 0)
    {
      MEMORY[0x25308CDA0](47, 0xE100000000000000);
    }
  }

  MEMORY[0x25308CDA0](0xD000000000000015, 0x8000000251C8A840);
  v21 = v28;
  v20 = v29;
  sub_251C15BE8(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_251AF3ADC(v9);
    type metadata accessor for WebRequestError();
    sub_251AF3B38();
    swift_allocError();
    *v22 = v21;
    v22[1] = v20;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_251A8596C(*v27, *(v27 + 8));
  }

  else
  {

    v24 = *(v11 + 32);
    v24(v14, v9, v10);
    result = (v24)(a3 + v15[6], v14, v10);
    v25 = (a3 + v15[8]);
    *v25 = 0x6F6E4B2D6C6C6557;
    v25[1] = 0xEF534B574A206E77;
  }

  return result;
}

void sub_251AF3A84()
{
  if (!qword_2813E7520)
  {
    sub_251C6FE64();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E7520);
    }
  }
}

uint64_t sub_251AF3ADC(uint64_t a1)
{
  sub_251AF3A84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_251AF3B38()
{
  result = qword_27F479B48;
  if (!qword_27F479B48)
  {
    type metadata accessor for WebRequestError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B48);
  }

  return result;
}

id sub_251AF3BB8()
{
  v0 = objc_allocWithZone(MEMORY[0x277CCA8B8]);
  v1 = sub_251C70EE4();
  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t *sub_251AF3C24()
{
  sub_251BD5744(v11);
  type metadata accessor for IssuerDirectoryDownloadTaskManager();
  v0 = swift_allocObject();
  v1 = v12;
  v2 = v13;
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  v4 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  v8 = sub_251B14AC4(v6, 0, v0, v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t *sub_251AF3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  swift_defaultActor_initialize();
  v4[14] = 0;
  *(v4 + 15) = xmmword_251C76C60;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = a3;
  v4[20] = a4;
  swift_getMetatypeMetadata();
  v4[21] = sub_251C70F74();
  v4[22] = v10;
  return v4;
}

uint64_t sub_251AF3DFC()
{
  v38 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_251C70764();
  __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = sub_251C70744();
  v4 = sub_251C713F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_251B10780(*(v5 + 168), *(v5 + 176), &v37);
    _os_log_impl(&dword_251A6C000, v3, v4, "%s activating", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v8 = v0[8];
  if (*(v8 + 112))
  {
    v9 = v0[8];

    v10 = sub_251C70744();
    v11 = sub_251C713D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[8];
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v37 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_251B10780(*(v12 + 168), *(v12 + 176), &v37);
      _os_log_impl(&dword_251A6C000, v10, v11, "%s is already activated, ignoring subsequent activation", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x25308E2B0](v14, -1, -1);
      MEMORY[0x25308E2B0](v13, -1, -1);
    }

    goto LABEL_10;
  }

  v15 = *(v8 + 144);
  v16 = (*(v8 + 136))();
  type metadata accessor for WrappedScheduler();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = v16;
  [v18 setPreregistered_];
  v20 = *(v8 + 152);
  v19 = *(v8 + 160);
  v21 = swift_allocObject();
  *(v21 + 16) = v8;
  *(v21 + 24) = v17;
  *(v21 + 32) = v20;
  *(v21 + 40) = v19;
  *(v21 + 48) = xmmword_251C76C60;
  v0[6] = sub_251AF4DF0;
  v0[7] = v21;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_251BC69D0;
  v0[5] = &block_descriptor_3;
  v22 = _Block_copy(v0 + 2);
  v23 = v0[7];

  [v18 scheduleWithBlock_];
  _Block_release(v22);
  v24 = *(v8 + 112);
  *(v8 + 112) = v18;
  v25 = v18;

  v10 = sub_251C70744();
  v26 = sub_251C713B4();

  if (os_log_type_enabled(v10, v26))
  {
    v27 = v0[8];
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v37 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_251B10780(*(v27 + 168), *(v27 + 176), &v37);
    *(v28 + 12) = 2080;
    v30 = [*(v17 + 16) identifier];
    v31 = sub_251C70F14();
    v33 = v32;

    v34 = sub_251B10780(v31, v33, &v37);

    *(v28 + 14) = v34;
    _os_log_impl(&dword_251A6C000, v10, v26, "%s background activity “%s” is set up", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v29, -1, -1);
    MEMORY[0x25308E2B0](v28, -1, -1);

LABEL_10:

    goto LABEL_11;
  }

LABEL_11:
  v35 = v0[1];

  return v35();
}

uint64_t sub_251AF42E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8)
{
  sub_251AF4E18();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v20 = sub_251C70764();
  __swift_project_value_buffer(v20, qword_2813E8130);

  v21 = sub_251C70744();
  v22 = sub_251C713F4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v47 = v45;
    *v23 = 136315394;
    *(v23 + 4) = sub_251B10780(*(a3 + 168), *(a3 + 176), &v47);
    *(v23 + 12) = 2080;
    v24 = [*(a4 + 16) identifier];
    v44 = v22;
    v25 = a1;
    v26 = v24;
    v27 = sub_251C70F14();
    v43 = v21;
    v28 = v27;
    v46 = a3;
    v29 = a5;
    v30 = a4;
    v31 = v19;
    v32 = a6;
    v33 = a2;
    v35 = v34;

    a1 = v25;
    v36 = sub_251B10780(v28, v35, &v47);
    a2 = v33;
    a6 = v32;
    v19 = v31;
    a4 = v30;
    a5 = v29;
    a3 = v46;

    *(v23 + 14) = v36;
    v37 = v43;
    _os_log_impl(&dword_251A6C000, v43, v44, "%s scheduled to execute activity “%s”", v23, 0x16u);
    v38 = v45;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v38, -1, -1);
    MEMORY[0x25308E2B0](v23, -1, -1);
  }

  else
  {
  }

  v39 = sub_251C71214();
  (*(*(v39 - 8) + 56))(v19, 1, 1, v39);
  v40 = swift_allocObject();
  *(v40 + 16) = 0;
  *(v40 + 24) = 0;
  *(v40 + 32) = a5;
  *(v40 + 40) = a6;
  *(v40 + 48) = a3;
  *(v40 + 56) = a4;
  *(v40 + 64) = a7;
  *(v40 + 72) = a1;
  *(v40 + 80) = a2;
  *(v40 + 88) = a8;

  sub_251C56428(0, 0, v19, &unk_251C76D68, v40);
}

uint64_t sub_251AF461C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 80) = a2;
  *(v10 + 64) = a10;
  *(v10 + 72) = v12;
  *(v10 + 56) = a1;
  *(v10 + 40) = a8;
  *(v10 + 48) = a9;
  *(v10 + 24) = a6;
  *(v10 + 32) = a7;
  return MEMORY[0x2822009F8](sub_251AF4654, 0, 0);
}

uint64_t sub_251AF4654()
{
  v1 = *(v0 + 32);
  *(v0 + 88) = (*(v0 + 24))();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_251AF46F8;

  return sub_251B11B20(2);
}

uint64_t sub_251AF46F8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_251AF4A5C;
  }

  else
  {
    v3 = sub_251AF480C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AF480C()
{
  v23 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = sub_251C70764();
  __swift_project_value_buffer(v3, qword_2813E8130);

  v4 = sub_251C70744();
  v5 = sub_251C713F4();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_251B10780(*(v7 + 168), *(v7 + 176), &v22);
    *(v8 + 12) = 2080;
    v10 = [*(v6 + 16) identifier];
    v11 = sub_251C70F14();
    v13 = v12;

    v14 = sub_251B10780(v11, v13, &v22);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_251A6C000, v4, v5, "%s: activity “%s” succeeded", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v15 = *(v0 + 88);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v18 = *(v0 + 56);
  v19 = *(*(v0 + 48) + 16);
  [v19 setInterval_];
  [v19 setTolerance_];
  v17(1);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_251AF4A5C()
{
  v31 = v0;
  v1 = *(v0 + 88);

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 104);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = sub_251C70764();
  __swift_project_value_buffer(v5, qword_2813E8130);

  v6 = v2;
  v7 = sub_251C70744();
  v8 = sub_251C713D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 104);
    v11 = *(v0 + 40);
    v10 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v12 = 136315650;
    *(v12 + 4) = sub_251B10780(*(v11 + 168), *(v11 + 176), &v30);
    *(v12 + 12) = 2080;
    v14 = [*(v10 + 16) identifier];
    v15 = sub_251C70F14();
    v17 = v16;

    v18 = sub_251B10780(v15, v17, &v30);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    *(v0 + 16) = v9;
    v19 = v9;
    sub_251A82284();
    v20 = sub_251C70F74();
    v22 = sub_251B10780(v20, v21, &v30);

    *(v12 + 24) = v22;
    _os_log_impl(&dword_251A6C000, v7, v8, "%s: activity “%s” failed: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v23 = *(v0 + 104);
  v24 = *(v0 + 80);
  v26 = *(v0 + 64);
  v25 = *(v0 + 72);
  v27 = *(*(v0 + 48) + 16);
  [v27 setInterval_];
  [v27 setTolerance_];
  v26(1);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_251AF4D14()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 160);

  v3 = *(v0 + 176);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_251AF4D94()
{

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_251AF4E18()
{
  if (!qword_2813E1E00)
  {
    sub_251C71214();
    v0 = sub_251C71574();
    if (!v1)
    {
      atomic_store(v0, &qword_2813E1E00);
    }
  }
}

uint64_t sub_251AF4E70(uint64_t a1)
{
  v4 = *(v1 + 3);
  v16 = *(v1 + 2);
  v5 = *(v1 + 4);
  v6 = *(v1 + 5);
  v7 = *(v1 + 6);
  v8 = *(v1 + 7);
  v9 = v1[8];
  v11 = *(v1 + 9);
  v10 = *(v1 + 10);
  v12 = v1[11];
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_251AF4F78;

  return sub_251AF461C(v9, v12, a1, v16, v4, v5, v6, v7, v8, v11);
}

uint64_t sub_251AF4F78()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t *sub_251AF506C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;
  swift_getMetatypeMetadata();
  v4[2] = sub_251C70F74();
  v4[3] = v9;
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
  return v4;
}

uint64_t sub_251AF50FC(uint64_t a1)
{
  v2[49] = a1;
  v2[50] = v1;
  v3 = sub_251C70074();
  v2[51] = v3;
  v4 = *(v3 - 8);
  v2[52] = v4;
  v5 = *(v4 + 64) + 15;
  v2[53] = swift_task_alloc();
  v6 = sub_251C6FE64();
  v2[54] = v6;
  v7 = *(v6 - 8);
  v2[55] = v7;
  v8 = *(v7 + 64) + 15;
  v2[56] = swift_task_alloc();
  sub_251AF3A84();
  v10 = *(*(v9 - 8) + 64) + 15;
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251AF5250, 0, 0);
}

uint64_t sub_251AF5250()
{
  v36 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = sub_251C70764();
  v0[59] = __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = sub_251C70744();
  v4 = sub_251C713C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[50];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v35 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(v5 + 16), *(v5 + 24), &v35);
    *(v6 + 12) = 2080;
    v8 = [*(v5 + 32) webURL];
    if (v8)
    {
      v9 = v0[57];
      v10 = v8;
      sub_251C6FE14();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v13 = v0[57];
    v12 = v0[58];
    v14 = v0[54];
    v15 = v0[55];
    (*(v15 + 56))(v13, v11, 1, v14);
    sub_251AF80B8(v13, v12);
    v16 = (*(v15 + 48))(v12, 1, v14);
    v17 = v0[58];
    if (v16 == 1)
    {
      sub_251AF3ADC(v0[58]);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v20 = v0[54];
      v21 = v0[55];
      v18 = sub_251C6FDA4();
      v19 = v22;
      (*(v21 + 8))(v17, v20);
    }

    v0[45] = v18;
    v0[46] = v19;
    sub_251AD56B0();
    sub_251C719F4();
    v23 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v24 = sub_251C70F74();
    v26 = sub_251B10780(v24, v25, &v35);

    *(v6 + 14) = v26;
    _os_log_impl(&dword_251A6C000, v3, v4, "%s) Calling downloadDocument for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v27 = v0[50];
  v29 = v27[6];
  v28 = v27[7];
  v31 = v27[4];
  v30 = v27[5];
  v0[60] = v31;
  v32 = swift_task_alloc();
  v0[61] = v32;
  *v32 = v0;
  v32[1] = sub_251AF5594;
  v33 = v0[56];

  return sub_251B1DB90(v33, v31, 0, v30, v29, v28);
}

uint64_t sub_251AF5594()
{
  v2 = *(*v1 + 488);
  v5 = *v1;
  *(*v1 + 496) = v0;

  if (v0)
  {
    v3 = sub_251AF5C98;
  }

  else
  {
    v3 = sub_251AF56A8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AF56A8()
{
  v1 = *(v0 + 448);
  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 408);
  v5 = *(v0 + 392);
  v6 = [*(v0 + 480) identifier];
  sub_251C70054();

  v7 = sub_251C70034();
  *(v0 + 504) = v7;
  (*(v3 + 8))(v2, v4);
  v8 = sub_251C6FDD4();
  *(v0 + 512) = v8;
  *(v0 + 80) = v0;
  *(v0 + 88) = sub_251AF5830;
  v9 = swift_continuation_init();
  sub_251AF7F78();
  *(v0 + 264) = v10;
  *(v0 + 208) = MEMORY[0x277D85DD0];
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_251BB5ED4;
  *(v0 + 232) = &block_descriptor_20;
  *(v0 + 240) = v9;
  [v5 markDownloadCompleteForAttachmentWithIdentifier:v7 fileURL:v8 completion:v0 + 208];

  return MEMORY[0x282200938](v0 + 80);
}

uint64_t sub_251AF5830()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 520) = v2;
  if (v2)
  {
    v3 = sub_251AF5FDC;
  }

  else
  {
    v3 = sub_251AF5940;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AF5940()
{
  v20 = v0;
  v1 = *(v0 + 504);
  v2 = *(v0 + 472);
  v3 = *(v0 + 400);

  v4 = sub_251C70744();
  v5 = sub_251C713C4();

  v6 = os_log_type_enabled(v4, v5);
  v8 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 432);
  if (v6)
  {
    v10 = *(v0 + 400);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_251B10780(*(v10 + 16), *(v10 + 24), &v19);
    _os_log_impl(&dword_251A6C000, v4, v5, "%s Successfully completed downloadDocument", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  (*(v8 + 8))(v7, v9);
  v14 = *(v0 + 456);
  v13 = *(v0 + 464);
  v15 = *(v0 + 448);
  v16 = *(v0 + 424);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_251AF5ADC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 552) = v2;
  if (v2)
  {
    v3 = sub_251AF6354;
  }

  else
  {
    v3 = sub_251AF5BEC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AF5BEC()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);

  swift_willThrow();
  v3 = *(v0 + 528);
  v5 = *(v0 + 456);
  v4 = *(v0 + 464);
  v6 = *(v0 + 448);
  v7 = *(v0 + 424);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_251AF5C98()
{
  v31 = v0;
  v1 = v0[62];
  v0[66] = v1;
  v2 = v0[59];
  v3 = v0[50];

  v4 = v1;
  v5 = sub_251C70744();
  v6 = sub_251C713D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[50];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_251B10780(*(v7 + 16), *(v7 + 24), &v30);
    *(v8 + 12) = 2080;
    v0[48] = v1;
    v10 = v1;
    sub_251A82284();
    sub_251C719F4();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v12 = sub_251C70F74();
    v14 = sub_251B10780(v12, v13, &v30);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_251A6C000, v5, v6, "%s Error in downloadDocument: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v15 = v0[60];
  v17 = v0[52];
  v16 = v0[53];
  v18 = v0[51];
  v19 = [v15 identifier];
  sub_251C70054();

  v20 = sub_251C70034();
  v0[67] = v20;
  (*(v17 + 8))(v16, v18);
  swift_getErrorValue();
  v21 = v0[42];
  v22 = sub_251BC0124(v0[43], v0[44]);
  v23 = sub_251C6FD74();
  v0[68] = v23;

  v24 = [v15 retryCount];
  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
  }

  else
  {
    v26 = v0[49];
    v0[2] = v0;
    v0[3] = sub_251AF5ADC;
    v27 = swift_continuation_init();
    sub_251AF7F78();
    v0[25] = v28;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_251BB5ED4;
    v0[21] = &block_descriptor_16;
    v0[22] = v27;
    [v26 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v20 errorStatus:1 lastError:v23 retryCount:v25 completion:v0 + 18];
    v24 = (v0 + 2);
  }

  return MEMORY[0x282200938](v24);
}

uint64_t sub_251AF5FDC()
{
  v37 = v0;
  v1 = v0[65];
  v3 = v0[63];
  v2 = v0[64];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[54];
  swift_willThrow();
  (*(v5 + 8))(v4, v6);

  v7 = v0[65];
  v0[66] = v7;
  v8 = v0[59];
  v9 = v0[50];

  v10 = v7;
  v11 = sub_251C70744();
  v12 = sub_251C713D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[50];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_251B10780(*(v13 + 16), *(v13 + 24), v36);
    *(v14 + 12) = 2080;
    v0[48] = v7;
    v16 = v7;
    sub_251A82284();
    sub_251C719F4();
    v17 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v18 = sub_251C70F74();
    v20 = sub_251B10780(v18, v19, v36);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v11, v12, "%s Error in downloadDocument: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v15, -1, -1);
    MEMORY[0x25308E2B0](v14, -1, -1);
  }

  v21 = v0[60];
  v23 = v0[52];
  v22 = v0[53];
  v24 = v0[51];
  v25 = [v21 identifier];
  sub_251C70054();

  v26 = sub_251C70034();
  v0[67] = v26;
  (*(v23 + 8))(v22, v24);
  swift_getErrorValue();
  v27 = v0[42];
  v28 = sub_251BC0124(v0[43], v0[44]);
  v29 = sub_251C6FD74();
  v0[68] = v29;

  v30 = [v21 retryCount];
  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    v32 = v0[49];
    v0[2] = v0;
    v0[3] = sub_251AF5ADC;
    v33 = swift_continuation_init();
    sub_251AF7F78();
    v0[25] = v34;
    v0[18] = MEMORY[0x277D85DD0];
    v0[19] = 1107296256;
    v0[20] = sub_251BB5ED4;
    v0[21] = &block_descriptor_16;
    v0[22] = v33;
    [v32 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v26 errorStatus:1 lastError:v29 retryCount:v31 completion:v0 + 18];
    v30 = (v0 + 2);
  }

  return MEMORY[0x282200938](v30);
}

uint64_t sub_251AF6354()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  swift_willThrow();

  v5 = v0[69];
  v7 = v0[57];
  v6 = v0[58];
  v8 = v0[56];
  v9 = v0[53];

  v10 = v0[1];

  return v10();
}

uint64_t sub_251AF640C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[69] = v3;
  v4[68] = a3;
  v4[67] = a2;
  v4[66] = a1;
  v5 = sub_251C70074();
  v4[70] = v5;
  v6 = *(v5 - 8);
  v4[71] = v6;
  v7 = *(v6 + 64) + 15;
  v4[72] = swift_task_alloc();
  sub_251AF3A84();
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_251AF651C, 0, 0);
}

uint64_t sub_251AF651C()
{
  v33 = v0;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v1 = v0[69];
  v2 = sub_251C70764();
  v0[76] = __swift_project_value_buffer(v2, qword_2813E8130);

  v3 = sub_251C70744();
  v4 = sub_251C713C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[69];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v32 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_251B10780(*(v5 + 16), *(v5 + 24), &v32);
    *(v6 + 12) = 2080;
    v8 = [*(v5 + 32) webURL];
    if (v8)
    {
      v9 = v0[74];
      v10 = v8;
      sub_251C6FE14();

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }

    v12 = v0[75];
    v13 = v0[74];
    v14 = sub_251C6FE64();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v13, v11, 1, v14);
    sub_251AF80B8(v13, v12);
    v16 = (*(v15 + 48))(v12, 1, v14);
    v17 = v0[75];
    if (v16 == 1)
    {
      sub_251AF3ADC(v0[75]);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v18 = sub_251C6FDA4();
      v19 = v20;
      (*(v15 + 8))(v17, v14);
    }

    v0[61] = v18;
    v0[62] = v19;
    sub_251AD56B0();
    sub_251C719F4();
    v21 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v22 = sub_251C70F74();
    v24 = sub_251B10780(v22, v23, &v32);

    *(v6 + 14) = v24;
    _os_log_impl(&dword_251A6C000, v3, v4, "%s Calling queryFHIRServer for %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v7, -1, -1);
    MEMORY[0x25308E2B0](v6, -1, -1);
  }

  v25 = v0[69];
  v27 = v25[6];
  v26 = v25[7];
  v29 = v25[4];
  v28 = v25[5];
  v0[77] = v29;
  v30 = swift_task_alloc();
  v0[78] = v30;
  *v30 = v0;
  v30[1] = sub_251AF68A8;

  return sub_251B1EE30(v29, 0, v28, v27, v26);
}

uint64_t sub_251AF68A8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 624);
  v8 = *v3;
  v4[79] = a1;
  v4[80] = a2;
  v4[81] = v2;

  if (v2)
  {
    v6 = sub_251AF730C;
  }

  else
  {
    v6 = sub_251AF69C4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_251AF69C4()
{
  v1 = v0[80];
  v2 = v0[79];
  v3 = v0[73];
  v4 = sub_251C6FE64();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_251A858C4(v2, v1);
  v6 = sub_251C6FEC4();
  v7 = 0;
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    v8 = v0[73];
    v7 = sub_251C6FDD4();
    (*(v5 + 8))(v8, v4);
  }

  v9 = v0[80];
  v10 = v0[79];
  v11 = v0[68];
  v12 = [objc_allocWithZone(MEMORY[0x277D12378]) initWithData:v6 sourceURL:v7 FHIRVersion:v0[67]];
  v0[82] = v12;

  sub_251A83028(v10, v9);
  v0[10] = v0;
  v0[15] = v0 + 65;
  v0[11] = sub_251AF6C08;
  v13 = swift_continuation_init();
  sub_251AF7FFC();
  v0[41] = v14;
  v0[34] = MEMORY[0x277D85DD0];
  v0[35] = 1107296256;
  v0[36] = sub_251AB5E04;
  v0[37] = &block_descriptor_9;
  v0[38] = v13;
  [v11 extractAttachmentContentFromFHIRResource:v12 completion:v0 + 34];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_251AF6C08()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 664) = v2;
  if (v2)
  {
    v3 = sub_251AF7654;
  }

  else
  {
    v3 = sub_251AF6D18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AF6D18()
{
  v1 = v0[77];
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[66];
  v6 = v0[65];
  v0[84] = v6;
  v7 = [v1 identifier];
  sub_251C70054();

  v8 = sub_251C70034();
  v0[85] = v8;
  (*(v3 + 8))(v2, v4);
  v0[18] = v0;
  v0[19] = sub_251AF6E9C;
  v9 = swift_continuation_init();
  sub_251AF7F78();
  v0[49] = v10;
  v0[42] = MEMORY[0x277D85DD0];
  v0[43] = 1107296256;
  v0[44] = sub_251BB5ED4;
  v0[45] = &block_descriptor_12;
  v0[46] = v9;
  [v5 markDataAvailableForAttachmentWithIdentifier:v8 attachmentContent:v6 completion:v0 + 42];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_251AF6E9C()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 688) = v2;
  if (v2)
  {
    v3 = sub_251AF79C0;
  }

  else
  {
    v3 = sub_251AF6FAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AF6FAC()
{
  v20 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 552);

  v3 = sub_251C70744();
  v4 = sub_251C713C4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 672);
  v7 = *(v0 + 656);
  v8 = *(v0 + 640);
  v9 = *(v0 + 632);
  if (v5)
  {
    v10 = *(v0 + 552);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_251B10780(*(v10 + 16), *(v10 + 24), &v19);
    _os_log_impl(&dword_251A6C000, v3, v4, "%s Successfully completed queryFHIRServer", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x25308E2B0](v12, -1, -1);
    MEMORY[0x25308E2B0](v11, -1, -1);
  }

  sub_251A83028(v9, v8);

  v13 = *(v0 + 600);
  v14 = *(v0 + 592);
  v15 = *(v0 + 584);
  v16 = *(v0 + 576);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_251AF714C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 720) = v2;
  if (v2)
  {
    v3 = sub_251AF7D3C;
  }

  else
  {
    v3 = sub_251AF725C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_251AF725C()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);

  swift_willThrow();
  v3 = *(v0 + 696);
  v4 = *(v0 + 600);
  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = *(v0 + 576);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_251AF730C()
{
  v31 = v0;
  v1 = v0[81];
  v0[87] = v1;
  v2 = v0[76];
  v3 = v0[69];

  v4 = v1;
  v5 = sub_251C70744();
  v6 = sub_251C713D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[69];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v30 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_251B10780(*(v7 + 16), *(v7 + 24), &v30);
    *(v8 + 12) = 2080;
    v0[64] = v1;
    v10 = v1;
    sub_251A82284();
    sub_251C719F4();
    v11 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v12 = sub_251C70F74();
    v14 = sub_251B10780(v12, v13, &v30);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_251A6C000, v5, v6, "%s Error in queryFHIRServer: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v9, -1, -1);
    MEMORY[0x25308E2B0](v8, -1, -1);
  }

  v15 = v0[77];
  v16 = v0[72];
  v17 = v0[71];
  v18 = v0[70];
  v19 = [v15 identifier];
  sub_251C70054();

  v20 = sub_251C70034();
  v0[88] = v20;
  (*(v17 + 8))(v16, v18);
  swift_getErrorValue();
  v21 = v0[58];
  v22 = sub_251BC0124(v0[59], v0[60]);
  v23 = sub_251C6FD74();
  v0[89] = v23;

  v24 = [v15 retryCount];
  v25 = v24 + 1;
  if (__OFADD__(v24, 1))
  {
    __break(1u);
  }

  else
  {
    v26 = v0[66];
    v0[2] = v0;
    v0[3] = sub_251AF714C;
    v27 = swift_continuation_init();
    sub_251AF7F78();
    v0[33] = v28;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_251BB5ED4;
    v0[29] = &block_descriptor_4;
    v0[30] = v27;
    [v26 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v20 errorStatus:1 lastError:v23 retryCount:v25 completion:v0 + 26];
    v24 = (v0 + 2);
  }

  return MEMORY[0x282200938](v24);
}

uint64_t sub_251AF7654()
{
  v35 = v0;
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[80];
  v4 = v0[79];
  swift_willThrow();
  sub_251A83028(v4, v3);

  v5 = v0[83];
  v0[87] = v5;
  v6 = v0[76];
  v7 = v0[69];

  v8 = v5;
  v9 = sub_251C70744();
  v10 = sub_251C713D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[69];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v34[0] = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_251B10780(*(v11 + 16), *(v11 + 24), v34);
    *(v12 + 12) = 2080;
    v0[64] = v5;
    v14 = v5;
    sub_251A82284();
    sub_251C719F4();
    v15 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v16 = sub_251C70F74();
    v18 = sub_251B10780(v16, v17, v34);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_251A6C000, v9, v10, "%s Error in queryFHIRServer: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v13, -1, -1);
    MEMORY[0x25308E2B0](v12, -1, -1);
  }

  v19 = v0[77];
  v20 = v0[72];
  v21 = v0[71];
  v22 = v0[70];
  v23 = [v19 identifier];
  sub_251C70054();

  v24 = sub_251C70034();
  v0[88] = v24;
  (*(v21 + 8))(v20, v22);
  swift_getErrorValue();
  v25 = v0[58];
  v26 = sub_251BC0124(v0[59], v0[60]);
  v27 = sub_251C6FD74();
  v0[89] = v27;

  v28 = [v19 retryCount];
  v29 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    __break(1u);
  }

  else
  {
    v30 = v0[66];
    v0[2] = v0;
    v0[3] = sub_251AF714C;
    v31 = swift_continuation_init();
    sub_251AF7F78();
    v0[33] = v32;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_251BB5ED4;
    v0[29] = &block_descriptor_4;
    v0[30] = v31;
    [v30 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v24 errorStatus:1 lastError:v27 retryCount:v29 completion:v0 + 26];
    v28 = (v0 + 2);
  }

  return MEMORY[0x282200938](v28);
}

uint64_t sub_251AF79C0()
{
  v37 = v0;
  v1 = v0[86];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[82];
  v5 = v0[80];
  v6 = v0[79];
  swift_willThrow();
  sub_251A83028(v6, v5);

  v7 = v0[86];
  v0[87] = v7;
  v8 = v0[76];
  v9 = v0[69];

  v10 = v7;
  v11 = sub_251C70744();
  v12 = sub_251C713D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = v0[69];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v36[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_251B10780(*(v13 + 16), *(v13 + 24), v36);
    *(v14 + 12) = 2080;
    v0[64] = v7;
    v16 = v7;
    sub_251A82284();
    sub_251C719F4();
    v17 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v18 = sub_251C70F74();
    v20 = sub_251B10780(v18, v19, v36);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_251A6C000, v11, v12, "%s Error in queryFHIRServer: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v15, -1, -1);
    MEMORY[0x25308E2B0](v14, -1, -1);
  }

  v21 = v0[77];
  v22 = v0[72];
  v23 = v0[71];
  v24 = v0[70];
  v25 = [v21 identifier];
  sub_251C70054();

  v26 = sub_251C70034();
  v0[88] = v26;
  (*(v23 + 8))(v22, v24);
  swift_getErrorValue();
  v27 = v0[58];
  v28 = sub_251BC0124(v0[59], v0[60]);
  v29 = sub_251C6FD74();
  v0[89] = v29;

  v30 = [v21 retryCount];
  v31 = v30 + 1;
  if (__OFADD__(v30, 1))
  {
    __break(1u);
  }

  else
  {
    v32 = v0[66];
    v0[2] = v0;
    v0[3] = sub_251AF714C;
    v33 = swift_continuation_init();
    sub_251AF7F78();
    v0[33] = v34;
    v0[26] = MEMORY[0x277D85DD0];
    v0[27] = 1107296256;
    v0[28] = sub_251BB5ED4;
    v0[29] = &block_descriptor_4;
    v0[30] = v33;
    [v32 updateErrorStatusAndRetryCountForAttachmentWithIdentifier:v26 errorStatus:1 lastError:v29 retryCount:v31 completion:v0 + 26];
    v30 = (v0 + 2);
  }

  return MEMORY[0x282200938](v30);
}

uint64_t sub_251AF7D3C()
{
  v1 = v0[90];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  swift_willThrow();

  v5 = v0[90];
  v6 = v0[75];
  v7 = v0[74];
  v8 = v0[73];
  v9 = v0[72];

  v10 = v0[1];

  return v10();
}

uint64_t sub_251AF7DF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);
  v3 = *(v0 + 48);

  return swift_deallocClassInstance();
}

uint64_t ClinicalDocumentDownloadTaskError.hashValue.getter()
{
  v1 = *v0;
  sub_251C71AA4();
  MEMORY[0x25308D860](v1);
  return sub_251C71AD4();
}

unint64_t sub_251AF7EF0()
{
  result = qword_27F479B60;
  if (!qword_27F479B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B60);
  }

  return result;
}

void sub_251AF7F78()
{
  if (!qword_27F479F40)
  {
    sub_251A82284();
    v0 = sub_251C71224();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479F40);
    }
  }
}

void sub_251AF7FFC()
{
  if (!qword_27F479B68)
  {
    sub_251AF806C();
    sub_251A82284();
    v0 = sub_251C71224();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479B68);
    }
  }
}

unint64_t sub_251AF806C()
{
  result = qword_27F479B70;
  if (!qword_27F479B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F479B70);
  }

  return result;
}

uint64_t sub_251AF80B8(uint64_t a1, uint64_t a2)
{
  sub_251AF3A84();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AF816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574)
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

uint64_t sub_251AF8204(uint64_t a1)
{
  v2 = sub_251AF844C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_251AF8240(uint64_t a1)
{
  v2 = sub_251AF844C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_251AF827C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_251AF83F0();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_251AF844C();
  sub_251C71B04();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = sub_251C71874();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

void sub_251AF83F0()
{
  if (!qword_27F479B78)
  {
    sub_251AF844C();
    v0 = sub_251C718E4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479B78);
    }
  }
}

unint64_t sub_251AF844C()
{
  result = qword_27F479B80;
  if (!qword_27F479B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B80);
  }

  return result;
}

unint64_t sub_251AF84B4()
{
  result = qword_27F479B88;
  if (!qword_27F479B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B88);
  }

  return result;
}

unint64_t sub_251AF850C()
{
  result = qword_27F479B90;
  if (!qword_27F479B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B90);
  }

  return result;
}

unint64_t sub_251AF8564()
{
  result = qword_27F479B98;
  if (!qword_27F479B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479B98);
  }

  return result;
}

uint64_t type metadata accessor for ClinicalSharingCloudStandardAPI()
{
  result = qword_2813E31F0;
  if (!qword_2813E31F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251AF862C()
{
  result = sub_251C6FE64();
  if (v1 <= 0x3F)
  {
    result = sub_251A8223C(319, &qword_2813E1DC0, 0x277CCAD30);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251AF86D4(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v28 = a1;
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v34 = *(v4 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_251C6F9A4();
  v6 = *(v31 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v31);
  v33 = type metadata accessor for PBPushBlobsResponse;
  sub_251AFAD78(0, &qword_27F479C00, type metadata accessor for PBPushBlobsResponse);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  sub_251AFAE30();
  v14 = *(v13 - 8);
  v38 = v13;
  v39 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_251AF8B84(a1, a2);
  sub_251AFAF34(0, &qword_27F479BA8, sub_251AF95E4);
  type metadata accessor for PBPushBlobsResponse(0);
  sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
  sub_251C70B54();

  v18 = v31;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v31);
  v19 = v32;
  sub_251AF9F38(v29, v32);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = (v7 + *(v34 + 80) + v20) & ~*(v34 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v30;
  (*(v6 + 32))(v22 + v20, &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  sub_251AF9F9C(v19, v22 + v21);
  sub_251AFAF34(0, &qword_27F479C10, type metadata accessor for PBPushBlobsResponse);
  sub_251AF9760(&qword_27F479C18, &qword_27F479C00, v33);
  sub_251AF97B0(&qword_27F479C20, &qword_27F479C10, type metadata accessor for PBPushBlobsResponse);
  v23 = v36;
  sub_251C70BA4();

  (*(v37 + 8))(v12, v23);
  sub_251AFA034(&qword_27F479C28, sub_251AFAE30);
  v24 = v38;
  v25 = sub_251C70A94();
  (*(v39 + 8))(v17, v24);
  return v25;
}

uint64_t sub_251AF8B84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v5 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v6 = v5 - 8;
  v39 = *(v5 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v5);
  v38 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_251C6F9A4();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_251C712C4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AFAAF0();
  v17 = *(v16 - 8);
  v41 = v16;
  v42 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AFAB9C();
  v22 = *(v21 - 8);
  v43 = v21;
  v44 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v36 = &v36 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v3 + *(v6 + 32));
  sub_251C712D4();
  sub_251AF95E4();
  sub_251AFA034(&qword_27F479BE0, MEMORY[0x277CC9D10]);
  sub_251C70B54();
  (*(v12 + 8))(v15, v11);
  v26 = v37;
  (*(v8 + 16))(v10, a1, v37);
  v27 = v38;
  sub_251AF9F38(v3, v38);
  v28 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v29 = (v9 + *(v39 + 80) + v28) & ~*(v39 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v45;
  (*(v8 + 32))(v30 + v28, v10, v26);
  sub_251AF9F9C(v27, v30 + v29);
  sub_251AFAF34(0, &qword_27F479BA8, sub_251AF95E4);
  sub_251AFA034(&qword_27F479BF0, sub_251AFAAF0);
  sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
  v31 = v36;
  v32 = v41;
  sub_251C70BA4();

  (*(v42 + 8))(v20, v32);
  sub_251AFA034(&qword_27F479BF8, sub_251AFAB9C);
  v33 = v43;
  v34 = sub_251C70A94();
  (*(v44 + 8))(v31, v33);
  return v34;
}

uint64_t sub_251AF90E0(uint64_t a1, uint64_t a2)
{
  v30[0] = a1;
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  v36 = *(v4 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_251C6F9A4();
  v6 = *(v33 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v33);
  v32 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for PBDeleteBlobsResponse;
  sub_251AFAD78(0, &qword_27F479BA0, type metadata accessor for PBDeleteBlobsResponse);
  v9 = *(v8 - 8);
  v38 = v8;
  v39 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v30 - v11;
  sub_251AF965C();
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a2;
  v42 = sub_251AF8B84(a1, a2);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_251AF9800;
  *(v19 + 24) = v18;
  sub_251AFAF34(0, &qword_27F479BA8, sub_251AF95E4);
  type metadata accessor for PBDeleteBlobsResponse(0);
  sub_251AF97B0(&qword_27F479BB8, &qword_27F479BA8, sub_251AF95E4);
  sub_251C70B54();

  v21 = v32;
  v20 = v33;
  (*(v6 + 16))(v32, v30[0], v33);
  v22 = v34;
  sub_251AF9F38(v30[1], v34);
  v23 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v24 = (v7 + *(v36 + 80) + v23) & ~*(v36 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v31;
  (*(v6 + 32))(v25 + v23, v21, v20);
  sub_251AF9F9C(v22, v25 + v24);
  sub_251AFAF34(0, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
  sub_251AF9760(&qword_27F479BC8, &qword_27F479BA0, v35);
  sub_251AF97B0(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
  v26 = v38;
  sub_251C70BA4();

  (*(v39 + 8))(v12, v26);
  sub_251AFA034(&qword_27F479BD0, sub_251AF965C);
  v27 = v40;
  v28 = sub_251C70A94();
  (*(v41 + 8))(v17, v27);
  return v28;
}

void sub_251AF95E4()
{
  if (!qword_27F479BB0)
  {
    sub_251A8223C(255, &qword_27F479490, 0x277CCAA40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479BB0);
    }
  }
}

void sub_251AF965C()
{
  if (!qword_27F479BC0)
  {
    sub_251AFAD78(255, &qword_27F479BA0, type metadata accessor for PBDeleteBlobsResponse);
    sub_251AFAF34(255, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    sub_251AF9760(&qword_27F479BC8, &qword_27F479BA0, type metadata accessor for PBDeleteBlobsResponse);
    sub_251AF97B0(&qword_2813E21D8, &qword_2813E21D0, type metadata accessor for PBDeleteBlobsResponse);
    v0 = sub_251C70914();
    if (!v1)
    {
      atomic_store(v0, &qword_27F479BC0);
    }
  }
}

uint64_t sub_251AF9760(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AFAD78(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AF97B0(unint64_t *a1, unint64_t *a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AFAF34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AF9840(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1], a1[2]);
}

id sub_251AF9874@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const char *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v68 = a7;
  v69 = a6;
  v66 = a5;
  v67 = a4;
  v10 = sub_251C6F9A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v70 = &v61 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v61 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v61 - v21;
  v23 = *a1;
  if (a2 >= 1)
  {
    v77 = *a1;
    v24 = v23;
    sub_251A82284();
    if (swift_dynamicCast())
    {
      if (v76 == 6 && v72 == 1 && !(v74 | v73 | v75))
      {
        v65 = a2 - 1;
        if (qword_2813E26F8 != -1)
        {
          swift_once();
        }

        v25 = sub_251C70764();
        __swift_project_value_buffer(v25, qword_2813E8130);
        v26 = v11;
        v27 = *(v11 + 16);
        v27(v22, a3, v10);
        v28 = sub_251C70744();
        v64 = sub_251C713F4();
        if (os_log_type_enabled(v28, v64))
        {
          v63 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v77 = v62;
          v29 = v63;
          *v63 = 134218242;
          *(v29 + 4) = a2;
          *(v29 + 12) = 2080;
          v61 = v28;
          v27(v20, v22, v10);
          v27(v70, v20, v10);
          sub_251C719F4();
          v30 = HKSensitiveLogItem();
          swift_unknownObjectRelease();
          sub_251C715C4();
          swift_unknownObjectRelease();
          v31 = sub_251C70F74();
          v33 = v32;
          v34 = *(v26 + 8);
          v34(v20, v10);
          v34(v22, v10);
          v35 = sub_251B10780(v31, v33, &v77);

          v36 = v63;
          *(v63 + 14) = v35;
          v37 = v61;
          _os_log_impl(&dword_251A6C000, v61, v64, v66, v36, 0x16u);
          v38 = v62;
          __swift_destroy_boxed_opaque_existential_1(v62);
          MEMORY[0x25308E2B0](v38, -1, -1);
          MEMORY[0x25308E2B0](v36, -1, -1);
        }

        else
        {

          (*(v11 + 8))(v22, v10);
        }

        result = (v69)(a3, v65);
        *v68 = result;
        return result;
      }

      sub_251AFAA84(v72, v73, v74, v75, v76);
    }
  }

  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v39 = sub_251C70764();
  __swift_project_value_buffer(v39, qword_2813E8130);
  v40 = v11;
  v41 = *(v11 + 16);
  v41(v15, a3, v10);
  v42 = v23;
  v43 = sub_251C70744();
  v44 = sub_251C713D4();

  v71 = v43;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    LODWORD(v68) = v44;
    v46 = v45;
    v69 = swift_slowAlloc();
    v77 = v69;
    *v46 = 136315394;
    v41(v20, v15, v10);
    v41(v70, v20, v10);
    sub_251C719F4();
    v47 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v48 = sub_251C70F74();
    v50 = v49;
    v51 = *(v40 + 8);
    v51(v20, v10);
    v51(v15, v10);
    v52 = sub_251B10780(v48, v50, &v77);

    *(v46 + 4) = v52;
    *(v46 + 12) = 2080;
    v72 = v23;
    v53 = v23;
    sub_251A82284();
    sub_251C719F4();
    v54 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v55 = sub_251C70F74();
    v57 = sub_251B10780(v55, v56, &v77);

    *(v46 + 14) = v57;
    v58 = v71;
    _os_log_impl(&dword_251A6C000, v71, v68, "Error received for request. Request: %s. Error: %s", v46, 0x16u);
    v59 = v69;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v59, -1, -1);
    MEMORY[0x25308E2B0](v46, -1, -1);
  }

  else
  {

    (*(v40 + 8))(v15, v10);
  }

  swift_willThrow();
  return v23;
}

uint64_t sub_251AF9F38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AF9F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingCloudStandardAPI();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AFA034(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_251AFA07C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_251A858C4(*a1, v4);
  v6 = v5;
  sub_251A83028(v3, v4);
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v9 = sub_251C70764();
    __swift_project_value_buffer(v9, qword_2813E8130);
    v10 = v6;
    v11 = sub_251C70744();
    v12 = sub_251C713C4();
    v13 = &selRef_dateComponentsValue;
    if (os_log_type_enabled(v11, v12))
    {
      v14 = v10;
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = [v8 statusCode];

      _os_log_impl(&dword_251A6C000, v11, v12, "Received Response from Oslo Cloud: %ld", v15, 0xCu);
      v16 = v15;
      v10 = v14;
      v13 = &selRef_dateComponentsValue;
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    else
    {

      v11 = v10;
    }

    if ([v8 v13[45]] - 200 >= 0x64)
    {
      v18 = [v8 v13[45]] - 500;
      v19 = [v8 v13[45]];
      v20 = v19;
      if (v18 > 0x63)
      {
        v22 = v19 - 400;
        v23 = [v8 v13[45]];
        sub_251AC1148();
        swift_allocError();
        *v24 = v23;
        *(v24 + 8) = 0;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        if (v22 > 0x63)
        {
          v25 = 3;
        }

        else
        {
          v25 = 1;
        }

        *(v24 + 32) = v25;
      }

      else
      {
        sub_251AC1148();
        swift_allocError();
        *v21 = v20;
        *(v21 + 8) = 0;
        *(v21 + 16) = 0;
        *(v21 + 24) = 0;
        *(v21 + 32) = 2;
      }

      swift_willThrow();
    }

    else
    {
      *a2 = v8;
      sub_251A858C4(v3, v4);
      a2[1] = v3;
      a2[2] = v4;
    }
  }

  else
  {

    sub_251AC1148();
    swift_allocError();
    *v17 = 0u;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 6;
    swift_willThrow();
  }
}