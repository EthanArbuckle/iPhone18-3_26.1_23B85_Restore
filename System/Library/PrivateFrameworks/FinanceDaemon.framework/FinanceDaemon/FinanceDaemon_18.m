void sub_226C6EEB0(void *a1, uint64_t a2, char a3, uint64_t a4, void (*a5)(char *, uint64_t, void, uint64_t), void (*a6)(char *, uint64_t, void, uint64_t))
{
  v30 = a6;
  v31 = a5;
  v32 = a4;
  v9 = sub_226D6921C();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = sub_226D66DFC();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  v33 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  if (swift_dynamicCast())
  {
    sub_226C771A8(v22, v20, MEMORY[0x277CC6528]);
    v31(v20, a2, a3 & 1, v32);
    v24 = MEMORY[0x277CC6528];
    v25 = v20;
LABEL_5:
    sub_226C77210(v25, v24);
    goto LABEL_6;
  }

  v26 = a3;
  v27 = v32;

  v33 = a1;
  v28 = a1;
  if (swift_dynamicCast())
  {
    sub_226C771A8(v15, v13, MEMORY[0x277CC77F8]);
    v30(v13, a2, v26 & 1, v27);
    v24 = MEMORY[0x277CC77F8];
    v25 = v13;
    goto LABEL_5;
  }

LABEL_6:
}

