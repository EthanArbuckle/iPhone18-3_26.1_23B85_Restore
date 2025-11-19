uint64_t sub_2442468DC(double a1)
{
  v3 = *(v1 + 16);
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v3 setAlpha_];
}

uint64_t sub_24424699C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_244246A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2 != 1)
  {
    return sub_244246A14(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_244246A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    v5 = a5;
  }

  return result;
}

unint64_t sub_244246A7C()
{
  result = qword_27EDDC060;
  if (!qword_27EDDC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC060);
  }

  return result;
}

uint64_t sub_244246AD0()
{
  if (qword_27EDDC630 != -1)
  {
    swift_once();
  }

  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);

  return __swift_project_value_buffer(v0, qword_27EDDCB48);
}

uint64_t sub_244246B40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = a1;
  v36 = a2;
  v34 = sub_2442572A8();
  v32 = *(v34 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC090, &qword_24425C918);
  v5 = *(v4 - 8);
  v37 = v4;
  v38 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v30 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC098, &qword_24425C920);
  v35 = *(v33 - 8);
  v9 = *(v35 + 64);
  MEMORY[0x28223BE20](v33);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC0A0, &qword_24425C928);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC0A8, &qword_24425C930);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  sub_24423D4F8(&qword_27EDDC0B0, &qword_27EDDC0A8, &qword_24425C930);
  sub_2442572C8();
  swift_getKeyPath();
  sub_244257288();

  (*(v18 + 8))(v21, v17);
  swift_getKeyPath();
  sub_24423D4F8(&qword_27EDDC0B8, &qword_27EDDC0A0, &qword_24425C928);
  sub_244257288();

  (*(v13 + 8))(v16, v12);
  v39 = 1;
  sub_2442572B8();
  v23 = v31;
  v22 = v32;
  v24 = v34;
  (*(v32 + 104))(v31, *MEMORY[0x277CC8FC8], v34);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC0C0, &unk_24425C9A0);
  v26 = v36;
  v36[3] = v25;
  v26[4] = sub_244247764();
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_24423D4F8(&qword_27EDDC0F0, &qword_27EDDC098, &qword_24425C920);
  sub_24423D4F8(&qword_27EDDC0F8, &qword_27EDDC090, &qword_24425C918);
  v27 = v33;
  v28 = v37;
  sub_244257298();
  (*(v22 + 8))(v23, v24);
  (*(v38 + 8))(v8, v28);
  return (*(v35 + 8))(v11, v27);
}

uint64_t sub_244247068@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);
  result = sub_244257668();
  *a1 = result;
  return result;
}

uint64_t sub_2442470B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);
  __swift_allocate_value_buffer(v0, qword_27EDDCB48);
  __swift_project_value_buffer(v0, qword_27EDDCB48);
  return sub_244257658();
}

uint64_t sub_244247128(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_244257578();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2442471D0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_2442471E4()
{
  result = qword_27EDDC088;
  if (!qword_27EDDC088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC088);
  }

  return result;
}

uint64_t sub_244247250()
{
  v2 = *v0;
  v3 = v0[1];
  sub_244246A7C();

  return sub_2442577A8();
}

uint64_t sub_2442472A4()
{
  if (!*(v0 + 24))
  {
    return 0;
  }

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_244246A7C();

  return sub_2442577A8();
}

uint64_t sub_244247314()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  return sub_244257828();
}

uint64_t sub_24424735C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC068, &qword_24425C830);
  v0 = *(sub_244257628() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24425C680;
  if (qword_27EDDC630 != -1)
  {
    swift_once();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFF8, &qword_24425C7D8);
  v5 = __swift_project_value_buffer(v4, qword_27EDDCB48);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v10 - v7);
  sub_244257578();
  sub_244247128(&qword_27EDDC070);
  sub_244247128(&qword_27EDDC078);
  sub_244257638();
  return v3;
}

uint64_t sub_24424755C()
{
  v0 = sub_244243D8C();
  v1 = *v0;

  sub_244243FE4();
  v3 = v2;

  if (v3 <= 0.0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC080, &qword_24425C838);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24425C680;
  v5 = *v0;

  sub_244243FE4();

  v6 = sub_244257598();
  v7 = MEMORY[0x277CE1A18];
  *(v4 + 56) = v6;
  *(v4 + 64) = v7;
  __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  sub_2442575A8();
  return v4;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_244247674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2442476BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_244247764()
{
  result = qword_27EDDC0C8;
  if (!qword_27EDDC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDC0C0, &unk_24425C9A0);
    sub_244247804();
    sub_24423D4F8(&qword_27EDDC0E8, &qword_27EDDC090, &qword_24425C918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC0C8);
  }

  return result;
}

unint64_t sub_244247804()
{
  result = qword_27EDDC0D0;
  if (!qword_27EDDC0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDC098, &qword_24425C920);
    sub_24424787C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC0D0);
  }

  return result;
}

unint64_t sub_24424787C()
{
  result = qword_27EDDC0D8;
  if (!qword_27EDDC0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDC0A0, &qword_24425C928);
    sub_24423D4F8(&qword_27EDDC0E0, &qword_27EDDC0A8, &qword_24425C930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC0D8);
  }

  return result;
}

uint64_t sub_244247914()
{
  v0 = sub_244257528();
  __swift_allocate_value_buffer(v0, qword_27EDDC758);
  __swift_project_value_buffer(v0, qword_27EDDC758);
  return sub_244257518();
}

uint64_t sub_244247994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE28, &qword_24425C360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_244257BD8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_244257BB8();

  v11 = sub_244257BA8();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  sub_244235AD8(0, 0, v9, &unk_24425CA48, v12);
}

uint64_t sub_244247AD4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_244247B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[35] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC160, &qword_24425CA58) - 8) + 64) + 15;
  v6[38] = swift_task_alloc();
  v8 = sub_244257358();
  v6[39] = v8;
  v9 = *(v8 - 8);
  v6[40] = v9;
  v10 = *(v9 + 64) + 15;
  v6[41] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC168, &unk_24425CA60);
  v6[42] = v11;
  v12 = *(v11 - 8);
  v6[43] = v12;
  v13 = *(v12 + 64) + 15;
  v6[44] = swift_task_alloc();
  v14 = sub_244257998();
  v6[45] = v14;
  v15 = *(v14 - 8);
  v6[46] = v15;
  v16 = *(v15 + 64) + 15;
  v6[47] = swift_task_alloc();
  v17 = sub_2442579C8();
  v6[48] = v17;
  v18 = *(v17 - 8);
  v6[49] = v18;
  v19 = *(v18 + 64) + 15;
  v6[50] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE08, &qword_24425C1A0) - 8) + 64) + 15;
  v6[51] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBE00, &qword_24425CA70) - 8) + 64) + 15;
  v6[52] = swift_task_alloc();
  v22 = sub_244257318();
  v6[53] = v22;
  v23 = *(v22 - 8);
  v6[54] = v23;
  v24 = *(v23 + 64) + 15;
  v6[55] = swift_task_alloc();
  v25 = sub_2442578F8();
  v6[56] = v25;
  v26 = *(v25 - 8);
  v6[57] = v26;
  v27 = *(v26 + 64) + 15;
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v28 = sub_244257948();
  v6[60] = v28;
  v29 = *(v28 - 8);
  v6[61] = v29;
  v30 = *(v29 + 64) + 15;
  v6[62] = swift_task_alloc();
  v6[63] = swift_task_alloc();
  v31 = sub_244257968();
  v6[64] = v31;
  v32 = *(v31 - 8);
  v6[65] = v32;
  v33 = *(v32 + 64) + 15;
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v34 = sub_244257888();
  v6[69] = v34;
  v35 = *(v34 - 8);
  v6[70] = v35;
  v36 = *(v35 + 64) + 15;
  v6[71] = swift_task_alloc();
  v37 = swift_task_alloc();
  v6[72] = v37;
  v6[73] = sub_244257BB8();
  v6[74] = sub_244257BA8();
  v38 = *(MEMORY[0x277CD7C20] + 4);
  v39 = swift_task_alloc();
  v6[75] = v39;
  *v39 = v6;
  v39[1] = sub_244247FFC;

  return MEMORY[0x282124428](v37);
}

uint64_t sub_244247FFC()
{
  v1 = *v0;
  v2 = *(*v0 + 600);
  v3 = *(*v0 + 592);
  v4 = *(*v0 + 584);
  v8 = *v0;

  v6 = sub_244257B68();
  *(v1 + 608) = v6;
  *(v1 + 616) = v5;

  return MEMORY[0x2822009F8](sub_244248144, v6, v5);
}

