void sub_224C16FD8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_224DAF728();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_224C1702C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_224DAF728();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_224C170A0()
{
  v1 = type metadata accessor for WorkScheduleRequest(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_224DAF938();

  strcpy(v10, "identifier: ");
  BYTE5(v10[1]) = 0;
  HIWORD(v10[1]) = -5120;
  v9[1] = *v0;
  v5 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v5);

  MEMORY[0x22AA5D210](0x736575716572203BLL, 0xEB00000000203A74);
  v6 = type metadata accessor for SimpleWorkScheduler.Work(0);
  sub_224C17A48(v0 + *(v6 + 20), v4, type metadata accessor for WorkScheduleRequest);
  v7 = sub_224DAEE28();
  MEMORY[0x22AA5D210](v7);

  return v10[0];
}

uint64_t sub_224C17200(uint64_t a1)
{
  v2 = v1 + *(a1 + 28);
  v3 = *(v2 + 8);
  return (*v2)();
}

void sub_224C17234(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - v12;
  os_unfair_lock_assert_owner(*(*(a1 + 16) + 16));
  v14 = *(a1 + 32);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + 32) = v15;
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v15;
    v18 = type metadata accessor for SimpleWorkScheduler.Work(0);
    sub_224C17A48(a2, a5 + v18[5], type metadata accessor for WorkScheduleRequest);
    *a5 = v15;
    v19 = (a5 + v18[6]);
    *v19 = a3;
    v19[1] = a4;
    v20 = (a5 + v18[7]);
    *v20 = sub_224C17B10;
    v20[1] = v17;
    sub_224C17A48(a5, v13, type metadata accessor for SimpleWorkScheduler.Work);
    (*(*(v18 - 1) + 56))(v13, 0, 1, v18);
    swift_beginAccess();

    sub_224B09120(v13, v15);
    swift_endAccess();
  }
}

void sub_224C1743C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B30, &unk_224DBB840);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-v5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
    v9 = *(v8 + 16);
    v10 = Strong;

    os_unfair_lock_lock(v9);
    v11 = type metadata accessor for SimpleWorkScheduler.Work(0);
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    swift_beginAccess();
    sub_224B09120(v6, a2);
    swift_endAccess();
    os_unfair_lock_unlock(*(v8 + 16));

    v12 = *(v10 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
    sub_224A8CEE8(&qword_281350EF0);
    sub_224DAB398();
  }

  else
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364E20);
    v14 = sub_224DAB228();
    v15 = sub_224DAF298();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_224A2F000, v14, v15, "Work scheduler unexpectedly deallocated", v16, 2u);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }
  }
}

void sub_224C17684()
{
  v0 = sub_224DA9A08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_224DA99E8();
  v6 = sub_224DA99D8();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_27D6F52C8 = v5;
}

uint64_t sub_224C17790()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

unint64_t sub_224C177FC()
{
  result = type metadata accessor for WorkScheduleRequest(319);
  if (v1 <= 0x3F)
  {
    result = sub_224BC8B04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224C17890()
{
  result = sub_224DA9878();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_224C17914()
{
  v2 = *(*v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  sub_224A8CEE8(&qword_281350EE0);
  return sub_224DAB3A8();
}

uint64_t sub_224C1798C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleWorkScheduler.Work(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_224C179F0()
{
  result = qword_281351A40;
  if (!qword_281351A40)
  {
    sub_224DA9878();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351A40);
  }

  return result;
}

uint64_t sub_224C17A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224C17AB0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224C17B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SimpleWorkScheduler.Work(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224C17B7C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v366 = a3;
  v368 = sub_224DAB258();
  *&v367 = *(v368 - 8);
  v7 = *(v367 + 64);
  MEMORY[0x28223BE20](v368);
  v373 = &v330 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224AF21C0();
  v9 = sub_224B8336C(a2);
  v10 = sub_224D42214(0, v9);
  v332 = a4;
  if (v10 || sub_224D42214(1u, v9))
  {
    v11 = a1[3];
    v12 = a1[6];
    v13 = a1[9];
    v14 = __swift_project_boxed_opaque_existential_1(a1, v11);
    *&v375[24] = v11;
    *&v375[32] = v12;
    *&v375[40] = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v375);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v14, v11);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v16 = v368;
    v17 = __swift_project_value_buffer(v368, qword_281365120);
    v18 = v367;
    (*(v367 + 16))(v373, v17, v16);
    sub_224A3796C(a1, v377, &unk_27D6F55D0, &qword_224DBBC20);
    v19 = swift_allocObject();
    memcpy((v19 + 16), v377, 0x348uLL);
    *(v19 + 856) = a2;
    sub_224A3796C(a1, v376, &unk_27D6F55D0, &qword_224DBBC20);
    v20 = swift_allocObject();
    memcpy((v20 + 16), v376, 0x348uLL);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5680, &qword_224DBBCB0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5688, &qword_224DBBCB8);
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();

    *(v24 + 24) = sub_224DAB358();
    *(v24 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v24 + qword_2813652D8) = 0;
    *(v24 + 32) = 0x80;
    sub_224AB1DE0(v375, (v24 + 40));
    (*(v18 + 32))(v24 + qword_2813652E0, v373, v16);
    v28 = (v24 + qword_2813652F8);
    *v28 = sub_224C4DE54;
    v28[1] = v19;
    v29 = (v24 + qword_2813652E8);
    *v29 = sub_224AEC7AC;
    v29[1] = 0;
    v30 = (v24 + qword_281365308);
    *v30 = sub_224C4DE74;
    v30[1] = v20;
    v334 = v24;
    v31 = (v24 + qword_2813652F0);
    *v31 = sub_224AF25F8;
    v31[1] = 0;
  }

  else
  {
    v334 = 0;
  }

  v32 = sub_224D42214(0, v9);
  v374 = a1;
  *&v362 = v9;
  if (v32 || sub_224D42214(1u, v9))
  {
    v34 = a1[25];
    v33 = a1[26];
    v35 = a1;
    v371 = a1[27];
    v372 = v33;
    v36 = a1[3];
    v37 = a1[6];
    v38 = a1[9];
    v39 = __swift_project_boxed_opaque_existential_1(a1, v36);
    *&v375[24] = v36;
    *&v375[32] = v37;
    *&v375[40] = v38;
    v40 = __swift_allocate_boxed_opaque_existential_1(v375);
    (*(*(v36 - 8) + 16))(v40, v39, v36);
    v41 = qword_2813516C8;
    swift_unknownObjectRetain_n();
    if (v41 != -1)
    {
      swift_once();
    }

    v42 = v368;
    v43 = __swift_project_value_buffer(v368, qword_281365120);
    v44 = v367;
    v45 = v373;
    (*(v367 + 16))(v373, v43, v42);
    sub_224A3796C(v35, v377, &unk_27D6F55D0, &qword_224DBBC20);
    v46 = swift_allocObject();
    memcpy((v46 + 16), v377, 0x348uLL);
    sub_224A3796C(v35, v376, &unk_27D6F55D0, &qword_224DBBC20);
    v47 = swift_allocObject();
    memcpy(v47 + 2, v376, 0x348uLL);
    v47[107] = v34;
    v48 = v371;
    v47[108] = v372;
    v47[109] = v48;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5670, &qword_224DBBCA8);
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    v52 = swift_allocObject();
    *(v52 + 16) = 0;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5678, &unk_224DBD7C0);
    v54 = *(v53 + 48);
    v55 = *(v53 + 52);
    swift_allocObject();
    *(v52 + 24) = sub_224DAB358();
    *(v52 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v52 + qword_2813652D8) = 0;
    *(v52 + 32) = -127;
    sub_224AB1DE0(v375, (v52 + 40));
    (*(v44 + 32))(v52 + qword_2813652E0, v45, v42);
    v56 = (v52 + qword_2813652F8);
    *v56 = sub_224C4DCEC;
    v56[1] = v46;
    v57 = (v52 + qword_2813652E8);
    *v57 = sub_224AEC7AC;
    v57[1] = 0;
    v58 = (v52 + qword_281365308);
    *v58 = sub_224C4DD08;
    v58[1] = v47;
    v59 = (v52 + qword_2813652F0);
    *v59 = sub_224AF3524;
    v59[1] = 0;
  }

  else
  {
    v52 = 0;
    v34 = 0;
  }

  v60 = sub_224D42214(0, v362);
  v361 = a2;
  v331 = v34;
  v333 = v52;
  if (v60)
  {
    v61 = v374;
    v62 = v374[3];
    v63 = v374[6];
    v64 = v374[8];
    v65 = v374[9];
    v66 = __swift_project_boxed_opaque_existential_1(v374, v62);
    v67 = v61[76];
    v68 = v61[77];
    v69 = __swift_project_boxed_opaque_existential_1(v61 + 73, v67);
    *&v377[24] = v67;
    *&v377[32] = *(v68 + 8);
    v70 = __swift_allocate_boxed_opaque_existential_1(v377);
    v71 = v69;
    a2 = v361;
    (*(*(v67 - 8) + 16))(v70, v71, v67);
    v371 = sub_224AF359C(0, v377, v66, v62, v63, v64, v65);
    __swift_destroy_boxed_opaque_existential_1(v377);
  }

  else
  {
    v371 = 0;
  }

  v72 = v362;
  if (sub_224D42214(1u, v362))
  {
    v73 = v374;
    sub_224C4DC78(v374, v377);
    v74 = *&v377[24];
    v75 = *&v377[48];
    v76 = *&v377[64];
    v77 = *&v377[72];
    v78 = __swift_project_boxed_opaque_existential_1(v377, *&v377[24]);
    result = sub_224A3796C((v73 + 100), v376, &qword_27D6F55A8, &qword_224DBBC08);
    v80 = *&v376[24];
    if (!*&v376[24])
    {
      goto LABEL_114;
    }

    v81 = *&v376[32];
    v82 = __swift_project_boxed_opaque_existential_1(v376, *&v376[24]);
    *&v375[24] = v80;
    *&v375[32] = *(v81 + 8);
    v83 = __swift_allocate_boxed_opaque_existential_1(v375);
    (*(*(v80 - 8) + 16))(v83, v82, v80);
    v365 = sub_224AF3A10(2, v375, v78, v74, v75, v76, v77);
    __swift_destroy_boxed_opaque_existential_1(v375);
    __swift_destroy_boxed_opaque_existential_1(v376);
    __swift_destroy_boxed_opaque_existential_1(v377);
    v84 = v374;
    a2 = v361;
  }

  else
  {
    v365 = 0;
    v84 = v374;
  }

  if (sub_224D42214(0, v72))
  {
    v85 = v84[3];
    v86 = v84[6];
    v87 = v84[8];
    v88 = v84[9];
    v89 = __swift_project_boxed_opaque_existential_1(v84, v85);
    v369 = sub_224AF359C(1, (v84 + 28), v89, v85, v86, v87, v88);
  }

  else
  {
    v369 = 0;
  }

  if (sub_224D42214(1u, v72))
  {
    sub_224C4DC78(v84, v377);
    v90 = *&v377[24];
    v91 = *&v377[48];
    v92 = *&v377[64];
    v93 = *&v377[72];
    result = __swift_project_boxed_opaque_existential_1(v377, *&v377[24]);
    v94 = v84[89];
    if (!v94)
    {
      goto LABEL_115;
    }

    v95 = result;
    *&v376[24] = type metadata accessor for ControlHostService();
    *&v376[32] = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService);
    *v376 = v94;

    v363 = sub_224AF3A10(3, v376, v95, v90, v91, v92, v93);
    __swift_destroy_boxed_opaque_existential_1(v376);
    __swift_destroy_boxed_opaque_existential_1(v377);
    v84 = v374;
  }

  else
  {
    v363 = 0;
  }

  if (sub_224D42214(0, v72))
  {
    v372 = type metadata accessor for PlaceholderArchiveReplicator(0);
    v96 = v84[3];
    v370 = v84[6];
    v97 = v84[9];
    v364 = v84[8];
    v98 = __swift_project_boxed_opaque_existential_1(v84, v96);
    v99 = v84[11];
    v100 = sub_224DAA508();

    v101 = sub_224DAA4F8();
    v102 = qword_2813516C8;

    if (v102 != -1)
    {
      swift_once();
    }

    v103 = v368;
    v104 = __swift_project_value_buffer(v368, qword_281365120);
    v105 = v373;
    v106 = (*(v367 + 16))(v373, v104, v103);
    v107 = *(*(v96 - 8) + 64);
    MEMORY[0x28223BE20](v106);
    v109 = &v330 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v110 + 16))(v109, v98, v96);
    *v377 = v101;
    v111 = sub_224DAC9B8();
    v112 = sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18]);
    v372 = sub_224D94EC8(v109, v99, v377, v105, v372, v96, v100, v111, v370, v364, v97, MEMORY[0x277CFA098], v112);

    v84 = v374;
    a2 = v361;
    v72 = v362;
  }

  else
  {
    v372 = 0;
  }

  if (sub_224D42214(0, v72))
  {
    v113 = v84[3];
    v114 = v84[6];
    v115 = v84[9];
    v116 = __swift_project_boxed_opaque_existential_1(v84, v113);
    v379 = v113;
    v380 = v114;
    v381 = v115;
    v117 = __swift_allocate_boxed_opaque_existential_1(&v378);
    (*(*(v113 - 8) + 16))(v117, v116, v113);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v118 = v368;
    v119 = __swift_project_value_buffer(v368, qword_281365120);
    (*(v367 + 16))(v373, v119, v118);
    sub_224A3796C(v84, v377, &unk_27D6F55D0, &qword_224DBBC20);
    v120 = swift_allocObject();
    memcpy((v120 + 16), v377, 0x348uLL);
    sub_224A3796C(v84, v376, &unk_27D6F55D0, &qword_224DBBC20);
    v121 = swift_allocObject();
    memcpy((v121 + 16), v376, 0x348uLL);
    sub_224A3796C(v84, v375, &unk_27D6F55D0, &qword_224DBBC20);
    v122 = swift_allocObject();
    memcpy((v122 + 16), v375, 0x348uLL);
    sub_224A3796C(v84, v375, &unk_27D6F55D0, &qword_224DBBC20);
    v123 = swift_allocObject();
    memcpy((v123 + 16), v375, 0x348uLL);
    v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5660, &qword_224DBBCA0);
    v125 = *(v124 + 48);
    v126 = *(v124 + 52);
    v127 = swift_allocObject();
    *(v127 + 16) = 0;
    v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5668, &qword_224DBD770);
    v129 = *(v128 + 48);
    v130 = *(v128 + 52);
    swift_allocObject();
    *(v127 + 24) = sub_224DAB358();
    *(v127 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v127 + qword_2813652D8) = 0;
    *(v127 + 32) = 1;
    sub_224AB1DE0(&v378, (v127 + 40));
    (*(v367 + 32))(v127 + qword_2813652E0, v373, v118);
    v131 = (v127 + qword_2813652F8);
    *v131 = sub_224C4DBF4;
    v131[1] = v120;
    v132 = (v127 + qword_2813652E8);
    *v132 = sub_224C4DC10;
    v132[1] = v121;
    v133 = (v127 + qword_281365308);
    *v133 = sub_224C4DC30;
    v133[1] = v122;
    v370 = v127;
    v134 = (v127 + qword_2813652F0);
    *v134 = sub_224C4DC4C;
    v134[1] = v123;
  }

  else
  {
    v370 = 0;
  }

  if (sub_224D42214(1u, v72))
  {
    v135 = v374;
    v136 = v374[3];
    v137 = v374[6];
    v138 = v374[9];
    v139 = __swift_project_boxed_opaque_existential_1(v374, v136);
    v379 = v136;
    v380 = v137;
    v381 = v138;
    v140 = __swift_allocate_boxed_opaque_existential_1(&v378);
    (*(*(v136 - 8) + 16))(v140, v139, v136);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v141 = v368;
    v142 = __swift_project_value_buffer(v368, qword_281365120);
    v143 = v367;
    (*(v367 + 16))(v373, v142, v141);
    sub_224A3796C(v135, v377, &unk_27D6F55D0, &qword_224DBBC20);
    v144 = swift_allocObject();
    memcpy((v144 + 16), v377, 0x348uLL);
    sub_224A3796C(v135, v376, &unk_27D6F55D0, &qword_224DBBC20);
    v145 = swift_allocObject();
    memcpy((v145 + 16), v376, 0x348uLL);
    sub_224A3796C(v135, v375, &unk_27D6F55D0, &qword_224DBBC20);
    v146 = swift_allocObject();
    memcpy((v146 + 16), v375, 0x348uLL);
    sub_224A3796C(v135, v375, &unk_27D6F55D0, &qword_224DBBC20);
    v147 = swift_allocObject();
    memcpy((v147 + 16), v375, 0x348uLL);
    v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5650, &qword_224DBBC90);
    v149 = *(v148 + 48);
    v150 = *(v148 + 52);
    v151 = swift_allocObject();
    *(v151 + 16) = 0;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5658, &qword_224DBBC98);
    v153 = *(v152 + 48);
    v154 = *(v152 + 52);
    swift_allocObject();
    *(v151 + 24) = sub_224DAB358();
    *(v151 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v151 + qword_2813652D8) = 0;
    *(v151 + 32) = 3;
    sub_224AB1DE0(&v378, (v151 + 40));
    (*(v143 + 32))(v151 + qword_2813652E0, v373, v141);
    v155 = (v151 + qword_2813652F8);
    *v155 = sub_224C4DB70;
    v155[1] = v144;
    v156 = (v151 + qword_2813652E8);
    *v156 = sub_224C4DB8C;
    v156[1] = v145;
    v157 = (v151 + qword_281365308);
    *v157 = sub_224C4DBAC;
    v157[1] = v146;
    v364 = v151;
    v158 = (v151 + qword_2813652F0);
    *v158 = sub_224C4DBC8;
    v158[1] = v147;
    v72 = v362;
  }

  else
  {
    v364 = 0;
  }

  if (sub_224D42214(0, v72))
  {
    v159 = v374;
    v160 = v374[3];
    v161 = v374[6];
    v162 = v374[9];
    v163 = __swift_project_boxed_opaque_existential_1(v374, v160);
    v379 = v160;
    v380 = v161;
    v381 = v162;
    v164 = __swift_allocate_boxed_opaque_existential_1(&v378);
    (*(*(v160 - 8) + 16))(v164, v163, v160);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v165 = v368;
    v166 = __swift_project_value_buffer(v368, qword_281365120);
    v167 = v367;
    (*(v367 + 16))(v373, v166, v165);
    sub_224A3796C(v159, v377, &unk_27D6F55D0, &qword_224DBBC20);
    v168 = swift_allocObject();
    memcpy((v168 + 16), v377, 0x348uLL);
    sub_224A3796C(v159, v376, &unk_27D6F55D0, &qword_224DBBC20);
    v169 = swift_allocObject();
    memcpy((v169 + 16), v376, 0x348uLL);
    sub_224A3796C(v159, v375, &unk_27D6F55D0, &qword_224DBBC20);
    v170 = swift_allocObject();
    memcpy((v170 + 16), v375, 0x348uLL);
    sub_224A3796C(v159, v375, &unk_27D6F55D0, &qword_224DBBC20);
    v171 = swift_allocObject();
    memcpy((v171 + 16), v375, 0x348uLL);
    v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5660, &qword_224DBBCA0);
    v173 = *(v172 + 48);
    v174 = *(v172 + 52);
    v175 = swift_allocObject();
    *(v175 + 16) = 0;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5668, &qword_224DBD770);
    v177 = *(v176 + 48);
    v178 = *(v176 + 52);
    swift_allocObject();
    *(v175 + 24) = sub_224DAB358();
    *(v175 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v175 + qword_2813652D8) = 0;
    *(v175 + 32) = 2;
    sub_224AB1DE0(&v378, (v175 + 40));
    (*(v167 + 32))(v175 + qword_2813652E0, v373, v165);
    v179 = (v175 + qword_2813652F8);
    *v179 = sub_224C4DAFC;
    v179[1] = v168;
    v180 = (v175 + qword_2813652E8);
    *v180 = sub_224C4DB18;
    v180[1] = v169;
    v181 = v175;
    v182 = (v175 + qword_281365308);
    *v182 = sub_224C4DB38;
    v182[1] = v170;
    v183 = (v175 + qword_2813652F0);
    *v183 = sub_224C4DB54;
    v183[1] = v171;
    v72 = v362;
  }

  else
  {
    v181 = 0;
  }

  v360 = v181;
  if (sub_224D42214(1u, v72))
  {
    v184 = v374;
    v185 = v374[3];
    v186 = v374[6];
    v187 = v374[9];
    v188 = __swift_project_boxed_opaque_existential_1(v374, v185);
    v379 = v185;
    v380 = v186;
    v381 = v187;
    v189 = __swift_allocate_boxed_opaque_existential_1(&v378);
    (*(*(v185 - 8) + 16))(v189, v188, v185);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v190 = v368;
    v191 = __swift_project_value_buffer(v368, qword_281365120);
    v192 = v367;
    (*(v367 + 16))(v373, v191, v190);
    sub_224A3796C(v184, v377, &unk_27D6F55D0, &qword_224DBBC20);
    v193 = swift_allocObject();
    memcpy((v193 + 16), v377, 0x348uLL);
    sub_224A3796C(v184, v376, &unk_27D6F55D0, &qword_224DBBC20);
    v194 = swift_allocObject();
    memcpy((v194 + 16), v376, 0x348uLL);
    sub_224A3796C(v184, v375, &unk_27D6F55D0, &qword_224DBBC20);
    v195 = swift_allocObject();
    memcpy((v195 + 16), v375, 0x348uLL);
    sub_224A3796C(v184, v375, &unk_27D6F55D0, &qword_224DBBC20);
    v196 = swift_allocObject();
    memcpy((v196 + 16), v375, 0x348uLL);
    v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5650, &qword_224DBBC90);
    v198 = *(v197 + 48);
    v199 = *(v197 + 52);
    v200 = swift_allocObject();
    *(v200 + 16) = 0;
    v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5658, &qword_224DBBC98);
    v202 = *(v201 + 48);
    v203 = *(v201 + 52);
    swift_allocObject();
    *(v200 + 24) = sub_224DAB358();
    *(v200 + qword_281365300) = MEMORY[0x277D84FA0];
    *(v200 + qword_2813652D8) = 0;
    *(v200 + 32) = 4;
    sub_224AB1DE0(&v378, (v200 + 40));
    (*(v192 + 32))(v200 + qword_2813652E0, v373, v190);
    v204 = (v200 + qword_2813652F8);
    *v204 = sub_224C4D988;
    v204[1] = v193;
    v205 = (v200 + qword_2813652E8);
    *v205 = sub_224C4DAA4;
    v205[1] = v194;
    v206 = (v200 + qword_281365308);
    *v206 = sub_224C4DAC4;
    v206[1] = v195;
    v373 = v200;
    v207 = (v200 + qword_2813652F0);
    *v207 = sub_224C4DAE0;
    v207[1] = v196;
  }

  else
  {
    v373 = 0;
  }

  v389 = sub_224DA0580(MEMORY[0x277D84F90]);
  if (!*(a2 + 16) || (v208 = sub_224B0B6F0(2u), (v209 & 1) == 0) || (v210 = *(*(a2 + 56) + 8 * v208)) == 0)
  {

    v228 = v374;
LABEL_64:
    v229 = 0;
    *&v227 = 134349056;
    v330 = v227;
    while (1)
    {
      if (*(a2 + 16))
      {
        v237 = byte_283828018[v229 + 32];
        v238 = sub_224B0B6F0(byte_283828018[v229 + 32]);
        if (v239)
        {
          v240 = *(*(a2 + 56) + 8 * v238);
          if (v240)
          {
            if ((v237 - 2) >= 2)
            {
              if (v237)
              {
                v256 = v228[3];
                *&v362 = v228[4];
                v257 = v228[5];
                v358 = v228[6];
                *&v359 = v257;
                v258 = v228[9];
                v356 = v228[10];
                v357 = v258;
                v259 = __swift_project_boxed_opaque_existential_1(v228, v256);
                v260 = *(v256 - 8);
                v261 = *(v260 + 64);
                MEMORY[0x28223BE20](v259);
                v355 = v262;
                v263 = &v330 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0);
                v264 = *(v260 + 16);
                result = (v264)(v263);
                v265 = v228[85];
                if (!v265)
                {
                  goto LABEL_108;
                }

                v354 = v264;
                if (!v228[87])
                {
                  goto LABEL_107;
                }

                v352 = v228[87];
                v353 = v265;
                v266 = v228[89];
                if (!v266)
                {
                  goto LABEL_106;
                }

                v267 = v228[88];
                v350 = v228[86];
                v351 = v267;
                *&v377[24] = type metadata accessor for ControlHostService();
                *&v377[32] = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService);
                v349 = v266;
                *v377 = v266;
                result = sub_224A3796C((v228 + 100), v376, &qword_27D6F55A8, &qword_224DBBC08);
                if (!*&v376[24])
                {
                  goto LABEL_105;
                }

                result = sub_224A3796C((v228 + 90), v375, &qword_27D6F4770, &qword_224DB7690);
                if (!*&v375[24])
                {
                  goto LABEL_104;
                }

                result = sub_224A3796C((v228 + 95), &v378, &qword_27D6F46C0, &qword_224DB7608);
                if (!v379)
                {
                  goto LABEL_103;
                }

                result = sub_224A3317C((v228 + 52), &v387);
                if (!v365)
                {
                  goto LABEL_102;
                }

                if (!v364)
                {
                  goto LABEL_101;
                }

                *&v367 = v263;
                if (!v363)
                {
                  goto LABEL_100;
                }

                v347 = v260;
                v348 = &v330;
                if (!v373)
                {
                  __break(1u);
LABEL_100:
                  __break(1u);
LABEL_101:
                  __break(1u);
LABEL_102:
                  __break(1u);
LABEL_103:
                  __break(1u);
LABEL_104:
                  __break(1u);
LABEL_105:
                  __break(1u);
LABEL_106:
                  __break(1u);
LABEL_107:
                  __break(1u);
LABEL_108:
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
                  goto LABEL_117;
                }

                v268 = v256;
                v344 = type metadata accessor for ControlReplicationProvider();
                v269 = *&v376[24];
                v270 = __swift_mutable_project_boxed_opaque_existential_1(v376, *&v376[24]);
                v346 = &v330;
                v271 = *(*(v269 - 8) + 64);
                MEMORY[0x28223BE20](v270);
                v343 = &v330 - ((v272 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v273 + 16))();
                v274 = v379;
                v275 = __swift_mutable_project_boxed_opaque_existential_1(&v378, v379);
                v345 = &v330;
                v276 = *(*(v274 - 8) + 64);
                MEMORY[0x28223BE20](v275);
                v341 = &v330 - ((v277 + 15) & 0xFFFFFFFFFFFFFFF0);
                (*(v278 + 16))();
                v279 = v388;
                v280 = __swift_mutable_project_boxed_opaque_existential_1(&v387, v388);
                v342 = &v330;
                v281 = *(*(v279 - 8) + 64);
                MEMORY[0x28223BE20](v280);
                v339 = &v330 - ((v282 + 15) & 0xFFFFFFFFFFFFFFF0);
                v284 = (*(v283 + 16))();
                v340 = &v330;
                MEMORY[0x28223BE20](v284);
                v355 = &v330 - ((v285 + 15) & 0xFFFFFFFFFFFFFFF0);
                v354();
                v354 = type metadata accessor for LocationService(0);
                v338 = type metadata accessor for PreviewControlConfigurationService();
                v337 = type metadata accessor for LiveControlService();
                v335 = sub_224C41198(&unk_281352A48, type metadata accessor for PreviewControlConfigurationService);
                v286 = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService);
                v336 = v366;
                v287 = v353;
                swift_unknownObjectRetain();
                v288 = v352;
                swift_unknownObjectRetain();

                v289 = v365;

                v290 = v364;

                v291 = v363;

                v329 = v286;
                *(&v327 + 1) = v357;
                *&v327 = v358;
                *(&v325 + 1) = v359;
                *&v325 = v362;
                v293 = v344;
                *(&v324 + 1) = v290;
                *&v324 = v289;
                v294 = sub_224ACEF78(v240, v355, v336, v287, v350, v288, v351, v377, v343, v375, v341, v339, v324, v291, v292, v344, v354, v338, v268, v337, &off_2838352C0, v335, v325, v327, v356, v329);
                (*(v347 + 8))(v367, v268);
                __swift_destroy_boxed_opaque_existential_1(&v387);
                __swift_destroy_boxed_opaque_existential_1(&v378);
                __swift_destroy_boxed_opaque_existential_1(v376);
                *&v377[24] = v293;
                *&v377[32] = sub_224C41198(&qword_281355300, type metadata accessor for ControlReplicationProvider);
                *v377 = v294;
                sub_224B079FC(v377, 1);
                v228 = v374;
                a2 = v361;
              }

              else
              {
                v359 = *(v228 + 3);
                v241 = v359;
                v367 = *(v228 + 5);
                v362 = *(v228 + 9);
                v242 = __swift_project_boxed_opaque_existential_1(v228, v359);
                *&v377[24] = v359;
                *&v377[40] = v367;
                *&v377[56] = v362;
                v243 = __swift_allocate_boxed_opaque_existential_1(v377);
                (*(*(v241 - 8) + 16))(v243, v242, v241);
                v244 = v228[12];
                v245 = v228[13];
                sub_224A3317C((v228 + 28), &v378);
                sub_224A3317C((v228 + 33), &v387);
                sub_224A3317C((v228 + 73), v386);
                sub_224A3317C((v228 + 38), v385);
                sub_224B44674((v228 + 67), v375);
                sub_224AFC6E0((v228 + 43), v376);
                result = sub_224A3317C((v228 + 52), v384);
                if (!v372)
                {
                  goto LABEL_113;
                }

                if (!v371)
                {
                  goto LABEL_112;
                }

                v246 = v360;
                if (!v370)
                {
                  goto LABEL_111;
                }

                if (!v369)
                {
                  goto LABEL_110;
                }

                if (!v360)
                {
                  goto LABEL_109;
                }

                v247 = *(v228 + 78);
                v248 = *(v228 + 632);
                v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5648, &qword_224DBBC88);
                v250 = swift_allocObject();
                *(v250 + 104) = MEMORY[0x277D84FA0];
                *(v250 + 496) = 0;
                *(v250 + 24) = v240;
                sub_224AFC6E0(v377, v250 + 32);
                if (v248)
                {
                  v247 = 900.0;
                }

                v251 = qword_2813516C8;

                if (v251 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v368, qword_281365120);
                v252 = sub_224DAB228();
                v253 = sub_224DAF2A8();
                if (os_log_type_enabled(v252, v253))
                {
                  v254 = swift_slowAlloc();
                  *v254 = v330;
                  *(v254 + 4) = v247;
                  _os_log_impl(&dword_224A2F000, v252, v253, "Snapshot expiration time interval set to %{public}f", v254, 0xCu);
                  v255 = v254;
                  v246 = v360;
                  MEMORY[0x22AA5EED0](v255, -1, -1);
                }

                sub_224A3317C(v385, v383);
                v230 = swift_allocObject();
                sub_224A36F98(v383, v230 + 16);
                sub_224A3317C(v386, v382);
                v231 = swift_allocObject();
                sub_224A36F98(v382, v231 + 16);
                type metadata accessor for SnapshotAssertionManager();
                swift_allocObject();
                v232 = sub_224BC1D98(sub_224C4D978, v230, sub_224C4D980, v231, v247);
                __swift_destroy_boxed_opaque_existential_1(v377);
                *(v250 + 112) = v232;
                *(v250 + 120) = v244;
                *(v250 + 128) = v245;
                sub_224A36F98(&v378, v250 + 136);
                sub_224A36F98(&v387, v250 + 176);
                sub_224A36F98(v386, v250 + 216);
                sub_224A36F98(v385, v250 + 256);
                sub_224AB1DE0(v375, (v250 + 296));
                sub_224ACFF34(v376, v250 + 344);
                sub_224A36F98(v384, v250 + 416);
                v233 = v371;
                *(v250 + 456) = v372;
                *(v250 + 464) = v233;
                v234 = v369;
                *(v250 + 472) = v370;
                *(v250 + 480) = v234;
                *(v250 + 488) = v246;
                v235 = v366;
                *(v250 + 16) = v366;
                *&v377[24] = v249;
                *&v377[32] = sub_224A33088(qword_2813553E0, &qword_27D6F5648, &qword_224DBBC88);
                *v377 = v250;
                v236 = v235;
                sub_224B079FC(v377, 0);
                v228 = v374;
              }
            }
          }
        }
      }

      if (++v229 == 4)
      {
        v295 = type metadata accessor for ReplicationService.Service();
        v296 = v389;
        v297 = v228[3];
        v374 = v228[4];
        v298 = v228[5];
        v299 = v228[6];
        v300 = v228[9];
        v301 = v228[10];
        v302 = __swift_project_boxed_opaque_existential_1(v228, v297);
        v303 = *(*(v297 - 8) + 64);
        MEMORY[0x28223BE20](v302);
        v305 = &v330 - ((v304 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v306 + 16))(v305);

        v307 = v366;
        v308 = sub_224AFB868(v296, v305, v307, v295, v297, v374, v298, v299, v300, v301);
        v309 = v332;
        v332[3] = v295;
        v309[4] = sub_224C41198(&qword_281359618, type metadata accessor for ReplicationService.Service);

        swift_unknownObjectRelease();

        *v309 = v308;
      }
    }
  }

  v211 = v374;
  v212 = v374[3];
  *&v362 = v374[4];
  v213 = v374[5];
  v358 = v374[6];
  *&v359 = v213;
  v214 = v374[9];
  v356 = v374[10];
  v357 = v214;
  v215 = __swift_project_boxed_opaque_existential_1(v374, v212);
  v216 = *(v212 - 8);
  v217 = *(v216 + 64);
  MEMORY[0x28223BE20](v215);
  v218 = &v330 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
  v353 = *(v216 + 16);
  v353(v218);
  sub_224A3317C((v211 + 80), v376);
  v219 = v211[26];
  *&v367 = v211[25];
  v354 = v211[27];
  v355 = v219;
  sub_224B44674((v211 + 19), v377);
  sub_224A3317C((v211 + 14), v375);
  result = sub_224A3317C((v211 + 57), &v378);
  if (!v334)
  {
    goto LABEL_116;
  }

  result = sub_224A3317C((v211 + 62), &v387);
  if (v333)
  {
    swift_unknownObjectRetain();

    v220 = v361;
    v221 = *(v361 + 16);
    v351 = v210;
    v352 = &v330;
    v350 = v216;
    if (v221)
    {
      v222 = sub_224B0B6F0(0);
      LOBYTE(v223) = 0;
      if (v224)
      {
        v223 = (*(*(v220 + 56) + 8 * v222) >> 1) & 1;
      }

      if (*(v220 + 16) && (v225 = sub_224B0B6F0(1u), (v226 & 1) != 0))
      {
        v348 = ((*(*(v220 + 56) + 8 * v225) >> 1) & 1);
      }

      else
      {
        v348 = 0;
      }

      v310 = v223;
    }

    else
    {
      v310 = 0;
      v348 = 0;
    }

    v311 = type metadata accessor for ExtensionReplicationProvider();
    v312 = v388;
    v313 = __swift_mutable_project_boxed_opaque_existential_1(&v387, v388);
    v349 = &v330;
    v314 = *(*(v312 - 8) + 64);
    MEMORY[0x28223BE20](v313);
    v316 = &v330 - ((v315 + 15) & 0xFFFFFFFFFFFFFFF0);
    v318 = (*(v317 + 16))(v316);
    MEMORY[0x28223BE20](v318);
    v319 = &v330 - ((v217 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v353)(v319, v319, v212);
    v320 = type metadata accessor for RemoteWidgetExtensionService();
    v321 = sub_224C41198(&qword_281353CB0, type metadata accessor for RemoteWidgetExtensionService);
    v322 = v366;
    *(&v328 + 1) = v357;
    *&v328 = v358;
    *(&v326 + 1) = v359;
    *&v326 = v362;
    v323 = sub_224C68B84(v351, v319, v322, v376, v367, v355, v354, v377, v375, &v378, v334, v316, v333, v310, v348, v311, v212, v320, v326, v328, v356, v321);
    (*(v350 + 8))(v218, v212);
    __swift_destroy_boxed_opaque_existential_1(&v387);
    *&v377[24] = v311;
    *&v377[32] = sub_224C41198(&qword_281354408, type metadata accessor for ExtensionReplicationProvider);
    *v377 = v323;
    sub_224B079FC(v377, 2);
    v228 = v374;
    a2 = v361;
    goto LABEL_64;
  }

LABEL_117:
  __break(1u);
  return result;
}

uint64_t sub_224C1A508@<X0>(uint64_t a1@<X0>, void *a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  result = sub_224C1A6C4(a2);
  if (!v4)
  {
    v11 = v10;
    sub_224C59DD4(a1, result);
    sub_224C5A14C(a1, v11);
    v19[6] = 0;
    sub_224DAE9F8();
    v17 = sub_224DAE9A8();
    v12 = a2[18];
    __swift_project_boxed_opaque_existential_1(a2 + 14, a2[17]);
    v18 = sub_224DAC678();
    v13 = a2[3];
    v14 = a2[7];
    v15 = __swift_project_boxed_opaque_existential_1(a2, v13);
    v19[3] = v13;
    v19[4] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v15, v13);
    sub_224C54B88(a1, v18, v17, v19, a3, a4);

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return result;
}

uint64_t sub_224C1A6C4(void *a1)
{
  v2 = a1[61];
  __swift_project_boxed_opaque_existential_1(a1 + 57, a1[60]);
  v3 = *(v2 + 24);
  v4 = sub_224DADA38();
  v5 = a1[61];
  __swift_project_boxed_opaque_existential_1(a1 + 57, a1[60]);
  v6 = *(v5 + 24);
  v7 = sub_224DADA48();
  if (v4)
  {
    if (!v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5698, &qword_224DBBCC0);

      sub_224DA06C8(MEMORY[0x277D84F90]);
      sub_224DACF68();
    }
  }

  else if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
    sub_224DA06A0(MEMORY[0x277D84F90]);
    return sub_224DACF68();
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError();
    sub_224C41198(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_224C1A838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[3];
  v8 = a3[8];
  v9 = __swift_project_boxed_opaque_existential_1(a3, v7);
  v12[3] = v7;
  v12[4] = *(v8 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, v9, v7);
  sub_224C56080(a1, a2, v12, a4);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_224C1A908@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v6 = a2[25];
  v7 = a2[26];
  v14[3] = swift_getObjectType();
  v14[4] = v7;
  v14[0] = v6;
  v8 = a2[3];
  v9 = a2[7];
  v10 = __swift_project_boxed_opaque_existential_1(a2, v8);
  v13[3] = v8;
  v13[4] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  swift_unknownObjectRetain();
  sub_224AF2674(a1, v14, v13, a3);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

void sub_224C1A9F4(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v71 = a2;
  v62 = a4;
  v63 = a5;
  v70 = a1;
  v74 = a6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v61 = *(v68 - 8);
  v7 = *(v61 + 64);
  MEMORY[0x28223BE20](v68);
  v64 = &v55 - v8;
  v9 = sub_224DA9688();
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9);
  v69 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAA618();
  v67 = *(v12 - 8);
  v13 = *(v67 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v55 - v20;
  v22 = _s10IconChangeOMa();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a3[3];
  v27 = a3[8];
  v28 = __swift_project_boxed_opaque_existential_1(a3, v26);
  v73[3] = v26;
  v73[4] = *(v27 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v73);
  (*(*(v26 - 8) + 16))(boxed_opaque_existential_1, v28, v26);
  v30 = v72;
  sub_224C56DE8(v70, v71, v73, v74);
  __swift_destroy_boxed_opaque_existential_1(v73);
  if (!v30)
  {
    v31 = v19;
    v71 = v16;
    v72 = v21;
    v32 = v68;
    v60 = v12;
    sub_224C4E30C(v74, v25, _s10IconChangeOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_224C4E374(v25, _s10IconChangeOMa);
    }

    else
    {
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
      v34 = v67;
      v35 = v72;
      v36 = v60;
      (*(v67 + 32))(v72, v25, v60);
      v37 = v65;
      (*(v65 + 32))(v69, &v25[v33], v66);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v38 = sub_224DAB258();
      v39 = __swift_project_value_buffer(v38, qword_281365120);
      v40 = v31;
      v57 = *(v34 + 16);
      v58 = v34 + 16;
      v57(v31, v35, v36);
      v59 = v39;
      v41 = sub_224DAB228();
      v42 = sub_224DAF2A8();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = v40;
        v44 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v73[0] = v56;
        *v44 = 136446210;
        v45 = v64;
        sub_224DAA5E8();
        sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150);
        v46 = sub_224DAFD28();
        v47 = v32;
        v49 = v48;
        (*(v61 + 8))(v45, v47);
        v50 = v43;
        v36 = v60;
        v70 = *(v34 + 8);
        v70(v50, v60);
        v51 = sub_224A33F74(v46, v49, v73);
        v37 = v65;

        *(v44 + 4) = v51;
        _os_log_impl(&dword_224A2F000, v41, v42, "Received remote icon for %{public}s", v44, 0xCu);
        v52 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x22AA5EED0](v52, -1, -1);
        MEMORY[0x22AA5EED0](v44, -1, -1);
      }

      else
      {

        v70 = *(v34 + 8);
        v70(v40, v36);
      }

      v53 = v69;
      v54 = v72;
      if (v62)
      {
        swift_getObjectType();
        sub_224DA9CD8();
        (*(v37 + 8))(v53, v66);
        v70(v54, v36);
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_224C1B290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[12];
  v8 = a3[3];
  v9 = a3[8];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);
  v13[3] = v8;
  v13[4] = *(v9 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  sub_224C1B36C(a1, v7, a2, 1, v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C1B36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *&v169 = a5;
  v170 = a4;
  v175 = a3;
  v166 = a2;
  v154 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v152 = &v141 - v9;
  v153 = sub_224DAAFF8();
  v155 = *(v153 - 8);
  v10 = *(v155 + 64);
  v11 = MEMORY[0x28223BE20](v153);
  v151 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v144 = &v141 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v149 = &v141 - v16;
  MEMORY[0x28223BE20](v15);
  v150 = &v141 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v145 = &v141 - v20;
  v160 = sub_224DAAFC8();
  v159 = *(v160 - 8);
  v21 = *(v159 + 64);
  MEMORY[0x28223BE20](v160);
  v158 = &v141 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_224DA9688();
  v164 = *(v23 - 8);
  v165 = v23;
  v24 = *(v164 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v146 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v167 = &v141 - v27;
  v177 = sub_224DAAC58();
  v174 = *(v177 - 1);
  v28 = v174[8];
  MEMORY[0x28223BE20](v177);
  v176 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DA9908();
  v172 = *(v30 - 8);
  v173 = v30;
  v31 = *(v172 + 64);
  v32 = MEMORY[0x28223BE20](v30);
  v148 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v163 = &v141 - v35;
  MEMORY[0x28223BE20](v34);
  v171 = &v141 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = sub_224DAAF48();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v147 = &v141 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v45 = &v141 - v44;
  v46 = sub_224DAC268();
  v178 = *(v46 - 8);
  v47 = *(v178 + 64);
  v48 = MEMORY[0x28223BE20](v46);
  v168 = &v141 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v141 - v51;
  MEMORY[0x28223BE20](v50);
  v179 = &v141 - v53;
  v54 = *(v40 + 16);
  v162 = a1;
  v157 = v40 + 16;
  v156 = v54;
  v54(v45, a1, v39);
  sub_224DAAEF8();
  v55 = sub_224DA96A8();
  v57 = v56;

  if (v57 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    return (*(v40 + 8))(v45, v39);
  }

  else
  {
    v161 = v39;
    sub_224DAAD38();
    sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978]);
    v59 = v181;
    sub_224DAAD18();
    if (v59)
    {
      (*(v40 + 8))(v45, v161);
      return sub_224AC1D9C(v55, v57);
    }

    else
    {
      v143 = 0;
      v181 = sub_224DAC248();
      sub_224DAC258();
      sub_224DAC218();
      v60 = v178;
      sub_224DAC228();
      sub_224AC1D9C(v55, v57);
      v63 = *(v60 + 8);
      v61 = v60 + 8;
      v62 = v63;
      v63(v52, v46);
      (*(v40 + 8))(v45, v161);
      v64 = v174;
      v65 = v175;
      v66 = v174[2];
      v68 = v176;
      v67 = v177;
      v66(v176, v175, v177);
      if ((v64[11])(v68, v67) == *MEMORY[0x277D46558])
      {
        (v64[12])(v68, v67);
        v69 = *v68;
        v70 = *(*v68 + 16) == 1;
        v142 = v46;
        if (v70)
        {
          v181 = v62;
          v72 = v171;
          v71 = v172;
          v73 = v172 + 16;
          v74 = v69 + ((*(v172 + 80) + 32) & ~*(v172 + 80));
          v177 = *(v172 + 16);
          v178 = v61;
          (v177)(v171, v74, v173);

          v75 = *(v169 + 32);
          __swift_project_boxed_opaque_existential_1(v169, *(v169 + 24));
          sub_224B942B8(v170);
          sub_224C4DEE4();
          sub_224C4DF38();
          v76 = v143;
          v77 = sub_224DAAB38();
          if (v76)
          {

            (*(v71 + 8))(v72, v173);
            return v181(v179, v142);
          }

          else
          {
            v175 = v73;
            v176 = v78;
            v85 = v77;
            v86 = v79;

            v87 = v179;
            sub_224DAC248();
            sub_224DAC258();
            sub_224DAC238();
            sub_224DAC9B8();
            sub_224C41198(&qword_281350D48, MEMORY[0x277CF9B18]);
            v88 = v167;
            sub_224DAC3F8();
            v180[0] = sub_224DAC408();
            v180[1] = v89;
            sub_224DAAE48();
            v90 = v165;
            v143 = 0;

            v91 = [objc_opt_self() defaultManager];
            sub_224DA9658();
            v92 = sub_224DAEDE8();

            v93 = [v91 fileExistsAtPath_];

            if (v93)
            {
              v94 = v164;
              v95 = v145;
              (*(v164 + 16))(v145, v88, v90);
              (*(v94 + 56))(v95, 0, 1, v90);
              sub_224A77FD0(v85, v176);
              v96 = v158;
              sub_224DAAFB8();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
              v97 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
              v98 = *(*v97 + 72);
              v99 = (*(*v97 + 80) + 32) & ~*(*v97 + 80);
              v100 = swift_allocObject();
              v169 = xmmword_224DB3100;
              *(v100 + 16) = xmmword_224DB3100;
              v101 = (v100 + v99);
              v102 = v97[14];
              *v101 = v86;
              (*(v159 + 16))(&v101[v102], v96, v160);
              v174 = sub_224DA06F0(v100);
              swift_setDeallocating();
              sub_224A3311C(v101, &unk_27D6F6FE0, &unk_224DB9C50);
              swift_deallocClassInstance();
              if (v170 >= 0x40u)
              {
                v180[0] = MEMORY[0x277D84F90];
                sub_224C41198(&unk_27D6F5720, MEMORY[0x277D467D0]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
                sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300);
                v123 = v149;
                v124 = v153;
                sub_224DAF788();
                v125 = v155;
                v126 = *(v155 + 32);
              }

              else
              {
                if ((v170 - 1) >= 2u)
                {
                  v180[0] = MEMORY[0x277D84F90];
                }

                else
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3888, &unk_224DB41D0);
                  v103 = *(v155 + 72);
                  v104 = (*(v155 + 80) + 32) & ~*(v155 + 80);
                  v105 = swift_allocObject();
                  *(v105 + 16) = v169;
                  sub_224DAAFE8();
                  v180[0] = v105;
                }

                sub_224C41198(&unk_27D6F5720, MEMORY[0x277D467D0]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
                sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300);
                v134 = v144;
                v124 = v153;
                sub_224DAF788();
                v125 = v155;
                v126 = *(v155 + 32);
                v123 = v149;
                v126(v149, v134, v124);
              }

              v135 = v150;
              v126(v150, v123, v124);
              v156(v147, v162, v161);
              (v177)(v148, v163, v173);
              v136 = sub_224DA9878();
              (*(*(v136 - 8) + 56))(v152, 1, 1, v136);
              (*(v125 + 16))(v151, v135, v124);
              sub_224DAAF58();
              sub_224A78024(v85, v176);
              (*(v125 + 8))(v135, v124);
              (*(v159 + 8))(v158, v160);
              v137 = v173;
              v138 = *(v172 + 8);
              v138(v163, v173);
              (*(v164 + 8))(v88, v165);
              v139 = v142;
              v140 = v181;
              v181(v168, v142);
              v138(v171, v137);
              return v140(v179, v139);
            }

            else
            {
              v106 = v90;
              if (qword_2813516C8 != -1)
              {
                swift_once();
              }

              v107 = sub_224DAB258();
              __swift_project_value_buffer(v107, qword_281365120);
              v108 = v164;
              v109 = v146;
              (*(v164 + 16))(v146, v88, v106);
              v110 = sub_224DAB228();
              v111 = sub_224DAF288();
              if (os_log_type_enabled(v110, v111))
              {
                v112 = swift_slowAlloc();
                v174 = v112;
                v113 = swift_slowAlloc();
                v180[0] = v113;
                *v112 = 136315138;
                sub_224C41198(&qword_281351A70, MEMORY[0x277CC9260]);
                v114 = sub_224DAFD28();
                v115 = v109;
                v117 = v116;
                v118 = *(v108 + 8);
                v175 = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v177 = v118;
                (v118)(v115, v106);
                v119 = sub_224A33F74(v114, v117, v180);

                v120 = v174;
                *(v174 + 4) = v119;
                v121 = v120;
                _os_log_impl(&dword_224A2F000, v110, v111, "Archive at URL does not exist: %s", v120, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v113);
                v122 = v113;
                v87 = v179;
                MEMORY[0x22AA5EED0](v122, -1, -1);
                MEMORY[0x22AA5EED0](v121, -1, -1);
              }

              else
              {

                v127 = *(v108 + 8);
                v175 = (v108 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
                v177 = v127;
                (v127)(v109, v106);
              }

              v128 = v142;
              v129 = v172;
              type metadata accessor for ReplicationService.ReplicationServiceError();
              sub_224C41198(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
              swift_allocError();
              v156(v130, v162, v161);
              swift_storeEnumTagMultiPayload();
              swift_willThrow();
              sub_224A78024(v85, v176);
              v131 = *(v129 + 8);
              v132 = v173;
              v131(v163, v173);
              (v177)(v88, v165);
              v133 = v181;
              v181(v168, v128);
              v131(v171, v132);
              return v133(v87, v128);
            }
          }
        }

        else
        {

          type metadata accessor for ReplicationService.ReplicationServiceError();
          sub_224C41198(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
          swift_allocError();
          v66(v84, v65, v67);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return v62(v179, v142);
        }
      }

      else
      {
        type metadata accessor for ReplicationService.ReplicationServiceError();
        sub_224C41198(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError);
        swift_allocError();
        v81 = v80;
        v82 = v65;
        v83 = v177;
        v66(v81, v82, v177);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v62(v179, v46);
        return (v64[1])(v176, v83);
      }
    }
  }
}

uint64_t sub_224C1C9E8(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a2;
  v27 = sub_224DA9908();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAAF8();
  sub_224DAAB08();
  v13 = a3[12];
  v14 = a3[3];
  v15 = a3[8];
  v16 = __swift_project_boxed_opaque_existential_1(a3, v14);
  v26[3] = v14;
  v26[4] = *(v15 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
  v18 = v25;
  v19 = sub_224C1CC3C(v12, v7, v24, v13);
  if (v18)
  {
    (*(v4 + 8))(v7, v27);
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v21 = v19;
    (*(v4 + 8))(v7, v27);
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_224C1CC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v64 = a4;
  v65 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56F8, &qword_224DBBCC8);
  v5 = *(*(v66 - 8) + 64);
  MEMORY[0x28223BE20](v66);
  v68 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v62 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v58 - v12;
  MEMORY[0x28223BE20](v11);
  v72 = &v58 - v13;
  v67 = sub_224DA9908();
  v69 = *(v67 - 8);
  v14 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v70 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_224DAAF48();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_224DAC268();
  v76 = *(v23 - 8);
  v24 = *(v76 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v73 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v58 - v28;
  MEMORY[0x28223BE20](v27);
  v75 = &v58 - v30;
  (*(v19 + 16))(v22, a1, v18);
  sub_224DAAEF8();
  v31 = sub_224DA96A8();
  v33 = v32;

  if (v33 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    (*(v19 + 8))(v22, v18);
  }

  else
  {
    sub_224DAAD38();
    sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978]);
    v34 = v74;
    sub_224DAAD18();
    if (!v34)
    {
      v74 = 0;
      v60 = sub_224DAC248();
      v59 = sub_224DAC258();
      sub_224DAC218();
      sub_224DAC228();
      sub_224AC1D9C(v31, v33);
      v36 = *(v76 + 8);
      v76 += 8;
      v60 = v36;
      v36(v29, v23);
      (*(v19 + 8))(v22, v18);
      v37 = v70;
      sub_224DAAD98();
      sub_224B44A4C(v37, v73);
      v38 = v69;
      v39 = *(v69 + 8);
      v40 = v67;
      v63 = v69 + 8;
      v59 = v39;
      v39(v37, v67);
      sub_224DAC9B8();
      sub_224C41198(&qword_281350D48, MEMORY[0x277CF9B18]);
      v41 = v72;
      v42 = v74;
      sub_224DAC428();
      v61 = v23;
      if (v42)
      {

        (*(v38 + 56))(v41, 1, 1, v40);
      }

      v74 = 0;
      v43 = v68;
      v44 = v71;
      (*(v38 + 16))(v71, v65, v40);
      (*(v38 + 56))(v44, 0, 1, v40);
      v45 = *(v66 + 48);
      sub_224A3796C(v44, v43, &unk_27D6F5630, &unk_224DB34C0);
      sub_224A3796C(v41, v43 + v45, &unk_27D6F5630, &unk_224DB34C0);
      v46 = *(v38 + 48);
      if (v46(v43, 1, v40) == 1)
      {
        sub_224A3311C(v44, &unk_27D6F5630, &unk_224DB34C0);
        sub_224A3311C(v41, &unk_27D6F5630, &unk_224DB34C0);
        v48 = v60;
        v47 = v61;
        v60(v73, v61);
        v48(v75, v47);
        if (v46(v43 + v45, 1, v40) == 1)
        {
          sub_224A3311C(v43, &unk_27D6F5630, &unk_224DB34C0);
          LOBYTE(v29) = 1;
          return v29 & 1;
        }
      }

      else
      {
        v49 = v62;
        sub_224A3796C(v43, v62, &unk_27D6F5630, &unk_224DB34C0);
        if (v46(v43 + v45, 1, v40) != 1)
        {
          v53 = v43 + v45;
          v54 = v70;
          (*(v69 + 32))(v70, v53, v40);
          sub_224C41198(&qword_281351A10, MEMORY[0x277CC95F0]);
          LOBYTE(v29) = sub_224DAEDD8();
          v55 = v59;
          v59(v54, v40);
          sub_224A3311C(v71, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v72, &unk_27D6F5630, &unk_224DB34C0);
          v57 = v60;
          v56 = v61;
          v60(v73, v61);
          v57(v75, v56);
          v55(v62, v40);
          sub_224A3311C(v43, &unk_27D6F5630, &unk_224DB34C0);
          return v29 & 1;
        }

        v50 = v49;
        sub_224A3311C(v71, &unk_27D6F5630, &unk_224DB34C0);
        sub_224A3311C(v72, &unk_27D6F5630, &unk_224DB34C0);
        v52 = v60;
        v51 = v61;
        v60(v73, v61);
        v52(v75, v51);
        v59(v50, v40);
      }

      sub_224A3311C(v43, &qword_27D6F56F8, &qword_224DBBCC8);
      LOBYTE(v29) = 0;
      return v29 & 1;
    }

    (*(v19 + 8))(v22, v18);
    sub_224AC1D9C(v31, v33);
  }

  return v29 & 1;
}

uint64_t sub_224C1D560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[12];
  v8 = a3[3];
  v9 = a3[8];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);
  v13[3] = v8;
  v13[4] = *(v9 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  sub_224C1D638(a1, a2, v7, v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C1D638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a4;
  v56 = a3;
  v52 = a5;
  v7 = sub_224DA9908();
  v54 = *(v7 - 1);
  v55 = v7;
  v8 = *(v54 + 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAC268();
  v57 = *(v10 - 1);
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DA9688();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v47 - v22;
  v24 = v60;
  result = sub_224C580E8(&v47 - v22, v13, a1, a2, v59);
  if (!v24)
  {
    v50 = a1;
    v51 = v23;
    v48 = v18;
    v49 = a2;
    v59 = v10;
    v60 = v14;
    sub_224DAC9B8();
    sub_224C41198(&qword_281350D48, MEMORY[0x277CF9B18]);
    sub_224DAC3F8();
    sub_224C41198(&qword_27D6F56E0, MEMORY[0x277CF9B18]);
    v26 = v51;
    sub_224DAC448();
    v27 = v53;
    sub_224DAB008();
    sub_224DAC458();
    v56 = 0;
    (*(v54 + 1))(v27, v55);
    v28 = v60;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281365120);
    v30 = v58;
    v31 = v48;
    (*(v58 + 16))(v48, v21, v28);
    v32 = sub_224DAB228();
    v33 = sub_224DAF2A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v54 = v34;
      v55 = swift_slowAlloc();
      v61 = v55;
      *v34 = 136446210;
      sub_224C41198(&qword_281351A70, MEMORY[0x277CC9260]);
      LODWORD(v53) = v33;
      v35 = sub_224DAFD28();
      v37 = v36;
      v38 = *(v58 + 8);
      v38(v31, v60);
      v39 = sub_224A33F74(v35, v37, &v61);
      v28 = v60;

      v40 = v54;
      *(v54 + 1) = v39;
      _os_log_impl(&dword_224A2F000, v32, v53, "Wrote to %{public}s", v40, 0xCu);
      v41 = v55;
      __swift_destroy_boxed_opaque_existential_1(v55);
      MEMORY[0x22AA5EED0](v41, -1, -1);
      MEMORY[0x22AA5EED0](v40, -1, -1);

      v38(v51, v28);
      v30 = v58;
    }

    else
    {

      v42 = *(v30 + 8);
      v42(v31, v28);
      v42(v26, v28);
    }

    v43 = v52;
    (*(v57 + 32))(v52, v13, v59);
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56E8, &unk_224DC3340) + 44);
    (*(v30 + 32))(v43 + v44, v21, v28);
    (*(v30 + 56))(v43 + v44, 0, 1, v28);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56D8, &qword_224DBD790) + 44);
    v46 = sub_224DAAE38();
    return (*(*(v46 - 8) + 16))(v43 + v45, v49, v46);
  }

  return result;
}

uint64_t sub_224C1DD5C@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3[87];
  if (v4)
  {
    v6 = result;
    v8 = a3[88];
    v9 = a3[3];
    v10 = a3[8];
    v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
    v13[3] = v9;
    v13[4] = *(v10 + 16);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    sub_224AF3E84(v6, v4, v8, a2, 3, v13, a4);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C1DE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56F8, &qword_224DBBCC8);
  v4 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v79 - v11;
  MEMORY[0x28223BE20](v10);
  v91 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = (&v79 - v15);
  v95 = sub_224DAC2B8();
  v16 = *(v95 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v95);
  v92 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  MEMORY[0x28223BE20](v20);
  v94 = &v79 - v23;
  v100 = sub_224DA9908();
  v97 = *(v100 - 8);
  v24 = *(v97 + 64);
  v25 = MEMORY[0x28223BE20](v100);
  v89 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v79 - v27;
  v29 = sub_224DAAF48();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v79 - v35;
  sub_224DAAAF8();
  v98 = v28;
  result = sub_224DAAB08();
  if (*(a3 + 696))
  {
    v84 = *(a3 + 704);
    v38 = v30[2];
    v96 = v36;
    v99 = v29;
    v38(v34, v36, v29);
    sub_224DAAEF8();
    v39 = sub_224DA96A8();
    v41 = v40;

    if (v41 >> 60 == 15)
    {
      sub_224AFC52C();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v82 = v16;
      sub_224DAAD38();
      sub_224C41198(&qword_27D6F3868, MEMORY[0x277CF99B8]);
      v42 = v95;
      v43 = v93;
      sub_224DAAD18();
      if (!v43)
      {
        v47 = sub_224DAC2A8();
        v93 = 0;
        v81 = v47;
        sub_224DAC288();
        sub_224DAC298();
        sub_224AC1D9C(v39, v41);
        v80 = *(v82 + 8);
        v82 += 8;
        v80(v22, v42);
        v85 = v30[1];
        v85(v34, v99);
        v48 = v89;
        sub_224DAAD98();
        sub_224CBE434();
        v49 = v97;
        v50 = *(v97 + 8);
        v51 = v48;
        v52 = v100;
        v86 = v97 + 8;
        v81 = v50;
        v50(v51, v100);
        swift_getObjectType();
        v53 = *(*(v84 + 8) + 8);
        v54 = v91;
        v55 = v93;
        sub_224DAC428();
        if (v55)
        {

          (*(v49 + 56))(v54, 1, 1, v52);
        }

        v93 = 0;
        v56 = v98;
        v57 = v90;
        (*(v49 + 16))(v90, v98, v52);
        (*(v49 + 56))(v57, 0, 1, v52);
        v58 = v88;
        v59 = *(v87 + 48);
        sub_224A3796C(v57, v88, &unk_27D6F5630, &unk_224DB34C0);
        v87 = v59;
        v60 = v100;
        sub_224A3796C(v54, v58 + v59, &unk_27D6F5630, &unk_224DB34C0);
        v61 = v54;
        v62 = *(v49 + 48);
        if (v62(v58, 1, v60) == 1)
        {
          v63 = v60;
          sub_224A3311C(v57, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v61, &unk_27D6F5630, &unk_224DB34C0);
          v64 = v95;
          v65 = v80;
          v80(v92, v95);
          v65(v94, v64);
          v81(v98, v63);
          v85(v96, v99);
          if (v62(v58 + v87, 1, v63) == 1)
          {
            sub_224A3311C(v58, &unk_27D6F5630, &unk_224DB34C0);
            v46 = 0;
            return v46 & 1;
          }
        }

        else
        {
          v66 = v56;
          v67 = v83;
          sub_224A3796C(v58, v83, &unk_27D6F5630, &unk_224DB34C0);
          v68 = v87;
          if (v62(v58 + v87, 1, v60) != 1)
          {
            v74 = v58 + v68;
            v75 = v89;
            (*(v97 + 32))(v89, v74, v60);
            sub_224C41198(&qword_281351A10, MEMORY[0x277CC95F0]);
            LODWORD(v97) = sub_224DAEDD8();
            v76 = v81;
            v81(v75, v60);
            sub_224A3311C(v90, &unk_27D6F5630, &unk_224DB34C0);
            sub_224A3311C(v91, &unk_27D6F5630, &unk_224DB34C0);
            v77 = v95;
            v78 = v80;
            v80(v92, v95);
            v78(v94, v77);
            v76(v66, v60);
            v85(v96, v99);
            v76(v83, v60);
            sub_224A3311C(v58, &unk_27D6F5630, &unk_224DB34C0);
            v46 = v97 ^ 1;
            return v46 & 1;
          }

          v69 = v60;
          v70 = v67;
          sub_224A3311C(v90, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v91, &unk_27D6F5630, &unk_224DB34C0);
          v71 = v95;
          v72 = v80;
          v80(v92, v95);
          v72(v94, v71);
          v73 = v81;
          v81(v66, v69);
          v85(v96, v99);
          v73(v70, v69);
        }

        sub_224A3311C(v58, &qword_27D6F56F8, &qword_224DBBCC8);
        v46 = 1;
        return v46 & 1;
      }

      sub_224AC1D9C(v39, v41);
    }

    v44 = v30[1];
    v45 = v99;
    v44(v34, v99);
    (*(v97 + 8))(v98, v100);
    v44(v96, v45);
    return v46 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_224C1E8AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_224DA9908();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAC2B8();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DA9688();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v44 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  if (a3[87])
  {
    v21 = a3[88];
    v22 = a3[3];
    v23 = a3[8];
    v24 = __swift_project_boxed_opaque_existential_1(a3, v22);
    v45[3] = v22;
    v45[4] = *(v23 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
    v26 = v46;
    sub_224C58DD8(v20, v13, a1, a2, v45);
    if (!v26)
    {
      swift_getObjectType();
      v27 = *(*(v21 + 8) + 8);
      sub_224DAC3F8();
      v28 = *(*(v21 + 16) + 16);
      sub_224DAC448();
      v46 = v28;
      v29 = v37;
      sub_224DAB008();
      sub_224DAC458();
      (*(v38 + 8))(v29, v39);
      v31 = v42;
      v30 = v43;
      (*(v42 + 8))(v20, v43);
      v32 = v36;
      (*(v40 + 32))(v36, v13, v41);
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5748, &qword_224DBBCD0) + 44);
      (*(v31 + 32))(v32 + v33, v44, v30);
      (*(v31 + 56))(v32 + v33, 0, 1, v30);
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5740, &qword_224DB3608) + 44);
      v35 = sub_224DAAE38();
      (*(*(v35 - 8) + 16))(v32 + v34, a2, v35);
    }

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C1ED60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v37 = a4;
  v38 = a5;
  v47 = a3;
  v45 = a2;
  v39 = a6;
  v46 = sub_224DA9908();
  v44 = *(v46 - 8);
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v43 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_224DAAF48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_224DAC268();
  v42 = *(v48 - 8);
  v17 = *(v42 + 64);
  v18 = MEMORY[0x28223BE20](v48);
  v41 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v36 - v21;
  MEMORY[0x28223BE20](v20);
  v40 = v36 - v23;
  (*(v13 + 16))(v16, a1, v12);
  sub_224DAAEF8();
  v24 = sub_224DA96A8();
  v26 = v25;

  if (v26 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    sub_224DAAD38();
    sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978]);
    sub_224DAAD18();
    if (v6)
    {
      (*(v13 + 8))(v16, v12);
      return sub_224AC1D9C(v24, v26);
    }

    else
    {
      v36[2] = sub_224DAC248();
      v36[1] = sub_224DAC258();
      sub_224DAC218();
      v28 = v40;
      sub_224DAC228();
      sub_224AC1D9C(v24, v26);
      v29 = *(v42 + 8);
      v29(v22, v48);
      (*(v13 + 8))(v16, v12);
      v30 = v28;
      v31 = v43;
      sub_224DAAD98();
      v32 = v41;
      sub_224B44A4C(v31, v41);
      (*(v44 + 8))(v31, v46);
      v33 = *(v47 + 96);
      sub_224DAC9B8();
      sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18]);
      sub_224DAC708();
      v34 = v48;
      v29(v32, v48);
      v29(v30, v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
      return (*(*(v35 - 8) + 56))(v39, 1, 1, v35);
    }
  }
}

uint64_t sub_224C1F2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[13];
  v8 = a3[3];
  v9 = a3[8];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);
  v13[3] = v8;
  v13[4] = *(v9 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  sub_224C1B36C(a1, v7, a2, 2, v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C1F37C(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = a2;
  v27 = sub_224DA9908();
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF48();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAAF8();
  sub_224DAAB08();
  v13 = a3[13];
  v14 = a3[3];
  v15 = a3[8];
  v16 = __swift_project_boxed_opaque_existential_1(a3, v14);
  v26[3] = v14;
  v26[4] = *(v15 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, v16, v14);
  v18 = v25;
  v19 = sub_224C1CC3C(v12, v7, v24, v13);
  if (v18)
  {
    (*(v4 + 8))(v7, v27);
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v21 = v19;
    (*(v4 + 8))(v7, v27);
    (*(v9 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v20 = v21 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_224C1F5D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3[13];
  v8 = a3[3];
  v9 = a3[8];
  v10 = __swift_project_boxed_opaque_existential_1(a3, v8);
  v13[3] = v8;
  v13[4] = *(v9 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v10, v8);
  sub_224C1D638(a1, a2, v7, v13, a4);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C1F6A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v106 = a2;
  v107 = a3;
  v101 = a4;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56E8, &unk_224DC3340);
  v5 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v100 = v96 - v6;
  v7 = sub_224DA9908();
  v104 = *(v7 - 8);
  v105 = v7;
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v7);
  v103 = (v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_224DAAF48();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAC268();
  v109 = *(v17 - 8);
  v18 = *(v109 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v98 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v97 = v96 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v110 = v96 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v96 - v26;
  MEMORY[0x28223BE20](v25);
  v108 = v96 - v28;
  v29 = *(v13 + 16);
  v102 = a1;
  v29(v16, a1, v12);
  sub_224DAAEF8();
  v30 = sub_224DA96A8();
  v32 = v31;

  if (v32 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    return (*(v13 + 8))(v16, v12);
  }

  sub_224DAAD38();
  sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978]);
  v34 = v111;
  sub_224DAAD18();
  if (v34)
  {
    (*(v13 + 8))(v16, v12);
    return sub_224AC1D9C(v30, v32);
  }

  v111 = 0;
  v96[2] = sub_224DAC248();
  v96[1] = sub_224DAC258();
  sub_224DAC218();
  v35 = v108;
  sub_224DAC228();
  sub_224AC1D9C(v30, v32);
  v37 = v109 + 8;
  v36 = *(v109 + 8);
  v36(v27, v17);
  v38 = v35;
  (*(v13 + 8))(v16, v12);
  v39 = v103;
  v40 = v106;
  sub_224DAAD98();
  v41 = v110;
  sub_224B44A4C(v39, v110);
  (*(v104 + 8))(v39, v105);
  v42 = *(v107 + 9);
  __swift_project_boxed_opaque_existential_1(v107, *(v107 + 3));
  v43 = v111;
  v44 = sub_224DAABB8();
  if (v43)
  {
    v36(v41, v17);
    return (v36)(v35, v17);
  }

  v104 = v37;
  v45 = v40;
  v46 = MEMORY[0x28223BE20](v44);
  v96[-2] = v102;
  v96[-1] = v35;
  v47 = sub_224B3E8C4(sub_224C4DF8C, &v96[-4], v46);
  v111 = 0;

  v48 = v38;
  if (v47)
  {
    v50 = v109;
    v49 = v110;
    v107 = v36;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v51 = sub_224DAB258();
    __swift_project_value_buffer(v51, qword_281365120);
    v52 = v97;
    (*(v50 + 16))(v97, v49, v17);
    v53 = sub_224DAB228();
    v54 = v17;
    v55 = sub_224DAF2A8();
    if (os_log_type_enabled(v53, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v105 = v54;
      v58 = v57;
      v112 = v57;
      *v56 = 136446210;
      sub_224C41198(&qword_281350E40, MEMORY[0x277CF9978]);
      v59 = sub_224DAFD28();
      v61 = v60;
      v62 = v52;
      v63 = v107;
      v107(v62, v105);
      v64 = sub_224A33F74(v59, v61, &v112);
      v48 = v108;

      *(v56 + 4) = v64;
      _os_log_impl(&dword_224A2F000, v53, v55, "Skipping deleting archive for %{public}s)", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v58);
      v65 = v58;
      v54 = v105;
      MEMORY[0x22AA5EED0](v65, -1, -1);
      v66 = v56;
      v50 = v109;
      MEMORY[0x22AA5EED0](v66, -1, -1);
    }

    else
    {

      v84 = v52;
      v63 = v107;
      v107(v84, v54);
    }

    v85 = v110;
  }

  else
  {
    v50 = v109;
    v67 = v110;
    v63 = v36;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v68 = sub_224DAB258();
    __swift_project_value_buffer(v68, qword_281365120);
    v69 = v98;
    (*(v50 + 16))(v98, v67, v17);
    v70 = sub_224DAB228();
    v71 = v17;
    v72 = sub_224DAF2A8();
    if (os_log_type_enabled(v70, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v105 = v71;
      v75 = v69;
      v103 = v74;
      v112 = v74;
      *v73 = 136446210;
      sub_224C41198(&qword_281350E40, MEMORY[0x277CF9978]);
      v76 = v45;
      v77 = sub_224DAFD28();
      v79 = v78;
      v36(v75, v105);
      v80 = v77;
      v45 = v76;
      v81 = sub_224A33F74(v80, v79, &v112);
      v48 = v108;

      *(v73 + 4) = v81;
      _os_log_impl(&dword_224A2F000, v70, v72, "Deleting archive for %{public}s)", v73, 0xCu);
      v82 = v103;
      __swift_destroy_boxed_opaque_existential_1(v103);
      v54 = v105;
      MEMORY[0x22AA5EED0](v82, -1, -1);
      v83 = v73;
      v50 = v109;
      MEMORY[0x22AA5EED0](v83, -1, -1);
    }

    else
    {

      v86 = v69;
      v54 = v71;
      v36(v86, v71);
    }

    v87 = *(v107 + 13);
    sub_224DAC9B8();
    sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18]);
    v85 = v110;
    v88 = v111;
    sub_224DAC708();
    if (v88)
    {
      v36(v85, v54);
      return (v36)(v48, v54);
    }

    v111 = 0;
  }

  v89 = v100;
  (*(v50 + 32))(v100, v85, v54);
  v90 = *(v99 + 44);
  v91 = sub_224DA9688();
  (*(*(v91 - 8) + 56))(v89 + v90, 1, 1, v91);
  v92 = v101;
  sub_224A44E4C(v89, v101, &unk_27D6F56E8, &unk_224DC3340);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56D8, &qword_224DBD790);
  v94 = *(v93 + 44);
  v95 = sub_224DAAE38();
  (*(*(v95 - 8) + 16))(v92 + v94, v45, v95);
  (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
  return v63(v48, v54);
}

uint64_t sub_224C201BC@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3[85];
  if (v4)
  {
    v6 = result;
    v8 = a3[86];
    v9 = a3[3];
    v10 = a3[8];
    v11 = __swift_project_boxed_opaque_existential_1(a3, v9);
    v13[3] = v9;
    v13[4] = *(v10 + 16);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
    sub_224AF3E84(v6, v4, v8, a2, 4, v13, a4);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C202B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56F8, &qword_224DBBCC8);
  v4 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v83 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = &v79 - v11;
  MEMORY[0x28223BE20](v10);
  v91 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v85 = (&v79 - v15);
  v95 = sub_224DAC2B8();
  v16 = *(v95 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v95);
  v92 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v79 - v21;
  MEMORY[0x28223BE20](v20);
  v94 = &v79 - v23;
  v100 = sub_224DA9908();
  v97 = *(v100 - 8);
  v24 = *(v97 + 64);
  v25 = MEMORY[0x28223BE20](v100);
  v89 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v79 - v27;
  v29 = sub_224DAAF48();
  v30 = *(v29 - 8);
  v31 = v30[8];
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v79 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v36 = &v79 - v35;
  sub_224DAAAF8();
  v98 = v28;
  result = sub_224DAAB08();
  if (*(a3 + 680))
  {
    v84 = *(a3 + 688);
    v38 = v30[2];
    v96 = v36;
    v99 = v29;
    v38(v34, v36, v29);
    sub_224DAAEF8();
    v39 = sub_224DA96A8();
    v41 = v40;

    if (v41 >> 60 == 15)
    {
      sub_224AFC52C();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v82 = v16;
      sub_224DAAD38();
      sub_224C41198(&qword_27D6F3868, MEMORY[0x277CF99B8]);
      v42 = v95;
      v43 = v93;
      sub_224DAAD18();
      if (!v43)
      {
        v47 = sub_224DAC2A8();
        v93 = 0;
        v81 = v47;
        sub_224DAC288();
        sub_224DAC298();
        sub_224AC1D9C(v39, v41);
        v80 = *(v82 + 8);
        v82 += 8;
        v80(v22, v42);
        v85 = v30[1];
        v85(v34, v99);
        v48 = v89;
        sub_224DAAD98();
        sub_224CBE434();
        v49 = v97;
        v50 = *(v97 + 8);
        v51 = v48;
        v52 = v100;
        v86 = v97 + 8;
        v81 = v50;
        v50(v51, v100);
        swift_getObjectType();
        v53 = *(*(v84 + 8) + 8);
        v54 = v91;
        v55 = v93;
        sub_224DAC428();
        if (v55)
        {

          (*(v49 + 56))(v54, 1, 1, v52);
        }

        v93 = 0;
        v56 = v98;
        v57 = v90;
        (*(v49 + 16))(v90, v98, v52);
        (*(v49 + 56))(v57, 0, 1, v52);
        v58 = v88;
        v59 = *(v87 + 48);
        sub_224A3796C(v57, v88, &unk_27D6F5630, &unk_224DB34C0);
        v87 = v59;
        v60 = v100;
        sub_224A3796C(v54, v58 + v59, &unk_27D6F5630, &unk_224DB34C0);
        v61 = v54;
        v62 = *(v49 + 48);
        if (v62(v58, 1, v60) == 1)
        {
          v63 = v60;
          sub_224A3311C(v57, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v61, &unk_27D6F5630, &unk_224DB34C0);
          v64 = v95;
          v65 = v80;
          v80(v92, v95);
          v65(v94, v64);
          v81(v98, v63);
          v85(v96, v99);
          if (v62(v58 + v87, 1, v63) == 1)
          {
            sub_224A3311C(v58, &unk_27D6F5630, &unk_224DB34C0);
            v46 = 0;
            return v46 & 1;
          }
        }

        else
        {
          v66 = v56;
          v67 = v83;
          sub_224A3796C(v58, v83, &unk_27D6F5630, &unk_224DB34C0);
          v68 = v87;
          if (v62(v58 + v87, 1, v60) != 1)
          {
            v74 = v58 + v68;
            v75 = v89;
            (*(v97 + 32))(v89, v74, v60);
            sub_224C41198(&qword_281351A10, MEMORY[0x277CC95F0]);
            LODWORD(v97) = sub_224DAEDD8();
            v76 = v81;
            v81(v75, v60);
            sub_224A3311C(v90, &unk_27D6F5630, &unk_224DB34C0);
            sub_224A3311C(v91, &unk_27D6F5630, &unk_224DB34C0);
            v77 = v95;
            v78 = v80;
            v80(v92, v95);
            v78(v94, v77);
            v76(v66, v60);
            v85(v96, v99);
            v76(v83, v60);
            sub_224A3311C(v58, &unk_27D6F5630, &unk_224DB34C0);
            v46 = v97 ^ 1;
            return v46 & 1;
          }

          v69 = v60;
          v70 = v67;
          sub_224A3311C(v90, &unk_27D6F5630, &unk_224DB34C0);
          sub_224A3311C(v91, &unk_27D6F5630, &unk_224DB34C0);
          v71 = v95;
          v72 = v80;
          v80(v92, v95);
          v72(v94, v71);
          v73 = v81;
          v81(v66, v69);
          v85(v96, v99);
          v73(v70, v69);
        }

        sub_224A3311C(v58, &qword_27D6F56F8, &qword_224DBBCC8);
        v46 = 1;
        return v46 & 1;
      }

      sub_224AC1D9C(v39, v41);
    }

    v44 = v30[1];
    v45 = v99;
    v44(v34, v99);
    (*(v97 + 8))(v98, v100);
    v44(v96, v45);
    return v46 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_224C20D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a4;
  v7 = sub_224DA9908();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = *(v38 + 64);
  MEMORY[0x28223BE20](v7);
  v37 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAC2B8();
  v40 = *(v10 - 8);
  v41 = v10;
  v11 = *(v40 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DA9688();
  v42 = *(v14 - 8);
  v43 = v14;
  v15 = *(v42 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v44 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  if (a3[85])
  {
    v21 = a3[86];
    v22 = a3[3];
    v23 = a3[8];
    v24 = __swift_project_boxed_opaque_existential_1(a3, v22);
    v45[3] = v22;
    v45[4] = *(v23 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v45);
    (*(*(v22 - 8) + 16))(boxed_opaque_existential_1, v24, v22);
    v26 = v46;
    sub_224C58DD8(v20, v13, a1, a2, v45);
    if (!v26)
    {
      swift_getObjectType();
      v27 = *(*(v21 + 8) + 8);
      sub_224DAC3F8();
      v28 = *(*(v21 + 16) + 16);
      sub_224DAC448();
      v46 = v28;
      v29 = v37;
      sub_224DAB008();
      sub_224DAC458();
      (*(v38 + 8))(v29, v39);
      v31 = v42;
      v30 = v43;
      (*(v42 + 8))(v20, v43);
      v32 = v36;
      (*(v40 + 32))(v36, v13, v41);
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5748, &qword_224DBBCD0) + 44);
      (*(v31 + 32))(v32 + v33, v44, v30);
      (*(v31 + 56))(v32 + v33, 0, 1, v30);
      v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5740, &qword_224DB3608) + 44);
      v35 = sub_224DAAE38();
      (*(*(v35 - 8) + 16))(v32 + v34, a2, v35);
    }

    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224C211C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v41 = a2;
  v35 = a4;
  v42 = sub_224DA9908();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v39 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_224DAAF48();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_224DAC268();
  v38 = *(v44 - 8);
  v15 = *(v38 + 64);
  v16 = MEMORY[0x28223BE20](v44);
  v37 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  MEMORY[0x28223BE20](v18);
  v36 = v34 - v21;
  (*(v11 + 16))(v14, a1, v10);
  sub_224DAAEF8();
  v22 = sub_224DA96A8();
  v24 = v23;

  if (v24 >> 60 == 15)
  {
    sub_224C4DE90();
    swift_allocError();
    swift_willThrow();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    sub_224DAAD38();
    sub_224C41198(&qword_27D6F56D0, MEMORY[0x277CF9978]);
    sub_224DAAD18();
    if (v4)
    {
      (*(v11 + 8))(v14, v10);
      return sub_224AC1D9C(v22, v24);
    }

    else
    {
      v34[2] = sub_224DAC248();
      v34[1] = sub_224DAC258();
      sub_224DAC218();
      v26 = v36;
      sub_224DAC228();
      sub_224AC1D9C(v22, v24);
      v27 = *(v38 + 8);
      v27(v20, v44);
      (*(v11 + 8))(v14, v10);
      v28 = v26;
      v29 = v39;
      sub_224DAAD98();
      v30 = v37;
      sub_224B44A4C(v29, v37);
      (*(v40 + 8))(v29, v42);
      v31 = *(v43 + 104);
      sub_224DAC9B8();
      sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18]);
      sub_224DAC708();
      v32 = v44;
      v27(v30, v44);
      v27(v28, v32);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5740, &qword_224DB3608);
      return (*(*(v33 - 8) + 56))(v35, 1, 1, v33);
    }
  }
}

uint64_t sub_224C2170C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v8 = sub_224DA9908();
  v7[27] = v8;
  v9 = *(v8 - 8);
  v7[28] = v9;
  v10 = *(v9 + 64) + 15;
  v7[29] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0) - 8) + 64) + 15;
  v7[30] = swift_task_alloc();
  v12 = sub_224DAAE38();
  v7[31] = v12;
  v13 = *(v12 - 8);
  v7[32] = v13;
  v14 = *(v13 + 64) + 15;
  v7[33] = swift_task_alloc();
  v15 = type metadata accessor for RemoteActivityLaunchMessage(0);
  v7[34] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v17 = sub_224DAB088();
  v7[37] = v17;
  v18 = *(v17 - 8);
  v7[38] = v18;
  v19 = *(v18 + 64) + 15;
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[41] = v20;
  v21 = *(v20 - 8);
  v7[42] = v21;
  v22 = *(v21 + 64) + 15;
  v7[43] = swift_task_alloc();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[44] = v23;
  v24 = *(v23 - 8);
  v7[45] = v24;
  v25 = *(v24 + 64) + 15;
  v7[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C219D8, 0, 0);
}

uint64_t sub_224C219D8()
{
  v1 = v0[46];
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[41];
  v5 = v0[23];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAAC18();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v0[47] = 0;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_224C21AF4;
  v9 = v0[46];
  v10 = v0[44];

  return MEMORY[0x2822003E8](v0 + 21, 0, 0, v10);
}

uint64_t sub_224C21AF4()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C21BF0, 0, 0);
}

uint64_t sub_224C21BF0()
{
  v126 = v0;
  v1 = v0[21];
  v104 = v0 + 21;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v103 = (v0 + 8);
      v101 = v0 + 13;
      v102 = v0 + 2;
      v3 = v0[38];
      v4 = v0[26];
      v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v6 = v5;
      v111 = *(v3 + 72);
      v114 = *(v3 + 16);
      v7 = v0[47];
      v124 = v0;
      do
      {
        v115 = v7;
        v122 = v6;
        v123 = v2;
        v9 = v0[37];
        v10 = v0[34];
        v117 = v0[35];
        v11 = v0[24];
        v112 = v0[38] + 16;
        (v114)(v0[40]);
        v12 = v11[4];
        __swift_project_boxed_opaque_existential_1(v11, v11[3]);
        v13 = sub_224DAB078();
        v15 = v14;
        sub_224DAB038();
        v16 = *(v12 + 8);
        v17 = sub_224C41198(&qword_2813545A0, type metadata accessor for RemoteActivityLaunchMessage);
        v18 = sub_224C41198(qword_2813545A8, type metadata accessor for RemoteActivityLaunchMessage);
        sub_224DAB098();
        if (v115)
        {
          sub_224A78024(v13, v15);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v19 = sub_224DAB258();
          __swift_project_value_buffer(v19, qword_281365120);
          v20 = v115;
          v21 = sub_224DAB228();
          v22 = sub_224DAF288();

          v23 = os_log_type_enabled(v21, v22);
          v0 = v124;
          v24 = v124[40];
          v25 = v124[37];
          v26 = (v124[38] + 8);
          if (v23)
          {
            v27 = swift_slowAlloc();
            v118 = v24;
            v28 = swift_slowAlloc();
            v125[0] = v28;
            *v27 = 136446466;
            *(v27 + 4) = sub_224A33F74(0xD00000000000001BLL, 0x8000000224DCB290, v125);
            *(v27 + 12) = 2082;
            v104[1] = v115;
            v29 = v115;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
            v30 = sub_224DAEE28();
            v32 = sub_224A33F74(v30, v31, v125);

            *(v27 + 14) = v32;
            _os_log_impl(&dword_224A2F000, v21, v22, "Failed to decode message as %{public}s: %{public}s", v27, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v28, -1, -1);
            MEMORY[0x22AA5EED0](v27, -1, -1);

            (*v26)(v118, v25);
          }

          else
          {

            (*v26)(v24, v25);
          }
        }

        else
        {
          v105 = v17;
          v107 = v18;
          v33 = v0[40];
          v35 = v0[35];
          v34 = v0[36];
          v36 = v0[32];
          v119 = v0[31];
          v37 = v0[29];
          v109 = v0[30];
          v38 = v0[28];
          v116 = v0[27];
          v39 = v0[25];
          sub_224A78024(v13, v15);
          sub_224C4E3D4(v35, v34, type metadata accessor for RemoteActivityLaunchMessage);
          v40 = v39[5];
          __swift_project_boxed_opaque_existential_1(v39, v39[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v41 = *(v38 + 8);
          v41(v37, v116);
          if ((*(v36 + 48))(v109, 1, v119) == 1)
          {
            sub_224A3311C(v0[30], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v42 = v0[39];
            v43 = v0[40];
            v44 = v0[37];
            v45 = sub_224DAB258();
            __swift_project_value_buffer(v45, qword_281365120);
            v114(v42, v43, v44);
            v46 = sub_224DAB228();
            v47 = sub_224DAF288();
            v48 = os_log_type_enabled(v46, v47);
            v49 = v0[39];
            v50 = v0[40];
            v52 = v0[37];
            v51 = v0[38];
            v53 = v0[36];
            if (v48)
            {
              v106 = v0[37];
              v54 = v0[29];
              v113 = v0[36];
              v55 = v0[27];
              v120 = v41;
              v56 = swift_slowAlloc();
              v108 = swift_slowAlloc();
              v125[0] = v108;
              *v56 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0]);
              v57 = sub_224DAFD28();
              v110 = v50;
              v59 = v58;
              v120(v54, v55);
              v60 = *(v51 + 8);
              v60(v49, v106);
              v61 = sub_224A33F74(v57, v59, v125);

              *(v56 + 4) = v61;
              _os_log_impl(&dword_224A2F000, v46, v47, "No relationship found with id: %{public}s", v56, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v108);
              MEMORY[0x22AA5EED0](v108, -1, -1);
              MEMORY[0x22AA5EED0](v56, -1, -1);

              sub_224C4E374(v113, type metadata accessor for RemoteActivityLaunchMessage);
              v60(v110, v106);
            }

            else
            {

              v78 = *(v51 + 8);
              v78(v49, v52);
              sub_224C4E374(v53, type metadata accessor for RemoteActivityLaunchMessage);
              v78(v50, v52);
            }
          }

          else
          {
            v121 = v41;
            (*(v0[32] + 32))(v0[33], v0[30], v0[31]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v62 = sub_224DAB258();
            __swift_project_value_buffer(v62, qword_281365120);
            v63 = sub_224DAB228();
            v64 = sub_224DAF2A8();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v125[0] = v66;
              *v65 = 136446210;
              *(v65 + 4) = sub_224A33F74(0xD00000000000001BLL, 0x8000000224DCB290, v125);
              _os_log_impl(&dword_224A2F000, v63, v64, "Decoded valid message as %{public}s", v65, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v66);
              MEMORY[0x22AA5EED0](v66, -1, -1);
              MEMORY[0x22AA5EED0](v65, -1, -1);
            }

            sub_224A3796C(v0[26] + 152, v103, &qword_27D6F3F88, &unk_224DB53D0);
            if (v0[11])
            {
              v67 = v0[36];
              v68 = v124[34];
              v69 = v124[33];
              v70 = v124[29];
              v71 = v124[27];
              sub_224A3317C(v103, v101);
              sub_224A3311C(v103, &qword_27D6F3F88, &unk_224DB53D0);
              v72 = v124[16];
              v73 = v124[17];
              __swift_project_boxed_opaque_existential_1(v101, v72);
              v124[5] = v68;
              v0 = v124;
              v124[6] = v105;
              v124[7] = v107;
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v102);
              sub_224C4E30C(v67, boxed_opaque_existential_1, type metadata accessor for RemoteActivityLaunchMessage);
              sub_224DAADF8();
              v75 = sub_224DA9898();
              v77 = v76;
              v121(v70, v71);
              (*(v73 + 8))(v102, v75, v77, v72, v73);

              __swift_destroy_boxed_opaque_existential_1(v102);
              __swift_destroy_boxed_opaque_existential_1(v101);
            }

            else
            {
              sub_224A3311C(v103, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v79 = v0[40];
            v80 = v124[38];
            v81 = v124[37];
            v82 = v124[36];
            v83 = v124[33];
            v84 = v124[32];
            v85 = v124[31];
            v86 = v124[26];
            sub_224C2644C(v79, sub_224D741AC);
            (*(v84 + 8))(v83, v85);
            sub_224C4E374(v82, type metadata accessor for RemoteActivityLaunchMessage);
            (*(v80 + 8))(v79, v81);
            v0 = v124;
          }
        }

        v7 = 0;
        v8 = 0;
        v6 = v122 + v111;
        v2 = v123 - 1;
      }

      while (v123 != 1);
    }

    else
    {
      v8 = v0[47];
    }

    v0[47] = v8;
    v97 = *(MEMORY[0x277D85798] + 4);
    v98 = swift_task_alloc();
    v0[48] = v98;
    *v98 = v0;
    v98[1] = sub_224C21AF4;
    v99 = v0[46];
    v100 = v0[44];

    return MEMORY[0x2822003E8](v104, 0, 0, v100);
  }

  else
  {
    v87 = v0[43];
    v89 = v0[39];
    v88 = v0[40];
    v91 = v0[35];
    v90 = v0[36];
    v92 = v0[33];
    v94 = v0[29];
    v93 = v0[30];
    (*(v0[45] + 8))(v0[46], v0[44]);

    v95 = v0[1];

    return v95();
  }
}

uint64_t sub_224C22780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  v8 = sub_224DA9908();
  v7[29] = v8;
  v9 = *(v8 - 8);
  v7[30] = v9;
  v10 = *(v9 + 64) + 15;
  v7[31] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0) - 8) + 64) + 15;
  v7[32] = swift_task_alloc();
  v12 = sub_224DAAE38();
  v7[33] = v12;
  v13 = *(v12 - 8);
  v7[34] = v13;
  v14 = *(v13 + 64) + 15;
  v7[35] = swift_task_alloc();
  v15 = sub_224DAB088();
  v7[36] = v15;
  v16 = *(v15 - 8);
  v7[37] = v16;
  v17 = *(v16 + 64) + 15;
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[40] = v18;
  v19 = *(v18 - 8);
  v7[41] = v19;
  v20 = *(v19 + 64) + 15;
  v7[42] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[43] = v21;
  v22 = *(v21 - 8);
  v7[44] = v22;
  v23 = *(v22 + 64) + 15;
  v7[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C22A10, 0, 0);
}

uint64_t sub_224C22A10()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];
  v4 = v0[40];
  v5 = v0[25];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAAC18();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v0[46] = 0;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[47] = v8;
  *v8 = v0;
  v8[1] = sub_224C22B2C;
  v9 = v0[45];
  v10 = v0[43];

  return MEMORY[0x2822003E8](v0 + 23, 0, 0, v10);
}

uint64_t sub_224C22B2C()
{
  v1 = *(*v0 + 376);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C22C28, 0, 0);
}

uint64_t sub_224C22C28()
{
  v113 = v0;
  v1 = v0[23];
  v98 = v0 + 23;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v97 = (v0 + 8);
      v95 = v0 + 13;
      v96 = v0 + 2;
      v3 = v109[37];
      v4 = v109[28];
      v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v6 = v5;
      v107 = *(v3 + 72);
      v108 = *(v3 + 16);
      v7 = v109[46];
      do
      {
        v110 = v6;
        v111 = v2;
        v9 = v109[36];
        v10 = v109[26];
        v11 = v109[37] + 16;
        (v108)(v109[39]);
        v12 = v10[4];
        __swift_project_boxed_opaque_existential_1(v10, v10[3]);
        v13 = sub_224DAB078();
        v15 = v14;
        sub_224DAB038();
        v16 = *(v12 + 8);
        v17 = sub_224B3DCA0();
        v18 = sub_224B3DCF4();
        sub_224DAB098();
        if (v7)
        {
          sub_224A78024(v13, v15);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v19 = sub_224DAB258();
          __swift_project_value_buffer(v19, qword_281365120);
          v20 = v7;
          v21 = sub_224DAB228();
          v22 = sub_224DAF288();

          v23 = os_log_type_enabled(v21, v22);
          v24 = v109[39];
          v25 = v109[36];
          v26 = (v109[37] + 8);
          if (v23)
          {
            v27 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v112[0] = v28;
            *v27 = 136446466;
            *(v27 + 4) = sub_224A33F74(0xD000000000000010, 0x8000000224DCB2F0, v112);
            *(v27 + 12) = 2082;
            v98[1] = v7;
            v29 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
            v30 = sub_224DAEE28();
            v32 = sub_224A33F74(v30, v31, v112);

            *(v27 + 14) = v32;
            _os_log_impl(&dword_224A2F000, v21, v22, "Failed to decode message as %{public}s: %{public}s", v27, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v28, -1, -1);
            v2 = v111;
            MEMORY[0x22AA5EED0](v27, -1, -1);
          }

          else
          {
          }

          (*v26)(v24, v25);
        }

        else
        {
          v101 = v17;
          v100 = v18;
          v33 = v109[39];
          v34 = v109[34];
          v104 = v109[33];
          v36 = v109[31];
          v35 = v109[32];
          v37 = v109[29];
          v38 = v109[30];
          v39 = v109[27];
          sub_224A78024(v13, v15);
          v99 = v109[21];
          v106 = v109[22];
          v40 = v39[5];
          __swift_project_boxed_opaque_existential_1(v39, v39[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v41 = *(v38 + 8);
          v41(v36, v37);
          if ((*(v34 + 48))(v35, 1, v104) == 1)
          {
            sub_224A3311C(v109[32], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v42 = v109[38];
            v43 = v109[39];
            v44 = v109[36];
            v45 = sub_224DAB258();
            __swift_project_value_buffer(v45, qword_281365120);
            v108(v42, v43, v44);
            v46 = sub_224DAB228();
            v47 = sub_224DAF288();
            v48 = os_log_type_enabled(v46, v47);
            v50 = v109[38];
            v49 = v109[39];
            v51 = v109[36];
            v52 = (v109[37] + 8);
            if (v48)
            {
              v105 = v41;
              v53 = v109[31];
              v102 = v109[36];
              v54 = v109[29];
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v112[0] = v56;
              *v55 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0]);
              v57 = sub_224DAFD28();
              v103 = v49;
              v59 = v58;
              v105(v53, v54);
              v60 = *v52;
              (*v52)(v50, v102);
              v61 = sub_224A33F74(v57, v59, v112);

              *(v55 + 4) = v61;
              _os_log_impl(&dword_224A2F000, v46, v47, "No relationship found with id: %{public}s", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v56);
              MEMORY[0x22AA5EED0](v56, -1, -1);
              MEMORY[0x22AA5EED0](v55, -1, -1);

              v60(v103, v102);
            }

            else
            {

              v75 = *v52;
              (*v52)(v50, v51);
              v75(v49, v51);
            }
          }

          else
          {
            (*(v109[34] + 32))(v109[35], v109[32], v109[33]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v62 = sub_224DAB258();
            __swift_project_value_buffer(v62, qword_281365120);
            v63 = sub_224DAB228();
            v64 = sub_224DAF2A8();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              v112[0] = v66;
              *v65 = 136446210;
              *(v65 + 4) = sub_224A33F74(0xD000000000000010, 0x8000000224DCB2F0, v112);
              _os_log_impl(&dword_224A2F000, v63, v64, "Decoded valid message as %{public}s", v65, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v66);
              MEMORY[0x22AA5EED0](v66, -1, -1);
              MEMORY[0x22AA5EED0](v65, -1, -1);
            }

            sub_224A3796C(v109[28] + 152, v97, &qword_27D6F3F88, &unk_224DB53D0);
            if (v109[11])
            {
              v67 = v109[35];
              v68 = v109[31];
              v69 = v109[29];
              sub_224A3317C(v97, v95);
              sub_224A3311C(v97, &qword_27D6F3F88, &unk_224DB53D0);
              v70 = v109[16];
              v71 = v109[17];
              __swift_project_boxed_opaque_existential_1(v95, v70);
              v109[5] = &type metadata for DiscoveryMessage;
              v109[6] = v101;
              v109[7] = v100;
              v109[2] = v99;
              v109[3] = v106;

              sub_224DAADF8();
              v72 = sub_224DA9898();
              v74 = v73;
              v41(v68, v69);
              (*(v71 + 8))(v96, v72, v74, v70, v71);

              __swift_destroy_boxed_opaque_existential_1(v96);
              __swift_destroy_boxed_opaque_existential_1(v95);
            }

            else
            {
              sub_224A3311C(v97, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v76 = v109[39];
            v77 = v109[36];
            v78 = v109[37];
            v80 = v109[34];
            v79 = v109[35];
            v81 = v109[33];
            v82 = v109[28];
            sub_224C2644C(v76, sub_224D741DC);

            (*(v80 + 8))(v79, v81);
            (*(v78 + 8))(v76, v77);
          }

          v2 = v111;
        }

        v7 = 0;
        v8 = 0;
        v6 = v110 + v107;
        --v2;
      }

      while (v2);
    }

    else
    {
      v8 = v109[46];
    }

    v109[46] = v8;
    v91 = *(MEMORY[0x277D85798] + 4);
    v92 = swift_task_alloc();
    v109[47] = v92;
    *v92 = v109;
    v92[1] = sub_224C22B2C;
    v93 = v109[45];
    v94 = v109[43];

    return MEMORY[0x2822003E8](v98, 0, 0, v94);
  }

  else
  {
    v83 = v0[42];
    v85 = v0[38];
    v84 = v0[39];
    v86 = v0[35];
    v88 = v0[31];
    v87 = v0[32];
    (*(v0[44] + 8))(v0[45], v0[43]);

    v89 = v0[1];

    return v89();
  }
}

uint64_t sub_224C23694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = sub_224DA9908();
  v7[28] = v8;
  v9 = *(v8 - 8);
  v7[29] = v9;
  v10 = *(v9 + 64) + 15;
  v7[30] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v12 = sub_224DAAE38();
  v7[32] = v12;
  v13 = *(v12 - 8);
  v7[33] = v13;
  v14 = *(v13 + 64) + 15;
  v7[34] = swift_task_alloc();
  v15 = sub_224DAB088();
  v7[35] = v15;
  v16 = *(v15 - 8);
  v7[36] = v16;
  v17 = *(v16 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[39] = v18;
  v19 = *(v18 - 8);
  v7[40] = v19;
  v20 = *(v19 + 64) + 15;
  v7[41] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[42] = v21;
  v22 = *(v21 - 8);
  v7[43] = v22;
  v23 = *(v22 + 64) + 15;
  v7[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C23924, 0, 0);
}

uint64_t sub_224C23924()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = v0[24];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAAC18();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v0[45] = 0;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = sub_224C23A40;
  v9 = v0[44];
  v10 = v0[42];

  return MEMORY[0x2822003E8](v0 + 21, 0, 0, v10);
}

uint64_t sub_224C23A40()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C23B3C, 0, 0);
}

uint64_t sub_224C23B3C()
{
  v113 = v0;
  v1 = v0[21];
  v108 = v0 + 21;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v98 = (v0 + 8);
      v96 = v0 + 13;
      v97 = v0 + 2;
      v3 = v109[36];
      v4 = v109[27];
      v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v6 = v5;
      v106 = *(v3 + 72);
      v107 = *(v3 + 16);
      v7 = v109[45];
      while (1)
      {
        v110 = v6;
        v111 = v2;
        v17 = v109[35];
        v18 = v109[25];
        v19 = v109[36] + 16;
        (v107)(v109[38]);
        v20 = v18[4];
        __swift_project_boxed_opaque_existential_1(v18, v18[3]);
        v21 = sub_224DAB078();
        v23 = v22;
        sub_224DAB038();
        v24 = *(v20 + 8);
        v25 = sub_224B3D9B8();
        v26 = sub_224B3DA0C();
        sub_224DAB098();
        if (v7)
        {
          sub_224A78024(v21, v23);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v27 = sub_224DAB258();
          __swift_project_value_buffer(v27, qword_281365120);
          v28 = v7;
          v29 = sub_224DAB228();
          v30 = sub_224DAF288();

          v31 = os_log_type_enabled(v29, v30);
          v32 = v109[38];
          v33 = v109[35];
          v34 = (v109[36] + 8);
          if (!v31)
          {

            (*v34)(v32, v33);
            v15 = v110;
            v14 = v111;
            goto LABEL_6;
          }

          v8 = swift_slowAlloc();
          v9 = swift_slowAlloc();
          v112[0] = v9;
          *v8 = 136446466;
          *(v8 + 4) = sub_224A33F74(0xD000000000000010, 0x8000000224DCB340, v112);
          *(v8 + 12) = 2082;
          v108[2] = v7;
          v10 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
          v11 = sub_224DAEE28();
          v13 = sub_224A33F74(v11, v12, v112);

          *(v8 + 14) = v13;
          _os_log_impl(&dword_224A2F000, v29, v30, "Failed to decode message as %{public}s: %{public}s", v8, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v9, -1, -1);
          v14 = v111;
          MEMORY[0x22AA5EED0](v8, -1, -1);

          (*v34)(v32, v33);
        }

        else
        {
          v100 = v25;
          v99 = v26;
          v35 = v109[38];
          v36 = v109[33];
          v103 = v109[32];
          v38 = v109[30];
          v37 = v109[31];
          v39 = v109[28];
          v40 = v109[29];
          v41 = v109[26];
          sub_224A78024(v21, v23);
          v105 = v109[22];
          v42 = v41[5];
          __swift_project_boxed_opaque_existential_1(v41, v41[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v102 = *(v40 + 8);
          v102(v38, v39);
          if ((*(v36 + 48))(v37, 1, v103) == 1)
          {
            sub_224A3311C(v109[31], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v43 = v109[37];
            v44 = v109[38];
            v45 = v109[35];
            v46 = sub_224DAB258();
            __swift_project_value_buffer(v46, qword_281365120);
            v107(v43, v44, v45);
            v47 = sub_224DAB228();
            v48 = sub_224DAF288();
            v49 = os_log_type_enabled(v47, v48);
            v51 = v109[37];
            v50 = v109[38];
            v52 = v109[35];
            v53 = (v109[36] + 8);
            if (v49)
            {
              v101 = v109[35];
              v54 = v109[30];
              v55 = v109[28];
              v56 = swift_slowAlloc();
              v57 = swift_slowAlloc();
              v112[0] = v57;
              *v56 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0]);
              v58 = sub_224DAFD28();
              v104 = v50;
              v60 = v59;
              v102(v54, v55);
              v61 = *v53;
              (*v53)(v51, v101);
              v62 = sub_224A33F74(v58, v60, v112);

              *(v56 + 4) = v62;
              _os_log_impl(&dword_224A2F000, v47, v48, "No relationship found with id: %{public}s", v56, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v57);
              MEMORY[0x22AA5EED0](v57, -1, -1);
              MEMORY[0x22AA5EED0](v56, -1, -1);

              v61(v104, v101);
            }

            else
            {

              v76 = *v53;
              (*v53)(v51, v52);
              v76(v50, v52);
            }
          }

          else
          {
            (*(v109[33] + 32))(v109[34], v109[31], v109[32]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v63 = sub_224DAB258();
            __swift_project_value_buffer(v63, qword_281365120);
            v64 = sub_224DAB228();
            v65 = sub_224DAF2A8();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v112[0] = v67;
              *v66 = 136446210;
              *(v66 + 4) = sub_224A33F74(0xD000000000000010, 0x8000000224DCB340, v112);
              _os_log_impl(&dword_224A2F000, v64, v65, "Decoded valid message as %{public}s", v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v67);
              MEMORY[0x22AA5EED0](v67, -1, -1);
              MEMORY[0x22AA5EED0](v66, -1, -1);
            }

            sub_224A3796C(v109[27] + 152, v98, &qword_27D6F3F88, &unk_224DB53D0);
            if (v109[11])
            {
              v68 = v109[34];
              v69 = v109[30];
              v70 = v109[28];
              sub_224A3317C(v98, v96);
              sub_224A3311C(v98, &qword_27D6F3F88, &unk_224DB53D0);
              v71 = v109[16];
              v72 = v109[17];
              __swift_project_boxed_opaque_existential_1(v96, v71);
              v109[5] = &type metadata for StalenessMessage;
              v109[6] = v100;
              v109[7] = v99;
              v109[2] = v105;

              sub_224DAADF8();
              v73 = sub_224DA9898();
              v75 = v74;
              v102(v69, v70);
              (*(v72 + 8))(v97, v73, v75, v71, v72);

              __swift_destroy_boxed_opaque_existential_1(v97);
              __swift_destroy_boxed_opaque_existential_1(v96);
            }

            else
            {
              sub_224A3311C(v98, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v77 = v109[38];
            v78 = v109[35];
            v79 = v109[36];
            v81 = v109[33];
            v80 = v109[34];
            v82 = v109[32];
            v83 = v109[27];
            sub_224C2644C(v77, sub_224D74954);

            (*(v81 + 8))(v80, v82);
            (*(v79 + 8))(v77, v78);
          }

          v14 = v111;
        }

        v15 = v110;
LABEL_6:
        v7 = 0;
        v16 = 0;
        v6 = v15 + v106;
        v2 = v14 - 1;
        if (!v2)
        {
          goto LABEL_31;
        }
      }
    }

    v16 = v109[45];
LABEL_31:

    v109[45] = v16;
    v92 = *(MEMORY[0x277D85798] + 4);
    v93 = swift_task_alloc();
    v109[46] = v93;
    *v93 = v109;
    v93[1] = sub_224C23A40;
    v94 = v109[44];
    v95 = v109[42];

    return MEMORY[0x2822003E8](v108, 0, 0, v95);
  }

  else
  {
    v84 = v0[41];
    v86 = v0[37];
    v85 = v0[38];
    v87 = v0[34];
    v89 = v0[30];
    v88 = v0[31];
    (*(v0[43] + 8))(v0[44], v0[42]);

    v90 = v0[1];

    return v90();
  }
}

uint64_t sub_224C245AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = sub_224DA9908();
  v7[28] = v8;
  v9 = *(v8 - 8);
  v7[29] = v9;
  v10 = *(v9 + 64) + 15;
  v7[30] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v12 = sub_224DAAE38();
  v7[32] = v12;
  v13 = *(v12 - 8);
  v7[33] = v13;
  v14 = *(v13 + 64) + 15;
  v7[34] = swift_task_alloc();
  v15 = sub_224DAB088();
  v7[35] = v15;
  v16 = *(v15 - 8);
  v7[36] = v16;
  v17 = *(v16 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[39] = v18;
  v19 = *(v18 - 8);
  v7[40] = v19;
  v20 = *(v19 + 64) + 15;
  v7[41] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[42] = v21;
  v22 = *(v21 - 8);
  v7[43] = v22;
  v23 = *(v22 + 64) + 15;
  v7[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C2483C, 0, 0);
}

uint64_t sub_224C2483C()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = v0[24];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAAC18();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v0[45] = 0;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = sub_224C24958;
  v9 = v0[44];
  v10 = v0[42];

  return MEMORY[0x2822003E8](v0 + 21, 0, 0, v10);
}

uint64_t sub_224C24958()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C24A54, 0, 0);
}

uint64_t sub_224C24A54()
{
  v113 = v0;
  v1 = v0[21];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v96 = (v0 + 8);
      v94 = v0 + 13;
      v95 = v0 + 2;
      v3 = v0[36];
      v4 = v0[27];
      v104 = type metadata accessor for ControlInteractionMessage(0);
      v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v6 = v5;
      v103 = *(v3 + 72);
      v109 = *(v3 + 16);
      v7 = v0[45];
      do
      {
        v110 = v6;
        v111 = v2;
        v9 = v0[35];
        v10 = v0[25];
        v105 = v0[36] + 16;
        (v109)(v0[38]);
        v11 = v10[4];
        __swift_project_boxed_opaque_existential_1(v10, v10[3]);
        v12 = sub_224DAB078();
        v14 = v13;
        sub_224DAB038();
        v15 = *(v11 + 8);
        v16 = sub_224C41198(&qword_281355990, type metadata accessor for ControlInteractionMessage);
        v17 = sub_224C41198(qword_281355998, type metadata accessor for ControlInteractionMessage);
        sub_224DAB098();
        if (v7)
        {
          sub_224A78024(v12, v14);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v18 = sub_224DAB258();
          __swift_project_value_buffer(v18, qword_281365120);
          v19 = v7;
          v20 = sub_224DAB228();
          v21 = sub_224DAF288();

          v22 = os_log_type_enabled(v20, v21);
          v23 = v0[38];
          v24 = v0[35];
          v25 = (v0[36] + 8);
          if (v22)
          {
            v26 = swift_slowAlloc();
            v106 = v23;
            v27 = swift_slowAlloc();
            v112[0] = v27;
            *v26 = 136446466;
            *(v26 + 4) = sub_224A33F74(0xD000000000000019, 0x8000000224DCB250, v112);
            *(v26 + 12) = 2082;
            v0[23] = v7;
            v28 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
            v29 = sub_224DAEE28();
            v31 = sub_224A33F74(v29, v30, v112);

            *(v26 + 14) = v31;
            _os_log_impl(&dword_224A2F000, v20, v21, "Failed to decode message as %{public}s: %{public}s", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v27, -1, -1);
            MEMORY[0x22AA5EED0](v26, -1, -1);

            (*v25)(v106, v24);
          }

          else
          {

            (*v25)(v23, v24);
          }
        }

        else
        {
          v97 = v17;
          v98 = v16;
          v32 = v0[38];
          v33 = v0[33];
          v100 = v0[32];
          v35 = v0[30];
          v34 = v0[31];
          v36 = v0[28];
          v37 = v0[29];
          v38 = v0[26];
          sub_224A78024(v12, v14);
          v102 = v0[22];
          v39 = v38[5];
          __swift_project_boxed_opaque_existential_1(v38, v38[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v40 = *(v37 + 8);
          v40(v35, v36);
          if ((*(v33 + 48))(v34, 1, v100) == 1)
          {
            sub_224A3311C(v0[31], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v41 = v0[37];
            v42 = v0[38];
            v43 = v0[35];
            v44 = sub_224DAB258();
            __swift_project_value_buffer(v44, qword_281365120);
            v109(v41, v42, v43);
            v45 = sub_224DAB228();
            v46 = sub_224DAF288();
            v47 = os_log_type_enabled(v45, v46);
            v48 = v0[37];
            v49 = v0[38];
            v50 = v0[35];
            v51 = (v0[36] + 8);
            if (v47)
            {
              v52 = v0[30];
              v99 = v0[35];
              v53 = v0[28];
              v107 = v0[38];
              v54 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v112[0] = v101;
              *v54 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0]);
              v55 = sub_224DAFD28();
              v56 = v40;
              v58 = v57;
              v56(v52, v53);
              v59 = *v51;
              (*v51)(v48, v99);
              v60 = sub_224A33F74(v55, v58, v112);

              *(v54 + 4) = v60;
              _os_log_impl(&dword_224A2F000, v45, v46, "No relationship found with id: %{public}s", v54, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v101);
              MEMORY[0x22AA5EED0](v101, -1, -1);
              MEMORY[0x22AA5EED0](v54, -1, -1);

              v59(v107, v99);
            }

            else
            {

              v74 = *v51;
              (*v51)(v48, v50);
              v74(v49, v50);
            }
          }

          else
          {
            v108 = v40;
            (*(v0[33] + 32))(v0[34], v0[31], v0[32]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v61 = sub_224DAB258();
            __swift_project_value_buffer(v61, qword_281365120);
            v62 = sub_224DAB228();
            v63 = sub_224DAF2A8();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v112[0] = v65;
              *v64 = 136446210;
              *(v64 + 4) = sub_224A33F74(0xD000000000000019, 0x8000000224DCB250, v112);
              _os_log_impl(&dword_224A2F000, v62, v63, "Decoded valid message as %{public}s", v64, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v65);
              MEMORY[0x22AA5EED0](v65, -1, -1);
              MEMORY[0x22AA5EED0](v64, -1, -1);
            }

            sub_224A3796C(v0[27] + 152, v96, &qword_27D6F3F88, &unk_224DB53D0);
            if (v0[11])
            {
              v66 = v0[34];
              v67 = v0[30];
              v68 = v0[28];
              sub_224A3317C(v96, v94);
              sub_224A3311C(v96, &qword_27D6F3F88, &unk_224DB53D0);
              v69 = v0[16];
              v70 = v0[17];
              __swift_project_boxed_opaque_existential_1(v94, v69);
              v0[5] = v104;
              v0[6] = v98;
              v0[7] = v97;
              v0[2] = v102;

              sub_224DAADF8();
              v71 = sub_224DA9898();
              v73 = v72;
              v108(v67, v68);
              (*(v70 + 8))(v95, v71, v73, v69, v70);

              __swift_destroy_boxed_opaque_existential_1(v95);
              __swift_destroy_boxed_opaque_existential_1(v94);
            }

            else
            {
              sub_224A3311C(v96, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v75 = v0[38];
            v76 = v0[35];
            v77 = v0[36];
            v79 = v0[33];
            v78 = v0[34];
            v80 = v0[32];
            v81 = v0[27];
            sub_224C2644C(v75, sub_224D74984);

            (*(v79 + 8))(v78, v80);
            (*(v77 + 8))(v75, v76);
          }
        }

        v7 = 0;
        v8 = 0;
        v6 = v110 + v103;
        v2 = v111 - 1;
      }

      while (v111 != 1);
    }

    else
    {
      v8 = v0[45];
    }

    v0[45] = v8;
    v90 = *(MEMORY[0x277D85798] + 4);
    v91 = swift_task_alloc();
    v0[46] = v91;
    *v91 = v0;
    v91[1] = sub_224C24958;
    v92 = v0[44];
    v93 = v0[42];

    return MEMORY[0x2822003E8](v0 + 21, 0, 0, v93);
  }

  else
  {
    v82 = v0[41];
    v84 = v0[37];
    v83 = v0[38];
    v85 = v0[34];
    v87 = v0[30];
    v86 = v0[31];
    (*(v0[43] + 8))(v0[44], v0[42]);

    v88 = v0[1];

    return v88();
  }
}

uint64_t sub_224C254FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[26] = a6;
  v7[27] = a7;
  v7[24] = a4;
  v7[25] = a5;
  v8 = sub_224DA9908();
  v7[28] = v8;
  v9 = *(v8 - 8);
  v7[29] = v9;
  v10 = *(v9 + 64) + 15;
  v7[30] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v12 = sub_224DAAE38();
  v7[32] = v12;
  v13 = *(v12 - 8);
  v7[33] = v13;
  v14 = *(v13 + 64) + 15;
  v7[34] = swift_task_alloc();
  v15 = sub_224DAB088();
  v7[35] = v15;
  v16 = *(v15 - 8);
  v7[36] = v16;
  v17 = *(v16 + 64) + 15;
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5610, &qword_224DBBC48);
  v7[39] = v18;
  v19 = *(v18 - 8);
  v7[40] = v19;
  v20 = *(v19 + 64) + 15;
  v7[41] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5618, &qword_224DBBC50);
  v7[42] = v21;
  v22 = *(v21 - 8);
  v7[43] = v22;
  v23 = *(v22 + 64) + 15;
  v7[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224C2578C, 0, 0);
}

uint64_t sub_224C2578C()
{
  v1 = v0[44];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[39];
  v5 = v0[24];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_224DAAC18();
  sub_224DAF158();
  (*(v3 + 8))(v2, v4);
  v0[45] = 0;
  v7 = *(MEMORY[0x277D85798] + 4);
  v8 = swift_task_alloc();
  v0[46] = v8;
  *v8 = v0;
  v8[1] = sub_224C258A8;
  v9 = v0[44];
  v10 = v0[42];

  return MEMORY[0x2822003E8](v0 + 21, 0, 0, v10);
}

uint64_t sub_224C258A8()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_224C259A4, 0, 0);
}

uint64_t sub_224C259A4()
{
  v113 = v0;
  v1 = v0[21];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v96 = (v0 + 8);
      v94 = v0 + 13;
      v95 = v0 + 2;
      v3 = v0[36];
      v4 = v0[27];
      v104 = type metadata accessor for InteractionMessage();
      v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      swift_beginAccess();
      v6 = v5;
      v103 = *(v3 + 72);
      v109 = *(v3 + 16);
      v7 = v0[45];
      do
      {
        v110 = v6;
        v111 = v2;
        v9 = v0[35];
        v10 = v0[25];
        v105 = v0[36] + 16;
        (v109)(v0[38]);
        v11 = v10[4];
        __swift_project_boxed_opaque_existential_1(v10, v10[3]);
        v12 = sub_224DAB078();
        v14 = v13;
        sub_224DAB038();
        v15 = *(v11 + 8);
        v16 = sub_224C41198(&unk_281359D90, type metadata accessor for InteractionMessage);
        v17 = sub_224C41198(qword_281359DA0, type metadata accessor for InteractionMessage);
        sub_224DAB098();
        if (v7)
        {
          sub_224A78024(v12, v14);
          if (qword_2813516C8 != -1)
          {
            swift_once();
          }

          v18 = sub_224DAB258();
          __swift_project_value_buffer(v18, qword_281365120);
          v19 = v7;
          v20 = sub_224DAB228();
          v21 = sub_224DAF288();

          v22 = os_log_type_enabled(v20, v21);
          v23 = v0[38];
          v24 = v0[35];
          v25 = (v0[36] + 8);
          if (v22)
          {
            v26 = swift_slowAlloc();
            v106 = v23;
            v27 = swift_slowAlloc();
            v112[0] = v27;
            *v26 = 136446466;
            *(v26 + 4) = sub_224A33F74(0xD000000000000012, 0x8000000224DCB270, v112);
            *(v26 + 12) = 2082;
            v0[23] = v7;
            v28 = v7;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
            v29 = sub_224DAEE28();
            v31 = sub_224A33F74(v29, v30, v112);

            *(v26 + 14) = v31;
            _os_log_impl(&dword_224A2F000, v20, v21, "Failed to decode message as %{public}s: %{public}s", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AA5EED0](v27, -1, -1);
            MEMORY[0x22AA5EED0](v26, -1, -1);

            (*v25)(v106, v24);
          }

          else
          {

            (*v25)(v23, v24);
          }
        }

        else
        {
          v97 = v17;
          v98 = v16;
          v32 = v0[38];
          v33 = v0[33];
          v100 = v0[32];
          v35 = v0[30];
          v34 = v0[31];
          v36 = v0[28];
          v37 = v0[29];
          v38 = v0[26];
          sub_224A78024(v12, v14);
          v102 = v0[22];
          v39 = v38[5];
          __swift_project_boxed_opaque_existential_1(v38, v38[3]);
          sub_224DAB048();
          sub_224DAAC98();
          v40 = *(v37 + 8);
          v40(v35, v36);
          if ((*(v33 + 48))(v34, 1, v100) == 1)
          {
            sub_224A3311C(v0[31], &qword_27D6F3320, &unk_224DBD6F0);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v41 = v0[37];
            v42 = v0[38];
            v43 = v0[35];
            v44 = sub_224DAB258();
            __swift_project_value_buffer(v44, qword_281365120);
            v109(v41, v42, v43);
            v45 = sub_224DAB228();
            v46 = sub_224DAF288();
            v47 = os_log_type_enabled(v45, v46);
            v48 = v0[37];
            v49 = v0[38];
            v50 = v0[35];
            v51 = (v0[36] + 8);
            if (v47)
            {
              v52 = v0[30];
              v99 = v0[35];
              v53 = v0[28];
              v107 = v0[38];
              v54 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v112[0] = v101;
              *v54 = 136446210;
              sub_224DAB048();
              sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0]);
              v55 = sub_224DAFD28();
              v56 = v40;
              v58 = v57;
              v56(v52, v53);
              v59 = *v51;
              (*v51)(v48, v99);
              v60 = sub_224A33F74(v55, v58, v112);

              *(v54 + 4) = v60;
              _os_log_impl(&dword_224A2F000, v45, v46, "No relationship found with id: %{public}s", v54, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v101);
              MEMORY[0x22AA5EED0](v101, -1, -1);
              MEMORY[0x22AA5EED0](v54, -1, -1);

              v59(v107, v99);
            }

            else
            {

              v74 = *v51;
              (*v51)(v48, v50);
              v74(v49, v50);
            }
          }

          else
          {
            v108 = v40;
            (*(v0[33] + 32))(v0[34], v0[31], v0[32]);
            if (qword_2813516C8 != -1)
            {
              swift_once();
            }

            v61 = sub_224DAB258();
            __swift_project_value_buffer(v61, qword_281365120);
            v62 = sub_224DAB228();
            v63 = sub_224DAF2A8();
            if (os_log_type_enabled(v62, v63))
            {
              v64 = swift_slowAlloc();
              v65 = swift_slowAlloc();
              v112[0] = v65;
              *v64 = 136446210;
              *(v64 + 4) = sub_224A33F74(0xD000000000000012, 0x8000000224DCB270, v112);
              _os_log_impl(&dword_224A2F000, v62, v63, "Decoded valid message as %{public}s", v64, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v65);
              MEMORY[0x22AA5EED0](v65, -1, -1);
              MEMORY[0x22AA5EED0](v64, -1, -1);
            }

            sub_224A3796C(v0[27] + 152, v96, &qword_27D6F3F88, &unk_224DB53D0);
            if (v0[11])
            {
              v66 = v0[34];
              v67 = v0[30];
              v68 = v0[28];
              sub_224A3317C(v96, v94);
              sub_224A3311C(v96, &qword_27D6F3F88, &unk_224DB53D0);
              v69 = v0[16];
              v70 = v0[17];
              __swift_project_boxed_opaque_existential_1(v94, v69);
              v0[5] = v104;
              v0[6] = v98;
              v0[7] = v97;
              v0[2] = v102;

              sub_224DAADF8();
              v71 = sub_224DA9898();
              v73 = v72;
              v108(v67, v68);
              (*(v70 + 8))(v95, v71, v73, v69, v70);

              __swift_destroy_boxed_opaque_existential_1(v95);
              __swift_destroy_boxed_opaque_existential_1(v94);
            }

            else
            {
              sub_224A3311C(v96, &qword_27D6F3F88, &unk_224DB53D0);
            }

            v75 = v0[38];
            v76 = v0[35];
            v77 = v0[36];
            v79 = v0[33];
            v78 = v0[34];
            v80 = v0[32];
            v81 = v0[27];
            sub_224C2644C(v75, sub_224D749B4);

            (*(v79 + 8))(v78, v80);
            (*(v77 + 8))(v75, v76);
          }
        }

        v7 = 0;
        v8 = 0;
        v6 = v110 + v103;
        v2 = v111 - 1;
      }

      while (v111 != 1);
    }

    else
    {
      v8 = v0[45];
    }

    v0[45] = v8;
    v90 = *(MEMORY[0x277D85798] + 4);
    v91 = swift_task_alloc();
    v0[46] = v91;
    *v91 = v0;
    v91[1] = sub_224C258A8;
    v92 = v0[44];
    v93 = v0[42];

    return MEMORY[0x2822003E8](v0 + 21, 0, 0, v93);
  }

  else
  {
    v82 = v0[41];
    v84 = v0[37];
    v83 = v0[38];
    v85 = v0[34];
    v87 = v0[30];
    v86 = v0[31];
    (*(v0[43] + 8))(v0[44], v0[42]);

    v88 = v0[1];

    return v88();
  }
}

void sub_224C2644C(uint64_t *a1, void (*a2)(uint64_t *, uint64_t, char *, char *))
{
  v93 = a2;
  v3 = sub_224DAB088();
  v98 = *(v3 - 8);
  v4 = *(v98 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v92 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v84 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v94 = &v84 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v95 = &v84 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v84 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v84 - v17;
  v19 = sub_224DA9908();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v84 - v26;
  v99 = a1;
  v28._countAndFlagsBits = sub_224DAB028();
  EventReplicatorMessageType.init(rawValue:)(v28);
  v29 = 1;
  if (v100 - 1 >= 2 && v100 != 4)
  {
    if (v100 == 6)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v30 = sub_224DAB258();
      __swift_project_value_buffer(v30, qword_281365120);
      v31 = v98;
      (*(v98 + 16))(v18, v99, v3);
      v32 = sub_224DAB228();
      v33 = sub_224DAF288();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = v31;
        v36 = swift_slowAlloc();
        v100 = v36;
        *v34 = 136446210;
        v37 = sub_224DAB028();
        v39 = v38;
        (*(v35 + 8))(v18, v3);
        v40 = sub_224A33F74(v37, v39, &v100);

        *(v34 + 4) = v40;
        _os_log_impl(&dword_224A2F000, v32, v33, "Cannot send response: unknown message type %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v41 = v36;
LABEL_14:
        MEMORY[0x22AA5EED0](v41, -1, -1);
        MEMORY[0x22AA5EED0](v34, -1, -1);

        return;
      }

      (*(v31 + 8))(v18, v3);
      return;
    }

    v29 = 0;
  }

  v90 = v9;
  v96 = v3;
  v42 = v97[13];
  __swift_project_boxed_opaque_existential_1(v97 + 8, v97[11]);
  sub_224DAB048();
  sub_224DAAC98();
  v43 = *(v20 + 8);
  v43(v23, v19);
  v44 = sub_224DAAE38();
  v45 = (*(*(v44 - 8) + 48))(v27, 1, v44);
  sub_224A3311C(v27, &qword_27D6F3320, &unk_224DBD6F0);
  if (v45 == 1)
  {
    v91 = v43;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v46 = sub_224DAB258();
    __swift_project_value_buffer(v46, qword_281365120);
    v47 = v98;
    v48 = v96;
    (*(v98 + 16))(v16, v99, v96);
    v32 = sub_224DAB228();
    v49 = sub_224DAF288();
    if (os_log_type_enabled(v32, v49))
    {
      v34 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v100 = v99;
      *v34 = 136446210;
      sub_224DAB048();
      sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0]);
      v50 = sub_224DAFD28();
      v52 = v51;
      v91(v23, v19);
      (*(v47 + 8))(v16, v96);
      v53 = sub_224A33F74(v50, v52, &v100);

      *(v34 + 4) = v53;
      _os_log_impl(&dword_224A2F000, v32, v49, "Cannot send response: no relationship exists with id %{public}s", v34, 0xCu);
      v54 = v99;
      __swift_destroy_boxed_opaque_existential_1(v99);
      v41 = v54;
      goto LABEL_14;
    }

    (*(v47 + 8))(v16, v48);
  }

  else if (v29)
  {
    v91 = v43;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v55 = sub_224DAB258();
    v56 = __swift_project_value_buffer(v55, qword_281365120);
    v58 = v98;
    v57 = v99;
    v59 = *(v98 + 16);
    v60 = v96;
    v59(v95, v99, v96);
    v61 = v94;
    v59(v94, v57, v60);
    v89 = v56;
    v62 = sub_224DAB228();
    v63 = sub_224DAF288();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v85 = v64;
      v88 = swift_slowAlloc();
      v100 = v88;
      *v64 = 136446466;
      v87 = v63;
      v65 = v95;
      sub_224DAB058();
      sub_224C41198(&qword_281351A00, MEMORY[0x277CC95F0]);
      v86 = v62;
      v66 = sub_224DAFD28();
      v68 = v67;
      v91(v23, v19);
      v69 = *(v98 + 8);
      v69(v65, v60);
      v70 = sub_224A33F74(v66, v68, &v100);

      v71 = v85;
      *(v85 + 1) = v70;
      *(v71 + 6) = 2082;
      v72 = v94;
      sub_224DAB048();
      v73 = sub_224DAFD28();
      v75 = v74;
      v76 = v19;
      v77 = v69;
      v91(v23, v76);
      v69(v72, v60);
      v58 = v98;
      v78 = sub_224A33F74(v73, v75, &v100);

      *(v71 + 14) = v78;
      v79 = v86;
      _os_log_impl(&dword_224A2F000, v86, v87, "Sending ack for %{public}s to device %{public}s", v71, 0x16u);
      v80 = v88;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v80, -1, -1);
      MEMORY[0x22AA5EED0](v71, -1, -1);
    }

    else
    {

      v77 = *(v58 + 8);
      v77(v61, v60);
      v77(v95, v60);
    }

    v81 = v92;
    v82 = v97;
    sub_224C26F14(v99, v93);
    (*(v58 + 32))(v90, v81, v96);
    v83 = v82[7];
    __swift_project_boxed_opaque_existential_1(v82 + 3, v82[6]);
    sub_224DAAC38();
    v77(v90, v96);
  }
}

uint64_t sub_224C26F14(uint64_t a1, void (*a2)(uint64_t *, uint64_t, char *, char *))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v13 - v5;
  v7 = sub_224DA9908();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[3] = &type metadata for EventAckMessage;
  v13[4] = sub_224B6B5E0();
  v13[5] = sub_224B6B634();
  sub_224DAB048();
  sub_224DAB058();
  (*(v8 + 56))(v6, 0, 1, v7);
  a2(v13, 5, v11, v6);
  sub_224A3311C(v6, &unk_27D6F5630, &unk_224DB34C0);
  (*(v8 + 8))(v11, v7);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_224C270E4(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x90);
  swift_beginAccess();
  v4 = *(a1 + v3);
  v5 = *(a1 + *((*v2 & *a1) + 0x98));
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = sub_224A869E4(*(v6 + 16), 0);
  v9 = sub_224B2F0C4(&v16, (v8 + 32), v7, v6);

  sub_224A3B7E4();
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x277D84F90];
  }

  v16 = MEMORY[0x277D84F90];
  if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
    goto LABEL_11;
  }

  for (i = *(v8 + 16); ; i = sub_224DAF838())
  {
    v11 = *(v4 + 16);
    v12 = __OFADD__(i, v11);
    v13 = i + v11;
    if (!v12)
    {
      break;
    }

    __break(1u);
LABEL_11:
    ;
  }

  sub_224C40FD0(v13);

  sub_224B42678(v14);
  sub_224B42660(v8);

  return v16;
}

uint64_t sub_224C2728C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v198 = a2;
  v194 = sub_224DAC378();
  v172 = *(v194 - 8);
  v5 = *(v172 + 64);
  MEMORY[0x28223BE20](v194);
  v7 = (&v172 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v177 = &v172 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5900, &qword_224DBBDD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v172 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v172 - v16;
  v185 = sub_224DAA428();
  v18 = *(v185 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v185);
  v184 = &v172 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v199 = *(v201 - 8);
  v21 = v199[8];
  v22 = MEMORY[0x28223BE20](v201);
  v24 = &v172 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v203 = &v172 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5908, &qword_224DBBDD8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v187 = (&v172 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v186 = &v172 - v30;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5910, qword_224DC00F0);
  v31 = *(v204 - 8);
  v32 = *(v31 + 8);
  v33 = MEMORY[0x28223BE20](v204 - 8);
  v35 = (&v172 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v200 = &v172 - v36;
  v196 = sub_224DAB258();
  v195 = *(v196 - 8);
  v37 = *(v195 + 64);
  v38 = MEMORY[0x28223BE20](a1);
  v39 = MEMORY[0x28223BE20](v38);
  v41 = &v172 - v40;
  v42 = *(v39 + 24);
  v173 = v7;
  v193 = v43;
  v202 = v35;
  if (v42)
  {
    sub_224A3317C(v39, &v208);
    v44 = *(&v209 + 1);
    if (!*(&v209 + 1))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v45 = *(v39 + 16);
    v208 = *v39;
    v209 = v45;
    v210 = *(v39 + 32);
    v44 = *(&v45 + 1);
    if (!*(&v45 + 1))
    {
LABEL_17:
      v66 = v195;
      v67 = v196;
      (*(v195 + 16))(v41, v198 + qword_281365438, v196);
      v68 = sub_224DAB228();
      v69 = sub_224DAF2A8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_224A2F000, v68, v69, "Initialized - no persisted hosts found", v70, 2u);
        MEMORY[0x22AA5EED0](v70, -1, -1);
      }

      return (*(v66 + 8))(v41, v67);
    }
  }

  v188 = v31;
  v192 = v18;
  v46 = v210;
  __swift_project_boxed_opaque_existential_1(&v208, v44);
  v47 = (*(v46 + 24))(v44, v46);
  __swift_destroy_boxed_opaque_existential_1(&v208);
  if (!v47)
  {
    goto LABEL_17;
  }

  v48 = *(v47 + 16);
  v49 = MEMORY[0x277D84F90];
  v176 = v15;
  v191 = v17;
  v190 = v47;
  v181 = v24;
  if (v48)
  {
    v189 = v2;
    *&v208 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v48, 0);
    v211 = v208;
    v50 = v47 + 64;
    v51 = -1 << *(v47 + 32);
    v24 = sub_224DAF798();
    v197 = (v199 + 4);
    v52 = v201;
    while (1)
    {
      v53 = *(v47 + 36);
      v54 = v200;
      v55 = sub_224C17088(v200, v24, v53, 0, v47);
      v56 = v202;
      (*v197)(v202, v54, v52);
      *(v56 + *(v204 + 48)) = v55;
      v57 = v189;
      v58 = sub_224C2A1C0(v56, &qword_27D6F5910, qword_224DC00F0);
      v189 = v57;
      if (v57)
      {
        break;
      }

      v60 = v58;
      v61 = v59;
      sub_224A3311C(v56, &qword_27D6F5910, qword_224DC00F0);
      v62 = v211;
      *&v208 = v211;
      isa = v211[2].isa;
      v63 = v211[3].isa;
      v56 = (isa + 1);
      if (isa >= v63 >> 1)
      {
        sub_224A3DFD8((v63 > 1), isa + 1, 1);
        v62 = v208;
      }

      v62[2].isa = v56;
      v65 = &v62[2 * isa];
      v65[4].isa = v60;
      v65[5].isa = v61;
      v47 = v190;
      if (v24 < 0 || v24 >= -(-1 << *(v190 + 32)))
      {
        goto LABEL_81;
      }

      if (((*(v50 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_82;
      }

      if (v53 != *(v190 + 36))
      {
        goto LABEL_83;
      }

      v211 = v62;
      v24 = sub_224DAF7B8();
      --v48;
      v52 = v201;
      if (!v48)
      {
        v3 = v189;
        v24 = v181;
        v49 = v211;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v52 = v201;
LABEL_21:
    *&v208 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
    v202 = sub_224DAEDA8();
    v73 = v72;

    v74 = v195;
    v75 = v196;
    (*(v195 + 16))(v193, v198 + qword_281365438, v196);

    v76 = sub_224DAB228();
    v77 = sub_224DAF2A8();

    v211 = v76;
    v78 = os_log_type_enabled(v76, v77);
    v189 = v3;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v208 = v80;
      *v79 = 136446210;
      v81 = sub_224A33F74(v202, v73, &v208);

      *(v79 + 4) = v81;
      v82 = v77;
      v83 = v211;
      _os_log_impl(&dword_224A2F000, v211, v82, "Initialized with hosts: (\n\t%{public}s\n)", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x22AA5EED0](v80, -1, -1);
      MEMORY[0x22AA5EED0](v79, -1, -1);

      (*(v74 + 8))(v193, v196);
    }

    else
    {

      (*(v74 + 8))(v193, v75);
    }

    v53 = v187;
    v84 = 0;
    v85 = *(v47 + 64);
    v175 = v47 + 64;
    v86 = 1 << *(v47 + 32);
    v87 = -1;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    v88 = v87 & v85;
    v180 = qword_28135C9F0;
    v174 = (v86 + 63) >> 6;
    v183 = (v188 + 56);
    v211 = (v199 + 2);
    v200 = (v199 + 4);
    v182 = (v188 + 48);
    v179 = (v192 + 2);
    v193 = (v172 + 56);
    v178 = (v192 + 4);
    v192 = (v199 + 1);
    v202 = MEMORY[0x277D84F98];
    while (1)
    {
      v56 = v204;
      if (!v88)
      {
        break;
      }

      v91 = v84;
LABEL_38:
      v94 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
      v95 = v94 | (v91 << 6);
      v96 = v190;
      v97 = v199;
      v98 = v203;
      (v199[2])(v203, *(v190 + 48) + v199[9] * v95, v52);
      v99 = *(*(v96 + 56) + 8 * v95);
      v100 = *(v204 + 48);
      (v97[4])(v53, v98, v52);
      *(v53 + v100) = v99;
      v56 = v204;
      (*v183)(v53, 0, 1, v204);

      v93 = v91;
LABEL_39:
      v101 = v186;
      sub_224A44E4C(v53, v186, &qword_27D6F5908, &qword_224DBBDD8);
      if ((*v182)(v101, 1, v56) == 1)
      {

        v129 = qword_28135CA28;
        v130 = v198;
        swift_beginAccess();
        v131 = *(v130 + v129);
        v132 = v202;
        *(v130 + v129) = v202;

        v133 = 0;
        v134 = v132 + 64;
        v135 = 1 << *(v132 + 32);
        v136 = -1;
        if (v135 < 64)
        {
          v136 = ~(-1 << v135);
        }

        v24 = v136 & *(v132 + 64);
        v190 = qword_28135CA18;
        v137 = (v135 + 63) >> 6;
        v187 = (v172 + 8);
        v56 = &qword_27D6F5918;
        v138 = v191;
        v195 = v132 + 64;
        v188 = v137;
        while (v24)
        {
          v140 = v133;
          v141 = v201;
LABEL_65:
          v145 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v146 = v145 | (v140 << 6);
          v147 = v199;
          v148 = v203;
          (v199[2])(v203, *(v132 + 48) + v199[9] * v146, v141);
          v149 = *(*(v132 + 56) + 8 * v146);
          v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5918, &qword_224DBBDE0);
          v151 = *(v150 + 48);
          v152 = v147[4];
          v153 = v176;
          v152(v176, v148, v141);
          *(v153 + v151) = v149;
          (*(*(v150 - 8) + 56))(v153, 0, 1, v150);

          v144 = v141;
          v138 = v191;
LABEL_66:
          sub_224A44E4C(v153, v138, &qword_27D6F5900, &qword_224DBBDD0);
          v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5918, &qword_224DBBDE0);
          if ((*(*(v154 - 8) + 48))(v138, 1, v154) == 1)
          {

            return sub_224C2A790();
          }

          v53 = *(v138 + *(v154 + 48));
          v155 = qword_281365430;
          swift_retain_n();
          sub_224DAA1F8();
          v156 = sub_224DAA048();

          if ((v156 & 1) != 0 || (v157 = *(*v53 + 104), swift_beginAccess(), ([*(v53 + v157) automaticallyOrphaned] & 1) == 0))
          {

            v167 = v177;
            (*v193)(v177, 1, 1, v194);
            v168 = *(*v53 + 216);
            swift_beginAccess();
            v165 = v53 + v168;
            v166 = v167;
          }

          else
          {
            v56 = v173;
            sub_224DAC338();
            v158 = *(v53 + v157);

            [v158 expirationTimeout];
            v160 = v159;

            v161 = v160 * 1000000000.0;
            if (COERCE__INT64(fabs(v160 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_85;
            }

            if (v161 <= -1.0)
            {
              goto LABEL_86;
            }

            if (v161 >= 1.84467441e19)
            {
              goto LABEL_87;
            }

            v162 = v177;
            sub_224DAC358();
            v163 = v194;
            (*v187)(v56, v194);
            (*v193)(v162, 0, 1, v163);
            v164 = *(*v53 + 216);
            swift_beginAccess();
            v165 = v53 + v164;
            v166 = v162;
          }

          sub_224A838C0(v166, v165, &qword_27D6F3948, &qword_224DB5C10);
          swift_endAccess();
          sub_224A3796C(v198 + v190, &v208, &unk_27D6F53A0, &qword_224DC1A80);
          if (*(&v209 + 1))
          {
            v204 = v210;
            v197 = *(&v209 + 1);
            v196 = __swift_project_boxed_opaque_existential_1(&v208, *(&v209 + 1));
            v207[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5920, &qword_224DBBDE8);
            v207[4] = sub_224A33088(&qword_281352098, &qword_27D6F5920, &qword_224DBBDE8);
            v207[0] = v53;
            v169 = v203;
            (v211->isa)(v203, v53 + v155, v144);
            v205 = 0x2D74736F48;
            v206 = 0xE500000000000000;
            v170 = sub_224DAA1C8();
            MEMORY[0x22AA5D210](v170);

            v139 = *v192;
            (*v192)(v169, v144);
            sub_224DAA2D8();

            __swift_destroy_boxed_opaque_existential_1(v207);
            __swift_destroy_boxed_opaque_existential_1(&v208);
          }

          else
          {

            sub_224A3311C(&v208, &unk_27D6F53A0, &qword_224DC1A80);
            v139 = *v192;
          }

          v56 = &qword_27D6F5918;
          v138 = v191;
          v139(v191, v144);
          v132 = v202;
          v134 = v195;
          v137 = v188;
        }

        if (v137 <= v133 + 1)
        {
          v142 = v133 + 1;
        }

        else
        {
          v142 = v137;
        }

        v143 = v142 - 1;
        v144 = v201;
        while (1)
        {
          v140 = v133 + 1;
          if (__OFADD__(v133, 1))
          {
            goto LABEL_79;
          }

          if (v140 >= v137)
          {
            v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5918, &qword_224DBBDE0);
            v153 = v176;
            (*(*(v171 - 8) + 56))(v176, 1, 1, v171);
            v24 = 0;
            v133 = v143;
            goto LABEL_66;
          }

          v24 = *(v134 + 8 * v140);
          ++v133;
          if (v24)
          {
            v133 = v140;
            v141 = v201;
            goto LABEL_65;
          }
        }
      }

      v195 = v93;
      v102 = *(v101 + v56[12]);
      v197 = *v200;
      (v197)(v24, v101, v52);
      v103 = v203;
      v188 = v211->isa;
      (v188)(v203, v102 + qword_281365418, v52);
      v104 = *v102;
      v196 = *(v102 + *(*v102 + 104));
      v105 = v184;
      v53 = v185;
      (*v179)(v184, v102 + *(v104 + 112), v185);
      v106 = *(v198 + v180);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5920, &qword_224DBBDE8);
      v108 = *(v107 + 48);
      v109 = *(v107 + 52);
      v56 = swift_allocObject();
      (*v193)(v56 + *(*v56 + 216), 1, 1, v194);
      *(v56 + *(*v56 + 208)) = v106;
      v110 = v103;
      v24 = v181;
      (v197)(v56 + qword_281365430, v110, v52);
      v111 = v196;
      *(v56 + *(*v56 + 104)) = v196;
      (*v178)(v56 + *(*v56 + 112), v105, v53);
      v112 = v111;

      v113 = v202;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v208 = v113;
      v115 = sub_224A683FC(v24);
      v117 = *(v113 + 16);
      v118 = (v116 & 1) == 0;
      v119 = __OFADD__(v117, v118);
      v120 = v117 + v118;
      if (v119)
      {
        goto LABEL_80;
      }

      v121 = v116;
      if (*(v113 + 24) >= v120)
      {
        v53 = v187;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v128 = v115;
          sub_224B25090();
          v115 = v128;
        }
      }

      else
      {
        sub_224B0EA5C(v120, isUniquelyReferenced_nonNull_native);
        v115 = sub_224A683FC(v24);
        v53 = v187;
        if ((v121 & 1) != (v122 & 1))
        {
          goto LABEL_89;
        }
      }

      v123 = v208;
      v202 = v208;
      if (v121)
      {
        v89 = *(v208 + 56);
        v90 = *(v89 + 8 * v115);
        *(v89 + 8 * v115) = v56;

        v52 = v201;
        (*v192)(v24, v201);
      }

      else
      {
        *(v208 + 8 * (v115 >> 6) + 64) |= 1 << v115;
        v124 = v199;
        v125 = v115;
        v52 = v201;
        (v188)(v123[6] + v199[9] * v115, v24, v201);
        *(v123[7] + 8 * v125) = v56;

        (v124[1])(v24, v52);
        v126 = v123[2];
        v119 = __OFADD__(v126, 1);
        v127 = v126 + 1;
        if (v119)
        {
          goto LABEL_84;
        }

        v123[2] = v127;
      }

      v84 = v195;
    }

    if (v174 <= v84 + 1)
    {
      v92 = v84 + 1;
    }

    else
    {
      v92 = v174;
    }

    v93 = v92 - 1;
    while (1)
    {
      v91 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v91 >= v174)
      {
        (*v183)(v53, 1, 1, v204);
        v88 = 0;
        goto LABEL_39;
      }

      v88 = *(v175 + 8 * v91);
      ++v84;
      if (v88)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }

  sub_224A3311C(v56, &qword_27D6F5910, qword_224DC00F0);
  sub_224A3E204(v24, v53, 0);

  __break(1u);
LABEL_89:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224C28A28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v197 = a2;
  v193 = sub_224DAC378();
  v171 = *(v193 - 8);
  v5 = *(v171 + 64);
  MEMORY[0x28223BE20](v193);
  v7 = (&v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v176 = &v171 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5928, &qword_224DBBDF0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v171 - v16;
  v184 = sub_224DAA428();
  v18 = *(v184 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v184);
  v183 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v198 = *(v200 - 8);
  v21 = v198[8];
  v22 = MEMORY[0x28223BE20](v200);
  v24 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v202 = &v171 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5930, &qword_224DBBDF8);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v186 = (&v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v185 = &v171 - v30;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F34A0, &unk_224DB3A20);
  v31 = *(v203 - 8);
  v32 = *(v31 + 8);
  v33 = MEMORY[0x28223BE20](v203 - 8);
  v35 = (&v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v199 = &v171 - v36;
  v195 = sub_224DAB258();
  v194 = *(v195 - 8);
  v37 = *(v194 + 64);
  v38 = MEMORY[0x28223BE20](a1);
  v40 = &v171 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38);
  v42 = *(v41 + 24);
  v172 = v7;
  v192 = &v171 - v43;
  v201 = v35;
  if (v42)
  {
    sub_224A3317C(v41, &v207);
    v44 = *(&v208 + 1);
    if (!*(&v208 + 1))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v45 = *(v41 + 16);
    v207 = *v41;
    v208 = v45;
    v209 = *(v41 + 32);
    v44 = *(&v45 + 1);
    if (!*(&v45 + 1))
    {
LABEL_17:
      v66 = v194;
      v67 = v195;
      (*(v194 + 16))(v40, v197 + qword_281365438, v195);
      v68 = sub_224DAB228();
      v69 = sub_224DAF2A8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_224A2F000, v68, v69, "Initialized - no persisted hosts found", v70, 2u);
        MEMORY[0x22AA5EED0](v70, -1, -1);
      }

      return (*(v66 + 8))(v40, v67);
    }
  }

  v187 = v31;
  v191 = v18;
  v46 = v209;
  __swift_project_boxed_opaque_existential_1(&v207, v44);
  v47 = (*(v46 + 24))(v44, v46);
  __swift_destroy_boxed_opaque_existential_1(&v207);
  if (!v47)
  {
    goto LABEL_17;
  }

  v48 = *(v47 + 16);
  v49 = MEMORY[0x277D84F90];
  v175 = v15;
  v190 = v17;
  v189 = v47;
  v180 = v24;
  if (v48)
  {
    v188 = v2;
    *&v207 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v48, 0);
    v210 = v207;
    v50 = v47 + 64;
    v51 = -1 << *(v47 + 32);
    v24 = sub_224DAF798();
    v196 = (v198 + 4);
    v52 = v200;
    while (1)
    {
      v53 = *(v47 + 36);
      v54 = v199;
      v55 = sub_224C17088(v199, v24, v53, 0, v47);
      v56 = v201;
      (*v196)(v201, v54, v52);
      *(v56 + *(v203 + 48)) = v55;
      v57 = v188;
      v58 = sub_224C2A1C0(v56, &qword_27D6F34A0, &unk_224DB3A20);
      v188 = v57;
      if (v57)
      {
        break;
      }

      v60 = v58;
      v61 = v59;
      sub_224A3311C(v56, &qword_27D6F34A0, &unk_224DB3A20);
      v62 = v210;
      *&v207 = v210;
      isa = v210[2].isa;
      v63 = v210[3].isa;
      v56 = (isa + 1);
      if (isa >= v63 >> 1)
      {
        sub_224A3DFD8((v63 > 1), isa + 1, 1);
        v62 = v207;
      }

      v62[2].isa = v56;
      v65 = &v62[2 * isa];
      v65[4].isa = v60;
      v65[5].isa = v61;
      v47 = v189;
      if (v24 < 0 || v24 >= -(-1 << *(v189 + 32)))
      {
        goto LABEL_81;
      }

      if (((*(v50 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        goto LABEL_82;
      }

      if (v53 != *(v189 + 36))
      {
        goto LABEL_83;
      }

      v210 = v62;
      v24 = sub_224DAF7B8();
      --v48;
      v52 = v200;
      if (!v48)
      {
        v3 = v188;
        v24 = v180;
        v49 = v210;
        goto LABEL_21;
      }
    }
  }

  else
  {
    v52 = v200;
LABEL_21:
    *&v207 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
    sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
    v201 = sub_224DAEDA8();
    v73 = v72;

    v74 = v194;
    v75 = v195;
    (*(v194 + 16))(v192, v197 + qword_281365438, v195);

    v76 = sub_224DAB228();
    v77 = sub_224DAF2A8();

    v210 = v76;
    v78 = os_log_type_enabled(v76, v77);
    v188 = v3;
    if (v78)
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      *&v207 = v80;
      *v79 = 136446210;
      v81 = sub_224A33F74(v201, v73, &v207);

      *(v79 + 4) = v81;
      v82 = v77;
      v83 = v210;
      _os_log_impl(&dword_224A2F000, v210, v82, "Initialized with hosts: (\n\t%{public}s\n)", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x22AA5EED0](v80, -1, -1);
      MEMORY[0x22AA5EED0](v79, -1, -1);

      (*(v74 + 8))(v192, v195);
    }

    else
    {

      (*(v74 + 8))(v192, v75);
    }

    v53 = v186;
    v84 = 0;
    v85 = *(v47 + 64);
    v174 = v47 + 64;
    v86 = 1 << *(v47 + 32);
    v87 = -1;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    v88 = v87 & v85;
    v179 = qword_28135C9F0;
    v173 = (v86 + 63) >> 6;
    v182 = (v187 + 56);
    v210 = (v198 + 2);
    v199 = (v198 + 4);
    v181 = (v187 + 48);
    v178 = (v191 + 2);
    v192 = (v171 + 56);
    v177 = (v191 + 4);
    v191 = (v198 + 1);
    v201 = MEMORY[0x277D84F98];
    while (1)
    {
      v56 = v203;
      if (!v88)
      {
        break;
      }

      v91 = v84;
LABEL_38:
      v94 = __clz(__rbit64(v88));
      v88 &= v88 - 1;
      v95 = v94 | (v91 << 6);
      v96 = v189;
      v97 = v198;
      v98 = v202;
      (v198[2])(v202, *(v189 + 48) + v198[9] * v95, v52);
      v99 = *(*(v96 + 56) + 8 * v95);
      v100 = *(v203 + 48);
      (v97[4])(v53, v98, v52);
      *(v53 + v100) = v99;
      v56 = v203;
      (*v182)(v53, 0, 1, v203);

      v93 = v91;
LABEL_39:
      v101 = v185;
      sub_224A44E4C(v53, v185, &unk_27D6F5930, &qword_224DBBDF8);
      if ((*v181)(v101, 1, v56) == 1)
      {

        v129 = qword_28135CA28;
        v130 = v197;
        swift_beginAccess();
        v131 = *(v130 + v129);
        v132 = v201;
        *(v130 + v129) = v201;

        v133 = v132 + 64;
        v134 = 1 << *(v132 + 32);
        v135 = -1;
        if (v134 < 64)
        {
          v135 = ~(-1 << v134);
        }

        v24 = v135 & *(v132 + 64);
        v189 = qword_28135CA18;
        v187 = ((v134 + 63) >> 6);
        v186 = (v171 + 8);

        v136 = 0;
        v56 = &qword_27D6F5940;
        v137 = v190;
        v194 = v132 + 64;
        while (v24)
        {
          v139 = v136;
          v140 = v200;
LABEL_65:
          v144 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v145 = v144 | (v139 << 6);
          v146 = v198;
          v147 = v202;
          (v198[2])(v202, *(v132 + 48) + v198[9] * v145, v140);
          v148 = *(*(v132 + 56) + 8 * v145);
          v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5940, &qword_224DBBE00);
          v150 = *(v149 + 48);
          v151 = v146[4];
          v152 = v175;
          v151(v175, v147, v140);
          *(v152 + v150) = v148;
          (*(*(v149 - 8) + 56))(v152, 0, 1, v149);

          v143 = v140;
          v137 = v190;
LABEL_66:
          sub_224A44E4C(v152, v137, &qword_27D6F5928, &qword_224DBBDF0);
          v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5940, &qword_224DBBE00);
          if ((*(*(v153 - 8) + 48))(v137, 1, v153) == 1)
          {

            return sub_224C2B638();
          }

          v53 = *(v137 + *(v153 + 48));
          v154 = qword_281365430;
          swift_retain_n();
          sub_224DAA1F8();
          v155 = sub_224DAA048();

          if ((v155 & 1) != 0 || (v156 = *(*v53 + 104), swift_beginAccess(), ([*(v53 + v156) automaticallyOrphaned] & 1) == 0))
          {

            v166 = v176;
            (*v192)(v176, 1, 1, v193);
            v167 = *(*v53 + 216);
            swift_beginAccess();
            v164 = v53 + v167;
            v165 = v166;
          }

          else
          {
            v56 = v172;
            sub_224DAC338();
            v157 = *(v53 + v156);

            [v157 expirationTimeout];
            v159 = v158;

            v160 = v159 * 1000000000.0;
            if (COERCE__INT64(fabs(v159 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_85;
            }

            if (v160 <= -1.0)
            {
              goto LABEL_86;
            }

            if (v160 >= 1.84467441e19)
            {
              goto LABEL_87;
            }

            v161 = v176;
            sub_224DAC358();
            v162 = v193;
            (*v186)(v56, v193);
            (*v192)(v161, 0, 1, v162);
            v163 = *(*v53 + 216);
            swift_beginAccess();
            v164 = v53 + v163;
            v165 = v161;
          }

          sub_224A838C0(v165, v164, &qword_27D6F3948, &qword_224DB5C10);
          swift_endAccess();
          sub_224A3796C(v197 + v189, &v207, &unk_27D6F53A0, &qword_224DC1A80);
          if (*(&v208 + 1))
          {
            v203 = v209;
            v196 = *(&v208 + 1);
            v195 = __swift_project_boxed_opaque_existential_1(&v207, *(&v208 + 1));
            v206[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5948, &qword_224DBBE08);
            v206[4] = sub_224A33088(qword_2813520A0, &unk_27D6F5948, &qword_224DBBE08);
            v206[0] = v53;
            v168 = v202;
            (v210->isa)(v202, v53 + v154, v143);
            v204 = 0x2D74736F48;
            v205 = 0xE500000000000000;
            v169 = sub_224DAA1C8();
            MEMORY[0x22AA5D210](v169);

            v138 = *v191;
            (*v191)(v168, v143);
            sub_224DAA2D8();

            __swift_destroy_boxed_opaque_existential_1(v206);
            __swift_destroy_boxed_opaque_existential_1(&v207);
          }

          else
          {

            sub_224A3311C(&v207, &unk_27D6F53A0, &qword_224DC1A80);
            v138 = *v191;
          }

          v56 = &qword_27D6F5940;
          v137 = v190;
          v138(v190, v143);
          v132 = v201;
          v133 = v194;
        }

        if (v187 <= v136 + 1)
        {
          v141 = (v136 + 1);
        }

        else
        {
          v141 = v187;
        }

        v142 = v141 - 1;
        v143 = v200;
        while (1)
        {
          v139 = v136 + 1;
          if (__OFADD__(v136, 1))
          {
            goto LABEL_79;
          }

          if (v139 >= v187)
          {
            v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5940, &qword_224DBBE00);
            v152 = v175;
            (*(*(v170 - 8) + 56))(v175, 1, 1, v170);
            v24 = 0;
            v136 = v142;
            goto LABEL_66;
          }

          v24 = *(v133 + 8 * v139);
          ++v136;
          if (v24)
          {
            v136 = v139;
            v140 = v200;
            goto LABEL_65;
          }
        }
      }

      v194 = v93;
      v102 = *(v101 + v56[12]);
      v196 = *v199;
      (v196)(v24, v101, v52);
      v103 = v202;
      v187 = v210->isa;
      (v187)(v202, v102 + qword_281365418, v52);
      v104 = *v102;
      v195 = *(v102 + *(*v102 + 104));
      v105 = v183;
      v53 = v184;
      (*v178)(v183, v102 + *(v104 + 112), v184);
      v106 = *(v197 + v179);
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5948, &qword_224DBBE08);
      v108 = *(v107 + 48);
      v109 = *(v107 + 52);
      v56 = swift_allocObject();
      (*v192)(v56 + *(*v56 + 216), 1, 1, v193);
      *(v56 + *(*v56 + 208)) = v106;
      v110 = v103;
      v24 = v180;
      (v196)(v56 + qword_281365430, v110, v52);
      v111 = v195;
      *(v56 + *(*v56 + 104)) = v195;
      (*v177)(v56 + *(*v56 + 112), v105, v53);
      v112 = v111;

      v113 = v201;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v207 = v113;
      v115 = sub_224A683FC(v24);
      v117 = *(v113 + 16);
      v118 = (v116 & 1) == 0;
      v119 = __OFADD__(v117, v118);
      v120 = v117 + v118;
      if (v119)
      {
        goto LABEL_80;
      }

      v121 = v116;
      if (*(v113 + 24) >= v120)
      {
        v53 = v186;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v128 = v115;
          sub_224B269F8();
          v115 = v128;
        }
      }

      else
      {
        sub_224B1195C(v120, isUniquelyReferenced_nonNull_native);
        v115 = sub_224A683FC(v24);
        v53 = v186;
        if ((v121 & 1) != (v122 & 1))
        {
          goto LABEL_89;
        }
      }

      v123 = v207;
      v201 = v207;
      if (v121)
      {
        v89 = *(v207 + 56);
        v90 = *(v89 + 8 * v115);
        *(v89 + 8 * v115) = v56;

        v52 = v200;
        (*v191)(v24, v200);
      }

      else
      {
        *(v207 + 8 * (v115 >> 6) + 64) |= 1 << v115;
        v124 = v198;
        v125 = v115;
        v52 = v200;
        (v187)(v123[6] + v198[9] * v115, v24, v200);
        *(v123[7] + 8 * v125) = v56;

        (v124[1])(v24, v52);
        v126 = v123[2];
        v119 = __OFADD__(v126, 1);
        v127 = v126 + 1;
        if (v119)
        {
          goto LABEL_84;
        }

        v123[2] = v127;
      }

      v84 = v194;
    }

    if (v173 <= v84 + 1)
    {
      v92 = v84 + 1;
    }

    else
    {
      v92 = v173;
    }

    v93 = v92 - 1;
    while (1)
    {
      v91 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        break;
      }

      if (v91 >= v173)
      {
        (*v182)(v53, 1, 1, v203);
        v88 = 0;
        goto LABEL_39;
      }

      v88 = *(v174 + 8 * v91);
      ++v84;
      if (v88)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
  }

  sub_224A3311C(v56, &qword_27D6F34A0, &unk_224DB3A20);
  sub_224A3E204(v24, v53, 0);

  __break(1u);
LABEL_89:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224C2A1C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v37 = sub_224DAA428();
  v38 = *(v37 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v31 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v30 - v16;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_224DAF938();
  MEMORY[0x22AA5D210](91, 0xE100000000000000);
  v32 = a2;
  sub_224A3796C(a1, v17, a2, a3);
  (*(v9 + 16))(v12, *&v17[*(v14 + 56)] + qword_281365418, v8);

  sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
  v18 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v18);

  v19 = *(v9 + 8);
  v34 = v9 + 8;
  v35 = v19;
  v33 = v8;
  v19(v12, v8);
  v19(v17, v8);
  MEMORY[0x22AA5D210](539828317, 0xE400000000000000);
  v20 = v31;
  sub_224A3796C(a1, v17, a2, v31);
  v21 = *&v17[*(v14 + 56)];
  v23 = v36;
  v22 = v37;
  (*(v38 + 16))(v36, v21 + *(*v21 + 112), v37);

  sub_224C41198(&qword_281351820, MEMORY[0x277CFA048]);
  v24 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v24);

  (*(v38 + 8))(v23, v22);
  v25 = v33;
  v26 = v35;
  v35(v17, v33);
  MEMORY[0x22AA5D210](0xD000000000000019, 0x8000000224DCB6C0);
  sub_224A3796C(a1, v17, v32, v20);
  v27 = *&v17[*(v14 + 56)];
  v28 = *(v27 + *(*v27 + 104));

  [v28 expirationTimeout];

  sub_224DAF188();
  v26(v17, v25);
  MEMORY[0x22AA5D210](41, 0xE100000000000000);
  return v39;
}

void sub_224C2A634(void (*a1)(void))
{
  sub_224A3796C(v1 + qword_28135CA18, &v5, &unk_27D6F53A0, &qword_224DC1A80);
  if (v6)
  {
    sub_224A36F98(&v5, v7);
    v3 = __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    MEMORY[0x28223BE20](v3);
    sub_224DAA308();
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_224A3311C(&v5, &unk_27D6F53A0, &qword_224DC1A80);
    v4 = *(v1 + qword_28135C9F0);
    os_unfair_lock_lock(*(v4 + 16));
    a1();
    os_unfair_lock_unlock(*(v4 + 16));
  }
}

uint64_t sub_224C2A790()
{
  v1 = v0;
  v143 = sub_224DAC378();
  v127 = *(v143 - 8);
  v2 = *(v127 + 64);
  v3 = MEMORY[0x28223BE20](v143);
  v5 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v121 - v7;
  MEMORY[0x28223BE20](v6);
  v142 = &v121 - v9;
  v10 = sub_224DAB258();
  v136 = *(v10 - 8);
  v11 = *(v136 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = (&v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v139 = &v121 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v128 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v132 = &v121 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v121 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v133 = &v121 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v138 = &v121 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v121 - v29;
  v31 = *(v1 + qword_28135C9F0);
  os_unfair_lock_assert_owner(*(v31 + 16));
  v32 = qword_28135CA40;
  v33 = *(v1 + qword_28135CA40);
  v124 = v8;
  v123 = v5;
  v125 = v24;
  v137 = v10;
  v131 = v14;
  v134 = v33;
  if (v33)
  {

    sub_224DAC5F8();

    v34 = *(v1 + v32);
  }

  v122 = v32;
  *(v1 + v32) = 0;

  os_unfair_lock_assert_owner(*(v31 + 16));
  v35 = qword_28135CA28;
  swift_beginAccess();
  v126 = v1;
  v36 = *(v1 + v35);
  v38 = (v36 + 64);
  v37 = *(v36 + 64);
  v145[0] = MEMORY[0x277D84F90];
  v39 = 1 << *(v36 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v37;
  v42 = (v39 + 63) >> 6;
  v135 = (v127 + 48);

  v43 = 0;
  v44 = &qword_27D6F3948;
  v45 = &qword_224DB5C10;
  v141 = v30;
  if (v41)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v50 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v50 >= v42)
    {
      break;
    }

    v41 = v38[v50];
    ++v43;
    if (v41)
    {
      while (1)
      {
        v51 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v52 = *(*(v36 + 56) + ((v50 << 9) | (8 * v51)));
        v53 = *(*v52 + 216);
        swift_beginAccess();
        sub_224A3796C(v52 + v53, v30, v44, v45);
        if ((*v135)(v30, 1, v143) == 1)
        {
          sub_224A3311C(v30, v44, v45);
          v43 = v50;
          if (!v41)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_224A3311C(v30, v44, v45);
          sub_224DAF9B8();
          v46 = v36;
          v47 = v45;
          v48 = v44;
          v49 = *(v145[0] + 16);
          sub_224DAF9F8();
          v44 = v48;
          v45 = v47;
          v36 = v46;
          v30 = v141;
          sub_224DAFA08();
          sub_224DAF9C8();
          v43 = v50;
          if (!v41)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v50 = v43;
      }
    }
  }

  v45 = v145[0];
  LODWORD(v38) = v145[0] < 0 || (v145[0] & 0x4000000000000000) != 0;
  if ((v38 & 1) == 0)
  {
    v54 = *(v145[0] + 16);
    goto LABEL_20;
  }

LABEL_69:
  v54 = sub_224DAF838();
LABEL_20:
  v55 = v126;
  v56 = v133;
  v58 = v136;
  v57 = v137;
  v59 = v139;
  if (v54)
  {
    (*(v136 + 16))(v139, v126 + qword_281365438, v137);

    v60 = sub_224DAB228();
    v61 = v57;
    v62 = sub_224DAF268();

    LODWORD(v141) = v62;
    v63 = os_log_type_enabled(v60, v62);
    v134 = v45;
    v140 = v54;
    if (!v63)
    {

      (*(v58 + 8))(v59, v61);
      v73 = v143;
      v74 = v138;
LABEL_45:
      v38 = (v127 + 56);
      v129 = *(v127 + 56);
      v129(v74, 1, 1, v73);
      v100 = 0;
      v141 = v45 & 0xC000000000000001;
      v137 = v38 - 3;
      v130 = v38;
      v131 = (v38 - 6);
      v101 = v135;
      while (1)
      {
        if (v141)
        {
          v102 = MEMORY[0x22AA5DCC0](v100, v45);
          v38 = (v100 + 1);
          if (__OFADD__(v100, 1))
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v100 >= *(v45 + 16))
          {
            goto LABEL_68;
          }

          v102 = *(v45 + 8 * v100 + 32);

          v38 = (v100 + 1);
          if (__OFADD__(v100, 1))
          {
            goto LABEL_67;
          }
        }

        v103 = *(*v102 + 216);
        swift_beginAccess();
        v104 = v102 + v103;
        v105 = v143;
        sub_224A3796C(v104, v56, &qword_27D6F3948, &qword_224DB5C10);
        v106 = *v101;
        if ((*v101)(v56, 1, v105) != 1)
        {
          break;
        }

        sub_224A3311C(v56, &qword_27D6F3948, &qword_224DB5C10);
LABEL_47:
        ++v100;
        if (v38 == v140)
        {

          v115 = v138;
          v116 = v125;
          sub_224A3796C(v138, v125, &qword_27D6F3948, &qword_224DB5C10);
          if ((v106)(v116, 1, v105) == 1)
          {
            sub_224A3311C(v115, &qword_27D6F3948, &qword_224DB5C10);
            return sub_224A3311C(v116, &qword_27D6F3948, &qword_224DB5C10);
          }

          else
          {
            v117 = v127;
            v118 = v124;
            (*(v127 + 32))(v124, v116, v105);
            sub_224DAC648();
            (*(v117 + 16))(v123, v118, v105);
            sub_224DAC618();
            v119 = sub_224DAC608();
            v120 = *(v126 + v122);
            *(v126 + v122) = v119;

            swift_allocObject();
            swift_weakInit();

            sub_224DAC638();

            (*(v117 + 8))(v118, v105);
            sub_224A3311C(v115, &qword_27D6F3948, &qword_224DB5C10);
          }
        }
      }

      v136 = *v137;
      (v136)(v142, v56, v105);
      v107 = v138;
      v108 = v132;
      sub_224A3796C(v138, v132, &qword_27D6F3948, &qword_224DB5C10);
      v109 = (v106)(v108, 1, v105);
      v139 = v106;
      if (v109 == 1)
      {

        sub_224A3311C(v108, &qword_27D6F3948, &qword_224DB5C10);
        v110 = v142;
      }

      else
      {
        sub_224A3311C(v108, &qword_27D6F3948, &qword_224DB5C10);
        v111 = v128;
        sub_224A3796C(v107, v128, &qword_27D6F3948, &qword_224DB5C10);
        result = (v106)(v111, 1, v105);
        if (result == 1)
        {
          goto LABEL_71;
        }

        sub_224C41198(&qword_281350DF0, MEMORY[0x277CF9A10]);
        v110 = v142;
        v112 = sub_224DAEDB8();

        isa = v131->isa;
        (v131->isa)(v111, v105);
        if ((v112 & 1) == 0)
        {
          (isa)(v110, v105);
          goto LABEL_61;
        }
      }

      v114 = v138;
      sub_224A3311C(v138, &qword_27D6F3948, &qword_224DB5C10);
      (v136)(v114, v110, v105);
      v129(v114, 0, 1, v105);
LABEL_61:
      v56 = v133;
      v45 = v134;
      v101 = v135;
      v106 = v139;
      goto LABEL_47;
    }

    v64 = v61;
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v145[0] = v66;
    *v65 = 136446210;
    if (v38)
    {
      v67 = sub_224DAF838();
    }

    else
    {
      v67 = *(v45 + 16);
    }

    v131 = v60;
    v75 = MEMORY[0x277D84F90];
    v130 = v66;
    if (!v67)
    {
      v84 = v64;
      v85 = v139;
LABEL_44:
      v144 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
      v94 = sub_224DAEDA8();
      v96 = v95;

      v97 = sub_224A33F74(v94, v96, v145);

      *(v65 + 4) = v97;
      v98 = v131;
      _os_log_impl(&dword_224A2F000, v131, v141, "Starting orphaned host purge timer for host identifiers: %{public}s", v65, 0xCu);
      v99 = v130;
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x22AA5EED0](v99, -1, -1);
      MEMORY[0x22AA5EED0](v65, -1, -1);

      (*(v58 + 8))(v85, v84);
      v73 = v143;
      v74 = v138;
      v45 = v134;
      goto LABEL_45;
    }

    v144 = MEMORY[0x277D84F90];
    result = sub_224A3DFD8(0, v67 & ~(v67 >> 63), 0);
    if ((v67 & 0x8000000000000000) == 0)
    {
      v76 = v67;
      v129 = v65;
      v75 = v144;
      if ((v134 & 0xC000000000000001) != 0)
      {
        v77 = 0;
        do
        {
          MEMORY[0x22AA5DCC0](v77, v134);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          v78 = sub_224DAA1C8();
          v80 = v79;
          swift_unknownObjectRelease();
          v144 = v75;
          v82 = *(v75 + 16);
          v81 = *(v75 + 24);
          if (v82 >= v81 >> 1)
          {
            sub_224A3DFD8((v81 > 1), v82 + 1, 1);
            v75 = v144;
          }

          ++v77;
          *(v75 + 16) = v82 + 1;
          v83 = v75 + 16 * v82;
          *(v83 + 32) = v78;
          *(v83 + 40) = v80;
        }

        while (v67 != v77);
      }

      else
      {
        v86 = (v134 + 32);
        do
        {
          v87 = *v86;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          v88 = sub_224DAA1C8();
          v90 = v89;

          v144 = v75;
          v92 = *(v75 + 16);
          v91 = *(v75 + 24);
          if (v92 >= v91 >> 1)
          {
            sub_224A3DFD8((v91 > 1), v92 + 1, 1);
            v75 = v144;
          }

          *(v75 + 16) = v92 + 1;
          v93 = v75 + 16 * v92;
          *(v93 + 32) = v88;
          *(v93 + 40) = v90;
          ++v86;
          --v76;
        }

        while (v76);
      }

      v56 = v133;
      v58 = v136;
      v84 = v137;
      v85 = v139;
      v65 = v129;
      goto LABEL_44;
    }

    __break(1u);
LABEL_71:
    __break(1u);
  }

  else
  {

    if (v134)
    {
      v69 = v131;
      (*(v58 + 16))(v131, v55 + qword_281365438, v57);
      v70 = sub_224DAB228();
      v71 = sub_224DAF268();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_224A2F000, v70, v71, "Invalidated orphaned host purge timer.", v72, 2u);
        MEMORY[0x22AA5EED0](v72, -1, -1);
      }

      return (*(v58 + 8))(v69, v57);
    }
  }

  return result;
}

uint64_t sub_224C2B638()
{
  v1 = v0;
  v133 = sub_224DAC378();
  v117 = *(v133 - 8);
  v2 = *(v117 + 64);
  v3 = MEMORY[0x28223BE20](v133);
  v123 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v111 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v111 - v8;
  v10 = sub_224DAB258();
  v126 = *(v10 - 8);
  v127 = v10;
  v11 = v126[8];
  v12 = MEMORY[0x28223BE20](v10);
  v124 = &v111 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v125 = (&v111 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v122 = &v111 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v130 = (&v111 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v111 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v129 = (&v111 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = &v111 - v28;
  v30 = *(v1 + qword_28135C9F0);
  os_unfair_lock_assert_owner(*(v30 + 16));
  v31 = qword_28135CA40;
  v32 = *(v1 + qword_28135CA40);
  v114 = v9;
  v113 = v7;
  v115 = v25;
  v128 = v32;
  if (v32)
  {

    sub_224DAC5F8();

    v33 = *(v1 + v31);
  }

  v112 = v31;
  *(v1 + v31) = 0;

  os_unfair_lock_assert_owner(*(v30 + 16));
  v34 = qword_28135CA28;
  swift_beginAccess();
  v116 = v1;
  v35 = *(v1 + v34);
  v37 = (v35 + 64);
  v36 = *(v35 + 64);
  v135[0] = MEMORY[0x277D84F90];
  v38 = 1 << *(v35 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & v36;
  v41 = (v38 + 63) >> 6;
  v131 = (v117 + 48);

  v42 = 0;
  v43 = &qword_27D6F3948;
  v44 = v129;
  if (v40)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v47 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    if (v47 >= v41)
    {
      break;
    }

    v40 = v37[v47];
    ++v42;
    if (v40)
    {
      while (1)
      {
        v48 = __clz(__rbit64(v40));
        v40 &= v40 - 1;
        v49 = *(*(v35 + 56) + ((v47 << 9) | (8 * v48)));
        v50 = *(*v49 + 216);
        swift_beginAccess();
        sub_224A3796C(v49 + v50, v29, v43, &qword_224DB5C10);
        if ((*v131)(v29, 1, v133) == 1)
        {
          sub_224A3311C(v29, v43, &qword_224DB5C10);
          v42 = v47;
          if (!v40)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_224A3311C(v29, v43, &qword_224DB5C10);
          sub_224DAF9B8();
          v45 = v43;
          v46 = *(v135[0] + 16);
          sub_224DAF9F8();
          v43 = v45;
          v44 = v129;
          sub_224DAFA08();
          sub_224DAF9C8();
          v42 = v47;
          if (!v40)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v47 = v42;
      }
    }
  }

  v47 = v135[0];
  LODWORD(v37) = v135[0] < 0 || (v135[0] & 0x4000000000000000) != 0;
  if ((v37 & 1) == 0)
  {
    v51 = *(v135[0] + 16);
    goto LABEL_20;
  }

LABEL_65:
  v51 = sub_224DAF838();
LABEL_20:
  v52 = v116;
  v53 = v128;
  if (v51)
  {
    v54 = v44;
    v56 = v126;
    v55 = v127;
    v57 = v125;
    (v126[2])(v125, v116 + qword_281365438, v127);

    v58 = sub_224DAB228();
    v59 = sub_224DAF268();

    LODWORD(v124) = v59;
    v60 = os_log_type_enabled(v58, v59);
    v132 = v47;
    v128 = v51;
    if (!v60)
    {

      v70 = v56[1];
      v44 = v56 + 1;
      v70(v57, v55);
      v71 = v54;
LABEL_41:
      v37 = (v117 + 56);
      v119 = *(v117 + 56);
      v119(v71, 1, 1, v133);
      v89 = 0;
      v90 = v132;
      v129 = (v132 & 0xC000000000000001);
      v125 = (v37 - 3);
      v120 = v37;
      v121 = (v37 - 6);
      while (1)
      {
        if (v129)
        {
          v91 = MEMORY[0x22AA5DCC0](v89);
          v47 = v131;
          v37 = (v89 + 1);
          if (__OFADD__(v89, 1))
          {
            goto LABEL_63;
          }
        }

        else
        {
          v47 = v131;
          if (v89 >= *(v90 + 16))
          {
            goto LABEL_64;
          }

          v91 = *(v90 + 8 * v89 + 32);

          v37 = (v89 + 1);
          if (__OFADD__(v89, 1))
          {
            goto LABEL_63;
          }
        }

        v92 = *(*v91 + 216);
        swift_beginAccess();
        v44 = v130;
        sub_224A3796C(v91 + v92, v130, &qword_27D6F3948, &qword_224DB5C10);
        v93 = *v47;
        if ((*v47)(v44, 1, v133) != 1)
        {
          break;
        }

        sub_224A3311C(v44, &qword_27D6F3948, &qword_224DB5C10);
LABEL_43:
        ++v89;
        v90 = v132;
        if (v37 == v128)
        {

          v105 = v115;
          sub_224A3796C(v71, v115, &qword_27D6F3948, &qword_224DB5C10);
          if (v93(v105, 1, v133) == 1)
          {
            sub_224A3311C(v71, &qword_27D6F3948, &qword_224DB5C10);
            return sub_224A3311C(v105, &qword_27D6F3948, &qword_224DB5C10);
          }

          else
          {
            v106 = v117;
            v107 = v114;
            v108 = v133;
            (*(v117 + 32))(v114, v105, v133);
            sub_224DAC648();
            (*(v106 + 16))(v113, v107, v108);
            sub_224DAC618();
            v109 = sub_224DAC608();
            v110 = *(v116 + v112);
            *(v116 + v112) = v109;

            swift_allocObject();
            swift_weakInit();

            sub_224DAC638();

            (*(v106 + 8))(v107, v108);
            sub_224A3311C(v71, &qword_27D6F3948, &qword_224DB5C10);
          }
        }
      }

      v126 = v37;
      v94 = v133;
      v95 = v123;
      v124 = *v125;
      (v124)(v123, v44, v133);
      v44 = v71;
      v96 = v71;
      v97 = v122;
      sub_224A3796C(v96, v122, &qword_27D6F3948, &qword_224DB5C10);
      v98 = v93(v97, 1, v94);
      v127 = v93;
      if (v98 == 1)
      {
        sub_224A3311C(v44, &qword_27D6F3948, &qword_224DB5C10);

        v99 = v97;
        v100 = v95;
      }

      else
      {
        sub_224A3311C(v97, &qword_27D6F3948, &qword_224DB5C10);
        v101 = v118;
        sub_224A3796C(v44, v118, &qword_27D6F3948, &qword_224DB5C10);
        result = (v93)(v101, 1, v94);
        if (result == 1)
        {
          goto LABEL_67;
        }

        sub_224C41198(&qword_281350DF0, MEMORY[0x277CF9A10]);
        v100 = v123;
        v102 = v101;
        v103 = sub_224DAEDB8();

        isa = v121->isa;
        (v121->isa)(v102, v94);
        v99 = v44;
        if ((v103 & 1) == 0)
        {
          (isa)(v100, v94, &qword_224DB5C10);
          goto LABEL_57;
        }
      }

      sub_224A3311C(v99, &qword_27D6F3948, &qword_224DB5C10);
      (v124)(v44, v100, v94);
      v119(v44, 0, 1, v94);
LABEL_57:
      v71 = v44;
      v37 = v126;
      v93 = v127;
      goto LABEL_43;
    }

    v61 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v135[0] = v44;
    *v61 = 136446210;
    v121 = v58;
    if (v37)
    {
      v62 = sub_224DAF838();
    }

    else
    {
      v62 = *(v132 + 16);
    }

    v72 = MEMORY[0x277D84F90];
    v73 = v125;
    if (!v62)
    {
LABEL_40:
      v134 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
      sub_224A33088(&qword_281350BA0, &qword_27D6F4710, &unk_224DB65E0);
      v84 = sub_224DAEDA8();
      v86 = v85;

      v87 = sub_224A33F74(v84, v86, v135);

      *(v61 + 4) = v87;
      v88 = v121;
      _os_log_impl(&dword_224A2F000, v121, v124, "Starting orphaned host purge timer for host identifiers: %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x22AA5EED0](v44, -1, -1);
      MEMORY[0x22AA5EED0](v61, -1, -1);

      (v126[1])(v73, v127);
      v71 = v129;
      goto LABEL_41;
    }

    v120 = v44;
    v74 = v61;
    v134 = MEMORY[0x277D84F90];
    result = sub_224A3DFD8(0, v62 & ~(v62 >> 63), 0);
    if ((v62 & 0x8000000000000000) == 0)
    {
      v75 = 0;
      v72 = v134;
      v76 = v132 & 0xC000000000000001;
      do
      {
        if (v76)
        {
          MEMORY[0x22AA5DCC0](v75, v132);
        }

        else
        {
          v77 = *(v132 + 8 * v75 + 32);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
        v78 = sub_224DAA1C8();
        v80 = v79;

        v134 = v72;
        v82 = *(v72 + 16);
        v81 = *(v72 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_224A3DFD8((v81 > 1), v82 + 1, 1);
          v72 = v134;
        }

        ++v75;
        *(v72 + 16) = v82 + 1;
        v83 = v72 + 16 * v82;
        *(v83 + 32) = v78;
        *(v83 + 40) = v80;
      }

      while (v62 != v75);
      v73 = v125;
      v61 = v74;
      v44 = v120;
      goto LABEL_40;
    }

    __break(1u);
LABEL_67:
    __break(1u);
  }

  else
  {

    if (v53)
    {
      v65 = v126;
      v64 = v127;
      v66 = v124;
      (v126[2])(v124, v52 + qword_281365438, v127);
      v67 = sub_224DAB228();
      v68 = sub_224DAF268();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        *v69 = 0;
        _os_log_impl(&dword_224A2F000, v67, v68, "Invalidated orphaned host purge timer.", v69, 2u);
        MEMORY[0x22AA5EED0](v69, -1, -1);
      }

      return (v65[1])(v66, v64);
    }
  }

  return result;
}

uint64_t sub_224C2C430(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t *), void (*a4)(uint64_t, char *))
{
  v6 = type metadata accessor for _HostFilterableChange();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v18 = 0;
    v13 = *(result + qword_28135C9F0);
    os_unfair_lock_lock(*(v13 + 16));
    a3(v12, &v18);
    os_unfair_lock_unlock(*(v13 + 16));
    if (v18)
    {
      v14 = *(v18 + 16);
      if (v14)
      {
        v15 = v18 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
        v16 = *(v7 + 72);
        do
        {
          sub_224C4E30C(v15, v10, type metadata accessor for _HostFilterableChange);
          a4(15, v10);
          sub_224C4E374(v10, type metadata accessor for _HostFilterableChange);
          v15 += v16;
          --v14;
        }

        while (v14);
      }
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_224C2C5F0(uint64_t a1, void *a2)
{
  v136 = a2;
  v124 = type metadata accessor for _HostFilterableChange();
  v123 = *(v124 - 8);
  v3 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v135 = &v111[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v113 = *(v142 - 8);
  v5 = v113[8];
  v6 = MEMORY[0x28223BE20](v142);
  v134 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v125 = &v111[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v122 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v128 = &v111[-v14];
  MEMORY[0x28223BE20](v13);
  v145 = &v111[-v15];
  v16 = sub_224DAC378();
  v139 = *(v16 - 8);
  v17 = v139[8];
  v18 = MEMORY[0x28223BE20](v16);
  v127 = &v111[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v111[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v111[-v23];
  v25 = sub_224DAB258();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v130 = &v111[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v30 = &v111[-v29];
  v32 = v31;
  v33 = *(v31 + 16);
  v120 = qword_281365438;
  v131 = v34;
  v119 = v31 + 16;
  v118 = v33;
  (v33)(&v111[-v29], a1 + qword_281365438);
  v35 = sub_224DAB228();
  v36 = sub_224DAF278();
  v37 = os_log_type_enabled(v35, v36);
  v140 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_224A2F000, v35, v36, "Orphaned host purge timer fired", v38, 2u);
    v39 = v38;
    v16 = v140;
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  v40 = *(v32 + 8);
  v121 = v32 + 8;
  v117 = v40;
  v40(v30, v131);
  sub_224DAC338();
  v126 = v24;
  sub_224DAC358();
  v41 = v139 + 1;
  v137 = v139[1];
  v137(v22, v16);
  os_unfair_lock_assert_owner(*(*(a1 + qword_28135C9F0) + 16));
  v42 = qword_28135CA28;
  swift_beginAccess();
  v141 = a1;
  v116 = v42;
  v43 = *(a1 + v42);
  v45 = v43 + 64;
  v44 = *(v43 + 64);
  *&v148 = MEMORY[0x277D84F90];
  v46 = 1 << *(v43 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v44;
  v49 = (v46 + 63) >> 6;
  v138 = v41;
  v146 = v43;
  v147 = (v41 + 5);

  v50 = 0;
  if (v48)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v50;
    if (v48)
    {
      while (1)
      {
        v53 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
        v54 = *(*(v146 + 56) + ((v52 << 9) | (8 * v53)));
        v55 = *(*v54 + 216);
        swift_beginAccess();
        v56 = v54 + v55;
        v57 = v145;
        v42 = &qword_27D6F3948;
        sub_224A3796C(v56, v145, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v147)(v57, 1, v16) == 1)
        {
          sub_224A3311C(v57, &qword_27D6F3948, &qword_224DB5C10);
          v50 = v52;
          if (!v48)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_224A3311C(v57, &qword_27D6F3948, &qword_224DB5C10);
          v42 = &v148;
          sub_224DAF9B8();
          v51 = *(v148 + 16);
          sub_224DAF9F8();
          v16 = v140;
          sub_224DAFA08();
          sub_224DAF9C8();
          v50 = v52;
          if (!v48)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v52 = v50;
      }
    }
  }

  v42 = v148;
  if ((v148 & 0x8000000000000000) == 0 && (v148 & 0x4000000000000000) == 0)
  {
    result = *(v148 + 16);
    goto LABEL_18;
  }

LABEL_53:
  result = sub_224DAF838();
LABEL_18:
  v60 = v128;
  v61 = v127;
  v62 = v126;
  if (result)
  {
    if (result >= 1)
    {
      v63 = 0;
      v115 = (v141 + qword_28135CA30);
      v144 = v42 & 0xC000000000000001;
      v132 = v139 + 4;
      v143 = (v113 + 2);
      v129 = (v113 + 1);
      v114 = v139 + 7;
      *&v58 = 136446210;
      v112 = v58;
      v133 = v42;
      v145 = result;
      while (1)
      {
        if (v144)
        {
          v64 = MEMORY[0x22AA5DCC0](v63, v42);
        }

        else
        {
          v64 = *(v42 + 8 * v63 + 32);
        }

        v65 = *(*v64 + 216);
        swift_beginAccess();
        v146 = v65;
        sub_224A3796C(v64 + v65, v60, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v147)(v60, 1, v16) != 1)
        {
          break;
        }

        sub_224A3311C(v60, &qword_27D6F3948, &qword_224DB5C10);
LABEL_22:
        if (v145 == ++v63)
        {
          goto LABEL_51;
        }
      }

      (*v132)(v61, v60, v16);
      sub_224C41198(&qword_281350DF0, MEMORY[0x277CF9A10]);
      if (sub_224DAEDB8())
      {
        v137(v61, v16);

LABEL_50:
        v42 = v133;
        goto LABEL_22;
      }

      v66 = v130;
      v67 = v131;
      v118(v130, v141 + v120, v131);

      v68 = sub_224DAB228();
      v69 = sub_224DAF2A8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *&v148 = v139;
        *v70 = v112;
        v71 = v125;
        v72 = v142;
        (*v143)(v125, v64 + qword_281365430, v142);
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v73 = sub_224DAFD28();
        v75 = v74;

        (*v129)(v71, v72);
        v76 = sub_224A33F74(v73, v75, &v148);
        v77 = v136;

        *(v70 + 4) = v76;
        _os_log_impl(&dword_224A2F000, v68, v69, "Purging orphaned host: %{public}s", v70, 0xCu);
        v78 = v139;
        __swift_destroy_boxed_opaque_existential_1(v139);
        MEMORY[0x22AA5EED0](v78, -1, -1);
        MEMORY[0x22AA5EED0](v70, -1, -1);

        v117(v130, v131);
        if (*v77)
        {
          goto LABEL_34;
        }
      }

      else
      {

        v117(v66, v67);
        v77 = v136;
        if (*v136)
        {
          goto LABEL_34;
        }
      }

      *v77 = MEMORY[0x277D84F90];
LABEL_34:
      v79 = v135;
      v139 = *v143;
      (v139)(v135, v64 + qword_281365430, v142);
      v80 = *(*v64 + 112);
      swift_beginAccess();
      v81 = v124;
      v82 = *(v124 + 24);
      v83 = sub_224DAA428();
      v84 = *(*(v83 - 8) + 16);
      v84(&v79[v82], v64 + v80, v83);
      v85 = v136;
      v84(&v79[*(v81 + 20)], &v79[v82], v83);
      v86 = *v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v85 = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = sub_224AD9290(0, v86[2] + 1, 1, v86);
        *v85 = v86;
      }

      v88 = v141;
      v90 = v86[2];
      v89 = v86[3];
      v91 = v142;
      if (v90 >= v89 >> 1)
      {
        v86 = sub_224AD9290(v89 > 1, v90 + 1, 1, v86);
        *v136 = v86;
      }

      v86[2] = v90 + 1;
      sub_224C4E3D4(v135, v86 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v90, type metadata accessor for _HostFilterableChange);
      v92 = v122;
      (*v114)(v122, 1, 1, v140);
      v93 = v146;
      swift_beginAccess();
      sub_224A838C0(v92, v64 + v93, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
      v94 = qword_281365430;
      v95 = v134;
      (v139)(v134, v64 + qword_281365430, v91);
      v96 = v116;
      swift_beginAccess();
      v97 = *(v88 + v96);

      v98 = sub_224A683FC(v95);
      v146 = v94;
      if (v99)
      {
        v100 = v98;
        v101 = *(v88 + v96);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v103 = *(v88 + v96);
        v151 = v103;
        *(v88 + v96) = 0x8000000000000000;
        if (!v102)
        {
          sub_224B25090();
          v103 = v151;
        }

        v104 = v113[1];
        v91 = v142;
        v104(*(v103 + 48) + v113[9] * v100, v142);
        v105 = *(*(v103 + 56) + 8 * v100);
        sub_224B31518(v100, v103);
        *(v141 + v96) = v103;
      }

      else
      {
        v104 = *v129;
      }

      v104(v134, v91);
      swift_endAccess();
      if (*(v115 + 3))
      {
        sub_224A3317C(v115, &v148);
        v106 = *(&v149 + 1);
        if (*(&v149 + 1))
        {
LABEL_45:
          v107 = v150;
          __swift_project_boxed_opaque_existential_1(&v148, v106);
          v108 = v125;
          (v139)(v125, v64 + v146, v91);

          (*(v107 + 48))(v108, v106, v107);

          v104(v108, v91);
          v61 = v127;
          v16 = v140;
          v137(v127, v140);
          goto LABEL_48;
        }
      }

      else
      {
        v109 = v115[1];
        v148 = *v115;
        v149 = v109;
        v150 = *(v115 + 4);
        v106 = *(&v109 + 1);
        if (*(&v109 + 1))
        {
          goto LABEL_45;
        }
      }

      v61 = v127;
      v16 = v140;
      v137(v127, v140);
      if (!*(&v149 + 1))
      {
LABEL_49:
        v60 = v128;
        v62 = v126;
        goto LABEL_50;
      }

LABEL_48:
      __swift_destroy_boxed_opaque_existential_1(&v148);
      goto LABEL_49;
    }

    __break(1u);
  }

  else
  {
LABEL_51:

    sub_224C2A790(v110);
    return (v137)(v62, v16);
  }

  return result;
}

uint64_t sub_224C2D62C(uint64_t a1, void *a2)
{
  v136 = a2;
  v124 = type metadata accessor for _HostFilterableChange();
  v123 = *(v124 - 8);
  v3 = *(v123 + 64);
  MEMORY[0x28223BE20](v124);
  v135 = &v111[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v113 = *(v142 - 8);
  v5 = v113[8];
  v6 = MEMORY[0x28223BE20](v142);
  v134 = &v111[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v125 = &v111[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3948, &qword_224DB5C10);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v122 = &v111[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v128 = &v111[-v14];
  MEMORY[0x28223BE20](v13);
  v145 = &v111[-v15];
  v16 = sub_224DAC378();
  v139 = *(v16 - 8);
  v17 = v139[8];
  v18 = MEMORY[0x28223BE20](v16);
  v127 = &v111[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v111[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v111[-v23];
  v25 = sub_224DAB258();
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25);
  v130 = &v111[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v30 = &v111[-v29];
  v32 = v31;
  v33 = *(v31 + 16);
  v120 = qword_281365438;
  v131 = v34;
  v119 = v31 + 16;
  v118 = v33;
  (v33)(&v111[-v29], a1 + qword_281365438);
  v35 = sub_224DAB228();
  v36 = sub_224DAF278();
  v37 = os_log_type_enabled(v35, v36);
  v140 = v16;
  if (v37)
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_224A2F000, v35, v36, "Orphaned host purge timer fired", v38, 2u);
    v39 = v38;
    v16 = v140;
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  v40 = *(v32 + 8);
  v121 = v32 + 8;
  v117 = v40;
  v40(v30, v131);
  sub_224DAC338();
  v126 = v24;
  sub_224DAC358();
  v41 = v139 + 1;
  v137 = v139[1];
  v137(v22, v16);
  os_unfair_lock_assert_owner(*(*(a1 + qword_28135C9F0) + 16));
  v42 = qword_28135CA28;
  swift_beginAccess();
  v141 = a1;
  v116 = v42;
  v43 = *(a1 + v42);
  v45 = v43 + 64;
  v44 = *(v43 + 64);
  *&v148 = MEMORY[0x277D84F90];
  v46 = 1 << *(v43 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & v44;
  v49 = (v46 + 63) >> 6;
  v138 = v41;
  v146 = v43;
  v147 = (v41 + 5);

  v50 = 0;
  if (v48)
  {
    goto LABEL_8;
  }

  while (1)
  {
LABEL_9:
    v52 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
LABEL_51:
      result = sub_224DAF838();
      v60 = v128;
      v61 = v127;
      v62 = v126;
      v145 = result;
      if (!result)
      {
        goto LABEL_52;
      }

LABEL_18:
      if (v145 < 1)
      {
        __break(1u);
        return result;
      }

      v63 = 0;
      v115 = (v141 + qword_28135CA30);
      v144 = v42 & 0xC000000000000001;
      v132 = v139 + 4;
      v143 = (v113 + 2);
      v129 = (v113 + 1);
      v114 = v139 + 7;
      *&v59 = 136446210;
      v112 = v59;
      v133 = v42;
      while (1)
      {
        if (v144)
        {
          v64 = MEMORY[0x22AA5DCC0](v63, v42);
        }

        else
        {
          v64 = *(v42 + 8 * v63 + 32);
        }

        v65 = *(*v64 + 216);
        swift_beginAccess();
        v146 = v65;
        sub_224A3796C(v64 + v65, v60, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v147)(v60, 1, v16) != 1)
        {
          break;
        }

        sub_224A3311C(v60, &qword_27D6F3948, &qword_224DB5C10);
LABEL_21:
        if (v145 == ++v63)
        {
          goto LABEL_52;
        }
      }

      (*v132)(v61, v60, v16);
      sub_224C41198(&qword_281350DF0, MEMORY[0x277CF9A10]);
      if (sub_224DAEDB8())
      {
        v137(v61, v16);

LABEL_49:
        v42 = v133;
        goto LABEL_21;
      }

      v66 = v130;
      v67 = v131;
      v118(v130, v141 + v120, v131);

      v68 = sub_224DAB228();
      v69 = sub_224DAF2A8();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *&v148 = v139;
        *v70 = v112;
        v71 = v125;
        v72 = v142;
        (*v143)(v125, v64 + qword_281365430, v142);
        sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0);
        v73 = sub_224DAFD28();
        v75 = v74;

        (*v129)(v71, v72);
        v76 = sub_224A33F74(v73, v75, &v148);
        v77 = v136;

        *(v70 + 4) = v76;
        _os_log_impl(&dword_224A2F000, v68, v69, "Purging orphaned host: %{public}s", v70, 0xCu);
        v78 = v139;
        __swift_destroy_boxed_opaque_existential_1(v139);
        MEMORY[0x22AA5EED0](v78, -1, -1);
        MEMORY[0x22AA5EED0](v70, -1, -1);

        v117(v130, v131);
        if (*v77)
        {
          goto LABEL_33;
        }
      }

      else
      {

        v117(v66, v67);
        v77 = v136;
        if (*v136)
        {
          goto LABEL_33;
        }
      }

      *v77 = MEMORY[0x277D84F90];
LABEL_33:
      v79 = v135;
      v139 = *v143;
      (v139)(v135, v64 + qword_281365430, v142);
      v80 = *(*v64 + 112);
      swift_beginAccess();
      v81 = v124;
      v82 = *(v124 + 24);
      v83 = sub_224DAA428();
      v84 = *(*(v83 - 8) + 16);
      v84(&v79[v82], v64 + v80, v83);
      v85 = v136;
      v84(&v79[*(v81 + 20)], &v79[v82], v83);
      v86 = *v85;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v85 = v86;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v86 = sub_224AD9290(0, v86[2] + 1, 1, v86);
        *v85 = v86;
      }

      v88 = v141;
      v90 = v86[2];
      v89 = v86[3];
      v91 = v142;
      if (v90 >= v89 >> 1)
      {
        v86 = sub_224AD9290(v89 > 1, v90 + 1, 1, v86);
        *v136 = v86;
      }

      v86[2] = v90 + 1;
      sub_224C4E3D4(v135, v86 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * v90, type metadata accessor for _HostFilterableChange);
      v92 = v122;
      (*v114)(v122, 1, 1, v140);
      v93 = v146;
      swift_beginAccess();
      sub_224A838C0(v92, v64 + v93, &qword_27D6F3948, &qword_224DB5C10);
      swift_endAccess();
      v94 = qword_281365430;
      v95 = v134;
      (v139)(v134, v64 + qword_281365430, v91);
      v96 = v116;
      swift_beginAccess();
      v97 = *(v88 + v96);

      v98 = sub_224A683FC(v95);
      v146 = v94;
      if (v99)
      {
        v100 = v98;
        v101 = *(v88 + v96);
        v102 = swift_isUniquelyReferenced_nonNull_native();
        v103 = *(v88 + v96);
        v151 = v103;
        *(v88 + v96) = 0x8000000000000000;
        if (!v102)
        {
          sub_224B269F8();
          v103 = v151;
        }

        v104 = v113[1];
        v91 = v142;
        v104(*(v103 + 48) + v113[9] * v100, v142);
        v105 = *(*(v103 + 56) + 8 * v100);
        sub_224B31518(v100, v103);
        *(v141 + v96) = v103;
      }

      else
      {
        v104 = *v129;
      }

      v104(v134, v91);
      swift_endAccess();
      if (*(v115 + 3))
      {
        sub_224A3317C(v115, &v148);
        v106 = *(&v149 + 1);
        if (*(&v149 + 1))
        {
LABEL_44:
          v107 = v150;
          __swift_project_boxed_opaque_existential_1(&v148, v106);
          v108 = v125;
          (v139)(v125, v64 + v146, v91);

          (*(v107 + 48))(v108, v106, v107);

          v104(v108, v91);
          v61 = v127;
          v16 = v140;
          v137(v127, v140);
          goto LABEL_47;
        }
      }

      else
      {
        v109 = v115[1];
        v148 = *v115;
        v149 = v109;
        v150 = *(v115 + 4);
        v106 = *(&v109 + 1);
        if (*(&v109 + 1))
        {
          goto LABEL_44;
        }
      }

      v61 = v127;
      v16 = v140;
      v137(v127, v140);

      if (!*(&v149 + 1))
      {
LABEL_48:
        v60 = v128;
        v62 = v126;
        goto LABEL_49;
      }

LABEL_47:
      __swift_destroy_boxed_opaque_existential_1(&v148);
      goto LABEL_48;
    }

    if (v52 >= v49)
    {
      break;
    }

    v48 = *(v45 + 8 * v52);
    ++v50;
    if (v48)
    {
      while (1)
      {
        v53 = __clz(__rbit64(v48));
        v48 &= v48 - 1;
        v54 = *(*(v146 + 56) + ((v52 << 9) | (8 * v53)));
        v55 = *(*v54 + 216);
        swift_beginAccess();
        v56 = v54 + v55;
        v57 = v145;
        v42 = &qword_27D6F3948;
        sub_224A3796C(v56, v145, &qword_27D6F3948, &qword_224DB5C10);
        if ((*v147)(v57, 1, v16) == 1)
        {
          sub_224A3311C(v57, &qword_27D6F3948, &qword_224DB5C10);
          v50 = v52;
          if (!v48)
          {
            goto LABEL_9;
          }
        }

        else
        {

          sub_224A3311C(v57, &qword_27D6F3948, &qword_224DB5C10);
          v42 = &v148;
          sub_224DAF9B8();
          v51 = *(v148 + 16);
          sub_224DAF9F8();
          v16 = v140;
          sub_224DAFA08();
          sub_224DAF9C8();
          v50 = v52;
          if (!v48)
          {
            goto LABEL_9;
          }
        }

LABEL_8:
        v52 = v50;
      }
    }
  }

  v42 = v148;
  if ((v148 & 0x8000000000000000) != 0 || (v148 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  v60 = v128;
  v61 = v127;
  v62 = v126;
  v145 = *(v148 + 16);
  if (v145)
  {
    goto LABEL_18;
  }

LABEL_52:

  sub_224C2B638(v110);
  return (v137)(v62, v16);
}

const char *sub_224C2E688()
{
  type metadata accessor for Daemon();
  v0 = swift_allocObject();
  result = sub_224C2E72C(v0);
  qword_2813651B0 = result;
  return result;
}

uint64_t sub_224C2E6C4()
{
  sub_224DABBE8();
  result = sub_224B31AF8();
  qword_281352030 = result;
  return result;
}

const char *sub_224C2E72C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v1425 - v5;
  v7 = sub_224DAB188();
  v1436 = *(v7 - 8);
  v1437 = v7;
  v8 = *(v1436 + 64);
  MEMORY[0x28223BE20](v7);
  v1438 = &v1425 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DA9688();
  v1428 = *(v10 - 8);
  v11 = *(v1428 + 64);
  MEMORY[0x28223BE20](v10);
  v1435 = &v1425 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1501 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5320, &unk_224DBBAD8);
  v1500 = *(v1501 - 8);
  v13 = *(v1500 + 64);
  MEMORY[0x28223BE20](v1501);
  v1499 = &v1425 - v14;
  v1498 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5328, &unk_224DBBAE0);
  v1497 = *(v1498 - 8);
  v15 = *(v1497 + 64);
  MEMORY[0x28223BE20](v1498);
  v1496 = &v1425 - v16;
  v1495 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5330, &unk_224DBBAE8);
  v1494 = *(v1495 - 8);
  v17 = *(v1494 + 64);
  MEMORY[0x28223BE20](v1495);
  v1493 = &v1425 - v18;
  v1524 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5338, &qword_224DBBAF0);
  v1550 = *(v1524 - 8);
  v19 = *(v1550 + 64);
  MEMORY[0x28223BE20](v1524);
  v1523 = &v1425 - v20;
  v1520 = sub_224DAF3B8();
  v1548 = *(v1520 - 8);
  v21 = *(v1548 + 8);
  MEMORY[0x28223BE20](v1520);
  v1489 = &v1425 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1492 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5120, &unk_224DBAE60);
  v1491 = *(v1492 - 1);
  v23 = *(v1491 + 64);
  MEMORY[0x28223BE20](v1492);
  v1490 = &v1425 - v24;
  v1522 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5348, &unk_224DBBAF8);
  v1549 = *(v1522 - 8);
  v25 = *(v1549 + 64);
  MEMORY[0x28223BE20](v1522);
  v1521 = &v1425 - v26;
  v1559 = sub_224DACE88();
  v1536 = *(v1559 - 8);
  v27 = *(v1536 + 64);
  v28 = MEMORY[0x28223BE20](v1559);
  v1506 = &v1425 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v1532 = &v1425 - v31;
  MEMORY[0x28223BE20](v30);
  v1556 = &v1425 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5350, &unk_224DBBB00);
  v1451 = *(v33 - 8);
  v1452 = v33;
  v34 = *(v1451 + 64);
  MEMORY[0x28223BE20](v33);
  v1450 = (&v1425 - v35);
  v1538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v1537 = *(v1538 - 1);
  v36 = *(v1537 + 64);
  MEMORY[0x28223BE20](v1538);
  v1533 = &v1425 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v1601 = &v1425 - v40;
  v1622 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5360, &unk_224DBBB08);
  v1596 = *(v1622 - 8);
  v41 = *(v1596 + 8);
  MEMORY[0x28223BE20](v1622);
  v1587 = &v1425 - v42;
  v1569 = sub_224DAE688();
  v1567 = *(v1569 - 8);
  v43 = v1567[8];
  v44 = MEMORY[0x28223BE20](v1569);
  v1639 = &v1425 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v1577 = &v1425 - v47;
  MEMORY[0x28223BE20](v46);
  v1529 = &v1425 - v48;
  v1555 = sub_224DAE918();
  v1576 = *(v1555 - 8);
  v49 = *(v1576 + 8);
  MEMORY[0x28223BE20](v1555);
  v1539 = &v1425 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1618 = sub_224DAF3C8();
  v1617 = *(v1618 - 1);
  v51 = v1617[8];
  MEMORY[0x28223BE20](v1618);
  v1607 = &v1425 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1605 = sub_224DAF318();
  v53 = *(*(v1605 - 8) + 64);
  MEMORY[0x28223BE20](v1605);
  v1606 = &v1425 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_224DAB848();
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55 - 8);
  v1616 = (&v1425 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  v59 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58 - 8);
  v1613 = (&v1425 - v60);
  v61 = sub_224DAB258();
  v1602 = *(v61 - 8);
  v62 = v1602[8];
  v63 = MEMORY[0x28223BE20](v61);
  v1597 = &v1425 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = MEMORY[0x28223BE20](v63);
  v1641 = (&v1425 - v66);
  v67 = MEMORY[0x28223BE20](v65);
  v1585 = &v1425 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v1632 = (&v1425 - v70);
  MEMORY[0x28223BE20](v69);
  v1637 = (&v1425 - v71);
  v1643 = sub_224DAA5C8();
  v1644 = *(v1643 - 1);
  v72 = *(v1644 + 8);
  MEMORY[0x28223BE20](v1643);
  v1642 = (&v1425 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = sub_224DABFF8();
  v75 = *(v74 - 8);
  v76 = *(v75 + 64);
  MEMORY[0x28223BE20](v74);
  v78 = &v1425 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 920) = MEMORY[0x277D84FA0];
  *(v1 + 1008) = 0;
  *(v1 + 928) = 0u;
  BSDispatchQueueAssertMain();
  v1474 = type metadata accessor for PowerMonitor();
  swift_allocObject();
  *(v1 + 1016) = sub_224AC3368();
  sub_224DAA658();
  v1586 = sub_224DAA1A8();
  v1640 = sub_224DAA198();
  v79 = [objc_opt_self() extendAutomaticBootstrapCompletion];
  v80 = *(v1 + 928);
  *(v1 + 928) = v79;
  swift_unknownObjectRelease();
  v1574 = sub_224DA9E78();
  sub_224DA9E68();

  v81 = type metadata accessor for ChronodPreferences();
  swift_allocObject();
  v82 = sub_224CB9730();
  v1619 = v81;
  *(v1 + 984) = v81;
  *(v1 + 992) = &off_283832100;
  *(v1 + 960) = v82;
  result = [objc_opt_self() sharedManager];
  if (result)
  {
    v84 = result;
    v1426 = v10;
    v1427 = v6;
    v1638 = v61;
    v85 = type metadata accessor for UserManager();
    v86 = swift_allocObject();
    *(v86 + 16) = v84;
    v1631 = v85;
    *(v2 + 84) = v85;
    *(v2 + 85) = &off_283830960;
    *(v2 + 81) = v86;
    *(v2 + 86) = [objc_opt_self() sharedManager];
    v87 = sub_224DADAF8();
    v88 = *MEMORY[0x277CF9948];
    v89 = *(v75 + 104);
    v89(v78, v88, v74);
    v1614 = v87;
    *(v2 + 72) = sub_224DADAE8();
    v90 = sub_224DADCF8();
    v89(v78, v88, v74);
    v1611 = v90;
    *(v2 + 73) = sub_224DADCE8();
    v91 = sub_224DAD878();
    v1485 = v88;
    v1487 = v75 + 104;
    v1488 = v74;
    v1484 = v89;
    v89(v78, v88, v74);
    v1486 = v78;
    v92 = sub_224DAD868();
    *(v2 + 77) = v91;
    *(v2 + 78) = MEMORY[0x277CF9D48];
    *(v2 + 74) = v92;
    sub_224DAA4E8();
    sub_224DAA4D8();
    sub_224A3317C(v1796, (v2 + 312));
    v93 = sub_224DAD2E8();
    sub_224A3317C((v2 + 312), &v1660);
    v1581 = v93;
    v1630 = sub_224DAD2D8();
    if (qword_281352020 == -1)
    {
      goto LABEL_3;
    }

    while (1)
    {
      swift_once();
LABEL_3:
      v94 = qword_281352030;
      v95 = sub_224DADB18();
      swift_retain_n();
      v96 = sub_224DADB08();
      v97 = sub_224DAC958();
      v1662 = MEMORY[0x277CF9DC0];
      *(&v1661 + 1) = v95;
      *&v1660 = v96;
      v1473 = v96;

      v1575 = v97;
      v1584 = sub_224DAC948();
      v98 = sub_224DAD1C8();

      v1433 = v98;
      v99 = sub_224DAD1D8();
      v100 = type metadata accessor for RemoteWidgetExtensionService();
      v101 = swift_allocObject();

      v1531 = v99;
      v103 = sub_224C4A6FC(v102, v101);
      *(v2 + 101) = v100;
      v1434 = sub_224C41198(&qword_281353CB0, type metadata accessor for RemoteWidgetExtensionService);
      *(v2 + 102) = v1434;
      *(v2 + 98) = v103;
      v104 = sub_224DAC3C8();
      v105 = objc_opt_self();

      v1483 = "22WidgetRelevanceService";
      v106 = sub_224DAEDE8();
      v1551 = v105;
      v107 = [v105 serialQueueTargetingSharedWorkloop_];

      v1505 = v100;
      *(&v1661 + 1) = v100;
      v1662 = sub_224C41198(&unk_281353CB8, type metadata accessor for RemoteWidgetExtensionService);
      *&v1660 = v103;

      v108 = sub_224DAC398();
      v1662 = MEMORY[0x277CF9A40];
      *(&v1661 + 1) = v104;
      *&v1660 = v108;
      swift_beginAccess();
      v109 = v108;
      v1558 = v103;
      sub_224A838C0(&v1660, v103 + 104, &unk_27D6F5370, &unk_224DB97D0);
      swift_endAccess();
      sub_224DAE608();
      *(&v1661 + 1) = v104;
      v1662 = sub_224C41198(&unk_281350D88, MEMORY[0x277CF9A48]);
      *&v1660 = v109;
      v110 = v109;
      sub_224DAE5F8();
      v111 = sub_224DADF58();
      v112 = MEMORY[0x277CF9A38];
      v1662 = MEMORY[0x277CF9A38];
      *(&v1661 + 1) = v104;
      *&v1660 = v110;
      sub_224A3317C((v2 + 312), &v1720);
      v113 = v110;
      v114 = sub_224DADF48();
      v1636 = v2;
      *(v2 + 2) = v114;
      v115 = v2 + 16;
      v116 = MEMORY[0x277CF9E58];
      v1552 = v111;
      v115[3] = v111;
      v115[4] = v116;
      v117 = sub_224DAD528();
      v1662 = v112;
      v1634 = v104;
      *(&v1661 + 1) = v104;
      *&v1660 = v113;
      v118 = v113;
      v1563 = v117;
      v115[77] = sub_224DAD518();
      sub_224DADB98();
      v119 = sub_224DADB88();
      v1612 = v115;
      v115[78] = v119;
      sub_224DADC78();
      swift_retain_n();
      v120 = sub_224DADC68();
      v1629 = v118;
      v121 = sub_224C4159C(v1629);
      v122 = *MEMORY[0x277CFA0D8];
      v123 = v1644;
      v124 = *(v1644 + 13);
      v125 = v1642;
      v126 = v1643;
      v1628 = v1644 + 104;
      v1627 = v124;
      v124(v1642, v122, v1643);
      v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5380, &unk_224DBBB10);
      v128 = *(v127 + 48);
      v129 = *(v127 + 52);
      v130 = swift_allocObject();
      v1624 = type metadata accessor for UnfairLock();
      v131 = swift_allocObject();
      v132 = swift_slowAlloc();
      *v132 = 0;
      *(v131 + 16) = v132;
      *(v130 + 16) = v131;
      *(v130 + 24) = v94;
      v1579 = v94;
      v133 = *(v123 + 4);
      v1644 = (v123 + 32);
      v1623 = v133;
      (v133)(v130 + qword_281351C60, v125, v126);
      *&v1721[8] = v127;
      *&v1721[16] = sub_224A33088(&unk_281351BD8, &unk_27D6F5380, &unk_224DBBB10);
      *&v1720 = v130;
      v134 = type metadata accessor for LocationService(0);
      v1775 = &off_2838352C0;
      v1621 = v134;
      v1774 = v134;
      v1773[0] = v121;
      v1770 = MEMORY[0x277CFA010];
      *(&v1769 + 1) = v1586;
      v135 = v1640;
      *&v1768 = v1640;
      v136 = qword_281351690;
      v1528 = v120;

      v1472 = v130;

      v1625 = v121;

      v1620 = v135;
      if (v136 != -1)
      {
        swift_once();
      }

      v137 = v1638;
      v138 = __swift_project_value_buffer(v1638, qword_2813650F0);
      v139 = (v1602 + 2);
      v140 = v1602[2];
      v141 = v1637;
      v140(v1637, v138, v137);
      v142 = type metadata accessor for WidgetHostService();
      v143 = *(v142 + 48);
      v144 = *(v142 + 52);
      v1626 = v142;
      v145 = swift_allocObject();
      v146 = qword_28135A7E0;
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
      v148 = *(v147 + 12);
      v149 = *(v147 + 26);
      swift_allocObject();
      *(v145 + v146) = sub_224DAB358();
      v150 = v145 + qword_28135A7E8;
      *(v150 + 32) = 0;
      *v150 = 0u;
      *(v150 + 16) = 0u;
      v1635 = v140;
      v140(v1632, v141, v137);
      if (*&v1721[8])
      {
        sub_224A3317C(&v1720, &v1660);
      }

      else
      {
        v1660 = v1720;
        v1661 = *v1721;
        v1662 = *&v1721[16];
      }

      sub_224A3796C(v1773, &v1739, &qword_27D6F4200, &unk_224DB5FC0);
      sub_224A3796C(&v1768, v1731, &unk_27D6F53A0, &qword_224DC1A80);
      v151 = qword_28135CA10;
      v152 = *(v147 + 12);
      v153 = *(v147 + 26);
      swift_allocObject();
      *(v145 + v151) = sub_224DAB358();
      v154 = qword_28135CA00;
      v155 = *(v147 + 12);
      v156 = *(v147 + 26);
      swift_allocObject();
      *(v145 + v154) = sub_224DAB358();
      v157 = qword_28135C9F8;
      v158 = *(v147 + 12);
      v159 = *(v147 + 26);
      swift_allocObject();
      *(v145 + v157) = sub_224DAB358();
      v160 = qword_28135CA08;
      v161 = *(v147 + 12);
      v162 = *(v147 + 26);
      swift_allocObject();
      *(v145 + v160) = sub_224DAB358();
      v163 = qword_28135C9F0;
      v164 = swift_allocObject();
      v165 = swift_slowAlloc();
      *v165 = 0;
      *(v145 + v163) = v164;
      *(v145 + qword_28135CA28) = MEMORY[0x277D84F98];
      *(v164 + 16) = v165;
      *(v145 + qword_28135CA40) = 0;
      *(v145 + qword_28135CA20) = 2000000000;
      v1635(v145 + qword_281365438, v1632, v137);
      v166 = v145 + qword_28135CA30;
      v1633 = v139;
      if (*(&v1661 + 1))
      {
        sub_224A3317C(&v1660, v166);
      }

      else
      {
        v167 = v1661;
        *v166 = v1660;
        *(v166 + 16) = v167;
        *(v166 + 32) = v1662;
      }

      sub_224A3796C(&v1739, v145 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
      v168 = sub_224A3796C(v1731, v145 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
      MEMORY[0x28223BE20](v168);
      v1423 = &v1660;
      v1424 = v145;
      v1640 = v145;
      sub_224C2A634(sub_224C4CEAC);
      sub_224A3311C(v1731, &unk_27D6F53A0, &qword_224DC1A80);
      sub_224A3311C(&v1739, &qword_27D6F4200, &unk_224DB5FC0);
      v169 = v1602[1];
      isEscapingClosureAtFileLocation = v1638;
      v1593 = v1602 + 1;
      v1592 = v169;
      v169(v1632, v1638);
      if (*(&v1661 + 1))
      {
        __swift_destroy_boxed_opaque_existential_1(&v1660);
      }

      v171 = v1640;

      sub_224A68420(&v1660);
      v1615 = 0;
      if (v1663)
      {
        if (qword_281356838 != -1)
        {
          goto LABEL_185;
        }

        goto LABEL_15;
      }

      sub_224A3311C(&v1768, &unk_27D6F53A0, &qword_224DC1A80);
      sub_224A3311C(v1773, &qword_27D6F4200, &unk_224DB5FC0);
      if (*&v1721[8])
      {
        __swift_destroy_boxed_opaque_existential_1(&v1720);
      }

      v1592(v141, isEscapingClosureAtFileLocation);
      sub_224A3311C(&v1660, &qword_27D6F50E0, &qword_224DB41A0);
      while (1)
      {
        v177 = v1642;
        v178 = v1643;
        v1627(v1642, *MEMORY[0x277CFA0E0], v1643);
        v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53B0, &unk_224DBBB18);
        v180 = *(v179 + 48);
        v181 = *(v179 + 52);
        v182 = swift_allocObject();
        v183 = swift_allocObject();
        v184 = v1579;

        v185 = swift_slowAlloc();
        *v185 = 0;
        *(v183 + 16) = v185;
        *(v182 + 16) = v183;
        *(v182 + 24) = v184;
        (v1623)(v182 + qword_281351C60, v177, v178);
        *(&v1661 + 1) = v179;
        v1662 = sub_224A33088(&unk_281351BC8, &unk_27D6F53B0, &unk_224DBBB18);
        *&v1660 = v182;
        *&v1721[16] = &off_2838352C0;
        *&v1721[8] = v1621;
        *&v1720 = v1625;
        v1775 = MEMORY[0x277CFA010];
        v1774 = v1586;
        v186 = v1620;
        v1773[0] = v1620;
        v187 = qword_281351688;

        v1644 = v186;
        v1471 = v182;

        if (v187 != -1)
        {
          swift_once();
        }

        v188 = v1638;
        v189 = __swift_project_value_buffer(v1638, qword_2813650D8);
        v190 = v1632;
        v191 = v1635;
        v1635(v1632, v189, v188);
        v192 = type metadata accessor for ControlHostService();
        v193 = *(v192 + 12);
        v194 = *(v192 + 26);
        v1600 = v192;
        v195 = swift_allocObject();
        v191(v1585, v190, v188);
        if (*(&v1661 + 1))
        {
          sub_224A3317C(&v1660, &v1768);
        }

        else
        {
          v1768 = v1660;
          v1769 = v1661;
          v1770 = v1662;
        }

        v196 = v1640;
        sub_224A3796C(&v1720, &v1739, &qword_27D6F4200, &unk_224DB5FC0);
        sub_224A3796C(v1773, v1731, &unk_27D6F53A0, &qword_224DC1A80);
        v197 = qword_28135CA10;
        v198 = *(v147 + 12);
        v199 = *(v147 + 26);
        swift_allocObject();
        *(v195 + v197) = sub_224DAB358();
        v200 = qword_28135CA00;
        v201 = *(v147 + 12);
        v202 = *(v147 + 26);
        swift_allocObject();
        *(v195 + v200) = sub_224DAB358();
        v203 = qword_28135C9F8;
        v204 = *(v147 + 12);
        v205 = *(v147 + 26);
        swift_allocObject();
        *(v195 + v203) = sub_224DAB358();
        v206 = qword_28135CA08;
        v207 = *(v147 + 12);
        v208 = *(v147 + 26);
        swift_allocObject();
        *(v195 + v206) = sub_224DAB358();
        v209 = qword_28135C9F0;
        v210 = swift_allocObject();
        v211 = swift_slowAlloc();
        *v211 = 0;
        *(v210 + 16) = v211;
        *(v195 + v209) = v210;
        *(v195 + qword_28135CA28) = MEMORY[0x277D84F98];
        *(v195 + qword_28135CA40) = 0;
        *(v195 + qword_28135CA20) = 2000000000;
        v1635(v195 + qword_281365438, v1585, v188);
        v212 = v195 + qword_28135CA30;
        if (*(&v1769 + 1))
        {
          sub_224A3317C(&v1768, v212);
        }

        else
        {
          v213 = v1769;
          *v212 = v1768;
          *(v212 + 16) = v213;
          *(v212 + 32) = v1770;
        }

        sub_224A3796C(&v1739, v195 + qword_28135CA38, &qword_27D6F4200, &unk_224DB5FC0);
        v214 = sub_224A3796C(v1731, v195 + qword_28135CA18, &unk_27D6F53A0, &qword_224DC1A80);
        MEMORY[0x28223BE20](v214);
        v1423 = &v1768;
        v1424 = v195;
        sub_224C2A634(sub_224C4CEC8);
        sub_224A3311C(v1731, &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3311C(&v1739, &qword_27D6F4200, &unk_224DB5FC0);
        v215 = v1638;
        v216 = v1592;
        v1592(v1585, v1638);
        v216(v1632, v215);
        sub_224A3311C(v1773, &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3311C(&v1720, &qword_27D6F4200, &unk_224DB5FC0);
        if (*(&v1661 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v1660);
        }

        v217 = MEMORY[0x277D84F98];
        if (*(&v1769 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v1768);
        }

        v1608 = sub_224DACE58();
        v1613 = sub_224DACE48();
        v218 = [objc_allocWithZone(MEMORY[0x277D21530]) init];
        v1795[3] = &type metadata for IntentProvider;
        v1795[4] = &off_283830C50;
        v1795[0] = v218;
        v219 = type metadata accessor for NowPlayingObserver();
        v220 = *(v219 + 48);
        v221 = *(v219 + 52);
        swift_allocObject();
        v222 = sub_224C6CFA8();
        v1482 = type metadata accessor for KeepAliveAssertionProvider();
        v223 = swift_allocObject();
        *(v223 + 16) = v217;
        *(v223 + 24) = 0;
        type metadata accessor for DefaultCarouselSessionInterface();
        v224 = swift_allocObject();
        v1662 = &off_283830C60;
        *(&v1661 + 1) = v219;
        *&v1660 = v222;
        v1583 = type metadata accessor for ProcessMonitor();
        v225 = objc_allocWithZone(v1583);
        v226 = *(&v1661 + 1);
        v227 = __swift_mutable_project_boxed_opaque_existential_1(&v1660, *(&v1661 + 1));
        v228 = *(*(v226 - 8) + 64);
        MEMORY[0x28223BE20](v227);
        v230 = (&v1425 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v231 + 16))(v230);
        v232 = *v230;
        v233 = v1629;

        v1627 = v195;
        v1546 = v223;
        v234 = sub_224C4983C(v196, v195, v233, v223, v224, v232, v225);
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v235 = v233;
        v236 = v1625;

        v237 = v234;
        v1591 = sub_224C42080(v235, v237, v236);
        type metadata accessor for FocusConfigurationMonitor();
        v238 = swift_allocObject();
        v1615 = v235;
        v1590 = sub_224C48F4C(v1615, v238);
        v239 = sub_224C4B868();
        v240 = objc_opt_self();
        swift_retain_n();
        v241 = [v240 sharedScheduler];
        v242 = [objc_opt_self() standardUserDefaults];
        v243 = type metadata accessor for DuetWidgetConfigurationManager();
        v244 = swift_allocObject();
        v245 = sub_224C48244(v241, v196, v242, v244);

        *(v1636 + 114) = v245;
        v1623 = v239;
        v1470 = v222;
        v1628 = v237;
        v1620 = v240;
        if (v239)
        {
          v246 = sub_224DAAD68();
          v239 = MEMORY[0x277D466B0];
        }

        else
        {
          v246 = 0;
        }

        v1662 = &off_2838320A0;
        *(&v1661 + 1) = v243;
        *&v1660 = v245;
        v247 = type metadata accessor for DuetTaskActivitySchedulingProvider();
        v248 = swift_allocObject();
        v249 = __swift_mutable_project_boxed_opaque_existential_1(&v1660, v243);
        v250 = *(*(v243 - 8) + 64);
        MEMORY[0x28223BE20](v249);
        v252 = (&v1425 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v253 + 16))(v252);
        v254 = *v252;
        v248[10] = v243;
        v248[11] = &off_2838320A0;
        v248[2] = v1623;
        v248[3] = 0;
        v248[4] = 0;
        v248[5] = v246;
        v248[6] = v239;
        v248[7] = v254;

        __swift_destroy_boxed_opaque_existential_1(&v1660);

        v255 = v1630;

        sub_224DAD2C8();
        sub_224A3317C((v1636 + 648), &v1720);
        v256 = sub_224DAEDE8();
        v1642 = [v1551 serialQueueTargetingSharedWorkloop_];

        v257 = *&v1721[8];
        v258 = __swift_mutable_project_boxed_opaque_existential_1(&v1720, *&v1721[8]);
        v1643 = &v1425;
        v259 = *(*(v257 - 8) + 64);
        MEMORY[0x28223BE20](v258);
        v261 = (&v1425 - ((v260 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v262 + 16))(v261);
        v263 = *v261;
        v1775 = &off_28382E1F8;
        v1774 = v247;
        v1773[0] = v248;
        v1770 = &off_283830960;
        v264 = v1631;
        *(&v1769 + 1) = v1631;
        *&v1768 = v263;
        v1743 = MEMORY[0x277CF9C38];
        v1742 = v1608;
        v1739 = v1613;
        sub_224A3317C(v1773, v1731);
        sub_224A3317C(&v1739, &v1655);
        sub_224A3317C(&v1660, &v1651);
        sub_224A3317C(&v1768, &v1645);
        v265 = v1647;
        v266 = __swift_mutable_project_boxed_opaque_existential_1(&v1645, v1647);
        v1637 = &v1425;
        v267 = *(*(v265 - 1) + 64);
        MEMORY[0x28223BE20](v266);
        v269 = (&v1425 - ((v268 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v270 + 16))(v269);
        v271 = *v269;
        *(&v1793 + 1) = v1581;
        v1794 = MEMORY[0x277CF9C88];
        *&v1792 = v255;
        v1791 = &off_283830960;
        v1790 = v264;
        *&v1788 = v271;
        v272 = type metadata accessor for TaskActivityScheduler();
        v273 = objc_allocWithZone(v272);
        v274 = v1790;
        v275 = __swift_mutable_project_boxed_opaque_existential_1(&v1788, v1790);
        v1629 = &v1425;
        v276 = *(*(v274 - 1) + 64);
        MEMORY[0x28223BE20](v275);
        v278 = (&v1425 - ((v277 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v279 + 16))(v278);
        v280 = *v278;
        v1787 = &off_283830960;
        v1786 = v264;
        *&v1784 = v280;
        v281 = OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock;
        v282 = swift_allocObject();
        swift_retain_n();

        v283 = swift_slowAlloc();
        *v283 = 0;
        *(v282 + 16) = v283;
        *&v273[v281] = v282;
        *&v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_activityStore] = MEMORY[0x277D84F98];
        v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_completedMigration] = 0;
        *&v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_enqueueActivityBlocksWaitingForMigration] = MEMORY[0x277D84F90];
        sub_224A3317C(&v1784, &v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__lock_userManager]);
        sub_224A3317C(&v1655, &v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__systemDataMigrator]);
        sub_224A3317C(&v1792, &v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__dataProtectionMonitor]);
        sub_224A3317C(&v1651, &v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__keybagProvider]);
        v284 = v1642;
        *&v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProviderQueue] = v1642;
        sub_224A3317C(v1731, &v273[OBJC_IVAR____TtC10ChronoCore21TaskActivityScheduler__schedulingProvider]);
        v1783.receiver = v273;
        v1783.super_class = v272;
        v285 = v284;
        v286 = objc_msgSendSuper2(&v1783, sel_init);
        sub_224AD2404();
        v1469 = v248;

        __swift_destroy_boxed_opaque_existential_1(&v1651);
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(v1731);
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        __swift_destroy_boxed_opaque_existential_1(&v1739);
        __swift_destroy_boxed_opaque_existential_1(&v1768);
        __swift_destroy_boxed_opaque_existential_1(v1773);
        __swift_destroy_boxed_opaque_existential_1(&v1792);
        __swift_destroy_boxed_opaque_existential_1(&v1784);
        __swift_destroy_boxed_opaque_existential_1(&v1788);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        v287 = type metadata accessor for _DuetBudgetServiceImpl();
        v288 = swift_allocObject();
        result = [objc_opt_self() sharedScheduler];
        if (!result)
        {
          goto LABEL_188;
        }

        *(v288 + 16) = result;
        *(v288 + 24) = [v1620 sharedScheduler];
        *&v1721[16] = &off_283829278;
        *&v1721[8] = v272;
        *&v1720 = v286;
        v1775 = MEMORY[0x277CF9A38];
        v1774 = v1634;
        v289 = v1615;
        v1773[0] = v1615;
        *(&v1661 + 1) = v1583;
        v1662 = &off_28382AA58;
        v1663 = sub_224C41198(&unk_28135B710, type metadata accessor for ProcessMonitor);
        v290 = v1628;
        *&v1660 = v1628;
        v291 = *(v1636 + 72);
        v292 = v1636;
        *(&v1769 + 1) = v1614;
        v1770 = sub_224C41198(&unk_281350CA8, MEMORY[0x277CF9DB8]);
        *&v1768 = v291;
        v293 = *(v292 + 73);
        v1742 = v1611;
        v1743 = sub_224C41198(&unk_281350CA0, MEMORY[0x277CF9DE8]);
        v1739 = v293;
        v1733 = &off_283830A00;
        v1480 = v287;
        v1732 = v287;
        v1731[0] = v288;
        v1656 = v1626;
        v1620 = sub_224C41198(&qword_28135A7C8, type metadata accessor for WidgetHostService);
        v1657 = v1620;
        *&v1655 = v1640;
        v294 = objc_allocWithZone(type metadata accessor for TaskSessionQueuePool());
        v1642 = v289;

        v1611 = v290;
        v1468 = v286;

        v1562 = v288;

        v1643 = [v294 init];
        v1629 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53C0, &qword_224DBBB20);
        v295 = objc_allocWithZone(v1629);
        v296 = MEMORY[0x277D85000];
        v297 = *((*MEMORY[0x277D85000] & *v295) + 0x88);
        v298 = swift_allocObject();
        v299 = swift_slowAlloc();
        *v299 = 0;
        *(v298 + 16) = v299;
        *(v295 + v297) = v298;
        v300 = MEMORY[0x277D84F98];
        *(v295 + *((*v296 & *v295) + 0x90)) = MEMORY[0x277D84F98];
        *(v295 + *((*v296 & *v295) + 0xA0)) = v300;
        *(v295 + *((*v296 & *v295) + 0xB8)) = v300;
        v1637 = *((*v296 & *v295) + 0xC0);
        v1631 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
        v1628 = "activityScheduler";
        sub_224DAB828();
        *&v1651 = MEMORY[0x277D84F90];
        v1615 = sub_224C41198(&qword_281350A88, MEMORY[0x277D85230]);
        v1604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
        v1614 = sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
        sub_224DAF788();
        v301 = (v1617 + 13);
        v302 = v1617[13];
        v303 = v1607;
        v1553 = *MEMORY[0x277D85260];
        v302(v1607);
        v1603 = v302;
        *(v1637 + v295) = sub_224DAF418();
        v1637 = *((*MEMORY[0x277D85000] & *v295) + 0xC8);
        v1628 = "tasksession.callout)";
        sub_224DAB7F8();
        LODWORD(v1568) = *MEMORY[0x277D85268];
        v302(v303);
        *&v1651 = MEMORY[0x277D84F90];
        sub_224DAF788();
        *(v1637 + v295) = sub_224DAF418();
        v1637 = *((*MEMORY[0x277D85000] & *v295) + 0xD0);
        v1628 = "tasksession.completion";
        sub_224DAB828();
        v1617 = v301;
        v1603(v303, v1568, v1618);
        *&v1651 = MEMORY[0x277D84F90];
        sub_224DAF788();
        *(v1637 + v295) = sub_224DAF418();
        v304 = MEMORY[0x277D85000];
        *(v295 + *((*MEMORY[0x277D85000] & *v295) + 0xE8)) = 0;
        v305 = *((*v304 & *v295) + 0xF0);
        v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F53D0, &qword_224DB56A8);
        v307 = *(v306 + 48);
        v308 = *(v306 + 52);
        swift_allocObject();
        *(v295 + v305) = sub_224DAB358();
        *(v295 + *((*v304 & *v295) + 0xF8)) = 0;
        sub_224A3317C(v1773, v295 + *((*v304 & *v295) + 0x70));
        sub_224B44674(&v1660, v295 + *((*v304 & *v295) + 0x68));
        sub_224A3317C(&v1768, v295 + *((*v304 & *v295) + 0xD8));
        sub_224A3317C(&v1739, v295 + *((*v304 & *v295) + 0xE0));
        v309 = v1642;
        *(v295 + *((*v304 & *v295) + 0x60)) = v1642;
        sub_224A3317C(&v1655, v295 + *((*v304 & *v295) + 0x80));
        sub_224A3317C(&v1720, v295 + *((*v304 & *v295) + 0xA8));
        v310 = v1643;
        *(v295 + *((*v304 & *v295) + 0xB0)) = v1643;
        sub_224A3317C(v1731, v295 + *((*v304 & *v295) + 0x78));
        type metadata accessor for PendingTaskCollection();
        v311 = swift_allocObject();
        v312 = MEMORY[0x277D84F98];
        v311[2] = MEMORY[0x277D84F98];
        v311[3] = v312;
        v311[4] = v312;
        v311[5] = v312;
        *(v295 + *((*v304 & *v295) + 0x98)) = v311;
        v1782.receiver = v295;
        v1782.super_class = v1629;
        v313 = v310;
        v314 = objc_msgSendSuper2(&v1782, sel_init);
        type metadata accessor for WatchdoggingTaskTracker();
        v315 = swift_allocObject();
        v316 = v314;
        sub_224C411E0(v316, 0, v315);
        v318 = v317;

        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(v1731);
        __swift_destroy_boxed_opaque_existential_1(&v1739);
        __swift_destroy_boxed_opaque_existential_1(&v1768);
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        __swift_destroy_boxed_opaque_existential_1(v1773);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        v319 = *((*v304 & *v316) + 0xE8);
        v320 = *&v316[v319];
        *&v316[v319] = v318;
        v1643 = v316;

        v1582 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53D8, &unk_224DBBB28);
        v321 = MEMORY[0x277CF9A40];
        v1662 = MEMORY[0x277CF9A40];
        v322 = v1634;
        *(&v1661 + 1) = v1634;
        *&v1660 = v309;
        v323 = sub_224DAC268();
        sub_224DAC1F8();
        sub_224C41198(&unk_281350E30, MEMORY[0x277CF9978]);
        v324 = v309;
        v1541 = v323;
        v325 = sub_224DADF98();
        v326 = MEMORY[0x22AA5C2F0](0xD000000000000010, 0x8000000224DC4760, &v1660, v325);
        v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53E8, &unk_224DBBB30);
        v1662 = v321;
        *(&v1661 + 1) = v322;
        *&v1660 = v324;
        sub_224DAC2B8();
        sub_224DAC278();
        sub_224C41198(&unk_281350E00, MEMORY[0x277CF99B8]);
        v328 = v324;
        v329 = sub_224DADF98();
        v1481 = "d.anonymous-control-host";
        v1547 = v327;
        v1578 = MEMORY[0x22AA5C2F0](0xD000000000000010, 0x8000000224DC4760, &v1660, v329);
        v330 = sub_224DADFC8();
        v331 = MEMORY[0x277CF9A38];
        v1662 = MEMORY[0x277CF9A38];
        *(&v1661 + 1) = v322;
        *&v1660 = v328;
        v332 = v328;
        v333 = v1539;
        sub_224DAE908();
        v334 = sub_224DADFB8();
        v1662 = v331;
        *(&v1661 + 1) = v322;
        *&v1660 = v332;
        v1642 = v332;
        v335 = v1529;
        sub_224DAE678();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v336 = (v1567 + 2);
        v337 = v1567[2];
        v338 = v1577;
        v339 = v1569;
        (v337)(v1577, v335, v1569);
        v340 = sub_224DAC9B8();
        *(&v1661 + 1) = v1582;
        v1564 = sub_224A33088(&unk_281350C88, &unk_27D6F53D8, &unk_224DBBB28);
        v1662 = v1564;
        *&v1660 = v326;
        *&v1721[16] = MEMORY[0x277CF9E70];
        v1580 = v330;
        *&v1721[8] = v330;
        *&v1720 = v334;
        v1565 = v326;

        v1589 = v334;

        sub_224DAC988();
        v1637 = v340;
        v341 = sub_224DAC978();
        v1573 = v336;
        v1560 = v337;
        (v337)(v1639, v338, v339);
        sub_224DAC998();
        v342 = sub_224DADA78();
        v343 = *(v1576 + 13);
        LODWORD(v1478) = *MEMORY[0x277CE3D68];
        v1576 = (v1576 + 104);
        v1477 = v343;
        v343(v333);

        v344 = sub_224DADA88();
        v1662 = MEMORY[0x277CF9DA0];
        v1479 = v342;
        *(&v1661 + 1) = v342;
        *&v1660 = v344;
        sub_224DAC2C8();
        v1557 = v341;

        sub_224A3317C(v1796, &v1660);
        v345 = v1636;
        sub_224A3317C((v1636 + 960), &v1720);
        v1775 = MEMORY[0x277CFA010];
        v1774 = v1586;
        v1773[0] = v1644;
        sub_224A3317C((v345 + 648), &v1768);
        v346 = *&v1721[8];
        v347 = __swift_mutable_project_boxed_opaque_existential_1(&v1720, *&v1721[8]);
        v1610 = &v1425;
        v348 = *(*(v346 - 8) + 64);
        MEMORY[0x28223BE20](v347);
        v350 = (&v1425 - ((v349 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v351 + 16))(v350);
        v352 = *v350;
        v1743 = MEMORY[0x277CF9A38];
        v1742 = v1634;
        v1739 = v1642;
        v1733 = &off_28382A480;
        v1732 = v1629;
        v1731[0] = v1643;
        v1657 = v1620;
        v1656 = v1626;
        *&v1655 = v1640;
        v1653 = v1600;
        v1588 = sub_224C41198(&qword_28135A010, type metadata accessor for ControlHostService);
        v1654 = v1588;
        *&v1651 = v1627;
        v1647 = v1505;
        v1648 = sub_224C41198(&unk_281353CC0, type metadata accessor for RemoteWidgetExtensionService);
        *&v1645 = v1558;
        *(&v1793 + 1) = &type metadata for DescriptorIntentResolver;
        v1794 = &off_28382D598;
        *&v1792 = swift_allocObject();
        sub_224C4CEE4(v1795, v1792 + 16);
        v1791 = &off_283832100;
        v353 = v1619;
        v1790 = v1619;
        *&v1788 = v352;
        v1628 = type metadata accessor for DescriptorService();
        v354 = objc_allocWithZone(v1628);
        v355 = *(&v1793 + 1);
        v356 = __swift_mutable_project_boxed_opaque_existential_1(&v1792, *(&v1793 + 1));
        *&v1609 = &v1425;
        v357 = *(*(v355 - 8) + 64);
        MEMORY[0x28223BE20](v356);
        v359 = &v1425 - ((v358 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v360 + 16))(v359);
        v361 = v1790;
        v362 = __swift_mutable_project_boxed_opaque_existential_1(&v1788, v1790);
        v1599 = &v1425;
        v363 = *(*(v361 - 1) + 64);
        MEMORY[0x28223BE20](v362);
        v365 = (&v1425 - ((v364 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v366 + 16))(v365);
        v367 = *v365;
        v1786 = &type metadata for DescriptorIntentResolver;
        v1787 = &off_28382D598;
        v368 = swift_allocObject();
        *&v1784 = v368;
        v369 = *(v359 + 1);
        *(v368 + 16) = *v359;
        *(v368 + 32) = v369;
        *(v368 + 48) = *(v359 + 4);
        v1781 = &off_283832100;
        v1780 = v353;
        *&v1779 = v367;
        v370 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__activityDescriptorPublisher;
        v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53F0, &unk_224DC1B60);
        v372 = *(v371 + 48);
        v373 = *(v371 + 52);
        swift_allocObject();
        swift_retain_n();
        v374 = v1642;
        swift_retain_n();
        swift_retain_n();
        v375 = v1643;
        v376 = v374;
        v1540 = v1644;
        v377 = v375;
        *&v354[v370] = sub_224DAB358();
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___activityDescriptorPublisher] = 0;
        v378 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__widgetDescriptorPublisher;
        v379 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F53F8, &unk_224DBBB38);
        v380 = *(v379 + 48);
        v381 = *(v379 + 52);
        swift_allocObject();
        *&v354[v378] = sub_224DAB358();
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___widgetDescriptorPublisher] = 0;
        v382 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__controlDescriptorPublisher;
        v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5400, &unk_224DC1B50);
        v384 = *(v383 + 48);
        v385 = *(v383 + 52);
        swift_allocObject();
        *&v354[v382] = sub_224DAB358();
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___controlDescriptorPublisher] = 0;
        v386 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__combinedDescriptorPublisher;
        v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5408, &unk_224DBBB40);
        v388 = *(v387 + 48);
        v389 = *(v387 + 52);
        swift_allocObject();
        *&v354[v386] = sub_224DAB358();
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___combinedDescriptorPublisher] = 0;
        v390 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__extensionPublisher;
        v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5410, &unk_224DC1B40);
        v392 = *(v391 + 48);
        v393 = *(v391 + 52);
        swift_allocObject();
        *&v354[v390] = sub_224DAB358();
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService____lazy_storage___extensionPublisher] = 0;
        v394 = &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorProvider];
        *v394 = 0;
        v394[1] = 0;
        v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService__test_noRetries] = 0;
        v395 = &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_descriptorCache];
        *v395 = 0u;
        *(v395 + 1) = 0u;
        *(v395 + 4) = 0;
        v396 = MEMORY[0x277D84FA0];
        v397 = MEMORY[0x277D84F90];
        v398 = MEMORY[0x277D84FA0];
        if (MEMORY[0x277D84F90] >> 62)
        {
          if (sub_224DAF838())
          {
            v398 = sub_224D5796C(MEMORY[0x277D84F90]);
          }

          else
          {
            v398 = MEMORY[0x277D84FA0];
          }
        }

        v1619 = v376;
        v1642 = v377;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_persistentSubscriptions] = v398;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_finishLaunchingToken] = 0;
        v399 = OBJC_IVAR____TtC10ChronoCore17DescriptorService_queue;
        sub_224DAB7E8();
        *&v1764 = v397;
        sub_224DAF788();
        v1603(v1607, v1553, v1618);
        *&v354[v399] = sub_224DAF418();
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_currentExtensionsAndCompletionsBeingFetched] = MEMORY[0x277D84F98];
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionEvents] = v397;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_readyDataSources] = 0;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_extensionsPendingRefetchWithLNMetadataChanged] = v396;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_initialQueryTimerInterval] = 0x4082C00000000000;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queryTimerInterval] = 0x40F5180000000000;
        v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_suppressPublishingNotificationsForTesting] = 0;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_queryTimerLeeway] = 0x404E000000000000;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_queryTimer] = 0;
        *&v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_userInitiatedDiscoveryLeeway] = 0x4014000000000000;
        v400 = OBJC_IVAR____TtC10ChronoCore17DescriptorService__queue_lastUserInitiatedDiscovery;
        v401 = sub_224DA9878();
        (*(*(v401 - 8) + 56))(&v354[v400], 1, 1, v401);
        sub_224A3317C(&v1739, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_extensionManager]);
        sub_224A3317C(v1731, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_taskService]);
        sub_224A3317C(&v1655, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_hostService]);
        sub_224A3317C(&v1651, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_controlHostService]);
        sub_224A3317C(&v1645, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_remoteWidgetDescriptorService]);
        sub_224A3317C(&v1784, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_intentResolver]);
        sub_224A3317C(&v1660, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_keybagStateProvider]);
        sub_224A3317C(&v1779, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_preferences]);
        sub_224A3796C(v1773, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_stateCaptureManager], &unk_27D6F53A0, &qword_224DC1A80);
        sub_224A3796C(&v1768, &v354[OBJC_IVAR____TtC10ChronoCore17DescriptorService_userManager], &unk_27D6F5418, &unk_224DBBB48);
        v1778.receiver = v354;
        v1778.super_class = v1628;
        v1643 = objc_msgSendSuper2(&v1778, sel_init);
        v402 = v1619;

        v403 = v1642;

        sub_224A3311C(&v1768, &unk_27D6F5418, &unk_224DBBB48);
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        sub_224A3311C(v1773, &unk_27D6F53A0, &qword_224DC1A80);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1651);
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(v1731);
        __swift_destroy_boxed_opaque_existential_1(&v1739);
        __swift_destroy_boxed_opaque_existential_1(&v1779);
        __swift_destroy_boxed_opaque_existential_1(&v1784);
        __swift_destroy_boxed_opaque_existential_1(&v1788);
        __swift_destroy_boxed_opaque_existential_1(&v1792);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        v404 = v1623;
        if (v1623)
        {
          v405 = sub_224DAAD68();
          v404 = MEMORY[0x277D466B0];
        }

        else
        {
          v405 = 0;
        }

        v406 = v1630;
        v407 = v1623;
        v1773[0] = v1623;
        v1773[1] = 0;
        v1773[2] = 0;
        v1774 = v405;
        v1775 = v404;
        v1776 = 0xD000000000000013;
        v1777 = 0x8000000224DC43A0;
        v1662 = MEMORY[0x277CF9A38];
        *(&v1661 + 1) = v1634;
        *&v1660 = v402;
        sub_224A3317C(v1796, &v1720);
        v408 = sub_224DAE018();
        sub_224A3317C(v1612, &v1768);
        __swift_project_boxed_opaque_existential_1(&v1768, *(&v1769 + 1));
        v409 = v402;

        sub_224DADA68();
        v410 = sub_224DAE008();
        __swift_destroy_boxed_opaque_existential_1(&v1768);
        v1770 = MEMORY[0x277CF9E80];
        v1476 = v408;
        *(&v1769 + 1) = v408;
        *&v1768 = v410;
        v411 = sub_224DADF38();
        sub_224C4CF40(v1773, &v1720);
        v412 = qword_281352058;
        v1644 = v409;

        v413 = v403;
        v1527 = v411;

        v1643 = v1643;
        if (v412 != -1)
        {
          swift_once();
        }

        sub_224A3317C(qword_281352068, &v1739);
        v414 = v1636;
        if (v407)
        {
          v415 = sub_224DAAD68();
          v416 = MEMORY[0x277D466A0];
          v417 = MEMORY[0x277D466B8];
          v418 = MEMORY[0x277D466B0];
          v419 = MEMORY[0x277D466F8];
          v420 = v407;
          v421 = MEMORY[0x277D46700];
        }

        else
        {
          v420 = 0;
          v415 = 0;
          v421 = 0;
          v419 = 0;
          v418 = 0;
          v417 = 0;
          v416 = 0;
          *&v1661 = 0;
          *(&v1660 + 1) = 0;
        }

        v422 = v407;
        v423 = v1613;
        *&v1660 = v420;
        *(&v1661 + 1) = v415;
        v1662 = v421;
        v1663 = v419;
        v1664 = v418;
        v1665 = v417;
        v1666 = v416;
        v424 = qword_2813516D0;

        if (v424 != -1)
        {
          swift_once();
        }

        v425 = v1638;
        v426 = __swift_project_value_buffer(v1638, qword_281365138);
        v427 = v1632;
        v1635(v1632, v426, v425);
        sub_224C4CF40(&v1720, &v1768);
        v428 = v1557;

        v1642 = v413;
        v1595 = sub_224C42284(v1644, v1527, v428, v406, v427, v423, v413, v1643, v1640, &v1768, &v1739, &v1660);
        sub_224C4CF9C(&v1720);
        type metadata accessor for APSPushConnectionFactory();
        v429 = swift_allocObject();
        type metadata accessor for PersistentPushSubscriptionStore();
        swift_allocObject();

        v431 = sub_224C6F1DC(v430);

        type metadata accessor for PersistentPublicTokenStore();
        swift_allocObject();

        v433 = sub_224AC2B88(v432);

        type metadata accessor for PersistentPushTokenStore();
        swift_allocObject();

        v435 = sub_224CE4EF0(v434);

        v1463 = type metadata accessor for SimpleWorkScheduler();
        v436 = swift_allocObject();
        v437 = swift_allocObject();
        v438 = swift_slowAlloc();
        *v438 = 0;
        *(v437 + 16) = v438;
        v436[2] = v437;
        v436[3] = MEMORY[0x277D84F98];
        v436[4] = 0;
        v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
        v440 = *(v439 + 48);
        v441 = *(v439 + 52);
        swift_allocObject();
        v436[5] = sub_224DAB358();

        v1466 = v431;
        v1467 = v429;
        v1464 = v435;
        v1465 = v433;
        v1518 = v436;
        v442 = sub_224C43E68(v429, v431, v433, v435, v436);
        *(v414 + 110) = v442;
        v1794 = 0;
        v1793 = 0u;
        v1792 = 0u;
        sub_224A3796C(&v1792, &v1660, &qword_27D6F5428, &qword_224DBBB50);
        v443 = v1611;
        v1598 = v442;

        v444 = sub_224C445B8(v443, &v1660);
        v1535 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5430, &unk_224DBBB58);
        v445 = swift_allocObject();
        v1519 = xmmword_224DB30F0;
        *(v445 + 16) = xmmword_224DB30F0;
        *(v445 + 56) = &type metadata for RemoteWidgetReloadFilter;
        *(v445 + 64) = &off_283829758;
        *(v445 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5438, &qword_224DBBB60);
        *(v445 + 104) = &off_28382AE78;
        v1611 = v445;
        *(v445 + 72) = v444;
        v1525 = v444;

        v1572 = sub_224C4BEA0();
        v446 = 0;
        if (v422)
        {
          v446 = sub_224DAAD68();
          v447 = MEMORY[0x277D466B0];
        }

        else
        {
          v447 = 0;
        }

        v1768 = v1623;
        *&v1769 = 0;
        *(&v1769 + 1) = v446;
        v1770 = v447;
        v1771 = 0xD000000000000010;
        v1772 = 0x8000000224DC43E0;
        v1662 = v1564;
        *(&v1661 + 1) = v1582;
        *&v1660 = v1565;
        *&v1721[16] = MEMORY[0x277CF9E70];
        *&v1721[8] = v1580;
        *&v1720 = v1589;

        sub_224DAC988();
        v448 = sub_224DAC978();
        (v1560)(v1639, v1577, v1569);
        sub_224DAC998();
        sub_224A3317C(v1612, &v1660);
        v449 = v1644;
        v450 = v1625;

        v451 = v1640;

        v452 = v406;

        v453 = v1613;

        v454 = v1643;
        v1570 = v448;

        v1643 = sub_224C3D880(v1591, v450, v1590);
        v455 = qword_281351410;
        v456 = v443;
        v457 = v1642;

        if (v455 != -1)
        {
          swift_once();
        }

        v458 = v1638;
        v459 = __swift_project_value_buffer(v1638, qword_281364D30);
        v1635(v1641, v459, v458);
        v1736[0] = v452;
        *&v1721[16] = v1620;
        *&v1721[8] = v1626;
        *&v1720 = v451;
        v1742 = v1628;
        v1526 = sub_224C41198(&unk_28135A960, type metadata accessor for DescriptorService);
        v1743 = v1526;
        v1509 = v454;
        v1739 = v454;
        v1733 = &off_2838352C0;
        v460 = v1621;
        v1732 = v1621;
        v1731[0] = v450;
        v1657 = MEMORY[0x277CF9A38];
        v1656 = v1634;
        v1530 = v449;
        *&v1655 = v449;
        v1642 = MEMORY[0x277CF9B18];
        v1594 = sub_224C41198(&unk_281350D38, MEMORY[0x277CF9B18]);
        v1654 = MEMORY[0x277CF9C38];
        v1653 = v1608;
        *&v1651 = v453;
        v1648 = &off_28382A480;
        v1647 = v1629;
        v1507 = v457;
        *&v1645 = v457;
        v461 = v458;
        v1791 = &off_28382AA58;
        v462 = v1583;
        v1790 = v1583;
        v1475 = v456;
        *&v1788 = v456;
        v1786 = &type metadata for ArchiveVersionProvider;
        v1554 = sub_224C4CFF0();
        v1787 = v1554;
        *&v1784 = swift_allocObject();
        sub_224C4CF40(&v1768, v1784 + 16);
        v1781 = MEMORY[0x277CF9B10];
        v1780 = v1575;
        *&v1779 = v1584;
        v463 = type metadata accessor for MobileTimelineService();
        v464 = *(v463 + 48);
        v465 = *(v463 + 52);
        v1619 = v463;
        v466 = swift_allocObject();
        v467 = v1732;
        v468 = __swift_mutable_project_boxed_opaque_existential_1(v1731, v1732);
        v1561 = &v1425;
        v469 = *(*(v467 - 1) + 64);
        MEMORY[0x28223BE20](v468);
        v471 = (&v1425 - ((v470 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v472 + 16))(v471);
        v473 = v1790;
        v474 = __swift_mutable_project_boxed_opaque_existential_1(&v1788, v1790);
        v1534 = &v1425;
        v475 = *(*(v473 - 1) + 64);
        MEMORY[0x28223BE20](v474);
        v477 = (&v1425 - ((v476 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v478 + 16))(v477);
        v479 = *v471;
        v480 = *v477;
        v481 = v460;
        v1767 = &off_2838352C0;
        v1766 = v460;
        *&v1764 = v479;
        v1763 = &off_28382AA58;
        v1762 = v462;
        *&v1761 = v480;
        *(v466 + 32) = 0u;
        *(v466 + 48) = 0u;
        v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5448, &unk_224DBBB68);
        v483 = *(v482 + 48);
        v484 = *(v482 + 52);
        swift_allocObject();
        *(v466 + 64) = sub_224DAB358();
        v485 = swift_allocObject();
        v486 = swift_slowAlloc();
        *v486 = 0;
        *(v485 + 16) = v486;
        *(v466 + 240) = v485;
        *(v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_persistentSubscriptions) = MEMORY[0x277D84FA0];
        v487 = MEMORY[0x277D84F98];
        *(v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentSubscriptions) = MEMORY[0x277D84F98];
        v488 = MEMORY[0x277D84F90];
        *(v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_configurationLifetimeAssertions) = MEMORY[0x277D84F90];
        v489 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_environmentModificationContext;
        v1510 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5450, &qword_224DBBB70);
        *(v466 + v489) = sub_224DADDF8();
        *(v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount) = v487;
        sub_224A3317C(&v1720, v466 + 72);
        sub_224A3317C(&v1739, v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider);
        sub_224A3317C(&v1764, v466 + 112);
        sub_224A3317C(&v1655, v466 + 152);
        sub_224A3317C(&v1660, v466 + 192);
        v1635(v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v1641, v461);
        v490 = v1570;
        v491 = v1594;
        *(v466 + 16) = v1570;
        *(v466 + 24) = v491;
        sub_224A3317C(&v1761, v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_processMonitor);

        sub_224DAB818();
        *&v1758 = v488;
        sub_224DAF788();
        v1603(v1607, v1568, v1618);
        *(v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_proactiveForwardingQueue) = sub_224DAF418();
        *(v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadFilters) = v1611;
        v1512 = sub_224C41198(&qword_281350D48, v1642);
        sub_224DAC3E8();
        sub_224A36F98(&v1758, v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_protectionLevelProvider);
        v492 = sub_224DADFF8();
        sub_224A3317C(&v1739, &v1758);
        v493 = sub_224DADFE8();
        v494 = MEMORY[0x277CF9E78];
        v495 = (v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorObserver);
        v1515 = v492;
        v495[3] = v492;
        v495[4] = v494;
        *v495 = v493;
        sub_224A3317C(&v1784, v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider);
        sub_224A3317C(&v1645, v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_taskService);
        sub_224A3317C(&v1779, v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService);
        sub_224A3317C(&v1655, &v1758);
        sub_224A3317C(&v1720, &v1755);
        v496 = v490;
        if (qword_281351638 != -1)
        {
          swift_once();
        }

        v1642 = __swift_project_value_buffer(v1638, qword_281365018);
        v497 = v1632;
        v498 = v1635;
        (v1635)();
        sub_224A3317C(&v1645, &v1752);
        sub_224A3317C(&v1764, &v1749);
        v499 = v1750;
        v500 = __swift_mutable_project_boxed_opaque_existential_1(&v1749, v1750);
        v1611 = &v1425;
        v501 = *(*(v499 - 8) + 64);
        MEMORY[0x28223BE20](v500);
        v503 = (&v1425 - ((v502 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v504 + 16))(v503);
        v505 = *v503;
        v1748 = &off_2838352C0;
        v1747 = v481;
        *&v1746 = v505;
        v1571 = type metadata accessor for MobileTimelineReloadStrategy();
        v506 = *(v1571 + 48);
        v507 = *(v1571 + 52);
        v508 = swift_allocObject();
        v509 = __swift_mutable_project_boxed_opaque_existential_1(&v1746, v481);
        v510 = *(*(v481 - 8) + 64);
        MEMORY[0x28223BE20](v509);
        v1513 = v511;
        v512 = (&v1425 - ((v511 + 15) & 0xFFFFFFFFFFFFFFF0));
        v514 = *(v513 + 16);
        v1514 = (v513 + 16);
        v1511 = v514;
        v514(v512);
        v515 = *v512;
        v516 = (v508 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService);
        v516[3] = v481;
        v516[4] = &off_2838352C0;
        *v516 = v515;
        sub_224A36F98(&v1755, v508 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService);
        sub_224A36F98(&v1752, v508 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService);
        v508[2] = 0;
        v508[3] = 0;
        sub_224A36F98(&v1758, (v508 + 4));
        v517 = v1594;
        v508[9] = v496;
        v508[10] = v517;
        v518 = v1602 + 4;
        v1566 = v1602[4];
        v519 = v1638;
        v1566(v508 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v497, v1638);
        *(v508 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview) = 0;
        __swift_destroy_boxed_opaque_existential_1(&v1746);
        __swift_destroy_boxed_opaque_existential_1(&v1749);
        sub_224A3317C(&v1761, &v1758);
        v520 = v497;
        v498(v497, v1641, v519);
        v521 = v1759;
        v522 = __swift_mutable_project_boxed_opaque_existential_1(&v1758, v1759);
        v1610 = &v1425;
        v523 = *(*(v521 - 1) + 64);
        MEMORY[0x28223BE20](v522);
        v525 = (&v1425 - ((v524 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v526 + 16))(v525);
        v527 = *v525;
        v1757 = MEMORY[0x277CF9B10];
        *(&v1756 + 1) = v1575;
        *&v1755 = v1584;
        v1754 = &off_28382AA58;
        v528 = v1583;
        v1753 = v1583;
        *&v1752 = v527;
        v1611 = type metadata accessor for MobileTimelineReloadConfigurationPolicy();
        v529 = *(v1611 + 12);
        v530 = *(v1611 + 26);
        v531 = swift_allocObject();
        v532 = __swift_mutable_project_boxed_opaque_existential_1(&v1752, v528);
        v533 = *(*(v528 - 1) + 64);
        MEMORY[0x28223BE20](v532);
        v535 = (&v1425 - ((v534 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v536 + 16))(v535);
        v537 = *v535;
        v531[5] = v528;
        v531[6] = &off_28382AA58;
        v531[2] = v537;
        sub_224A36F98(&v1755, (v531 + 7));
        v538 = v520;
        v539 = v520;
        v540 = v1638;
        v1602 = v518;
        v1566(v531 + OBJC_IVAR____TtC10ChronoCore39MobileTimelineReloadConfigurationPolicy_logger, v539, v1638);

        __swift_destroy_boxed_opaque_existential_1(&v1752);
        __swift_destroy_boxed_opaque_existential_1(&v1758);
        sub_224DA9E68();
        sub_224DA9D28();

        v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5460, &unk_224DBBB78);
        *&v1755 = v508;
        *&v1752 = v531;
        v1635(v538, v1642, v540);
        sub_224A3317C(&v1651, &v1758);
        v542 = sub_224C41198(&unk_281353F98, type metadata accessor for MobileTimelineReloadStrategy);
        v543 = sub_224C41198(&unk_281352450, type metadata accessor for MobileTimelineReloadConfigurationPolicy);

        v1503 = v531;

        v1423 = v543;
        v1502 = v542;
        v1422 = v542;
        v1421 = v1611;
        v1508 = v541;
        *(v466 + 232) = sub_224DAD268();
        sub_224A3317C(&v1764, &v1758);
        v544 = swift_allocObject();
        sub_224A36F98(&v1758, v544 + 16);

        sub_224DAD298();

        v545 = swift_allocObject();
        swift_weakInit();
        v546 = v508[2];
        v547 = v508[3];
        v508[2] = sub_224C4D04C;
        v508[3] = v545;

        sub_224A3D418(v546);
        v1504 = v508;

        v548 = *(v466 + 232);
        *&v1758 = sub_224DAC0E8();
        *&v1755 = *(v466 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_proactiveForwardingQueue);
        v549 = v1755;
        v550 = sub_224DAF358();
        v551 = *(v550 - 1);
        v552 = *(v551 + 56);
        v553 = v1601;
        v1611 = v550;
        v1610 = v552;
        *&v1609 = v551 + 56;
        (v552)(v1601, 1, 1);
        v554 = v549;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
        v1642 = MEMORY[0x277CBCD90];
        sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30);
        v555 = sub_224A3B758(&qword_281350A80, &qword_281350A70, 0x277D85C78);
        v556 = v1587;
        v1599 = v555;
        sub_224DAB448();
        sub_224A3311C(v553, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&unk_281351278, &unk_27D6F5360, &unk_224DBBB08);
        v557 = v1622;
        sub_224DAB488();

        (*(v1596 + 1))(v556, v557);
        v558 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_persistentSubscriptions;
        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        v559 = *(v466 + 232);
        *&v1758 = sub_224DAC048();
        swift_allocObject();
        swift_weakInit();
        v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5470, &unk_224DBD7A0);
        v561 = sub_224A33088(&unk_281351128, &unk_27D6F5470, &unk_224DBD7A0);
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        v562 = *(v466 + 232);
        *&v1758 = sub_224DAC078();
        swift_allocObject();
        swift_weakInit();
        v1517 = v560;
        v1516 = v561;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        sub_224DA9E68();
        v563 = sub_224DA9E28();

        *&v1758 = v563;
        swift_allocObject();
        swift_weakInit();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
        sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00);
        sub_224DAB488();

        swift_beginAccess();
        v1642 = v558;
        sub_224DAB308();
        swift_endAccess();

        v564 = *(v1643 + 2);
        v1644 = v466;
        if (v564)
        {
          break;
        }

LABEL_67:

        v569 = sub_224DAD6D8();

        *&v1758 = v569;
        swift_allocObject();
        swift_weakInit();
        v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5490, &unk_224DBA408);
        v571 = sub_224A33088(&qword_281351078, &unk_27D6F5490, &unk_224DBA408);
        v1543 = v570;
        v1542 = v571;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        *&v1758 = sub_224DAD508();
        swift_allocObject();
        swift_weakInit();

        v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54A0, &unk_224DBBB88);
        v573 = v1644;
        v574 = sub_224A33088(&unk_281351038, &unk_27D6F54A0, &unk_224DBBB88);
        v1545 = v572;
        v1544 = v574;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        v1592(v1641, v1638);
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        __swift_destroy_boxed_opaque_existential_1(&v1779);
        __swift_destroy_boxed_opaque_existential_1(&v1784);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1651);
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(&v1739);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        __swift_destroy_boxed_opaque_existential_1(&v1761);
        __swift_destroy_boxed_opaque_existential_1(&v1764);
        __swift_destroy_boxed_opaque_existential_1(&v1788);
        __swift_destroy_boxed_opaque_existential_1(v1731);
        v575 = v1623;
        if (v1623)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5608, &unk_224DBBC30);
          v576 = swift_allocObject();
          v577 = swift_retain_n();
          v578 = sub_224C4A7F8(v577, v575, v575, v576, &unk_28382FCC8, &unk_224DBBC60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55F8, &unk_224DBBC28);
          v579 = swift_allocObject();
          v580 = swift_retain_n();
          v581 = sub_224C4A7F8(v580, v575, v575, v579, &unk_28382FCA0, &unk_224DBBC40);
          if (v578)
          {
            *(&v1661 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5608, &unk_224DBBC30);
            v1662 = sub_224A33088(&unk_28135B420, &unk_27D6F5608, &unk_224DBBC30);
            *&v1660 = v578;
            if (!v581)
            {
              goto LABEL_70;
            }

            goto LABEL_73;
          }
        }

        else
        {
          v581 = 0;
        }

        v578 = 0;
        v1662 = 0;
        v1660 = 0u;
        v1661 = 0u;
        if (!v581)
        {
LABEL_70:
          v582 = 0;
          v583 = 0;
          v584 = 0;
          *v1721 = 0;
          *(&v1720 + 1) = 0;
          goto LABEL_74;
        }

LABEL_73:
        v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55F8, &unk_224DBBC28);
        v573 = v1644;
        v584 = sub_224A33088(&unk_28135B410, &unk_27D6F55F8, &unk_224DBBC28);
        v582 = v581;
LABEL_74:
        *&v1720 = v582;
        *&v1721[8] = v583;
        *&v1721[16] = v584;
        if (v575)
        {
          v585 = sub_224DAAD68();
          v586 = MEMORY[0x277D466B0];
          v587 = v575;
        }

        else
        {
          v587 = 0;
          v585 = 0;
          v586 = 0;
          v1741 = 0;
          v1740 = 0;
        }

        v1739 = v587;
        v1742 = v585;
        v1743 = v586;
        sub_224A3317C(v1796, v1731);
        v1656 = v1619;
        v1561 = sub_224C41198(&unk_2813580C0, type metadata accessor for MobileTimelineService);
        v1657 = v1561;
        *&v1655 = v573;
        v1653 = &type metadata for DefaultInteractionRunnerProvider;
        v1654 = &off_28382CF40;
        v1596 = type metadata accessor for InteractionService();
        v588 = swift_allocObject();
        __swift_mutable_project_boxed_opaque_existential_1(&v1651, &type metadata for DefaultInteractionRunnerProvider);
        v1647 = &type metadata for DefaultInteractionRunnerProvider;
        v1648 = &off_28382CF40;
        v589 = swift_allocObject();

        swift_retain_n();

        v590 = swift_slowAlloc();
        *v590 = 0;
        *(v589 + 16) = v590;
        *(v588 + 16) = v589;
        *(v588 + 24) = 0u;
        *(v588 + 104) = 0u;
        *(v588 + 40) = 0u;
        *(v588 + 56) = 0u;
        *(v588 + 72) = 0u;
        *(v588 + 88) = 0u;
        *(v588 + 120) = 0u;
        *(v588 + 136) = 0;
        *(v588 + 144) = MEMORY[0x277D84F98];
        *(v588 + 232) = 0u;
        *(v588 + 248) = 0u;
        *(v588 + 264) = 0;
        sub_224A3317C(&v1655, v588 + 152);
        swift_beginAccess();
        if (*(v588 + 48))
        {
          if (*(&v1661 + 1))
          {
            __swift_assign_boxed_opaque_existential_1((v588 + 24), &v1660);
            goto LABEL_84;
          }

          __swift_destroy_boxed_opaque_existential_1((v588 + 24));
        }

        else if (*(&v1661 + 1))
        {
          sub_224A3317C(&v1660, v588 + 24);
          goto LABEL_84;
        }

        v591 = v1661;
        *(v588 + 24) = v1660;
        *(v588 + 40) = v591;
        *(v588 + 56) = v1662;
LABEL_84:
        swift_endAccess();
        swift_beginAccess();
        v592 = *(v588 + 88);
        v1458 = v578;
        v1462 = v588 + 232;
        if (v592)
        {
          v593 = (v588 + 64);
          if (*&v1721[8])
          {
            __swift_assign_boxed_opaque_existential_1(v593, &v1720);
            goto LABEL_91;
          }

          __swift_destroy_boxed_opaque_existential_1(v593);
        }

        else if (*&v1721[8])
        {
          sub_224A3317C(&v1720, v588 + 64);
          goto LABEL_91;
        }

        v594 = *v1721;
        *(v588 + 64) = v1720;
        *(v588 + 80) = v594;
        *(v588 + 96) = *&v1721[16];
LABEL_91:
        swift_endAccess();
        swift_beginAccess();
        sub_224C4D398(&v1739, v588 + 104, &qword_27D6F4900, &unk_224DB8640);
        swift_endAccess();
        sub_224A3317C(v1731, v588 + 272);
        sub_224A3317C(&v1645, v588 + 192);
        swift_beginAccess();
        v595 = *(v588 + 48);
        v1457 = v581;
        v1622 = v588;
        if (v595)
        {
          v1791 = &off_28382CD70;
          v1790 = v1596;
          *&v1788 = v588;
          v596 = *(v1622 + 56);
          __swift_mutable_project_boxed_opaque_existential_1(v588 + 24, v595);
          v597 = *(v596 + 24);

          v588 = v1622;
          v597(&v1788, v595, v596);
          v575 = v1623;
        }

        swift_endAccess();
        swift_beginAccess();
        v598 = *(v588 + 88);
        if (v598)
        {
          v1791 = &off_28382CD70;
          v1790 = v1596;
          *&v1788 = v588;
          v599 = *(v588 + 96);
          __swift_mutable_project_boxed_opaque_existential_1(v588 + 64, v598);
          v600 = *(v599 + 24);

          v600(&v1788, v598, v599);
        }

        swift_endAccess();
        v601 = v1644;

        __swift_destroy_boxed_opaque_existential_1(v1731);
        sub_224A3311C(&v1739, &qword_27D6F4900, &unk_224DB8640);
        if (*&v1721[8])
        {
          __swift_destroy_boxed_opaque_existential_1(&v1720);
        }

        if (*(&v1661 + 1))
        {
          __swift_destroy_boxed_opaque_existential_1(&v1660);
        }

        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1651);
        v1662 = &off_283837008;
        *(&v1661 + 1) = v1619;
        *&v1660 = v601;
        v602 = qword_2813651F0;
        v603 = v1525;
        swift_beginAccess();

        sub_224A838C0(&v1660, v603 + v602, &qword_27D6F54B0, &unk_224DBF2A0);
        swift_endAccess();
        v604 = 0;
        if (v575)
        {
          v604 = sub_224DAAD68();
          v605 = MEMORY[0x277D466B0];
        }

        else
        {
          v605 = 0;
        }

        v1739 = v575;
        v1740 = 0;
        v1741 = 0;
        v1742 = v604;
        v1743 = v605;
        v1744 = 0xD000000000000010;
        v1745 = 0x8000000224DC43C0;
        v1662 = v1564;
        *(&v1661 + 1) = v1582;
        *&v1660 = v1565;
        *&v1721[16] = MEMORY[0x277CF9E70];
        *&v1721[8] = v1580;
        *&v1720 = v1589;

        sub_224DAC988();
        v606 = sub_224DAC978();
        v607 = v1577;
        v608 = v1569;
        (v1560)(v1639, v1577, v1569);
        sub_224DAC998();
        v609 = v1567[1];
        ++v1567;
        v1456 = v609;
        v609(v607, v608);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54B8, &qword_224DBBB90);
        v610 = swift_allocObject();
        v611 = swift_allocObject();
        v612 = v1579;

        v613 = swift_slowAlloc();
        *v613 = 0;
        *(v611 + 16) = v613;
        *(v610 + 16) = v611;
        *(v610 + 24) = v612;
        v614 = MEMORY[0x277CFA010];
        v1662 = MEMORY[0x277CFA010];
        v615 = v1586;
        *(&v1661 + 1) = v1586;
        v616 = v1540;
        *&v1660 = v1540;
        v1504 = type metadata accessor for PreviewConfigurationService();
        v617 = swift_allocObject();
        v618 = v616;

        v1455 = v610;
        v620 = sub_224C4C038(v619, &v1660, v617);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54C0, &qword_224DBBB98);
        v621 = swift_allocObject();
        v622 = swift_allocObject();

        v623 = swift_slowAlloc();
        *v623 = 0;
        *(v622 + 16) = v623;
        *(v621 + 16) = v622;
        *(v621 + 24) = v612;
        v1662 = v614;
        *(&v1661 + 1) = v615;
        *&v1660 = v618;
        v1503 = type metadata accessor for PreviewControlConfigurationService();
        v624 = swift_allocObject();
        v1573 = v618;

        v1454 = v621;
        v1534 = sub_224C47C48(v625, &v1660, v624);
        sub_224A3317C(v1612, &v1660);
        v626 = sub_224DAA508();
        v627 = v1530;
        v628 = v1625;

        v629 = v1507;
        v630 = v1509;

        v1587 = v606;

        v1641 = v626;
        v1560 = sub_224DAA4F8();

        v631 = v1613;

        v1639 = sub_224C3D880(v1591, v628, v1590);
        v632 = swift_allocObject();
        *(v632 + 16) = xmmword_224DB3100;
        *(v632 + 56) = &type metadata for RemoteWidgetReloadFilter;
        v1577 = v632;
        *(v632 + 64) = &off_283829758;
        sub_224DA9E68();
        v1643 = sub_224DA9DB8();
        LODWORD(v1642) = v633;

        if (qword_281351420 != -1)
        {
          swift_once();
        }

        v634 = v1638;
        v635 = __swift_project_value_buffer(v1638, qword_281364D48);
        v1635(v1597, v635, v634);
        v636 = v1504;
        *&v1721[8] = v1504;
        v637 = sub_224C41198(&unk_281354668, type metadata accessor for PreviewConfigurationService);
        v1787 = MEMORY[0x277CFA098];
        *&v1721[16] = v637;
        v1530 = v620;
        *&v1720 = v620;
        v1733 = v1526;
        v1732 = v1628;
        v1509 = v630;
        v1731[0] = v630;
        v1657 = &off_2838352C0;
        v1656 = v1621;
        *&v1655 = v628;
        v1654 = &off_28382A480;
        v1653 = v1629;
        v1507 = v629;
        *&v1651 = v629;
        v1648 = v1620;
        v1647 = v1626;
        *&v1645 = v1640;
        v1791 = MEMORY[0x277CF9A38];
        v1790 = v1634;
        v1460 = v627;
        *&v1788 = v627;
        v1786 = v1641;
        v638 = v1621;
        *&v1784 = v1560;
        v1729[0] = v1630;
        v1781 = MEMORY[0x277CF9C38];
        v1780 = v1608;
        *&v1779 = v631;
        v1766 = &type metadata for ArchiveVersionProvider;
        v1767 = v1554;
        *&v1764 = swift_allocObject();
        sub_224C4CF40(&v1739, v1764 + 16);
        v639 = type metadata accessor for MobileSnapshotService();
        v640 = *(v639 + 48);
        v641 = *(v639 + 52);
        v1535 = v639;
        v642 = swift_allocObject();
        v643 = *&v1721[8];
        v644 = __swift_mutable_project_boxed_opaque_existential_1(&v1720, *&v1721[8]);
        v1560 = &v1425;
        v645 = *(*(v643 - 8) + 64);
        MEMORY[0x28223BE20](v644);
        v647 = (&v1425 - ((v646 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v648 + 16))(v647);
        v649 = v1656;
        v650 = __swift_mutable_project_boxed_opaque_existential_1(&v1655, v1656);
        v1459 = &v1425;
        v651 = *(*(v649 - 1) + 64);
        MEMORY[0x28223BE20](v650);
        v653 = (&v1425 - ((v652 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v654 + 16))(v653);
        v655 = *v647;
        v656 = *v653;
        v1432 = v637;
        v1763 = v637;
        v1762 = v636;
        *&v1761 = v655;
        v1760 = &off_2838352C0;
        v1759 = v638;
        *&v1758 = v656;
        *(v642 + 80) = 0;
        *(v642 + 88) = 0;
        v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54D0, &unk_224DBBBA0);
        v658 = *(v657 + 48);
        v659 = *(v657 + 52);
        swift_allocObject();
        *(v642 + 96) = sub_224DAB358();
        *(v642 + 104) = 0;
        v660 = MEMORY[0x277D84F90];
        *(v642 + 272) = MEMORY[0x277D84F90];
        v661 = MEMORY[0x277D84F98];
        *(v642 + 280) = MEMORY[0x277D84F98];
        v662 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_environmentModificationContext;
        *(v642 + v662) = sub_224DADDF8();
        v663 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock;
        v1461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F54D8, &qword_224DBBBA8);
        v664 = swift_allocObject();
        *(v642 + v663) = v664;
        *(v642 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_lock_configurationLifetimeAssertions) = v660;
        *(v664 + 16) = 0;
        v665 = OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_prefetchQueue;
        sub_224DAB7D8();
        *&v1755 = v660;
        sub_224DAF788();
        v1603(v1607, v1553, v1618);
        v666 = v1638;
        v667 = v1635;
        *(v642 + v665) = sub_224DAF418();
        *(v642 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_keysToFetch) = v661;
        sub_224A3317C(&v1761, v642 + 152);
        sub_224A3317C(v1731, v642 + 192);
        sub_224A3317C(&v1758, v642 + 232);
        sub_224A3317C(&v1788, v642 + 288);
        sub_224A3317C(&v1660, v642 + 112);
        v667(v642 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_logger, v1597, v666);
        v668 = v1587;
        v669 = v1594;
        *(v642 + 24) = v1587;
        *(v642 + 32) = v669;
        sub_224A3317C(&v1784, v642 + 40);

        sub_224DAC3E8();
        sub_224A36F98(&v1755, v642 + 336);
        *(v642 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_reloadFilters) = v1577;
        sub_224A3317C(&v1645, v642 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_hostService);
        sub_224A3317C(v642 + 192, &v1755);
        v670 = v1515;
        v671 = sub_224DADFE8();
        v672 = (v642 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_descriptorObserver);
        v672[3] = v670;
        v672[4] = MEMORY[0x277CF9E78];
        *v672 = v671;
        sub_224A3317C(&v1764, v642 + OBJC_IVAR____TtC10ChronoCore21MobileSnapshotService_archiveVersionProvider);
        v673 = *&v1643;
        if (v1642)
        {
          v673 = 120.0;
        }

        *(v642 + 16) = v673;
        sub_224A3317C(&v1788, &v1755);
        v674 = *(v642 + 176);
        v675 = *(v642 + 184);
        v676 = __swift_project_boxed_opaque_existential_1((v642 + 152), v674);
        v1753 = v674;
        v1754 = *(v675 + 8);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v1752);
        (*(*(v674 - 8) + 16))(boxed_opaque_existential_1, v676, v674);
        v678 = qword_281351648;

        if (v678 != -1)
        {
          swift_once();
        }

        v1643 = __swift_project_value_buffer(v666, qword_281365030);
        v667(v1632, v1643, v666);
        sub_224A3317C(&v1651, &v1749);
        sub_224A3317C(&v1758, &v1746);
        v679 = v1747;
        v680 = __swift_mutable_project_boxed_opaque_existential_1(&v1746, v1747);
        v1642 = &v1425;
        v681 = *(*(v679 - 8) + 64);
        MEMORY[0x28223BE20](v680);
        v683 = v666;
        v684 = (&v1425 - ((v682 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v685 + 16))(v684);
        v686 = *v684;
        v1738 = &off_2838352C0;
        v687 = v1621;
        v1737 = v1621;
        v1736[0] = v686;
        v688 = *(v1571 + 48);
        v689 = *(v1571 + 52);
        v690 = swift_allocObject();
        v691 = __swift_mutable_project_boxed_opaque_existential_1(v1736, v687);
        MEMORY[0x28223BE20](v691);
        v693 = (&v1425 - ((v692 + 15) & 0xFFFFFFFFFFFFFFF0));
        v1511(v693);
        v694 = *v693;
        v695 = (v690 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_locationService);
        v695[3] = v687;
        v695[4] = &off_2838352C0;
        *v695 = v694;
        sub_224A36F98(&v1752, v690 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_hostService);
        sub_224A36F98(&v1749, v690 + OBJC_IVAR____TtC10ChronoCore28MobileTimelineReloadStrategy_taskService);
        v690[2] = 0;
        v690[3] = 0;
        sub_224A36F98(&v1755, (v690 + 4));
        v696 = v1594;
        v690[9] = v668;
        v690[10] = v696;
        v697 = v1632;
        v698 = v1566;
        v1566(v690 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_logger, v1632, v683);
        *(v690 + OBJC_IVAR____TtC10ChronoCore22TimelineReloadStrategy_isPreview) = 1;
        __swift_destroy_boxed_opaque_existential_1(v1736);
        __swift_destroy_boxed_opaque_existential_1(&v1746);
        v699 = *(v642 + 16);
        v1635(v697, v1597, v683);
        v700 = type metadata accessor for MobileSnapshotReloadConfigurationPolicy();
        v701 = *(v700 + 48);
        v702 = *(v700 + 52);
        v703 = swift_allocObject();
        *&v703[OBJC_IVAR____TtC10ChronoCore39MobileSnapshotReloadConfigurationPolicy_expirationDuration] = v699;
        v698(&v703[OBJC_IVAR____TtC10ChronoCore39MobileSnapshotReloadConfigurationPolicy_logger], v697, v683);
        sub_224DA9E68();
        LODWORD(v1642) = sub_224DA9D18();

        *&v1752 = v690;
        *&v1749 = v703;
        v1635(v697, v1643, v683);
        sub_224A3317C(&v1779, &v1755);
        sub_224DABE18();
        sub_224DABE88();
        sub_224C41198(&qword_281350E40, MEMORY[0x277CF9978]);
        v704 = sub_224C41198(&unk_281352548, type metadata accessor for MobileSnapshotReloadConfigurationPolicy);

        v1515 = v703;

        v705 = v1502;
        sub_224DAD278();
        v1422 = v705;
        v1423 = v704;
        v1421 = v700;
        *(v642 + 328) = sub_224DAD268();
        sub_224A3317C(&v1784, &v1755);
        sub_224A3317C(&v1758, &v1752);
        v706 = swift_allocObject();
        v707 = v1594;
        v706[2] = v1587;
        v706[3] = v707;
        v706[4] = v642;
        sub_224A36F98(&v1755, (v706 + 5));
        sub_224A36F98(&v1752, (v706 + 10));

        sub_224DAD2A8();

        v708 = *(v642 + 328);
        *&v1755 = sub_224DAC0D8();
        swift_allocObject();
        swift_weakInit();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54E0, &unk_224DBBBB0);
        v1637 = MEMORY[0x277CBCD90];
        sub_224A33088(&unk_2813510F8, &unk_27D6F54E0, &unk_224DBBBB0);
        sub_224DAB488();

        swift_beginAccess();
        v709 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54F0, &qword_224DBA400);
        v710 = sub_224A33088(&unk_281350BC0, &unk_27D6F54F0, &qword_224DBA400);
        v1643 = v709;
        sub_224DAB318();
        swift_endAccess();

        v711 = swift_allocObject();
        swift_weakInit();
        v712 = v690[2];
        v713 = v690[3];
        v690[2] = sub_224C4D2C8;
        v690[3] = v711;

        sub_224A3D418(v712);
        v1577 = v690;

        v715 = *(v642 + 176);
        v714 = *(v642 + 184);
        __swift_project_boxed_opaque_existential_1((v642 + 152), v715);
        *&v1755 = (*(*(*(v714 + 8) + 8) + 40))(768, v715);
        swift_allocObject();
        swift_weakInit();
        v716 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
        v717 = sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
        v1541 = v716;
        v1540 = v717;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v718 = *(v642 + 320);
        __swift_project_boxed_opaque_existential_1((v642 + 288), *(v642 + 312));
        *&v1755 = sub_224DAC698();
        v719 = sub_224DAF3D8();
        *&v1752 = v719;
        v720 = v1601;
        (v1610)(v1601, 1, 1, v1611);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
        sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040);
        v721 = v1533;
        sub_224DAB448();
        sub_224A3311C(v720, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020);
        v722 = v1538;
        sub_224DAB488();

        (*(v1537 + 8))(v721, v722);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v723 = *(v642 + 328);
        *&v1755 = sub_224DAC048();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v724 = *(v642 + 328);
        *&v1755 = sub_224DAC078();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        v1642 = v710;
        sub_224DAB318();
        swift_endAccess();

        v1637 = swift_allocObject();
        swift_weakInit();
        v725 = *(v1639 + 2);
        v1641 = v642;
        if (v725)
        {
          v726 = 0;
          v2 = v1639 + 32;
          while (v726 < *(v1639 + 2))
          {
            v727 = v726 + 1;
            *&v1755 = *&v2[8 * v726];
            v728 = swift_allocObject();
            v729 = v1637;
            *(v728 + 16) = sub_224C4D2F0;
            *(v728 + 24) = v729;

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5480, &qword_224DBBB80);
            sub_224A33088(&unk_281351028, &unk_27D6F5480, &qword_224DBBB80);
            v642 = v1641;
            sub_224DAB488();

            swift_beginAccess();
            sub_224DAB318();
            swift_endAccess();

            v726 = v727;
            if (v725 == v727)
            {
              goto LABEL_112;
            }
          }

          goto LABEL_179;
        }

LABEL_112:

        *&v1755 = sub_224DAD6D8();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1755 = sub_224DAD508();
        swift_allocObject();
        swift_weakInit();

        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *(&v1756 + 1) = &type metadata for FeatureFlags.Widgets;
        v730 = sub_224A80FFC();
        v1757 = v730;
        LOBYTE(v1755) = 3;
        v731 = sub_224DA9C98();
        __swift_destroy_boxed_opaque_existential_1(&v1755);
        v1453 = v730;
        if (v731)
        {
          v732 = *(v642 + 224);
          __swift_project_boxed_opaque_existential_1((v642 + 192), *(v642 + 216));
          *&v1755 = sub_224DAD8B8();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B0, &unk_224DB8D60);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55E0, &unk_224DB65D0);
          sub_224A33088(&qword_2813510B0, &qword_27D6F42B0, &unk_224DB8D60);
          v733 = v1450;
          sub_224DAB3E8();

          sub_224A33088(&unk_27D6F55F0, &unk_27D6F5350, &unk_224DBBB00);

          v734 = v1452;
          sub_224DAB488();

          (*(v1451 + 8))(v733, v734);
          swift_beginAccess();
          sub_224DAB318();
          swift_endAccess();
        }

        v735 = v1634;
        v736 = v1625;
        v737 = v1596;
        v738 = v1597;
        v739 = v1481;
        v740 = v1509;

        v1592(v738, v1638);
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        __swift_destroy_boxed_opaque_existential_1(&v1764);
        __swift_destroy_boxed_opaque_existential_1(&v1779);
        __swift_destroy_boxed_opaque_existential_1(&v1784);
        __swift_destroy_boxed_opaque_existential_1(&v1788);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1651);
        __swift_destroy_boxed_opaque_existential_1(v1731);
        __swift_destroy_boxed_opaque_existential_1(&v1758);
        __swift_destroy_boxed_opaque_existential_1(&v1761);

        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        v741 = sub_224DAE058();
        v1662 = MEMORY[0x277CF9A40];
        *(&v1661 + 1) = v735;
        *&v1660 = v1460;
        v742 = v1460;
        v743 = sub_224DAC988();
        v744 = MEMORY[0x22AA5C3A0](0xD000000000000010, v739 | 0x8000000000000000, &v1660, v743);
        v1662 = MEMORY[0x277CF9E88];
        *(&v1661 + 1) = v741;
        *&v1660 = v744;
        v745 = sub_224DAD658();

        v746 = sub_224DAD648();
        *&v1721[16] = MEMORY[0x277CF9D10];
        *&v1721[8] = v745;
        *&v1720 = v746;
        v1733 = MEMORY[0x277CF9E70];
        v1732 = v1580;
        v1731[0] = v1589;

        sub_224DAC988();
        sub_224DACE68();
        v1431 = type metadata accessor for RemoteActivitySubscriptionCache();
        swift_allocObject();

        v1533 = sub_224C987AC(v747);

        v748 = v1623;
        v1440 = v744;
        v749 = 0;
        if (v1623)
        {
          v749 = sub_224DAAD68();
          v748 = MEMORY[0x277D466B0];
        }

        v1731[0] = v1623;
        v1731[1] = 0;
        v1731[2] = 0;
        v1732 = v749;
        v1733 = v748;
        v1734 = 0xD000000000000010;
        v1735 = 0x8000000224DC4380;
        sub_224A3317C(v1612, &v1660);
        v1639 = v742;

        v750 = v740;
        v1597 = v750;
        v751 = sub_224C3D880(v1591, v736, v1590);
        *&v1721[8] = &type metadata for ArchiveVersionProvider;
        *&v1721[16] = v1554;
        *&v1720 = swift_allocObject();
        sub_224C4CF40(v1731, v1720 + 16);
        v1657 = &off_28382CD80;
        v1656 = v737;
        *&v1655 = v1622;
        v752 = type metadata accessor for MobileActivityService();
        v753 = *(v752 + 48);
        v754 = *(v752 + 52);
        v1554 = v752;
        v755 = swift_allocObject();
        v756 = __swift_mutable_project_boxed_opaque_existential_1(&v1655, v737);
        v757 = *(*(v737 - 1) + 64);
        MEMORY[0x28223BE20](v756);
        v1510 = v758;
        v1577 = ((v758 + 15) & 0xFFFFFFFFFFFFFFF0);
        v759 = (&v1425 - v1577);
        v761 = *(v760 + 16);
        v1511 = (v760 + 16);
        v1509 = v761;
        (v761)(&v1425 - v1577);
        v762 = *v759;
        v763 = v1532;
        v1429 = *(v1536 + 16);
        v1430 = v1536 + 16;
        v1429(v1532, v1556, v1559);
        v764 = v1613;

        v765 = v1507;
        v1538 = v765;

        v1637 = sub_224C46164(v750, v1639, &v1660, v763, v1630, v1572, v751, v764, v766, v765, &v1720, v762, v755);
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        v767 = sub_224DA9BD8();
        v768 = sub_224DA9BC8();
        v1662 = MEMORY[0x277CF9848];
        v1502 = v767;
        *(&v1661 + 1) = v767;
        *&v1660 = v768;
        v769 = v1475;
        v770 = *&v1475[OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock];
        os_unfair_lock_lock(*(v770 + 16));
        sub_224A3796C(&v1660, &v1720, &unk_27D6F5510, &qword_224DB5C28);
        v771 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock_activityCenter;
        swift_beginAccess();
        sub_224A838C0(&v1720, v769 + v771, &unk_27D6F5510, &qword_224DB5C28);
        swift_endAccess();
        sub_224B4500C();
        os_unfair_lock_unlock(*(v770 + 16));
        sub_224A3311C(&v1660, &unk_27D6F5510, &qword_224DB5C28);
        v772 = sub_224DACEE8();
        v773 = v1547;
        *(&v1661 + 1) = v1547;
        v774 = sub_224A33088(&unk_281350C78, &unk_27D6F53E8, &unk_224DBBB30);
        v1662 = v774;
        v775 = v1578;
        *&v1660 = v1578;
        *&v1721[16] = MEMORY[0x277CF9E70];
        *&v1721[8] = v1580;
        *&v1720 = v1589;
        v776 = objc_opt_self();

        v777 = [v776 defaultManager];
        v1571 = sub_224DACEC8();
        v1517 = v774;
        v1662 = v774;
        *(&v1661 + 1) = v773;
        *&v1660 = v775;
        v1477(v1539, v1478, v1555);

        v778 = v1479;
        v779 = sub_224DADA88();
        *&v1721[16] = MEMORY[0x277CF9DA0];
        *&v1721[8] = v778;
        *&v1720 = v779;
        v1481 = v776;
        v780 = [v776 defaultManager];
        v1539 = v772;
        v1560 = sub_224DACEC8();
        v1662 = MEMORY[0x277CF9A38];
        *(&v1661 + 1) = v1634;
        v781 = v1639;
        *&v1660 = v1639;
        sub_224A3317C(v1796, &v1720);
        sub_224A3317C(v1612, &v1655);
        __swift_project_boxed_opaque_existential_1(&v1655, v1656);
        v782 = v781;
        v783 = v764;
        sub_224DADA68();
        v784 = v1476;
        v785 = sub_224DAE008();
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        v1657 = MEMORY[0x277CF9E80];
        v1656 = v784;
        *&v1655 = v785;
        v786 = v1552;
        v787 = sub_224DADF38();
        v1442 = type metadata accessor for ControlVisibilityMonitor();
        swift_allocObject();
        v788 = sub_224CC06C4();
        v789 = v769;

        v1441 = v789;
        v1507 = v788;
        v790 = sub_224C44C1C(v789, v788);
        v791 = type metadata accessor for RemoteControlReloadFilter();
        v792 = swift_allocObject();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5520, &unk_224DBBBB8);
        v793 = swift_allocObject();
        *(v793 + 16) = v1519;
        *(v793 + 56) = v791;
        *(v793 + 64) = &off_283829878;
        *(v793 + 32) = v792;
        *(v793 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5528, &qword_224DBBBC0);
        *(v793 + 104) = &off_28382CA28;
        *(v793 + 72) = v790;
        v794 = qword_281351448;
        v1516 = v782;

        v795 = v783;

        v1515 = v1538;
        v1514 = v1597;
        v796 = v1598;

        v797 = v1584;

        v1537 = v787;

        v1439 = v792;

        v1508 = v790;

        if (v794 != -1)
        {
          swift_once();
        }

        v798 = v1638;
        v799 = __swift_project_value_buffer(v1638, qword_281364D90);
        v1635(v1632, v799, v798);
        v1662 = MEMORY[0x277CF9A38];
        *(&v1661 + 1) = v1634;
        *&v1660 = v1516;
        *&v1721[16] = MEMORY[0x277CF9E58];
        *&v1721[8] = v786;
        *&v1720 = v1537;
        v1576 = MEMORY[0x277CF9C50];
        v1555 = sub_224C41198(&unk_281350D00, MEMORY[0x277CF9C50]);
        v1736[0] = v1630;
        v1657 = MEMORY[0x277CF9C38];
        v1656 = v1608;
        *&v1655 = v795;
        v1654 = &off_28382A480;
        v1653 = v1629;
        *&v1651 = v1515;
        v1647 = v1628;
        v1639 = sub_224C41198(&qword_28135A938, type metadata accessor for DescriptorService);
        v1648 = v1639;
        *&v1645 = v1514;
        v1791 = v1588;
        v1790 = v1600;
        *&v1788 = v1627;
        v1787 = &off_28382CD80;
        v800 = v1596;
        v1786 = v1596;
        *&v1784 = v1622;
        v801 = type metadata accessor for PushService();
        v1781 = &off_283828B40;
        v1780 = v801;
        *&v1779 = v796;
        v1767 = MEMORY[0x277CF9B10];
        v1766 = v1575;
        *&v1764 = v797;
        v802 = type metadata accessor for LiveControlService();
        v803 = *(v802 + 48);
        v804 = *(v802 + 52);
        v1572 = v802;
        v805 = swift_allocObject();
        v806 = __swift_mutable_project_boxed_opaque_existential_1(&v1784, v800);
        v1447 = &v1425;
        MEMORY[0x28223BE20](v806);
        v807 = (&v1425 - v1577);
        (v1509)(&v1425 - v1577);
        v808 = v1780;
        v809 = __swift_mutable_project_boxed_opaque_existential_1(&v1779, v1780);
        v1446 = &v1425;
        v810 = *(*(v808 - 1) + 64);
        MEMORY[0x28223BE20](v809);
        v812 = (&v1425 - ((v811 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v813 + 16))(v812);
        v814 = *v807;
        v815 = *v812;
        v1763 = &off_28382CD80;
        v1762 = v800;
        *&v1761 = v814;
        v1760 = &off_283828B40;
        v1575 = v801;
        v1759 = v801;
        *&v1758 = v815;
        v816 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5530, &unk_224DBB320);
        v817 = *(v816 + 48);
        v818 = *(v816 + 52);
        v1479 = v816;
        swift_allocObject();
        v819 = sub_224DAB358();
        *(v805 + 56) = 0;
        *(v805 + 64) = 0;
        *(v805 + 48) = v819;
        v1477 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5538, &unk_224DBBBC8);
        *(v805 + 368) = sub_224DADDF8();
        v820 = MEMORY[0x277D84F98];
        *(v805 + 376) = MEMORY[0x277D84F98];
        v821 = OBJC_IVAR____TtC10ChronoCore18LiveControlService_pushElevatedHosts;
        v822 = sub_224AE8AF4(&unk_2838282B0);
        sub_224BCA6B4(&unk_2838282D0);
        *(v805 + v821) = v822;
        v823 = MEMORY[0x277D84F90];
        *(v805 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions) = MEMORY[0x277D84F90];
        *(v805 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_configurationLifetimeAssertions) = v823;
        *(v805 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__statefulStoreCalloutQueue_environmentSubscriptions) = v820;
        sub_224DAB818();
        *&v1755 = v823;
        sub_224DAF788();
        v1603(v1607, v1568, v1618);
        v824 = v1635;
        v825 = v1638;
        *(v805 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue) = sub_224DAF418();
        sub_224A3317C(&v1720, v805 + 72);
        v824(v805 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_logger, v1632, v825);
        sub_224A3317C(&v1645, v805 + 160);
        sub_224A3317C(&v1788, v805 + 200);
        v826 = v1571;
        v827 = v1555;
        *(v805 + 16) = v1571;
        *(v805 + 24) = v827;
        v828 = v1560;
        *(v805 + 32) = v1560;
        *(v805 + 40) = v827;
        sub_224A3317C(&v1660, v805 + 112);
        sub_224A3317C(&v1761, v805 + 280);
        sub_224A3317C(&v1651, v805 + 384);
        sub_224A3317C(&v1758, v805 + 240);
        v829 = sub_224C41198(&unk_281350D10, v1576);

        v1476 = v829;
        sub_224DAC3E8();
        sub_224A36F98(&v1755, v805 + 328);
        *(v805 + 320) = v793;
        sub_224A3317C(&v1764, v805 + OBJC_IVAR____TtC10ChronoCore18LiveControlService_reloadStateService);
        sub_224A3317C(&v1660, &v1755);
        sub_224A3317C(&v1645, &v1752);
        sub_224A3317C(&v1651, &v1749);
        sub_224A3317C(&v1788, &v1746);
        v830 = v826;
        if (qword_281351650 != -1)
        {
          swift_once();
        }

        v1577 = __swift_project_value_buffer(v825, qword_281365048);
        v831 = v1585;
        v824(v1585, v1577, v825);
        v1513 = type metadata accessor for ControlReloadStrategy();
        v832 = *(v1513 + 48);
        v833 = *(v1513 + 52);
        v834 = v824;
        v835 = swift_allocObject();
        v835[2] = 0;
        v835[3] = 0;
        sub_224A36F98(&v1755, (v835 + 4));
        sub_224A36F98(&v1752, (v835 + 9));
        v836 = v1555;
        v835[14] = v830;
        v835[15] = v836;
        v835[16] = v828;
        v835[17] = v836;
        sub_224A36F98(&v1749, (v835 + 18));
        sub_224A36F98(&v1746, (v835 + 23));
        v837 = v1566;
        v1566(v835 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v831, v825);
        v1512 = v835;
        *(v835 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview) = 0;
        v838 = v835 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_expirationDuration;
        *v838 = 0;
        v838[8] = 1;
        sub_224A3317C(&v1764, &v1755);
        v834(v831, v1632, v825);
        v839 = type metadata accessor for ControlReloadConfigurationPolicy();
        v840 = *(v839 + 48);
        v841 = *(v839 + 52);
        v842 = swift_allocObject();
        v837(v842 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_logger, v831, v825);
        v843 = v842 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_reloadStateService;
        v844 = v1756;
        *v843 = v1755;
        *(v843 + 16) = v844;
        *(v843 + 32) = v1757;
        v845 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5548, &unk_224DBBBD0);
        *&v1752 = v1512;
        *&v1749 = v842;
        v1445 = v842;
        v1635(v831, v1577, v1638);
        sub_224A3317C(&v1655, &v1755);
        v846 = sub_224C41198(&unk_281358950, type metadata accessor for ControlReloadStrategy);
        v847 = sub_224C41198(&unk_281352F68, type metadata accessor for ControlReloadConfigurationPolicy);

        v1450 = v847;
        v1423 = v847;
        v1451 = v846;
        v1422 = v846;
        v1478 = v839;
        v1421 = v839;
        v1475 = v845;
        *(v805 + 152) = sub_224DAD268();
        *&v1755 = sub_224DAC0E8();
        v848 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5550, &unk_224DBBBD8);
        v849 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5558, &unk_224DBBBE0);
        v1538 = MEMORY[0x277CBCD90];
        v850 = sub_224A33088(&unk_2813510C0, &unk_27D6F5550, &unk_224DBBBD8);
        v851 = v1521;
        v1459 = v849;
        v1460 = v848;
        v1452 = v850;
        sub_224DAB3B8();

        swift_allocObject();
        swift_weakInit();
        v852 = sub_224A33088(&unk_2813513C8, &unk_27D6F5348, &unk_224DBBAF8);

        v853 = v1522;
        v1449 = v852;
        sub_224DAB488();

        v854 = *(v1549 + 8);
        v1549 += 8;
        v1448 = v854;
        v854(v851, v853);
        v855 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue_persistentSubscriptions;
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v856 = *(v805 + 224);
        v857 = *(v805 + 232);
        __swift_project_boxed_opaque_existential_1((v805 + 200), v856);
        *&v1755 = (*(*(v857 + 8) + 40))(768, v856);
        v858 = v1489;
        sub_224DAF378();
        v1577 = OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue;
        *&v1752 = *(v805 + OBJC_IVAR____TtC10ChronoCore18LiveControlService__queue);
        v859 = v1752;
        v860 = v1601;
        (v1610)(v1601, 1, 1, v1611);
        v861 = v859;
        v862 = v1490;
        sub_224DAB468();
        sub_224A3311C(v860, &qword_27D6F5090, &qword_224DB5C30);
        v863 = *(v1548 + 1);
        v1548 += 8;
        v1444 = v863;
        v863(v858, v1520);

        swift_allocObject();
        swift_weakInit();
        v1443 = sub_224A33088(&qword_281351350, &unk_27D6F5120, &unk_224DBAE60);
        v864 = v1492;
        sub_224DAB488();

        v1491 = *(v1491 + 8);
        (v1491)(v862, v864);
        v1576 = v855;
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v865 = *(v805 + 224);
        v866 = *(v805 + 232);
        __swift_project_boxed_opaque_existential_1((v805 + 200), v865);
        *&v1755 = (*(*(v866 + 8) + 48))(768, v865);
        sub_224DAF378();
        *&v1752 = *&v1577[v805];
        v867 = v1752;
        v868 = v1601;
        (v1610)(v1601, 1, 1, v1611);
        v869 = v867;
        sub_224DAB468();
        sub_224A3311C(v868, &qword_27D6F5090, &qword_224DB5C30);
        v1444(v858, v1520);

        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        (v1491)(v862, v864);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1755 = sub_224DAD6D8();
        *&v1752 = *&v1577[v805];
        v870 = v1752;
        v871 = v1601;
        (v1610)(v1601, 1, 1, v1611);
        v872 = v870;
        v873 = v1523;
        sub_224DAB448();
        sub_224A3311C(v871, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        v1548 = MEMORY[0x277CBCD60];
        v874 = sub_224A33088(&qword_281351248, &unk_27D6F5338, &qword_224DBBAF0);
        v875 = v1524;
        v1520 = v874;
        sub_224DAB488();

        v876 = *(v1550 + 8);
        v1550 += 8;
        v1492 = v876;
        (v876)(v873, v875);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        __swift_project_boxed_opaque_existential_1(&v1758, v1759);
        *&v1755 = off_283828B48();
        *&v1752 = *&v1577[v805];
        v877 = v1752;
        v878 = v1601;
        (v1610)(v1601, 1, 1, v1611);
        v879 = v877;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5560, &unk_224DB8D40);
        sub_224A33088(&unk_281351080, &unk_27D6F5560, &unk_224DB8D40);
        v880 = v1493;
        sub_224DAB448();
        sub_224A3311C(v878, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&unk_281351250, &unk_27D6F5330, &unk_224DBBAE8);
        v881 = v1495;
        sub_224DAB488();

        (*(v1494 + 8))(v880, v881);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        __swift_project_boxed_opaque_existential_1(&v1758, v1759);
        *&v1755 = off_283828B58();
        *&v1752 = *&v1577[v805];
        v882 = v1752;
        (v1610)(v878, 1, 1, v1611);
        v883 = v882;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4938, &unk_224DB8D48);
        sub_224A33088(&unk_281351110, &unk_27D6F4938, &unk_224DB8D48);
        v884 = v1496;
        sub_224DAB448();
        sub_224A3311C(v878, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&unk_281351298, &unk_27D6F5328, &unk_224DBBAE0);
        v885 = v1498;
        sub_224DAB488();

        (*(v1497 + 8))(v884, v885);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        __swift_project_boxed_opaque_existential_1(&v1758, v1759);
        *&v1755 = off_283828B50();
        *&v1752 = *&v1577[v805];
        v886 = v1752;
        (v1610)(v878, 1, 1, v1611);
        v887 = v886;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5570, &unk_224DB8D50);
        sub_224A33088(&unk_281351170, &unk_27D6F5570, &unk_224DB8D50);
        v888 = v1499;
        sub_224DAB448();
        sub_224A3311C(v878, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        sub_224A33088(&unk_2813512C0, &unk_27D6F5320, &unk_224DBBAD8);
        v889 = v1501;
        sub_224DAB488();

        (*(v1500 + 8))(v888, v889);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v890 = *(v805 + 152);
        *&v1755 = sub_224DAC048();
        swift_allocObject();
        swift_weakInit();
        v891 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5578, &unk_224DBBBE8);
        v892 = sub_224A33088(&unk_281351120, &unk_27D6F5578, &unk_224DBBBE8);
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v893 = *(v805 + 152);
        *&v1755 = sub_224DAC078();
        swift_allocObject();
        swift_weakInit();
        v1501 = v891;
        v1500 = v892;
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1755 = sub_224DAD508();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v1592(v1632, v1638);
        __swift_destroy_boxed_opaque_existential_1(&v1764);
        __swift_destroy_boxed_opaque_existential_1(&v1788);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1651);
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        __swift_destroy_boxed_opaque_existential_1(&v1761);
        v894 = swift_allocObject();
        swift_weakInit();

        v895 = v1512;
        v896 = *(v1512 + 16);
        v897 = *(v1512 + 24);
        *(v1512 + 16) = sub_224C4D358;
        *(v895 + 24) = v894;

        sub_224A3D418(v896);

        __swift_destroy_boxed_opaque_existential_1(&v1758);

        __swift_destroy_boxed_opaque_existential_1(&v1779);
        __swift_destroy_boxed_opaque_existential_1(&v1784);
        v1662 = &off_283831038;
        v898 = v1572;
        *(&v1661 + 1) = v1572;
        *&v1660 = v805;
        v899 = qword_2813651F0;
        v900 = v1508;
        swift_beginAccess();

        sub_224A838C0(&v1660, v900 + v899, &qword_27D6F54B0, &unk_224DBF2A0);
        swift_endAccess();
        *(&v1661 + 1) = v898;
        v1576 = sub_224C41198(&qword_281359B70, type metadata accessor for LiveControlService);
        v1662 = v1576;
        *&v1660 = v805;
        sub_224A3317C(&v1660, &v1720);
        v901 = v1462;
        swift_beginAccess();
        v1597 = v805;

        sub_224A838C0(&v1720, v901, &qword_27D6F46C0, &qword_224DB7608);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v1662 = v1517;
        *(&v1661 + 1) = v1547;
        *&v1660 = v1578;
        *&v1721[16] = MEMORY[0x277CF9E70];
        *&v1721[8] = v1580;
        *&v1720 = v1589;

        v902 = [v1481 defaultManager];
        v903 = sub_224DACEC8();
        v904 = qword_281351608;
        v905 = v1516;
        v906 = v1627;

        v907 = v1613;

        v908 = v1515;
        v909 = v1514;
        v910 = v1537;

        v911 = v1534;

        v1577 = v903;

        v912 = v904 == -1;
        v913 = v906;
        v914 = v907;
        v915 = v1632;
        if (!v912)
        {
          swift_once();
        }

        v916 = v1638;
        v917 = __swift_project_value_buffer(v1638, qword_281364FB8);
        v1635(v915, v917, v916);
        v918 = v1503;
        *(&v1661 + 1) = v1503;
        v919 = sub_224C41198(&unk_281352A48, type metadata accessor for PreviewControlConfigurationService);
        v1662 = v919;
        *&v1660 = v911;
        *&v1721[16] = MEMORY[0x277CF9A38];
        *&v1721[8] = v1634;
        v1538 = v905;
        *&v1720 = v905;
        v1657 = MEMORY[0x277CF9E58];
        v1656 = v1552;
        *&v1655 = v910;
        *&v1752 = v1630;
        v1654 = MEMORY[0x277CF9C38];
        v1653 = v1608;
        *&v1651 = v914;
        v1648 = &off_28382A480;
        v1647 = v1629;
        v1552 = v908;
        *&v1645 = v908;
        v1791 = v1588;
        v1790 = v1600;
        *&v1788 = v913;
        v1787 = v1639;
        v1786 = v1628;
        v1548 = v909;
        *&v1784 = v909;
        v920 = type metadata accessor for PreviewControlService();
        v921 = *(v920 + 12);
        v922 = *(v920 + 26);
        v1580 = v920;
        v923 = swift_allocObject();
        v924 = __swift_mutable_project_boxed_opaque_existential_1(&v1660, v918);
        v1516 = &v1425;
        v925 = *(*(v918 - 1) + 64);
        MEMORY[0x28223BE20](v924);
        v927 = (&v1425 - ((v926 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v928 + 16))(v927);
        v929 = *v927;
        v1514 = v919;
        v1781 = v919;
        v1780 = v918;
        *&v1779 = v929;
        v930 = *(v1479 + 48);
        v931 = *(v1479 + 52);
        swift_allocObject();
        v932 = sub_224DAB358();
        *(v923 + 5) = 0;
        *(v923 + 6) = 0;
        *(v923 + 4) = v932;
        *(v923 + 33) = sub_224DADDF8();
        v933 = MEMORY[0x277D84F90];
        *(v923 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue_persistentSubscriptions) = MEMORY[0x277D84F90];
        v934 = OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock;
        v935 = swift_allocObject();
        *(v923 + v934) = v935;
        *(v935 + 16) = 0;
        *(v923 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_lock_configurationLifetimeAssertions) = v933;
        *(v923 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__statefulStoreCalloutQueue_environmentSubscriptions) = MEMORY[0x277D84F98];
        sub_224DAB818();
        *&v1764 = v933;
        sub_224DAF788();
        v1603(v1607, v1568, v1618);
        *(v923 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue) = sub_224DAF418();
        sub_224A3317C(&v1655, v923 + 96);
        v936 = v1638;
        v937 = v1635;
        v1635(v923 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService_logger, v1632, v1638);
        sub_224A3317C(&v1784, v923 + 184);
        v938 = v1577;
        v939 = v1555;
        *(v923 + 2) = v1577;
        *(v923 + 3) = v939;
        sub_224A3317C(&v1779, v923 + 56);
        sub_224A3317C(&v1720, v923 + 136);
        sub_224A3317C(&v1788, v923 + 272);
        sub_224A3317C(&v1645, v923 + 312);

        sub_224DAC3E8();
        v1608 = v923;
        sub_224A36F98(&v1764, v923 + 224);
        sub_224A3317C(&v1720, &v1764);
        sub_224A3317C(&v1784, &v1761);
        sub_224A3317C(&v1645, &v1758);
        sub_224A3317C(&v1788, &v1755);
        if (qword_2813515A0 != -1)
        {
          swift_once();
        }

        v1515 = __swift_project_value_buffer(v936, qword_281364EF8);
        v940 = v1585;
        v937(v1585, v1515, v936);
        v941 = *(v1513 + 48);
        v942 = *(v1513 + 52);
        v943 = swift_allocObject();
        v943[2] = 0;
        v943[3] = 0;
        sub_224A36F98(&v1764, (v943 + 4));
        sub_224A36F98(&v1761, (v943 + 9));
        v943[14] = v938;
        v943[15] = v939;
        v943[16] = 0;
        v943[17] = 0;
        sub_224A36F98(&v1758, (v943 + 18));
        sub_224A36F98(&v1755, (v943 + 23));
        v944 = v1566;
        v1566(v943 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_logger, v940, v936);
        *(v943 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_isPreview) = 1;
        v945 = v943 + OBJC_IVAR____TtC10ChronoCore21ControlReloadStrategy_expirationDuration;
        *v945 = 0;
        v945[8] = 1;
        v937(v940, v1632, v936);
        v946 = v1478;
        v947 = *(v1478 + 48);
        v948 = *(v1478 + 52);
        v949 = swift_allocObject();
        v944(v949 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_logger, v940, v936);
        v950 = v949 + OBJC_IVAR____TtC10ChronoCore32ControlReloadConfigurationPolicy_reloadStateService;
        *v950 = 0u;
        *(v950 + 16) = 0u;
        *(v950 + 32) = 0;
        *&v1761 = v943;
        *&v1758 = v949;
        v1568 = v949;
        v937(v940, v1515, v936);
        sub_224A3317C(&v1651, &v1764);

        v1423 = v1450;
        v1421 = v946;
        v1422 = v1451;
        v951 = sub_224DAD268();
        v952 = v1608;
        *(v1608 + 22) = v951;
        v953 = swift_allocObject();
        swift_weakInit();
        v1539 = v943;
        v954 = v943[2];
        v955 = v943[3];
        v943[2] = sub_224C4D360;
        v943[3] = v953;

        sub_224A3D418(v954);

        v956 = v952[22];
        *&v1764 = sub_224DAC0E8();
        v957 = v1521;
        sub_224DAB3B8();

        swift_allocObject();
        swift_weakInit();
        v958 = v1522;
        sub_224DAB488();

        v1448(v957, v958);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1764 = sub_224DAD6D8();
        *&v1761 = *(v952 + OBJC_IVAR____TtC10ChronoCore21PreviewControlService__queue);
        v959 = v1761;
        v960 = v1601;
        (v1610)(v1601, 1, 1, v1611);
        v961 = v959;
        v962 = v1523;
        sub_224DAB448();
        sub_224A3311C(v960, &qword_27D6F5090, &qword_224DB5C30);

        swift_allocObject();
        swift_weakInit();
        v963 = v1524;
        sub_224DAB488();

        (v1492)(v962, v963);
        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v964 = v952[10];
        v965 = v952[11];
        __swift_project_boxed_opaque_existential_1(v952 + 7, v964);
        *&v1764 = (*(*(*(v965 + 8) + 8) + 40))(768, v964);
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v966 = v952[22];
        *&v1764 = sub_224DAC048();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v967 = v952[22];
        *&v1764 = sub_224DAC078();
        swift_allocObject();
        swift_weakInit();
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        *&v1764 = sub_224DAD508();
        swift_allocObject();
        swift_weakInit();

        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB318();
        swift_endAccess();

        v1592(v1632, v1638);
        __swift_destroy_boxed_opaque_existential_1(&v1784);
        __swift_destroy_boxed_opaque_existential_1(&v1788);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1651);
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        __swift_destroy_boxed_opaque_existential_1(&v1779);

        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v968 = v1623;
        if (v1623)
        {
          v969 = MEMORY[0x277D466B0];
          v970 = MEMORY[0x277D466F8];
          v971 = MEMORY[0x277D466B8];
          v972 = MEMORY[0x277D466A0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F55A0, &qword_224DBBC00);
          v973 = swift_allocObject();
          v974 = swift_retain_n();
          v975 = sub_224C4A7F8(v974, v968, v968, v973, &unk_283830128, &unk_224DBBCE0);
          v976 = objc_allocWithZone(MEMORY[0x277D02938]);

          v977 = v1644;

          v978 = sub_224C4B280(v975, v968, v977, [v976 init], 900.0);
          sub_224DAA648();
          v979 = sub_224DAA4C8();
          v980 = sub_224DAA4B8();
          v1662 = MEMORY[0x277CFA090];
          *(&v1661 + 1) = v979;
          *&v1660 = v980;
          v981 = sub_224DAA488();
          v982 = sub_224DAA478();
          *&v1721[16] = MEMORY[0x277CFA078];
          *&v1721[8] = v981;
          *&v1720 = v982;
          sub_224DA9F58();
          v1611 = sub_224DAA628();
          *(v1636 + 104) = v1611;
          v983 = sub_224DAAD68();
          v1662 = MEMORY[0x277D46700];
          v1663 = v970;
          v1664 = v969;
          v1665 = MEMORY[0x277D466E8];
          v1675 = MEMORY[0x277CF9C78];
          v1676 = MEMORY[0x277CF9C80];
          v1666 = MEMORY[0x277D46690];
          v1667 = v971;
          v1632 = v983;
          *(&v1661 + 1) = v983;
          *&v1660 = v968;
          v1673[0] = v1634;
          v1673[1] = MEMORY[0x277CF9A38];
          v1668 = v972;
          v984 = v1538;
          *&v1671 = v1538;
          v1674 = v1433;
          v1673[2] = v1531;
          v1682 = v1620;
          v1681 = v1626;
          v1680 = v1640;
          v1686 = type metadata accessor for MobilePlaceholderService();
          v1683 = v1595;
          *&v1690 = v1535;
          *(&v1690 + 1) = &off_283836988;
          v1687 = &off_283833B20;
          v1688 = v1641;
          *(&v1692 + 1) = v1619;
          v1693 = sub_224C41198(&unk_281358108, type metadata accessor for MobileTimelineService);
          v1694 = sub_224C41198(&unk_2813580D0, type metadata accessor for MobileTimelineService);
          v1695 = sub_224C41198(&unk_2813580F8, type metadata accessor for MobileTimelineService);
          v1696 = sub_224C41198(&unk_2813580E0, type metadata accessor for MobileTimelineService);
          v1697 = sub_224C41198(&unk_2813580E8, type metadata accessor for MobileTimelineService);
          *&v1691 = v977;
          v1699 = v1621;
          v1698 = v1625;
          v1702 = v1628;
          v1703 = v1639;
          v1700 = &off_2838352C0;
          v985 = v1548;
          v1701 = v1548;
          v1706 = v1434;
          v1705 = v1505;
          v1704 = v1558;
          v1708 = type metadata accessor for StalenessService();
          v1709 = &off_283837478;
          v1710 = sub_224C41198(&unk_28135AD10, type metadata accessor for StalenessService);
          v1707 = v978;
          v1712 = v1504;
          v1713 = v1432;
          v1711 = v1530;

          v986 = v984;

          v987 = v1557;

          v1643 = v985;
          v988 = v1570;

          v989 = v1587;

          v990 = v1611;

          v1642 = v978;

          sub_224DA9E68();
          v991 = sub_224DA9DB8();
          LOBYTE(v969) = v992;

          sub_224A3317C((v1636 + 312), v1716);
          memset(v1717, 0, sizeof(v1717));
          memset(v1718, 0, sizeof(v1718));
          v1719 = 0;
          *(&v1670 + 1) = v988;
          v1677 = v990;
          v1669 = v987;
          *&v1670 = v989;
          v1678 = MEMORY[0x277CFA108];
          v1679 = MEMORY[0x277CFA110];
          v1714 = v991;
          v1715 = v969 & 1;
          v1716[7] = v1577;
          v1716[8] = v1555;
          v1716[5] = v1571;
          v1716[6] = v1555;
          v1716[9] = v1627;
          *&v1721[8] = v1580;
          *&v1721[16] = sub_224C41198(&unk_281357D50, type metadata accessor for PreviewControlService);
          *&v1720 = v1608;

          sub_224A838C0(&v1720, v1717, &qword_27D6F4770, &qword_224DB7690);
          *&v1721[16] = v1576;
          *&v1721[8] = v1572;
          *&v1720 = v1597;

          sub_224A838C0(&v1720, &v1717[40], &qword_27D6F46C0, &qword_224DB7608);
          *&v1721[16] = v1514;
          *&v1721[8] = v1503;
          *&v1720 = v1534;

          sub_224A838C0(&v1720, v1718, &qword_27D6F55A8, &qword_224DBBC08);
          if (qword_281352040 != -1)
          {
            swift_once();
          }

          v993 = off_281352050;

          sub_224DAB818();
          *&v1720 = MEMORY[0x277D84F90];
          sub_224DAF788();
          v1603(v1607, v1553, v1618);
          v994 = sub_224DAF418();
          sub_224C17B7C(&v1660, v993, v994, &v1788);

          v995 = v1790;
          v996 = v1791;
          v997 = __swift_project_boxed_opaque_existential_1(&v1788, v1790);
          *&v1721[8] = v995;
          *&v1721[16] = *(v996 + 1);
          v998 = __swift_allocate_boxed_opaque_existential_1(&v1720);
          (*(*(v995 - 1) + 16))(v998, v997, v995);
          sub_224DAA188();
          __swift_destroy_boxed_opaque_existential_1(&v1720);
          v999 = v1623;
          v1000 = v1636;
          *(v1636 + 112) = v1623;
          sub_224A3317C(&v1788, (v1000 + 744));
          v1001 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55B0, &unk_224DBBC10);
          v1002 = swift_allocObject();
          v1003 = swift_retain_n();
          v1004 = sub_224C4A7F8(v1003, v999, v999, v1002, &unk_28382FD90, &unk_224DBBC80);
          *&v1721[8] = v1001;
          *&v1721[16] = sub_224A33088(&unk_28135B438, &unk_27D6F55B0, &unk_224DBBC10);
          *&v1720 = v1004;
          v1657 = v1639;
          v1656 = v1628;
          v1005 = v1643;
          *&v1655 = v1643;
          v1006 = type metadata accessor for DiscoveryService();
          v1007 = swift_allocObject();
          sub_224A3317C(&v1720, v1007 + 16);
          sub_224A3317C(&v1655, v1007 + 56);
          v1654 = &off_28382DAC8;
          v1653 = v1006;
          *&v1651 = v1007;
          swift_beginAccess();
          v1008 = *(v1007 + 40);
          v1009 = *(v1007 + 48);
          __swift_mutable_project_boxed_opaque_existential_1(v1007 + 16, v1008);
          v1010 = *(v1009 + 24);
          v1011 = v1005;

          v1010(&v1651, v1008, v1009);
          v1012 = v1636;
          swift_endAccess();
          __swift_destroy_boxed_opaque_existential_1(&v1655);
          __swift_destroy_boxed_opaque_existential_1(&v1720);
          *(v1012 + 25) = v1007;
          sub_224DADEF8();
          v1013 = sub_224DADEA8();

          v1643 = sub_224DA9BC8();
          v1014 = v1429;
          v1429(v1506, v1556, v1559);
          v1015 = v993[2];
          v1016 = v999;
          v1611 = v1013;
          if (v1015)
          {
            v1017 = sub_224B0B6F0(3u);
            v1018 = MEMORY[0x277D466A0];
            if (v1019)
            {
              v1020 = *(v993[7] + 8 * v1017) & 1;
            }

            else
            {
              LOBYTE(v1020) = 0;
            }

            v1023 = v1431;
          }

          else
          {
            LOBYTE(v1020) = 0;
            v1023 = v1431;
            v1018 = MEMORY[0x277D466A0];
          }

          v1024 = v1533;

          v1014(v1532, v1506, v1559);
          *&v1721[16] = MEMORY[0x277D466F8];
          v1722 = MEMORY[0x277D466B0];
          v1723 = MEMORY[0x277D466E8];
          v1724 = MEMORY[0x277D46690];
          v1725 = MEMORY[0x277D466B8];
          v1726 = v1018;
          v1025 = v1632;
          *&v1721[8] = v1632;
          *&v1720 = v1016;

          v1787 = &off_28382E400;
          v1026 = v1554;
          v1786 = v1554;
          *&v1784 = v1637;
          v1781 = MEMORY[0x277CF9848];
          v1780 = v1502;
          *&v1779 = v1643;
          v1657 = &off_283831828;
          v1658 = &off_2838317F0;
          v1659 = &off_283831818;
          v1656 = v1023;
          *&v1655 = v1024;
          type metadata accessor for ActivityReplicationService();
          v1027 = swift_allocObject();
          v1028 = __swift_mutable_project_boxed_opaque_existential_1(&v1784, v1026);
          v1610 = &v1425;
          v1029 = *(*(v1026 - 8) + 64);
          MEMORY[0x28223BE20](v1028);
          v1031 = (&v1425 - ((v1030 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1032 + 16))(v1031);
          v1033 = *v1031;
          v1767 = &off_28382E400;
          v1766 = v1026;
          *&v1764 = v1033;
          *(v1027 + 32) = v1020;
          v1609 = *&v1721[8];
          v1034 = *&v1721[8];
          v1035 = __swift_project_boxed_opaque_existential_1(&v1720, *&v1721[8]);
          *(v1027 + 72) = v1609;
          v1036 = __swift_allocate_boxed_opaque_existential_1((v1027 + 48));
          (*(*(v1034 - 8) + 16))(v1036, v1035, v1034);
          sub_224BBF304(&v1655, &v1651);
          sub_224A3317C(&v1779, &v1761);
          v1648 = MEMORY[0x277D466B0];
          v1649 = MEMORY[0x277D46690];
          v1650 = MEMORY[0x277D466B8];
          v1647 = v1025;
          *&v1645 = v1016;
          type metadata accessor for RemoteActivitySubscriptionReplicator();
          v1037 = swift_allocObject();
          sub_224AAC8E8(&v1645, v1037 + 16);
          sub_224AAC8E8(&v1651, v1037 + 72);
          sub_224A36F98(&v1761, v1037 + 128);
          *(v1027 + 16) = v1037;
          sub_224A3317C(&v1764, &v1651);
          v1038 = v1653;
          v1039 = __swift_mutable_project_boxed_opaque_existential_1(&v1651, v1653);
          v1040 = *(v1038[-1].Description + 8);
          MEMORY[0x28223BE20](v1039);
          v1042 = (&v1425 - ((v1041 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1043 + 16))(v1042);
          v1044 = *v1042;
          swift_retain_n();
          swift_retain_n();
          v1045 = v1611;
          swift_retain_n();

          v1046 = sub_224C4AC30(v1016, v1044, v1532, v1024, v1045);
          __swift_destroy_boxed_opaque_existential_1(&v1651);
          *(v1027 + 24) = v1046;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F55C0, &unk_224DBBC18);
          v1047 = swift_allocObject();
          v1048 = swift_retain_n();
          v1049 = sub_224C4A7F8(v1048, v1016, v1016, v1047, &unk_28382FD68, &unk_224DBBC70);
          v1050 = type metadata accessor for RemoteActivityLaunchReplicator();
          v1051 = swift_allocObject();
          *(v1051 + 16) = v1049;
          v1653 = v1050;
          v1654 = &off_283836E80;

          *&v1651 = v1051;

          (*(v1536 + 8))(v1506, v1559);
          __swift_destroy_boxed_opaque_existential_1(&v1779);
          __swift_destroy_boxed_opaque_existential_1(&v1764);
          swift_beginAccess();
          sub_224A838C0(&v1651, v1049 + 152, &qword_27D6F3F88, &unk_224DB53D0);
          swift_endAccess();

          *(v1027 + 40) = v1051;
          __swift_destroy_boxed_opaque_existential_1(&v1655);
          __swift_destroy_boxed_opaque_existential_1(&v1720);
          __swift_destroy_boxed_opaque_existential_1(&v1784);
          v1021 = v1636;
          *(v1636 + 27) = v1027;
          if (qword_281359218 != -1)
          {
            swift_once();
          }

          v1052 = v1437;
          v1053 = __swift_project_value_buffer(v1437, qword_2813652B0);
          v1054 = v1438;
          (*(v1436 + 16))(v1438, v1053, v1052);
          v1055 = qword_281352030;
          v1056 = type metadata accessor for ReplicatorMigrationService();
          v1057 = *(v1056 + 48);
          v1058 = *(v1056 + 52);
          v1059 = swift_allocObject();
          v1060 = v1531;

          v1061 = v1640;

          v1062 = v1530;

          v1063 = sub_224C4C988(v1054, v1060, v1061, v1062, v1016, v1055, v1059);

          v1064 = v1063[2];
          sub_224DAB158();
          *(v1021 + 113) = v1063;
          v1065 = sub_224DAAAD8();
          v1066 = *(v1065 + 48);
          v1067 = *(v1065 + 52);
          swift_allocObject();

          v1068 = sub_224DAAAC8();
          v1069 = v1644;

          sub_224DAB7E8();
          *&v1720 = MEMORY[0x277D84F90];
          sub_224DAF788();
          v1603(v1607, v1553, v1618);
          v1070 = sub_224DAF418();
          v1632 = v1068;
          v1071 = sub_224C45284(v1068, v1642, v1069, v1070);

          v1022 = v1061;

          v1072 = type metadata accessor for DeviceService();
          *(v1021 + 54) = v1071;
          *(v1021 + 440) = v1720;
          *(v1021 + 57) = v1072;
          *(v1021 + 58) = &off_2838340E0;
          __swift_destroy_boxed_opaque_existential_1(&v1788);
          sub_224A3311C(&v1660, &unk_27D6F55D0, &qword_224DBBC20);
        }

        else
        {

          v1632 = 0;
          v1021 = v1636;
          *(v1636 + 25) = 0;
          *(v1021 + 104) = 0;
          *(v1021 + 27) = 0;
          *(v1021 + 27) = 0u;
          *(v1021 + 28) = 0u;
          *(v1021 + 58) = 0;
          *(v1021 + 744) = 0u;
          *(v1021 + 760) = 0u;
          *(v1021 + 97) = 0;
          *(v1021 + 56) = 0u;
          v1022 = v1640;
        }

        v1073 = v1627;
        v1074 = v1552;
        v1075 = v1538;
        type metadata accessor for RemoteWidgetRapportNotifier();
        v1076 = swift_allocObject();

        *(v1021 + 103) = sub_224C45F68(v1077, v1076);
        *(&v1661 + 1) = v1634;
        v1662 = sub_224C41198(&unk_281350D80, MEMORY[0x277CF9A48]);
        *&v1660 = v1075;
        v1643 = v1075;
        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1626;
        v1662 = sub_224C41198(&unk_28135A7D8, type metadata accessor for WidgetHostService);
        *&v1660 = v1022;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1600;
        v1662 = sub_224C41198(&unk_28135A020, type metadata accessor for ControlHostService);
        *&v1660 = v1073;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1629;
        v1662 = sub_224A33088(&unk_28135C668, &unk_27D6F53C0, &qword_224DBBB20);
        *&v1660 = v1074;
        v1642 = v1074;
        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1621;
        v1078 = sub_224C41198(&unk_28135B380, type metadata accessor for LocationService);
        v1662 = v1078;
        *&v1660 = v1625;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1619;
        v1662 = sub_224C41198(&unk_2813580A8, type metadata accessor for MobileTimelineService);
        *&v1660 = v1644;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1535;
        v1662 = sub_224C41198(&unk_281358310, type metadata accessor for MobileSnapshotService);
        *&v1660 = v1641;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v1616 = type metadata accessor for MobilePlaceholderService();
        *(&v1661 + 1) = v1616;
        v1662 = sub_224C41198(&unk_2813560F8, type metadata accessor for MobilePlaceholderService);
        v1079 = v1595;
        *&v1660 = v1595;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1572;
        v1662 = sub_224C41198(&unk_281359B80, type metadata accessor for LiveControlService);
        v1080 = v1597;
        *&v1660 = v1597;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1580;
        v1662 = sub_224C41198(&unk_281357D58, type metadata accessor for PreviewControlService);
        v1081 = v1608;
        *&v1660 = v1608;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v1082 = qword_281352030;
        *(&v1661 + 1) = sub_224DABBE8();
        v1662 = sub_224C41198(&unk_281350EC0, MEMORY[0x277CF9878]);
        *&v1660 = v1082;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        *(&v1661 + 1) = v1554;
        v1662 = sub_224C41198(&unk_281358518, type metadata accessor for MobileActivityService);
        *&v1660 = v1637;

        sub_224DAA188();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v1083 = sub_224DADAC8();
        v1484(v1486, v1485, v1488);
        v1618 = v1083;
        v1084 = sub_224DADAB8();
        v1085 = v1636;
        *(v1636 + 29) = v1565;
        v1086 = (v1085 + 232);
        v1086[61] = v1621;
        v1086[62] = &off_2838352C0;
        v1086[63] = v1078;
        v1086[58] = v1625;
        v1086[89] = v1591;
        v1086[90] = v1590;
        v1087 = v1564;
        v1086[3] = v1582;
        v1086[4] = v1087;
        v1088 = v1517;
        v1086[8] = v1547;
        v1086[9] = v1088;
        v1086[5] = v1578;
        v1086[41] = v1630;
        v1086[42] = v1084;
        v1086[18] = v1629;
        v1086[19] = &off_28382A480;
        v1089 = v1642;
        v1086[15] = v1642;
        *(v1086 - 11) = v1080;
        *(v1086 - 10) = v1081;
        v1090 = v1588;
        v1086[38] = v1600;
        v1086[39] = v1090;
        v1086[35] = v1627;
        v1091 = v1644;
        *(v1086 - 8) = v1079;
        *(v1086 - 7) = v1091;
        v1092 = v1622;
        *(v1086 - 6) = v1641;
        *(v1086 - 5) = v1092;
        v1631 = sub_224DADD18();

        v1642 = v1089;

        v1093 = sub_224DADD08();
        *(&v1661 + 1) = &type metadata for FeatureFlags.Widgets;
        v1662 = v1453;
        LOBYTE(v1660) = 9;
        LOBYTE(v1083) = sub_224DA9C98();
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v1614 = v1093;
        v1617 = v1086;
        if (v1083)
        {
          v1094 = type metadata accessor for WidgetRelevanceService();
          v1095 = v1636;
          v1096 = *(v1636 + 32);
          v1611 = *(v1636 + 33);
          v1097 = __swift_project_boxed_opaque_existential_1(v1086, v1096);
          sub_224A3317C((v1095 + 312), &v1660);
          v1098 = v1427;
          v1099 = (*(v1428 + 56))(v1427, 1, 1, v1426);
          v1615 = &v1425;
          v1100 = v1642;
          *&v1720 = v1642;
          v1101 = v1548;
          *&v1655 = v1548;
          v1102 = v1643;
          *&v1651 = v1643;
          v1103 = *(*(v1096 - 8) + 64);
          MEMORY[0x28223BE20](v1099);
          v1105 = &v1425 - ((v1104 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v1106 + 16))(v1105, v1097, v1096);
          *&v1645 = v1093;
          v1107 = v1102;
          v1108 = v1100;
          v1109 = v1101;

          v1110 = v1639;
          v1111 = MEMORY[0x277CF9A38];
          v1112 = v1628;
          v1113 = v1634;
          v1114 = sub_224B644A4(&v1720, &v1655, &v1651, v1105, &v1660, &v1645, v1098, 30, v1094, v1629, v1634, v1628, v1096, v1631, &off_28382A480, MEMORY[0x277CF9A38], v1639, v1611, MEMORY[0x277CF9DF0]);
          v1115 = v1636;
          v1116 = &off_28382B338;
          v1117 = v1598;
          v1118 = v1575;
        }

        else
        {
          v1094 = 0;
          v1116 = 0;
          v1114 = 0;
          v1652 = 0;
          *(&v1651 + 1) = 0;
          v1111 = MEMORY[0x277CF9A38];
          v1112 = v1628;
          v1117 = v1598;
          v1110 = v1639;
          v1118 = v1575;
          v1113 = v1634;
          v1115 = v1636;
        }

        v1654 = v1116;
        v1653 = v1094;
        *&v1651 = v1114;
        *(v1115 + 26) = v1637;
        v1119 = v1620;
        *(v1115 + 62) = v1626;
        *(v1115 + 63) = v1119;
        *(v1115 + 59) = v1640;
        sub_224A3796C(&v1651, &v1660, &unk_27D6F4FB0, &unk_224DBADC8);
        *&v1721[16] = v1111;
        *&v1721[8] = v1113;
        v1120 = v1643;
        *&v1720 = v1643;
        v1657 = v1561;
        v1656 = v1619;
        *&v1655 = v1644;
        v1648 = v1110;
        v1647 = v1112;
        v1121 = v1548;
        *&v1645 = v1548;
        v1791 = &off_283828B40;
        v1790 = v1118;
        *&v1788 = v1117;
        v1122 = type metadata accessor for WidgetCenterServer();
        v1123 = objc_allocWithZone(v1122);
        v1124 = v1790;
        v1125 = __swift_mutable_project_boxed_opaque_existential_1(&v1788, v1790);
        v1631 = &v1425;
        v1126 = *(*(v1124 - 1) + 64);
        MEMORY[0x28223BE20](v1125);
        v1128 = (&v1425 - ((v1127 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v1129 + 16))(v1128);
        v1130 = *v1128;
        v1787 = &off_283828B40;
        v1786 = v1118;
        *&v1784 = v1130;
        *&v1123[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener] = 0;
        sub_224A3317C(&v1720, &v1123[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__extensionManager]);
        sub_224A3317C(&v1655, &v1123[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__timelineService]);
        sub_224A3317C(&v1645, &v1123[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__descriptorService]);
        sub_224A3317C(&v1784, &v1123[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__pushService]);
        sub_224A3796C(&v1660, &v1123[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__widgetRelevanceService], &unk_27D6F4FB0, &unk_224DBADC8);
        v1730.receiver = v1123;
        v1730.super_class = v1122;
        v1131 = v1120;
        v1132 = v1121;
        swift_retain_n();
        v1133 = v1644;
        swift_retain_n();
        v1134 = v1131;

        v1135 = v1132;

        v1136 = objc_msgSendSuper2(&v1730, sel_init);
        sub_224DAE668();
        v1137 = v1136;
        sub_224DAE648();
        v1138 = objc_allocWithZone(MEMORY[0x277CCAE98]);
        v1139 = sub_224DAEDE8();

        v1140 = [v1138 initWithMachServiceName_];

        v1141 = v1135;
        v1643 = v1135;

        v1142 = v1598;

        sub_224A3311C(&v1660, &unk_27D6F4FB0, &unk_224DBADC8);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        __swift_destroy_boxed_opaque_existential_1(&v1784);
        v1143 = *&v1137[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener];
        *&v1137[OBJC_IVAR____TtC10ChronoCore18WidgetCenterServer__listener] = v1140;

        __swift_destroy_boxed_opaque_existential_1(&v1788);
        *(v1636 + 7) = v1137;
        v1662 = v1526;
        *(&v1661 + 1) = v1628;
        *&v1660 = v1141;
        *&v1721[16] = MEMORY[0x277CF9A38];
        *&v1721[8] = v1634;
        *&v1720 = v1134;
        v1657 = v1620;
        v1656 = v1626;
        *&v1655 = v1640;
        v1648 = &off_283828B40;
        v1647 = v1118;
        *&v1645 = v1142;
        v1791 = &off_28382A480;
        v1790 = v1629;
        v1144 = v1642;
        *&v1788 = v1642;
        v1787 = v1561;
        v1786 = v1619;
        *&v1784 = v1133;
        v1145 = type metadata accessor for WidgetPushManager();
        v1146 = *(v1145 + 48);
        v1147 = *(v1145 + 52);
        v1148 = swift_allocObject();
        v1149 = __swift_mutable_project_boxed_opaque_existential_1(&v1645, v1118);
        v1631 = &v1425;
        v1150 = *(*(v1118 - 1) + 64);
        MEMORY[0x28223BE20](v1149);
        v1152 = (&v1425 - ((v1151 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v1153 + 16))(v1152);
        v1154 = *v1152;
        v1781 = &off_283828B40;
        v1780 = v1118;
        *&v1779 = v1154;
        *(v1148 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_persistentSubscriptions) = MEMORY[0x277D84FA0];
        v1155 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock;
        v1156 = swift_allocObject();
        v1157 = v1134;
        swift_retain_n();
        v1158 = v1144;
        v1159 = v1643;
        swift_retain_n();
        swift_retain_n();
        v1160 = v1157;
        v1643 = v1158;
        v1161 = v1159;
        v1162 = swift_slowAlloc();
        *v1162 = 0;
        *(v1156 + 16) = v1162;
        *(v1148 + v1155) = v1156;
        v1163 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets;
        *(v1148 + v1163) = sub_224DA1190(MEMORY[0x277D84F90]);
        sub_224A3317C(&v1660, v1148 + 16);
        sub_224A3317C(&v1720, v1148 + 56);
        sub_224A3317C(&v1655, v1148 + 96);
        if (qword_2813515E8 != -1)
        {
          swift_once();
        }

        __swift_destroy_boxed_opaque_existential_1(&v1655);
        __swift_destroy_boxed_opaque_existential_1(&v1720);
        __swift_destroy_boxed_opaque_existential_1(&v1660);
        v1164 = v1638;
        v1165 = __swift_project_value_buffer(v1638, qword_281364F70);
        v1635(v1148 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_logger, v1165, v1164);
        v1642 = v1161;

        v147 = v1160;
        v1166 = v1640;

        sub_224A36F98(&v1779, v1148 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService);
        sub_224A36F98(&v1788, v1148 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService);
        sub_224A36F98(&v1784, v1148 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService);
        *(v1148 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_automaticallySubscribeToPush) = 0;
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        v1167 = v1636;
        *(v1636 + 111) = v1148;
        v1168 = *(v1167 + 27);
        v1169 = v1546;
        v1170 = v1562;
        if (v1168)
        {
          v1171 = *(v1168 + 40);
        }

        else
        {
          v1171 = 0;
        }

        v1172 = v1628;
        v1173 = v1632;
        v1174 = v1636;
        sub_224A3796C((v1636 + 432), &v1720, &unk_27D6F5050, &unk_224DBAE08);
        sub_224A3317C((v1174 + 312), &v1655);
        sub_224A3317C((v1174 + 592), &v1645);
        if (v1173)
        {
          v1175 = sub_224DAAAD8();
          v1176 = MEMORY[0x277D46520];
          v1177 = v1173;
        }

        else
        {
          v1177 = 0;
          v1175 = 0;
          v1176 = 0;
          v1789 = 0;
          *(&v1788 + 1) = 0;
        }

        *&v1788 = v1177;
        v1790 = v1175;
        v1791 = v1176;
        v1178 = *(v1636 + 104);
        if (v1178)
        {
          v1179 = sub_224DAA648();
          v1180 = MEMORY[0x277CFA108];
          v1181 = v1178;
        }

        else
        {
          v1181 = 0;
          v1179 = 0;
          v1180 = 0;
          v1785 = 0;
          *(&v1784 + 1) = 0;
        }

        *&v1784 = v1181;
        v1786 = v1179;
        v1787 = v1180;
        sub_224A3796C(&v1651, &v1779, &unk_27D6F4FB0, &unk_224DBADC8);
        v1635 = v1171;
        v1631 = v1178;
        v1182 = 0;
        if (v1171)
        {
          v1182 = type metadata accessor for RemoteActivityLaunchReplicator();
          v1183 = &off_283836E90;
        }

        else
        {
          v1183 = 0;
          v1765 = 0;
          *(&v1764 + 1) = 0;
        }

        *&v1764 = v1171;
        v1766 = v1182;
        v1767 = v1183;
        v1763 = v1561;
        v1762 = v1619;
        *&v1761 = v1644;
        v1760 = &off_28382A480;
        v1759 = v1629;
        *&v1758 = v1643;
        v1757 = v1639;
        *(&v1756 + 1) = v1172;
        v1184 = v1642;
        *&v1755 = v1642;
        v1754 = MEMORY[0x277CF9A38];
        v1753 = v1634;
        *&v1752 = v147;
        v1751 = v1620;
        v1750 = v1626;
        *&v1749 = v1166;
        v1748 = &off_283832210;
        v1747 = v1482;
        *&v1746 = v1169;
        v1738 = &off_283830A00;
        v1185 = v1480;
        v1737 = v1480;
        v1736[0] = v1170;
        v1633 = type metadata accessor for ChronoServicesServer();
        v1186 = objc_allocWithZone(v1633);
        v1187 = v1737;
        v1188 = __swift_mutable_project_boxed_opaque_existential_1(v1736, v1737);
        v1615 = &v1425;
        v1189 = *(*(v1187 - 8) + 64);
        MEMORY[0x28223BE20](v1188);
        v1191 = (&v1425 - ((v1190 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v1192 + 16))(v1191);
        v1193 = *v1191;
        v1729[4] = &off_283830A00;
        v1729[3] = v1185;
        v1729[0] = v1193;
        v1194 = &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_deviceService];
        *(v1194 + 32) = 0;
        *v1194 = 0u;
        *(v1194 + 16) = 0u;
        v1195 = &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_activityService];
        *(v1195 + 4) = 0;
        *v1195 = 0u;
        *(v1195 + 1) = 0u;
        *&v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener] = 0;
        v1638 = MEMORY[0x277D84F90] >> 62;
        if (MEMORY[0x277D84F90] >> 62)
        {
          v1202 = sub_224DAF838();

          v1203 = v147;
          v1204 = v147;
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          v1205 = v1643;
          v1206 = v1184;
          swift_retain_n();
          v1207 = v1204;
          v1208 = v1205;
          v1209 = v1206;

          v147 = v1203;
          if (v1202)
          {
            v1210 = sub_224D5796C(MEMORY[0x277D84F90]);
            goto LABEL_159;
          }
        }

        else
        {

          v1196 = v147;
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          v1197 = v1643;
          v1198 = v1184;
          swift_retain_n();
          v1199 = v1196;
          v1200 = v1197;
          v1201 = v1198;
        }

        v1210 = MEMORY[0x277D84FA0];
LABEL_159:
        v1211 = v1633;
        *&v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_subscriptions] = v1210;
        v1212 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_queue;
        v1213 = sub_224DAEDE8();
        v1214 = [v1551 serialQueueTargetingSharedWorkloop_];

        *&v1186[v1212] = v1214;
        v1215 = MEMORY[0x277D84FA0];
        if (v1638)
        {
          if (sub_224DAF838())
          {
            sub_224D57EF8(MEMORY[0x277D84F90]);
          }

          else
          {
            v1215 = MEMORY[0x277D84FA0];
          }
        }

        *&v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock_clients] = v1215;
        v1216 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer__clientsSetLock;
        v1217 = swift_allocObject();
        v1218 = swift_slowAlloc();
        *v1218 = 0;
        *(v1217 + 16) = v1218;
        *&v1186[v1216] = v1217;
        *&v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_initialExtensionDiscoveryCompleteSubscription] = 0;
        CHDFaultInProactiveFrameworkIfAvailable();
        sub_224A3317C(&v1761, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_timelineService]);
        sub_224A3317C(&v1758, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_taskService]);
        sub_224A3317C(&v1755, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_descriptorService]);
        swift_beginAccess();
        sub_224C4D398(&v1720, v1194, &unk_27D6F5050, &unk_224DBAE08);
        swift_endAccess();
        sub_224A3317C(&v1752, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_extensionService]);
        sub_224A3317C(&v1749, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetHostService]);
        sub_224A3317C(&v1655, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keybagStateProvider]);
        sub_224A3317C(&v1645, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_powerlogSuggestionService]);
        sub_224A3317C(&v1746, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_keepAliveAssertionProvider]);
        sub_224A3317C(v1729, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_duetService]);
        sub_224A3796C(&v1788, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_stuckPairedRelationshipRepairer], &unk_27D6F5180, &unk_224DBAEA8);
        sub_224A3796C(&v1784, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_iconStore], &unk_27D6F51E0, &unk_224DBAF10);
        v171 = &unk_27D6F4FB0;
        sub_224A3796C(&v1779, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_widgetRelevanceService], &unk_27D6F4FB0, &unk_224DBADC8);
        sub_224A3796C(&v1764, &v1186[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_remoteActivityLaunchService], &unk_27D6F5110, &unk_224DBAE50);
        v1728.receiver = v1186;
        v1728.super_class = v1211;
        v1219 = objc_msgSendSuper2(&v1728, sel_init);
        v141 = &v1425;
        v1423 = MEMORY[0x28223BE20](v1219);
        v1220 = swift_allocObject();
        *(v1220 + 16) = sub_224C4D400;
        *(v1220 + 24) = &v1421;
        v1662 = sub_224A37E94;
        v1663 = v1220;
        *&v1660 = MEMORY[0x277D85DD0];
        *(&v1660 + 1) = 1107296256;
        *&v1661 = sub_224A37E38;
        *(&v1661 + 1) = &block_descriptor_130;
        v1221 = _Block_copy(&v1660);
        v1222 = objc_opt_self();
        v1223 = v1219;

        v1224 = [v1222 listenerWithConfigurator_];
        _Block_release(v1221);

        isEscapingClosureAtFileLocation = v1642;

        sub_224A3311C(&v1779, &unk_27D6F4FB0, &unk_224DBADC8);
        __swift_destroy_boxed_opaque_existential_1(&v1645);
        __swift_destroy_boxed_opaque_existential_1(&v1655);
        sub_224A3311C(&v1720, &unk_27D6F5050, &unk_224DBAE08);
        sub_224A3311C(&v1764, &unk_27D6F5110, &unk_224DBAE50);
        sub_224A3311C(&v1784, &unk_27D6F51E0, &unk_224DBAF10);
        sub_224A3311C(&v1788, &unk_27D6F5180, &unk_224DBAEA8);
        __swift_destroy_boxed_opaque_existential_1(&v1746);
        __swift_destroy_boxed_opaque_existential_1(&v1749);
        __swift_destroy_boxed_opaque_existential_1(&v1752);
        __swift_destroy_boxed_opaque_existential_1(&v1755);
        __swift_destroy_boxed_opaque_existential_1(&v1758);
        __swift_destroy_boxed_opaque_existential_1(&v1761);
        __swift_destroy_boxed_opaque_existential_1(v1729);

        LOBYTE(v1217) = swift_isEscapingClosureAtFileLocation();

        if (v1217)
        {
          __break(1u);
        }

        else
        {
          v1611 = v1222;
          v1225 = *&v1223[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener];
          *&v1223[OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_connectionListener] = v1224;

          __swift_destroy_boxed_opaque_existential_1(v1736);
          *(v1636 + 8) = v1223;
          v1662 = &off_28382E400;
          v1226 = v1554;
          *(&v1661 + 1) = v1554;
          v1633 = v147;
          v1227 = v1637;
          *&v1660 = v1637;
          v1228 = OBJC_IVAR____TtC10ChronoCore20ChronoServicesServer_activityService;
          swift_beginAccess();
          v1229 = v1227;

          v1230 = v1223;
          sub_224A838C0(&v1660, &v1223[v1228], &unk_27D6F4FD0, &qword_224DB75F0);
          swift_endAccess();

          sub_224A3317C(v1612, &v1660);
          *&v1721[16] = &off_28382A480;
          *&v1721[8] = v1629;
          v1231 = v1643;
          *&v1720 = v1643;
          v1657 = v1639;
          v1656 = v1628;
          *&v1655 = isEscapingClosureAtFileLocation;
          v1648 = &off_28382E400;
          v1647 = v1226;
          *&v1645 = v1229;
          v1791 = &off_28382CD80;
          v1790 = v1596;
          *&v1788 = v1622;
          v1787 = &off_2838352C0;
          v1786 = v1621;
          *&v1784 = v1625;
          v1781 = &off_28382AA58;
          v1780 = v1583;
          v1232 = v1441;
          *&v1779 = v1441;
          type metadata accessor for ActivityRendererServices();
          v1233 = swift_allocObject();
          v1234 = __swift_mutable_project_boxed_opaque_existential_1(&v1645, v1226);
          v1615 = &v1425;
          v1235 = *(*(v1226 - 1) + 64);
          MEMORY[0x28223BE20](v1234);
          v1237 = (&v1425 - ((v1236 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1238 + 16))(v1237);
          v1239 = v1790;
          v1240 = __swift_mutable_project_boxed_opaque_existential_1(&v1788, v1790);
          v1610 = &v1425;
          v1241 = *(*(v1239 - 1) + 64);
          MEMORY[0x28223BE20](v1240);
          v1243 = (&v1425 - ((v1242 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1244 + 16))(v1243);
          v1245 = v1786;
          v1246 = __swift_mutable_project_boxed_opaque_existential_1(&v1784, v1786);
          *&v1609 = &v1425;
          v1247 = *(v1245[-1].Description + 8);
          MEMORY[0x28223BE20](v1246);
          v1249 = (&v1425 - ((v1248 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1250 + 16))(v1249);
          v1251 = v1780;
          v1252 = __swift_mutable_project_boxed_opaque_existential_1(&v1779, v1780);
          v1607 = &v1425;
          v1253 = *(*(v1251 - 1) + 64);
          MEMORY[0x28223BE20](v1252);
          v1255 = (&v1425 - ((v1254 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1256 + 16))(v1255);
          v1257 = *v1237;
          v1258 = *v1243;
          v1259 = *v1249;
          v1260 = *v1255;
          v1233[20] = v1226;
          v1233[21] = &off_28382E400;
          v1233[17] = v1257;
          v1233[25] = v1596;
          v1233[26] = &off_28382CD80;
          v1233[22] = v1258;
          v1261 = v1621;
          v1233[30] = v1621;
          v1233[31] = &off_2838352C0;
          v1233[27] = v1259;
          v1262 = v1583;
          v1233[35] = v1583;
          v1233[36] = &off_28382AA58;
          v1233[32] = v1260;
          sub_224A36F98(&v1720, (v1233 + 2));
          sub_224A36F98(&v1660, (v1233 + 7));
          sub_224A36F98(&v1655, (v1233 + 12));
          v1263 = v1625;

          v1264 = v1232;
          v1265 = v1231;
          v1631 = v1265;
          v1266 = v1642;
          v1643 = v1266;
          v1267 = v1622;

          __swift_destroy_boxed_opaque_existential_1(&v1779);
          __swift_destroy_boxed_opaque_existential_1(&v1784);
          __swift_destroy_boxed_opaque_existential_1(&v1788);
          __swift_destroy_boxed_opaque_existential_1(&v1645);
          v1268 = objc_allocWithZone(type metadata accessor for ActivityRendererServer());

          *&v1609 = v1233;
          v1270 = sub_224D18194(v1269);
          *(v1636 + 28) = v1270;
          sub_224A3317C(v1612, &v1645);
          v1791 = &off_28382A480;
          v1790 = v1629;
          *&v1788 = v1265;
          v1787 = v1639;
          v1786 = v1628;
          *&v1784 = v1266;
          v1781 = v1620;
          v1780 = v1626;
          *&v1779 = v1640;
          *(&v1661 + 1) = v1535;
          v1662 = &off_283836968;
          v1663 = sub_224C41198(&unk_281358320, type metadata accessor for MobileSnapshotService);
          v1664 = sub_224C41198(&unk_281358318, type metadata accessor for MobileSnapshotService);
          *&v1660 = v1641;
          *&v1721[8] = v1616;
          *&v1721[16] = &off_283833B08;
          v1722 = sub_224C41198(&unk_281356100, type metadata accessor for MobilePlaceholderService);
          v1271 = v1267;
          *&v1720 = v1595;
          v1657 = &off_283837078;
          v1658 = v1561;
          v1656 = v1619;
          *&v1655 = v1644;
          v1767 = &off_28382CD80;
          v1272 = v1596;
          v1766 = v1596;
          *&v1764 = v1271;
          v1763 = &off_2838352C0;
          v1762 = v1261;
          v1273 = v1261;
          *&v1761 = v1263;
          v1760 = &off_28382AA58;
          v1759 = v1262;
          v1274 = v1262;
          *&v1758 = v1264;
          type metadata accessor for WidgetRendererServices();
          v1275 = swift_allocObject();
          v1276 = __swift_mutable_project_boxed_opaque_existential_1(&v1764, v1272);
          v1642 = &v1425;
          MEMORY[0x28223BE20](v1276);
          v1278 = (&v1425 - ((v1277 + 15) & 0xFFFFFFFFFFFFFFF0));
          (v1509)(v1278);
          v1279 = v1762;
          v1280 = __swift_mutable_project_boxed_opaque_existential_1(&v1761, v1762);
          v1616 = &v1425;
          v1281 = *(*(v1279 - 1) + 64);
          MEMORY[0x28223BE20](v1280);
          v1283 = (&v1425 - ((v1282 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1284 + 16))(v1283);
          v1285 = v1759;
          v1286 = __swift_mutable_project_boxed_opaque_existential_1(&v1758, v1759);
          v1615 = &v1425;
          v1287 = *(*(v1285 - 1) + 64);
          MEMORY[0x28223BE20](v1286);
          v1289 = (&v1425 - ((v1288 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1290 + 16))(v1289);
          v1291 = *v1278;
          v1292 = *v1283;
          v1293 = *v1289;
          *(v1275 + 352) = v1272;
          *(v1275 + 360) = &off_28382CD80;
          *(v1275 + 328) = v1291;
          *(v1275 + 392) = v1273;
          *(v1275 + 400) = &off_2838352C0;
          *(v1275 + 368) = v1292;
          *(v1275 + 432) = v1274;
          *(v1275 + 440) = &off_28382AA58;
          *(v1275 + 408) = v1293;
          sub_224A36F98(&v1788, v1275 + 16);
          sub_224A36F98(&v1645, v1275 + 56);
          sub_224A36F98(&v1784, v1275 + 96);
          sub_224A36F98(&v1779, v1275 + 136);
          sub_224AAC8E8(&v1660, v1275 + 176);
          sub_224AB1DE0(&v1720, (v1275 + 232));
          sub_224AB1DE0(&v1655, (v1275 + 280));
          v1294 = v1625;

          v1606 = v1264;
          v1295 = v1631;
          v1296 = v1643;
          v1643 = v1296;

          __swift_destroy_boxed_opaque_existential_1(&v1758);
          __swift_destroy_boxed_opaque_existential_1(&v1761);
          __swift_destroy_boxed_opaque_existential_1(&v1764);
          v1616 = type metadata accessor for WidgetRendererServer();
          v1297 = objc_allocWithZone(v1616);

          v1607 = v1275;
          v1610 = sub_224CC432C(v1298);
          v1299 = v1636;
          *(v1636 + 10) = v1610;
          v1631 = type metadata accessor for ControlServerServices();
          v1300 = *(v1299 + 37);
          v1615 = *(v1299 + 38);
          __swift_project_boxed_opaque_existential_1(v1617 + 5, v1300);
          v1301 = sub_224A3317C(v1612, &v1660);
          v1642 = &v1425;
          v1302 = *(v1299 + 71);
          *&v1720 = v1597;
          *&v1655 = v1608;
          v1303 = *(*(v1300 - 8) + 64);
          MEMORY[0x28223BE20](v1301);
          v1617 = (&v1425 - ((v1304 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1305 + 16))();
          *&v1645 = v1295;
          *&v1788 = v1294;
          v1306 = v1627;
          *&v1784 = v1627;
          *&v1779 = v1598;
          *&v1764 = v1296;
          v1307 = v1633;
          *&v1761 = v1633;
          *&v1758 = v1507;
          *&v1755 = v1302;
          v1612 = sub_224C41198(&unk_281350CB8, MEMORY[0x277CF9DB0]);
          v1308 = sub_224C41198(&unk_281357D50, type metadata accessor for PreviewControlService);
          v1633 = v1307;

          v1309 = v1295;
          v1643 = v1643;

          v1610 = v1610;

          v1605 = v1308;
          v1420 = v1308;
          v1310 = v1628;
          v1311 = v1600;
          v1312 = v1629;
          v1313 = sub_224D0A10C(&v1720, &v1655, v1617, &v1660, &v1645, &v1788, &v1784, &v1779, &v1764, &v1761, &v1758, &v1755, v1631, v1572, v1575, v1300, v1634, v1629, v1618, v1600, v1580, v1628, v1442, v1621, v1576, &off_283828B40, v1615, MEMORY[0x277CF9A38], &off_28382A480, v1612, v1588, v1420, v1639, &off_283832610, &off_2838352C0);
          v1314 = objc_allocWithZone(type metadata accessor for ControlsServer());

          v1621 = v1313;
          v1316 = sub_224D01144(v1315);
          v1317 = v1636;
          *(v1636 + 16) = v1316;
          v1318 = v1633;

          v1319 = v1598;

          *(v1317 + 17) = sub_224C45450(v1320, v1318, v1306, v1319);
          sub_224A3317C((v1317 + 312), &v1720);
          v1321 = *(v1317 + 10);
          v1656 = v1619;
          v1322 = sub_224C41198(&unk_281358098, type metadata accessor for MobileTimelineService);
          v1657 = v1322;
          *&v1655 = v1644;
          v1648 = &off_28382A480;
          v1647 = v1312;
          v1642 = v1309;
          *&v1645 = v1309;
          v1791 = v1639;
          v1790 = v1310;
          *&v1788 = v1643;
          v1787 = v1620;
          v1786 = v1626;
          *&v1784 = v1640;
          v1781 = v1588;
          v1323 = v1318;
          v1780 = v1311;
          *&v1779 = v1306;
          v1767 = MEMORY[0x277CF9A38];
          v1766 = v1634;
          *&v1764 = v1318;
          v1763 = MEMORY[0x277CFA010];
          v1762 = v1586;
          v1324 = v1573;
          *&v1761 = v1573;
          v1760 = &off_2838328D0;
          v1325 = v1616;
          v1759 = v1616;
          v1633 = v1321;
          *&v1758 = v1321;
          v1629 = type metadata accessor for ToolServicesServer();
          v1326 = objc_allocWithZone(v1629);
          v1327 = v1656;
          v1328 = __swift_mutable_project_boxed_opaque_existential_1(&v1655, v1656);
          v1618 = &v1425;
          v1329 = *(*(v1327 - 1) + 64);
          MEMORY[0x28223BE20](v1328);
          v1331 = (&v1425 - ((v1330 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1332 + 16))(v1331);
          v1333 = v1759;
          v1334 = __swift_mutable_project_boxed_opaque_existential_1(&v1758, v1759);
          v1617 = &v1425;
          v1335 = *(*(v1333 - 1) + 64);
          MEMORY[0x28223BE20](v1334);
          v1337 = (&v1425 - ((v1336 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v1338 + 16))(v1337);
          v1339 = *v1331;
          v1340 = *v1337;
          v1757 = v1322;
          *(&v1756 + 1) = v1619;
          *&v1755 = v1339;
          v1754 = &off_2838328D0;
          v1753 = v1325;
          *&v1752 = v1340;
          v1341 = &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlService];
          *(v1341 + 4) = 0;
          *v1341 = 0u;
          *(v1341 + 1) = 0u;
          *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlCacheManager] = 0;
          *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_livePlaceholderControlCacheManager] = 0;
          v1342 = &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlService];
          *(v1342 + 4) = 0;
          *v1342 = 0u;
          *(v1342 + 1) = 0u;
          *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlCacheManager] = 0;
          v1631 = v1323;
          if (v1638)
          {
            v1356 = sub_224DAF838();
            v1357 = v1323;
            v1358 = v1324;
            swift_retain_n();
            swift_retain_n();
            v1359 = v1642;
            v1360 = v1643;
            swift_retain_n();
            v1361 = v1633;
            v1362 = v1357;
            v1363 = v1358;
            v1364 = v1359;
            v1351 = v1557;

            v1365 = v1360;

            v1366 = v1361;
            if (v1356)
            {
              v1367 = sub_224D5796C(MEMORY[0x277D84F90]);
            }

            else
            {
              v1367 = MEMORY[0x277D84FA0];
            }

            *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_subscriptions] = v1367;
            *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener] = 0;
            if (sub_224DAF838())
            {
              sub_224D58214(MEMORY[0x277D84F90]);
            }

            else
            {
              v1355 = MEMORY[0x277D84FA0];
            }

            v1353 = v1570;
            v171 = v1587;
          }

          else
          {
            *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_subscriptions] = MEMORY[0x277D84FA0];
            *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener] = 0;
            v1343 = v1323;
            v1344 = v1324;
            swift_retain_n();
            swift_retain_n();
            v1345 = v1642;
            v1346 = v1643;
            swift_retain_n();
            v1347 = v1633;
            v1348 = v1343;
            v1349 = v1344;
            v1350 = v1345;
            v1351 = v1557;

            v1352 = v1346;
            v1353 = v1570;

            v171 = v1587;

            v1354 = v1347;
            v1355 = MEMORY[0x277D84FA0];
          }

          *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock_clients] = v1355;
          v1368 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer__lock;
          v1369 = swift_allocObject();
          v1370 = swift_slowAlloc();
          *v1370 = 0;
          *(v1369 + 16) = v1370;
          *&v1326[v1368] = v1369;
          v1371 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_queue;
          v1372 = sub_224DAEDE8();
          v1373 = [v1551 serialQueueTargetingSharedWorkloop_];

          *&v1326[v1371] = v1373;
          v141 = &OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService;
          v1374 = &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService];
          *(v1374 + 4) = 0;
          *v1374 = 0u;
          *(v1374 + 1) = 0u;
          sub_224A3317C(&v1755, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineService]);
          sub_224A3317C(&v1645, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_taskService]);
          sub_224A3317C(&v1788, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_descriptorService]);
          sub_224A3317C(&v1784, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_widgetHostService]);
          sub_224A3317C(&v1779, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_controlHostService]);
          sub_224A3317C(&v1764, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_extensionService]);
          sub_224A3317C(&v1761, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_stateCaptureService]);
          sub_224A3317C(&v1720, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_keybagStateProvider]);
          *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_timelineCacheManager] = v1353;
          *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_placeholderCacheManager] = v1351;
          *&v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_snapshotCacheManager] = v171;
          sub_224A3317C(&v1752, &v1326[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_rendererSessionProvider]);
          v1727.receiver = v1326;
          v1727.super_class = v1629;

          v1375 = objc_msgSendSuper2(&v1727, sel_init);
          v147 = &v1425;
          v1423 = MEMORY[0x28223BE20](v1375);
          v1376 = swift_allocObject();
          *(v1376 + 16) = sub_224C4D408;
          *(v1376 + 24) = &v1421;
          v1662 = sub_224A867F4;
          v1663 = v1376;
          *&v1660 = MEMORY[0x277D85DD0];
          *(&v1660 + 1) = 1107296256;
          *&v1661 = sub_224A37E38;
          *(&v1661 + 1) = &block_descriptor_137_0;
          v1377 = _Block_copy(&v1660);
          v1378 = v1375;

          v1379 = [(objc_class *)v1611 listenerWithConfigurator:v1377];
          _Block_release(v1377);

          __swift_destroy_boxed_opaque_existential_1(&v1720);
          __swift_destroy_boxed_opaque_existential_1(&v1761);
          __swift_destroy_boxed_opaque_existential_1(&v1764);
          __swift_destroy_boxed_opaque_existential_1(&v1779);
          __swift_destroy_boxed_opaque_existential_1(&v1784);
          __swift_destroy_boxed_opaque_existential_1(&v1788);
          __swift_destroy_boxed_opaque_existential_1(&v1645);
          __swift_destroy_boxed_opaque_existential_1(&v1752);
          __swift_destroy_boxed_opaque_existential_1(&v1755);

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v1380 = *&v1378[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener];
            *&v1378[OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_connectionListener] = v1379;

            __swift_destroy_boxed_opaque_existential_1(&v1758);
            __swift_destroy_boxed_opaque_existential_1(&v1655);
            v1381 = v1636;
            *(v1636 + 9) = v1378;
            v1662 = v1576;
            *(&v1661 + 1) = v1572;
            *&v1660 = v1597;
            v1382 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlService;
            swift_beginAccess();

            v1383 = v1378;
            sub_224A838C0(&v1660, &v1378[v1382], &qword_27D6F46C0, &qword_224DB7608);
            swift_endAccess();

            v1384 = *(v1381 + 9);
            v1385 = *(v1384 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlCacheManager);
            *(v1384 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_liveControlCacheManager) = v1571;

            v1386 = *(v1381 + 9);
            v1387 = *(v1386 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_livePlaceholderControlCacheManager);
            *(v1386 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_livePlaceholderControlCacheManager) = v1560;

            v1388 = *(v1381 + 9);
            v1662 = v1605;
            *(&v1661 + 1) = v1580;
            *&v1660 = v1608;
            v1389 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlService;
            swift_beginAccess();

            v1390 = v1388;
            sub_224A838C0(&v1660, v1388 + v1389, &qword_27D6F4770, &qword_224DB7690);
            swift_endAccess();

            v1391 = *(v1381 + 9);
            v1392 = *(v1391 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlCacheManager);
            *(v1391 + OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_previewControlCacheManager) = v1577;

            v1393 = *(v1381 + 9);
            v1662 = &off_28382E400;
            *(&v1661 + 1) = v1554;
            *&v1660 = v1637;
            v1394 = OBJC_IVAR____TtC10ChronoCore18ToolServicesServer_activityService;
            swift_beginAccess();

            v1395 = v1393;
            sub_224A838C0(&v1660, v1393 + v1394, &unk_27D6F4FD0, &qword_224DB75F0);
            swift_endAccess();

            v1396 = v1631;
            *(v1381 + 20) = v1631;
            v1397 = v1639;
            *(v1381 + 52) = v1628;
            *(v1381 + 53) = v1397;
            v1398 = v1643;
            *(v1381 + 49) = v1643;
            v1399 = v1573;
            *(v1381 + 69) = v1573;
            v1400 = type metadata accessor for TaskTracker();
            v1401 = swift_allocObject();
            v1402 = v1396;
            v1639 = v1399;
            v1403 = v1642;
            v1643 = v1398;
            v1642 = v1403;
            v1404 = sub_224C45664(v1403, 1, v1401);
            type metadata accessor for WakingWorkScheduler();
            swift_allocObject();
            v1405 = sub_224CBEBDC();
            type metadata accessor for NonwakingWorkScheduler();
            swift_allocObject();
            v1406 = sub_224C74E04();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5588, &unk_224DBBBF0);
            v1407 = swift_allocObject();
            *(v1407 + 16) = v1519;
            *(v1407 + 56) = v1400;
            *(v1407 + 64) = &off_28382DB98;
            *(v1407 + 32) = v1404;
            *(v1407 + 96) = v1463;
            *(v1407 + 104) = &off_28382F7A0;
            *(v1407 + 72) = v1518;
            type metadata accessor for WakeManager();
            swift_allocObject();

            v1408 = sub_224BDC90C(v1405, &off_283832450, v1406, &off_283830EE0, v1407);

            *(v1381 + 125) = v1408;
            sub_224A3796C(&v1651, (v1381 + 840), &unk_27D6F4FB0, &unk_224DBADC8);
            v1409 = v1474;
            swift_allocObject();
            v1410 = sub_224AC3368();
            v1657 = &off_283828E40;
            v1656 = v1409;
            *&v1655 = v1410;
            *&v1721[16] = &off_28382F820;
            v1722 = MEMORY[0x277CF9A38];
            v1723 = MEMORY[0x277CF9A40];
            *&v1721[8] = v1634;
            *&v1720 = v1402;
            v1411 = v1623;
            if (v1623)
            {
              v1412 = sub_224DAAD68();
              v1413 = MEMORY[0x277D466D0];
              v1414 = v1411;
            }

            else
            {
              v1414 = 0;
              v1412 = 0;
              v1413 = 0;
              v1646 = 0;
              *(&v1645 + 1) = 0;
            }

            *&v1645 = v1414;
            v1647 = v1412;
            v1648 = v1413;
            sub_224A3317C(v1796, v1673);
            v1678 = v1626;
            v1679 = v1620;
            v1682 = v1564;
            v1681 = v1582;
            v1680 = v1565;
            v1415 = *(v1381 + 86);
            v1670 = 0u;
            v1671 = 0u;
            v1675 = v1640;
            v1672 = 0;
            v1689 = 0u;
            v1690 = 0u;
            v1691 = 0u;
            v1692 = 0u;
            sub_224A36F98(&v1655, &v1660);
            sub_224AAC8E8(&v1720, &v1663);
            v1416 = v1402;

            v1417 = v1415;
            sub_224A838C0(&v1645, &v1670, &qword_27D6F5590, &qword_224DBEC00);
            v1674 = v1610;
            v1683 = v1595;
            v1684 = v1644;
            v1685 = v1570;
            v1686 = v1594;
            v1687 = v1641;
            v1688 = v1417;
            *&v1721[16] = v1588;
            *&v1721[8] = v1600;
            *&v1720 = v1627;

            sub_224A838C0(&v1720, &v1689 + 8, &unk_27D6F5598, &unk_224DBBBF8);
            *(&v1692 + 1) = v1608;
            *&v1692 = v1597;
            *&v1689 = v1637;
            sub_224C4D410(&v1660, &v1720);
            v1418 = type metadata accessor for FileReaperService();
            swift_allocObject();
            v1419 = sub_224CCCEAC(&v1720);
            *(v1381 + 14) = v1418;
            *(v1381 + 15) = &off_283832F08;
            *(v1381 + 11) = v1419;
            sub_224C3FFE0();

            sub_224C4CF9C(v1731);
            (*(v1536 + 8))(v1556, v1559);
            sub_224C4CF9C(&v1739);
            sub_224C4CF9C(&v1768);
            sub_224A3311C(&v1792, &qword_27D6F5428, &qword_224DBBB50);
            sub_224C4CF9C(v1773);
            v1456(v1529, v1569);
            __swift_destroy_boxed_opaque_existential_1(v1796);
            sub_224C4D46C(v1795);
            sub_224A3311C(&v1651, &unk_27D6F4FB0, &unk_224DBADC8);
            sub_224C4D4C0(&v1660);
            return v1381;
          }
        }

        __break(1u);
LABEL_185:
        swift_once();
LABEL_15:
        v172 = type metadata accessor for HostDescriptorPredicate();
        v173 = __swift_project_value_buffer(v172, qword_281365218);
        v174 = v1613;
        sub_224C4E30C(v173, v1613, type metadata accessor for HostDescriptorPredicate);
        (*(*(v172 - 8) + 56))(v174, 0, 1, v172);
        v175 = sub_224A6BAF8(v174);
        sub_224A3311C(v174, &qword_27D6F46D0, &unk_224DBD6D0);
        sub_224A699F0(&v1660);
        if (v175)
        {
          v176 = v171 + qword_28135A7E8;
          swift_beginAccess();
          if (*(v176 + 24))
          {
            sub_224A3317C(v176, &v1660);
            swift_endAccess();
            __swift_project_boxed_opaque_existential_1(&v1660, *(&v1661 + 1));
            sub_224DADE18();

            sub_224A3311C(&v1768, &unk_27D6F53A0, &qword_224DC1A80);
            sub_224A3311C(v1773, &qword_27D6F4200, &unk_224DB5FC0);
            if (*&v1721[8])
            {
              __swift_destroy_boxed_opaque_existential_1(&v1720);
            }

            v1592(v141, v1638);
            __swift_destroy_boxed_opaque_existential_1(&v1660);
          }

          else
          {
            sub_224A3311C(&v1768, &unk_27D6F53A0, &qword_224DC1A80);
            sub_224A3311C(v1773, &qword_27D6F4200, &unk_224DB5FC0);
            if (*&v1721[8])
            {
              __swift_destroy_boxed_opaque_existential_1(&v1720);
            }

            v1592(v141, isEscapingClosureAtFileLocation);
            swift_endAccess();
          }
        }

        else
        {

          sub_224A3311C(&v1768, &unk_27D6F53A0, &qword_224DC1A80);
          sub_224A3311C(v1773, &qword_27D6F4200, &unk_224DB5FC0);
          if (*&v1721[8])
          {
            __swift_destroy_boxed_opaque_existential_1(&v1720);
          }

          v1592(v141, isEscapingClosureAtFileLocation);
        }
      }

      v565 = 0;
      v2 = v1643 + 32;
      while (v565 < *(v1643 + 2))
      {
        v566 = v565 + 1;
        *&v1758 = *&v2[8 * v565];
        v567 = swift_allocObject();
        swift_weakInit();
        v568 = swift_allocObject();
        *(v568 + 16) = sub_224C4D074;
        *(v568 + 24) = v567;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5480, &qword_224DBBB80);
        sub_224A33088(&unk_281351028, &unk_27D6F5480, &qword_224DBBB80);
        sub_224DAB488();

        swift_beginAccess();
        sub_224DAB308();
        swift_endAccess();

        v565 = v566;
        if (v564 == v566)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_179:
      __break(1u);
    }
  }

  __break(1u);
LABEL_188:
  __break(1u);
  return result;
}