uint64_t sub_226C6F118()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000029, 0x8000000226D85940);
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask();
  MEMORY[0x22AA8A510](*(v1 + *(PendingApplePayOrderTask + 20)), *(v1 + *(PendingApplePayOrderTask + 20) + 8));
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](*(v1 + *(PendingApplePayOrderTask + 24)), *(v1 + *(PendingApplePayOrderTask + 24) + 8));
  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226C77874(&qword_27D7A7018, MEMORY[0x277CC9260]);
  v3 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v3);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226C6F270(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226D6B03C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_226D6B49C();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask();
  v2[15] = PendingApplePayOrderTask;
  v10 = *(*(PendingApplePayOrderTask - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C6F3C8, 0, 0);
}

uint64_t sub_226C6F3C8()
{
  v54 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[8];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C775F8(v3, v2, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  sub_226C775F8(v3, v1, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[16];
  v9 = v0[17];
  if (v7)
  {
    v48 = v0[16];
    loga = v5;
    v10 = v0[14];
    v11 = v0[15];
    v50 = v6;
    v13 = v0[12];
    v12 = v0[13];
    v14 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v14 = 136315394;
    v15 = *(v11 + 24);
    v16 = (v9 + *(v11 + 20));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v9 + v15);
    v20 = *(v9 + v15 + 8);

    sub_226D6B45C();
    sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v21 = sub_226D6F1CC();
    v23 = v22;
    (*(v12 + 8))(v10, v13);
    sub_226C77210(v9, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    v24 = sub_226AC4530(v21, v23, &v53);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C77874(&qword_27D7A7018, MEMORY[0x277CC9260]);
    v25 = sub_226D6F1CC();
    v27 = v26;
    sub_226C77210(v48, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    v28 = sub_226AC4530(v25, v27, &v53);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_226AB4000, loga, v50, "Fetching order %s from web service %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v49, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  else
  {

    sub_226C77210(v8, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    sub_226C77210(v9, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  }

  v29 = v0[15];
  v30 = v0[11];
  v31 = v0[8];
  v32 = v29[6];
  v33 = (v31 + v29[5]);
  v34 = *v33;
  v35 = v33[1];
  v36 = *(v31 + v32);
  v37 = *(v31 + v32 + 8);
  v38 = (v31 + v29[7]);
  v39 = *v38;
  v40 = v38[1];

  sub_226D6B02C();
  result = sub_226D6B01C();
  if (result)
  {
    __break(1u);
  }

  else
  {
    v42 = v0[11];
    v43 = sub_226C0B798(v0[8]);
    v0[18] = v43;
    v44 = swift_task_alloc();
    v0[19] = v44;
    *(v44 + 16) = v43;
    *(v44 + 24) = v42;
    v45 = *(MEMORY[0x277CC7900] + 4);
    log = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
    v46 = swift_task_alloc();
    v0[20] = v46;
    *v46 = v0;
    v46[1] = sub_226C6F84C;
    v47 = MEMORY[0x277CC7EB8];

    return (log)(v0 + 2, &unk_226D797C8, v44, v47);
  }

  return result;
}

uint64_t sub_226C6F84C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_226C6FA50;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_226C6F968;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226C6F968()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  v9 = *(v0 + 48);
  v12 = *(v0 + 32);
  v13 = *(v0 + 16);
  (*(v6 + 8))(v5, v7);

  *v8 = v13;
  *(v8 + 16) = v12;
  *(v8 + 32) = v9;
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_226C6FA50()
{
  v1 = v0[18];
  v2 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];

  (*(v7 + 8))(v6, v8);

  v9 = v0[1];
  v10 = v0[21];

  return v9();
}

uint64_t sub_226C6FB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = a1;
  v5 = *(MEMORY[0x277CC7910] + 4);
  v8 = (*MEMORY[0x277CC7910] + MEMORY[0x277CC7910]);
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  *v6 = v3;
  v6[1] = sub_226C6FBDC;

  return v8(v3 + 16, a3);
}

uint64_t sub_226C6FBDC()
{
  v2 = *(*v1 + 64);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_226C6FD0C, 0, 0);
  }
}

uint64_t sub_226C6FD0C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  *(v3 + 32) = *(v0 + 48);
  *v3 = v1;
  *(v3 + 16) = v2;
  return (*(v0 + 8))();
}

void sub_226C6FD34(char *a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v152 = a7;
  v158 = a5;
  v159 = a6;
  v156 = a3;
  v157 = a4;
  v167 = a2;
  v155 = a8;
  v182 = *MEMORY[0x277D85DE8];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v9 = *(*(v153 - 8) + 64);
  MEMORY[0x28223BE20](v153);
  v154 = (&v142 - v10);
  v11 = type metadata accessor for OrderNotificationCenter.Continuation();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v149 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v14 = *(*(updated - 8) + 64);
  v15 = MEMORY[0x28223BE20](updated);
  v151 = (&v142 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v161 = (&v142 - v17);
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask();
  v19 = *(*(PendingApplePayOrderTask - 8) + 64);
  v20 = MEMORY[0x28223BE20](PendingApplePayOrderTask);
  v160 = &v142 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v162 = &v142 - v23;
  MEMORY[0x28223BE20](v22);
  v163 = &v142 - v24;
  v166 = sub_226D6B49C();
  v25 = *(v166 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v166);
  v29 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v142 - v30;
  sub_226D6AF9C();
  v32 = *(PendingApplePayOrderTask + 24);
  v33 = &a1[*(PendingApplePayOrderTask + 20)];
  v34 = *v33;
  v35 = *(v33 + 1);
  v164 = a1;
  v36 = &a1[v32];
  v37 = *&a1[v32];
  v38 = *(v36 + 1);

  sub_226D6B45C();
  v39 = v165;
  v40 = sub_226D6AF6C();
  if (v39)
  {
    (*(v25 + 8))(v31, v166);
  }

  else
  {
    v42 = v40;
    v43 = v163;
    v147 = v29;
    v148 = PendingApplePayOrderTask;
    v45 = *(v25 + 8);
    v44 = v25 + 8;
    v46 = v166;
    v45(v31, v166);
    v146 = v45;
    if (v42)
    {
      v145 = v44;
      v163 = v42;
      v165 = 0;
      v47 = sub_226B31FA8();
      v48 = type metadata accessor for WalletMessageUpdater();
      v49 = swift_allocObject();
      v50 = sub_226D69BFC();
      v143 = MEMORY[0x22AA85C90]();
      *(&v179 + 1) = &type metadata for ClassicOrderBiomeStream;
      *&v180[0] = &off_283A6D820;
      sub_226C02324(v180 + 8);
      v51 = sub_226D6B5EC();
      v52 = MEMORY[0x277CC7F68];
      v176 = v51;
      v177 = MEMORY[0x277CC7F68];
      __swift_allocate_boxed_opaque_existential_1(&v175);
      sub_226D6B58C();
      v173 = v51;
      v174 = v52;
      __swift_allocate_boxed_opaque_existential_1(&v172);
      sub_226D6B5AC();
      v53 = sub_226D6827C();
      v170 = v48;
      v171 = sub_226C77874(&qword_281062070, type metadata accessor for WalletMessageUpdater);
      *&v169 = v49;
      type metadata accessor for ManagedOrderImporter();
      inited = swift_initStackObject();
      *(inited + 312) = 0xD000000000000018;
      *(inited + 320) = 0x8000000226D81BA0;
      sub_226AC484C(&v175, inited + 232);
      sub_226AC484C(&v172, inited + 272);
      v55 = MEMORY[0x277CC7238];
      *(inited + 16) = v53;
      *(inited + 24) = v55;
      *(inited + 72) = v180[4];
      *(inited + 88) = v181;
      *(inited + 96) = &type metadata for WidgetRefresher;
      *(inited + 104) = v47;
      sub_226AC484C(&v169, inited + 112);
      v56 = v180[2];
      *(inited + 40) = v180[3];
      v57 = v178;
      *(inited + 168) = v179;
      v58 = v180[1];
      *(inited + 184) = v180[0];
      *(inited + 200) = v58;
      *(inited + 216) = v56;
      *(inited + 32) = v143;
      v144 = inited + 32;
      v59 = MEMORY[0x277CC79A8];
      *(inited + 56) = v50;
      *(inited + 64) = v59;
      *(inited + 152) = v57;
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v60 = sub_226D6E07C();
      v61 = __swift_project_value_buffer(v60, qword_28105F5C0);
      v62 = v164;
      v63 = v162;
      sub_226C775F8(v164, v162, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      v143 = v61;
      v64 = sub_226D6E05C();
      v65 = sub_226D6E9EC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v168[0] = v142;
        *v66 = 136315138;
        v67 = &v63[*(v148 + 20)];
        v69 = *v67;
        v68 = *(v67 + 1);
        v70 = &v63[*(v148 + 24)];
        v71 = *v70;
        v72 = *(v70 + 1);

        v73 = v147;
        sub_226D6B45C();
        sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28]);
        v74 = v166;
        v75 = sub_226D6F1CC();
        v77 = v76;
        v146(v73, v74);
        sub_226C77210(v162, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        v78 = sub_226AC4530(v75, v77, v168);

        *(v66 + 4) = v78;
        _os_log_impl(&dword_226AB4000, v64, v65, "Inserting or updating order %s", v66, 0xCu);
        v79 = v142;
        __swift_destroy_boxed_opaque_existential_0Tm(v142);
        MEMORY[0x22AA8BEE0](v79, -1, -1);
        v80 = v66;
        v62 = v164;
        MEMORY[0x22AA8BEE0](v80, -1, -1);
      }

      else
      {

        sub_226C77210(v63, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      }

      v98 = v161;
      v99 = v165;
      sub_226BBC0D4(v156, v157, v158, 257, v167, v161);
      v100 = v160;
      if (v99)
      {
        swift_setDeallocating();
        sub_226AC47B0(v144, &qword_27D7A7790, &unk_226D79770);
        sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
        sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
        __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
        v101 = *(inited + 320);
      }

      else
      {
        v102 = v163;
        v162 = [v163 requestAttemptCount];
        v103 = v151;
        sub_226C775F8(v98, v151, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v164 = *v103;
        if (EnumCaseMultiPayload <= 1)
        {
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77A8, &qword_226D75580);
          sub_226AC47B0(v103 + *(v105 + 48), &qword_27D7A7798, &unk_226D75570);
        }

        v106 = [v102 transactionIdentifier];
        [v164 setApplePayTransactionIdentifier_];

        v107 = v148;
        if (v152)
        {
          v108 = sub_226D6E36C();
        }

        else
        {
          v108 = 0;
        }

        [v164 setLastModifiedValue_];

        sub_226C775F8(v62, v100, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        v109 = sub_226D6E05C();
        v110 = sub_226D6E9EC();
        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v168[0] = v159;
          *v111 = 136315138;
          v112 = *(v107 + 24);
          v113 = (v100 + *(v107 + 20));
          v115 = *v113;
          v114 = v113[1];
          v116 = *(v100 + v112);
          v117 = *(v100 + v112 + 8);
          v165 = 0;

          v118 = v147;
          sub_226D6B45C();
          sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28]);
          v119 = v166;
          v120 = sub_226D6F1CC();
          v122 = v121;
          v146(v118, v119);
          sub_226C77210(v160, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
          v123 = sub_226AC4530(v120, v122, v168);

          *(v111 + 4) = v123;
          _os_log_impl(&dword_226AB4000, v109, v110, "Deleting pending Apple Pay order %s", v111, 0xCu);
          v124 = v159;
          __swift_destroy_boxed_opaque_existential_0Tm(v159);
          MEMORY[0x22AA8BEE0](v124, -1, -1);
          v125 = v111;
          v126 = v163;
          MEMORY[0x22AA8BEE0](v125, -1, -1);

          v127 = v153;
          v128 = v154;
        }

        else
        {

          sub_226C77210(v100, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
          v127 = v153;
          v128 = v154;
          v126 = v163;
        }

        v129 = v167;
        [v167 deleteObject_];
        v168[0] = 0;
        if ([v129 save_])
        {
          v130 = qword_281061980;
          v131 = v168[0];
          if (v130 != -1)
          {
            swift_once();
          }

          v132 = __swift_project_value_buffer(v127, qword_281064538);
          sub_226AE532C(v132, v128);
          sub_226C775F8(v132 + *(v127 + 48), v128 + *(v127 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
          v133 = v149;
          sub_226C771A8(v128 + *(v127 + 48), v149, type metadata accessor for OrderNotificationCenter.Continuation);
          __swift_destroy_boxed_opaque_existential_0Tm(v128);
          v134 = v161;
          sub_226BE7E54(v161, v133);
          sub_226C77210(v133, type metadata accessor for OrderNotificationCenter.Continuation);
          v135 = v129;
          v136 = v164;
          [v135 refreshObject:v164 mergeChanges:0];
          type metadata accessor for OrderImportAnalyticsEventsBuilder();
          v137 = swift_initStackObject();
          *(v137 + 16) = v162;
          *(v137 + 24) = 0;
          v138 = sub_226BB3780(v134);
          swift_setDeallocating();
          sub_226AC47B0(v144, &qword_27D7A7790, &unk_226D79770);
          sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
          sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
          v139 = *(inited + 320);

          sub_226C77210(v134, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
          *v155 = v138;
        }

        else
        {
          v140 = v168[0];
          sub_226D6D04C();

          swift_willThrow();
          swift_setDeallocating();
          sub_226AC47B0(v144, &qword_27D7A7790, &unk_226D79770);
          sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
          sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
          __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
          v141 = *(inited + 320);

          sub_226C77210(v161, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
        }
      }
    }

    else
    {
      if (qword_28105F5B8 != -1)
      {
        swift_once();
      }

      v81 = sub_226D6E07C();
      __swift_project_value_buffer(v81, qword_28105F5C0);
      sub_226C775F8(v164, v43, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      v82 = sub_226D6E05C();
      v83 = sub_226D6E9AC();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        v165 = 0;
        v145 = v44;
        v167 = v85;
        *&v178 = v85;
        *v84 = 136315138;
        v86 = *(v148 + 24);
        v87 = &v43[*(v148 + 20)];
        v89 = *v87;
        v88 = *(v87 + 1);
        v90 = *&v43[v86];
        v91 = *&v43[v86 + 8];

        v92 = v147;
        sub_226D6B45C();
        sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28]);
        v93 = sub_226D6F1CC();
        v95 = v94;
        v146(v92, v46);
        sub_226C77210(v163, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        v96 = sub_226AC4530(v93, v95, &v178);

        *(v84 + 4) = v96;
        _os_log_impl(&dword_226AB4000, v82, v83, "Pending Apple Pay order %s not found", v84, 0xCu);
        v97 = v167;
        __swift_destroy_boxed_opaque_existential_0Tm(v167);
        MEMORY[0x22AA8BEE0](v97, -1, -1);
        MEMORY[0x22AA8BEE0](v84, -1, -1);
      }

      else
      {

        sub_226C77210(v43, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
      }

      *v155 = MEMORY[0x277D84F90];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C70D0C(uint64_t a1, uint64_t a2)
{
  *(v3 + 32) = a2;
  *(v3 + 40) = v2;
  *(v3 + 24) = a1;
  *(v3 + 48) = *a1;
  v4 = *(a1 + 32);
  *(v3 + 64) = *(a1 + 16);
  *(v3 + 72) = v4;
  v5 = sub_226D6B49C();
  *(v3 + 80) = v5;
  v6 = *(v5 - 8);
  *(v3 + 88) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 96) = swift_task_alloc();
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask();
  *(v3 + 104) = PendingApplePayOrderTask;
  v9 = *(*(PendingApplePayOrderTask - 8) + 64) + 15;
  *(v3 + 112) = swift_task_alloc();
  v10 = sub_226D67CEC();
  *(v3 + 120) = v10;
  v11 = *(v10 - 8);
  *(v3 + 128) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 136) = swift_task_alloc();
  v13 = sub_226D6D4AC();
  *(v3 + 144) = v13;
  v14 = *(v13 - 8);
  *(v3 + 152) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C70ED8, 0, 0);
}

uint64_t sub_226C70ED8()
{
  v71 = v0;
  v1 = *(v0 + 48);
  if (!v1)
  {
    return sub_226D6F0AC();
  }

  v69 = *(*(v0 + 24) + 24);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  v4 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = *(v0 + 56);

  sub_226B11B44(v8, v6);

  sub_226D6726C();
  sub_226D67CDC();
  (*(v3 + 8))(v4, v5);
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 112);
  v14 = *(v0 + 40);
  v15 = sub_226D6E07C();
  __swift_project_value_buffer(v15, qword_28105F5C0);
  sub_226C775F8(v14, v13, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  (*(v11 + 16))(v10, v9, v12);
  v16 = sub_226D6E05C();
  v17 = sub_226D6E9EC();
  v18 = os_log_type_enabled(v16, v17);
  v19 = *(v0 + 152);
  v20 = *(v0 + 160);
  v21 = *(v0 + 144);
  v22 = *(v0 + 112);
  if (v18)
  {
    v67 = v17;
    log = v16;
    v23 = *(v0 + 96);
    v24 = *(v0 + 104);
    v25 = *(v0 + 88);
    v62 = *(v0 + 80);
    v63 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v70[0] = v66;
    *v63 = 136315394;
    v26 = *(v24 + 24);
    v27 = (v22 + *(v24 + 20));
    v64 = v20;
    v65 = v21;
    v28 = v1;
    v29 = *v27;
    v30 = v27[1];
    v32 = *(v22 + v26);
    v31 = *(v22 + v26 + 8);

    v1 = v28;
    sub_226D6B45C();
    sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v33 = sub_226D6F1CC();
    v35 = v34;
    (*(v25 + 8))(v23, v62);
    sub_226C77210(v22, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    v36 = sub_226AC4530(v33, v35, v70);

    *(v63 + 4) = v36;
    *(v63 + 12) = 2080;
    sub_226C77874(&qword_281062B80, MEMORY[0x277CC9578]);
    v37 = sub_226D6F1CC();
    v39 = v38;
    v40 = *(v19 + 8);
    (v40)(v64, v65);
    v41 = sub_226AC4530(v37, v39, v70);

    *(v63 + 14) = v41;
    _os_log_impl(&dword_226AB4000, log, v67, "Fetched order %s, updated at %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v66, -1, -1);
    MEMORY[0x22AA8BEE0](v63, -1, -1);
  }

  else
  {

    v40 = *(v19 + 8);
    (v40)(v20, v21);
    sub_226C77210(v22, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  }

  v44 = *(v0 + 64);
  v43 = *(v0 + 72);
  v45 = *(v0 + 56);
  v46 = *(v0 + 40);
  v47 = **(v0 + 32);
  v48 = sub_226D676AC();
  v49 = swift_task_alloc();
  v49[2] = v46;
  v49[3] = v48;
  v49[4] = v1;
  v49[5] = v45;
  v49[6] = v44;
  v49[7] = v69;
  v49[8] = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8760, &unk_226D79760);
  sub_226D6EB7C();

  if (*(*(v0 + 16) + 16))
  {
    v50 = *(v0 + 32);
    v51 = v50[21];
    __swift_project_boxed_opaque_existential_1(v50 + 17, v50[20]);
    sub_226D69AEC();
  }

  sub_226D6725C();
  v52 = *(v0 + 160);
  v54 = *(v0 + 136);
  v53 = *(v0 + 144);
  v55 = *(v0 + 112);
  v56 = *(v0 + 96);
  v58 = *(v0 + 56);
  v57 = *(v0 + 64);
  v59 = *(v0 + 152) + 8;
  v60 = *(v0 + 168);
  v40();
  sub_226B11B98(v58, v57);

  v61 = *(v0 + 8);

  return v61();
}

void sub_226C7158C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v78 = a2;
  v72 = a4;
  v75 = a3;
  v73 = a5;
  v79[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6D4AC();
  v70 = *(v6 - 8);
  v71 = v6;
  v7 = *(v70 + 64);
  MEMORY[0x28223BE20](v6);
  v69 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask();
  v10 = *(*(PendingApplePayOrderTask - 8) + 64);
  MEMORY[0x28223BE20](PendingApplePayOrderTask);
  v76 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_226D6B49C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v67 - v18;
  sub_226D6AF9C();
  v20 = *(PendingApplePayOrderTask + 24);
  v21 = (a1 + *(PendingApplePayOrderTask + 20));
  v22 = *v21;
  v23 = v21[1];
  v74 = a1;
  v24 = a1 + v20;
  v25 = *(a1 + v20);
  v26 = *(v24 + 8);

  sub_226D6B45C();
  v27 = v77;
  v28 = sub_226D6AF6C();
  v77 = v27;
  if (!v27)
  {
    v29 = v28;
    v30 = v74;
    v31 = v75;
    v68 = v17;
    v32 = v76;
    v33 = *(v13 + 8);
    v33(v19, v12);
    if (v29)
    {
      v33 = [v29 orderWebService];
      sub_226C6E874(v31, v33, sub_226C6F118);

      v32 = &selRef_setSortDescriptors_;
      v34 = [v29 requestAttemptCount];
      if (!__OFADD__(v34, 1))
      {
        [v29 setRequestAttemptCount_];
        v35 = v69;
        sub_226D6D46C();
        v36 = sub_226D6D3EC();
        (*(v70 + 8))(v35, v71);
        [v29 setLastRequestAttemptDate_];

        v37 = v73;
        v38 = v78;
        if (v72)
        {
          v39 = [v29 responseCount];
          if (__OFADD__(v39, 1))
          {
            __break(1u);
          }

          [v29 setResponseCount_];
        }

        v79[0] = 0;
        if (![v38 save_])
        {
          v64 = v79[0];
          v65 = sub_226D6D04C();

          v77 = v65;
          swift_willThrow();

          goto LABEL_17;
        }

        v40 = v79[0];
        v41 = [v29 requestAttemptCount];

LABEL_16:
        *v37 = v41;
        *(v37 + 8) = v29 == 0;
        goto LABEL_17;
      }

      __break(1u);
    }

    else
    {
      v19 = v30;
      if (qword_28105F5B8 == -1)
      {
LABEL_11:
        v42 = sub_226D6E07C();
        __swift_project_value_buffer(v42, qword_28105F5C0);
        v43 = v19;
        v44 = v32;
        sub_226C775F8(v43, v32, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        v45 = sub_226D6E05C();
        v46 = sub_226D6E9AC();
        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v78 = v29;
          v48 = v47;
          v74 = v47;
          v75 = swift_slowAlloc();
          v79[0] = v75;
          *v48 = 136315138;
          v49 = *(PendingApplePayOrderTask + 24);
          v50 = (v44 + *(PendingApplePayOrderTask + 20));
          v51 = v46;
          v53 = *v50;
          v52 = v50[1];
          v54 = v44 + v49;
          v55 = *(v44 + v49);
          v56 = *(v54 + 8);

          v57 = v68;
          sub_226D6B45C();
          sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28]);
          v58 = sub_226D6F1CC();
          v60 = v59;
          v33(v57, v12);
          sub_226C77210(v76, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
          v61 = sub_226AC4530(v58, v60, v79);

          v62 = v74;
          *(v74 + 4) = v61;
          _os_log_impl(&dword_226AB4000, v45, v51, "Pending Apple Pay order %s not found", v62, 0xCu);
          v63 = v75;
          __swift_destroy_boxed_opaque_existential_0Tm(v75);
          MEMORY[0x22AA8BEE0](v63, -1, -1);
          v29 = v78;
          MEMORY[0x22AA8BEE0](v62, -1, -1);
        }

        else
        {

          sub_226C77210(v44, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
        }

        v41 = 0;
        v37 = v73;
        goto LABEL_16;
      }
    }

    swift_once();
    goto LABEL_11;
  }

  (*(v13 + 8))(v19, v12);
LABEL_17:
  v66 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C71BB8(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_226D66DFC();
  v3[11] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v6 = sub_226D6B49C();
  v3[13] = v6;
  v7 = *(v6 - 8);
  v3[14] = v7;
  v8 = *(v7 + 64) + 15;
  v3[15] = swift_task_alloc();
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask();
  v3[16] = PendingApplePayOrderTask;
  v10 = *(*(PendingApplePayOrderTask - 8) + 64) + 15;
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C71CDC, 0, 0);
}

uint64_t sub_226C71CDC()
{
  v59 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v4 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v4;
  v5 = sub_226C6D8E8(v2);
  v6 = sub_226C6DECC(v2, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  sub_226BA21B0(v5, v6);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 136);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);
  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F5C0);
  sub_226C775F8(v8, v7, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  v11 = v9;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 136);
  if (!v14)
  {

    sub_226C77210(v15, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
    if (sub_226D6E82C())
    {
      goto LABEL_11;
    }

LABEL_7:
    v32 = *(v0 + 88);
    v33 = *(v0 + 96);
    v34 = *(v0 + 64);
    *(v0 + 56) = v34;
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
    if (swift_dynamicCast())
    {
      v36 = *(v0 + 88);
      v37 = *(v0 + 96);
      v38 = swift_getEnumCaseMultiPayload() > 1;
      sub_226C77210(v37, MEMORY[0x277CC6528]);
    }

    else
    {
      v38 = 1;
    }

    v39 = *(v0 + 72);
    v40 = *(v0 + 80);
    v41 = *(v0 + 64);

    v42 = *v39;
    v43 = sub_226D676AC();
    v44 = swift_task_alloc();
    *(v44 + 16) = v40;
    *(v44 + 24) = v43;
    *(v44 + 32) = v41;
    *(v44 + 40) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v46 = *(v0 + 72);
    v45 = *(v0 + 80);
    v47 = *(v0 + 64);

    sub_226C6EC08(v47, *(v0 + 40), *(v0 + 48), v46 + 136, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask, 0, sub_226C72D5C, sub_226C74E58);

    goto LABEL_11;
  }

  v57 = v13;
  v16 = *(v0 + 120);
  v17 = *(v0 + 128);
  v18 = *(v0 + 112);
  v53 = *(v0 + 104);
  v55 = *(v0 + 64);
  v19 = swift_slowAlloc();
  v54 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v58 = v56;
  *v19 = 136315394;
  v20 = *(v17 + 24);
  v21 = (v15 + *(v17 + 20));
  v23 = *v21;
  v22 = v21[1];
  v24 = *(v15 + v20);
  v25 = *(v15 + v20 + 8);

  sub_226D6B45C();
  sub_226C77874(&qword_27D7A6658, MEMORY[0x277CC7F28]);
  v26 = sub_226D6F1CC();
  v28 = v27;
  (*(v18 + 8))(v16, v53);
  sub_226C77210(v15, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  v29 = sub_226AC4530(v26, v28, &v58);

  *(v19 + 4) = v29;
  *(v19 + 12) = 2112;
  v30 = v55;
  v31 = _swift_stdlib_bridgeErrorToNSError();
  *(v19 + 14) = v31;
  *v54 = v31;
  _os_log_impl(&dword_226AB4000, v12, v57, "Failed to fetch order %s with error: %@", v19, 0x16u);
  sub_226AC47B0(v54, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v54, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  MEMORY[0x22AA8BEE0](v56, -1, -1);
  MEMORY[0x22AA8BEE0](v19, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  v48 = *(v0 + 136);
  v49 = *(v0 + 120);
  v50 = *(v0 + 96);

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_226C72250(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = (v1 + *(a1 + 24));
  v6 = *v5;
  v7 = v5[1];

  sub_226D6B45C();
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226C722E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v3 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D71840;
  v7 = *(a1 + 24);
  v8 = (v1 + *(a1 + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v14 = sub_226B1FBC0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v14;
}

uint64_t sub_226C72444(uint64_t a1)
{
  result = sub_226C77874(&qword_27D7A8748, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226C724C0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v79 = a4;
  v8 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v77 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v18 = sub_226D66DFC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C775F8(a1, v21, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v78 = sub_226CC2B20();
    v77 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x6F43737574617473;
    *(inited + 40) = 0xEA00000000006564;
    sub_226C772C4();
    *(inited + 48) = sub_226D6EC1C();
    v46 = sub_226B224E8(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
    v47 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v48 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v47;
      sub_226BE6628(v48, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v47 = v80;
    }

    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v51 = (v5 + *(type metadata accessor for OrderWebServiceFetchChangesTask() + 24));
    v52 = v51[1];
    *v15 = *v51;
    *(v15 + 1) = v52;
    v53 = sub_226D6D1AC();
    (*(*(v53 - 8) + 16))(&v15[v50], v5, v53);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v55 = v54;
    sub_226C77210(v15, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v55)
    {
      v56 = sub_226D6E36C();

      v57 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v47;
      sub_226BE6628(v56, 0xD000000000000013, 0x8000000226D81C60, v57);
      v47 = v80;
    }

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v47;
    sub_226C7735C(v46, sub_226C77310, 0, v58, &v80);
    swift_bridgeObjectRelease_n();
    v59 = v80;
    v60 = v79[4];
    __swift_project_boxed_opaque_existential_1(v79, v79[3]);
    v83 = &type metadata for BasicAnalyticEvent;
    v61 = sub_226C77270();
    v80 = v78;
    v81 = v77;
    v84 = v61;
    v82 = v59;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
    return sub_226AC47B0(v21, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v23 = *v21;
    v78 = sub_226CC2B20();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_226D70840;
    *(v26 + 32) = 0x6F43737574617473;
    *(v26 + 40) = 0xEA00000000006564;
    *(v26 + 48) = sub_226D6E8EC();
    v27 = sub_226B224E8(v26);
    swift_setDeallocating();
    sub_226AC47B0(v26 + 32, &qword_27D7A77D8, &qword_226D75660);
    v28 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v29 = sub_226D6F2CC();
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v28;
      sub_226BE6628(v29, 0x4374706D65747461, 0xEC000000746E756FLL, v30);
      v28 = v80;
    }

    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v32 = (v5 + *(type metadata accessor for OrderWebServiceFetchChangesTask() + 24));
    v33 = v32[1];
    *v17 = *v32;
    *(v17 + 1) = v33;
    v34 = sub_226D6D1AC();
    (*(*(v34 - 8) + 16))(&v17[v31], v5, v34);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v36 = v35;
    sub_226C77210(v17, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v36)
    {
      v37 = sub_226D6E36C();

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v28;
      sub_226BE6628(v37, 0xD000000000000013, 0x8000000226D81C60, v38);
      v28 = v80;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v28;
    sub_226C7735C(v27, sub_226C77310, 0, v39, &v80);
    swift_bridgeObjectRelease_n();
    v40 = v80;
    v41 = v79[4];
    __swift_project_boxed_opaque_existential_1(v79, v79[3]);
    v83 = &type metadata for BasicAnalyticEvent;
    v42 = sub_226C77270();
    v80 = v78;
    v81 = v25;
    v84 = v42;
    v82 = v40;
    sub_226D69AFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v80);
  }

  else
  {
    v78 = sub_226CC2B20();
    v63 = v62;
    v64 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v65 = sub_226D6F2CC();
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v64;
      sub_226BE6628(v65, 0x4374706D65747461, 0xEC000000746E756FLL, v66);
      v64 = v80;
    }

    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v68 = (v5 + *(type metadata accessor for OrderWebServiceFetchChangesTask() + 24));
    v69 = v68[1];
    *v12 = *v68;
    *(v12 + 1) = v69;
    v70 = sub_226D6D1AC();
    (*(*(v70 - 8) + 16))(&v12[v67], v5, v70);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v72 = v71;
    sub_226C77210(v12, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v72)
    {
      v73 = sub_226D6E36C();

      v74 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v64;
      sub_226BE6628(v73, 0xD000000000000013, 0x8000000226D81C60, v74);
      v64 = v80;
    }

    v75 = v79[4];
    __swift_project_boxed_opaque_existential_1(v79, v79[3]);
    v83 = &type metadata for BasicAnalyticEvent;
    v76 = sub_226C77270();
    v80 = v78;
    v81 = v63;
    v84 = v76;
    v82 = v64;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
    return sub_226C77210(v21, MEMORY[0x277CC6528]);
  }
}

uint64_t sub_226C72D5C(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(void), int a6)
{
  v91 = a6;
  v90 = a5;
  v7 = v6;
  v92 = a4;
  v10 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v88 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v88 - v18;
  v20 = sub_226D66DFC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C775F8(a1, v23, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v89 = sub_226CC2B20();
    v88 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x6F43737574617473;
    *(inited + 40) = 0xEA00000000006564;
    sub_226C772C4();
    *(inited + 48) = sub_226D6EC1C();
    v51 = sub_226B224E8(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
    v52 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v53 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v52;
      sub_226BE6628(v53, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v52 = v93;
    }

    v55 = v90(0);
    v56 = (v7 + *(v55 + 20));
    v57 = *v56;
    v58 = v56[1];
    v59 = (v7 + *(v55 + 24));
    v60 = *v59;
    v61 = v59[1];

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v63 = v62;
    sub_226C77210(v17, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v63)
    {
      v64 = sub_226D6E36C();

      v65 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v52;
      sub_226BE6628(v64, 0xD000000000000013, 0x8000000226D81C60, v65);
      v52 = v93;
    }

    v66 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v52;
    sub_226C7735C(v51, sub_226C77310, 0, v66, &v93);
    swift_bridgeObjectRelease_n();
    v67 = v93;
    v68 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v69 = sub_226C77270();
    v93 = v89;
    v94 = v88;
    v97 = v69;
    v95 = v67;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v93);
    return sub_226AC47B0(v23, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v25 = *v23;
    v89 = sub_226CC2B20();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_226D70840;
    *(v28 + 32) = 0x6F43737574617473;
    *(v28 + 40) = 0xEA00000000006564;
    *(v28 + 48) = sub_226D6E8EC();
    v29 = sub_226B224E8(v28);
    swift_setDeallocating();
    sub_226AC47B0(v28 + 32, &qword_27D7A77D8, &qword_226D75660);
    v30 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v31 = sub_226D6F2CC();
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v30;
      sub_226BE6628(v31, 0x4374706D65747461, 0xEC000000746E756FLL, v32);
      v30 = v93;
    }

    v33 = v90(0);
    v34 = (v7 + *(v33 + 20));
    v35 = *v34;
    v36 = v34[1];
    v37 = (v7 + *(v33 + 24));
    v38 = *v37;
    v39 = v37[1];

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v41 = v40;
    sub_226C77210(v19, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v41)
    {
      v42 = sub_226D6E36C();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v30;
      sub_226BE6628(v42, 0xD000000000000013, 0x8000000226D81C60, v43);
      v30 = v93;
    }

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v30;
    sub_226C7735C(v29, sub_226C77310, 0, v44, &v93);
    swift_bridgeObjectRelease_n();
    v45 = v93;
    v46 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v47 = sub_226C77270();
    v93 = v89;
    v94 = v27;
    v97 = v47;
    v95 = v45;
    sub_226D69AFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v93);
  }

  else
  {
    v89 = sub_226CC2B20();
    v71 = v70;
    v72 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v73 = sub_226D6F2CC();
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v72;
      sub_226BE6628(v73, 0x4374706D65747461, 0xEC000000746E756FLL, v74);
      v72 = v93;
    }

    v75 = v90(0);
    v76 = (v7 + *(v75 + 20));
    v77 = *v76;
    v78 = v76[1];
    v79 = (v7 + *(v75 + 24));
    v80 = *v79;
    v81 = v79[1];

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v83 = v82;
    sub_226C77210(v14, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v83)
    {
      v84 = sub_226D6E36C();

      v85 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v72;
      sub_226BE6628(v84, 0xD000000000000013, 0x8000000226D81C60, v85);
      v72 = v93;
    }

    v86 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v87 = sub_226C77270();
    v93 = v89;
    v94 = v71;
    v97 = v87;
    v95 = v72;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v93);
    return sub_226C77210(v23, MEMORY[0x277CC6528]);
  }
}

uint64_t sub_226C735A8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(void), int a6)
{
  v91 = a6;
  v90 = a5;
  v7 = v6;
  v92 = a4;
  v10 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v88 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v88 - v18;
  v20 = sub_226D66DFC();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = (&v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C775F8(a1, v23, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v89 = sub_226CC2B20();
    v88 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x6F43737574617473;
    *(inited + 40) = 0xEA00000000006564;
    sub_226C772C4();
    *(inited + 48) = sub_226D6EC1C();
    v51 = sub_226B224E8(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
    v52 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v53 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v52;
      sub_226BE6628(v53, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v52 = v93;
    }

    v55 = v90(0);
    v56 = (v7 + *(v55 + 24));
    v57 = *v56;
    v58 = v56[1];
    v59 = (v7 + *(v55 + 28));
    v60 = *v59;
    v61 = v59[1];

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v63 = v62;
    sub_226C77210(v17, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v63)
    {
      v64 = sub_226D6E36C();

      v65 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v52;
      sub_226BE6628(v64, 0xD000000000000013, 0x8000000226D81C60, v65);
      v52 = v93;
    }

    v66 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v52;
    sub_226C7735C(v51, sub_226C77310, 0, v66, &v93);
    swift_bridgeObjectRelease_n();
    v67 = v93;
    v68 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v69 = sub_226C77270();
    v93 = v89;
    v94 = v88;
    v97 = v69;
    v95 = v67;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v93);
    return sub_226AC47B0(v23, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v25 = *v23;
    v89 = sub_226CC2B20();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    v28 = swift_initStackObject();
    *(v28 + 16) = xmmword_226D70840;
    *(v28 + 32) = 0x6F43737574617473;
    *(v28 + 40) = 0xEA00000000006564;
    *(v28 + 48) = sub_226D6E8EC();
    v29 = sub_226B224E8(v28);
    swift_setDeallocating();
    sub_226AC47B0(v28 + 32, &qword_27D7A77D8, &qword_226D75660);
    v30 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v31 = sub_226D6F2CC();
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v30;
      sub_226BE6628(v31, 0x4374706D65747461, 0xEC000000746E756FLL, v32);
      v30 = v93;
    }

    v33 = v90(0);
    v34 = (v7 + *(v33 + 24));
    v35 = *v34;
    v36 = v34[1];
    v37 = (v7 + *(v33 + 28));
    v38 = *v37;
    v39 = v37[1];

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v41 = v40;
    sub_226C77210(v19, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v41)
    {
      v42 = sub_226D6E36C();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v30;
      sub_226BE6628(v42, 0xD000000000000013, 0x8000000226D81C60, v43);
      v30 = v93;
    }

    v44 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v30;
    sub_226C7735C(v29, sub_226C77310, 0, v44, &v93);
    swift_bridgeObjectRelease_n();
    v45 = v93;
    v46 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v47 = sub_226C77270();
    v93 = v89;
    v94 = v27;
    v97 = v47;
    v95 = v45;
    sub_226D69AFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v93);
  }

  else
  {
    v89 = sub_226CC2B20();
    v71 = v70;
    v72 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v73 = sub_226D6F2CC();
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v72;
      sub_226BE6628(v73, 0x4374706D65747461, 0xEC000000746E756FLL, v74);
      v72 = v93;
    }

    v75 = v90(0);
    v76 = (v7 + *(v75 + 24));
    v77 = *v76;
    v78 = v76[1];
    v79 = (v7 + *(v75 + 28));
    v80 = *v79;
    v81 = v79[1];

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v83 = v82;
    sub_226C77210(v14, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v83)
    {
      v84 = sub_226D6E36C();

      v85 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v72;
      sub_226BE6628(v84, 0xD000000000000013, 0x8000000226D81C60, v85);
      v72 = v93;
    }

    v86 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v87 = sub_226C77270();
    v93 = v89;
    v94 = v71;
    v97 = v87;
    v95 = v72;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v93);
    return sub_226C77210(v23, MEMORY[0x277CC6528]);
  }
}

uint64_t sub_226C73DF4(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v5 = v4;
  v79 = a4;
  v8 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v77 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v77 - v16;
  v18 = sub_226D66DFC();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v21 = (&v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C775F8(a1, v21, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v78 = sub_226CC2B20();
    v77 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 0x6F43737574617473;
    *(inited + 40) = 0xEA00000000006564;
    sub_226C772C4();
    *(inited + 48) = sub_226D6EC1C();
    v46 = sub_226B224E8(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A77D8, &qword_226D75660);
    v47 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v48 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v47;
      sub_226BE6628(v48, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v47 = v80;
    }

    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v51 = (v5 + *(type metadata accessor for OrderWebServiceLogTask() + 20));
    v52 = v51[1];
    *v15 = *v51;
    *(v15 + 1) = v52;
    v53 = sub_226D6D1AC();
    (*(*(v53 - 8) + 16))(&v15[v50], v5, v53);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v55 = v54;
    sub_226C77210(v15, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v55)
    {
      v56 = sub_226D6E36C();

      v57 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v47;
      sub_226BE6628(v56, 0xD000000000000013, 0x8000000226D81C60, v57);
      v47 = v80;
    }

    v58 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v47;
    sub_226C7735C(v46, sub_226C77310, 0, v58, &v80);
    swift_bridgeObjectRelease_n();
    v59 = v80;
    v60 = v79[4];
    __swift_project_boxed_opaque_existential_1(v79, v79[3]);
    v83 = &type metadata for BasicAnalyticEvent;
    v61 = sub_226C77270();
    v80 = v78;
    v81 = v77;
    v84 = v61;
    v82 = v59;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
    return sub_226AC47B0(v21, &qword_27D7A8BE0, &unk_226D718F0);
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v23 = *v21;
    v78 = sub_226CC2B20();
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_226D70840;
    *(v26 + 32) = 0x6F43737574617473;
    *(v26 + 40) = 0xEA00000000006564;
    *(v26 + 48) = sub_226D6E8EC();
    v27 = sub_226B224E8(v26);
    swift_setDeallocating();
    sub_226AC47B0(v26 + 32, &qword_27D7A77D8, &qword_226D75660);
    v28 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v29 = sub_226D6F2CC();
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v28;
      sub_226BE6628(v29, 0x4374706D65747461, 0xEC000000746E756FLL, v30);
      v28 = v80;
    }

    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v32 = (v5 + *(type metadata accessor for OrderWebServiceLogTask() + 20));
    v33 = v32[1];
    *v17 = *v32;
    *(v17 + 1) = v33;
    v34 = sub_226D6D1AC();
    (*(*(v34 - 8) + 16))(&v17[v31], v5, v34);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v36 = v35;
    sub_226C77210(v17, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v36)
    {
      v37 = sub_226D6E36C();

      v38 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v28;
      sub_226BE6628(v37, 0xD000000000000013, 0x8000000226D81C60, v38);
      v28 = v80;
    }

    v39 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v28;
    sub_226C7735C(v27, sub_226C77310, 0, v39, &v80);
    swift_bridgeObjectRelease_n();
    v40 = v80;
    v41 = v79[4];
    __swift_project_boxed_opaque_existential_1(v79, v79[3]);
    v83 = &type metadata for BasicAnalyticEvent;
    v42 = sub_226C77270();
    v80 = v78;
    v81 = v25;
    v84 = v42;
    v82 = v40;
    sub_226D69AFC();
    return __swift_destroy_boxed_opaque_existential_0Tm(&v80);
  }

  else
  {
    v78 = sub_226CC2B20();
    v63 = v62;
    v64 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v65 = sub_226D6F2CC();
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v64;
      sub_226BE6628(v65, 0x4374706D65747461, 0xEC000000746E756FLL, v66);
      v64 = v80;
    }

    v67 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v68 = (v5 + *(type metadata accessor for OrderWebServiceLogTask() + 20));
    v69 = v68[1];
    *v12 = *v68;
    *(v12 + 1) = v69;
    v70 = sub_226D6D1AC();
    (*(*(v70 - 8) + 16))(&v12[v67], v5, v70);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v72 = v71;
    sub_226C77210(v12, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v72)
    {
      v73 = sub_226D6E36C();

      v74 = swift_isUniquelyReferenced_nonNull_native();
      v80 = v64;
      sub_226BE6628(v73, 0xD000000000000013, 0x8000000226D81C60, v74);
      v64 = v80;
    }

    v75 = v79[4];
    __swift_project_boxed_opaque_existential_1(v79, v79[3]);
    v83 = &type metadata for BasicAnalyticEvent;
    v76 = sub_226C77270();
    v80 = v78;
    v81 = v63;
    v84 = v76;
    v82 = v64;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
    return sub_226C77210(v21, MEMORY[0x277CC6528]);
  }
}

uint64_t sub_226C74690(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v80 = a2;
  v83 = a4;
  v82 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v6 = *(*(v82 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v82);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v77 - v10;
  v12 = sub_226D6B49C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  v20 = sub_226D6921C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v23, MEMORY[0x277CC77F8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v79 = v13;
    v25 = *(v13 + 32);
    v25(v19, v23, v12);
    v78 = v12;
    v25(v17, &v23[v24], v12);
    v26 = sub_226D6B46C();
    v28 = v27;
    if (v26 != sub_226D6B46C() || v28 != v29)
    {
      sub_226D6F21C();
    }

    v50 = sub_226D6B44C();
    v52 = v51;
    if (v50 != sub_226D6B44C() || v52 != v53)
    {
      sub_226D6F21C();
    }

    v54 = sub_226CC29A0();
    v77 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    *(inited + 48) = sub_226D6E6BC();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x8000000226D7F9A0;
    *(inited + 72) = sub_226D6E6BC();
    v57 = sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();
    v58 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v59 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v58;
      sub_226BE6628(v59, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v58 = v84;
    }

    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    ChangesTask = type metadata accessor for OrderWebServiceFetchChangesTask();
    v63 = v81;
    v64 = (v81 + *(ChangesTask + 24));
    v65 = v64[1];
    *v11 = *v64;
    *(v11 + 1) = v65;
    v66 = sub_226D6D1AC();
    (*(*(v66 - 8) + 16))(&v11[v61], v63, v66);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v68 = v67;
    sub_226C77210(v11, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v68)
    {
      v69 = sub_226D6E36C();

      v70 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v58;
      sub_226BE6628(v69, 0xD000000000000013, 0x8000000226D81C60, v70);
      v58 = v84;
    }

    v71 = v78;

    v72 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v58;
    sub_226C7735C(v57, sub_226C77310, 0, v72, &v84);
    swift_bridgeObjectRelease_n();
    v73 = v84;
    v74 = v83[4];
    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    v87 = &type metadata for BasicAnalyticEvent;
    v75 = sub_226C77270();
    v84 = v54;
    v85 = v77;
    v88 = v75;
    v86 = v73;
    sub_226D69AFC();
    v76 = *(v79 + 8);
    v76(v17, v71);
    v76(v19, v71);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v84);
  }

  else
  {
    v31 = sub_226CC29A0();
    v33 = v32;
    v34 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v35 = sub_226D6F2CC();
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v34;
      sub_226BE6628(v35, 0x4374706D65747461, 0xEC000000746E756FLL, v36);
      v34 = v84;
    }

    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v38 = type metadata accessor for OrderWebServiceFetchChangesTask();
    v39 = v81;
    v40 = (v81 + *(v38 + 24));
    v41 = v40[1];
    *v9 = *v40;
    *(v9 + 1) = v41;
    v42 = sub_226D6D1AC();
    (*(*(v42 - 8) + 16))(&v9[v37], v39, v42);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v44 = v43;
    sub_226C77210(v9, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v44)
    {
      v45 = sub_226D6E36C();

      v46 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v34;
      sub_226BE6628(v45, 0xD000000000000013, 0x8000000226D81C60, v46);
      v34 = v84;
    }

    v47 = v83[4];
    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    v87 = &type metadata for BasicAnalyticEvent;
    v48 = sub_226C77270();
    v84 = v31;
    v85 = v33;
    v88 = v48;
    v86 = v34;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v84);
    return sub_226C77210(v23, MEMORY[0x277CC77F8]);
  }
}

uint64_t sub_226C74E58(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(void), int a6)
{
  v91 = a6;
  v88 = a5;
  v92 = a4;
  v87 = a2;
  v90 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v8 = *(*(v90 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v90);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = sub_226D6B49C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - v20;
  v22 = sub_226D6921C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v25, MEMORY[0x277CC77F8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v86 = v15;
    v27 = *(v15 + 32);
    v27(v21, v25, v14);
    v85 = v14;
    v27(v19, &v25[v26], v14);
    v28 = sub_226D6B46C();
    v30 = v29;
    v32 = v28 == sub_226D6B46C() && v30 == v31;
    v33 = v19;
    if (!v32)
    {
      sub_226D6F21C();
    }

    v54 = v21;
    v55 = sub_226D6B44C();
    v57 = v56;
    if (v55 != sub_226D6B44C() || v57 != v58)
    {
      sub_226D6F21C();
    }

    v84 = sub_226CC29A0();
    v83 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    *(inited + 48) = sub_226D6E6BC();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x8000000226D7F9A0;
    *(inited + 72) = sub_226D6E6BC();
    v61 = sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();
    v62 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v63 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v62;
      sub_226BE6628(v63, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v62 = v93;
    }

    v65 = v88(0);
    v66 = *(v65 + 24);
    v67 = (v89 + *(v65 + 20));
    v68 = *v67;
    v69 = v67[1];
    v70 = *(v89 + v66);
    v71 = *(v89 + v66 + 8);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v73 = v72;
    sub_226C77210(v13, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v73)
    {
      v74 = sub_226D6E36C();

      v75 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v62;
      sub_226BE6628(v74, 0xD000000000000013, 0x8000000226D81C60, v75);
      v62 = v93;
    }

    v76 = v85;

    v77 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v62;
    sub_226C7735C(v61, sub_226C77310, 0, v77, &v93);
    swift_bridgeObjectRelease_n();
    v78 = v93;
    v79 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v80 = sub_226C77270();
    v93 = v84;
    v94 = v83;
    v97 = v80;
    v95 = v78;
    sub_226D69AFC();
    v81 = *(v86 + 8);
    v81(v33, v76);
    v81(v54, v76);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v93);
  }

  else
  {
    v34 = sub_226CC29A0();
    v36 = v35;
    v37 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v38 = sub_226D6F2CC();
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v37;
      sub_226BE6628(v38, 0x4374706D65747461, 0xEC000000746E756FLL, v39);
      v37 = v93;
    }

    v40 = v88(0);
    v41 = *(v40 + 24);
    v42 = (v89 + *(v40 + 20));
    v43 = *v42;
    v44 = v42[1];
    v45 = *(v89 + v41);
    v46 = *(v89 + v41 + 8);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v48 = v47;
    sub_226C77210(v11, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v48)
    {
      v49 = sub_226D6E36C();

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v37;
      sub_226BE6628(v49, 0xD000000000000013, 0x8000000226D81C60, v50);
      v37 = v93;
    }

    v51 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v52 = sub_226C77270();
    v93 = v34;
    v94 = v36;
    v97 = v52;
    v95 = v37;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v93);
    return sub_226C77210(v25, MEMORY[0x277CC77F8]);
  }
}

uint64_t sub_226C75604(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t (*a5)(void), int a6)
{
  v91 = a6;
  v88 = a5;
  v92 = a4;
  v87 = a2;
  v90 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v8 = *(*(v90 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v90);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = sub_226D6B49C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - v20;
  v22 = sub_226D6921C();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v25, MEMORY[0x277CC77F8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v86 = v15;
    v27 = *(v15 + 32);
    v27(v21, v25, v14);
    v85 = v14;
    v27(v19, &v25[v26], v14);
    v28 = sub_226D6B46C();
    v30 = v29;
    v32 = v28 == sub_226D6B46C() && v30 == v31;
    v33 = v19;
    if (!v32)
    {
      sub_226D6F21C();
    }

    v54 = v21;
    v55 = sub_226D6B44C();
    v57 = v56;
    if (v55 != sub_226D6B44C() || v57 != v58)
    {
      sub_226D6F21C();
    }

    v84 = sub_226CC29A0();
    v83 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    *(inited + 48) = sub_226D6E6BC();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x8000000226D7F9A0;
    *(inited + 72) = sub_226D6E6BC();
    v61 = sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();
    v62 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v63 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v62;
      sub_226BE6628(v63, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v62 = v93;
    }

    v65 = v88(0);
    v66 = *(v65 + 28);
    v67 = (v89 + *(v65 + 24));
    v68 = *v67;
    v69 = v67[1];
    v70 = *(v89 + v66);
    v71 = *(v89 + v66 + 8);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v73 = v72;
    sub_226C77210(v13, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v73)
    {
      v74 = sub_226D6E36C();

      v75 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v62;
      sub_226BE6628(v74, 0xD000000000000013, 0x8000000226D81C60, v75);
      v62 = v93;
    }

    v76 = v85;

    v77 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v62;
    sub_226C7735C(v61, sub_226C77310, 0, v77, &v93);
    swift_bridgeObjectRelease_n();
    v78 = v93;
    v79 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v80 = sub_226C77270();
    v93 = v84;
    v94 = v83;
    v97 = v80;
    v95 = v78;
    sub_226D69AFC();
    v81 = *(v86 + 8);
    v81(v33, v76);
    v81(v54, v76);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v93);
  }

  else
  {
    v34 = sub_226CC29A0();
    v36 = v35;
    v37 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v38 = sub_226D6F2CC();
      v39 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v37;
      sub_226BE6628(v38, 0x4374706D65747461, 0xEC000000746E756FLL, v39);
      v37 = v93;
    }

    v40 = v88(0);
    v41 = *(v40 + 28);
    v42 = (v89 + *(v40 + 24));
    v43 = *v42;
    v44 = v42[1];
    v45 = *(v89 + v41);
    v46 = *(v89 + v41 + 8);

    sub_226D6B45C();
    swift_storeEnumTagMultiPayload();
    sub_226CF3FBC();
    v48 = v47;
    sub_226C77210(v11, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v48)
    {
      v49 = sub_226D6E36C();

      v50 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v37;
      sub_226BE6628(v49, 0xD000000000000013, 0x8000000226D81C60, v50);
      v37 = v93;
    }

    v51 = v92[4];
    __swift_project_boxed_opaque_existential_1(v92, v92[3]);
    v96 = &type metadata for BasicAnalyticEvent;
    v52 = sub_226C77270();
    v93 = v34;
    v94 = v36;
    v97 = v52;
    v95 = v37;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v93);
    return sub_226C77210(v25, MEMORY[0x277CC77F8]);
  }
}

uint64_t sub_226C75DB0(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v80 = a2;
  v83 = a4;
  v82 = type metadata accessor for OrderWebServiceTaskIdentifier(0);
  v6 = *(*(v82 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v82);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v77 - v10;
  v12 = sub_226D6B49C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v77 - v18;
  v20 = sub_226D6921C();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C775F8(a1, v23, MEMORY[0x277CC77F8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
    v79 = v13;
    v25 = *(v13 + 32);
    v25(v19, v23, v12);
    v78 = v12;
    v25(v17, &v23[v24], v12);
    v26 = sub_226D6B46C();
    v28 = v27;
    if (v26 != sub_226D6B46C() || v28 != v29)
    {
      sub_226D6F21C();
    }

    v50 = sub_226D6B44C();
    v52 = v51;
    if (v50 != sub_226D6B44C() || v52 != v53)
    {
      sub_226D6F21C();
    }

    v54 = sub_226CC29A0();
    v77 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D71840;
    *(inited + 32) = 0xD00000000000001ALL;
    *(inited + 40) = 0x8000000226D7F980;
    *(inited + 48) = sub_226D6E6BC();
    *(inited + 56) = 0xD000000000000016;
    *(inited + 64) = 0x8000000226D7F9A0;
    *(inited + 72) = sub_226D6E6BC();
    v57 = sub_226B224E8(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
    swift_arrayDestroy();
    v58 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v59 = sub_226D6F2CC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v58;
      sub_226BE6628(v59, 0x4374706D65747461, 0xEC000000746E756FLL, isUniquelyReferenced_nonNull_native);
      v58 = v84;
    }

    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v62 = type metadata accessor for OrderWebServiceLogTask();
    v63 = v81;
    v64 = (v81 + *(v62 + 20));
    v65 = v64[1];
    *v11 = *v64;
    *(v11 + 1) = v65;
    v66 = sub_226D6D1AC();
    (*(*(v66 - 8) + 16))(&v11[v61], v63, v66);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v68 = v67;
    sub_226C77210(v11, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v68)
    {
      v69 = sub_226D6E36C();

      v70 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v58;
      sub_226BE6628(v69, 0xD000000000000013, 0x8000000226D81C60, v70);
      v58 = v84;
    }

    v71 = v78;

    v72 = swift_isUniquelyReferenced_nonNull_native();
    v84 = v58;
    sub_226C7735C(v57, sub_226C77310, 0, v72, &v84);
    swift_bridgeObjectRelease_n();
    v73 = v84;
    v74 = v83[4];
    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    v87 = &type metadata for BasicAnalyticEvent;
    v75 = sub_226C77270();
    v84 = v54;
    v85 = v77;
    v88 = v75;
    v86 = v73;
    sub_226D69AFC();
    v76 = *(v79 + 8);
    v76(v17, v71);
    v76(v19, v71);
    return __swift_destroy_boxed_opaque_existential_0Tm(&v84);
  }

  else
  {
    v31 = sub_226CC29A0();
    v33 = v32;
    v34 = MEMORY[0x277D84F98];
    if ((a3 & 1) == 0)
    {
      v35 = sub_226D6F2CC();
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v34;
      sub_226BE6628(v35, 0x4374706D65747461, 0xEC000000746E756FLL, v36);
      v34 = v84;
    }

    v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F8, &qword_226D7C3B0) + 48);
    v38 = type metadata accessor for OrderWebServiceLogTask();
    v39 = v81;
    v40 = (v81 + *(v38 + 20));
    v41 = v40[1];
    *v9 = *v40;
    *(v9 + 1) = v41;
    v42 = sub_226D6D1AC();
    (*(*(v42 - 8) + 16))(&v9[v37], v39, v42);
    swift_storeEnumTagMultiPayload();

    sub_226CF3FBC();
    v44 = v43;
    sub_226C77210(v9, type metadata accessor for OrderWebServiceTaskIdentifier);
    if (v44)
    {
      v45 = sub_226D6E36C();

      v46 = swift_isUniquelyReferenced_nonNull_native();
      v84 = v34;
      sub_226BE6628(v45, 0xD000000000000013, 0x8000000226D81C60, v46);
      v34 = v84;
    }

    v47 = v83[4];
    __swift_project_boxed_opaque_existential_1(v83, v83[3]);
    v87 = &type metadata for BasicAnalyticEvent;
    v48 = sub_226C77270();
    v84 = v31;
    v85 = v33;
    v88 = v48;
    v86 = v34;
    sub_226D69AFC();
    __swift_destroy_boxed_opaque_existential_0Tm(&v84);
    return sub_226C77210(v23, MEMORY[0x277CC77F8]);
  }
}

uint64_t sub_226C76578(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v35 = a2;
  v5 = sub_226D6D4AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  v17 = sub_226D66DFC();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C775F8(a1, v20, MEMORY[0x277CC6528]);
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result == 6)
      {
        v26 = *(v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8770, &qword_226D79798) + 48));
        (*(v6 + 32))(v9, v20, v5);
        v37 = 0;
        v38 = 0xE000000000000000;
        sub_226D6EEFC();
        MEMORY[0x22AA8A510](0xD000000000000031, 0x8000000226D85A40);
        v27 = sub_226D6D48C();
        MEMORY[0x22AA8A510](v27);

        MEMORY[0x22AA8A510](0xD000000000000024, 0x8000000226D85A80);
        LOWORD(v36) = v26;
        v28 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v28);

        v29 = v37;
        v30 = v38;
        result = (*(v6 + 8))(v9, v5);
      }

      else
      {
        v30 = 0x8000000226D85AE0;
        v29 = 0xD000000000000023;
      }
    }

    else
    {
      v22 = *v20;
      v37 = 0;
      v38 = 0xE000000000000000;
      if (result == 4)
      {
        sub_226D6EEFC();

        v37 = 0xD000000000000017;
        v38 = 0x8000000226D85A20;
        v36 = v22;
        v23 = sub_226D6F1CC();
        MEMORY[0x22AA8A510](v23);

        result = MEMORY[0x22AA8A510](0x6576696563657220, 0xE900000000000064);
      }

      else
      {
        sub_226D6EEFC();

        v37 = 0xD000000000000016;
        v38 = 0x8000000226D85A00;
        v31 = sub_226C77028(v22);
        MEMORY[0x22AA8A510](v31);
      }

      v29 = v37;
      v30 = v38;
    }

    goto LABEL_17;
  }

  if (result <= 1)
  {
    return sub_226C77210(v20, MEMORY[0x277CC6528]);
  }

  if (result != 2)
  {
    sub_226B72784(v20, v16);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_226D6EEFC();

    v37 = 0xD000000000000025;
    v38 = 0x8000000226D85AB0;
    sub_226AF265C(v16, v14);
    if ((*(v6 + 48))(v14, 1, v5) == 1)
    {
      sub_226AC47B0(v14, &qword_27D7A8BE0, &unk_226D718F0);
      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    else
    {
      v32 = sub_226D6D48C();
      v24 = v33;
      (*(v6 + 8))(v14, v5);
      v25 = v32;
    }

    MEMORY[0x22AA8A510](v25, v24);

    v29 = v37;
    v30 = v38;
    result = sub_226AC47B0(v16, &qword_27D7A8BE0, &unk_226D718F0);
LABEL_17:
    v37 = a3(result);
    v38 = v34;
    MEMORY[0x22AA8A510](8250, 0xE200000000000000);
    MEMORY[0x22AA8A510](v29, v30);

    sub_226D6D46C();
    sub_226D69F5C();

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_226C76B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v41 = a3;
  v42 = a2;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6B49C();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = sub_226D6921C();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_226C775F8(a1, v20, MEMORY[0x277CC77F8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
      v40 = v4;
      v23 = v10[4];
      v23(v16, v20, v9);
      v23(v14, (v20 + v22), v9);
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_226D6EEFC();
      MEMORY[0x22AA8A510](0xD000000000000028, 0x8000000226D85B10);
      v24 = sub_226D6B46C();
      MEMORY[0x22AA8A510](v24);

      MEMORY[0x22AA8A510](0xD000000000000015, 0x8000000226D85B40);
      v25 = sub_226D6B44C();
      MEMORY[0x22AA8A510](v25);

      MEMORY[0x22AA8A510](0xD000000000000029, 0x8000000226D85B60);
      v26 = sub_226D6B46C();
      MEMORY[0x22AA8A510](v26);

      MEMORY[0x22AA8A510](0xD000000000000015, 0x8000000226D85B40);
      v27 = sub_226D6B44C();
      MEMORY[0x22AA8A510](v27);

      MEMORY[0x22AA8A510](0x64616574736E6920, 0xE800000000000000);
      v29 = v43;
      v28 = v44;
      v30 = v10[1];
      v30(v14, v9);
      v30(v16, v9);
      v4 = v40;
    }

    else
    {
      v33 = objc_opt_self();
      sub_226D6727C();
      v34 = [v33 stringFromByteCount:sub_226D6723C() countStyle:3];
      v35 = sub_226D6E39C();
      v37 = v36;

      v43 = 0;
      v44 = 0xE000000000000000;
      sub_226D6EEFC();

      v43 = 0xD00000000000002ALL;
      v44 = 0x8000000226D85BB0;
      MEMORY[0x22AA8A510](v35, v37);

      v29 = v43;
      v28 = v44;
    }
  }

  else
  {
    v31 = *v20;
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_226D6EEFC();

    v43 = 0xD000000000000018;
    v44 = 0x8000000226D85B90;
    v32 = sub_226C77028(v31);
    MEMORY[0x22AA8A510](v32);

    v29 = v43;
    v28 = v44;
  }

  v43 = v41();
  v44 = v38;
  MEMORY[0x22AA8A510](8250, 0xE200000000000000);
  MEMORY[0x22AA8A510](v29, v28);

  sub_226D6D46C();
  sub_226D69F5C();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_226C77028(void *a1)
{
  v8 = a1;
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6788, &unk_226D71C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8778, &qword_226D797A0);
  if (swift_dynamicCast())
  {
    sub_226AC484C(v6, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v2 = sub_226D6CEBC();
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      swift_getErrorValue();
      v4 = sub_226D6F26C();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_226AC47B0(v6, &qword_27D7A8780, &qword_226D797A8);
    swift_getErrorValue();
    return sub_226D6F26C();
  }
}

uint64_t sub_226C771A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C77210(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_226C77270()
{
  result = qword_27D7A8768;
  if (!qword_27D7A8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8768);
  }

  return result;
}

unint64_t sub_226C772C4()
{
  result = qword_27D7A6278;
  if (!qword_27D7A6278)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7A6278);
  }

  return result;
}