uint64_t sub_244248144()
{
  v184 = v0;
  v1 = *(v0 + 576);
  (*(*(v0 + 560) + 104))(*(v0 + 568), *MEMORY[0x277CD7BE8], *(v0 + 552));
  sub_24424D1B4(&qword_27EDDC170, MEMORY[0x277CD7BF0]);
  sub_244257AF8();
  sub_244257AF8();
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  if (*(v0 + 224) == *(v0 + 240) && *(v0 + 232) == *(v0 + 248))
  {
    v6 = *(v4 + 8);
    v6(*(v0 + 568), *(v0 + 552));
    v6(v2, v5);
  }

  else
  {
    v7 = *(v0 + 232);
    v8 = *(v0 + 248);
    v9 = sub_244257EB8();
    v10 = *(v4 + 8);
    v10(v3, v5);
    v10(v2, v5);

    if ((v9 & 1) == 0)
    {
      v138 = *(v0 + 592);

      if (qword_27EDDC750 != -1)
      {
        swift_once();
      }

      v139 = sub_244257528();
      __swift_project_value_buffer(v139, qword_27EDDC758);
      v140 = sub_244257508();
      v141 = sub_244257C58();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&dword_2441FB000, v140, v141, "Need authorization to use Music Library!", v142, 2u);
        MEMORY[0x245D5D2D0](v142, -1, -1);
      }

      goto LABEL_56;
    }
  }

  v11 = MEMORY[0x277D84F90];
  *(v0 + 256) = MEMORY[0x277D84F90];
  v12 = *sub_244243D8C();

  v13 = sub_244243DDC();

  v177 = v13;
  if (v13)
  {
    if (qword_27EDDC750 != -1)
    {
      swift_once();
    }

    v14 = sub_244257528();
    __swift_project_value_buffer(v14, qword_27EDDC758);
    v15 = sub_244257508();
    v16 = sub_244257C58();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2441FB000, v15, v16, "User preference to enable queue on server", v17, 2u);
      MEMORY[0x245D5D2D0](v17, -1, -1);
    }
  }

  v18 = *(*(v0 + 280) + 16);
  *(v0 + 624) = v18;
  if (!v18)
  {
    *(v0 + 680) = v11;
    *(v0 + 672) = v11;
    *(v0 + 664) = v11;
    *(v0 + 656) = v11;
    v26 = v11;
    v180 = v11;
    v25 = v11;
    *(v0 + 848) = v177 & 1;
    if (v177)
    {
      goto LABEL_45;
    }

LABEL_47:
    v167 = v26;
    v119 = v11;
    if (qword_27EDDC750 != -1)
    {
      swift_once();
    }

    v120 = sub_244257528();
    *(v0 + 768) = __swift_project_value_buffer(v120, qword_27EDDC758);
    v121 = sub_244257508();
    v122 = sub_244257C58();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = *(v0 + 480);
      v124 = *(v0 + 448);
      v125 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v183 = v126;
      *v125 = 136315394;
      v25 = v119;

      v128 = MEMORY[0x245D5C4A0](v127, v123);
      v130 = v129;

      v131 = sub_24423CC9C(v128, v130, &v183);

      *(v125 + 4) = v131;
      *(v125 + 12) = 2080;
      v132 = v167;

      v134 = MEMORY[0x245D5C4A0](v133, v124);
      v136 = v135;

      v137 = sub_24423CC9C(v134, v136, &v183);

      *(v125 + 14) = v137;
      _os_log_impl(&dword_2441FB000, v121, v122, "Queueing tracks via media remote: %s; %s", v125, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5D2D0](v126, -1, -1);
      MEMORY[0x245D5D2D0](v125, -1, -1);
    }

    else
    {

      v132 = v180;
    }

    *(v0 + 784) = v132;
    *(v0 + 776) = v25;
    v156 = *(v0 + 344);
    v155 = *(v0 + 352);
    v157 = *(v0 + 336);
    v158 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 264;
    *(v0 + 24) = sub_24424A64C;
    swift_continuation_init();
    *(v0 + 136) = v157;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    *(v0 + 792) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC178, &qword_24425CA78);
    sub_244257B78();
    (*(v156 + 32))(boxed_opaque_existential_1, v155, v157);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24424C27C;
    *(v0 + 104) = &block_descriptor_3;
    [v158 getActiveRouteWithCompletion_];
    (*(v156 + 8))(boxed_opaque_existential_1, v157);

    return MEMORY[0x282200938](v0 + 16);
  }

  v19 = 0;
  v20 = *(v0 + 520);
  v21 = MEMORY[0x277CD8360];
  v22 = MEMORY[0x277CD8358];
  v23 = MEMORY[0x277D2B210];
  v24 = MEMORY[0x277D84F90];
  *(v0 + 832) = *(v20 + 80);
  *(v0 + 632) = *(v20 + 72);
  *(v0 + 640) = *(v20 + 16);
  *(v0 + 836) = *v21;
  *(v0 + 840) = *v22;
  *(v0 + 844) = *v23;
  v25 = v24;
  v180 = v24;
  v26 = v24;
  v172 = v24;
  v174 = v24;
  do
  {
    *(v0 + 648) = v19;
    v30 = *(v0 + 836);
    v31 = *(v0 + 640);
    v32 = *(v0 + 544);
    v33 = *(v0 + 536);
    v34 = *(v0 + 520);
    v35 = *(v0 + 512);
    v31(v32, *(v0 + 280) + ((*(v0 + 832) + 32) & ~*(v0 + 832)) + *(v0 + 632) * v19, v35);
    v31(v33, v32, v35);
    v36 = (*(v34 + 88))(v33, v35);
    if (v36 == v30)
    {
      v37 = *(v0 + 536);
      v38 = *(v0 + 504);
      v40 = *(v0 + 488);
      v39 = *(v0 + 496);
      v41 = *(v0 + 480);
      (*(*(v0 + 520) + 96))(v37, *(v0 + 512));
      v42 = *(v40 + 32);
      v42(v38, v37, v41);
      *(v0 + 168) = v41;
      *(v0 + 176) = &off_2857974E8;
      v43 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      v44 = *(v40 + 16);
      v44(v43, v38, v41);
      v44(v39, v38, v41);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = sub_24424C6B0(0, v25[2] + 1, 1, v25, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
      }

      v46 = v25[2];
      v45 = v25[3];
      if (v46 >= v45 >> 1)
      {
        v25 = sub_24424C6B0(v45 > 1, v46 + 1, 1, v25, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
      }

      v47 = *(v0 + 496);
      v48 = *(v0 + 480);
      v49 = *(v0 + 488);
      (*(v49 + 8))(*(v0 + 504), v48);
      v25[2] = v46 + 1;
      v42(v25 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v46, v47, v48);
      v50 = 0;
      v51 = v25;
    }

    else
    {
      if (v36 != *(v0 + 840))
      {
        if (qword_27EDDC750 != -1)
        {
          swift_once();
        }

        v99 = *(v0 + 640);
        v100 = *(v0 + 544);
        v101 = *(v0 + 528);
        v102 = *(v0 + 512);
        v103 = sub_244257528();
        __swift_project_value_buffer(v103, qword_27EDDC758);
        v104 = sub_244257C48();
        v99(v101, v100, v102);
        v105 = sub_244257508();
        v170 = v104;
        v106 = os_log_type_enabled(v105, v104);
        v107 = *(v0 + 544);
        v108 = *(v0 + 528);
        v109 = *(v0 + 520);
        v110 = *(v0 + 512);
        if (v106)
        {
          v164 = *(v0 + 544);
          v111 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v183 = v163;
          *v111 = 136315138;
          sub_24424D1B4(&qword_27EDDC180, MEMORY[0x277CD83B0]);
          v112 = sub_244257E88();
          v166 = v26;
          v114 = v113;
          v27 = *(v109 + 8);
          v27(v108, v110);
          v115 = sub_24423CC9C(v112, v114, &v183);
          v26 = v166;

          *(v111 + 4) = v115;
          _os_log_impl(&dword_2441FB000, v105, v170, "User picked a track type from the picker that we don't handle: %s", v111, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v163);
          MEMORY[0x245D5D2D0](v163, -1, -1);
          MEMORY[0x245D5D2D0](v111, -1, -1);

          v28 = v164;
        }

        else
        {

          v27 = *(v109 + 8);
          v27(v108, v110);
          v28 = v107;
        }

        v27(v28, v110);
        v29 = *(v0 + 520) + 8;
        v27(*(v0 + 536), *(v0 + 512));
        goto LABEL_15;
      }

      v52 = *(v0 + 536);
      v54 = *(v0 + 464);
      v53 = *(v0 + 472);
      v55 = *(v0 + 448);
      v56 = *(v0 + 456);
      (*(*(v0 + 520) + 96))(v52, *(v0 + 512));
      v57 = *(v56 + 32);
      v57(v53, v52, v55);
      *(v0 + 168) = v55;
      *(v0 + 176) = sub_24424D1B4(&qword_27EDDC188, MEMORY[0x277CD7E50]);
      v58 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      v59 = *(v56 + 16);
      v59(v58, v53, v55);
      v59(v54, v53, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v180 = sub_24424C6B0(0, v180[2] + 1, 1, v180, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
      }

      v61 = v180[2];
      v60 = v180[3];
      if (v61 >= v60 >> 1)
      {
        v180 = sub_24424C6B0(v60 > 1, v61 + 1, 1, v180, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
      }

      v62 = *(v0 + 464);
      v63 = *(v0 + 448);
      v64 = *(v0 + 456);
      (*(v64 + 8))(*(v0 + 472), v63);
      v26 = v180;
      v180[2] = v61 + 1;
      v57(v180 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v61, v62, v63);
      v50 = 1;
      v51 = v174;
    }

    *(v0 + 720) = v51;
    *(v0 + 712) = v26;
    *(v0 + 704) = v180;
    *(v0 + 696) = v25;
    *(v0 + 688) = v50;
    v65 = *(v0 + 168);
    v66 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v65);
    (*(v66 + 16))(v65, v66);
    if (v67)
    {
    }

    else
    {
      v177 = 0;
    }

    *(v0 + 849) = v177 & 1;
    v68 = *(v0 + 408);
    v69 = *(v0 + 168);
    v70 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v69);
    (*(v70 + 24))(v69, v70);
    v71 = sub_2442579F8();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v68, 1, v71) == 1)
    {
      v73 = *(v0 + 424);
      v74 = *(v0 + 432);
      v75 = *(v0 + 416);
      sub_244237440(*(v0 + 408), &qword_27EDDBE08, &qword_24425C1A0);
      (*(v74 + 56))(v75, 1, 1, v73);
    }

    else
    {
      v169 = *(v0 + 844);
      v178 = *(v0 + 432);
      v181 = *(v0 + 424);
      v77 = *(v0 + 408);
      v76 = *(v0 + 416);
      v78 = *(v0 + 392);
      v79 = *(v0 + 400);
      v80 = *(v0 + 376);
      v175 = *(v0 + 384);
      v82 = *(v0 + 360);
      v81 = *(v0 + 368);
      sub_2442579B8();
      (*(v81 + 104))(v80, v169, v82);
      sub_2442579A8();
      (*(v81 + 8))(v80, v82);
      (*(v78 + 8))(v79, v175);
      (*(v72 + 8))(v77, v71);
      if ((*(v178 + 48))(v76, 1, v181) != 1)
      {
        (*(*(v0 + 432) + 32))(*(v0 + 440), *(v0 + 416), *(v0 + 424));
        *(v0 + 728) = [objc_opt_self() sharedSession];
        v160 = *(MEMORY[0x277CC9D20] + 4);
        v161 = swift_task_alloc();
        *(v0 + 736) = v161;
        *v161 = v0;
        v161[1] = sub_2442494B0;
        v162 = *(v0 + 440);

        return MEMORY[0x28211ED00](v162, 0);
      }
    }

    sub_244237440(*(v0 + 416), &qword_27EDDBE00, &qword_24425CA70);
    v83 = *(v0 + 168);
    v84 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v83);
    (*(v84 + 32))(v83, v84);
    v85 = *(v0 + 168);
    v86 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v85);
    (*(v86 + 40))(v85, v86);
    v87 = *(v0 + 168);
    v88 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 144), v87);
    (*(v88 + 16))(v87, v88);
    v90 = v89;
    sub_2442373BC(0, 0xF000000000000000);
    v91 = sub_244257A48();

    v92 = sub_244257A48();

    if (v90)
    {
      v93 = sub_244257A48();
    }

    else
    {
      v93 = 0;
    }

    v94 = [objc_allocWithZone(CSQueuedTrack) initWithSongTitle:v91 artistName:v92 artworkThumbnailImage:0 catalogID:v93 trackType:*(v0 + 688)];

    v95 = v94;
    MEMORY[0x245D5C470]();
    if (*((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v116 = *((*(v0 + 256) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_244257B48();
    }

    v96 = *(v0 + 544);
    v97 = *(v0 + 520);
    v98 = *(v0 + 512);
    sub_244257B58();

    sub_244236264(0, 0xF000000000000000);
    (*(v97 + 8))(v96, v98);
    v172 = *(v0 + 256);
    __swift_destroy_boxed_opaque_existential_0((v0 + 144));
    v177 = *(v0 + 849);
    v174 = *(v0 + 720);
    v26 = *(v0 + 712);
    v180 = *(v0 + 704);
    v25 = *(v0 + 696);
LABEL_15:
    v19 = *(v0 + 648) + 1;
  }

  while (v19 != *(v0 + 624));
  v11 = v174;
  *(v0 + 680) = v174;
  *(v0 + 672) = v26;
  *(v0 + 664) = v172;
  *(v0 + 656) = v172;
  *(v0 + 848) = v177 & 1;
  if ((v177 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_45:
  v117 = *(v0 + 592);

  v118 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 656), *(v0 + 848));

LABEL_56:
  v143 = *(v0 + 576);
  v144 = *(v0 + 568);
  v145 = *(v0 + 544);
  v146 = *(v0 + 536);
  v147 = *(v0 + 528);
  v149 = *(v0 + 496);
  v148 = *(v0 + 504);
  v150 = *(v0 + 464);
  v151 = *(v0 + 472);
  v152 = *(v0 + 440);
  v165 = *(v0 + 416);
  v168 = *(v0 + 408);
  v171 = *(v0 + 400);
  v173 = *(v0 + 376);
  v176 = *(v0 + 352);
  v179 = *(v0 + 328);
  v182 = *(v0 + 304);

  v153 = *(v0 + 8);

  return v153();
}

uint64_t sub_2442494B0(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  v9 = *(*v4 + 736);
  v10 = *v4;
  *(*v4 + 744) = v3;

  if (v3)
  {
    v11 = v8[77];
    v12 = v8[76];
    v13 = sub_24424B074;
  }

  else
  {
    v14 = v8[91];

    v8[94] = a2;
    v8[95] = a1;
    v11 = v8[77];
    v12 = v8[76];
    v13 = sub_244249600;
  }

  return MEMORY[0x2822009F8](v13, v12, v11);
}

uint64_t sub_244249600()
{
  v171 = v0;
  v1 = v0;
  (*(v0[54] + 8))(v0[55], v0[53]);
  v2 = v0[95];
  v3 = v0[94];
  v169 = v0;
  while (2)
  {
    v4 = v1[21];
    v5 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v4);
    (*(v5 + 32))(v4, v5);
    v6 = v1[21];
    v7 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v6);
    (*(v7 + 40))(v6, v7);
    v8 = v1[21];
    v9 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v8);
    (*(v9 + 16))(v8, v9);
    v11 = v10;
    sub_2442373BC(v2, v3);
    v12 = sub_244257A48();

    v13 = sub_244257A48();

    if (v3 >> 60 != 15)
    {
      v14 = sub_244257328();
      sub_244236264(v2, v3);
      v1 = v169;
      if (v11)
      {
        goto LABEL_4;
      }

LABEL_6:
      v15 = 0;
      goto LABEL_7;
    }

    v14 = 0;
    v1 = v169;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_4:
    v15 = sub_244257A48();

LABEL_7:
    v16 = [objc_allocWithZone(CSQueuedTrack) initWithSongTitle:v12 artistName:v13 artworkThumbnailImage:v14 catalogID:v15 trackType:v1[86]];

    v17 = v16;
    MEMORY[0x245D5C470]();
    if (*((v1[32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v108 = *((v1[32] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_244257B48();
    }

    v18 = v1[68];
    v19 = v1[65];
    v20 = v1[64];
    sub_244257B58();

    sub_244236264(v2, v3);
    (*(v19 + 8))(v18, v20);
    v152 = v1[32];
    __swift_destroy_boxed_opaque_existential_0(v1 + 18);
    v153 = *(v1 + 849);
    v21 = v1[89];
    v155 = v21;
    v157 = v1[88];
    v22 = v1[87];
    v159 = v22;
    v162 = v1[90];
    while (1)
    {
      v26 = v1[81] + 1;
      if (v26 == v1[78])
      {
        v1[85] = v162;
        v1[84] = v155;
        v1[83] = v152;
        v1[82] = v152;
        *(v1 + 848) = v153;
        if (v153)
        {
          v109 = v1[74];

          v110 = v1[37];
          (v1[36])(v1[82], *(v1 + 848));

          v111 = v1[72];
          v112 = v1[71];
          v113 = v1[68];
          v114 = v1[67];
          v115 = v1[66];
          v116 = v1;
          v119 = v1 + 62;
          v118 = v1[62];
          v117 = v119[1];
          v120 = v116[58];
          v121 = v116[59];
          v122 = v116[55];
          v154 = v116[52];
          v156 = v116[51];
          v158 = v116[50];
          v161 = v116[47];
          v164 = v116[44];
          v165 = v116[41];
          v168 = v116[38];

          v123 = v116[1];

          return v123();
        }

        else
        {
          if (qword_27EDDC750 != -1)
          {
            swift_once();
          }

          v125 = sub_244257528();
          v1[96] = __swift_project_value_buffer(v125, qword_27EDDC758);
          v126 = sub_244257508();
          v127 = sub_244257C58();
          if (os_log_type_enabled(v126, v127))
          {
            v128 = v1[60];
            v129 = v1[56];
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v170 = v131;
            *v130 = 136315394;

            v132 = MEMORY[0x245D5C4A0](v162, v128);
            v134 = v133;

            v135 = sub_24423CC9C(v132, v134, &v170);

            *(v130 + 4) = v135;
            *(v130 + 12) = 2080;

            v137 = MEMORY[0x245D5C4A0](v136, v129);
            v139 = v138;

            v140 = sub_24423CC9C(v137, v139, &v170);

            *(v130 + 14) = v140;
            _os_log_impl(&dword_2441FB000, v126, v127, "Queueing tracks via media remote: %s; %s", v130, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x245D5D2D0](v131, -1, -1);
            v141 = v130;
            v142 = v162;
            MEMORY[0x245D5D2D0](v141, -1, -1);

            v143 = v155;
          }

          else
          {

            v143 = v157;
            v142 = v159;
          }

          v1[98] = v143;
          v1[97] = v142;
          v145 = v1[43];
          v144 = v1[44];
          v146 = v1[42];
          v147 = objc_opt_self();
          v1[2] = v1;
          v1[7] = v1 + 33;
          v1[3] = sub_24424A64C;
          swift_continuation_init();
          v1[17] = v146;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
          v1[99] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC178, &qword_24425CA78);
          sub_244257B78();
          (*(v145 + 32))(boxed_opaque_existential_1, v144, v146);
          v1[10] = MEMORY[0x277D85DD0];
          v1[11] = 1107296256;
          v1[12] = sub_24424C27C;
          v1[13] = &block_descriptor_3;
          [v147 getActiveRouteWithCompletion_];
          (*(v145 + 8))(boxed_opaque_existential_1, v146);

          return MEMORY[0x282200938](v1 + 2);
        }
      }

      v1[81] = v26;
      v27 = *(v1 + 209);
      v28 = v1[80];
      v29 = v1[68];
      v30 = v1[67];
      v31 = v1[65];
      v32 = v1[64];
      v28(v29, v1[35] + ((*(v1 + 832) + 32) & ~*(v1 + 832)) + v1[79] * v26, v32);
      v28(v30, v29, v32);
      v33 = (*(v31 + 88))(v30, v32);
      if (v33 == v27)
      {
        break;
      }

      if (v33 == *(v1 + 210))
      {
        v72 = v1[67];
        v74 = v1[58];
        v73 = v1[59];
        v76 = v1[56];
        v75 = v1[57];
        (*(v1[65] + 96))(v72, v1[64]);
        v77 = *(v75 + 32);
        v77(v73, v72, v76);
        v1[21] = v76;
        v1[22] = sub_24424D1B4(&qword_27EDDC188, MEMORY[0x277CD7E50]);
        v78 = __swift_allocate_boxed_opaque_existential_1(v1 + 18);
        v79 = *(v75 + 16);
        v79(v78, v73, v76);
        v79(v74, v73, v76);
        v80 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_24424C6B0(0, v157[2] + 1, 1, v157, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
        }

        v82 = v80[2];
        v81 = v80[3];
        if (v82 >= v81 >> 1)
        {
          v80 = sub_24424C6B0(v81 > 1, v82 + 1, 1, v80, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
        }

        v83 = v1[58];
        v84 = v1[56];
        v85 = v1[57];
        (*(v85 + 8))(v1[59], v84);
        v80[2] = v82 + 1;
        v86 = v80 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v82;
        v71 = v80;
        v77(v86, v83, v84);
        v68 = 1;
        v70 = v80;
        v64 = v159;
        v69 = v162;
        goto LABEL_29;
      }

      if (qword_27EDDC750 != -1)
      {
        swift_once();
      }

      v34 = v1[80];
      v35 = v1[68];
      v36 = v1[66];
      v37 = v1[64];
      v38 = sub_244257528();
      __swift_project_value_buffer(v38, qword_27EDDC758);
      v39 = sub_244257C48();
      v34(v36, v35, v37);
      v40 = sub_244257508();
      v41 = os_log_type_enabled(v40, v39);
      v42 = v1[68];
      v43 = v1[66];
      v44 = v1;
      v45 = v1[65];
      v46 = v44[64];
      if (v41)
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v170 = v48;
        *v47 = 136315138;
        sub_24424D1B4(&qword_27EDDC180, MEMORY[0x277CD83B0]);
        v49 = sub_244257E88();
        v166 = v42;
        v51 = v50;
        v23 = *(v45 + 8);
        v23(v43, v46);
        v52 = sub_24423CC9C(v49, v51, &v170);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_2441FB000, v40, v39, "User picked a track type from the picker that we don't handle: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v48);
        MEMORY[0x245D5D2D0](v48, -1, -1);
        MEMORY[0x245D5D2D0](v47, -1, -1);

        v24 = v166;
      }

      else
      {

        v23 = *(v45 + 8);
        v23(v43, v46);
        v24 = v42;
      }

      v23(v24, v46);
      v1 = v169;
      v25 = v169[65] + 8;
      v23(v169[67], v169[64]);
    }

    v53 = v1[67];
    v54 = v1[63];
    v56 = v1[61];
    v55 = v1[62];
    v57 = v1[60];
    (*(v1[65] + 96))(v53, v1[64]);
    v58 = *(v56 + 32);
    v58(v54, v53, v57);
    v1[21] = v57;
    v1[22] = &off_2857974E8;
    v59 = __swift_allocate_boxed_opaque_existential_1(v1 + 18);
    v60 = *(v56 + 16);
    v60(v59, v54, v57);
    v60(v55, v54, v57);
    v61 = v159;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_24424C6B0(0, v159[2] + 1, 1, v159, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
    }

    v63 = v61[2];
    v62 = v61[3];
    v64 = v61;
    if (v63 >= v62 >> 1)
    {
      v64 = sub_24424C6B0(v62 > 1, v63 + 1, 1, v61, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
    }

    v65 = v1[62];
    v66 = v1[60];
    v67 = v1[61];
    (*(v67 + 8))(v1[63], v66);
    *(v64 + 16) = v63 + 1;
    v58(v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v63, v65, v66);
    v68 = 0;
    v69 = v64;
    v70 = v155;
    v71 = v157;
LABEL_29:
    v1[90] = v69;
    v1[89] = v70;
    v1[88] = v71;
    v1[87] = v64;
    v1[86] = v68;
    v87 = v1[21];
    v88 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v87);
    (*(v88 + 16))(v87, v88);
    if (v89)
    {

      v90 = v153;
    }

    else
    {
      v90 = 0;
    }

    *(v1 + 849) = v90;
    v91 = v1[51];
    v92 = v1[21];
    v93 = v1[22];
    __swift_project_boxed_opaque_existential_1Tm(v1 + 18, v92);
    (*(v93 + 24))(v92, v93);
    v94 = sub_2442579F8();
    v95 = *(v94 - 8);
    if ((*(v95 + 48))(v91, 1, v94) == 1)
    {
      v96 = v1[53];
      v97 = v1[54];
      v98 = v1[52];
      sub_244237440(v1[51], &qword_27EDDBE08, &qword_24425C1A0);
      (*(v97 + 56))(v98, 1, 1, v96);
LABEL_35:
      sub_244237440(v1[52], &qword_27EDDBE00, &qword_24425CA70);
      v2 = 0;
      v3 = 0xF000000000000000;
      continue;
    }

    break;
  }

  v99 = *(v1 + 211);
  v100 = v1[54];
  v167 = v1[53];
  v101 = v1[52];
  v103 = v1[49];
  v102 = v1[50];
  v104 = v1[47];
  v160 = v1[51];
  v163 = v1[48];
  v105 = v1[46];
  v106 = v169[45];
  sub_2442579B8();
  (*(v105 + 104))(v104, v99, v106);
  sub_2442579A8();
  v107 = v106;
  v1 = v169;
  (*(v105 + 8))(v104, v107);
  (*(v103 + 8))(v102, v163);
  (*(v95 + 8))(v160, v94);
  if ((*(v100 + 48))(v101, 1, v167) == 1)
  {
    goto LABEL_35;
  }

  (*(v169[54] + 32))(v169[55], v169[52], v169[53]);
  v169[91] = [objc_opt_self() sharedSession];
  v149 = *(MEMORY[0x277CC9D20] + 4);
  v150 = swift_task_alloc();
  v169[92] = v150;
  *v150 = v169;
  v150[1] = sub_2442494B0;
  v151 = v169[55];

  return MEMORY[0x28211ED00](v151, 0);
}

uint64_t sub_24424A64C()
{
  v1 = *(*v0 + 616);
  v2 = *(*v0 + 608);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24424A754, v2, v1);
}

uint64_t sub_24424A754()
{
  v53 = v0;
  v1 = v0[33];
  v0[100] = v1;
  if (!v1)
  {
    v12 = v0[83];
    v13 = v0[74];

    v6 = 0;
    goto LABEL_5;
  }

  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v5 = objc_opt_self();
  v6 = v1;
  v7 = sub_244257A48();
  v8 = [v5 systemMusicPathWithRoute:v6 playerID:v7];

  sub_244257348();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v9 = v0[83];
    v10 = v0[74];
    v11 = v0[38];

    sub_244237440(v11, &qword_27EDDC160, &qword_24425CA58);
LABEL_5:
    v14 = v0[96];
    v15 = sub_244257C48();
    v16 = v6;
    v17 = sub_244257508();

    if (os_log_type_enabled(v17, v15))
    {
      v18 = v0[99];
      v19 = v0[98];
      v20 = v0[97];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v52 = v22;
      *v21 = 136315138;
      v0[34] = v1;
      v23 = v16;
      v24 = sub_244257A88();
      v26 = sub_24423CC9C(v24, v25, &v52);

      *(v21 + 4) = v26;
      _os_log_impl(&dword_2441FB000, v17, v15, "cannot enqueue tracks with route %s ", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x245D5D2D0](v22, -1, -1);
      MEMORY[0x245D5D2D0](v21, -1, -1);
    }

    else
    {
      v27 = v0[98];
      v28 = v0[97];
    }

    v29 = v0[72];
    v30 = v0[71];
    v31 = v0[68];
    v32 = v0[67];
    v33 = v0[66];
    v35 = v0[62];
    v34 = v0[63];
    v36 = v0[58];
    v37 = v0[59];
    v38 = v0[55];
    v45 = v0[52];
    v46 = v0[51];
    v47 = v0[50];
    v48 = v0[47];
    v49 = v0[44];
    v50 = v0[41];
    v51 = v0[38];

    v39 = v0[1];

    return v39();
  }

  v41 = v0[85];
  (*(v0[40] + 32))(v0[41], v0[38], v0[39]);
  sub_244257498();
  v0[101] = sub_244257488();

  v42 = swift_task_alloc();
  v0[102] = v42;
  *v42 = v0;
  v42[1] = sub_24424AB84;
  v43 = v0[96];
  v44 = v0[85];

  return sub_244239520(v44, v43);
}

uint64_t sub_24424AB84()
{
  v1 = *v0;
  v2 = *(*v0 + 816);
  v3 = *(*v0 + 680);
  v7 = *v0;

  v4 = *(v1 + 616);
  v5 = *(v1 + 608);

  return MEMORY[0x2822009F8](sub_24424ACC8, v5, v4);
}

uint64_t sub_24424ACC8()
{
  v1 = v0[84];

  v2 = swift_task_alloc();
  v0[103] = v2;
  *v2 = v0;
  v2[1] = sub_24424AD74;
  v3 = v0[101];
  v4 = v0[96];
  v5 = v0[84];

  return sub_24423AEC4(v5, v4);
}

uint64_t sub_24424AD74()
{
  v1 = *v0;
  v2 = *(*v0 + 824);
  v3 = *(*v0 + 672);
  v7 = *v0;

  v4 = *(v1 + 616);
  v5 = *(v1 + 608);

  return MEMORY[0x2822009F8](sub_24424AEB8, v5, v4);
}

uint64_t sub_24424AEB8()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 592);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 312);

  (*(v5 + 8))(v4, v6);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9 = *(v0 + 296);
  (*(v0 + 288))(*(v0 + 656), *(v0 + 848));

  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 544);
  v13 = *(v0 + 536);
  v14 = *(v0 + 528);
  v16 = *(v0 + 496);
  v15 = *(v0 + 504);
  v17 = *(v0 + 464);
  v18 = *(v0 + 472);
  v19 = *(v0 + 440);
  v22 = *(v0 + 416);
  v23 = *(v0 + 408);
  v24 = *(v0 + 400);
  v25 = *(v0 + 376);
  v26 = *(v0 + 352);
  v27 = *(v0 + 328);
  v28 = *(v0 + 304);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_24424B074()
{
  v190 = v0;

  if (qword_27EDDC750 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 744);
  v187 = sub_244257528();
  __swift_project_value_buffer(v187, qword_27EDDC758);
  sub_24424D228(v0 + 144, v0 + 184);
  v2 = v1;
  v3 = sub_244257508();
  v4 = sub_244257C58();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 744);
  v8 = *(v0 + 432);
  v7 = *(v0 + 440);
  v9 = *(v0 + 424);
  v186 = v0;
  if (v5)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v189 = v174;
    *v10 = 136315394;
    v182 = v9;
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 184), v12);
    v178 = v7;
    v14 = (*(v13 + 32))(v12, v13);
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
    v17 = sub_24423CC9C(v14, v16, &v189);

    *(v10 + 4) = v17;
    *(v10 + 12) = 2112;
    v18 = v6;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v19;
    *v11 = v19;
    _os_log_impl(&dword_2441FB000, v3, v4, "Failed to fetch artwork for song '%s': %@", v10, 0x16u);
    sub_244237440(v11, &qword_27EDDBF00, &qword_24425CA80);
    MEMORY[0x245D5D2D0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v174);
    MEMORY[0x245D5D2D0](v174, -1, -1);
    MEMORY[0x245D5D2D0](v10, -1, -1);

    (*(v8 + 8))(v178, v182);
  }

  else
  {

    (*(v8 + 8))(v7, v9);
    __swift_destroy_boxed_opaque_existential_0((v0 + 184));
  }

  v20 = v0;
LABEL_9:
  v24 = v20[21];
  v25 = v20[22];
  __swift_project_boxed_opaque_existential_1Tm(v20 + 18, v24);
  (*(v25 + 32))(v24, v25);
  v26 = v20[21];
  v27 = v20[22];
  __swift_project_boxed_opaque_existential_1Tm(v20 + 18, v26);
  (*(v27 + 40))(v26, v27);
  v28 = v20[21];
  v29 = v20[22];
  __swift_project_boxed_opaque_existential_1Tm(v20 + 18, v28);
  (*(v29 + 16))(v28, v29);
  v31 = v30;
  sub_2442373BC(0, 0xF000000000000000);
  v32 = sub_244257A48();

  v33 = sub_244257A48();

  if (v31)
  {
    v34 = sub_244257A48();
  }

  else
  {
    v34 = 0;
  }

  v35 = [objc_allocWithZone(CSQueuedTrack) initWithSongTitle:v32 artistName:v33 artworkThumbnailImage:0 catalogID:v34 trackType:v20[86]];

  v36 = v35;
  MEMORY[0x245D5C470]();
  if (*((v20[32] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20[32] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v119 = *((v20[32] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_244257B48();
  }

  v37 = v20[68];
  v38 = v20[65];
  v39 = v20[64];
  sub_244257B58();

  sub_244236264(0, 0xF000000000000000);
  (*(v38 + 8))(v37, v39);
  v166 = v20[32];
  __swift_destroy_boxed_opaque_existential_0(v20 + 18);
  v169 = *(v20 + 849);
  v167 = v20[90];
  v40 = v20[89];
  v172 = v40;
  v175 = v20[88];
  v179 = v20[87];
  while (1)
  {
    v44 = v20[81] + 1;
    if (v44 == v20[78])
    {
      break;
    }

    v20[81] = v44;
    v45 = *(v20 + 209);
    v46 = v20[80];
    v47 = v20[68];
    v48 = v20[67];
    v49 = v20[65];
    v50 = v20[64];
    v46(v47, v20[35] + ((*(v20 + 832) + 32) & ~*(v20 + 832)) + v20[79] * v44, v50);
    v46(v48, v47, v50);
    v51 = (*(v49 + 88))(v48, v50);
    if (v51 == v45)
    {
      v69 = v20[67];
      v70 = v20[63];
      v71 = v20[61];
      v72 = v20[62];
      v73 = v20[60];
      (*(v20[65] + 96))(v69, v20[64]);
      v74 = *(v71 + 32);
      v74(v70, v69, v73);
      v20[21] = v73;
      v20[22] = &off_2857974E8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20 + 18);
      v76 = *(v71 + 16);
      v76(boxed_opaque_existential_1, v70, v73);
      v76(v72, v70, v73);
      v77 = v179;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_24424C6B0(0, v179[2] + 1, 1, v179, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
      }

      v79 = v77[2];
      v78 = v77[3];
      v80 = v77;
      if (v79 >= v78 >> 1)
      {
        v80 = sub_24424C6B0(v78 > 1, v79 + 1, 1, v77, &qword_27EDDC190, &qword_24425CA88, MEMORY[0x277CD8240]);
      }

      v81 = v20[62];
      v82 = v20[60];
      v83 = v20[61];
      (*(v83 + 8))(v20[63], v82);
      *(v80 + 16) = v79 + 1;
      v74(v80 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v79, v81, v82);
      v84 = 0;
      v85 = v80;
      v86 = v172;
      v87 = v175;
LABEL_34:
      v20[90] = v85;
      v20[89] = v86;
      v20[88] = v87;
      v20[87] = v80;
      v20[86] = v84;
      v103 = v20[21];
      v104 = v20[22];
      __swift_project_boxed_opaque_existential_1Tm(v20 + 18, v103);
      (*(v104 + 16))(v103, v104);
      if (v105)
      {

        v106 = v169;
      }

      else
      {
        v106 = 0;
      }

      *(v20 + 849) = v106;
      v107 = v20[51];
      v108 = v20[21];
      v109 = v20[22];
      __swift_project_boxed_opaque_existential_1Tm(v20 + 18, v108);
      (*(v109 + 24))(v108, v109);
      v110 = sub_2442579F8();
      v111 = *(v110 - 8);
      if ((*(v111 + 48))(v107, 1, v110) == 1)
      {
        v21 = v20[53];
        v22 = v20[54];
        v23 = v20[52];
        sub_244237440(v20[51], &qword_27EDDBE08, &qword_24425C1A0);
        (*(v22 + 56))(v23, 1, 1, v21);
      }

      else
      {
        v170 = *(v20 + 211);
        v180 = v20[54];
        v184 = v20[53];
        v112 = v20[51];
        v113 = v20[52];
        v115 = v20[49];
        v114 = v20[50];
        v116 = v20[47];
        v176 = v20[48];
        v118 = v20[45];
        v117 = v20[46];
        sub_2442579B8();
        (*(v117 + 104))(v116, v170, v118);
        sub_2442579A8();
        (*(v117 + 8))(v116, v118);
        (*(v115 + 8))(v114, v176);
        (*(v111 + 8))(v112, v110);
        if ((*(v180 + 48))(v113, 1, v184) != 1)
        {
          (*(v20[54] + 32))(v20[55], v20[52], v20[53]);
          v20[91] = [objc_opt_self() sharedSession];
          v163 = *(MEMORY[0x277CC9D20] + 4);
          v164 = swift_task_alloc();
          v20[92] = v164;
          *v164 = v20;
          v164[1] = sub_2442494B0;
          v165 = v20[55];

          return MEMORY[0x28211ED00](v165, 0);
        }
      }

      sub_244237440(v20[52], &qword_27EDDBE00, &qword_24425CA70);
      goto LABEL_9;
    }

    if (v51 == *(v20 + 210))
    {
      v88 = v20[67];
      v90 = v20[58];
      v89 = v20[59];
      v92 = v20[56];
      v91 = v20[57];
      (*(v20[65] + 96))(v88, v20[64]);
      v93 = *(v91 + 32);
      v93(v89, v88, v92);
      v20[21] = v92;
      v20[22] = sub_24424D1B4(&qword_27EDDC188, MEMORY[0x277CD7E50]);
      v94 = __swift_allocate_boxed_opaque_existential_1(v20 + 18);
      v95 = *(v91 + 16);
      v95(v94, v89, v92);
      v95(v90, v89, v92);
      v96 = v175;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v96 = sub_24424C6B0(0, v175[2] + 1, 1, v175, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
      }

      v98 = v96[2];
      v97 = v96[3];
      if (v98 >= v97 >> 1)
      {
        v96 = sub_24424C6B0(v97 > 1, v98 + 1, 1, v96, &qword_27EDDC198, &unk_24425CA90, MEMORY[0x277CD7E50]);
      }

      v99 = v20[58];
      v100 = v20[56];
      v101 = v20[57];
      (*(v101 + 8))(v20[59], v100);
      v96[2] = v98 + 1;
      v102 = v96 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v98;
      v87 = v96;
      v93(v102, v99, v100);
      v84 = 1;
      v86 = v96;
      v80 = v179;
      v85 = v167;
      goto LABEL_34;
    }

    if (qword_27EDDC750 != -1)
    {
      swift_once();
    }

    v52 = v20[80];
    v53 = v20[68];
    v54 = v20[66];
    v55 = v20[64];
    __swift_project_value_buffer(v187, qword_27EDDC758);
    v56 = sub_244257C48();
    v52(v54, v53, v55);
    v57 = sub_244257508();
    v58 = os_log_type_enabled(v57, v56);
    v59 = v20[68];
    v60 = v20[66];
    v61 = v20[65];
    v62 = v20[64];
    if (v58)
    {
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v189 = v64;
      *v63 = 136315138;
      sub_24424D1B4(&qword_27EDDC180, MEMORY[0x277CD83B0]);
      v65 = sub_244257E88();
      v183 = v59;
      v67 = v66;
      v41 = *(v61 + 8);
      v41(v60, v62);
      v68 = sub_24423CC9C(v65, v67, &v189);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_2441FB000, v57, v56, "User picked a track type from the picker that we don't handle: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v64);
      MEMORY[0x245D5D2D0](v64, -1, -1);
      MEMORY[0x245D5D2D0](v63, -1, -1);

      v42 = v183;
    }

    else
    {

      v41 = *(v61 + 8);
      v41(v60, v62);
      v42 = v59;
    }

    v41(v42, v62);
    v20 = v186;
    v43 = v186[65] + 8;
    v41(v186[67], v186[64]);
  }

  v20[85] = v167;
  v20[84] = v172;
  v20[83] = v166;
  v20[82] = v166;
  *(v20 + 848) = v169;
  if (v169)
  {
    v120 = v20[74];

    v121 = v20[37];
    (v20[36])(v20[82], *(v20 + 848));

    v122 = v20[72];
    v123 = v20[71];
    v124 = v20[68];
    v125 = v20[67];
    v126 = v20[66];
    v127 = v20;
    v128 = v20[63];
    v129 = v127[62];
    v130 = v127[58];
    v131 = v127[59];
    v132 = v127[55];
    v168 = v127[52];
    v171 = v127[51];
    v173 = v127[50];
    v177 = v127[47];
    v181 = v127[44];
    v185 = v127[41];
    v188 = v127[38];

    v133 = v127[1];

    return v133();
  }

  else
  {
    if (qword_27EDDC750 != -1)
    {
      swift_once();
    }

    v20[96] = __swift_project_value_buffer(v187, qword_27EDDC758);
    v135 = sub_244257508();
    v136 = sub_244257C58();
    if (os_log_type_enabled(v135, v136))
    {
      v137 = v20[60];
      v138 = v20[56];
      v139 = swift_slowAlloc();
      v140 = swift_slowAlloc();
      v189 = v140;
      *v139 = 136315394;

      v142 = MEMORY[0x245D5C4A0](v141, v137);
      v144 = v143;

      v145 = sub_24423CC9C(v142, v144, &v189);

      *(v139 + 4) = v145;
      *(v139 + 12) = 2080;
      v146 = v172;

      v148 = MEMORY[0x245D5C4A0](v147, v138);
      v150 = v149;

      v151 = sub_24423CC9C(v148, v150, &v189);

      *(v139 + 14) = v151;
      _os_log_impl(&dword_2441FB000, v135, v136, "Queueing tracks via media remote: %s; %s", v139, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D5D2D0](v140, -1, -1);
      MEMORY[0x245D5D2D0](v139, -1, -1);

      v152 = v167;
    }

    else
    {

      v146 = v175;
      v152 = v179;
    }

    v153 = v20 + 2;
    v154 = v20 + 33;
    v155 = v20 + 10;
    v20[98] = v146;
    v20[97] = v152;
    v156 = v20;
    v159 = v20 + 43;
    v158 = v20[43];
    v157 = v159[1];
    v160 = v156[42];
    v161 = objc_opt_self();
    v156[2] = v156;
    v156[7] = v154;
    v156[3] = sub_24424A64C;
    swift_continuation_init();
    v156[17] = v160;
    v162 = __swift_allocate_boxed_opaque_existential_1(v156 + 14);
    v156[99] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC178, &qword_24425CA78);
    sub_244257B78();
    (*(v158 + 32))(v162, v157, v160);
    v156[10] = MEMORY[0x277D85DD0];
    v156[11] = 1107296256;
    v156[12] = sub_24424C27C;
    v156[13] = &block_descriptor_3;
    [v161 getActiveRouteWithCompletion_];
    (*(v158 + 8))(v162, v160);

    return MEMORY[0x282200938](v153);
  }
}

uint64_t sub_24424C27C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC168, &unk_24425CA60);
  return sub_244257B88();
}