id sub_226C77310@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_226C7735C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_226C2FDD4(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_226C39114();
      }
    }

    else
    {
      v32 = v51;
      sub_226C34598(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_226C2FDD4(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_226AD3C20();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_226D6F25C();
  __break(1u);
  return result;
}

uint64_t sub_226C775F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226C77660(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C6FB1C(a1, v5, v4);
}

void sub_226C77734()
{
  sub_226D6D1AC();
  if (v0 <= 0x3F)
  {
    sub_226B20350();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_226C777F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *(a1 + 8) = sub_226C77874(&qword_27D7A8750, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  result = sub_226C77874(a4, type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226C77874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226C778E4()
{
  v1 = *(*(v0 + 16) + 72);
  if (v1)
  {
    v2 = v1;
    sub_226B6D8E4();

    v3 = *(v0 + 8);
  }

  else
  {
    if (qword_28105F620 != -1)
    {
      swift_once();
    }

    v4 = sub_226D6E07C();
    __swift_project_value_buffer(v4, qword_28105F628);
    v5 = sub_226D6E05C();
    v6 = sub_226D6E9CC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_226AB4000, v5, v6, "Requested Spotlight reindex, but no indexer present", v7, 2u);
      MEMORY[0x22AA8BEE0](v7, -1, -1);
    }

    v8 = sub_226D670FC();
    sub_226C77A94();
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277CC6B30], v8);
    swift_willThrow();
    v3 = *(v0 + 8);
  }

  return v3();
}

unint64_t sub_226C77A94()
{
  result = qword_27D7A87A8;
  if (!qword_27D7A87A8)
  {
    sub_226D670FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A87A8);
  }

  return result;
}

uint64_t type metadata accessor for OrderWebServiceFetchTask()
{
  result = qword_27D7A87B0;
  if (!qword_27D7A87B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226C77B60()
{
  sub_226D6D1AC();
  if (v0 <= 0x3F)
  {
    sub_226BBB5E0();
    if (v1 <= 0x3F)
    {
      sub_226B20350();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_226C77C18()
{
  v1 = v0;
  sub_226D6EEFC();
  MEMORY[0x22AA8A510](0xD000000000000020, 0x8000000226D85D10);
  Task = type metadata accessor for OrderWebServiceFetchTask();
  MEMORY[0x22AA8A510](*(v1 + Task[5]), *(v1 + Task[5] + 8));
  MEMORY[0x22AA8A510](0xD000000000000012, 0x8000000226D856A0);
  MEMORY[0x22AA8A510](*(v1 + Task[6]), *(v1 + Task[6] + 8));
  MEMORY[0x22AA8A510](0x6F4D7473616C202CLL, 0xEF3D646569666964);
  v3 = (v0 + Task[9]);
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x3E656E6F6E3CLL;
  }

  MEMORY[0x22AA8A510](v4, v5);

  MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D85840);
  sub_226D6D1AC();
  sub_226C7B948(&qword_27D7A7018, MEMORY[0x277CC9260]);
  v6 = sub_226D6F1CC();
  MEMORY[0x22AA8A510](v6);

  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_226C77DE0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_226D6B49C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  Task = type metadata accessor for OrderWebServiceFetchTask();
  v2[12] = Task;
  v7 = *(*(Task - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C77EDC, 0, 0);
}

uint64_t sub_226C77EDC()
{
  v42 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[8];
  v4 = sub_226D6E07C();
  __swift_project_value_buffer(v4, qword_28105F5C0);
  sub_226C7B7F8(v3, v2, type metadata accessor for OrderWebServiceFetchTask);
  sub_226C7B7F8(v3, v1, type metadata accessor for OrderWebServiceFetchTask);
  v5 = sub_226D6E05C();
  v6 = sub_226D6E9EC();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[13];
  v9 = v0[14];
  if (v7)
  {
    v36 = v0[13];
    loga = v5;
    v10 = v0[11];
    v11 = v0[12];
    v38 = v6;
    v13 = v0[9];
    v12 = v0[10];
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v14 = 136315394;
    v15 = *(v11 + 24);
    v16 = (v9 + *(v11 + 20));
    v18 = *v16;
    v17 = v16[1];
    v19 = *(v9 + v15);
    v20 = *(v9 + v15 + 8);

    sub_226D6B45C();
    sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v21 = sub_226D6F1CC();
    v23 = v22;
    (*(v12 + 8))(v10, v13);
    sub_226C7B798(v9, type metadata accessor for OrderWebServiceFetchTask);
    v24 = sub_226AC4530(v21, v23, &v41);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    sub_226D6D1AC();
    sub_226C7B948(&qword_27D7A7018, MEMORY[0x277CC9260]);
    v25 = sub_226D6F1CC();
    v27 = v26;
    sub_226C7B798(v36, type metadata accessor for OrderWebServiceFetchTask);
    v28 = sub_226AC4530(v25, v27, &v41);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_226AB4000, loga, v38, "Fetching order %s from web service %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v37, -1, -1);
    MEMORY[0x22AA8BEE0](v14, -1, -1);
  }

  else
  {

    sub_226C7B798(v8, type metadata accessor for OrderWebServiceFetchTask);
    sub_226C7B798(v9, type metadata accessor for OrderWebServiceFetchTask);
  }

  v29 = v0[8];
  v30 = sub_226C0B798(v29);
  v0[15] = v30;
  v31 = swift_task_alloc();
  v0[16] = v31;
  *(v31 + 16) = v30;
  *(v31 + 24) = v29;
  v32 = *(MEMORY[0x277CC7900] + 4);
  log = (*MEMORY[0x277CC7900] + MEMORY[0x277CC7900]);
  v33 = swift_task_alloc();
  v0[17] = v33;
  *v33 = v0;
  v33[1] = sub_226C782EC;
  v34 = MEMORY[0x277CC7EB8];

  return (log)(v0 + 2, &unk_226D79970, v31, v34);
}

uint64_t sub_226C782EC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_226C784B8;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_226C78408;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226C78408()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  v5 = *(v0 + 56);

  v6 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);

  *v5 = v10;
  *(v5 + 16) = v9;
  *(v5 + 32) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_226C784B8()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t sub_226C7854C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_226D6B03C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C78610, 0, 0);
}

uint64_t sub_226C78610()
{
  v1 = v0[12];
  v2 = v0[9];
  Task = type metadata accessor for OrderWebServiceFetchTask();
  v4 = Task[6];
  v5 = (v2 + Task[5]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v2 + v4);
  v9 = *(v2 + v4 + 8);
  v10 = (v2 + Task[7]);
  v11 = *v10;
  v12 = v10[1];
  v13 = (v2 + Task[9]);
  v14 = *v13;
  v15 = v13[1];

  sub_226D6B02C();
  v16 = *(MEMORY[0x277CC7910] + 4);
  v21 = (*MEMORY[0x277CC7910] + MEMORY[0x277CC7910]);
  v17 = swift_task_alloc();
  v0[13] = v17;
  *v17 = v0;
  v17[1] = sub_226C78764;
  v18 = v0[12];
  v19 = v0[8];

  return v21(v0 + 2, v18);
}

uint64_t sub_226C78764()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_226C78948;
  }

  else
  {
    v6 = sub_226C788D4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226C788D4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  *(v4 + 32) = *(v0 + 48);
  *v4 = v2;
  *(v4 + 16) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226C78948()
{
  v1 = v0[12];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

void sub_226C789AC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8760, &unk_226D79760);
  sub_226D6EB7C();
  if (!v2)
  {
    if (*(v7 + 16))
    {
      v6 = a2[21];
      __swift_project_boxed_opaque_existential_1(a2 + 17, a2[20]);
      sub_226D69AEC();
    }
  }
}

void sub_226C78A94(char *a1@<X0>, uint64_t *a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, void *a4@<X3>, unint64_t *a5@<X8>)
{
  v193 = a4;
  v209 = a2;
  v227 = *MEMORY[0x277D85DE8];
  v7 = a3[1];
  v8 = a3[2];
  v197 = *a3;
  v198 = v8;
  v203 = a3;
  v9 = a3[4];
  v199 = v7;
  v200 = v9;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6EC8, &unk_226D75520);
  v10 = *(*(v191 - 8) + 64);
  MEMORY[0x28223BE20](v191);
  v192 = (v175 - v11);
  v12 = type metadata accessor for OrderNotificationCenter.Continuation();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v190 = v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_226D6D4AC();
  v187 = *(v15 - 8);
  v188 = v15;
  v16 = *(v187 + 64);
  MEMORY[0x28223BE20](v15);
  v186 = v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult();
  v201 = *(updated - 8);
  v18 = *(v201 + 64);
  v19 = MEMORY[0x28223BE20](updated);
  v189 = v175 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v175 - v22;
  MEMORY[0x28223BE20](v21);
  v204 = (v175 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A87E8, &unk_226D79938);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v195 = v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = v175 - v29;
  Task = type metadata accessor for OrderWebServiceFetchTask();
  v32 = *(*(Task - 8) + 64);
  v33 = MEMORY[0x28223BE20](Task);
  v202 = v175 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v194 = v175 - v35;
  v36 = sub_226D6B49C();
  v37 = *(v36 - 8);
  v207 = v36;
  v208 = v37;
  v38 = *(v37 + 64);
  v39 = MEMORY[0x28223BE20](v36);
  v196 = v175 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v42 = v175 - v41;
  v43 = [objc_opt_self() currentQueryGenerationToken];
  *&v223 = 0;
  v44 = [a1 setQueryGenerationFromToken:v43 error:&v223];

  v45 = v223;
  if (!v44)
  {
    v56 = v223;
    sub_226D6D04C();

    swift_willThrow();
    goto LABEL_5;
  }

  v182 = v23;
  v183 = a5;
  v184 = v30;
  sub_226D6751C();
  v46 = *(Task + 24);
  v47 = (v209 + *(Task + 20));
  v185 = Task;
  v48 = *v47;
  v49 = v47[1];
  v50 = a1;
  v52 = *(v209 + v46);
  v51 = *(v209 + v46 + 8);
  v53 = v45;

  sub_226D6B45C();
  v54 = v206;
  v55 = sub_226D6745C();
  if (v54)
  {
    (*(v208 + 8))(v42, v207);
    goto LABEL_5;
  }

  v177 = v48;
  v178 = v49;
  v206 = v50;
  v58 = v208 + 8;
  v59 = *(v208 + 8);
  v60 = v55;
  v59(v42, v207);
  if (v60)
  {
    v179 = v59;
    v194 = 0;
    v61 = *(v209 + v185[8]);
    v181 = v60;
    [v60 setFetchSequenceNumber_];
    v208 = sub_226B31FA8();
    v62 = type metadata accessor for WalletMessageUpdater();
    v63 = swift_allocObject();
    v64 = sub_226D69BFC();
    v65 = MEMORY[0x22AA85C90]();
    *(&v224 + 1) = &type metadata for ClassicOrderBiomeStream;
    *&v225[0] = &off_283A6D820;
    sub_226C02324(v225 + 8);
    v66 = sub_226D6B5EC();
    v67 = MEMORY[0x277CC7F68];
    v221 = v66;
    v222 = MEMORY[0x277CC7F68];
    __swift_allocate_boxed_opaque_existential_1(&v220);
    sub_226D6B58C();
    v218 = v66;
    v219 = v67;
    __swift_allocate_boxed_opaque_existential_1(&v217);
    sub_226D6B5AC();
    v68 = sub_226D6827C();
    v215 = v62;
    v216 = sub_226C7B948(&qword_281062070, type metadata accessor for WalletMessageUpdater);
    *&v214 = v63;
    type metadata accessor for ManagedOrderImporter();
    inited = swift_initStackObject();
    *(inited + 312) = 0xD000000000000018;
    *(inited + 320) = 0x8000000226D81BA0;
    sub_226AC484C(&v220, inited + 232);
    sub_226AC484C(&v217, inited + 272);
    v70 = MEMORY[0x277CC7238];
    *(inited + 16) = v68;
    *(inited + 24) = v70;
    *(inited + 72) = v225[4];
    *(inited + 88) = v226;
    *(inited + 96) = &type metadata for WidgetRefresher;
    *(inited + 104) = v208;
    sub_226AC484C(&v214, inited + 112);
    *(inited + 32) = v65;
    v180 = inited + 32;
    *(inited + 40) = v225[3];
    v71 = MEMORY[0x277CC79A8];
    *(inited + 56) = v64;
    *(inited + 64) = v71;
    v72 = v223;
    *(inited + 168) = v224;
    v73 = v225[1];
    *(inited + 184) = v225[0];
    *(inited + 200) = v73;
    *(inited + 216) = v225[2];
    *(inited + 152) = v72;
    v74 = *v203;
    if (!*v203)
    {
      v127 = v184;
      (*(v201 + 56))(v184, 1, 1, updated);
      v208 = MEMORY[0x277D84F90];
      v128 = v183;
      v129 = v181;
      goto LABEL_35;
    }

    v208 = v58;
    v176 = v74;
    v76 = v203[1];
    v75 = v203[2];
    v77 = v203[4];
    v175[1] = v203[3];

    sub_226B11B44(v199, v198);
    v78 = qword_28105F5B8;

    if (v78 != -1)
    {
      swift_once();
    }

    v200 = v77;
    v203 = v75;
    v79 = sub_226D6E07C();
    __swift_project_value_buffer(v79, qword_28105F5C0);
    v80 = v202;
    sub_226C7B7F8(v209, v202, type metadata accessor for OrderWebServiceFetchTask);
    v81 = sub_226D6E05C();
    v82 = sub_226D6E9EC();
    v83 = os_log_type_enabled(v81, v82);
    v84 = v194;
    if (v83)
    {
      v85 = swift_slowAlloc();
      v199 = v76;
      v86 = v85;
      v197 = v85;
      v198 = swift_slowAlloc();
      v210 = v198;
      *v86 = 136315138;
      v87 = (v80 + v185[5]);
      v89 = *v87;
      v88 = v87[1];
      v90 = (v80 + v185[6]);
      v91 = *v90;
      v92 = v90[1];

      v93 = v84;
      v94 = v196;
      sub_226D6B45C();
      sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28]);
      v95 = v207;
      v96 = sub_226D6F1CC();
      v98 = v97;
      v99 = v94;
      v84 = v93;
      v179(v99, v95);
      sub_226C7B798(v202, type metadata accessor for OrderWebServiceFetchTask);
      v100 = sub_226AC4530(v96, v98, &v210);

      v101 = v197;
      *(v197 + 4) = v100;
      v102 = v101;
      _os_log_impl(&dword_226AB4000, v81, v82, "Updating content for order %s", v101, 0xCu);
      v103 = v198;
      __swift_destroy_boxed_opaque_existential_0Tm(v198);
      MEMORY[0x22AA8BEE0](v103, -1, -1);
      v76 = v199;
      MEMORY[0x22AA8BEE0](v102, -1, -1);
    }

    else
    {

      sub_226C7B798(v80, type metadata accessor for OrderWebServiceFetchTask);
    }

    v130 = v204;
    v131 = v76;
    v132 = v76;
    v133 = v203;
    sub_226BBCB6C(v181, v176, v131, v203, 0x101u, v206, v204);
    v134 = v184;
    if (v84)
    {
      sub_226B11B98(v132, v133);

      swift_setDeallocating();
      sub_226AC47B0(v180, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

      goto LABEL_5;
    }

    v199 = v132;
    sub_226C7B7F8(v130, v184, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    (*(v201 + 56))(v134, 0, 1, updated);
    v129 = v181;
    v135 = [v181 requestAttemptCount];
    type metadata accessor for OrderImportAnalyticsEventsBuilder();
    v136 = swift_initStackObject();
    *(v136 + 16) = v135;
    *(v136 + 24) = 1;
    v208 = sub_226BB3780(v130);
    v137 = v200;
    if (v200)
    {

      v138 = sub_226D6E36C();
    }

    else
    {
      v138 = 0;
    }

    v139 = v209;
    v140 = v199;
    [v129 setLastModifiedValue_];

    if (*(v139 + v185[9] + 8))
    {
      v141 = v182;
      sub_226C7B7F8(v204, v182, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v143 = v141;
      v137 = v200;
      sub_226C7B798(v143, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
      if (EnumCaseMultiPayload == 2)
      {
        v144 = v193[21];
        __swift_project_boxed_opaque_existential_1(v193 + 17, v193[20]);
        v212 = &type metadata for OrderWebServiceFetchTask.IfModifiedSinceIgnoredEvent;
        v213 = sub_226C7B8B4();
        v145 = swift_allocObject();
        v210 = v145;
        v145[2] = 0xD00000000000003DLL;
        v145[3] = 0x8000000226D85C60;
        v129 = v181;
        v146 = v178;
        v145[4] = v177;
        v145[5] = v146;

        v140 = v199;
        sub_226D69AFC();
        __swift_destroy_boxed_opaque_existential_0Tm(&v210);
        v147 = [v129 orderWebService];
        if (v147)
        {
          v148 = v147;
          v210 = 0;
          v211 = 0xE000000000000000;
          sub_226D6EEFC();
          v149 = sub_226C77C18();
          MEMORY[0x22AA8A510](v149);

          MEMORY[0x22AA8A510](0xD000000000000069, 0x8000000226D85CA0);
          v150 = v186;
          sub_226D6D46C();
          sub_226D69F5C();

          v140 = v199;

          v151 = v150;
          v137 = v200;
          (*(v187 + 8))(v151, v188);
        }
      }
    }

    if (v137)
    {

      v152 = v140;
    }

    else
    {
      v153 = v193[21];
      __swift_project_boxed_opaque_existential_1(v193 + 17, v193[20]);
      v212 = &type metadata for OrderWebServiceFetchTask.IfModifiedMissingEvent;
      v213 = sub_226C7B860();
      v154 = swift_allocObject();
      v210 = v154;
      v154[2] = 0xD000000000000039;
      v154[3] = 0x8000000226D85BE0;
      v129 = v181;
      v155 = v178;
      v154[4] = v177;
      v154[5] = v155;

      sub_226D69AFC();
      __swift_destroy_boxed_opaque_existential_0Tm(&v210);
      v156 = [v129 orderWebService];
      if (v156)
      {
        v157 = v156;
        v210 = 0;
        v211 = 0xE000000000000000;
        sub_226D6EEFC();
        v158 = sub_226C77C18();
        MEMORY[0x22AA8A510](v158);

        MEMORY[0x22AA8A510](0xD000000000000033, 0x8000000226D85C20);
        v159 = v186;
        sub_226D6D46C();
        sub_226D69F5C();
        sub_226B11B98(v199, v203);

        (*(v187 + 8))(v159, v188);
        goto LABEL_34;
      }

      v152 = v199;
    }

    sub_226B11B98(v152, v203);

LABEL_34:
    sub_226C7B798(v204, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
    v128 = v183;
    v127 = v184;
LABEL_35:
    v160 = v195;
    [v129 setRequestAttemptCount_];
    [v129 setLastRequestAttemptDate_];
    v210 = 0;
    v161 = [v206 save_];
    v162 = v210;
    if (v161)
    {
      sub_226C7B728(v127, v160);
      if ((*(v201 + 48))(v160, 1, updated) == 1)
      {
        v163 = v162;
        sub_226AC47B0(v160, &qword_27D7A87E8, &unk_226D79938);
      }

      else
      {
        v166 = v189;
        sub_226C051C0(v160, v189, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
        v167 = qword_281061980;
        v168 = v162;
        if (v167 != -1)
        {
          swift_once();
        }

        v169 = v191;
        v170 = __swift_project_value_buffer(v191, qword_281064538);
        v171 = v192;
        sub_226AE532C(v170, v192);
        sub_226C7B7F8(v170 + *(v169 + 48), v171 + *(v169 + 48), type metadata accessor for OrderNotificationCenter.Continuation);
        v172 = v171 + *(v169 + 48);
        v173 = v190;
        sub_226C051C0(v172, v190, type metadata accessor for OrderNotificationCenter.Continuation);
        __swift_destroy_boxed_opaque_existential_0Tm(v171);
        sub_226BE7E54(v166, v173);
        sub_226C7B798(v173, type metadata accessor for OrderNotificationCenter.Continuation);
        sub_226C7B798(v166, type metadata accessor for ManagedOrderImporter.InsertOrUpdateResult);
        v127 = v184;
        v129 = v181;
      }

      [v206 refreshObject:v129 mergeChanges:0];
      swift_setDeallocating();
      sub_226AC47B0(v180, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));
      v174 = *(inited + 320);

      sub_226AC47B0(v127, &qword_27D7A87E8, &unk_226D79938);
      *v128 = v208;
    }

    else
    {
      v164 = v127;
      v165 = v210;

      sub_226D6D04C();

      swift_willThrow();
      swift_setDeallocating();
      sub_226AC47B0(v180, &qword_27D7A7790, &unk_226D79770);
      sub_226AC47B0(inited + 72, &qword_27D7A6910, &unk_226D721C0);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 112));
      sub_226AC47B0(inited + 152, &qword_27D7A6FA0, &qword_226D79780);
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 232));
      __swift_destroy_boxed_opaque_existential_0Tm((inited + 272));

      sub_226AC47B0(v164, &qword_27D7A87E8, &unk_226D79938);
    }

    goto LABEL_5;
  }

  v104 = v209;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v105 = sub_226D6E07C();
  __swift_project_value_buffer(v105, qword_28105F5C0);
  v106 = v194;
  sub_226C7B7F8(v104, v194, type metadata accessor for OrderWebServiceFetchTask);
  v107 = sub_226D6E05C();
  v108 = sub_226D6E9AC();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v208 = v58;
    v110 = v109;
    v206 = v109;
    v209 = swift_slowAlloc();
    *&v223 = v209;
    *v110 = 136315138;
    v111 = v185[6];
    v112 = (v106 + v185[5]);
    v114 = *v112;
    v113 = v112[1];
    v179 = v59;
    v115 = *(v106 + v111);
    v116 = *(v106 + v111 + 8);

    v117 = v196;
    sub_226D6B45C();
    sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28]);
    v118 = v106;
    v119 = v207;
    v120 = sub_226D6F1CC();
    v122 = v121;
    v179(v117, v119);
    sub_226C7B798(v118, type metadata accessor for OrderWebServiceFetchTask);
    v123 = sub_226AC4530(v120, v122, &v223);

    v124 = v206;
    *(v206 + 4) = v123;
    v125 = v124;
    _os_log_impl(&dword_226AB4000, v107, v108, "Order %s not found", v124, 0xCu);
    v126 = v209;
    __swift_destroy_boxed_opaque_existential_0Tm(v209);
    MEMORY[0x22AA8BEE0](v126, -1, -1);
    MEMORY[0x22AA8BEE0](v125, -1, -1);
  }

  else
  {

    sub_226C7B798(v106, type metadata accessor for OrderWebServiceFetchTask);
  }

  *v183 = MEMORY[0x277D84F90];
LABEL_5:
  v57 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C79EE8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6B49C();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  Task = type metadata accessor for OrderWebServiceFetchTask();
  v3[8] = Task;
  v8 = *(*(Task - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v9 = sub_226D67CEC();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = sub_226D6D4AC();
  v3[14] = v12;
  v13 = *(v12 - 8);
  v3[15] = v13;
  v14 = *(v13 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C7A0AC, 0, 0);
}

uint64_t sub_226C7A0AC()
{
  v85 = v0;
  v1 = *(v0 + 16);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v0 + 136);
    v4 = *(v0 + 96);
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);
    v7 = *v1;

    sub_226D6726C();
    sub_226D67CDC();
    (*(v4 + 8))(v5, v6);
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 128);
    v8 = *(v0 + 136);
    v11 = *(v0 + 112);
    v10 = *(v0 + 120);
    v12 = *(v0 + 80);
    v13 = *(v0 + 32);
    v14 = sub_226D6E07C();
    __swift_project_value_buffer(v14, qword_28105F5C0);
    sub_226C7B7F8(v13, v12, type metadata accessor for OrderWebServiceFetchTask);
    (*(v10 + 16))(v9, v8, v11);
    v15 = sub_226D6E05C();
    v16 = sub_226D6E9EC();
    v17 = os_log_type_enabled(v15, v16);
    v19 = *(v0 + 128);
    v18 = *(v0 + 136);
    v20 = *(v0 + 112);
    v21 = *(v0 + 120);
    v22 = *(v0 + 80);
    if (v17)
    {
      v76 = *(v0 + 112);
      log = v15;
      v82 = *(v0 + 136);
      v23 = *(v0 + 56);
      v24 = *(v0 + 64);
      v25 = *(v0 + 48);
      v72 = *(v0 + 40);
      v73 = swift_slowAlloc();
      buf = swift_slowAlloc();
      v84[0] = buf;
      *v73 = 136315394;
      v26 = *(v24 + 24);
      v27 = (v22 + *(v24 + 20));
      v74 = v19;
      v28 = v2;
      v29 = *v27;
      v30 = v27[1];
      v75 = v16;
      v31 = *(v22 + v26);
      v32 = *(v22 + v26 + 8);

      v2 = v28;
      sub_226D6B45C();
      sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28]);
      v33 = sub_226D6F1CC();
      v35 = v34;
      (*(v25 + 8))(v23, v72);
      sub_226C7B798(v22, type metadata accessor for OrderWebServiceFetchTask);
      v36 = sub_226AC4530(v33, v35, v84);

      *(v73 + 4) = v36;
      *(v73 + 12) = 2080;
      sub_226C7B948(&qword_281062B80, MEMORY[0x277CC9578]);
      v37 = sub_226D6F1CC();
      v39 = v38;
      v40 = *(v21 + 8);
      v40(v74, v76);
      v41 = sub_226AC4530(v37, v39, v84);

      *(v73 + 14) = v41;
      _os_log_impl(&dword_226AB4000, log, v75, "Fetched order %s, updated at %s", v73, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA8BEE0](buf, -1, -1);
      MEMORY[0x22AA8BEE0](v73, -1, -1);

      v40(v82, v76);
    }

    else
    {

      v62 = *(v21 + 8);
      v62(v19, v20);
      sub_226C7B798(v22, type metadata accessor for OrderWebServiceFetchTask);
      v62(v18, v20);
    }
  }

  else
  {
    if (qword_28105F5B8 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 72);
    v43 = *(v0 + 32);
    v44 = sub_226D6E07C();
    __swift_project_value_buffer(v44, qword_28105F5C0);
    sub_226C7B7F8(v43, v42, type metadata accessor for OrderWebServiceFetchTask);
    v45 = sub_226D6E05C();
    v46 = sub_226D6E9EC();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 72);
    if (v47)
    {
      v83 = v46;
      v49 = *(v0 + 56);
      v50 = *(v0 + 64);
      v51 = *(v0 + 48);
      v77 = *(v0 + 40);
      bufa = swift_slowAlloc();
      loga = swift_slowAlloc();
      v84[0] = loga;
      *bufa = 136315138;
      v52 = *(v50 + 24);
      v53 = (v48 + *(v50 + 20));
      v55 = *v53;
      v54 = v53[1];
      v57 = *(v48 + v52);
      v56 = *(v48 + v52 + 8);

      v2 = 0;
      sub_226D6B45C();
      sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28]);
      v58 = sub_226D6F1CC();
      v60 = v59;
      (*(v51 + 8))(v49, v77);
      sub_226C7B798(v48, type metadata accessor for OrderWebServiceFetchTask);
      v61 = sub_226AC4530(v58, v60, v84);

      *(bufa + 4) = v61;
      _os_log_impl(&dword_226AB4000, v45, v83, "Order %s not modified since last fetch", bufa, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(loga);
      MEMORY[0x22AA8BEE0](loga, -1, -1);
      MEMORY[0x22AA8BEE0](bufa, -1, -1);
    }

    else
    {

      sub_226C7B798(v48, type metadata accessor for OrderWebServiceFetchTask);
    }
  }

  v63 = *(v0 + 32);
  sub_226C789AC(*(v0 + 16), *(v0 + 24));
  if (v2)
  {

    sub_226D6725C();
  }

  v65 = *(v0 + 128);
  v64 = *(v0 + 136);
  v66 = *(v0 + 104);
  v68 = *(v0 + 72);
  v67 = *(v0 + 80);
  v69 = *(v0 + 56);

  v70 = *(v0 + 8);

  return v70();
}