void sub_24424C4FC(uint64_t a1, char a2, uint64_t a3)
{
  sub_244243124(0, &qword_27EDDC100, off_278E0A270);
  v5 = sub_244257B18();
  (*(a3 + 16))(a3, v5, a2 & 1);
}

size_t sub_24424C6B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id sub_24424C88C(void *a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC108, &qword_24425CA08);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC110, &qword_24425CA10);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC118, &qword_24425CA18);
  v34 = *(v36 - 8);
  v12 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v14 = &v33 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC120, &qword_24425CA20);
  v35 = *(v37 - 8);
  v15 = *(v35 + 64);
  MEMORY[0x28223BE20](v37);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC128, &qword_24425CA28);
  v38 = *(v18 - 8);
  v39 = v18;
  v19 = *(v38 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - v20;
  sub_2442574E8();
  v22 = sub_2442574D8();
  result = [a1 window];
  if (result)
  {
    v24 = result;
    sub_2442574C8();

    sub_2442574B8();
    sub_244243124(0, &qword_27EDDBF48, 0x277D85C78);
    v25 = sub_244257C78();
    v42 = v25;
    v26 = sub_244257C68();
    (*(*(v26 - 8) + 56))(v7, 1, 1, v26);
    sub_24423D4F8(&qword_27EDDC130, &qword_27EDDC110, &qword_24425CA10);
    sub_24424CF1C();
    sub_2442576F8();
    sub_244237440(v7, &qword_27EDDC108, &qword_24425CA08);

    (*(v33 + 8))(v11, v8);
    sub_24423D4F8(&qword_27EDDC140, &qword_27EDDC118, &qword_24425CA18);
    sub_24424CF84();
    v27 = v36;
    sub_244257718();
    (*(v34 + 8))(v14, v27);
    sub_24423D4F8(&qword_27EDDC150, &qword_27EDDC120, &qword_24425CA20);
    v28 = v37;
    sub_244257708();
    (*(v35 + 8))(v17, v28);
    v29 = swift_allocObject();
    v30 = v41;
    *(v29 + 16) = v40;
    *(v29 + 24) = v30;
    sub_24423D4F8(&qword_27EDDC158, &qword_27EDDC128, &qword_24425CA28);

    v31 = v39;
    v32 = sub_244257728();

    (*(v38 + 8))(v21, v31);
    swift_beginAccess();
    qword_27EDDCB60 = v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24424CE2C(uint64_t a1)
{
  result = sub_24424D1B4(&qword_27EDDBF28, MEMORY[0x277CD7E50]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24424CE84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24424CEBC()
{
  v1 = *(v0 + 16);
  v2 = sub_244257A48();
  (*(v1 + 16))(v1, v2);
}

unint64_t sub_24424CF1C()
{
  result = qword_27EDDC138;
  if (!qword_27EDDC138)
  {
    sub_244243124(255, &qword_27EDDBF48, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC138);
  }

  return result;
}

unint64_t sub_24424CF84()
{
  result = qword_27EDDC148;
  if (!qword_27EDDC148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EDDC008, &unk_24425CA30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC148);
  }

  return result;
}

uint64_t sub_24424D000(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (v5)
  {
    v3(v4, v5);
  }
}

uint64_t sub_24424D0C4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_24424D10C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2442372C8;

  return sub_244247B14(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_24424D1B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24424D228(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_24424D5E0()
{
  v1 = OBJC_IVAR___CSArtworkImageView_content;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_24424D6FC(void *a1)
{
  v3 = OBJC_IVAR___CSArtworkImageView_content;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + v3);
  if (v6)
  {
    v7 = [v6 metadataObject];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 song];

      if (v9)
      {
        v10 = [v9 artworkCatalog];

        if (v10)
        {
          [v10 setFittingSize_];
          v11 = swift_allocObject();
          swift_unknownObjectWeakInit();
          aBlock[4] = sub_24424D9C8;
          aBlock[5] = v11;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_24424D9D4;
          aBlock[3] = &block_descriptor_4;
          v12 = _Block_copy(aBlock);

          [v10 setDestination:v1 configurationBlock:v12];

          _Block_release(v12);
          v5 = v10;
        }
      }
    }
  }
}

uint64_t sub_24424D89C()
{
  MEMORY[0x245D5D3C0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_24424D8D4(uint64_t a1)
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong setImage_];
    [v3 setContentMode_];
  }

  else
  {
  }
}

uint64_t sub_24424D9D4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v9[3] = swift_getObjectType();
  v9[0] = a2;

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v9, a3);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void (*sub_24424DA7C(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___CSArtworkImageView_content;
  *(v3 + 48) = v1;
  *(v3 + 56) = v4;
  swift_beginAccess();
  return sub_24424DB04;
}

void sub_24424DB04(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3[6] + v3[7]);
    if (v4)
    {
      v5 = [v4 metadataObject];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 song];

        if (v7)
        {
          v8 = [v7 artworkCatalog];

          if (v8)
          {
            v9 = v3[6];
            [v8 setFittingSize_];
            v10 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v3[4] = sub_24424DDF0;
            v3[5] = v10;
            *v3 = MEMORY[0x277D85DD0];
            v3[1] = 1107296256;
            v3[2] = sub_24424D9D4;
            v3[3] = &block_descriptor_5;
            v11 = _Block_copy(v3);
            v12 = v3[5];

            [v8 setDestination:v9 configurationBlock:v11];
            _Block_release(v11);
          }
        }
      }
    }
  }

  free(v3);
}

id sub_24424DDA4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArtworkImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24424DDF4()
{
  v0 = sub_244257528();
  __swift_allocate_value_buffer(v0, qword_27EDDC7F8);
  __swift_project_value_buffer(v0, qword_27EDDC7F8);
  return sub_244257518();
}

uint64_t sub_24424DE94()
{
  v1 = *sub_244243D8C();

  v2 = sub_244243EE0();

  if (v2)
  {
    if (qword_27EDDC7F0 != -1)
    {
      swift_once();
    }

    v3 = sub_244257528();
    __swift_project_value_buffer(v3, qword_27EDDC7F8);
    v4 = sub_244257508();
    v5 = sub_244257C58();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2441FB000, v4, v5, "Resetting Tips on launch", v6, 2u);
      MEMORY[0x245D5D2D0](v6, -1, -1);
    }

    sub_244257588();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1A8, &qword_24425CAE0);
  v7 = *(sub_244257618() - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_24425CAC0;
  v10 = sub_2442575C8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  sub_2442575B8();
  sub_2442575D8();
  (*(v11 + 8))(v13, v10);

  v14 = sub_2442575F8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  MEMORY[0x245D5BF50]();
  sub_244257608();
  (*(v15 + 8))(v17, v14);

  sub_244257688();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24424E2E8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24424E410()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2442372C8;

  return sub_24424DE78();
}

uint64_t sub_24424E4A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer);
  v2 = sub_24424F3C4();
  return (*((*MEMORY[0x277D85000] & *v1) + 0xD8))(0x726F6C6F43, 0xE500000000000000, v2 & 1);
}

uint64_t sub_24424E518(double a1, double a2, double a3, double a4)
{
  type metadata accessor for MicaPlayer();
  v9 = type metadata accessor for GlowView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass_];
  result = sub_244251A04(0x534F69776F6C67, 0xE700000000000000, v11);
  if (result)
  {
    *&v4[OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer] = result;
    v27.receiver = v4;
    v27.super_class = v9;
    v13 = objc_msgSendSuper2(&v27, sel_initWithFrame_, a1, a2, a3, a4);
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 clearColor];
    [v15 setBackgroundColor_];

    v17 = OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer;
    v18 = *&v15[OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer];
    v19 = [v15 layer];

    v20 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v18) + 0xC0))(v19, 1, *MEMORY[0x277CDA708]);

    v21 = *&v15[v17];
    v22 = *((*v20 & *v21) + 0x198);
    v23 = v21;
    v22(6710863, 0xE300000000000000);

    v24 = *&v15[v17];
    v25 = *((*v20 & *v24) + 0xE8);
    v26 = v24;
    v25();

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_24424EAA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 2225512432 && a2 == 0xA400000000000000 || (sub_244257EB8() & 1) != 0)
  {
    v4 = &selRef_purpleColor;
  }

  else if (a1 == 0x8FB8EFA49DE2 && a2 == 0xA600000000000000 || (sub_244257EB8() & 1) != 0)
  {
    v4 = &selRef_redColor;
  }

  else if (a1 == 2777980912 && a2 == 0xA400000000000000 || (sub_244257EB8() & 1) != 0)
  {
    v4 = &selRef_orangeColor;
  }

  else
  {
    v4 = &selRef_brownColor;
    if ((a1 != 2307825648 || a2 != 0xA400000000000000) && (sub_244257EB8() & 1) == 0)
    {
      v4 = &selRef_yellowColor;
    }
  }

  v5 = [objc_opt_self() *v4];

  return v5;
}

void *sub_24424EC18(void *result)
{
  if (result[2])
  {
    v2 = result[4];
    v3 = result[5];
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *v1) + 0x60);

    v6 = v5(v2, v3);

    v7 = [objc_allocWithZone(MEMORY[0x277CD9E98]) initWithType_];
    v10[3] = sub_24424ED3C();
    v10[0] = v7;
    v8 = *((*v4 & *v1) + 0x88);
    v9 = v7;
    v8(v6, v10, 0.18);

    return sub_24424413C(v10);
  }

  return result;
}

unint64_t sub_24424ED3C()
{
  result = qword_27EDDC1B8;
  if (!qword_27EDDC1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EDDC1B8);
  }

  return result;
}

uint64_t sub_24424ED88(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14ContinuitySing8GlowView_micaPlayer);
  v4 = sub_24424F3C4();
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v3) + 0xD8))(0x726F6C6F43, 0xE500000000000000, v4 & 1);
  if (v6)
  {
    v7 = v6;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = [a1 CGColor];
      [v9 setFillColor_];

      v7 = v10;
    }
  }

  v11 = (*((*v5 & *v3) + 0x198))(28239, 0xE200000000000000);
  result = (*((*v5 & *v3) + 0xF8))(v11);
  if ((result & 1) == 0)
  {
    return (*((*v5 & *v3) + 0xE8))();
  }

  return result;
}

id sub_24424EF80()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlowView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24424EFC4()
{
  v1 = MEMORY[0x277D84F90];
  sub_24424EFF8(&v1);
  return v1;
}

void sub_24424EFF8(void *a1)
{
  v3 = v1;
  MEMORY[0x245D5C470]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v13 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_244257B48();
  }

  sub_244257B58();
  v4 = [v3 mask];
  if (v4)
  {
    v5 = v4;
    sub_24424EFF8(a1);
  }

  v6 = [v3 sublayers];
  if (v6)
  {
    v7 = v6;
    sub_244243124(0, &qword_27EDDC1C8, 0x277CD9ED8);
    v8 = sub_244257B28();

    if (v8 >> 62)
    {
      v9 = sub_244257D08();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9)
      {
LABEL_8:
        if (v9 < 1)
        {
          __break(1u);
          return;
        }

        for (i = 0; i != v9; ++i)
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x245D5C700](i, v8);
          }

          else
          {
            v11 = *(v8 + 8 * i + 32);
          }

          v12 = v11;
          sub_24424EFF8(a1);
        }
      }
    }
  }
}