uint64_t sub_226C7A814(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_226D6B49C();
  v3[10] = v4;
  v5 = *(v4 - 8);
  v3[11] = v5;
  v6 = *(v5 + 64) + 15;
  v3[12] = swift_task_alloc();
  Task = type metadata accessor for OrderWebServiceFetchTask();
  v3[13] = Task;
  v8 = *(*(Task - 8) + 64) + 15;
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C7A908, 0, 0);
}

uint64_t sub_226C7A908()
{
  v50 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  type metadata accessor for OrdersAutoBugCaptureReporter();
  inited = swift_initStackObject();
  v4 = [objc_allocWithZone(MEMORY[0x277CC85F0]) init];
  *(inited + 16) = v4;
  v5 = sub_226C778C0(v2);
  v6 = sub_226C6DEB0(v2);
  sub_226BA21B0(v5, v6);

  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 112);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  v10 = sub_226D6E07C();
  __swift_project_value_buffer(v10, qword_28105F5C0);
  sub_226C7B7F8(v8, v7, type metadata accessor for OrderWebServiceFetchTask);
  v11 = v9;
  v12 = sub_226D6E05C();
  v13 = sub_226D6E9CC();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 112);
  if (!v14)
  {

    sub_226C7B798(v15, type metadata accessor for OrderWebServiceFetchTask);
    if (sub_226D6E82C())
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v48 = v13;
  v16 = *(v0 + 96);
  v17 = *(v0 + 104);
  v18 = *(v0 + 88);
  v44 = *(v0 + 80);
  v46 = *(v0 + 56);
  v19 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v47 = swift_slowAlloc();
  v49 = v47;
  *v19 = 136315394;
  v20 = *(v17 + 24);
  v21 = (v15 + *(v17 + 20));
  v23 = *v21;
  v22 = v21[1];
  v24 = *(v15 + v20);
  v25 = *(v15 + v20 + 8);

  sub_226D6B45C();
  sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28]);
  v26 = sub_226D6F1CC();
  v28 = v27;
  (*(v18 + 8))(v16, v44);
  sub_226C7B798(v15, type metadata accessor for OrderWebServiceFetchTask);
  v29 = sub_226AC4530(v26, v28, &v49);

  *(v19 + 4) = v29;
  *(v19 + 12) = 2112;
  v30 = v46;
  v31 = _swift_stdlib_bridgeErrorToNSError();
  *(v19 + 14) = v31;
  *v45 = v31;
  _os_log_impl(&dword_226AB4000, v12, v48, "Failed to fetch order %s with error: %@", v19, 0x16u);
  sub_226AC47B0(v45, &qword_27D7A5FB0, &qword_226D70870);
  MEMORY[0x22AA8BEE0](v45, -1, -1);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  MEMORY[0x22AA8BEE0](v47, -1, -1);
  MEMORY[0x22AA8BEE0](v19, -1, -1);

  if ((sub_226D6E82C() & 1) == 0)
  {
LABEL_7:
    v32 = *(v0 + 72);
    v33 = *(v0 + 56);
    v34 = **(v0 + 64);
    v35 = sub_226D676AC();
    v36 = swift_task_alloc();
    v36[2] = v32;
    v36[3] = v35;
    v36[4] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A86F0, &unk_226D79950);
    sub_226D6EB7C();
    v38 = *(v0 + 64);
    v37 = *(v0 + 72);
    v39 = *(v0 + 56);

    sub_226C6EB3C(v39, *(v0 + 40), *(v0 + 48), v38 + 136);
  }

LABEL_8:
  v40 = *(v0 + 112);
  v41 = *(v0 + 96);

  v42 = *(v0 + 8);

  return v42();
}

void sub_226C7AD8C(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v70 = a2;
  v67 = a3;
  v65 = a4;
  v71[1] = *MEMORY[0x277D85DE8];
  v5 = sub_226D6D4AC();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x28223BE20](v5);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Task = type metadata accessor for OrderWebServiceFetchTask();
  v9 = *(*(Task - 8) + 64);
  MEMORY[0x28223BE20](Task);
  v68 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6B49C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v61 - v17;
  sub_226D6751C();
  v19 = *(Task + 24);
  v20 = (a1 + *(Task + 20));
  v21 = *v20;
  v22 = v20[1];
  v66 = a1;
  v23 = a1 + v19;
  v24 = *(a1 + v19);
  v25 = *(v23 + 1);

  sub_226D6B45C();
  v26 = v69;
  v27 = sub_226D6745C();
  v69 = v26;
  if (!v26)
  {
    v28 = v27;
    v29 = v66;
    v30 = v67;
    v61 = v16;
    v31 = v68;
    v32 = *(v12 + 8);
    v32(v18, v11);
    if (v28)
    {
      v31 = [v28 orderWebService];
      sub_226C6EAC8(v30, v31);

      v33 = [v28 requestAttemptCount];
      if (!__OFADD__(v33, 1))
      {
        [v28 setRequestAttemptCount_];
        v34 = v62;
        sub_226D6D46C();
        v35 = sub_226D6D3EC();
        (*(v63 + 8))(v34, v64);
        [v28 setLastRequestAttemptDate_];

        v71[0] = 0;
        if (![v70 save_])
        {
          v58 = v71[0];
          v59 = sub_226D6D04C();

          v69 = v59;
          swift_willThrow();

          goto LABEL_14;
        }

        v36 = v71[0];
        v37 = [v28 requestAttemptCount];

        v38 = v65;
LABEL_13:
        *v38 = v37;
        *(v38 + 8) = v28 == 0;
        goto LABEL_14;
      }

      __break(1u);
    }

    else
    {
      v67 = v11;
      v70 = 0;
      v11 = v29;
      if (qword_28105F5B8 == -1)
      {
LABEL_8:
        v39 = sub_226D6E07C();
        __swift_project_value_buffer(v39, qword_28105F5C0);
        v40 = v31;
        sub_226C7B7F8(v11, v31, type metadata accessor for OrderWebServiceFetchTask);
        v41 = sub_226D6E05C();
        v42 = sub_226D6E9AC();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v71[0] = v66;
          *v43 = 136315138;
          v44 = *(Task + 24);
          v45 = &v40[*(Task + 20)];
          v47 = *v45;
          v46 = *(v45 + 1);
          v48 = *&v40[v44];
          v49 = *&v40[v44 + 8];

          v50 = v32;
          v51 = v61;
          sub_226D6B45C();
          sub_226C7B948(&qword_27D7A6658, MEMORY[0x277CC7F28]);
          v52 = v67;
          v53 = sub_226D6F1CC();
          v55 = v54;
          v50(v51, v52);
          sub_226C7B798(v68, type metadata accessor for OrderWebServiceFetchTask);
          v56 = sub_226AC4530(v53, v55, v71);

          *(v43 + 4) = v56;
          _os_log_impl(&dword_226AB4000, v41, v42, "Order %s not found", v43, 0xCu);
          v57 = v66;
          __swift_destroy_boxed_opaque_existential_0Tm(v66);
          MEMORY[0x22AA8BEE0](v57, -1, -1);
          MEMORY[0x22AA8BEE0](v43, -1, -1);
        }

        else
        {

          sub_226C7B798(v31, type metadata accessor for OrderWebServiceFetchTask);
        }

        v37 = 0;
        v38 = v65;
        v28 = v70;
        goto LABEL_13;
      }
    }

    swift_once();
    goto LABEL_8;
  }

  (*(v12 + 8))(v18, v11);
LABEL_14:
  v60 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C7B368(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = *v2;
  v4 = v2[1];
  v5 = (v1 + *(a1 + 24));
  v6 = *v5;
  v7 = v5[1];

  sub_226D6B45C();
  type metadata accessor for OrderWebServiceTaskIdentifier(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_226C7B3F8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v3 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D71840;
  v7 = *(a1 + 24);
  v8 = (v1 + *(a1 + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);

  sub_226D6B45C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v14 = sub_226B1FBC0(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v14;
}

uint64_t sub_226C7B5A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  *(a1 + 8) = sub_226C7B948(&qword_27D7A87C8, type metadata accessor for OrderWebServiceFetchTask);
  result = sub_226C7B948(a4, type metadata accessor for OrderWebServiceFetchTask);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226C7B6B0(uint64_t a1)
{
  result = sub_226C7B948(&qword_27D7A87E0, type metadata accessor for OrderWebServiceFetchTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226C7B728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A87E8, &unk_226D79938);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C7B798(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226C7B7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_226C7B860()
{
  result = qword_27D7A87F0;
  if (!qword_27D7A87F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A87F0);
  }

  return result;
}

unint64_t sub_226C7B8B4()
{
  result = qword_27D7A87F8;
  if (!qword_27D7A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A87F8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226C7B948(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226C7B9B0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C7854C(a1, v5, v4);
}

uint64_t sub_226C7BA90(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D690CC();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8800, &unk_226D79A50) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v8 = sub_226D6B54C();
  v3[10] = v8;
  v9 = *(v8 - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C7BBF4, 0, 0);
}

uint64_t sub_226C7BBF4()
{
  v52 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v51[0] = v7;
    *v6 = 136315138;
    v8 = sub_226D6D52C();
    v9 = MEMORY[0x22AA8A6A0](v5, v8);
    v11 = sub_226AC4530(v9, v10, v51);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_226AB4000, v3, v4, "Updating transaction category for transactions %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v12 = v0[10];
  v13 = v0[11];
  v14 = v0[9];
  v15 = *(v0[6] + 16);
  v15(v0[8], v0[2], v0[5]);
  sub_226D6B53C();
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    sub_226C7C150(v0[9]);
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v16 = v0[7];
    v17 = v0[5];
    v18 = v0[2];
    __swift_project_value_buffer(v2, qword_28105F600);
    v15(v16, v18, v17);
    v19 = sub_226D6E05C();
    v20 = sub_226D6E9CC();
    v21 = os_log_type_enabled(v19, v20);
    v23 = v0[6];
    v22 = v0[7];
    v24 = v0[5];
    if (v21)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v51[0] = v26;
      *v25 = 136315138;
      sub_226C7CBB0(&qword_27D7A8808, MEMORY[0x277CC7770]);
      v27 = sub_226D6F1CC();
      v29 = v28;
      (*(v23 + 8))(v22, v24);
      v30 = sub_226AC4530(v27, v29, v51);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_226AB4000, v19, v20, "Failed to change preferred transaction category. Unsupported transaction category %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v22, v24);
    }

    v44 = sub_226D66EDC();
    sub_226C7CBB0(&qword_27D7A7DC0, MEMORY[0x277CC65F8]);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x277CC65F0], v44);
    swift_willThrow();
    v46 = v0[12];
    v48 = v0[8];
    v47 = v0[9];
    v49 = v0[7];

    v43 = v0[1];
  }

  else
  {
    v32 = v0[11];
    v31 = v0[12];
    v33 = v0[10];
    v35 = v0[3];
    v34 = v0[4];
    (*(v32 + 32))(v31, v0[9], v33);
    v36 = *(v34 + 56);
    v37 = sub_226D676AC();
    v38 = swift_task_alloc();
    v38[2] = v37;
    v38[3] = v35;
    v38[4] = v31;
    sub_226D6EB7C();

    (*(v32 + 8))(v31, v33);
    v39 = v0[12];
    v40 = v0[8];
    v41 = v0[9];
    v42 = v0[7];

    v43 = v0[1];
  }

  return v43();
}

uint64_t sub_226C7C150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8800, &unk_226D79A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_226C7C1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  v69[1] = *MEMORY[0x277D85DE8];
  v53 = sub_226D6D4AC();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v53);
  v56 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_226D6D52C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v62 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v17 = [objc_opt_self() currentQueryGenerationToken];
  v69[0] = 0;
  v66 = a1;
  v18 = [a1 setQueryGenerationFromToken:v17 error:v69];

  v19 = v69[0];
  if (!v18)
  {
    v46 = v69[0];
    sub_226D6D04C();

LABEL_20:
    result = swift_willThrow();
    goto LABEL_21;
  }

  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = sub_226D6AC0C();
    v22 = v11 + 16;
    v67 = *(v11 + 16);
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v52 = (v7 + 8);
    v63 = *(v22 + 56);
    v64 = v21;
    v24 = v19;
    *&v25 = 136315138;
    v55 = v25;
    v26 = v56;
    v60 = v22;
    v61 = v16;
    v65 = (v22 - 8);
    while (1)
    {
      v28 = v67(v16, v23, v10);
      v68 = MEMORY[0x22AA8B6A0](v28);
      v29 = sub_226D6AABC();
      if (v4)
      {
        break;
      }

      v42 = v29;
      if (!v29)
      {
        goto LABEL_9;
      }

      v43 = sub_226D6C4DC();
      v44 = *(v43 + 48);
      v45 = *(v43 + 52);
      swift_allocObject();
      sub_226D6C4CC();
      sub_226D6D46C();
      sub_226D6C4AC();
      (*v52)(v26, v53);

      v27 = v65;
LABEL_6:
      objc_autoreleasePoolPop(v68);
      (*v27)(v16, v10);
      v23 += v63;
      if (!--v20)
      {
        goto LABEL_17;
      }
    }

    v4 = 0;
LABEL_9:
    v30 = v62;
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v31 = sub_226D6E07C();
    __swift_project_value_buffer(v31, qword_28105F600);
    v67(v30, v16, v10);
    v32 = sub_226D6E05C();
    v33 = sub_226D6E9CC();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v58 = v20;
      v35 = v34;
      v57 = swift_slowAlloc();
      v69[0] = v57;
      *v35 = v55;
      sub_226C7CBB0(&qword_27D7A6648, MEMORY[0x277CC95F0]);
      v36 = sub_226D6F1CC();
      v59 = 0;
      v38 = v37;
      v27 = v65;
      (*v65)(v30, v10);
      v39 = sub_226AC4530(v36, v38, v69);
      v4 = v59;

      *(v35 + 4) = v39;
      _os_log_impl(&dword_226AB4000, v32, v33, "Failed to change preferred transaction category. Transaction with %s doesn't exist.", v35, 0xCu);
      v40 = v57;
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      v26 = v56;
      MEMORY[0x22AA8BEE0](v40, -1, -1);
      v41 = v35;
      v20 = v58;
      MEMORY[0x22AA8BEE0](v41, -1, -1);
    }

    else
    {

      v27 = v65;
      (*v65)(v30, v10);
    }

    v16 = v61;
    goto LABEL_6;
  }

  v47 = v69[0];
LABEL_17:
  v69[0] = 0;
  if (([v66 save_] & 1) == 0)
  {
    v49 = v69[0];
    sub_226D6D04C();

    goto LABEL_20;
  }

  result = v69[0];