unint64_t sub_24424F1A0()
{
  v0 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  sub_24424EFF8(&v25);
  v1 = v25;
  v25 = v0;
  if (v1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_244257D08())
  {
    v3 = 0;
    v24 = v1 & 0xC000000000000001;
    v20 = v1 + 32;
    v21 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x277D84F90];
    v22 = i;
    v23 = v1;
    while (1)
    {
      if (v24)
      {
        v5 = MEMORY[0x245D5C700](v3, v1);
      }

      else
      {
        if (v3 >= *(v21 + 16))
        {
          goto LABEL_20;
        }

        v5 = *(v20 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [v5 animationKeys];
      if (v8)
      {
        v9 = v8;
        v10 = sub_244257B28();

        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = (v10 + 40);
          do
          {
            v13 = *(v12 - 1);
            v14 = *v12;

            v15 = sub_244257A48();

            v16 = [v6 animationForKey_];

            if (v16)
            {
              v17 = v16;
              MEMORY[0x245D5C470]();
              if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v18 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_244257B48();
              }

              sub_244257B58();

              v4 = v25;
            }

            v12 += 2;
            --v11;
          }

          while (v11);
        }

        i = v22;
        v1 = v23;
      }

      if (v3 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:

  return v4;
}

void sub_24424F3CC(void *a1, char a2, char a3)
{
  v4 = v3;
  v8 = [v3 superlayer];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  [v8 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v3 bounds];
  if (v19 >= 0.00001)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.00001;
  }

  if (v18 >= 0.00001)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0.00001;
  }

  if (v17 >= 0.00001)
  {
    v22 = v17;
  }

  else
  {
    v22 = 0.00001;
  }

  if (v15 >= 0.00001)
  {
    v23 = v15;
  }

  else
  {
    v23 = 0.00001;
  }

  v24 = *MEMORY[0x277CDA750];
  if ((a2 & 1) == 0)
  {
    v37 = a1;
    goto LABEL_27;
  }

  v25 = *MEMORY[0x277CDA750];
  v26 = sub_244257A78();
  v28 = v27;
  if (v26 == sub_244257A78() && v28 == v29)
  {

    goto LABEL_25;
  }

  v31 = sub_244257EB8();

  if (v31)
  {
LABEL_25:
    v38 = MEMORY[0x277CDA6C0];
LABEL_26:
    v37 = *v38;
    goto LABEL_27;
  }

  v32 = *MEMORY[0x277CDA738];
  v33 = sub_244257A78();
  v35 = v34;
  if (v33 == sub_244257A78() && v35 == v36)
  {

LABEL_48:
    v38 = MEMORY[0x277CDA6A8];
    goto LABEL_26;
  }

  v56 = sub_244257EB8();

  if (v56)
  {
    goto LABEL_48;
  }

  v63 = *MEMORY[0x277CDA758];
  v64 = sub_244257A78();
  v66 = v65;
  if (v64 == sub_244257A78() && v66 == v67)
  {

LABEL_61:
    v38 = MEMORY[0x277CDA6C8];
    goto LABEL_26;
  }

  v73 = sub_244257EB8();

  if (v73)
  {
    goto LABEL_61;
  }

  v76 = *MEMORY[0x277CDA6C0];
  v77 = sub_244257A78();
  v79 = v78;
  if (v77 == sub_244257A78() && v79 == v80)
  {

    v37 = v24;
  }

  else
  {
    v144 = sub_244257EB8();

    v37 = v24;
    if ((v144 & 1) == 0)
    {
      v37 = v32;
      v86 = *MEMORY[0x277CDA6A8];
      v87 = sub_244257A78();
      v89 = v88;
      if (v87 == sub_244257A78() && v89 == v90)
      {
      }

      else
      {
        v92 = sub_244257EB8();

        if ((v92 & 1) == 0)
        {
          v93 = *MEMORY[0x277CDA6C8];
          v94 = sub_244257A78();
          v96 = v95;
          if (v94 == sub_244257A78() && v96 == v97)
          {

            v37 = v63;
          }

          else
          {
            v104 = sub_244257EB8();

            if (v104)
            {
              v37 = v63;
            }

            else
            {
              v37 = a1;
            }
          }
        }
      }
    }
  }

LABEL_27:
  v39 = v37;
  v40 = sub_244257A78();
  v42 = v41;
  if (v40 == sub_244257A78() && v42 == v43)
  {
  }

  else
  {
    v45 = sub_244257EB8();

    if ((v45 & 1) == 0)
    {
      v46 = *MEMORY[0x277CDA738];
      v47 = sub_244257A78();
      v49 = v48;
      if (v47 == sub_244257A78() && v49 == v50)
      {

LABEL_37:
        v11 = v11 + v23 * 0.5 - v21 * 0.5;
        goto LABEL_38;
      }

      v51 = sub_244257EB8();

      if (v51)
      {
        goto LABEL_37;
      }

      v57 = *MEMORY[0x277CDA758];
      v58 = sub_244257A78();
      v60 = v59;
      if (v58 == sub_244257A78() && v60 == v61)
      {

LABEL_53:
        v11 = v11 + v23 - v21;
        goto LABEL_38;
      }

      v62 = sub_244257EB8();

      if (v62)
      {
        goto LABEL_53;
      }

      v68 = *MEMORY[0x277CDA6F0];
      v69 = sub_244257A78();
      v71 = v70;
      if (v69 == sub_244257A78() && v71 == v72)
      {

LABEL_63:
        v75 = 0.5;
LABEL_64:
        v13 = v13 + v22 * v75 - v20 * v75;
        goto LABEL_39;
      }

      v74 = sub_244257EB8();

      if (v74)
      {
        goto LABEL_63;
      }

      v81 = *MEMORY[0x277CDA6D8];
      v82 = sub_244257A78();
      v84 = v83;
      if (v82 == sub_244257A78() && v84 == v85)
      {

LABEL_76:
        v75 = 0.5;
        v11 = v11 + v23 * 0.5 - v21 * 0.5;
        goto LABEL_64;
      }

      v91 = sub_244257EB8();

      if (v91)
      {
        goto LABEL_76;
      }

      v98 = *MEMORY[0x277CDA728];
      v99 = sub_244257A78();
      v101 = v100;
      if (v99 == sub_244257A78() && v101 == v102)
      {

LABEL_85:
        v11 = v11 + v23 - v21;
        goto LABEL_63;
      }

      v103 = sub_244257EB8();

      if (v103)
      {
        goto LABEL_85;
      }

      v105 = *MEMORY[0x277CDA6C0];
      v106 = sub_244257A78();
      v108 = v107;
      if (v106 == sub_244257A78() && v108 == v109)
      {

        goto LABEL_39;
      }

      v110 = sub_244257EB8();

      v52 = 1.0;
      if (v110)
      {
        goto LABEL_40;
      }

      v111 = *MEMORY[0x277CDA6A8];
      v112 = sub_244257A78();
      v114 = v113;
      if (v112 == sub_244257A78() && v114 == v115)
      {

LABEL_97:
        v11 = v11 + v23 * 0.5 - v21 * 0.5;
        goto LABEL_40;
      }

      v116 = sub_244257EB8();

      if (v116)
      {
        goto LABEL_97;
      }

      v117 = *MEMORY[0x277CDA6C8];
      v118 = sub_244257A78();
      v120 = v119;
      if (v118 == sub_244257A78() && v120 == v121)
      {

LABEL_102:
        v11 = v11 + v23 - v21;
        goto LABEL_40;
      }

      v122 = sub_244257EB8();

      if (v122)
      {
        goto LABEL_102;
      }

      v123 = *MEMORY[0x277CDA6F8];
      v124 = sub_244257A78();
      v126 = v125;
      if (v124 == sub_244257A78() && v126 == v127)
      {

LABEL_107:
        v53 = v23 / v21;
        v52 = v22 / v20;
        goto LABEL_41;
      }

      v128 = sub_244257EB8();

      if (v128)
      {
        goto LABEL_107;
      }

      v129 = *MEMORY[0x277CDA708];
      v130 = sub_244257A78();
      v132 = v131;
      if (v130 == sub_244257A78() && v132 == v133)
      {
      }

      else
      {
        v134 = sub_244257EB8();

        if ((v134 & 1) == 0)
        {
          v137 = *MEMORY[0x277CDA718];
          v138 = sub_244257A78();
          v140 = v139;
          if (v138 == sub_244257A78() && v140 == v141)
          {
          }

          else
          {
            v142 = sub_244257EB8();

            if ((v142 & 1) == 0)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
              v143 = swift_allocObject();
              *(v143 + 16) = xmmword_24425C680;
              v145.m11 = 0.0;
              v145.m12 = -2.68156159e154;
              sub_244257D88();
              MEMORY[0x245D5C430](0xD000000000000011, 0x8000000244263650);
              v146 = v39;
              type metadata accessor for CALayerContentsGravity();
              sub_244257DC8();
              *(v143 + 56) = MEMORY[0x277D837D0];
              *(v143 + 32) = 0;
              *(v143 + 40) = 0xE000000000000000;
              sub_244257EE8();

              v13 = 0.0;
              v11 = 0.0;
              goto LABEL_40;
            }
          }

          v52 = v23 / v21;
          v135 = v22 / v20;
          if (v22 / v20 >= v23 / v21)
          {
            goto LABEL_113;
          }

          goto LABEL_119;
        }
      }

      v52 = v23 / v21;
      v135 = v22 / v20;
      if (v23 / v21 > v22 / v20)
      {
LABEL_113:
        if ((*&v135 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v136 = v52;
        }

        else
        {
          v136 = v135;
        }

        if ((~*&v135 & 0x7FF0000000000000) != 0)
        {
          v52 = v135;
        }

        else
        {
          v52 = v136;
        }
      }

LABEL_119:
      v11 = v11 + (v23 - v21 * v52) * 0.5;
      v13 = v13 + (v22 - v20 * v52) * 0.5;
      v53 = v52;
      goto LABEL_41;
    }
  }

LABEL_38:
  v13 = v13 + v22 - v20;
LABEL_39:
  v52 = 1.0;
LABEL_40:
  v53 = 1.0;
LABEL_41:
  if ((a3 & 1) == 0)
  {
    v54 = objc_opt_self();
    [v54 begin];
    [v54 setDisableActions_];
  }

  CATransform3DMakeScale(&v145, v53, v52, 1.0);
  [v4 setTransform_];
  [v4 frame];
  CGRectMake([v4 frame], v11, v13, v55);
  [v4 setFrame_];
  if ((a3 & 1) == 0)
  {
    [objc_opt_self() commit];
  }
}

void sub_244250008()
{
  v1 = v0;
  v2 = [objc_allocWithZone(swift_getObjCClassFromObject()) initWithLayer_];
  v3 = [v0 sublayers];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  sub_244243124(0, &qword_27EDDC1C8, 0x277CD9ED8);
  v5 = sub_244257B28();

  if (v5 >> 62)
  {
    v6 = sub_244257D08();
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_4:
      if (v6 < 1)
      {
LABEL_69:
        __break(1u);
        return;
      }

      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x245D5C700](v7, v5);
        }

        else
        {
          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        ++v7;
        v10 = sub_244250008();
        [v2 addSublayer_];
      }

      while (v6 != v7);
    }
  }

LABEL_12:
  v11 = [v1 mask];
  if (v11)
  {
    v12 = v11;
    v13 = sub_244250008();
  }

  else
  {
    v13 = 0;
  }

  [v2 setMask_];

  v14 = sub_2442515E4(&unk_2857976D8);
  swift_arrayDestroy();
  *&v60[0] = v14;
  sub_244243124(0, &qword_27EDDC200, 0x277CD9FD0);
  v57 = v2;
  if ([v1 isKindOfClass_])
  {
    sub_24425167C(&unk_285797A08);
  }

  else
  {
    sub_244243124(0, &qword_27EDDC208, 0x277CD9F98);
    if ([v1 isKindOfClass_])
    {
      sub_24425167C(&unk_285797A98);
    }

    else
    {
      sub_244243124(0, &qword_27EDDC210, 0x277CD9F78);
      if ([v1 isKindOfClass_])
      {
        sub_24425167C(&unk_285797B78);
        sub_2442462F0(&unk_285797B98);
        goto LABEL_20;
      }

      sub_244243124(0, &qword_27EDDC218, 0x277CD9FD8);
      if (![v1 isKindOfClass_])
      {
        goto LABEL_20;
      }

      sub_24425167C(&unk_285797BA8);
    }
  }

  swift_arrayDestroy();
LABEL_20:
  v15 = 0;
  v16 = 0x726579616C627573;
  v17 = *&v60[0];
  v18 = *&v60[0] + 56;
  v19 = 1 << *(*&v60[0] + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(*&v60[0] + 56);
  v22 = (v19 + 63) >> 6;
  while (v21)
  {
LABEL_29:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = (*(v17 + 48) + ((v15 << 10) | (16 * v25)));
    v28 = *v26;
    v27 = v26[1];
    if (*v26 != v16 || v27 != 0xE900000000000073)
    {
      v30 = *v26;
      v31 = v26[1];
      v32 = v16;
      v33 = sub_244257EB8();
      v16 = v32;
      if ((v33 & 1) == 0 && (v28 != 1802723693 || v27 != 0xE400000000000000))
      {
        v35 = sub_244257EB8();
        v16 = v32;
        if ((v35 & 1) == 0)
        {

          v36 = sub_244257A48();
          LODWORD(v56) = [v1 shouldArchiveValueForKey_];

          if (v56)
          {
            v56 = sub_244257A48();
            v37 = [v1 valueForKey_];

            if (v37)
            {
              sub_244257CB8();
              swift_unknownObjectRelease();
            }

            else
            {
              v58 = 0u;
              v59 = 0u;
            }

            v60[0] = v58;
            v60[1] = v59;
            sub_244250A34(v60, &v58);
            v38 = *(&v59 + 1);
            if (*(&v59 + 1))
            {
              v39 = __swift_project_boxed_opaque_existential_1Tm(&v58, *(&v59 + 1));
              v53[1] = v53;
              v55 = *(v38 - 8);
              v40 = *(v55 + 64);
              MEMORY[0x28223BE20](v39);
              v54 = v53 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v55 + 16))();
              v56 = sub_244257EA8();
              (*(v55 + 8))(v54, v38);
              __swift_destroy_boxed_opaque_existential_0(&v58);
            }

            else
            {
              v56 = 0;
            }

            v42 = sub_244257A48();

            [v57 setValue:v56 forKey:v42];
            swift_unknownObjectRelease();

            sub_24424413C(v60);
            v16 = v32;
          }

          else
          {

            v16 = v32;
          }
        }
      }
    }
  }

  v23 = v57;
  while (1)
  {
    v24 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_69;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v15;
    if (v21)
    {
      v15 = v24;
      goto LABEL_29;
    }
  }

  if ([v1 needsDisplay])
  {
    [v23 setNeedsDisplay];
  }

  if ([v1 needsLayout])
  {
    [v23 setNeedsLayout];
  }

  v43 = [v1 animationKeys];
  if (v43)
  {
    v44 = v43;
    v45 = sub_244257B28();

    v56 = v45;
    v46 = *(v45 + 2);
    if (v46)
    {
      v47 = (v56 + 40);
      do
      {
        v49 = *(v47 - 1);
        v48 = *v47;

        v50 = sub_244257A48();
        v51 = [v1 animationForKey_];

        if (v51)
        {
          if ([v51 isRemovedOnCompletion])
          {
          }

          else
          {
            v52 = sub_244257A48();

            [v23 addAnimation:v51 forKey:v52];
          }
        }

        else
        {
        }

        v47 += 2;
        --v46;
      }

      while (v46);
    }
  }
}

uint64_t sub_2442507AC(uint64_t a1, id *a2)
{
  result = sub_244257A58();
  *a2 = 0;
  return result;
}

uint64_t sub_244250824(uint64_t a1, id *a2)
{
  v3 = sub_244257A68();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2442508A4@<X0>(uint64_t *a1@<X8>)
{
  sub_244257A78();
  v2 = sub_244257A48();

  *a1 = v2;
  return result;
}

uint64_t sub_2442508E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_244257A78();
  v6 = v5;
  if (v4 == sub_244257A78() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_244257EB8();
  }

  return v9 & 1;
}

uint64_t sub_244250970@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_244257A48();

  *a2 = v5;
  return result;
}

uint64_t sub_2442509B8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_244257A78();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void type metadata accessor for CALayerContentsGravity()
{
  if (!qword_27EDDC1D0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EDDC1D0);
    }
  }
}

uint64_t sub_244250A34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDBFE8, &qword_24425C780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_244250AA4(uint64_t a1)
{
  v2 = sub_244250CDC(&qword_27EDDC1F0);
  v3 = sub_244250CDC(&qword_27EDDC1F8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_244250BD8()
{
  v1 = *v0;
  v2 = sub_244257A78();
  v3 = MEMORY[0x245D5C450](v2);

  return v3;
}

uint64_t sub_244250C14()
{
  v1 = *v0;
  sub_244257A78();
  sub_244257AB8();
}

uint64_t sub_244250C68()
{
  v1 = *v0;
  sub_244257A78();
  sub_244257EF8();
  sub_244257AB8();
  v2 = sub_244257F08();

  return v2;
}

uint64_t sub_244250CDC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CALayerContentsGravity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_244250D20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_244257EF8();
  sub_244257AB8();
  v9 = sub_244257F08();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_244257EB8() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_2442510D0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_244250E70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC220, &qword_24425CCB0);
  result = sub_244257D58();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_244257EF8();
      sub_244257AB8();
      result = sub_244257F08();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2442510D0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_244250E70(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_244251250();
      goto LABEL_16;
    }

    sub_2442513AC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_244257EF8();
  sub_244257AB8();
  result = sub_244257F08();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_244257EB8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_244257EC8();
  __break(1u);
  return result;
}

void *sub_244251250()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC220, &qword_24425CCB0);
  v2 = *v0;
  v3 = sub_244257D48();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2442513AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC220, &qword_24425CCB0);
  result = sub_244257D58();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_244257EF8();

      sub_244257AB8();
      result = sub_244257F08();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_2442515E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x245D5C570](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_244250D20(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24425167C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_244250D20(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_2442516EC()
{
  v1 = MEMORY[0x277D85000];
  if (((*((*MEMORY[0x277D85000] & *v0) + 0xF8))() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_documentDuration) != INFINITY)
  {
    goto LABEL_6;
  }

  v2 = *((*v1 & *v0) + 0xA0);
  if (!v2())
  {
    goto LABEL_9;
  }

  v3 = swift_unknownObjectRelease();
  v4 = (v2)(v3);
  if (!v4)
  {
    __break(1u);
    return;
  }

  v5 = [v4 respondsToSelector_];
  swift_unknownObjectRelease();
  if (v5)
  {
LABEL_6:

    sub_244253C34();
  }

  else
  {
LABEL_9:
    v6 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
    v7 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer);
    if (v7)
    {
      [v7 invalidate];
      v8 = *(v0 + v6);
      *(v0 + v6) = 0;
    }
  }
}

uint64_t sub_244251880()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_2442516EC();
  return swift_unknownObjectRelease();
}

void (*sub_2442518E4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_24425197C;
}

void sub_24425197C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32) + *(*a1 + 40);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v6 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v7 = v3[4];
    swift_endAccess();
    swift_unknownObjectRelease();
    sub_2442516EC();
  }

  free(v3);
}

uint64_t sub_244251A04(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = sub_244257318();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v51);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v49 = &v48 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v48 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v48 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v48 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v48 - v24;
  v50 = a1;
  v52 = a2;
  v26 = sub_244257A48();
  v27 = sub_244257A48();
  v28 = a3;
  v29 = [a3 URLForResource:v26 withExtension:v27];

  if (v29)
  {

    sub_244257308();

    v30 = v51;
    (*(v6 + 32))(v25, v23, v51);
    (*(v6 + 16))(v14, v25, v30);
    v31 = sub_244251F04(v14);

    (*(v6 + 8))(v25, v30);
    return v31;
  }

  v33 = v20;
  v34 = v51;
  v35 = sub_244257A48();
  v36 = sub_244257A48();
  v37 = v28;
  v38 = [v28 URLForResource:v35 withExtension:v36];

  if (v38)
  {

    sub_244257308();

    (*(v6 + 32))(v33, v17, v34);
    (*(v6 + 16))(v14, v33, v34);
    v39 = sub_244251F04(v14);

    (*(v6 + 8))(v33, v34);
  }

  else
  {
    v40 = sub_244257A48();
    v41 = sub_244257A48();
    v42 = [v37 URLForResource:v40 withExtension:v41];

    if (!v42)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
      v45 = swift_allocObject();
      *(v45 + 16) = xmmword_24425C680;
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_244257D88();

      v53 = 0xD00000000000001ELL;
      v54 = 0x8000000244263670;
      MEMORY[0x245D5C430](v50, v52);

      v46 = v53;
      v47 = v54;
      *(v45 + 56) = MEMORY[0x277D837D0];
      *(v45 + 32) = v46;
      *(v45 + 40) = v47;
      sub_244257EE8();

      return 0;
    }

    v43 = v48;
    sub_244257308();

    v44 = v49;
    (*(v6 + 32))(v49, v43, v34);
    (*(v6 + 16))(v14, v44, v34);
    v39 = sub_244251F04(v14);

    (*(v6 + 8))(v44, v34);
  }

  return v39;
}

uint64_t sub_244251F04(uint64_t a1)
{
  v2 = sub_244257318();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v70 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - v7;
  sub_2442572E8();
  v10 = sub_244257A98();
  v11 = v9;
  if (v10 == 24931 && v9 == 0xE200000000000000 || (sub_244257EB8() & 1) != 0)
  {

    v12 = MEMORY[0x277CDA7F0];
  }

  else if (v10 == 1918984547 && v11 == 0xE400000000000000 || (sub_244257EB8() & 1) != 0)
  {

    v12 = MEMORY[0x277CDA7E0];
  }

  else
  {
    if (v10 == 1819107683 && v11 == 0xE400000000000000)
    {
    }

    else
    {
      v57 = sub_244257EB8();

      if ((v57 & 1) == 0)
      {

        goto LABEL_40;
      }
    }

    v12 = MEMORY[0x277CDA808];
  }

  v13 = *v12;
  v14 = sub_244257A78();
  v16 = v15;

  if (!v16)
  {
LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24425C680;
    *&v73 = 0;
    *(&v73 + 1) = 0xE000000000000000;
    sub_244257D88();

    v20 = 0x8000000244263690;
    v21 = 0xD000000000000026;
    goto LABEL_41;
  }

  sub_244243124(0, &qword_27EDDC230, 0x277CD9F20);
  v17 = *(v3 + 16);
  v17(v8, a1, v2);
  v18 = sub_244252700(v8, v14, v16, 0);
  if (!v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_24425C680;
    *&v73 = 0;
    *(&v73 + 1) = 0xE000000000000000;
    sub_244257D88();

    v20 = 0x80000002442636C0;
    v21 = 0xD00000000000001ALL;
LABEL_41:
    *&v73 = v21;
    *(&v73 + 1) = v20;
    sub_24425496C();
    v58 = sub_244257E88();
    MEMORY[0x245D5C430](v58);

    v59 = v73;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 32) = v59;
    sub_244257EE8();
    goto LABEL_42;
  }

  v22 = v18;
  v23 = [v18 rootLayer];
  if (!v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_24425C680;
    *&v73 = 0;
    *(&v73 + 1) = 0xE000000000000000;
    sub_244257D88();

    *&v73 = 0xD00000000000001BLL;
    *(&v73 + 1) = 0x80000002442636E0;
    sub_24425496C();
    v55 = sub_244257E88();
    MEMORY[0x245D5C430](v55);

    v56 = v73;
    *(v54 + 56) = MEMORY[0x277D837D0];
    *(v54 + 32) = v56;
    sub_244257EE8();

LABEL_42:

    (*(v3 + 8))(a1, v2);
    return 0;
  }

  v61 = v23;
  v62 = v3 + 16;
  v63 = v3;
  v64 = v2;
  v65 = a1;
  v24 = sub_2442549C4(MEMORY[0x277D84F90]);
  v69 = v22;
  v25 = [v22 publishedObjectNames];
  v26 = sub_244257B28();

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = 0;
    v29 = v26 + 32;
    v67 = v17;
    v68 = v27;
    v66 = v26;
    while (v28 < *(v26 + 16))
    {
      sub_24423D540(v29, &v73);
      if (swift_dynamicCast())
      {
        v30 = v72;
        v31 = sub_244257A48();
        v32 = [v69 publishedObjectWithName_];

        if (v32)
        {
          sub_244257CB8();
          swift_unknownObjectRelease();
          sub_2442552EC(&v72, &v73);
          __swift_project_boxed_opaque_existential_1Tm(&v73, v74);
          v33 = sub_244257EA8();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v72 = v24;
          v36 = sub_2442410B8(v30, *(&v30 + 1));
          v37 = v24[2];
          v38 = (v35 & 1) == 0;
          v39 = v37 + v38;
          if (__OFADD__(v37, v38))
          {
            goto LABEL_44;
          }

          v40 = v35;
          if (v24[3] >= v39)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_2442547FC();
            }
          }

          else
          {
            sub_2442543D8(v39, isUniquelyReferenced_nonNull_native);
            v41 = sub_2442410B8(v30, *(&v30 + 1));
            if ((v30 & 1) != (v42 & 1))
            {
              goto LABEL_46;
            }

            v36 = v41;
          }

          if (v40)
          {

            v24 = v72;
            v43 = *(v72 + 56);
            v44 = *(v43 + 8 * v36);
            *(v43 + 8 * v36) = v33;
            swift_unknownObjectRelease();
          }

          else
          {
            v24 = v72;
            *(v72 + 8 * (v36 >> 6) + 64) |= 1 << v36;
            *(v24[6] + 16 * v36) = v30;
            *(v24[7] + 8 * v36) = v33;
            v45 = v24[2];
            v46 = __OFADD__(v45, 1);
            v47 = v45 + 1;
            if (v46)
            {
              goto LABEL_45;
            }

            v24[2] = v47;
          }

          __swift_destroy_boxed_opaque_existential_0(&v73);
          v17 = v67;
          v27 = v68;
          v26 = v66;
        }

        else
        {

          v27 = v68;
        }
      }

      ++v28;
      v29 += 32;
      if (v27 == v28)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    result = sub_244257ED8();
    __break(1u);
  }

  else
  {
LABEL_32:

    v48 = v61;
    [v61 setGeometryFlipped_];
    [v48 setMasksToBounds_];
    [v48 setRepeatCount_];
    v49 = v70;
    v51 = v64;
    v50 = v65;
    v17(v70, v65, v64);
    v52 = (*(v71 + 184))(v49, v48, v24);

    (*(v63 + 8))(v50, v51);
    return v52;
  }

  return result;
}

id sub_244252700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2442572F8();
  v7 = sub_244257A48();

  if (a4)
  {
    v8 = sub_244257A18();
  }

  else
  {
    v8 = 0;
  }

  v18[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v18];

  v10 = v18[0];
  if (v9)
  {
    v11 = sub_244257318();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v18[0];
    sub_2442572D8();

    swift_willThrow();
    v15 = sub_244257318();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v9;
}

id sub_2442528C8(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_244254AC8(a1, a2, a3);

  return v8;
}

id sub_244252920()
{
  v1 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
  v2 = *&v0[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer];
  if (v2)
  {
    [v2 invalidate];
    v3 = *&v0[v1];
    *&v0[v1] = 0;
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for MicaPlayer();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_244252ADC(void *a1, char a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
  v8 = [v7 superlayer];
  if (v8)
  {
  }

  else
  {
    v9 = MEMORY[0x277D85000];
    v10 = (*((*MEMORY[0x277D85000] & *v3) + 0xF0))();
    (*((*v9 & *v3) + 0x138))(v10, 0.0);
    if (a2)
    {
      [a1 addSublayer_];
    }

    else
    {
      [a1 insertSublayer:v7 atIndex:0];
    }

    v11 = *((*v9 & *v3) + 0xD0);

    v11(a3, 0);
  }
}

id sub_244252C4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
  result = [v1 superlayer];
  if (result)
  {

    (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();

    return [v1 removeFromSuperlayer];
  }

  return result;
}

void sub_244252CF0(void *a1, char a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) superlayer];
  if (v5)
  {

    sub_24424F3CC(a1, 1, a2 & 1);
  }
}

uint64_t sub_244252D5C()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xE0))();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_244252DDC(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_publishedObjects);
  if (v7 && *(v7 + 16) && (v8 = sub_2442410B8(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    return swift_unknownObjectRetain();
  }

  else
  {
    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDC1C0, &unk_24425CB00);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_24425C680;
      sub_244257D88();
      MEMORY[0x245D5C430](0xD00000000000001ALL, 0x8000000244263700);
      MEMORY[0x245D5C430](a1, a2);
      MEMORY[0x245D5C430](0xD000000000000014, 0x8000000244263720);
      sub_244257318();
      sub_24425496C();
      v13 = sub_244257E88();
      MEMORY[0x245D5C430](v13);

      MEMORY[0x245D5C430](39, 0xE100000000000000);
      *(v12 + 56) = MEMORY[0x277D837D0];
      *(v12 + 32) = 0;
      *(v12 + 40) = 0xE000000000000000;
      sub_244257EE8();
    }

    return 0;
  }
}