LABEL_21:
  v50 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_226C7C780(void *a1, uint64_t a2, char a3)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() currentQueryGenerationToken];
  v36[0] = 0;
  v13 = [a1 setQueryGenerationFromToken:v12 error:v36];

  v14 = v36[0];
  if (v13)
  {
    sub_226D6AC0C();
    v15 = v14;
    v16 = sub_226D6AABC();
    if (!v3)
    {
      v17 = v16;
      if (v16)
      {
        v18 = sub_226D6C4DC();
        v19 = *(v18 + 48);
        v20 = *(v18 + 52);
        swift_allocObject();
        sub_226D6C4CC();
        sub_226D6C4BC();

        v36[0] = 0;
        if ([a1 save_])
        {
          v32 = v36[0];
        }

        else
        {
          v33 = v36[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_28105F5F8 != -1)
        {
          swift_once();
        }

        v23 = sub_226D6E07C();
        __swift_project_value_buffer(v23, qword_28105F600);
        (*(v8 + 16))(v11, a2, v7);
        v24 = sub_226D6E05C();
        v25 = sub_226D6E9CC();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v36[0] = v35;
          *v26 = 136315394;
          sub_226C7CBB0(&qword_27D7A6648, MEMORY[0x277CC95F0]);
          HIDWORD(v34) = v25;
          v27 = sub_226D6F1CC();
          v29 = v28;
          (*(v8 + 8))(v11, v7);
          v30 = sub_226AC4530(v27, v29, v36);

          *(v26 + 4) = v30;
          *(v26 + 12) = 1024;
          *(v26 + 14) = a3 & 1;
          _os_log_impl(&dword_226AB4000, v24, BYTE4(v34), "Failed to find transaction with %s, unable to update the exclude from spending summary to: %{BOOL}d.", v26, 0x12u);
          v31 = v35;
          __swift_destroy_boxed_opaque_existential_0Tm(v35);
          MEMORY[0x22AA8BEE0](v31, -1, -1);
          MEMORY[0x22AA8BEE0](v26, -1, -1);
        }

        else
        {

          (*(v8 + 8))(v11, v7);
        }
      }
    }
  }

  else
  {
    v21 = v36[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v22 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C7CBB0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226C7CC08(void *a1, uint64_t a2)
{
  v37 = a2;
  v39[5] = *MEMORY[0x277D85DE8];
  v3 = sub_226D6D4AC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66D0, &unk_226D75B80);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = [objc_opt_self() currentQueryGenerationToken];
  v39[0] = 0;
  v16 = [a1 setQueryGenerationFromToken:v15 error:v39];

  v17 = v39[0];
  if (v16)
  {
    v36 = v3;
    v18 = v4;
    v19 = *(v8 + 48);
    sub_226D69D0C();
    v20 = v17;
    v21 = v38;
    result = sub_226BDD96C(&v14[v19], a1);
    if (!v21)
    {
      v23 = result & 1;
      *v14 = result & 1;
      sub_226C7D0B4(v14, v12);
      v24 = *(v8 + 48);
      v25 = v18;
      v26 = *(v18 + 48);
      v27 = v36;
      if (v26(&v12[v24], 1, v36) == 1)
      {
        sub_226AC47B0(v14, &qword_27D7A66D0, &unk_226D75B80);
        v28 = &qword_27D7A8BE0;
        v29 = &unk_226D718F0;
        v30 = &v12[v24];
      }

      else
      {
        (*(v25 + 32))(v7, &v12[v24], v27);
        v32 = sub_226D6B5EC();
        v39[3] = v32;
        v39[4] = MEMORY[0x277CC7F70];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v39);
        (*(*(v32 - 1) + 16))(boxed_opaque_existential_1, v37, v32);
        sub_226B5A9C8(v23, v7);
        sub_226AFD7B8(v39);
        (*(v25 + 8))(v7, v27);
        v28 = &qword_27D7A66D0;
        v29 = &unk_226D75B80;
        v30 = v14;
      }

      result = sub_226AC47B0(v30, v28, v29);
    }
  }

  else
  {
    v31 = v39[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226C7CF58(char *a1)
{
  v2 = sub_226D6B5EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *a1;
  v8 = sub_226D676AC();
  v9 = type metadata accessor for PostInstallTaskEnvironment();
  (*(v3 + 16))(v6, &a1[*(v9 + 20)], v2);
  v12 = v8;
  v13 = v6;
  sub_226D6EB7C();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_226C7D0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66D0, &unk_226D75B80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_226C7D134(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  sub_226D69F8C();
  v2 = [swift_getObjCClassFromMetadata() fetchRequest];
  v3 = [objc_allocWithZone(MEMORY[0x277CBE360]) initWithFetchRequest_];
  v9[0] = 0;
  v4 = [a1 executeRequest:v3 error:v9];
  if (v4)
  {
    v5 = v4;
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_226C7D270(uint64_t *a1)
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Running clear transaction icons post install task", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = *a1;
  v7 = sub_226D676AC();
  MEMORY[0x28223BE20](v7);
  sub_226D6EB8C();
}

__n128 ManagedOrderUpdater.__allocating_init(widgetRefresher:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(a1 + 32);
  return result;
}

uint64_t ManagedOrderUpdater.init(widgetRefresher:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(a1 + 32);
  return v1;
}

void sub_226C7D450()
{
  sub_226D6751C();
  v1 = sub_226D6745C();
  if (!v0)
  {
    v2 = v1;
    if (v1)
    {
      sub_226D674CC();
    }

    else
    {
      sub_226C7DB0C();
      swift_allocError();
      swift_willThrow();
    }
  }
}

uint64_t sub_226C7D500(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_226D6751C();
  result = sub_226D6745C();
  if (!v4)
  {
    if (result)
    {
      v7 = result;
      sub_226D674BC();
      memset(v8, 0, sizeof(v8));
      sub_226B42C34(v7, a4);

      return sub_226AFD62C(v8);
    }

    else
    {
      sub_226C7DB0C();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226C7D5EC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_226D674BC();
  memset(v7, 0, sizeof(v7));
  sub_226B42C34(a1, a4);
  return sub_226AFD62C(v7);
}

uint64_t sub_226C7D668()
{
  v1 = sub_226D6714C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v8[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226C7DB60(v0 + 16, v8);
  if (!v9)
  {
    return sub_226C7DBD0(v8);
  }

  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v2 + 104))(v5, *MEMORY[0x277CC6B48], v1);
  sub_226D680BC();
  (*(v2 + 8))(v5, v1);
  return __swift_destroy_boxed_opaque_existential_0Tm(v8);
}

uint64_t ManagedOrderUpdater.__deallocating_deinit()
{
  sub_226C7DBD0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t ManagedOrderUpdater.OrderUpdatingError.hashValue.getter()
{
  sub_226D6F2FC();
  MEMORY[0x22AA8B3B0](0);
  return sub_226D6F35C();
}

unint64_t sub_226C7D88C()
{
  sub_226D6751C();
  v2 = sub_226D674EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D79B40;
  v4 = MEMORY[0x277D837D0];
  *(v3 + 32) = 0xD000000000000012;
  *(v3 + 40) = 0x8000000226D83150;
  *(v3 + 56) = v4;
  *(v3 + 64) = 0x626557726564726FLL;
  *(v3 + 72) = 0xEF65636976726553;
  *(v3 + 88) = v4;
  *(v3 + 96) = 0xD000000000000013;
  *(v3 + 104) = 0x8000000226D85D70;
  *(v3 + 120) = v4;
  *(v3 + 128) = 0xD000000000000017;
  *(v3 + 136) = 0x8000000226D85D90;
  *(v3 + 152) = v4;
  *(v3 + 160) = 0xD000000000000020;
  *(v3 + 168) = 0x8000000226D85DB0;
  *(v3 + 216) = v4;
  *(v3 + 184) = v4;
  *(v3 + 192) = 0xD000000000000020;
  *(v3 + 200) = 0x8000000226D85DE0;
  v5 = sub_226D6E5CC();

  [v2 setPropertiesToFetch_];

  result = sub_226D6EBBC();
  if (v0)
  {

    return v1 & 1;
  }

  v7 = result;
  if (!(result >> 62))
  {
    v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_14:

    v1 = 0;
    return v1 & 1;
  }

  result = sub_226D6EDFC();
  v8 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if (v8 >= 1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v1 = 0;
      v9 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v9++, v7);
        v10 = sub_226D674DC();
        swift_unknownObjectRelease();
        v1 |= v10;
      }

      while (v8 != v9);
    }

    else
    {
      v1 = 0;
      v11 = 32;
      do
      {
        v12 = *(v7 + v11);
        v13 = sub_226D674DC();

        v1 |= v13;
        v11 += 8;
        --v8;
      }

      while (v8);
    }

    return v1 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_226C7DB0C()
{
  result = qword_27D7A8810;
  if (!qword_27D7A8810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8810);
  }

  return result;
}

uint64_t sub_226C7DB60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6910, &unk_226D721C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226C7DBD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6910, &unk_226D721C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226C7DC3C()
{
  result = qword_27D7A8818;
  if (!qword_27D7A8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8818);
  }

  return result;
}

uint64_t sub_226C7DDF8(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 152) = a3;
  *(v4 + 24) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v6 = sub_226D6D4AC();
  *(v4 + 72) = v6;
  v7 = *(v6 - 8);
  *(v4 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C7DF28, 0, 0);
}

uint64_t sub_226C7DF28()
{
  *(v0 + 16) = MEMORY[0x277D84FA0];
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = *(v0 + 24);
    }

    result = sub_226D6EDFC();
    *(v0 + 112) = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = *(v0 + 40);
    v14 = *(v0 + 16);
    if (*(v0 + 152))
    {
      v15 = sub_226C7ED30(v14);
    }

    else
    {
      v15 = sub_226C7E99C(v14);
    }

    v16 = v15;

    v18 = *(v0 + 96);
    v17 = *(v0 + 104);
    v19 = *(v0 + 88);
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = *(v0 + 48);
    v23 = *(v0 + 32);
    v24 = swift_task_alloc();
    *(v24 + 16) = v23;
    v25 = sub_226C40EA4(sub_226C7F8D0, v24, v16);

    v26 = *(v0 + 8);

    return v26(v25);
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 112) = result;
  if (!result)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = *(v0 + 24);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v3 + 32);
  }

  v5 = v4;
  *(v0 + 120) = v4;
  *(v0 + 128) = 1;
  v6 = *(v0 + 40);
  v7 = v6[3];
  v8 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v9 = *(v8 + 8);
  v27 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  *v11 = v0;
  v11[1] = sub_226C7E278;

  return v27(v5, v7, v8);
}

uint64_t sub_226C7E278(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_226C7E378, 0, 0);
}

void sub_226C7E378()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    goto LABEL_24;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = *(v0 + 144); v2; i = *(v0 + 144))
  {
    v4 = 0;
    v66 = v1 & 0xFFFFFFFFFFFFFF8;
    v67 = v1 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v64 = i + 32;
    v65 = v2;
    while (v67)
    {
      v7 = MEMORY[0x22AA8AFD0](v4, *(v0 + 144));
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

LABEL_9:
      v9 = v7;
      v10 = [v9 transactionDate];
      if (v10)
      {
        v11 = *(v0 + 48);
        v12 = v10;
        sub_226D6D45C();

        v13 = 0;
      }

      else
      {
        v13 = 1;
      }

      v15 = *(v0 + 72);
      v14 = *(v0 + 80);
      v17 = *(v0 + 56);
      v16 = *(v0 + 64);
      v18 = *(v0 + 48);
      (*(v14 + 56))(v18, v13, 1, v15);
      v19 = v18;
      v1 = &qword_27D7A8BE0;
      sub_226AFD80C(v19, v17, &qword_27D7A8BE0, &unk_226D718F0);
      sub_226AFD80C(v17, v16, &qword_27D7A8BE0, &unk_226D718F0);

      if ((*(v14 + 48))(v16, 1, v15) == 1)
      {
        sub_226AC47B0(*(v0 + 64), &qword_27D7A8BE0, &unk_226D718F0);
        v6 = v65;
      }

      else
      {
        v20 = *(v0 + 80);
        v22 = *(v20 + 32);
        v1 = v20 + 32;
        v21 = v22;
        v22(*(v0 + 104), *(v0 + 64), *(v0 + 72));
        v6 = v65;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_226BBB218(0, *(v5 + 2) + 1, 1, v5);
        }

        v24 = *(v5 + 2);
        v23 = *(v5 + 3);
        if (v24 >= v23 >> 1)
        {
          v5 = sub_226BBB218(v23 > 1, v24 + 1, 1, v5);
        }

        v25 = *(v0 + 104);
        v26 = *(v0 + 72);
        v27 = *(v0 + 80);
        *(v5 + 2) = v24 + 1;
        v21(&v5[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24], v25, v26);
      }

      ++v4;
      if (v8 == v6)
      {
        v28 = *(v0 + 144);
        goto LABEL_26;
      }
    }

    if (v4 >= *(v66 + 16))
    {
      goto LABEL_23;
    }

    v7 = *(v64 + 8 * v4);
    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v2 = sub_226D6EDFC();
  }

  v5 = MEMORY[0x277D84F90];
LABEL_26:

  v29 = *(v5 + 2);
  if (v29)
  {
    v30 = *(v0 + 80);
    v31 = &v5[(*(v30 + 80) + 32) & ~*(v30 + 80)];
    v32 = *(v30 + 72);
    v33 = *(v30 + 16);
    do
    {
      v35 = *(v0 + 88);
      v34 = *(v0 + 96);
      v37 = *(v0 + 72);
      v36 = *(v0 + 80);
      v33(v35, v31, v37);
      sub_226C259C4(v34, v35);
      (*(v36 + 8))(v34, v37);
      v31 += v32;
      --v29;
    }

    while (v29);
  }

  v38 = *(v0 + 128);
  v39 = *(v0 + 112);

  if (v38 == v39)
  {
    v40 = *(v0 + 40);
    v41 = *(v0 + 16);
    if (*(v0 + 152))
    {
      v42 = sub_226C7ED30(v41);
    }

    else
    {
      v42 = sub_226C7E99C(v41);
    }

    v46 = v42;

    v55 = *(v0 + 96);
    v54 = *(v0 + 104);
    v56 = *(v0 + 88);
    v58 = *(v0 + 56);
    v57 = *(v0 + 64);
    v59 = *(v0 + 48);
    v60 = *(v0 + 32);
    v61 = swift_task_alloc();
    *(v61 + 16) = v60;
    v62 = sub_226C40EA4(sub_226C7F8D0, v61, v46);

    v63 = *(v0 + 8);

    v63(v62);
    return;
  }

  v43 = *(v0 + 128);
  v44 = *(v0 + 24);
  if ((v44 & 0xC000000000000001) != 0)
  {
    v45 = MEMORY[0x22AA8AFD0](*(v0 + 128));
  }

  else
  {
    if (v43 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_46:
      __break(1u);
      return;
    }

    v45 = *(v44 + 8 * v43 + 32);
  }

  v47 = v45;
  *(v0 + 120) = v45;
  *(v0 + 128) = v43 + 1;
  if (__OFADD__(v43, 1))
  {
    __break(1u);
    goto LABEL_46;
  }

  v48 = *(v0 + 40);
  v49 = v48[3];
  v50 = v48[4];
  __swift_project_boxed_opaque_existential_1(v48, v49);
  v51 = *(v50 + 8);
  v68 = (v51 + *v51);
  v52 = v51[1];
  v53 = swift_task_alloc();
  *(v0 + 136) = v53;
  *v53 = v0;
  v53[1] = sub_226C7E278;

  v68(v47, v49, v50);
}

uint64_t sub_226C7E99C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v34 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v33 = &v29 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v32 = &v29 - v12;
  MEMORY[0x28223BE20](v11);
  v36 = &v29 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v30 = v1;
    v31 = v4;
    v15 = sub_226C24AF0(v14, 0);
    v16 = sub_226C3ACA0(v35, (v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80))), v14, a1);
    v2 = v35[3];

    sub_226AD3C20();
    if (v16 != v14)
    {
      __break(1u);
      goto LABEL_11;
    }

    v2 = v30;
    v4 = v31;
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v35[0] = v15;
  sub_226C7F8F0(sub_226C811D4, 0);
  if (v2)
  {
LABEL_11:

    __break(1u);
    return result;
  }

  v17 = *(v35[0] + 16);
  if (v17)
  {
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v31 = 0;
    v19 = v35[0] + v18;
    v20 = *(v5 + 16);
    v20(v36, v35[0] + v18, v4);
    v21 = v32;
    v20(v32, v19 + *(v5 + 72) * (v17 - 1), v4);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A78F8, &unk_226D75940);
    v22 = *(sub_226D6CD7C() - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_226D70840;
    LODWORD(v19) = *(type metadata accessor for BankConnectLinkingDateQueryCalculator() + 20);
    sub_226D6D5FC();
    v26 = v36;
    sub_226D6D5EC();
    sub_226D6CD3C();
    v27 = *(v5 + 8);
    v27(v21, v4);
    v27(v26, v4);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v25;
}

uint64_t sub_226C7ED30(uint64_t a1)
{
  v2 = sub_226D6CD7C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v75 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v71 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v82 = &v71 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v81 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - v14;
  v84 = sub_226D6D4AC();
  v16 = *(v84 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v84);
  v97 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v96 = &v71 - v21;
  MEMORY[0x28223BE20](v20);
  v93 = &v71 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6558, &qword_226D7CCE0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v74 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v77 = &v71 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v83 = &v71 - v30;
  MEMORY[0x28223BE20](v29);
  v31 = *(v3 + 56);
  v98 = &v71 - v32;
  v91 = v31;
  v92 = v3 + 56;
  v31();
  v33 = *(a1 + 16);
  if (v33)
  {
    v34 = sub_226C24AF0(*(a1 + 16), 0);
    v35 = v16;
    v16 = sub_226C3ACA0(v100, (v34 + ((*(v16 + 80) + 32) & ~*(v16 + 80))), v33, a1);
    v94 = v100[2];
    v95 = v100[1];
    v89 = v100[4];
    v90 = v100[3];

    sub_226AD3C20();
    if (v16 == v33)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v35 = v16;
  v34 = MEMORY[0x277D84F90];
LABEL_5:
  v100[0] = v34;
  v36 = v99;
  sub_226C7F8F0(sub_226C811D4, 0);
  if (v36)
  {

    __break(1u);
  }

  else
  {
    v73 = 0;
    v37 = v100[0];
    v38 = *(v100[0] + 16);
    v39 = v84;
    if (v38)
    {
      v95 = v15;
      v72 = v9;
      v40 = *(type metadata accessor for BankConnectLinkingDateQueryCalculator() + 20);
      v41 = v35 + 16;
      v89 = *(v35 + 16);
      v90 = v40;
      v42 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v71 = v37;
      v43 = v37 + v42;
      v44 = *(v35 + 72);
      v87 = (v35 + 8);
      v88 = v44;
      v86 = (v3 + 48);
      v94 = (v3 + 32);
      v76 = (v3 + 16);
      v78 = v3;
      v79 = (v3 + 8);
      v85 = MEMORY[0x277D84F90];
      v101 = v2;
      v45 = v83;
      v80 = v41;
      do
      {
        v99 = v38;
        v46 = v93;
        v89(v93, v43, v39);
        sub_226D6D5FC();
        sub_226D6D5EC();
        (*v87)(v46, v39);
        v47 = v95;
        sub_226D6CD3C();
        v48 = v98;
        sub_226AEF224(v98, v45);
        v49 = v101;
        if ((*v86)(v45, 1, v101) == 1)
        {
          sub_226AC47B0(v48, &qword_27D7A6558, &qword_226D7CCE0);
          sub_226AC47B0(v45, &qword_27D7A6558, &qword_226D7CCE0);
          (*v94)(v48, v47, v49);
          (v91)(v48, 0, 1, v49);
        }

        else
        {
          v50 = *v94;
          v51 = v81;
          (*v94)(v81, v45, v49);
          if (sub_226D6CD1C())
          {
            sub_226D6CD4C();
            sub_226D6CD2C();
            v52 = v77;
            sub_226D6CD3C();
            v53 = *v79;
            (*v79)(v51, v101);
            v53(v47, v101);
            sub_226AC47B0(v48, &qword_27D7A6558, &qword_226D7CCE0);
            (v91)(v52, 0, 1, v101);
            v54 = v52;
            v45 = v83;
            sub_226AFD80C(v54, v48, &qword_27D7A6558, &qword_226D7CCE0);
            v39 = v84;
          }

          else
          {
            (*v76)(v82, v51, v49);
            v55 = v85;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_226BBB1F0(0, v55[2] + 1, 1, v55);
            }

            v57 = v55[2];
            v56 = v55[3];
            if (v57 >= v56 >> 1)
            {
              v85 = sub_226BBB1F0(v56 > 1, v57 + 1, 1, v55);
            }

            else
            {
              v85 = v55;
            }

            v58 = v78;
            v59 = v51;
            v60 = v101;
            (*(v78 + 8))(v59, v101);
            v61 = v98;
            sub_226AC47B0(v98, &qword_27D7A6558, &qword_226D7CCE0);
            v62 = v85;
            *(v85 + 16) = v57 + 1;
            v50(v62 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57, v82, v60);
            v50(v61, v95, v60);
            (v91)(v61, 0, 1, v60);
            v45 = v83;
            v39 = v84;
          }
        }

        v43 += v88;
        v38 = v99 - 1;
      }

      while (v99 != 1);

      v3 = v78;
      v63 = v75;
      v9 = v72;
      v2 = v101;
      v64 = v85;
    }

    else
    {

      v64 = MEMORY[0x277D84F90];
      v63 = v75;
    }

    v65 = v98;
    v66 = v74;
    sub_226AEF224(v98, v74);
    if ((*(v3 + 48))(v66, 1, v2) == 1)
    {
      sub_226AC47B0(v65, &qword_27D7A6558, &qword_226D7CCE0);
      sub_226AC47B0(v66, &qword_27D7A6558, &qword_226D7CCE0);
    }

    else
    {
      v67 = *(v3 + 32);
      v67(v9, v66, v2);
      (*(v3 + 16))(v63, v9, v2);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_226BBB1F0(0, *(v64 + 2) + 1, 1, v64);
      }

      v69 = *(v64 + 2);
      v68 = *(v64 + 3);
      if (v69 >= v68 >> 1)
      {
        v64 = sub_226BBB1F0(v68 > 1, v69 + 1, 1, v64);
      }

      (*(v3 + 8))(v9, v2);
      sub_226AC47B0(v98, &qword_27D7A6558, &qword_226D7CCE0);
      *(v64 + 2) = v69 + 1;
      v67(&v64[((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v69], v63, v2);
    }

    return v64;
  }

  return result;
}

uint64_t sub_226C7F750(uint64_t a1, uint64_t a2)
{
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6CD7C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  (*(v12 + 16))(&v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  (*(v5 + 16))(v8, a2, v4);
  return sub_226D6BE2C();
}

uint64_t sub_226C7F8F0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v3 = v2;
  v6 = *(sub_226D6D4AC() - 8);
  v7 = *v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_226C694B4(v7);
  }

  v9 = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10 = v7[2];
  result = sub_226C7F9B0(a1, a2);
  *v3 = v7;
  return result;
}

uint64_t sub_226C7F9B0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_226D6F1BC();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_226D6D4AC();
        v9 = sub_226D6E63C();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_226D6D4AC() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_226C7FDD8(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_226C7FAEC(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_226C7FAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v53 = a5;
  v54 = a4;
  v11 = sub_226D6D4AC();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v39 - v16;
  result = MEMORY[0x28223BE20](v15);
  v40 = a2;
  if (a3 != a2)
  {
    v51 = &v39 - v18;
    v20 = *v5;
    v22 = *(v19 + 16);
    v21 = v19 + 16;
    v23 = *(v21 + 56);
    v49 = v22;
    v50 = (v21 - 8);
    v52 = v21;
    v46 = (v21 + 16);
    v47 = v20;
    v24 = v20 + v23 * (a3 - 1);
    v45 = -v23;
    v25 = a1 - a3;
    v39 = v23;
    v26 = v20 + v23 * a3;
    v27 = v55;
    while (2)
    {
      v43 = v24;
      v44 = a3;
      v41 = v26;
      v42 = v25;
      v28 = v24;
      while (1)
      {
        v29 = v51;
        v30 = v49;
        v49(v51, v26, v11);
        v30(v27, v28, v11);
        v31 = v54(v29, v27);
        if (v7)
        {
          v38 = *v50;
          (*v50)(v27, v11);
          return (v38)(v29, v11);
        }

        v32 = v31;
        v33 = v27;
        v34 = *v50;
        (*v50)(v33, v11);
        result = (v34)(v29, v11);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v47)
        {
          __break(1u);
          return result;
        }

        v35 = *v46;
        v36 = v48;
        (*v46)(v48, v26, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v35)(v28, v36, v11);
        v28 += v45;
        v26 += v45;
        v37 = __CFADD__(v25++, 1);
        v27 = v55;
        v7 = 0;
        if (v37)
        {
          goto LABEL_11;
        }
      }

      v27 = v55;
      v7 = 0;
LABEL_11:
      a3 = v44 + 1;
      v24 = v43 + v39;
      v25 = v42 - 1;
      v26 = v41 + v39;
      if (v44 + 1 != v40)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_226C7FDD8(int64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v142 = a1;
  v163 = sub_226D6D4AC();
  v12 = *(*(v163 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v163);
  v146 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v134 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v134 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v140 = &v134 - v23;
  MEMORY[0x28223BE20](v22);
  result = MEMORY[0x28223BE20](&v134 - v24);
  v161 = v27;
  v162 = a3;
  v30 = a3[1];
  if (v30 < 1)
  {
    v32 = MEMORY[0x277D84F90];
    v33 = a4;
LABEL_104:
    a4 = *v142;
    if (*v142)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v141 = &v134 - v26;
  v139 = result;
  v151 = v21;
  v147 = v29;
  v148 = v28;
  v137 = a6;
  v31 = 0;
  v159 = (v27 + 8);
  v160 = v27 + 16;
  v155 = (v27 + 32);
  v32 = MEMORY[0x277D84F90];
  v156 = a5;
  v33 = a4;
  v158 = a4;
  while (1)
  {
    v34 = v31;
    v143 = v32;
    if ((v31 + 1) < v30)
    {
      v144 = v31;
      v145 = v30;
      v35 = *v162;
      v36 = *(v161 + 72);
      a4 = *v162 + v36 * (v31 + 1);
      v37 = *(v161 + 16);
      v38 = v163;
      v37(v141, a4, v163);
      v157 = v36;
      v138 = v35;
      v39 = &v35[v36 * v144];
      v40 = v139;
      v152 = v37;
      v37(v139, v39, v38);
      v41 = v141;
      LODWORD(v154) = v33(v141, v40);
      if (v7)
      {
        v133 = *v159;
        (*v159)(v40, v38);
        v133(v41, v38);
      }

      v164 = 0;
      v42 = *v159;
      (*v159)(v40, v38);
      v150 = v42;
      result = (v42)(v41, v38);
      v136 = v145 - 1;
      v153 = v145 - 2;
      v43 = v144;
      a5 = v156;
      v44 = v157;
      v45 = &v138[v157 * (v144 + 2)];
      v46 = v140;
      while (v153 != v43)
      {
        v47 = v163;
        v48 = v152;
        (v152)(v46, v45, v163);
        v49 = a5;
        v50 = v151;
        (v48)(v151, a4, v47);
        v51 = v49;
        v52 = v164;
        v53 = v158(v46, v50);
        v164 = v52;
        if (v52)
        {
          v131 = v150;
          (v150)(v50, v47);
          v131(v46, v47);
        }

        v54 = v53;
        v55 = v150;
        (v150)(v50, v47);
        result = v55(v46, v47);
        ++v43;
        v44 = v157;
        v45 += v157;
        a4 += v157;
        a5 = v51;
        if ((v154 ^ v54))
        {
          v56 = v43 + 1;
          goto LABEL_12;
        }
      }

      v43 = v136;
      v56 = v145;
LABEL_12:
      v34 = v144;
      if (v154)
      {
        if (v56 < v144)
        {
          goto LABEL_141;
        }

        v32 = v163;
        if (v144 <= v43)
        {
          a4 = v44 * (v56 - 1);
          v57 = v56;
          v58 = v56 * v44;
          v145 = v57;
          v59 = v57;
          v60 = v144;
          v61 = v144 * v44;
          do
          {
            if (v60 != --v59)
            {
              v63 = *v162;
              if (!*v162)
              {
                goto LABEL_145;
              }

              v64 = *v155;
              (*v155)(v146, &v63[v61], v163);
              if (v61 < a4 || &v63[v61] >= &v63[v58])
              {
                v62 = v163;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v62 = v163;
                if (v61 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v64)(&v63[a4], v146, v62);
              a5 = v156;
              v44 = v157;
              v32 = v62;
            }

            ++v60;
            a4 -= v44;
            v58 -= v44;
            v61 += v44;
          }

          while (v60 < v59);
          v7 = v164;
          v33 = v158;
          v34 = v144;
          v56 = v145;
        }

        else
        {
          v7 = v164;
          v33 = v158;
        }
      }

      else
      {
        v32 = v163;
        v7 = v164;
        v33 = v158;
      }
    }

    else
    {
      v56 = (v31 + 1);
      v32 = v163;
    }

    v65 = v162[1];
    if (v56 < v65)
    {
      if (__OFSUB__(v56, v34))
      {
        goto LABEL_137;
      }

      if (v56 - v34 < v137)
      {
        if (__OFADD__(v34, v137))
        {
          __break(1u);
        }

        else
        {
          v145 = v56;
          if (&v34[v137] >= v65)
          {
            v66 = v65;
          }

          else
          {
            v66 = &v34[v137];
          }

          if (v66 >= v34)
          {
            if (v145 == v66)
            {
              v56 = v145;
              goto LABEL_38;
            }

            v164 = v7;
            v113 = *v162;
            v114 = *(v161 + 72);
            v157 = *(v161 + 16);
            v115 = (v113 + v114 * (v145 - 1));
            v153 = -v114;
            v154 = v113;
            v144 = v34;
            v116 = &v34[-v145];
            v135 = v114;
            a4 = v113 + v145 * v114;
            v152 = v66;
            while (1)
            {
              v136 = a4;
              v138 = v116;
              v150 = v115;
              while (1)
              {
                v117 = v147;
                v118 = v157;
                (v157)(v147, a4, v32);
                v119 = v148;
                v118(v148, v115, v32);
                v120 = v164;
                v121 = v158(v117, v119);
                v164 = v120;
                if (v120)
                {
                  v132 = *v159;
                  (*v159)(v119, v32);
                  v132(v117, v32);
                }

                v122 = v121;
                v123 = *v159;
                (*v159)(v119, v32);
                result = (v123)(v117, v32);
                if ((v122 & 1) == 0)
                {
                  break;
                }

                if (!v154)
                {
                  goto LABEL_143;
                }

                v124 = *v155;
                v125 = v149;
                v32 = v163;
                (*v155)(v149, a4, v163);
                swift_arrayInitWithTakeFrontToBack();
                v124(v115, v125, v32);
                v115 += v153;
                a4 += v153;
                v126 = __CFADD__(v116++, 1);
                a5 = v156;
                if (v126)
                {
                  goto LABEL_101;
                }
              }

              a5 = v156;
              v32 = v163;
LABEL_101:
              v115 = &v150[v135];
              v116 = v138 - 1;
              a4 = v136 + v135;
              v56 = v152;
              if (++v145 == v152)
              {
                v33 = v158;
                v7 = v164;
                v34 = v144;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v32 = v143;
    if (v56 < v34)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v33;
    if ((result & 1) == 0)
    {
      result = sub_226BBB0C4(0, *(v32 + 2) + 1, 1, v32);
      v32 = result;
    }

    v68 = *(v32 + 2);
    v67 = *(v32 + 3);
    v69 = v68 + 1;
    if (v68 >= v67 >> 1)
    {
      result = sub_226BBB0C4((v67 > 1), v68 + 1, 1, v32);
      v32 = result;
    }

    *(v32 + 2) = v69;
    v70 = &v32[16 * v68];
    *(v70 + 4) = v34;
    *(v70 + 5) = v56;
    v152 = v56;
    v71 = *v142;
    if (!*v142)
    {
      goto LABEL_146;
    }

    if (v68)
    {
      break;
    }

    a5 = v156;
    v33 = a4;
LABEL_90:
    v30 = v162[1];
    v31 = v152;
    if (v152 >= v30)
    {
      goto LABEL_104;
    }
  }

  a5 = v156;
  v33 = a4;
  while (1)
  {
    a4 = v69 - 1;
    if (v69 >= 4)
    {
      v76 = &v32[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_123;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_124;
      }

      v83 = &v32[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_126;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_129;
      }

      if (v87 >= v79)
      {
        v105 = &v32[16 * a4 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_135;
        }

        if (v74 < v108)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v69 == 3)
    {
      v72 = *(v32 + 4);
      v73 = *(v32 + 5);
      v82 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      v75 = v82;
LABEL_59:
      if (v75)
      {
        goto LABEL_125;
      }

      v88 = &v32[16 * v69];
      v90 = *v88;
      v89 = *(v88 + 1);
      v91 = __OFSUB__(v89, v90);
      v92 = v89 - v90;
      v93 = v91;
      if (v91)
      {
        goto LABEL_128;
      }

      v94 = &v32[16 * a4 + 32];
      v96 = *v94;
      v95 = *(v94 + 1);
      v82 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v82)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v92, v97))
      {
        goto LABEL_132;
      }

      if (v92 + v97 >= v74)
      {
        if (v74 < v97)
        {
          a4 = v69 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v98 = &v32[16 * v69];
    v100 = *v98;
    v99 = *(v98 + 1);
    v82 = __OFSUB__(v99, v100);
    v92 = v99 - v100;
    v93 = v82;
LABEL_73:
    if (v93)
    {
      goto LABEL_127;
    }

    v101 = &v32[16 * a4];
    v103 = *(v101 + 4);
    v102 = *(v101 + 5);
    v82 = __OFSUB__(v102, v103);
    v104 = v102 - v103;
    if (v82)
    {
      goto LABEL_130;
    }

    if (v104 < v92)
    {
      goto LABEL_90;
    }

LABEL_80:
    v109 = a4 - 1;
    if (a4 - 1 >= v69)
    {
      break;
    }

    if (!*v162)
    {
      goto LABEL_142;
    }

    v110 = *&v32[16 * v109 + 32];
    v111 = *&v32[16 * a4 + 40];
    sub_226C809E4(*v162 + *(v161 + 72) * v110, *v162 + *(v161 + 72) * *&v32[16 * a4 + 32], *v162 + *(v161 + 72) * v111, v71, v33, a5);
    if (v7)
    {
    }

    if (v111 < v110)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_226C69374(v32);
    }

    if (v109 >= *(v32 + 2))
    {
      goto LABEL_122;
    }

    v112 = &v32[16 * v109];
    *(v112 + 4) = v110;
    *(v112 + 5) = v111;
    v165 = v32;
    result = sub_226C692E8(a4);
    v32 = v165;
    v69 = *(v165 + 2);
    if (v69 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_138:
  result = sub_226C69374(v32);
  v32 = result;
LABEL_106:
  v165 = v32;
  v127 = *(v32 + 2);
  if (v127 < 2)
  {
  }

  while (*v162)
  {
    v128 = *&v32[16 * v127];
    v129 = *&v32[16 * v127 + 24];
    sub_226C809E4(*v162 + *(v161 + 72) * v128, *v162 + *(v161 + 72) * *&v32[16 * v127 + 16], *v162 + *(v161 + 72) * v129, a4, v33, a5);
    if (v7)
    {
    }

    if (v129 < v128)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_226C69374(v32);
    }

    if (v127 - 2 >= *(v32 + 2))
    {
      goto LABEL_134;
    }

    v130 = &v32[16 * v127];
    *v130 = v128;
    *(v130 + 1) = v129;
    v165 = v32;
    result = sub_226C692E8(v127 - 1);
    v32 = v165;
    v127 = *(v165 + 2);
    if (v127 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_226C809E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v79 = a6;
  v80 = a5;
  v78 = sub_226D6D4AC();
  v11 = *(v78 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v78);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v70 - v18;
  result = MEMORY[0x28223BE20](v17);
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v25 = &v70 - v21;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_67;
  }

  v26 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v24 != -1)
  {
    v27 = (a2 - a1) / v24;
    v86 = a1;
    v85 = a4;
    v81 = v24;
    if (v27 < v26 / v24)
    {
      v28 = v27 * v24;
      if (a4 < a1 || a1 + v28 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v77 = a4 + v28;
      v84 = a4 + v28;
      if (v28 >= 1 && a2 < a3)
      {
        v54 = *(v11 + 16);
        v75 = v19;
        v76 = v11 + 16;
        v73 = v54;
        v74 = (v11 + 8);
        v55 = v25;
        v56 = v78;
        v57 = v6;
        v72 = a3;
        while (1)
        {
          v82 = a1;
          v58 = v73;
          v73(v55, a2, v56);
          v59 = a2;
          v60 = v55;
          v61 = v75;
          v58(v75, a4, v56);
          v62 = v80(v60, v61);
          if (v57)
          {
            break;
          }

          v63 = v62;
          v83 = 0;
          v64 = *v74;
          (*v74)(v61, v56);
          v64(v60, v56);
          v55 = v60;
          if (v63)
          {
            v65 = v81;
            v66 = v82;
            a2 = v59 + v81;
            if (v82 < v59 || v82 >= a2)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }
          }

          else
          {
            v65 = v81;
            v66 = v82;
            v67 = a4 + v81;
            a2 = v59;
            if (v82 < a4 || v82 >= v67)
            {
              v56 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v65 = v81;
              v57 = v83;
            }

            else
            {
              v57 = v83;
              v56 = v78;
              if (v82 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v65 = v81;
              }
            }

            v85 = v67;
            a4 = v67;
          }

          a1 = v66 + v65;
          v86 = a1;
          if (a4 >= v77 || a2 >= v72)
          {
            goto LABEL_65;
          }
        }

        v68 = *v74;
        (*v74)(v61, v56);
        v68(v60, v56);
      }

LABEL_65:
      sub_226C693A0(&v86, &v85, &v84);
      return 1;
    }

    v77 = v22;
    v29 = a3;
    v30 = a2;
    v31 = v26 / v24 * v24;
    if (a4 < v30 || v30 + v31 <= a4)
    {
      v32 = v30;
      v33 = v78;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v32 = v30;
      v33 = v78;
      if (a4 == v30)
      {
LABEL_24:
        v83 = v6;
        v35 = a4 + v31;
        if (v31 >= 1)
        {
          v36 = -v24;
          v70 = a4;
          v71 = (v11 + 16);
          v73 = (v11 + 8);
          v37 = a4 + v31;
          v38 = v29;
          v39 = v77;
          v82 = a1;
          v75 = -v24;
          do
          {
            v76 = v35;
            v72 = v35;
            v40 = v32;
            v78 = v32 + v36;
            v74 = v32;
            while (1)
            {
              if (v40 <= a1)
              {
                v86 = v40;
                v35 = v72;
                goto LABEL_64;
              }

              v41 = v38;
              v42 = v75;
              v81 = v37;
              v43 = v37 + v75;
              v44 = *v71;
              (*v71)(v39, v37 + v75, v33);
              v44(v15, v78, v33);
              v45 = v39;
              v46 = v83;
              v47 = v80(v39, v15);
              v83 = v46;
              if (v46)
              {
                v69 = *v73;
                (*v73)(v15, v33);
                v69(v45, v33);
                v86 = v74;
                v35 = v76;
                goto LABEL_64;
              }

              v48 = v47;
              v49 = &v41[v42];
              v50 = v15;
              v51 = *v73;
              v52 = v50;
              (*v73)();
              v51(v45, v33);
              if (v48)
              {
                break;
              }

              v38 = &v41[v42];
              if (v41 < v81 || v49 >= v81)
              {
                swift_arrayInitWithTakeFrontToBack();
                v15 = v52;
                v39 = v77;
              }

              else
              {
                v15 = v52;
                v39 = v77;
                if (v41 != v81)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v76 = v43;
              v37 = v43;
              a1 = v82;
              v40 = v74;
              if (v43 <= v70)
              {
                v32 = v74;
                v35 = v76;
                goto LABEL_63;
              }
            }

            v38 = &v41[v42];
            if (v41 < v74 || v49 >= v74)
            {
              v32 = v78;
              swift_arrayInitWithTakeFrontToBack();
              v53 = v70;
              v15 = v52;
              v39 = v77;
            }

            else
            {
              v39 = v77;
              v32 = v78;
              v53 = v70;
              v15 = v52;
              if (v41 != v74)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v37 = v81;
            a1 = v82;
            v36 = v75;
            v35 = v76;
          }

          while (v81 > v53);
        }

LABEL_63:
        v86 = v32;
LABEL_64:
        v84 = v35;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v24 = v81;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t type metadata accessor for BankConnectLinkingDateQueryCalculator()
{
  result = qword_27D7A8820;
  if (!qword_27D7A8820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_226C81150()
{
  result = sub_226AEEB3C();
  if (v1 <= 0x3F)
  {
    result = sub_226D6D6DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_226C811F0(void *a1, uint64_t a2)
{
  type metadata accessor for OrderWebServiceSystemTask();
  inited = swift_initStackObject();
  *(inited + 16) = a2;

  sub_226D66E6C();
  [a1 setTaskCompleted];
  swift_setDeallocating();
  v5 = *(inited + 16);
}

uint64_t sub_226C8129C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - v4;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F5E0);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9EC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Running orders reboot task", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v10 = *(a1 + 16);
  v11 = sub_226D6E79C();
  (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v10;

  sub_226B60364(0, 0, v5, &unk_226D79CD8, v12);
}

void sub_226C81494(uint64_t a1)
{
  v2 = [objc_opt_self() sharedScheduler];
  v3 = sub_226D6E36C();
  v9[4] = sub_226C81670;
  v9[5] = a1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_226C01160;
  v9[3] = &block_descriptor_14;
  v4 = _Block_copy(v9);

  LOBYTE(a1) = [v2 registerForTaskWithIdentifier:v3 usingQueue:0 launchHandler:v4];
  _Block_release(v4);

  if ((a1 & 1) == 0)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v5 = sub_226D6E07C();
    __swift_project_value_buffer(v5, qword_28105F5E0);
    v6 = sub_226D6E05C();
    v7 = sub_226D6E9DC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_226AB4000, v6, v7, "Unable to register orders reboot task", v8, 2u);
      MEMORY[0x22AA8BEE0](v8, -1, -1);
    }
  }
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226C816AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226C0CF18(a1, v4, v5, v6);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_226C81774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_226C817BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_226C8180C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v6 = sub_226D6E07C();
  __swift_project_value_buffer(v6, qword_28105F710);
  v7 = sub_226D6E05C();
  v8 = sub_226D6E9AC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226AB4000, v7, v8, "Running permission post install task", v9, 2u);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
  }

  v10 = *(a4 + 16);
  v11 = [objc_opt_self() defaultManager];
  sub_226D6D17C();
  v12 = sub_226D6E36C();

  LOBYTE(v10) = [v11 fileExistsAtPath_];

  v13 = sub_226D6E05C();
  v14 = sub_226D6E9AC();
  v15 = os_log_type_enabled(v13, v14);
  if (v10)
  {
    if (v15)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v13, v14, "Backup file exists", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }
  }

  else if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_226AB4000, v13, v14, "Backup file does not exist", v17, 2u);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
  }

  v18 = *a1;
  v19 = sub_226D676AC();
  MEMORY[0x28223BE20](v19);
  sub_226D6EB7C();
}

void sub_226C81B1C(int a1, int a2, int a3, NSManagedObjectContext in)
{
  v10[1] = *MEMORY[0x277D85DE8];
  FinancialDataAppPermissions.importApplicationsFromFile(in:)(in);
  if (!v5)
  {
    v10[0] = 0;
    if ([(objc_class *)in.super.isa save:v10])
    {
      v6 = v10[0];
      v7 = *MEMORY[0x277D85DE8];
      return;
    }

    v8 = v10[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_226C81C20()
{
  v1.super.isa = *(v0 + 40);
  v2 = *(v0 + 32);
  FinancialDataAppPermissions.exportApplicationsToFile(from:)(v1);
}

uint64_t sub_226C81C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_226C81CA8, 0, 0);
}

uint64_t sub_226C81CA8()
{
  v29 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_226D6E07C();
  *(v0 + 80) = __swift_project_value_buffer(v2, qword_28105F5C0);

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, v28);
    _os_log_impl(&dword_226AB4000, v3, v4, "Starting invalidate token task for order type %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = **(v0 + 56);
  v12 = sub_226D676AC();
  *(v0 + 88) = v12;
  v13 = swift_task_alloc();
  v13[2] = v10;
  v13[3] = v9;
  v13[4] = v12;
  sub_226D6EB7C();

  if (*(v0 + 112) == 1)
  {
    sub_226AE532C(*(v0 + 56) + 96, v0 + 16);
    v14 = sub_226D6E05C();
    v15 = sub_226D6E9EC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_226AB4000, v14, v15, "Updating enabled topics", v16, 2u);
      MEMORY[0x22AA8BEE0](v16, -1, -1);
    }

    v17 = *__swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v18 = swift_task_alloc();
    *(v0 + 96) = v18;
    *v18 = v0;
    v18[1] = sub_226C8209C;

    return sub_226D0A5C4();
  }

  else
  {
    v20 = *(v0 + 72);

    v21 = sub_226D6E05C();
    v22 = sub_226D6E9AC();

    if (os_log_type_enabled(v21, v22))
    {
      v24 = *(v0 + 64);
      v23 = *(v0 + 72);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28[0] = v26;
      *v25 = 136315138;
      *(v25 + 4) = sub_226AC4530(v24, v23, v28);
      _os_log_impl(&dword_226AB4000, v21, v22, "Order type %s not found", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_226C8209C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226C82198, 0, 0);
}

uint64_t sub_226C82198()
{
  v15 = v0;
  v2 = v0[9];
  v1 = v0[10];

  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[8];
    v5 = v0[9];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_226AC4530(v6, v5, &v14);
    _os_log_impl(&dword_226AB4000, v3, v4, "Invalidating token for order type %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
  }

  v9 = *__swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_226C82320;
  v12 = v0[8];
  v11 = v0[9];

  return sub_226D0B53C(v12, v11);
}

uint64_t sub_226C82320()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226C8241C, 0, 0);
}

uint64_t sub_226C8241C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_226C82488(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v10[1] = *MEMORY[0x277D85DE8];
  sub_226D67FDC();
  v5 = sub_226D67FBC();
  if (!v2)
  {
    if (v5)
    {
      v7 = v5;
      [v5 setDeviceLibraryIdentifier_];
      [v7 setPushToken_];
      v10[0] = 0;
      if ([a1 save_])
      {
        v8 = v10[0];

        *a2 = 1;
      }

      else
      {
        v9 = v10[0];
        sub_226D6D04C();

        swift_willThrow();
      }
    }

    else
    {
      *a2 = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C825C4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_226C82618()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v3 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_226D70840;
  v7 = (v6 + v5);
  *v7 = v2;
  v7[1] = v1;
  swift_storeEnumTagMultiPayload();

  v8 = sub_226B1FBC0(v6);
  swift_setDeallocating();
  sub_226C5EA2C(v7);
  swift_deallocClassInstance();
  return v8;
}

uint64_t sub_226C8272C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C81C84(a1, v5, v4);
}

unint64_t sub_226C827D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](v1, v2);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD00000000000002BLL;
}

unint64_t sub_226C82860(uint64_t a1)
{
  result = sub_226C82888();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226C82888()
{
  result = qword_27D7A8830;
  if (!qword_27D7A8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8830);
  }

  return result;
}

uint64_t sub_226C8296C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226C829B4(uint64_t a1)
{
  result = sub_226C829DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226C829DC()
{
  result = qword_27D7A8838;
  if (!qword_27D7A8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8838);
  }

  return result;
}

void sub_226C82A30(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_226C82488(*(v1 + 32), a1);
}

uint64_t sub_226C82A50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_226D6D4AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_226C82AE8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  PendingApplePayOrderTask = type metadata accessor for OrderWebServiceFetchPendingApplePayOrderTask();
  sub_226AC40E8(v1 + *(PendingApplePayOrderTask + 36), v6, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + *(PendingApplePayOrderTask + 32));
    if (v14 > 0)
    {
      exp2((v14 - 1));
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

uint64_t sub_226C82D10@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderWebServiceLogTask();
  sub_226AC40E8(v1 + *(v12 + 28), v6, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + *(v12 + 24));
    if (v14 > 0)
    {
      exp2((v14 - 1));
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

uint64_t sub_226C82F38@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_226D6D4AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(0);
  sub_226AC40E8(v2 + *(v14 + 44), v8, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_226AC47B0(v8, &qword_27D7A8BE0, &unk_226D718F0);
    v15 = 1;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = *(v2 + *(v14 + 40));
    if (v16 > 0)
    {
      exp2((v16 - 1));
    }

    sub_226D6D3DC();
    (*(v10 + 8))(v13, v9);
    v15 = 0;
  }

  return (*(v10 + 56))(a2, v15, 1, v9);
}

uint64_t sub_226C83168@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - v7;
  v9 = sub_226D6D4AC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1(0);
  sub_226AC40E8(v2 + *(v14 + 40), v8, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_226AC47B0(v8, &qword_27D7A8BE0, &unk_226D718F0);
    v15 = 1;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v16 = *(v2 + *(v14 + 36));
    if (v16 > 0)
    {
      exp2((v16 - 1));
    }

    sub_226D6D3DC();
    (*(v10 + 8))(v13, v9);
    v15 = 0;
  }

  return (*(v10 + 56))(a2, v15, 1, v9);
}

uint64_t sub_226C83398@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OrderWebServiceRequestTokenTask();
  sub_226AC40E8(v1 + *(v12 + 24), v6, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + 16);
    if (v14 > 0)
    {
      exp2((v14 - 1));
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

uint64_t sub_226C835B4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PrismWebServiceRegisterTransactionTask();
  sub_226AC40E8(v1 + *(v12 + 24), v6, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226AC47B0(v6, &qword_27D7A8BE0, &unk_226D718F0);
    v13 = 1;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = *(v1 + *(v12 + 20));
    if (v14 > 0)
    {
      exp2((v14 - 1));
    }

    sub_226D6D3DC();
    (*(v8 + 8))(v11, v7);
    v13 = 0;
  }

  return (*(v8 + 56))(a1, v13, 1, v7);
}

uint64_t sub_226C837DC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return (sub_226C83888)(a1);
}

uint64_t sub_226C83888(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6C21C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8850, &unk_226D79F00);
  v2[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[11] = v9;
  *v9 = v2;
  v9[1] = sub_226C839E4;

  return sub_226C62040(v6);
}

uint64_t sub_226C839E4()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226C83C84;
  }

  else
  {
    v3 = sub_226C83AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C83AF8()
{
  v1 = v0[8];
  (*(v0[5] + 32))(v0[10], v0[7], v0[4]);
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8850, &unk_226D79F00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v4;
    v0[15] = *v4;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_226C8408C;
    v7 = v0[2];
    v8 = v0[3];

    return sub_226C63750(v5, v7);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v4, v0[4]);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_226C83DF8;
    v11 = v0[6];
    v12 = v0[2];
    v13 = v0[3];

    return sub_226C62CE8(v11, v12);
  }
}

uint64_t sub_226C83C84()
{
  v1 = v0[8];
  *v0[10] = v0[12];
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8850, &unk_226D79F00);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v4;
    v0[15] = *v4;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_226C8408C;
    v7 = v0[2];
    v8 = v0[3];

    return sub_226C63750(v5, v7);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v4, v0[4]);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_226C83DF8;
    v11 = v0[6];
    v12 = v0[2];
    v13 = v0[3];

    return sub_226C62CE8(v11, v12);
  }
}

uint64_t sub_226C83DF8()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226C83FC8;
  }

  else
  {
    v3 = sub_226C83F0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C83F0C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  sub_226AC47B0(v0[10], &qword_27D7A8850, &unk_226D79F00);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226C83FC8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[14];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_226AC47B0(v0[10], &qword_27D7A8850, &unk_226D79F00);

  v5 = v0[1];

  return v5();
}

uint64_t sub_226C8408C()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_226C8424C;
  }

  else
  {
    v3 = sub_226C841A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C841A0()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8850, &unk_226D79F00);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226C8424C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8850, &unk_226D79F00);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226C84300(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_226C843A0;

  return sub_226C6F270((v2 + 2));
}

uint64_t sub_226C843A0()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226C84744;
  }

  else
  {
    v3 = sub_226C844B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C844B4()
{
  sub_226C86498((v0 + 2), (v0 + 7));
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_226C84558;
  v2 = v0[12];
  v3 = v0[13];

  return sub_226C70D0C((v0 + 2), v2);
}

uint64_t sub_226C84558()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_226C846D8;
  }

  else
  {
    v3 = sub_226C8466C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C8466C()
{
  sub_226C864F4(v0 + 16);
  sub_226C864F4(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226C846D8()
{
  sub_226C864F4(v0 + 16);
  sub_226C864F4(v0 + 16);
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C84744()
{
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_226C847E4;
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);

  return sub_226C71BB8(v3, v4);
}

uint64_t sub_226C847E4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_226C84968;
  }

  else
  {
    v3 = sub_226C848F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C848F8()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226C84968()
{
  v1 = v0[15];

  v2 = v0[19];
  v3 = v0[1];

  return v3();
}

uint64_t sub_226C849D8(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_226C84A78;

  return sub_226C77DE0((v2 + 2));
}

uint64_t sub_226C84A78()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226C84D44;
  }

  else
  {
    v3 = sub_226C84B8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C84B8C()
{
  sub_226C86498((v0 + 2), (v0 + 7));
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_226C84C30;
  v2 = v0[12];
  v3 = v0[13];

  return sub_226C79EE8((v0 + 2), v2);
}

uint64_t sub_226C84C30()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_226C867E0;
  }

  else
  {
    v3 = sub_226C867E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C84D44()
{
  v1 = *(v0 + 120);
  v2 = swift_task_alloc();
  *(v0 + 144) = v2;
  *v2 = v0;
  v2[1] = sub_226C84DE4;
  v3 = *(v0 + 120);
  v4 = *(v0 + 96);
  v5 = *(v0 + 104);

  return sub_226C7A814(v3, v4);
}

uint64_t sub_226C84DE4()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_226C867E8;
  }

  else
  {
    v3 = sub_226C867DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C84EF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_226D6BA4C();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8848, &unk_226D79EE8);
  v2[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v9 = swift_task_alloc();
  v2[11] = v9;
  *v9 = v2;
  v9[1] = sub_226C85054;

  return sub_226CAADC0(v6);
}

uint64_t sub_226C85054()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226C852F4;
  }

  else
  {
    v3 = sub_226C85168;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C85168()
{
  v1 = v0[8];
  (*(v0[5] + 32))(v0[10], v0[7], v0[4]);
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8848, &unk_226D79EE8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v4;
    v0[15] = *v4;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_226C856FC;
    v7 = v0[2];
    v8 = v0[3];

    return sub_226CAC154(v5, v7);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v4, v0[4]);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_226C85468;
    v11 = v0[6];
    v12 = v0[2];
    v13 = v0[3];

    return sub_226CAB65C(v11, v12);
  }
}

uint64_t sub_226C852F4()
{
  v1 = v0[8];
  *v0[10] = v0[12];
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8848, &unk_226D79EE8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v4;
    v0[15] = *v4;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_226C856FC;
    v7 = v0[2];
    v8 = v0[3];

    return sub_226CAC154(v5, v7);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v4, v0[4]);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_226C85468;
    v11 = v0[6];
    v12 = v0[2];
    v13 = v0[3];

    return sub_226CAB65C(v11, v12);
  }
}