uint64_t sub_244252F80()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
  if ((result & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
    v4 = CACurrentMediaTime();
    v5 = (*((*v1 & *v0) + 0x130))();
    v6 = *((*v1 & *v0) + 0x100);
    [v3 setBeginTime_];
    (v6)([v3 setTimeOffset_]);
    [v3 setSpeed_];
    sub_244253C34();
    result = (*((*v1 & *v0) + 0xA0))();
    if (result)
    {
      v7 = result;
      if ([result respondsToSelector_])
      {
        [v7 micaPlayerDidStartPlaying_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_244253150()
{
  v1 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0xF8))();
  if (result)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
    (*((*v1 & *v0) + 0x130))();
    [v3 setTimeOffset_];
    [v3 setBeginTime_];
    [v3 setSpeed_];
    v4 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
    v5 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer);
    if (v5)
    {
      [v5 invalidate];
      v6 = *(v0 + v4);
      *(v0 + v4) = 0;
    }

    result = (*((*v1 & *v0) + 0xA0))();
    if (result)
    {
      v7 = result;
      if ([result respondsToSelector_])
      {
        [v7 micaPlayerDidStopPlaying_];
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

float sub_244253300()
{
  v1 = v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_preferredPlaybackSpeed;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_244253348(float a1)
{
  v3 = (v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_preferredPlaybackSpeed);
  v4 = swift_beginAccess();
  v5 = 1.0;
  if (a1 > 0.0)
  {
    v5 = a1;
  }

  *v3 = v5;
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))(v4);
  if (result)
  {
    *&v7 = *v3;
    return [*(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) setSpeed_];
  }

  return result;
}

void (*sub_2442533FC(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_preferredPlaybackSpeed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_244253484;
}

void sub_244253484(void **a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v6 = v3[3];
    v5 = v3[4];
    if (*(v6 + v5) <= 0.0)
    {
      *(v6 + v5) = 1065353216;
      v6 = v3[3];
    }

    if ((*((*MEMORY[0x277D85000] & *v6) + 0xF8))(v4))
    {
      v8 = v3[3];
      LODWORD(v7) = *(v8 + v3[4]);
      [*(v8 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) setSpeed_];
    }
  }

  free(v3);
}

uint64_t sub_24425353C()
{
  v1 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_shouldLoop;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_244253580(char a1)
{
  v3 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_shouldLoop;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_244253634()
{
  if ((*((*MEMORY[0x277D85000] & *v0) + 0xF8))())
  {
    CACurrentMediaTime();
    v1 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
    [v1 beginTime];
    return [v1 speed];
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);

    return [v3 timeOffset];
  }
}

void *sub_244253704(double a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  v5 = *(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
  v6 = 0.0;
  if (v4)
  {
    v6 = CACurrentMediaTime() - a1;
    a1 = 0.0;
  }

  [v5 setBeginTime_];
  result = (*((*v3 & *v1) + 0xA0))([v5 setTimeOffset_]);
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 micaPlayerDidChangePlaybackTime_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *(*sub_244253830(uint64_t a1))(uint64_t a1)
{
  *(a1 + 8) = v1;
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xF8))())
  {
    v3 = CACurrentMediaTime();
    v4 = *(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
    [v4 beginTime];
    v6 = v3 - v5;
    [v4 speed];
    v8 = v6 * v7;
  }

  else
  {
    [*(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) timeOffset];
  }

  *a1 = v8;
  return sub_244253910;
}

void sub_2442539A8(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_244257318();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);
  sub_244250008();
  v11 = v10;
  v12 = sub_244254D00(*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_publishedObjects));
  (*(v5 + 16))(v8, v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_url, v4);
  v13 = type metadata accessor for MicaPlayer();
  objc_allocWithZone(v13);
  v14 = v11;
  v15 = sub_244254AC8(v8, v14, v12);

  a1[3] = v13;
  *a1 = v15;
}

void sub_244253C34()
{
  v1 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer;
  if (!*(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer))
  {
    v2 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v0) + 0xF8))())
    {
      if (*(v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_documentDuration) != INFINITY)
      {
        goto LABEL_7;
      }

      v3 = *((*v2 & *v0) + 0xA0);
      if (v3())
      {
        v4 = swift_unknownObjectRelease();
        v5 = (v3)(v4);
        if (!v5)
        {
          __break(1u);
          return;
        }

        v6 = [v5 respondsToSelector_];
        swift_unknownObjectRelease();
        if (v6)
        {
LABEL_7:
          v7 = objc_opt_self();
          v8 = swift_allocObject();
          swift_unknownObjectUnownedInit();
          v12[4] = sub_244255288;
          v12[5] = v8;
          v12[0] = MEMORY[0x277D85DD0];
          v12[1] = 1107296256;
          v12[2] = sub_24423E3B0;
          v12[3] = &block_descriptor_5;
          v9 = _Block_copy(v12);

          v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:0.0333333333];
          _Block_release(v9);
          v11 = *(v0 + v1);
          *(v0 + v1) = v10;
        }
      }
    }
  }
}

void *sub_244253E18()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x148))();
  if (v2)
  {
    v3 = (*((*v1 & *v0) + 0x118))();
    v4 = *v1 & *v0;
    if (v3)
    {
      v2 = (*((*v1 & *v0) + 0x138))(0.0);
    }

    else
    {
      v2 = (*((*v1 & *v0) + 0xF0))();
    }
  }

  result = (*((*v1 & *v0) + 0xA0))(v2);
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 micaPlayerDidChangePlaybackTime_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_244253F90(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName);
  swift_beginAccess();
  v7 = v5[1];
  if (v7)
  {
    v8 = *v5;
    if (!a2 || (v8 == a1 ? (v9 = v7 == a2) : (v9 = 0), !v9 && (sub_244257EB8() & 1) == 0))
    {
      v10 = *(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);

      v11 = sub_244257A48();

      v12 = [v10 stateWithName_];

      LODWORD(v13) = 1.0;
      [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController) setState:v12 ofLayer:v10 transitionSpeed:v13];
    }
  }

  else if (a2)
  {
    LODWORD(v6) = 1.0;
    [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController) setState:0 ofLayer:*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) transitionSpeed:v6];
  }
}

uint64_t sub_2442540D0()
{
  v1 = (v0 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void sub_244254128(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName);
  swift_beginAccess();
  v7 = *v5;
  v8 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (!v8 || (v7 == a1 ? (v9 = v8 == a2) : (v9 = 0), !v9 && (sub_244257EB8() & 1) == 0))
    {
      v10 = *(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer);

      v11 = sub_244257A48();

      v12 = [v10 stateWithName_];

      LODWORD(v13) = 1.0;
      [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController) setState:v12 ofLayer:v10 transitionSpeed:v13];

      return;
    }
  }

  else
  {
    if (!v8)
    {
      return;
    }

    LODWORD(v6) = 1.0;
    [*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController) setState:0 ofLayer:*(v2 + OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer) transitionSpeed:v6];
  }
}

void (*sub_244254274(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return sub_244254314;
}

void sub_244254314(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v5 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v6 = *(*a1 + 32);
  v7 = (v5 + v4);
  v9 = *v7;
  v8 = v7[1];
  *v7 = v3;
  v7[1] = v6;
  v10 = v2[5];
  if (a2)
  {

    sub_244253F90(v9, v8);

    v11 = v2[4];
  }

  else
  {
    sub_244253F90(v9, v8);
  }

  free(v2);
}

uint64_t sub_2442543D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDC2A0, &unk_24425CD40);
  v38 = a2;
  result = sub_244257E58();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_244257EF8();
      sub_244257AB8();
      result = sub_244257F08();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_244254680(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2442410B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2442543D8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2442410B8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_244257ED8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2442547FC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void *sub_2442547FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDC2A0, &unk_24425CD40);
  v2 = *v0;
  v3 = sub_244257E48();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_24425496C()
{
  result = qword_27EDDC228;
  if (!qword_27EDDC228)
  {
    sub_244257318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDC228);
  }

  return result;
}

unint64_t sub_2442549C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDC2A0, &unk_24425CD40);
    v3 = sub_244257E68();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2442410B8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

id sub_244254AC8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_preferredPlaybackSpeed] = 1065353216;
  v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_shouldLoop] = 0;
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_playbackTimer] = 0;
  v7 = &v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateName];
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_url;
  v9 = sub_244257318();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a1, v9);
  v11 = OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer;
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_rootLayer] = a2;
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_publishedObjects] = a3;

  v12 = a2;
  [v12 duration];
  *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_documentDuration] = v13;
  [*&v3[v11] setDuration_];
  result = [objc_allocWithZone(MEMORY[0x277CD9FB0]) initWithLayer_];
  if (result)
  {
    v15 = result;

    *&v3[OBJC_IVAR____TtC14ContinuitySing10MicaPlayer_stateController] = v15;
    v17.receiver = v3;
    v17.super_class = type metadata accessor for MicaPlayer();
    v16 = objc_msgSendSuper2(&v17, sel_init);
    (*(v10 + 8))(a1, v9);
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for MicaPlayer()
{
  result = qword_27EDDCB28;
  if (!qword_27EDDCB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_244254D00(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F98];
  }

  v1 = a1;
  if (!*(a1 + 16))
  {
    return MEMORY[0x277D84F98];
  }

  v2 = sub_24424EFC4();
  v3 = sub_24424F1A0();
  v4 = sub_24424EFC4();
  v5 = sub_24424F1A0();
  v6 = v1 + 64;
  v7 = 1 << *(v1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v1 + 64);
  v10 = (v7 + 63) >> 6;
  v46 = v3 & 0xFFFFFFFFFFFFFF8;
  v49 = v3;
  v48 = v3 & 0xC000000000000001;
  v37 = v5 & 0xFFFFFFFFFFFFFF8;
  v38 = v5 & 0xC000000000000001;
  v40 = v4 & 0xC000000000000001;
  v41 = v5;
  v42 = v4;
  v39 = v4 & 0xFFFFFFFFFFFFFF8;

  v12 = 0;
  v43 = MEMORY[0x277D84F98];
  v45 = v1;
  v13 = &_swift_FORCE_LOAD___swiftMetal___ContinuitySing;
  if (!v9)
  {
    goto LABEL_6;
  }

  while (2)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v16 = v15 | (v12 << 6);
      v17 = *(v1 + 56);
      v18 = (*(v1 + 48) + 16 * v16);
      v19 = v18[1];
      v44 = *v18;
      v20 = *(v17 + 8 * v16);
      sub_244243124(0, &qword_27EDDC1C8, 0x277CD9ED8);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v47 = v19;

      if ([swift_unknownObjectRetain() v13[176]])
      {
        break;
      }

      sub_244243124(0, &qword_27EDDC298, 0x277CD9DF0);
      if (![v20 v13[176]])
      {
        goto LABEL_34;
      }

      if (v49 >> 62)
      {
        v27 = sub_244257D08();
        if (!v27)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v27 = *(v46 + 16);
        if (!v27)
        {
          goto LABEL_34;
        }
      }

      result = swift_unknownObjectRetain();
      v23 = 4;
      while (1)
      {
        v28 = v23 - 4;
        if (!v48)
        {
          break;
        }

        v29 = MEMORY[0x245D5C700](v23 - 4, v49);
        result = swift_unknownObjectRelease();
        if (v29 == v20)
        {
          goto LABEL_39;
        }

LABEL_31:
        v30 = v23 - 3;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_56;
        }

        ++v23;
        if (v30 == v27)
        {
LABEL_33:
          swift_unknownObjectRelease();
          goto LABEL_34;
        }
      }

      if (v28 >= *(v46 + 16))
      {
        goto LABEL_58;
      }

      if (*(v49 + 8 * v23) != v20)
      {
        goto LABEL_31;
      }

LABEL_39:
      if (v38)
      {
        v35 = v23 - 4;
        v36 = v41;
LABEL_51:
        v32 = MEMORY[0x245D5C700](v35, v36);
      }

      else
      {
        if (v28 >= *(v37 + 16))
        {
          goto LABEL_60;
        }

        v31 = v41;
LABEL_42:
        v32 = *(v31 + 8 * v23);
      }

      v33 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_244254680(v33, v44, v47, isUniquelyReferenced_nonNull_native);

      swift_unknownObjectRelease_n();

      v1 = v45;
      v13 = &_swift_FORCE_LOAD___swiftMetal___ContinuitySing;
      if (!v9)
      {
        do
        {
LABEL_6:
          v14 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          if (v14 >= v10)
          {

            return v43;
          }

          v9 = *(v6 + 8 * v14);
          ++v12;
        }

        while (!v9);
        v12 = v14;
      }
    }

    if (!(v2 >> 62))
    {
      v22 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
        goto LABEL_13;
      }

LABEL_34:
      swift_unknownObjectRelease();

      v1 = v45;
      v13 = &_swift_FORCE_LOAD___swiftMetal___ContinuitySing;
      if (!v9)
      {
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v22 = sub_244257D08();
  if (!v22)
  {
    goto LABEL_34;
  }

LABEL_13:
  result = swift_unknownObjectRetain();
  v23 = 4;
  while (2)
  {
    v24 = v23 - 4;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x245D5C700](v23 - 4, v2);
      result = swift_unknownObjectRelease();
      if (v25 == v20)
      {
        break;
      }

      goto LABEL_19;
    }

    if (v24 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_57;
    }

    if (*(v2 + 8 * v23) != v20)
    {
LABEL_19:
      v26 = v23 - 3;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_55;
      }

      ++v23;
      if (v26 == v22)
      {
        goto LABEL_33;
      }

      continue;
    }

    break;
  }

  if (v40)
  {
    v35 = v23 - 4;
    v36 = v42;
    goto LABEL_51;
  }

  if (v24 < *(v39 + 16))
  {
    v31 = v42;
    goto LABEL_42;
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_24425516C()
{
  result = sub_244257318();
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

uint64_t sub_244255250()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_244255288()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_244253E18();
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_2442552EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}