uint64_t sub_226C85468()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226C85638;
  }

  else
  {
    v3 = sub_226C8557C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C8557C()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  sub_226AC47B0(v0[10], &qword_27D7A8848, &unk_226D79EE8);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226C85638()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[14];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_226AC47B0(v0[10], &qword_27D7A8848, &unk_226D79EE8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_226C856FC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_226C858BC;
  }

  else
  {
    v3 = sub_226C85810;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C85810()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8848, &unk_226D79EE8);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226C858BC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8848, &unk_226D79EE8);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226C85970(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = sub_226D6BEDC();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[7] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8840, &unk_226D79EC0);
  v2[8] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v10 = swift_task_alloc();
  v2[11] = v10;
  *v10 = v2;
  v10[1] = sub_226C85ACC;

  return sub_226CF67F0(v7, a1);
}

uint64_t sub_226C85ACC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226C85D6C;
  }

  else
  {
    v3 = sub_226C85BE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C85BE0()
{
  v1 = v0[8];
  (*(v0[5] + 32))(v0[10], v0[7], v0[4]);
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8840, &unk_226D79EC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v4;
    v0[15] = *v4;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_226C86174;
    v7 = v0[2];
    v8 = v0[3];

    return sub_226CF7DB0(v5, v7);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v4, v0[4]);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_226C85EE0;
    v11 = v0[6];
    v12 = v0[2];
    v13 = v0[3];

    return sub_226CF7564(v11, v12);
  }
}

uint64_t sub_226C85D6C()
{
  v1 = v0[8];
  *v0[10] = v0[12];
  swift_storeEnumTagMultiPayload();
  v2 = v0[8];
  sub_226AC40E8(v0[10], v0[9], &qword_27D7A8840, &unk_226D79EC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[9];
  if (EnumCaseMultiPayload == 1)
  {
    v5 = *v4;
    v0[15] = *v4;
    v6 = swift_task_alloc();
    v0[16] = v6;
    *v6 = v0;
    v6[1] = sub_226C86174;
    v7 = v0[2];
    v8 = v0[3];

    return sub_226CF7DB0(v5, v7);
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v4, v0[4]);
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_226C85EE0;
    v11 = v0[6];
    v12 = v0[2];
    v13 = v0[3];

    return sub_226CF7564(v11, v12);
  }
}

uint64_t sub_226C85EE0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226C860B0;
  }

  else
  {
    v3 = sub_226C85FF4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C85FF4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  sub_226AC47B0(v0[10], &qword_27D7A8840, &unk_226D79EC0);

  v4 = v0[1];

  return v4();
}

uint64_t sub_226C860B0()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[14];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  sub_226AC47B0(v0[10], &qword_27D7A8840, &unk_226D79EC0);

  v5 = v0[1];

  return v5();
}

uint64_t sub_226C86174()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_226C86334;
  }

  else
  {
    v3 = sub_226C86288;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226C86288()
{
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8840, &unk_226D79EC0);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_226C86334()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  sub_226AC47B0(*(v0 + 80), &qword_27D7A8840, &unk_226D79EC0);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_226C863EC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226C84300(a1);
}

uint64_t sub_226C86574(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226C849D8(a1);
}

uint64_t sub_226C86650(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226C84EF8(a1);
}

uint64_t sub_226C8672C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AE5A84;

  return sub_226C85970(a1);
}

uint64_t FinancialDataDeletedAccountsRemover.removeDeletedAccounts(accountsToBeRemoved:in:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t sub_226C86874()
{
  if (qword_2810610C0 != -1)
  {
    swift_once();
  }

  v0 = qword_2810610C8;
  v4 = type metadata accessor for FinancialDataAppPermissions();
  v5 = &protocol witness table for FinancialDataAppPermissions;
  *&v3 = v0;
  type metadata accessor for FinancialDataDeletedAccountsRemover();
  v1 = swift_allocObject();
  sub_226AC484C(&v3, v1 + 16);
  qword_281060138 = v1;
}

uint64_t static FinancialDataDeletedAccountsRemover.shared.getter()
{
  if (qword_281060130 != -1)
  {
    swift_once();
  }
}

uint64_t FinancialDataDeletedAccountsRemover.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_226C869DC(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 8))(a1, a2, v5, v6);
}

uint64_t BankConnectServiceImplementation.termsAndConditions(withInstitutionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226C86B4C, 0, 0);
}

uint64_t sub_226C86B4C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v6 = *(*(v5 + 8) + 8);
  sub_226D6BAAC();
  v7 = sub_226D676AC();

  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A73F8, &qword_226D74E20);
  sub_226D6EB8C();

  v9 = v0[1];

  return v9();
}

uint64_t BankConnectServiceImplementation.termsAndConditionsURL(forTermsAndConditionsID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D6869C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_226D688FC();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = sub_226D6C92C();
  v4[12] = v11;
  v12 = *(v11 - 8);
  v4[13] = v12;
  v13 = *(v12 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226C86DE8, 0, 0);
}

uint64_t sub_226C86DE8()
{
  v1 = v0[14];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;

  sub_226D6D54C();
  sub_226D6C91C();
  v6 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v7 = v6[5];
  __swift_project_boxed_opaque_existential_1(v6 + 1, v6[4]);
  v8 = sub_226D6C2AC();
  v0[15] = v8;
  v9 = swift_task_alloc();
  v0[16] = v9;
  *(v9 + 16) = v8;
  *(v9 + 24) = v1;
  v10 = *(MEMORY[0x277CC7D90] + 4);
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_226C86F50;
  v12 = v0[11];
  v13 = v0[9];

  return MEMORY[0x282119B28](v12, &unk_226D79FE0, v9, v13);
}

uint64_t sub_226C86F50()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_226C87234;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_226C8706C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226C8706C()
{
  v1 = v0[11];
  v2 = sub_226D688EC();
  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[9];
  if (*(v2 + 16))
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];
    v10 = v0[2];
    (*(v8 + 16))(v7, v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v9);

    sub_226D6868C();

    (*(v5 + 8))(v4, v6);
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v11 = v0[2];
    v12 = v0[15];

    (*(v5 + 8))(v4, v6);
    v13 = sub_226D6D1AC();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  v14 = v0[11];
  v15 = v0[8];
  (*(v0[13] + 8))(v0[14], v0[12]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_226C87234()
{
  v1 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];

  (*(v4 + 8))(v3, v5);

  v8 = v0[1];
  v9 = v0[18];

  return v8();
}

uint64_t BankConnectServiceImplementation.updateTermsAndConditions(withTermsAndConditionsID:reviewedAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_226C87310, 0, 0);
}

uint64_t sub_226C87310()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v6 = *(*(v5 + 8) + 8);
  sub_226D6BAAC();
  v7 = sub_226D676AC();

  v8 = swift_task_alloc();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = v3;
  v8[5] = v1;
  v8[6] = v2;
  sub_226D6EB7C();

  v9 = v0[1];

  return v9();
}

void *sub_226C87424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = [objc_opt_self() currentQueryGenerationToken];
  v16[0] = 0;
  v6 = [a1 setQueryGenerationFromToken:v5 error:v16];

  v7 = v16[0];
  if (v6)
  {
    sub_226D6842C();
    v8 = v7;
    result = sub_226D683EC();
    if (!v2)
    {
      v10 = result;
      v11 = [result termsAndConditionsObject];

      if (v11)
      {
        sub_226D6B42C();
        v12 = sub_226D6B43C();
        result = (*(*(v12 - 8) + 56))(a2, 0, 1, v12);
      }

      else
      {
        v14 = sub_226D6B43C();
        result = (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
      }
    }
  }

  else
  {
    v13 = v16[0];
    sub_226D6D04C();

    result = swift_willThrow();
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226C875EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(MEMORY[0x277CC7D60] + 4);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226AD827C;

  return MEMORY[0x282119AF8](a1, a3);
}

void sub_226C876A0(void *a1, uint64_t a2, unint64_t a3)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v23[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v23];

  v9 = v23[0];
  if (v8)
  {
    sub_226D6C37C();
    v10 = v9;
    v11 = sub_226D6C36C();
    if (!v3)
    {
      v12 = v11;
      if (v11)
      {
        v13 = sub_226D6D3EC();
        [v12 setReviewedAt_];

        v23[0] = 0;
        if ([a1 save_])
        {
          v14 = v23[0];
        }

        else
        {
          v22 = v23[0];
          sub_226D6D04C();

          swift_willThrow();
        }
      }

      else
      {
        if (qword_27D7A5F60 != -1)
        {
          swift_once();
        }

        v17 = sub_226D6E07C();
        __swift_project_value_buffer(v17, qword_27D7A7D10);

        v18 = sub_226D6E05C();
        v19 = sub_226D6E9CC();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v23[0] = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_226AC4530(a2, a3, v23);
          _os_log_impl(&dword_226AB4000, v18, v19, "Failed to update terms and conditions. T&Cs with termsAndConditionsID %s don't exist.", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v21);
          MEMORY[0x22AA8BEE0](v21, -1, -1);
          MEMORY[0x22AA8BEE0](v20, -1, -1);
        }
      }
    }
  }

  else
  {
    v15 = v23[0];
    sub_226D6D04C();

    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_226C87950(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226AD827C;

  return sub_226C875EC(a1, v5, v4);
}

id DaemonCoreDataStoreServerHandlingPolicy.__allocating_init<A>(bundleInfoProvider:policyLevelProvider:authStatusProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = sub_226C8A468(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a3, a4);
  return v12;
}

uint64_t sub_226C87A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_226D68CEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_226D67D8C())
  {
    (*(v7 + 8))(a2, v6);
    v11 = sub_226D67E0C();
    (*(*(v11 - 8) + 8))(a1, v11);
    v12 = MEMORY[0x277CC7BB8];
  }

  else if (sub_226D67DBC())
  {
    (*(v7 + 8))(a2, v6);
    v13 = sub_226D67E0C();
    (*(*(v13 - 8) + 8))(a1, v13);
    v12 = MEMORY[0x277CC7BA8];
  }

  else
  {
    v14 = sub_226D67DCC();
    v15 = sub_226D67E0C();
    (*(*(v15 - 8) + 8))(a1, v15);
    if (v14)
    {
      (*(v7 + 32))(v10, a2, v6);
      v16 = (*(v7 + 88))(v10, v6);
      v17 = *MEMORY[0x277CC75F8];
      v18 = sub_226D6A34C();
      v19 = *(*(v18 - 8) + 104);
      if (v16 == v17)
      {
        return v19(a3, *MEMORY[0x277CC7BA0], v18);
      }

      v19(a3, *MEMORY[0x277CC7BB0], v18);
      return (*(v7 + 8))(v10, v6);
    }

    (*(v7 + 8))(a2, v6);
    v12 = MEMORY[0x277CC7BC0];
  }

  v21 = *v12;
  v22 = sub_226D6A34C();
  v23 = *(*(v22 - 8) + 104);

  return v23(a3, v21, v22);
}

id sub_226C87DD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(a1, v5, &qword_27D7A8BE0, &unk_226D718F0);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226AC47B0(v5, &qword_27D7A8BE0, &unk_226D718F0);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v12 = sub_226D6E91C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A88A0, &qword_226D7A048);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_226D70840;
    *(inited + 32) = 1163149636;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = sub_226D6D3EC();
    v14 = sub_226B242A0(inited);
    swift_setDeallocating();
    sub_226AC47B0(inited + 32, &qword_27D7A88A8, &unk_226D7A050);
    sub_226C880A0(v14);

    v15 = sub_226D6E2AC();

    v16 = [v12 predicateWithSubstitutionVariables_];

    (*(v7 + 8))(v10, v6);
    return v16;
  }
}

unint64_t sub_226C880A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6AD0, &qword_226D725F0);
    v2 = sub_226D6F10C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);
        sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);

        v20 = v19;
        swift_dynamicCast();
        sub_226B24A98(&v26, v28);
        sub_226B24A98(v28, v29);
        sub_226B24A98(v29, &v27);
        result = sub_226C2FDD4(v18, v17);
        if (v21)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = sub_226B24A98(&v27, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v22 = (v2[6] + 16 * result);
          *v22 = v18;
          v22[1] = v17;
          result = sub_226B24A98(&v27, (v2[7] + 32 * result));
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_226C8830C()
{
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226D70840;
  v1 = sub_226D6D4DC();
  *(v0 + 56) = sub_226AE59B4(0, &qword_27D7A8890, 0x277CCAD78);
  *(v0 + 64) = sub_226C8BE70(&qword_27D7A8898, &qword_27D7A8890, 0x277CCAD78);
  *(v0 + 32) = v1;
  return sub_226D6E91C();
}

uint64_t sub_226C883F4(uint64_t a1)
{
  v2 = sub_226D6D4AC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - v9;
  sub_226AC40E8(a1, &v16 - v9, &qword_27D7A8BE0, &unk_226D718F0);
  v11 = (*(v3 + 48))(v10, 1, v2);
  result = 0;
  if (v11 != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_226D70840;
    v14 = sub_226D6D3EC();
    *(v13 + 56) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
    *(v13 + 64) = sub_226C8BE70(&qword_28105F400, &qword_28105F410, 0x277CBEAA8);
    *(v13 + 32) = v14;
    v15 = sub_226D6E91C();
    (*(v3 + 8))(v6, v2);
    return v15;
  }

  return result;
}

uint64_t sub_226C88644()
{
  v0 = sub_226D6825C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_226D70840;
  (*(v1 + 104))(v4, *MEMORY[0x277CC7218], v0);
  v6 = sub_226D6824C();
  (*(v1 + 8))(v4, v0);
  v7 = MEMORY[0x277D849A0];
  *(v5 + 56) = MEMORY[0x277D84958];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  return sub_226D6E91C();
}